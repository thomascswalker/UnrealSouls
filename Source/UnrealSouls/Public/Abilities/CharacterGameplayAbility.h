// Fill out your copyright notice in the Description page of Project Settings.

#pragma once

#include "Abilities/GameplayAbility.h"
#include "CoreMinimal.h"

#include "CharacterGameplayAbility.generated.h"

UENUM(Blueprintable)
enum class EAbilityId : uint8
{
	None,
	Confirm,
	Cancel
};

UCLASS()
class UNREALSOULS_API UCharacterGameplayAbility : public UGameplayAbility
{
	GENERATED_BODY()

public:
	UCharacterGameplayAbility();

	UPROPERTY(BlueprintReadOnly, EditAnywhere, Category = "Abilities")
	EAbilityId AbilityInputId = EAbilityId::None;

	UPROPERTY(BlueprintReadOnly, EditAnywhere, Category = "Abilities")
	EAbilityId AbilityId = EAbilityId::None;

	UPROPERTY(BlueprintReadWrite, EditAnywhere, Category = "Abilities")
	bool bActivateAbilityOnGranted = false;

	virtual void OnAvatarSet(const FGameplayAbilityActorInfo* ActorInfo, const FGameplayAbilitySpec& Spec) override;
};
