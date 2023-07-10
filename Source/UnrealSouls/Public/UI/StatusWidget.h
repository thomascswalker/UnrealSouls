// Fill out your copyright notice in the Description page of Project Settings.

#pragma once

#include "Abilities/CharacterAttributeSet.h"
#include "Blueprint/UserWidget.h"
#include "CoreMinimal.h"

#include "StatusWidget.generated.h"

/**
 *
 */
UCLASS()
class UNREALSOULS_API UStatusWidget : public UUserWidget
{
    GENERATED_BODY()

public:
    UPROPERTY(BlueprintReadOnly, VisibleAnywhere)
    UCharacterAttributeSet* Attributes;
};
