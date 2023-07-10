// Fill out your copyright notice in the Description page of Project Settings.

#pragma once

#include "Characters/UnrealSoulsPlayerCharacter.h"
#include "CoreMinimal.h"
#include "EnhancedInputComponent.h"
#include "EnhancedInputSubsystems.h"
#include "GameFramework/InputSettings.h"
#include "GameFramework/PlayerController.h"
#include "InputAction.h"
#include "Interfaces/Interactive.h"
#include "Interfaces/Targetable.h"
#include "UI/Prompt.h"

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

    UPROPERTY(EditAnywhere, BlueprintReadOnly, Category = Input, meta = (AllowPrivateAccess = "true"))
    class UInputAction* TargetAction;

    UPROPERTY(EditAnywhere, BlueprintReadOnly, Category = Input, meta = (AllowPrivateAccess = "true"))
    class UInputAction* AttackAction;

    UPROPERTY(EditAnywhere, BlueprintReadOnly, Category = Input, meta = (AllowPrivateAccess = "true"))
    class UInputAction* BlockAction;

    UPROPERTY(EditAnywhere, BlueprintReadWrite, Category = Input, meta = (AllowPrivateAccess = "true"))
    TScriptInterface<IInteractive> CurrentInteractiveEntity = nullptr;

    FVector CachePlayerDirection;

    UPROPERTY(EditAnywhere, BlueprintReadWrite, Category = "Combat", meta = (AllowPrivateAccess = "true"))
    float TargetDistance = 1000.0f;

    UPROPERTY(EditAnywhere, BlueprintReadWrite, Category = "Combat", meta = (AllowPrivateAccess = "true"))
    AUnrealSoulsCharacter* CurrentTarget = nullptr;

    DECLARE_DYNAMIC_MULTICAST_DELEGATE_OneParam(FTargetVisibilityChanged, const bool, bVisibility);
    UPROPERTY(BlueprintAssignable, BlueprintCallable, Category = "Event Dispatchers")
    FTargetVisibilityChanged TargetVisibilityChanged;

    DECLARE_DYNAMIC_MULTICAST_DELEGATE_OneParam(FTargetLocationChanged, FVector2D, Location);
    UPROPERTY(BlueprintAssignable, BlueprintCallable, Category = "Event Dispatchers")
    FTargetLocationChanged TargetLocationChanged;

    UPROPERTY(BlueprintReadOnly, Category = "Widgets")
    UPrompt* PromptWidget;

public:
    AUnrealSoulsPlayerController();

    virtual void BeginPlay();
    virtual void Tick(float DeltaTime) override;

    virtual void SetupInputComponent() override;

    float GetLookSensitivity()
    {
        return LookRate / 5.0f;
    }
    void SetLookRate(float NewRate)
    {
        LookRate = NewRate;
    }

    void OnMoveTriggered(const FInputActionValue& ActionValue);
    void OnLookTriggered(const FInputActionValue& ActionValue);
    void OnRollTriggered(const FInputActionValue& ActionValue);
    void OnSprintTriggered(const FInputActionValue& ActionValue);
    void OnSprintCompleted(const FInputActionValue& ActionValue);
    void OnJumpTriggered(const FInputActionValue& ActionValue);
    void OnInteractTriggered(const FInputActionValue& ActionValue);
    void OnTargetTriggered(const FInputActionValue& ActionValue);
    void Untarget();

    void OnAttackTriggered(const FInputActionValue& ActionValue);

    void OnBlockTriggered(const FInputActionValue& ActionValue);
    void OnBlockCompleted(const FInputActionValue& ActionValue);

    void ShowPrompt_Implementation(const FText& Text);

    UFUNCTION(BlueprintCallable, BlueprintNativeEvent)
    void ShowPrompt(const FText& Text);

    UFUNCTION(BlueprintCallable, BlueprintNativeEvent)
    void HidePrompt();
};
