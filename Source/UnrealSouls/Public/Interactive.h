// Fill out your copyright notice in the Description page of Project Settings.

#pragma once

#include "CoreMinimal.h"
#include "UObject/Interface.h"

#include "Interactive.generated.h"

UENUM(Blueprintable)
enum class EInteractType : uint8
{
    Accept,
    Decline,
    Rest,
    Open,
    Close,
    Talk,
    Climb
};

USTRUCT(Blueprintable)
struct FInteractPrompt
{
    GENERATED_BODY()

    UPROPERTY(BlueprintReadOnly, EditDefaultsOnly)
    FText Text;

    UPROPERTY(BlueprintReadOnly, EditDefaultsOnly)
    TArray<EInteractType> Options;
};

// This class does not need to be modified.
UINTERFACE(BlueprintType, Blueprintable)
class UInteractive : public UInterface
{
    GENERATED_BODY()
};

/* Interface class for any interactive actor. */
class UNREALSOULS_API IInteractive
{
    GENERATED_BODY()

public:
    UFUNCTION(BlueprintNativeEvent, BlueprintCallable)
    void Interact(AActor* OtherActor);

    UFUNCTION(BlueprintNativeEvent, BlueprintCallable)
    FText GetActionText();

    UFUNCTION(BlueprintNativeEvent, BlueprintCallable)
    FInteractPrompt GetPrompt();
};
