// Fill out your copyright notice in the Description page of Project Settings.


#include "UI/StatusBar.h"

void UStatusBar::OnInitialized()
{
    HideText();
}

void UStatusBar::SetPercent(float InPercent)
{
    StatusBar->SetPercent(InPercent);
}

void UStatusBar::SetText(FText InText)
{
    TextBlock->SetText(InText);
}

void UStatusBar::ShowText(float Duration)
{
    TextBlock->SetVisibility(ESlateVisibility::HitTestInvisible);
    GetWorld()->GetTimerManager().SetTimer(TextTimerHandle, this, &UStatusBar::HideText, Duration);
}

void UStatusBar::HideText()
{
    TextBlock->SetVisibility(ESlateVisibility::Hidden);
    GetWorld()->GetTimerManager().ClearTimer(TextTimerHandle);
}

