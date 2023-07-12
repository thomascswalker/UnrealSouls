// Fill out your copyright notice in the Description page of Project Settings.

#pragma once

#include "BehaviorTree/BehaviorTree.h"
#include "CoreMinimal.h"
#include "Engine/DataTable.h"

#include "CharacterInfo.generated.h"

UENUM(BlueprintType, meta = (Bitflags, UseEnumValuesAsMaskValuesInEditor = "true"))
enum class ECharacterMaskType : uint8
{
    None = 0 UMETA(Hidden),
    Player = 1 << 0,
    Enemy = 1 << 1,
    Boss = 1 << 2
};
ENUM_CLASS_FLAGS(ECharacterMaskType);

USTRUCT(BlueprintType, Blueprintable)
struct FCharacterInfo : public FTableRowBase
{
public:
    GENERATED_BODY()

    UPROPERTY(EditAnywhere, BlueprintReadWrite, Category = "General")
    FName Name;

    UPROPERTY(EditAnywhere, BlueprintReadWrite, Category = "General")
    USkeletalMesh* Mesh;

    UPROPERTY(EditAnywhere, BlueprintReadWrite, Category = "AI")
    UBehaviorTree* BehaviorTree;

    UPROPERTY(EditAnywhere, BlueprintReadWrite, Category = "AI", meta = (Bitmask, BitmaskEnum = "ECharacterMaskType"))
    uint8 AttackMaskType;

    UPROPERTY(EditAnywhere, BlueprintReadWrite, Category = "AI", meta = (Bitmask, BitmaskEnum = "ECharacterMaskType"))
    uint8 DefenseMaskType;

    UPROPERTY(EditAnywhere, BlueprintReadWrite, Category = "Attributes")
    float BaseHealth;

    UPROPERTY(EditAnywhere, BlueprintReadWrite, Category = "Attributes")
    float BaseStamina;

    UPROPERTY(EditAnywhere, BlueprintReadWrite, Category = "Attributes")
    float BaseAttackPower;

    UPROPERTY(EditAnywhere, BlueprintReadWrite, Category = "Attributes")
    float StaminaRecoveryRate;

    UPROPERTY(EditAnywhere, BlueprintReadWrite, Category = "Attributes")
    float PhysicalDefense;

    UPROPERTY(EditAnywhere, BlueprintReadWrite, Category = "Attributes")
    float Souls;
};