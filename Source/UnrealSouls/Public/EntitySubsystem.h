// Fill out your copyright notice in the Description page of Project Settings.

#pragma once

#include "CoreMinimal.h"
#include "Subsystems/WorldSubsystem.h"

#include "EntitySubsystem.generated.h"

/**
 * 
 */
UCLASS()
class UNREALSOULS_API UEntitySubsystem : public UGameInstanceSubsystem
{
	GENERATED_BODY()

    // Begin USubsystem
	virtual void Initialize(FSubsystemCollectionBase& Collection) override;
	virtual void Deinitialize() override;
	// End USubsystem

public:
	UFUNCTION(BlueprintCallable)
	void RespawnAllEntities();
	
};
