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

bool AUnrealSoulsCharacter::PlayMontage(UAnimMontage* Montage, const FName InFunctionName)
{
	UAnimInstance* AnimInstance = (GetMesh()) ? GetMesh()->GetAnimInstance() : nullptr;
	if (Montage && AnimInstance)
	{
		float MontageLength = AnimInstance->Montage_Play(Montage);
		const bool bPlayedSuccessfully = (MontageLength > 0.f);
		if (bPlayedSuccessfully)
		{
			FOnMontageEnded OnMontageEndedDelegate;
			OnMontageEndedDelegate.BindUFunction(this, InFunctionName);
			AnimInstance->Montage_SetEndDelegate(OnMontageEndedDelegate, Montage);
		}
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
	CacheDirection = GetActorForwardVector();
	bIsRolling = true;

	FOnTimelineFloat RollUpdateCallback;
	RollUpdateCallback.BindUFunction(this, "UpdateRoll");
	FOnTimelineEventStatic RollCompleteCallback;
	RollCompleteCallback.BindUFunction(this, "EndRoll");

	ActionTimeline->AddInterpFloat(DefaultRollCurve, RollUpdateCallback);
	ActionTimeline->SetTimelineFinishedFunc(RollCompleteCallback);

	if (RollMontage)
	{
		PlayMontage(RollMontage, "EndRoll");
	}
	ActionTimeline->PlayFromStart();
}

void AUnrealSoulsCharacter::UpdateRoll(float Multiplier)
{
	FVector Forward = GetActorForwardVector();
	float Distance = 1000.0f;
	GetCharacterMovement()->Velocity = Forward * (Multiplier * Distance);
}

void AUnrealSoulsCharacter::EndRoll()
{
	bIsRolling = false;
	GetCharacterMovement()->MaxWalkSpeed = BaseSpeed;
	GetCharacterMovement()->MaxAcceleration = BaseAcceleration;
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

void AUnrealSoulsCharacter::EndAttack(UAnimMontage* Montage, bool bInterrupted)
{
	bIsAttacking = false;
}