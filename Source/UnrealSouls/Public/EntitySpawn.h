// Fill out your copyright notice in the Description page of Project Settings.

#pragma once

#include "CoreMinimal.h"
#include "GameFramework/Actor.h"
#include "UnrealSoulsCharacter.h"
#include "StaticEntity.h"

#include "EntitySpawn.generated.h"

UCLASS()
class UNREALSOULS_API AEntitySpawn : public AActor
{
	GENERATED_BODY()
	
public:	

	UPROPERTY(EditAnywhere, BlueprintReadOnly, meta = (ExposeOnSpawn = true))
	TSubclassOf<AUnrealSoulsCharacter> CharacterClass;

	UPROPERTY(VisibleAnywhere, BlueprintReadOnly)
	AUnrealSoulsCharacter* Entity;

	// Sets default values for this actor's properties
	AEntitySpawn();

protected:
	virtual void BeginPlay() override;

public:
	virtual void OnConstruction(const FTransform& Transform) override;
	virtual void Tick(float DeltaTime) override;

	UFUNCTION(BlueprintCallable)
	void Spawn();

	UFUNCTION()
	void OnEntityDeath();
};
