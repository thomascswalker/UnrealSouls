// Fill out your copyright notice in the Description page of Project Settings.

#pragma once

#include "CoreMinimal.h"
#include "Blueprint/UserWidget.h"
#include "Components/TextBlock.h"

#include "Prompt.generated.h"

UCLASS()
class UNREALSOULS_API UPrompt : public UUserWidget
{
	GENERATED_BODY()

public:
	UPROPERTY(BlueprintReadWrite, meta = (BindWidget))
    UTextBlock* TextBlock;

	void SetText(const FText& InText)
	{
        TextBlock->SetText(InText);
	}

	UFUNCTION(BlueprintCallable, BlueprintNativeEvent)
    void OnHide();
};
