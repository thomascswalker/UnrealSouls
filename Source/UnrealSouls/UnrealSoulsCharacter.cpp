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
}

void AUnrealSoulsCharacter::Tick(float DeltaTime)
{
	if (bIsRolling)
	{
		AddMovementInput(CacheDirection, RollSpeed);
	}

	if (bIsClimbing)
	{
		SetActorRotation(CurrentLadder->GetActorRotation());
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
	GetCharacterMovement()->MaxWalkSpeed = RollSpeed;
	GetCharacterMovement()->MaxAcceleration = RollAcceleration;
	if (RollMontage)
	{
		PlayAnimMontage(RollMontage);
	}
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

void AUnrealSoulsCharacter::StartClimb_Implementation(FVector Location, FRotator Rotation, UAnimMontage* Montage)
{
	// Turn on climbing
	bIsClimbing = true;
	ClimbTransitionMontage = Montage;

	ALadder* Ladder = Cast<ALadder>(CurrentLadder);
	if (!Ladder)
	{
		UE_LOG(LogTemp, Error, L"Unable to cast to ladder.");
		return;
	}
	SetActorRotation(Ladder->GetActorLookAtRotation(this));
	TransitionMoveTo(Location, Rotation, 0.0f, FName("PlayClimbTransitionMontage"));
}

void AUnrealSoulsCharacter::EndClimb_Implementation(FVector Location, FRotator Rotation, UAnimMontage* Montage)
{
	// Turn off climbing
	bIsClimbing = false;
	ClimbTransitionMontage = Montage;

	ALadder* Ladder = Cast<ALadder>(CurrentLadder);
	if (!Ladder)
	{
		UE_LOG(LogTemp, Error, L"Unable to cast to ladder.");
		return;
	}
	
	SetActorLocation(Location);
	GetCharacterMovement()->SetMovementMode(EMovementMode::MOVE_None);
	SetActorRotation(Ladder->GetActorLookAtRotation(this));
	PlayClimbTransitionMontage();
}

void AUnrealSoulsCharacter::PlayClimbTransitionMontage()
{
	UAnimInstance* AnimInstance = GetMesh()->GetAnimInstance();
	if (!AnimInstance)
	{
		return;
	}

	AddActorLocalRotation(FRotator(0, 90, 0));
	float MontageLength = AnimInstance->Montage_Play(ClimbTransitionMontage);
	bool bPlayedSuccessfully = MontageLength > 0.f;

	if (bPlayedSuccessfully)
	{
		FOnMontageBlendingOutStarted BlendOutDelegate;
		BlendOutDelegate.BindUObject(this, &AUnrealSoulsCharacter::OnTransitionMontageNotifyEnd);
		AnimInstance->Montage_SetBlendingOutDelegate(BlendOutDelegate, ClimbTransitionMontage);
	}
	else
	{
		UE_LOG(LogTemp, Error, L"Failed to play transition montage.");
	}
}

void AUnrealSoulsCharacter::TransitionMoveTo(FVector Location, FRotator Rotation, float Rate, FName ExecutionFunction)
{
	AddActorLocalRotation(FRotator(0, -90, 0));

	// Temporarily disable movement
	FLatentActionInfo LatentActionInfo;
	if (ExecutionFunction != "")
	{
		GetCharacterMovement()->SetMovementMode(EMovementMode::MOVE_None);
		GetCharacterMovement()->DisableMovement();
		LatentActionInfo.CallbackTarget = this;
		LatentActionInfo.ExecutionFunction = ExecutionFunction;
	}
	LatentActionInfo.Linkage = 0;
	LatentActionInfo.UUID = ClimbUuid++;

	// Move the character to the desired position
	UKismetSystemLibrary::MoveComponentTo(GetCapsuleComponent(), Location, Rotation, false, false, Rate, true, EMoveComponentAction::Move, LatentActionInfo);
}

void AUnrealSoulsCharacter::OnLadderExitEnd()
{
	GetCharacterMovement()->SetMovementMode(EMovementMode::MOVE_Walking, 0);
}

void AUnrealSoulsCharacter::OnTransitionMontageNotifyEnd(UAnimMontage* Montage, bool bInterrupted)
{
	ALadder* Ladder = Cast<ALadder>(CurrentLadder);
	if (!Ladder)
	{
		UE_LOG(LogTemp, Error, L"Unable to cast to ladder.");
		return;
	}

	// Entering climbing
	if (bIsClimbing)
	{
		Ladder->LadderBottomExit->OnComponentBeginOverlap.AddUniqueDynamic(this, &AUnrealSoulsCharacter::OnLadderExitBottomOverlapBegin);
		Ladder->LadderTopExit->OnComponentBeginOverlap.AddUniqueDynamic(this, &AUnrealSoulsCharacter::OnLadderExitTopOverlapBegin);

		GetCharacterMovement()->SetMovementMode(EMovementMode::MOVE_Flying, 0);
	}
	// Exiting climbing
	else
	{
		Ladder->LadderBottomExit->OnComponentBeginOverlap.Remove(this, "OnLadderExitBottomOverlapBegin");
		Ladder->LadderTopExit->OnComponentBeginOverlap.Remove(this, "OnLadderExitTopOverlapBegin");

		TransitionMoveTo(CurrentLadderExitLocation, Ladder->GetActorLookAtRotation(this), 0.0f, "OnLadderExitEnd");
	}
}

void AUnrealSoulsCharacter::OnLadderExitBottomOverlapBegin(
	UPrimitiveComponent* OverlappedComp, AActor* OtherActor, UPrimitiveComponent* OtherComp, int32 OtherBodyIndex, bool bFromSweep, const FHitResult& SweepResult)
{
	ALadder* Ladder = Cast<ALadder>(CurrentLadder);
	if (!Ladder)
	{
		UE_LOG(LogTemp, Error, L"Unable to cast to ladder.");
		return;
	}

	CurrentLadderExitLocation = Ladder->LadderBottomExitLocation->GetComponentLocation();
	EndClimb_Implementation(CurrentLadderExitLocation, Ladder->GetActorLookAtRotation(this), ClimbEndBottomMontage);
}

void AUnrealSoulsCharacter::OnLadderExitTopOverlapBegin(
	UPrimitiveComponent* OverlappedComp, AActor* OtherActor, UPrimitiveComponent* OtherComp, int32 OtherBodyIndex, bool bFromSweep, const FHitResult& SweepResult)
{
	ALadder* Ladder = Cast<ALadder>(CurrentLadder);
	if (!Ladder)
	{
		UE_LOG(LogTemp, Error, L"Unable to cast to ladder.");
		return;
	}

	CurrentLadderExitLocation = Ladder->LadderTopExitLocation->GetComponentLocation();
	EndClimb_Implementation(Ladder->LadderTopExit->GetComponentLocation() + FVector(0, 0, 75), Ladder->GetActorLookAtRotation(this), ClimbEndTopMontage);
}
