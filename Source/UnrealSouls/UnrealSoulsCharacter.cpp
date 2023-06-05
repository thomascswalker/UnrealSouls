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
}

void AUnrealSoulsCharacter::Tick(float DeltaTime) {}

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

bool AUnrealSoulsCharacter::LightAttack()
{
	UAnimInstance* AnimInstance = (GetMesh()) ? GetMesh()->GetAnimInstance() : nullptr;
	if (AttackMontage && AnimInstance)
	{
		float MontageLength = AnimInstance->Montage_Play(AttackMontage);
		const bool bPlayedSuccessfully = (MontageLength > 0.f);
		if (bPlayedSuccessfully)
		{
			FOnMontageEnded OnMontageEndedDelegate;
			OnMontageEndedDelegate.BindUObject(this, &AUnrealSoulsCharacter::EndAttack);
			AnimInstance->Montage_SetEndDelegate(OnMontageEndedDelegate, AttackMontage);
		}
		return true;
	}
	else
	{
		return false;
	}
}

void AUnrealSoulsCharacter::EndAttack(UAnimMontage* Montage, bool bInterrupted)
{
	bIsAttacking = false;
}