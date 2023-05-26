// Fill out your copyright notice in the Description page of Project Settings.

#pragma once

#include "CoreMinimal.h"
#include "Kismet/BlueprintFunctionLibrary.h"
#include "../UnrealSoulsPlayerController.h"
#include "Kismet/GameplayStatics.h"

#include "PlayerFunctionLibrary.generated.h"

/**
 *
 */
UCLASS()
class UNREALSOULS_API UPlayerFunctionLibrary : public UBlueprintFunctionLibrary
{
	GENERATED_BODY()

public:
	UFUNCTION(BlueprintCallable, meta = (HidePin = "Context", DefaultToSelf = "Context"))
	static AUnrealSoulsPlayerController* GetPlayerController(UObject* Context)
	{
		UWorld* World = Context->GetWorld();
		APlayerController* Controller = UGameplayStatics::GetPlayerController(World, 0);
		return Cast<AUnrealSoulsPlayerController>(Controller);
	}

	UFUNCTION(BlueprintCallable, meta = (HidePin = "Context", DefaultToSelf = "Context"))
	static AUnrealSoulsPlayerCharacter* GetPlayerCharacter(UObject* Context)
	{
		AUnrealSoulsPlayerController* Controller = GetPlayerController(Context);
		return Controller->PlayerCharacter;
	}
};
