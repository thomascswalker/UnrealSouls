// Fill out your copyright notice in the Description page of Project Settings.

#pragma once

#include "CoreMinimal.h"
#include "Engine/DataTable.h"

#include "CharacterInfo.generated.h"

USTRUCT(BlueprintType, Blueprintable)
struct FCharacterInfo : public FTableRowBase
{
public:
    GENERATED_BODY()

    UPROPERTY(EditAnywhere, BlueprintReadOnly)
    FName Name;

    UPROPERTY(EditAnywhere, BlueprintReadOnly)
    float BaseHealth;

    UPROPERTY(EditAnywhere, BlueprintReadOnly)
    float BaseStamina;

    UPROPERTY(EditAnywhere, BlueprintReadOnly)
    float BaseAttackPower;

    UPROPERTY(EditAnywhere, BlueprintReadOnly)
    float StaminaRecoveryRate;

    UPROPERTY(EditAnywhere, BlueprintReadOnly)
    float PhysicalDefense;

    UPROPERTY(EditAnywhere, BlueprintReadOnly)
    float Souls;
};