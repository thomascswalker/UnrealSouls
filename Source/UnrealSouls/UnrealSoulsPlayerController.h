// Fill out your copyright notice in the Description page of Project Settings.

#pragma once

#include "CoreMinimal.h"
#include "GameFramework/PlayerController.h"
#include "UnrealSoulsPlayerCharacter.h"
#include "InputAction.h"
#include "EnhancedInputSubsystems.h"
#include "EnhancedInputComponent.h"
#include "GameFramework/InputSettings.h"
#include "Public/Interactive.h"

#include "UnrealSoulsPlayerController.generated.h"

/**
 *
 */
UCLASS()
class UNREALSOULS_API AUnrealSoulsPlayerController : public APlayerController
{
	GENERATED_BODY()

	float LookRate = 10.0f;

public:
	UPROPERTY(EditAnywhere, BlueprintReadOnly)
	AUnrealSoulsPlayerCharacter* PlayerCharacter;

	UPROPERTY(EditAnywhere, BlueprintReadOnly, Category = Input, meta = (AllowPrivateAccess = "true"))
	class UInputMappingContext* DefaultMappingContext;

	UPROPERTY(EditAnywhere, BlueprintReadOnly, Category = Input, meta = (AllowPrivateAccess = "true"))
	class UInputAction* RollAction;

	UPROPERTY(EditAnywhere, BlueprintReadOnly, Category = Input, meta = (AllowPrivateAccess = "true"))
	class UInputAction* SprintAction;

	UPROPERTY(EditAnywhere, BlueprintReadOnly, Category = Input, meta = (AllowPrivateAccess = "true"))
	class UInputAction* MoveAction;

	UPROPERTY(EditAnywhere, BlueprintReadOnly, Category = Input, meta = (AllowPrivateAccess = "true"))
	class UInputAction* LookAction;

	UPROPERTY(EditAnywhere, BlueprintReadOnly, Category = Input, meta = (AllowPrivateAccess = "true"))
	class UInputAction* JumpAction;

	UPROPERTY(EditAnywhere, BlueprintReadOnly, Category = Input, meta = (AllowPrivateAccess = "true"))
	class UInputAction* InteractAction;

	UPROPERTY(EditAnywhere, BlueprintReadWrite, Category = Input, meta = (AllowPrivateAccess = "true"))
	TScriptInterface<IInteractive> CurrentInteractiveEntity = nullptr;

	FVector CachePlayerDirection;

public:
	AUnrealSoulsPlayerController();

	virtual void BeginPlay();

	virtual void SetupInputComponent() override;

	float GetLookSensitivity() { return LookRate / 5.0f; }
	void SetLookRate(float NewRate) { LookRate = NewRate; }

	void OnMoveTriggered(const FInputActionValue& ActionValue);
	void OnLookTriggered(const FInputActionValue& ActionValue);
	void OnRollTriggered(const FInputActionValue& ActionValue);
	void OnSprintTriggered(const FInputActionValue& ActionValue);
	void OnSprintCompleted(const FInputActionValue& ActionValue);
	void OnJumpTriggered(const FInputActionValue& ActionValue);
	void OnInteractTriggered(const FInputActionValue& ActionValue);

	UFUNCTION(BlueprintCallable, BlueprintNativeEvent)
	void ShowPrompt(const FText& Text);

	UFUNCTION(BlueprintCallable, BlueprintNativeEvent)
	void HidePrompt();
};
