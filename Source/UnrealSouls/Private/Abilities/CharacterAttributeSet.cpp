// Fill out your copyright notice in the Description page of Project Settings.

#include "Abilities/CharacterAttributeSet.h"
#include "Abilities/CharacterAbilitySystemComponent.h"
#include "GameplayEffect.h"
#include "GameplayEffectExtension.h"
#include "Net/UnrealNetwork.h"
#include "UnrealSoulsCharacter.h"

bool UCharacterAttributeSet::PreGameplayEffectExecute(FGameplayEffectModCallbackData& Data)
{
    Super::PreGameplayEffectExecute(Data);

    if (Data.EvaluatedData.Attribute == GetHealthAttribute())
    {
        PreHealthChanged = GetHealth();
    }

    return true;
}

void UCharacterAttributeSet::PostGameplayEffectExecute(const FGameplayEffectModCallbackData& Data)
{
    Super::PostGameplayEffectExecute(Data);

    if (Data.EvaluatedData.Attribute == GetHealthAttribute())
    {
        // Update the character's health, clamping it between 0 and the max health
        AUnrealSoulsCharacter* Character = Cast<AUnrealSoulsCharacter>(Data.Target.GetOwnerActor());
        SetHealth(FMath::Clamp(GetHealth(), 0.0f, BaseHealth));

        // Update the character's health bar with the damage value
        float DamageTaken = PreHealthChanged - GetHealth();
        Character->UpdateHealthBar(DamageTaken);

        // If health is <=0, kill the character 
        if (GetHealth() <= 0.0f)
        {
            Character->Die();
        }
    }
}
