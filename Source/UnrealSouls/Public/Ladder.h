// Fill out your copyright notice in the Description page of Project Settings.

#pragma once

#include "CoreMinimal.h"
#include "StaticEntity.h"
#include "PlayerFunctionLibrary.h"

#include "Ladder.generated.h"

UCLASS()
class UNREALSOULS_API ALadder : public AStaticEntity
{
	GENERATED_BODY()

public:
	UPROPERTY(BlueprintReadOnly, VisibleAnywhere, Category = "Components")
	TObjectPtr<UBoxComponent> LadderTopEnter;

	UPROPERTY(BlueprintReadOnly, VisibleAnywhere, Category = "Components")
	TObjectPtr<UBoxComponent> LadderTopExit;

	UPROPERTY(BlueprintReadOnly, VisibleAnywhere, Category = "Components")
	TObjectPtr<USceneComponent> LadderTopExitLocation;

	UPROPERTY(BlueprintReadOnly, VisibleAnywhere, Category = "Components")
	TObjectPtr<UBoxComponent> LadderBottomEnter;

	UPROPERTY(BlueprintReadOnly, VisibleAnywhere, Category = "Components")
	TObjectPtr<UBoxComponent> LadderBottomExit;

	UPROPERTY(BlueprintReadOnly, VisibleAnywhere, Category = "Components")
	TObjectPtr<USceneComponent> LadderBottomExitLocation;

	ALadder();

	void Interact_Implementation(AActor* OtherActor);
	FRotator GetActorLookAtRotation(AActor* OtherActor);
};
