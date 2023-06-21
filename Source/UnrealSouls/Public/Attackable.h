// Fill out your copyright notice in the Description page of Project Settings.

#pragma once

#include "Abilities/CharacterAbilitySystemComponent.h"
#include "Components/SkeletalMeshComponent.h"
#include "CoreMinimal.h"
#include "StatusComponent.h"
#include "UObject/Interface.h"

#include "Attackable.generated.h"

// This class does not need to be modified.
UINTERFACE(BlueprintType, MinimalAPI, meta = (CannotImplementInterfaceInBlueprint))
class UAttackable : public UInterface
{
	GENERATED_BODY()
};

class UNREALSOULS_API IAttackable
{
	GENERATED_BODY()
};
