// Fill out your copyright notice in the Description page of Project Settings.

#include "Characters/CharacterSpawn.h"
#include "AIController.h"
#include "Components/BillboardComponent.h"
#include "JsonObjectConverter.h"

ACharacterSpawn::ACharacterSpawn()
{
    // Set this actor to call Tick() every frame.  You can turn this off to improve performance if you don't need it.
    PrimaryActorTick.bCanEverTick = true;
    BillboardComponent = CreateDefaultSubobject<UBillboardComponent>(TEXT("Billboard"));
    if (BillboardComponent)
    {
        BillboardComponent->SetupAttachment(RootComponent);
    }
}

void ACharacterSpawn::BeginPlay()
{
    Super::BeginPlay();
    Spawn();
}

void ACharacterSpawn::OnConstruction(const FTransform& Transform)
{
    Super::OnConstruction(Transform);

    // Load the Character DataTable
    CharacterTable = LoadObject<UDataTable>(this, TEXT("/Game/Characters/DT_CharacterTable.DT_CharacterTable"));
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

void ACharacterSpawn::Spawn()
{
    // If the Character has already been spawned, return
    if (Character != nullptr)
    {
        return;
    }

    // Defer spawning to allow setting of initial parameters
    FTransform SpawnTransform = GetActorTransform();
    Character = GetWorld()->SpawnActorDeferred<AUnrealSoulsCharacter>(BaseClass, SpawnTransform, this);
    if (Character == nullptr)
    {
        UE_LOG(LogTemp, Error, TEXT("Unable to spawn Character."))
        return;
    }

    // Set CharacterInfo of the spawned Character based on the CharacterInfo found in the CharacterTable DataTable.
    Character->SetCharacterInfo(CharacterInfo);

    // When the character dies, remove the reference to the spawned character
    Character->Died.AddUniqueDynamic(this, &ACharacterSpawn::OnCharacterDeath);

    // Finish spawning
    Character->FinishSpawning(SpawnTransform);
    UE_LOG(LogTemp, Display, TEXT("Spawned %s."), *CharacterInfo.Name.ToString())
}

void ACharacterSpawn::OnCharacterDeath()
{
    Character = nullptr;
}

TArray<FName> ACharacterSpawn::GetCharacterNames()
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
