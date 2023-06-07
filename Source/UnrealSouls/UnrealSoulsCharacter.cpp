// Copyright Epic Games, Inc. All Rights Reserved.

#include "UnrealSoulsCharacter.h"
#include "Camera/CameraComponent.h"
#include "Components/CapsuleComponent.h"
#include "Components/InputComponent.h"
#include "GameFramework/CharacterMovementComponent.h"
#include "GameFramework/Controller.h"
#include "GameFramework/SpringArmComponent.h"
#include "EnhancedInputComponent.h"
#include "EnhancedInputSubsystems.h"
#include "Kismet/KismetSystemLibrary.h"
#include "Math/UnrealMathUtility.h"
#include "Ladder.h"

AUnrealSoulsCharacter::AUnrealSoulsCharacter()
{
	HealthComponent = CreateDefaultSubobject<UStatusComponent>(TEXT("HealthComponent"));
	if (HealthComponent)
	{
		HealthComponent->SetupAttachment(RootComponent);
	}

	// Load climbing component blueprint
	TSoftClassPtr<UClimbingComponent> ClimbingComponentBPClass =
		TSoftClassPtr<UClimbingComponent>(FSoftObjectPath(TEXT("Blueprint'/Game/Blueprints/Components/BP_ClimbingComponent.BP_ClimbingComponent_C'")));
	UClass* LoadedClass = ClimbingComponentBPClass.LoadSynchronous();
	LoadedClass->AddToRoot();
	UObject* NewClimbingComponent = CreateDefaultSubobject(TEXT("ClimbingComponent"), LoadedClass, LoadedClass, true, true);
	ClimbingComponent = Cast<UClimbingComponent>(NewClimbingComponent);

	// Load the curves
	static ConstructorHelpers::FObjectFinder<UCurveFloat> DefaultRollAsset(TEXT("/Game/Blueprints/Curves/C_DefaultRoll"));
	check(DefaultRollAsset.Succeeded());
	DefaultRollCurve = DefaultRollAsset.Object;
}

void AUnrealSoulsCharacter::BeginPlay()
{
	Super::BeginPlay();

	// Create the action timeline
	if (DefaultRollCurve != NULL)
	{
		ActionTimeline = NewObject<UTimelineComponent>(this, FName("ActionTimeline"));

		// Indicate it comes from a blueprint so it gets cleared when we rerun construction scripts
		ActionTimeline->CreationMethod = EComponentCreationMethod::UserConstructionScript;
		this->BlueprintCreatedComponents.Add(ActionTimeline); // Add to array so it gets saved

		ActionTimeline->SetPropertySetObject(this); // Set which object the timeline should drive properties on
		ActionTimeline->SetDirectionPropertyName(FName("TimelineDirection"));

		ActionTimeline->SetLooping(false);
		ActionTimeline->SetTimelineLength(5.0f);
		ActionTimeline->SetTimelineLengthMode(ETimelineLengthMode::TL_LastKeyFrame);

		ActionTimeline->SetPlaybackPosition(0.0f, false);

		ActionTimeline->RegisterComponent();
	}
}

void AUnrealSoulsCharacter::Tick(float DeltaTime)
{
	Super::Tick(DeltaTime);
}

bool AUnrealSoulsCharacter::PlayMontage(UAnimMontage* Montage, const FName InFunctionName, float PlayRate)
{
	UAnimInstance* AnimInstance = (GetMesh()) ? GetMesh()->GetAnimInstance() : nullptr;
	if (Montage && AnimInstance)
	{
		float MontageLength = AnimInstance->Montage_Play(Montage, PlayRate);
		const bool bPlayedSuccessfully = (MontageLength > 0.f);
		if (!bPlayedSuccessfully)
		{
			return false;
		}

		FOnMontageEnded OnMontageEndedDelegate;
		OnMontageEndedDelegate.BindUFunction(this, InFunctionName);
		AnimInstance->Montage_SetEndDelegate(OnMontageEndedDelegate, Montage);
		return true;
	}
	else
	{
		return false;
	}
}

void AUnrealSoulsCharacter::StartSprint()
{
	bIsSprinting = true;
	GetCharacterMovement()->MaxWalkSpeed = SprintSpeed;
	GetCharacterMovement()->MaxAcceleration = SprintAcceleration;
}

void AUnrealSoulsCharacter::EndSprint()
{
	bIsSprinting = false;
	GetCharacterMovement()->MaxWalkSpeed = BaseSpeed;
	GetCharacterMovement()->MaxAcceleration = BaseAcceleration;
}

