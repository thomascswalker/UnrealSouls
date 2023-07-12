// Fill out your copyright notice in the Description page of Project Settings.

#include "Entities/EntitySpawn.h"
#include "AIController.h"

// Sets default values
AEntitySpawn::AEntitySpawn()
{
    // Set this actor to call Tick() every frame.  You can turn this off to improve performance if you don't need it.
    PrimaryActorTick.bCanEverTick = true;
}

void AEntitySpawn::OnConstruction(const FTransform& Transform)
{
    Super::OnConstruction(Transform);

    CharacterTable = LoadObject<UDataTable>(this, TEXT("/Game/Characters/DT_EntityTable.DT_EntityTable"));
    if (CharacterTable)
    {
        if (CharacterRow == "")
        {
            return;
        }
        FCharacterInfo* CharacterInfoPtr = CharacterTable->FindRow<FCharacterInfo>(CharacterRow, TEXT(""));
        if (CharacterInfoPtr)
        {
            CharacterInfo = *CharacterInfoPtr;
        }
        else
        {
            UE_LOG(LogTemp, Error, TEXT("Failed to find character %s in Characters table."), *CharacterRow.ToString());
        }
    }
    else
    {
        UE_LOG(LogTemp, Error, TEXT("Failed to load enemy data table."));
    }
}

void AEntitySpawn::OnSpawn_Implementation()
{
    FTransform SpawnTransform = GetActorTransform();
    if (Entity != nullptr)
    {
        return;
    }
    else
    {
        // Defer spawning to allow setting of initial parameters
        Entity = GetWorld()->SpawnActorDeferred<AUnrealSoulsCharacter>(BaseClass, SpawnTransform, this);
        UE_LOG(LogTemp, Display, TEXT("Spawned %s."), *CharacterInfo.Name.ToString())
    }

    if (Entity == nullptr)
    {
        UE_LOG(LogTemp, Error, TEXT("Unable to spawn entity."))
        return;
    }
    else
    {
        Entity->SetCharacterInfo(CharacterInfo);
        Entity->Died.AddUniqueDynamic(this, &AEntitySpawn::OnEntityDeath);

        // Finish spawning
        Entity->FinishSpawning(SpawnTransform);
        UE_LOG(LogTemp, Display, TEXT("Spawned %s."), *CharacterInfo.Name.ToString())
    }
}

void AEntitySpawn::OnEntityDeath()
{
    Entity = nullptr;
}

TArray<FName> AEntitySpawn::GetEntityNames()
{
    if (CharacterTable)
    {
        return CharacterTable->GetRowNames();
    }
    else
    {
        return TArray<FName>();
    }
}
