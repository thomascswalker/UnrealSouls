// Fill out your copyright notice in the Description page of Project Settings.


#include "Abilities/CharacterAbilitySystemComponent.h"

void UCharacterAbilitySystemComponent::ReceiveDamage(UCharacterAbilitySystemComponent* OtherComp, float UnmitigatedDamage, float MitigatedDamage)
{
	ReceivedDamage.Broadcast(OtherComp, UnmitigatedDamage, MitigatedDamage);
}
