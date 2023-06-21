// Fill out your copyright notice in the Description page of Project Settings.

#include "Abilities/Effects/TakeDamage.h"
#include "Abilities/CharacterAttributeSet.h"

UTakeDamage::UTakeDamage()
{
	// Execute instantly
	DurationPolicy = EGameplayEffectDurationType::Instant;

	// Create the damage modifier
	FGameplayModifierInfo Modifier;
	Modifier.Attribute = UCharacterAttributeSet::GetHealthAttribute();
	
	// Associate the attack power attribute of the source actor
	FAttributeBasedFloat AttackPowerAttributeFloat;
	FGameplayEffectAttributeCaptureDefinition Capture;
	Capture.AttributeSource = EGameplayEffectAttributeCaptureSource::Source;
	Capture.AttributeToCapture = UCharacterAttributeSet::GetAttackPowerAttribute();
	AttackPowerAttributeFloat.BackingAttribute = Capture;
    AttackPowerAttributeFloat.Coefficient = FScalableFloat(-1.0f);

	// Set the modifier type to use modifier magnitude
	FGameplayEffectModifierMagnitude ModifierMagnitude(AttackPowerAttributeFloat);
	Modifier.ModifierOp = EGameplayModOp::Additive;
	Modifier.ModifierMagnitude = ModifierMagnitude;

	//// Set ignore tags
	//Modifier.TargetTags.IgnoreTags.AddTag(FGameplayTag::RequestGameplayTag("Character.State.Invulnerable"));

	// Add the tag to the modifier list
	Modifiers.Add(Modifier);

	//// Grant the Invulnerable tag to the target actor
	//InheritableOwnedTagsContainer.AddTag(FGameplayTag::RequestGameplayTag("Character.State.Invulnerable"));
}