void AUnrealSoulsCharacter::StartRoll()
{
	bIsRolling = true;

	float PlayRate = 1.0f;
	ERollOrientation RollOrientation;
	UAnimMontage* RollMontage;
	// If our character is not moving, we'll do a backwards roll
	if (GetCharacterMovement()->Velocity.Length() == 0.0f)
	{
		RollOrientation = ERollOrientation::Backward;
		RollMontage = RollBackwardMontage;
	}
	// If we're blocking, allow rolling in any direction
	else if (bIsBlocking)
	{
		float ForwardDot = GetActorForwardVector().Dot(GetCharacterMovement()->Velocity);
		float RightDot = GetActorRightVector().Dot(GetCharacterMovement()->Velocity);

		bool bForwardOrBackward = ForwardDot > 0.0f;
		bool bRightOrLeft = RightDot > 0.0f;
		bool bForwardOrRight = FMath::Abs(ForwardDot) >= FMath::Abs(RightDot);

		UAnimMontage* ForwardBackwardMontage = bForwardOrBackward ? RollForwardMontage : RollBackwardMontage;
		UAnimMontage* RightLeftMontage = bRightOrLeft ? RollRightMontage : RollLeftMontage;
		RollMontage = bForwardOrRight ? ForwardBackwardMontage : RightLeftMontage;

		ERollOrientation ForwardBackwardDirection = bForwardOrBackward ? ERollOrientation::Forward : ERollOrientation::Backward;
		ERollOrientation RightLeftDirection = bRightOrLeft ? ERollOrientation::Right : ERollOrientation::Left;
		RollOrientation = bForwardOrBackward ? ForwardBackwardDirection : RightLeftDirection;
	}
	// Otherwise we're moving in any direction, go in that forward direction
	else
	{
		RollOrientation = ERollOrientation::Forward;
		RollMontage = RollForwardMontage;
	}

	switch (RollOrientation)
	{
		case ERollOrientation::Forward:
			CacheDirection = GetActorForwardVector();
			break;
		case ERollOrientation::Backward:
			CacheDirection = -GetActorForwardVector();
			break;
		case ERollOrientation::Right:
			CacheDirection = GetActorRightVector();
			break;
		case ERollOrientation::Left:
			CacheDirection = -GetActorRightVector();
			break;
	}

	// Bind the Update and End callbacks for the timeline
	FOnTimelineFloat RollUpdateCallback;
	RollUpdateCallback.BindUFunction(this, "UpdateRoll");
	FOnTimelineEventStatic RollCompleteCallback;
	RollCompleteCallback.BindUFunction(this, "EndRoll");

	ActionTimeline->AddInterpFloat(DefaultRollCurve, RollUpdateCallback);
	ActionTimeline->SetTimelineFinishedFunc(RollCompleteCallback);

	if (RollMontage)
	{
		const bool bPlayedSuccessfully = PlayMontage(RollMontage, "EndRoll");
		if (bPlayedSuccessfully)
		{
			ActionTimeline->PlayFromStart();
		}
	}
}

void AUnrealSoulsCharacter::UpdateRoll(float Multiplier)
{
	// If we're falling, stop rolling
	if (GetCharacterMovement()->IsFalling())
	{
		// Stopping the timeline will trigger the Complete callback (calling EndRoll)
		ActionTimeline->Stop();
	}

	// Multiply the cached direction when the roll started by the current multiplier and the roll speed
	FVector NewVelocity = CacheDirection * Multiplier * RollSpeed;

	// Make sure we can't roll in the Z direction
	NewVelocity.Z = 0.0f;

	// Update the character's velocity with the new rolling velocity
	GetCharacterMovement()->Velocity = NewVelocity;
}

void AUnrealSoulsCharacter::EndRoll()
{
	bIsRolling = false;
	if (!GetCharacterMovement()->IsFalling())
	{
		GetCharacterMovement()->StopMovementImmediately();
	}
}

void AUnrealSoulsCharacter::LightAttack()
{
	bIsAttacking = true;
	PlayMontage(AttackMontage, "EndAttack");
}

void AUnrealSoulsCharacter::OnTakeDamage_Implementation(float DamageTaken)
{
	UE_LOG(LogTemp, Display, TEXT("Damage: %f"), DamageTaken);
}

void AUnrealSoulsCharacter::EndAttack(UAnimMontage* Montage, bool bInterrupted)
{
	bIsAttacking = false;
}