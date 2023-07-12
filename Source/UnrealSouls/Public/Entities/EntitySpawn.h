// Fill out your copyright notice in the Description page of Project Settings.

#pragma once

#include "Characters/CharacterInfo.h"
#include "Characters/UnrealSoulsCharacter.h"
#include "CoreMinimal.h"
#include "Engine/DataTable.h"
#include "GameFramework/Actor.h"
#include "StaticEntity.h"

#include "EntitySpawn.generated.h"

UCLASS()
class UNREALSOULS_API AEntitySpawn : public AActor
{
    GENERATED_BODY()

    UPROPERTY()
    UDataTable* CharacterTable;

public:
    UPROPERTY(EditAnywhere, BlueprintReadWrite, meta = (DisplayName = "Character", GetOptions = "GetEntityNames"))
    FName CharacterRow;

    UPROPERTY(EditAnywhere, BlueprintReadWrite)
    TSubclassOf<AUnrealSoulsCharacter> BaseClass;

    UPROPERTY(BlueprintReadOnly)
    FCharacterInfo CharacterInfo;

    UPROPERTY(BlueprintReadOnly)
    AUnrealSoulsCharacter* Entity;

    // Sets default values for this actor's properties
    AEntitySpawn();

public:
    virtual void OnConstruction(const FTransform& Transform) override;

    UFUNCTION(BlueprintCallable, BlueprintNativeEvent)
    void OnSpawn();

    UFUNCTION()
    void OnEntityDeath();

    UFUNCTION()
    TArray<FName> GetEntityNames();
};
