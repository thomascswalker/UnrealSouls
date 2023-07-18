// Fill out your copyright notice in the Description page of Project Settings.

#include "Characters/CharacterSubsystem.h"
#include "Characters/CharacterSpawn.h"
#include "Kismet/GameplayStatics.h"

void UCharacterSubsystem::Initialize(FSubsystemCollectionBase& Collection) {}

void UCharacterSubsystem::Deinitialize() {}

void UCharacterSubsystem::RespawnAllEntities()
{
	TArray<AActor*> FoundActors;
	UGameplayStatics::GetAllActorsOfClass(GetWorld(), ACharacterSpawn::StaticClass(), FoundActors);

	for (AActor* Actor : FoundActors)
	{
		ACharacterSpawn* CharacterSpawn = Cast<ACharacterSpawn>(Actor);
		CharacterSpawn->Spawn();
	}
}
