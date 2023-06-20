// Fill out your copyright notice in the Description page of Project Settings.

#include "Abilities/Effects/TakeDamage.h"
#include "Abilities/CharacterAttributeSet.h"

UTakeDamage::UTakeDamage()
{
	// Execute instantly
	DurationPolicy = EGameplayEffectDurationType::Instant;

	// Create the damage modifier
	FGameplayModifierInfo DamageModifier;
	DamageModifier.Attribute = UCharacterAttributeSet::GetHealthAttribute();
	
	// Associate the attack power attribute of the source actor
	FAttributeBasedFloat AttackPowerAttributeFloat;
	FGameplayEffectAttributeCaptureDefinition Capture;
	Capture.AttributeSource = EGameplayEffectAttributeCaptureSource::Source;
	//Capture.AttributeToCapture = UCharacterAttributeSet::GetAttackPowerAttribute();
	AttackPowerAttributeFloat.BackingAttribute = Capture;

	// Set the modifier type to use modifier magnitude
	FGameplayEffectModifierMagnitude Magnitude(AttackPowerAttributeFloat);
	DamageModifier.ModifierOp = EGameplayModOp::Additive;
	DamageModifier.ModifierMagnitude = Magnitude;

	// Set ignore tags
	DamageModifier.TargetTags.IgnoreTags.AddTag(FGameplayTag::RequestGameplayTag("Character.State.Invulnerable"));

	// Add the tag to the modifier list
	Modifiers.Add(DamageModifier);

	// Grant the Invulnerable tag to the target actor
	InheritableOwnedTagsContainer.AddTag(FGameplayTag::RequestGameplayTag("Character.State.Invulnerable"));
}
