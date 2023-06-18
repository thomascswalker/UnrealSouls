// Fill out your copyright notice in the Description page of Project Settings.

#include "EntitySpawn.h"

// Sets default values
AEntitySpawn::AEntitySpawn()
{
	// Set this actor to call Tick() every frame.  You can turn this off to improve performance if you don't need it.
	PrimaryActorTick.bCanEverTick = true;
}

void AEntitySpawn::BeginPlay()
{
	Super::BeginPlay();
}

void AEntitySpawn::OnConstruction(const FTransform& Transform)
{
	Super::OnConstruction(Transform);

	CharacterTable = LoadObject<UDataTable>(this, TEXT("/Game/Characters/DT_Characters.DT_Characters"));
	if (CharacterTable)
	{
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

void AEntitySpawn::Tick(float DeltaTime)
{
	Super::Tick(DeltaTime);
}

void AEntitySpawn::Spawn()
{
	if (Entity != nullptr)
	{
		UE_LOG(LogTemp, Warning, TEXT("Unable to spawn entity as it already exists."));
		return;
	}

	FActorSpawnParameters SpawnParams;
	SpawnParams.Owner = this;
	SpawnParams.SpawnCollisionHandlingOverride = ESpawnActorCollisionHandlingMethod::AdjustIfPossibleButAlwaysSpawn;

	Entity = GetWorld()->SpawnActor<AUnrealSoulsCharacter>(CharacterInfo.Class, GetActorTransform(), SpawnParams);
	if (Entity == nullptr)
	{
		UE_LOG(LogTemp, Error, TEXT("Unable to spawn entity."));
		return;
	}
	else
	{
		UE_LOG(LogTemp, Display, TEXT("Spawned %s."), *CharacterInfo.Name.ToString());

		// Set initial stats
		Entity->AttributeSet->InitHealth(CharacterInfo.Health);
		Entity->AttributeSet->InitMaxHealth(CharacterInfo.Health);
		Entity->AttributeSet->InitDamage(CharacterInfo.Damage);
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
