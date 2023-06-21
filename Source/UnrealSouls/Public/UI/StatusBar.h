// Fill out your copyright notice in the Description page of Project Settings.

#pragma once

#include "Blueprint/UserWidget.h"
#include "Components/ProgressBar.h"
#include "Components/TextBlock.h"
#include "CoreMinimal.h"

#include "StatusBar.generated.h"

/**
 *
 */
UCLASS()
class UNREALSOULS_API UStatusBar : public UUserWidget
{
    GENERATED_BODY()

public:
    void OnInitialized();

    UPROPERTY(BlueprintReadWrite, meta = (BindWidget))
    UProgressBar* StatusBar;

    UPROPERTY(BlueprintReadWrite, meta = (BindWidget))
    UTextBlock* TextBlock;

    FTimerHandle TextTimerHandle;

    UFUNCTION(BlueprintCallable)
    void SetPercent(float InPercent);

    UFUNCTION(BlueprintCallable)
    void SetText(FText InText);

    UFUNCTION(BlueprintCallable)
    void ShowText(float Duration);

    UFUNCTION(BlueprintCallable)
    void HideText();
};
