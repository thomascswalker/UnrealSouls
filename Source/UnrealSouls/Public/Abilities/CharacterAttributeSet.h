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

/**
 *
 */
UCLASS()
class UNREALSOULS_API UCharacterAttributeSet : public UAttributeSet
{
	GENERATED_BODY()

public:
	UPROPERTY(BlueprintReadOnly, Category = "Health")
	FGameplayAttributeData Health;
	ATTRIBUTE_ACCESSORS(UCharacterAttributeSet, Health)

	UPROPERTY(BlueprintReadOnly, Category = "Health")
	FGameplayAttributeData MaxHealth;
	ATTRIBUTE_ACCESSORS(UCharacterAttributeSet, MaxHealth)

	UPROPERTY(BlueprintReadOnly, Category = "Stamina")
	FGameplayAttributeData Stamina;
	ATTRIBUTE_ACCESSORS(UCharacterAttributeSet, Stamina)

	UPROPERTY(BlueprintReadOnly, Category = "Stamina")
	FGameplayAttributeData MaxStamina;
	ATTRIBUTE_ACCESSORS(UCharacterAttributeSet, MaxStamina)

	UPROPERTY(BlueprintReadOnly, Category = "Attack")
	FGameplayAttributeData AttackPower;
	ATTRIBUTE_ACCESSORS(UCharacterAttributeSet, AttackPower)

	// Temporary attribute, doesn't need to be replicated
	UPROPERTY(BlueprintReadOnly, Category = "Damage")
	FGameplayAttributeData Damage;
	ATTRIBUTE_ACCESSORS(UCharacterAttributeSet, Damage)

	void PostGameplayEffectExecute(const struct FGameplayEffectModCallbackData& Data) override;
};
