// Fill out your copyright notice in the Description page of Project Settings.

#pragma once

#include "CoreMinimal.h"

#include "Characters/UnrealSoulsCharacter.h"
#include "Ladder.h"
#include "LadderStates.h"

#include "LadderData.generated.h"

USTRUCT(BlueprintType, Blueprintable)
struct FLadderData
{
public:
    GENERATED_BODY()

    UPROPERTY(BlueprintReadWrite, EditAnywhere)
    EEnterLadderTransition EnterTransition;
    UPROPERTY(BlueprintReadWrite, EditAnywhere)
    EExitLadderTransition ExitTransition;
    UPROPERTY(BlueprintReadWrite, EditAnywhere)
    ELadderMovement Movement;

    UPROPERTY(BlueprintReadWrite, EditAnywhere)
    bool bIsAnimationPlaying;
    UPROPERTY(BlueprintReadWrite, EditAnywhere)
    bool bIsTransitioning;

    UPROPERTY(BlueprintReadWrite, EditAnywhere)
    float AxisValue;

    UPROPERTY(BlueprintReadWrite, EditAnywhere)
    ALadder* LadderRef;
    UPROPERTY(BlueprintReadWrite, EditAnywhere)
    AUnrealSoulsCharacter* CharacterRef;

    FLadderData()
    {
        EnterTransition = EEnterLadderTransition::ClimbUp;
        ExitTransition = EExitLadderTransition::ClimbUp;
        Movement = ELadderMovement::None;

        bIsAnimationPlaying = false;
        bIsTransitioning = false;

        AxisValue = 0.0f;

        LadderRef = nullptr;
        CharacterRef = nullptr;
    }
};