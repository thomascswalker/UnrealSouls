// Fill out your copyright notice in the Description page of Project Settings.

#pragma once

#include "CoreMinimal.h"
#include "Engine/AssetManager.h"
#include "UnrealSoulsAssetManager.generated.h"

/**
 * 
 */
UCLASS()
class UNREALSOULS_API UUnrealSoulsAssetManager : public UAssetManager
{
	GENERATED_BODY()

public:
	virtual void StartInitialLoading() override;
	
};
