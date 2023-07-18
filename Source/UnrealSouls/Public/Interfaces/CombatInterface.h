// Fill out your copyright notice in the Description page of Project Settings.

#pragma once

#include "CoreMinimal.h"
#include "UObject/Interface.h"
#include "Abilities/CharacterAbilitySystemComponent.h"
#include "Components/CapsuleComponent.h"

#include "CombatInterface.generated.h"

UENUM(BlueprintType)
enum class EAttackType : uint8
{
    Melee,
    Bow,
    Sorcery,
    Miracle,
    Pyromancy
};

// This class does not need to be modified.
UINTERFACE(BlueprintType, Blueprintable)
class UCombatInterface : public UInterface
{
    GENERATED_BODY()
};

/* Interface class for any interactive actor. */
class UNREALSOULS_API ICombatInterface
{
    GENERATED_BODY()

public:
    UFUNCTION(BlueprintNativeEvent, BlueprintCallable)
    bool IsTargetable() const;

    UFUNCTION(BlueprintNativeEvent, BlueprintCallable)
    bool IsInvulnerable() const;

    UFUNCTION(BlueprintNativeEvent, BlueprintCallable)
    void SetInvulnerable(bool bInvulnerable);

    UFUNCTION(BlueprintNativeEvent, BlueprintCallable)
    UCapsuleComponent* GetWeaponHitbox() const;

    UFUNCTION(BlueprintNativeEvent, BlueprintCallable)
    ECharacterMaskType GetCharacterTypeMask() const;

    UFUNCTION(BlueprintNativeEvent, BlueprintCallable)
    UUserWidget* GetHealthBarWidget() const;
};
