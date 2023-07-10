// Fill out your copyright notice in the Description page of Project Settings.

#include "Entities/EntitySubsystem.h"
#include "Entities/EntitySpawn.h"
#include "Kismet/GameplayStatics.h"

void UEntitySubsystem::Initialize(FSubsystemCollectionBase& Collection) {}

void UEntitySubsystem::Deinitialize() {}

void UEntitySubsystem::RespawnAllEntities()
{
	TArray<AActor*> FoundActors;
	UGameplayStatics::GetAllActorsOfClass(GetWorld(), AEntitySpawn::StaticClass(), FoundActors);

	for (AActor* Actor : FoundActors)
	{
		AEntitySpawn* EntitySpawn = Cast<AEntitySpawn>(Actor);
		EntitySpawn->Spawn();
	}
}
