// Fill out your copyright notice in the Description page of Project Settings.

#pragma once

#include "CoreMinimal.h"
#include "GameFramework/Character.h"
#include "UnrealSoulsCharacter.h"
#include "UnrealSoulsPlayerCharacter.generated.h"

UCLASS()
class UNREALSOULS_API AUnrealSoulsPlayerCharacter : public AUnrealSoulsCharacter
{
	GENERATED_BODY()

public:
	// Sets default values for this character's properties
	AUnrealSoulsPlayerCharacter();

	/** Camera boom positioning the camera behind the character */
	UPROPERTY(VisibleAnywhere, BlueprintReadOnly, Category = Camera, meta = (AllowPrivateAccess = "true"))
	class USpringArmComponent* CameraBoom;

	/** Follow camera */
	UPROPERTY(VisibleAnywhere, BlueprintReadOnly, Category = Camera, meta = (AllowPrivateAccess = "true"))
	class UCameraComponent* FollowCamera;

	UPROPERTY(EditAnywhere, BlueprintReadOnly, Category = "Components")
	TObjectPtr<UStatusComponent> StaminaComponent;

	UPROPERTY(EditAnywhere, BlueprintReadWrite, Category = "Stamina")
	float SprintCost = 20.0f;
	UPROPERTY(EditAnywhere, BlueprintReadWrite, Category = "Stamina")
	float RollCost = 25.0f;
	UPROPERTY(EditAnywhere, BlueprintReadWrite, Category = "Stamina")
	float JumpCost = 25.0f;

	float StaminaReplenishRate = 20.0f;
	float StaminaReplenishDelay = 2.0f;

protected:
	// Called when the game starts or when spawned
	virtual void BeginPlay() override;

public:
	// Called every frame
	virtual void Tick(float DeltaTime) override;

	virtual bool CanSprint() override;
	virtual void StartSprint() override;
	virtual void EndSprint() override;

	virtual bool CanRoll() override;
	virtual void StartRoll() override;
	virtual void EndRoll() override;
};
