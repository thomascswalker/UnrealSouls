// Fill out your copyright notice in the Description page of Project Settings.

#pragma once

#include "AbilitySystemComponent.h"
#include "AttributeSet.h"
#include "CoreMinimal.h"

#include "CharacterAttributeSet.generated.h"

// Uses macros from AttributeSet.h
#define ATTRIBUTE_ACCESSORS(ClassName, PropertyName)           \
    GAMEPLAYATTRIBUTE_PROPERTY_GETTER(ClassName, PropertyName) \
    GAMEPLAYATTRIBUTE_VALUE_GETTER(PropertyName)               \
    GAMEPLAYATTRIBUTE_VALUE_SETTER(PropertyName)               \
    GAMEPLAYATTRIBUTE_VALUE_INITTER(PropertyName)

UCLASS()
class UNREALSOULS_API UCharacterAttributeSet : public UAttributeSet
{
    GENERATED_BODY()

public:
    /* Health attribute. When this hits 0, the character dies. */
    UPROPERTY(BlueprintReadOnly, Category = "Attributes")
    FGameplayAttributeData Health;
    ATTRIBUTE_ACCESSORS(UCharacterAttributeSet, Health)

    /* Stamina attribute. When this hits 0, the character cannot perform any stamina-draining actions. */
    UPROPERTY(BlueprintReadOnly, Category = "Attributes")
    FGameplayAttributeData Stamina;
    ATTRIBUTE_ACCESSORS(UCharacterAttributeSet, Stamina)

    /* Attack Power attribute. This is a multiplier on the actual attack the character is performing. */
    UPROPERTY(BlueprintReadOnly, Category = "Attributes")
    FGameplayAttributeData AttackPower;
    ATTRIBUTE_ACCESSORS(UCharacterAttributeSet, AttackPower)

    /* The base (or max) health of the character. */
    float BaseHealth;
    /* The base (or max) stamina of the character. */
    float BaseStamina;
    /* Health value prior to the Gameplay Effect being executed. This is used to calculate the damage taken. */
    float PreHealthChanged;

    bool PreGameplayEffectExecute(FGameplayEffectModCallbackData& Data) override;
    void PostGameplayEffectExecute(const struct FGameplayEffectModCallbackData& Data) override;
};
