// Copyright Epic Games, Inc. All Rights Reserved.

#pragma once

#include "CoreMinimal.h"
#include "GameFramework/Character.h"
#include "GameFramework/CharacterMovementComponent.h"
#include "InputActionValue.h"
#include "Components/BoxComponent.h"
#include "Public/ClimbingComponent.h"
#include "Public/Targetable.h"
#include "StatusComponent.h"

#include "UnrealSoulsCharacter.generated.h"

UENUM(BlueprintType)
enum class EFaction : uint8
{
	Passive,
	Neutral,
	Aggressive
};

UCLASS(config = Game)
class AUnrealSoulsCharacter : public ACharacter, public ITargetable
{
	GENERATED_BODY()

public:
	UPROPERTY(EditAnywhere, BlueprintReadOnly, Category = "Components")
	TObjectPtr<UStatusComponent> HealthComponent;

	UPROPERTY(EditAnywhere, BlueprintReadOnly, Category = "Components")
	TObjectPtr<UClimbingComponent> ClimbingComponent;

	FVector CacheDirection;

	UPROPERTY(EditAnywhere, BlueprintReadWrite, Category = "Movement")
	bool bCanMove = false;
	UPROPERTY(EditAnywhere, BlueprintReadWrite, Category = "Movement")
	bool bIsJumping = false;
	UPROPERTY(EditAnywhere, BlueprintReadWrite, Category = "Movement")
	bool bIsRolling = false;
	UPROPERTY(EditAnywhere, BlueprintReadWrite, Category = "Movement")
	bool bIsSprinting = false;
	UPROPERTY(EditDefaultsOnly, BlueprintReadOnly, Category = "Movement")
	bool bCanEverClimb = false;
	UPROPERTY(EditAnywhere, BlueprintReadWrite, Category = "Movement")
	bool bIsClimbing = false;

	float BaseSpeed = 400.0f;
	float BaseAcceleration = 1500.0f;

	float RollSpeed = 1000.0f;
	float RollAcceleration = 3000.0f;

	float SprintSpeed = 600.0f;
	float SprintAcceleration = 2500.0f;

	float WalkSpeed = 150.0f;
	float WalkAcceleration = 500.0f;

	UPROPERTY(EditAnywhere, BlueprintReadOnly, Category = "Animations")
	UAnimMontage* RollMontage;

	UPROPERTY(EditAnywhere, BlueprintReadOnly, Category = "Animations")
	UAnimMontage* AttackMontage;

	UPROPERTY(EditAnywhere, BlueprintReadOnly, Category = "Combat")
	EFaction Faction;

	UPROPERTY(EditAnywhere, BlueprintReadOnly, Category = "Combat")
	bool bIsAttacking = false;

	UPROPERTY(EditAnywhere, BlueprintReadOnly, Category = "Combat")
	bool bIsBlocking = false;

public:
	AUnrealSoulsCharacter();
	virtual void Tick(float DeltaTime) override;

public:
	UFUNCTION(BlueprintCallable)
	float GetMovementSpeed() { return GetCharacterMovement()->MaxWalkSpeed; }

	UFUNCTION(BlueprintCallable)
	void SetMovementSpeed(float NewSpeed) { GetCharacterMovement()->MaxWalkSpeed = NewSpeed; }

	// Sprinting

	UFUNCTION(BlueprintCallable)
	virtual bool CanSprint() { return false; }

	UFUNCTION(BlueprintCallable)
	virtual void StartSprint();

	UFUNCTION(BlueprintCallable)
	virtual void EndSprint();

	// Rolling

	UFUNCTION(BlueprintCallable)
	virtual bool CanRoll() { return false; }

	UFUNCTION(BlueprintCallable)
	virtual void StartRoll();

	UFUNCTION(BlueprintCallable)
	virtual void EndRoll();

	// Attacking

	UFUNCTION(BlueprintCallable)
	virtual bool LightAttack();

	UFUNCTION(BlueprintCallable)
	virtual bool HeavyAttack() { return false; }

	UFUNCTION(BlueprintCallable)
	virtual void EndAttack(UAnimMontage* Montage, bool bInterrupted);

	// Blocking

	UFUNCTION(BlueprintCallable)
	virtual bool Block() { return false; }
};
