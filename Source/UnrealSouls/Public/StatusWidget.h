// Fill out your copyright notice in the Description page of Project Settings.

#pragma once

#include "CoreMinimal.h"
#include "Blueprint/UserWidget.h"
#include "StatusComponent.h"

#include "StatusWidget.generated.h"

/**
 * 
 */
UCLASS()
class UNREALSOULS_API UStatusWidget : public UUserWidget
{
	GENERATED_BODY()

public:
	UPROPERTY(EditAnywhere, BlueprintReadOnly)
	UStatusComponent* HealthComponent;
};
