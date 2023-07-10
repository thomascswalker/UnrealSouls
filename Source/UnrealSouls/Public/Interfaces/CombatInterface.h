// Fill out your copyright notice in the Description page of Project Settings.

#pragma once

#include "CoreMinimal.h"
#include "UObject/Interface.h"
#include "Abilities/CharacterAbilitySystemComponent.h"
#include "Components/CapsuleComponent.h"

#include "CombatInterface.generated.h"


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
    bool IsTargetable();

    UFUNCTION(BlueprintNativeEvent, BlueprintCallable)
    bool CanTakeDamage();

    UFUNCTION(BlueprintNativeEvent, BlueprintCallable)
    UCapsuleComponent* GetWeaponHitbox();
};
