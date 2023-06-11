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
}

void AEntitySpawn::Tick(float DeltaTime)
{
	Super::Tick(DeltaTime);
}

void AEntitySpawn::Spawn()
{
	if (Entity != nullptr)
	{
		return;
	}
	FActorSpawnParameters SpawnParams;
	SpawnParams.Owner = this;
	SpawnParams.SpawnCollisionHandlingOverride = ESpawnActorCollisionHandlingMethod::AdjustIfPossibleButAlwaysSpawn;
	
	Entity = GetWorld()->SpawnActor<AUnrealSoulsCharacter>(CharacterClass, GetActorTransform(), SpawnParams);
	Entity->CombatComponent->Death.AddUniqueDynamic(this, &AEntitySpawn::OnEntityDeath);
}

void AEntitySpawn::OnEntityDeath()
{
	Entity = nullptr;
}
