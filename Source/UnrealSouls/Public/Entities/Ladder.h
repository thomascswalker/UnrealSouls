// Fill out your copyright notice in the Description page of Project Settings.

#pragma once

#include "CoreMinimal.h"
#include "StaticEntity.h"
#include "LadderStates.h"

#include "Ladder.generated.h"

UCLASS()
class UNREALSOULS_API ALadder : public AStaticEntity
{
	GENERATED_BODY()

public:
	ALadder();

	void Interact_Implementation(AActor* OtherActor);
};
