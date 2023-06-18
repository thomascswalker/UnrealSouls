// Fill out your copyright notice in the Description page of Project Settings.

#pragma once

#include "AbilitySystemComponent.h"
#include "CoreMinimal.h"

#include "CharacterAbilitySystemComponent.generated.h"

UCLASS()
class UNREALSOULS_API UCharacterAbilitySystemComponent : public UAbilitySystemComponent
{
	GENERATED_BODY()

public: 
	bool bCharacterAbilitiesGiven = false;
	bool bStartupEffectApplied = false;

	DECLARE_DYNAMIC_MULTICAST_DELEGATE_TwoParams(
		FReceivedDamage, UCharacterAbilitySystemComponent*, OtherComp, float, Damage);
	UPROPERTY(BlueprintAssignable, BlueprintCallable, Category = "Event Dispatchers")
	FReceivedDamage ReceivedDamage;

	virtual void ReceiveDamage(UCharacterAbilitySystemComponent* OtherComp, float Damage);
};
