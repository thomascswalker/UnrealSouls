// Copyright Epic Games, Inc. All Rights Reserved.

#pragma once

#include "CoreMinimal.h"
#include "GameFramework/Character.h"
#include "GameFramework/CharacterMovementComponent.h"
#include "InputActionValue.h"
#include "Components/BoxComponent.h"

#include "StatusComponent.h"

#include "UnrealSoulsCharacter.generated.h"

UCLASS(config = Game)
class AUnrealSoulsCharacter : public ACharacter
{
	GENERATED_BODY()

public:
	UPROPERTY(EditAnywhere, BlueprintReadOnly, Category = "Components")
	TObjectPtr<UStatusComponent> HealthComponent;

	FVector CacheDirection;

	UPROPERTY(EditAnywhere, BlueprintReadWrite, Category = "Movement")
	bool bCanMove = false;
	UPROPERTY(EditAnywhere, BlueprintReadWrite, Category = "Movement")
	bool bIsJumping = false;
	UPROPERTY(EditAnywhere, BlueprintReadWrite, Category = "Movement")
	bool bIsRolling = false;
	UPROPERTY(EditAnywhere, BlueprintReadWrite, Category = "Movement")
	bool bIsSprinting = false;
	UPROPERTY(EditAnywhere, BlueprintReadWrite, Category = "Movement")
	bool bIsClimbing = false;
	UPROPERTY(EditAnywhere, BlueprintReadWrite, Category = "Movement")

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
	UAnimMontage* ClimbStartTopMontage;

	UPROPERTY(EditAnywhere, BlueprintReadOnly, Category = "Animations")
	UAnimMontage* ClimbStartBottomMontage;

	UPROPERTY(EditAnywhere, BlueprintReadOnly, Category = "Animations")
	UAnimMontage* ClimbEndTopMontage;

	UPROPERTY(EditAnywhere, BlueprintReadOnly, Category = "Animations")
	UAnimMontage* ClimbEndBottomMontage;

	int ClimbUuid = 0;
	UAnimMontage* ClimbTransitionMontage;
	AActor* CurrentLadder;
	FVector CurrentLadderExitLocation;

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

	// Climbing

	UFUNCTION(BlueprintCallable, BlueprintNativeEvent)
	void StartClimb(FVector Location, FRotator Rotation, UAnimMontage* Montage);

	UFUNCTION(BlueprintCallable, BlueprintNativeEvent)
	void EndClimb(FVector Location, FRotator Rotation, UAnimMontage* Montage);

	UFUNCTION()
	void PlayClimbTransitionMontage();

	UFUNCTION()
	void TransitionMoveTo(FVector Location, FRotator Rotation, float Rate = 1.0f, FName ExecutionFunction = "");

	UFUNCTION()
	void OnLadderExitEnd();

	UFUNCTION()
	void OnTransitionMontageNotifyEnd(UAnimMontage* Montage, bool bInterrupted);

	UFUNCTION()
	void OnLadderExitBottomOverlapBegin(UPrimitiveComponent* OverlappedComp, AActor* OtherActor, UPrimitiveComponent* OtherComp, int32 OtherBodyIndex, bool bFromSweep, const FHitResult& SweepResult);

	UFUNCTION()
	void OnLadderExitTopOverlapBegin(UPrimitiveComponent* OverlappedComp, AActor* OtherActor, UPrimitiveComponent* OtherComp, int32 OtherBodyIndex, bool bFromSweep, const FHitResult& SweepResult);
};
