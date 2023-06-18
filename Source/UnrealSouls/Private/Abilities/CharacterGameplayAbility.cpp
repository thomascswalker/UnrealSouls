// Fill out your copyright notice in the Description page of Project Settings.


#include "Abilities/CharacterGameplayAbility.h"
#include "Abilities/CharacterAbilitySystemComponent.h"

inline UCharacterGameplayAbility::UCharacterGameplayAbility()
{
	InstancingPolicy = EGameplayAbilityInstancingPolicy::InstancedPerActor;

	// Default all abilities to be blocked by the below tags (death/staggered)
	ActivationBlockedTags.AddTag(FGameplayTag::RequestGameplayTag(FName("Character.State.Dead")));
	ActivationBlockedTags.AddTag(FGameplayTag::RequestGameplayTag(FName("Character.State.Stagger")));
}

void UCharacterGameplayAbility::OnAvatarSet(const FGameplayAbilityActorInfo* ActorInfo, const FGameplayAbilitySpec& Spec)
{
	Super::OnAvatarSet(ActorInfo, Spec);

	if (bActivateAbilityOnGranted)
	{
		ActorInfo->AbilitySystemComponent->TryActivateAbility(Spec.Handle, false);
	}
}
