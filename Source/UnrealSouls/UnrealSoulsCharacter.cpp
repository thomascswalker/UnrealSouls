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
}

void AUnrealSoulsCharacter::StartSprint()
{
	bIsSprinting = true;
	GetCharacterMovement()->MaxWalkSpeed = SprintSpeed;
	GetCharacterMovement()->MaxAcceleration = SprintAcceleration;
}

void AUnrealSoulsCharacter::EndSprint() {
	bIsSprinting = true;
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
