// Fill out your copyright notice in the Description page of Project Settings.


#include "UnrealSoulsAssetManager.h"
#include "AbilitySystemGlobals.h"

void UUnrealSoulsAssetManager::StartInitialLoading()
{
	Super::StartInitialLoading();
	UAbilitySystemGlobals::Get().InitGlobalData();
}
