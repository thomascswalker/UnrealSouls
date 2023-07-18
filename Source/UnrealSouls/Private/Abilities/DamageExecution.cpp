// Fill out your copyright notice in the Description page of Project Settings.

#include "Abilities/DamageExecution.h"
#include "Abilities/CharacterAbilitySystemComponent.h"
#include "Abilities/CharacterAttributeSet.h"
#include "GameplayEffectExecutionCalculation.h"

struct DamageStatics
{
    DECLARE_ATTRIBUTE_CAPTUREDEF(Health);
    DECLARE_ATTRIBUTE_CAPTUREDEF(AttackPower);

    DamageStatics()
    {
        // Capture the Target's Health attribute. Do not snapshot it, because we want to use the health value at the moment we apply the execution.
        DEFINE_ATTRIBUTE_CAPTUREDEF(UCharacterAttributeSet, Health, Target, false);

        // Capture the Source's AttackPower. We do want to snapshot this at the moment we create the GameplayEffectSpec that will execute the damage.
        DEFINE_ATTRIBUTE_CAPTUREDEF(UCharacterAttributeSet, AttackPower, Source, true);
    }
};

DamageStatics& Damage()
{
    static DamageStatics It;
    return It;
}

UDamageExecution::UDamageExecution()
{
    RelevantAttributesToCapture.Add(DamageStatics().HealthDef);
    RelevantAttributesToCapture.Add(DamageStatics().AttackPowerDef);
}

void UDamageExecution::Execute_Implementation(const FGameplayEffectCustomExecutionParameters& ExecutionParams, OUT FGameplayEffectCustomExecutionOutput& OutExecutionOutput) const
{
    // Capture the Target Health and Source Attack Power
    float Health = 0.0f;
    float AttackPower = 0.0f;
    ExecutionParams.AttemptCalculateCapturedAttributeBaseValue(Damage().HealthDef, Health);
    ExecutionParams.AttemptCalculateCapturedAttributeBaseValue(Damage().AttackPowerDef, AttackPower);

    // If Attack Power is above 0, we'll add an output modifier to lower the health of the Target
    if (AttackPower > 0.f)
    {
        OutExecutionOutput.AddOutputModifier(FGameplayModifierEvaluatedData(Damage().HealthProperty, EGameplayModOp::Additive, -AttackPower));
    }
}