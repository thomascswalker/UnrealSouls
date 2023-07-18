// Fill out your copyright notice in the Description page of Project Settings.

#pragma once

#include "Characters/CharacterInfo.h"
#include "Characters/UnrealSoulsCharacter.h"
#include "Components/SceneComponent.h"
#include "CoreMinimal.h"
#include "Engine/DataTable.h"
#include "Entities/StaticEntity.h"
#include "GameFramework/Actor.h"

#include "CharacterSpawn.generated.h"

UCLASS()
class UNREALSOULS_API ACharacterSpawn : public AActor
{
    GENERATED_BODY()

public:
    UPROPERTY(BlueprintReadOnly, VisibleAnywhere)
    UBillboardComponent* BillboardComponent;

    UPROPERTY(EditAnywhere, BlueprintReadWrite)
    bool bCanRespawn;

    UPROPERTY(EditAnywhere, BlueprintReadWrite)
    UDataTable* CharacterTable;

    UPROPERTY(EditAnywhere, BlueprintReadWrite, meta = (DisplayName = "Character", GetOptions = "GetCharacterNames"))
    FName CharacterRow;

    UPROPERTY(EditAnywhere, BlueprintReadWrite)
    TSubclassOf<AUnrealSoulsCharacter> BaseClass;

    UPROPERTY(BlueprintReadOnly)
    FCharacterInfo CharacterInfo;

    UPROPERTY(BlueprintReadOnly)
    AUnrealSoulsCharacter* Character;

    // Sets default values for this actor's properties
    ACharacterSpawn();

public:
    virtual void BeginPlay() override;
    virtual void OnConstruction(const FTransform& Transform) override;

    UFUNCTION(BlueprintCallable)
    void Spawn();

    UFUNCTION()
    void OnCharacterDeath();

    /* Meta function for allowing a dropdown list to selec the CharacterRow. */
    UFUNCTION()
    TArray<FName> GetCharacterNames();
};
