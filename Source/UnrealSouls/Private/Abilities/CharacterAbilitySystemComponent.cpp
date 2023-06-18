// Fill out your copyright notice in the Description page of Project Settings.

#include "Abilities/CharacterAbilitySystemComponent.h"
#include "Abilities/CharacterAttributeSet.h"

void UCharacterAbilitySystemComponent::ReceiveDamage(UCharacterAbilitySystemComponent* OtherComp, float Damage)
{
	ReceivedDamage.Broadcast(OtherComp, Damage);
}
