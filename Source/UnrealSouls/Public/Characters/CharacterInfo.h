// Fill out your copyright notice in the Description page of Project Settings.

#pragma once

#include "CoreMinimal.h"
#include "Engine/DataTable.h"
#include "UnrealSoulsCharacter.h"
#include "Abilities/CharacterAttributeSet.h"

#include "CharacterInfo.generated.h"

USTRUCT(BlueprintType, Blueprintable)
struct FCharacterInfo : public FTableRowBase
{
public:
	GENERATED_BODY()

	UPROPERTY(EditAnywhere, BlueprintReadOnly)
	TSubclassOf<AUnrealSoulsCharacter> Class;

	UPROPERTY(EditAnywhere, BlueprintReadOnly)
	FName Name;

	UPROPERTY(EditAnywhere, BlueprintReadOnly)
	int32 Health;

	UPROPERTY(EditAnywhere, BlueprintReadOnly)
	int32 Damage;

	UPROPERTY(EditAnywhere, BlueprintReadOnly)
	int32 Souls;

	FCharacterInfo()
	{
		Name = "Unknown";
		Health = 100;
		Damage = 1;
		Souls = 0;
	}
};