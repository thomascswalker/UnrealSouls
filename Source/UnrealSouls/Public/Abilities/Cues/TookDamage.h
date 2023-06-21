// Fill out your copyright notice in the Description page of Project Settings.

#pragma once

#include "CoreMinimal.h"
#include "GameplayCueNotify_Actor.h"
#include "TookDamage.generated.h"

/**
 * 
 */
UCLASS()
class UNREALSOULS_API ATookDamage : public AGameplayCueNotify_Actor
{
	GENERATED_BODY()
	
public:
    UPROPERTY(BlueprintReadOnly, EditDefaultsOnly)
    UAnimMontage* MontageToPlay;
};
