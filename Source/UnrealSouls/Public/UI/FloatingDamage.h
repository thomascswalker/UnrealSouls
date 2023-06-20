// Fill out your copyright notice in the Description page of Project Settings.

#pragma once

#include "CoreMinimal.h"
#include "Blueprint/UserWidget.h"
#include "Components/TextBlock.h"

#include "FloatingDamage.generated.h"

/**
 * 
 */
UCLASS()
class UNREALSOULS_API UFloatingDamage : public UUserWidget
{
	GENERATED_BODY()
public:
    UPROPERTY(BlueprintReadWrite, meta = (BindWidget))
    UTextBlock* TextBlock;

    UFUNCTION(BlueprintCallable)
    void SetText(FText InText);
};
