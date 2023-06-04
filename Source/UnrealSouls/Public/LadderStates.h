// Fill out your copyright notice in the Description page of Project Settings.

#pragma once

#include "CoreMinimal.h"

UENUM(BlueprintType)
enum class EEnterLadderTransition : uint8
{
    ClimbUp,
    ClimbDown
};

UENUM(BlueprintType)
enum class EExitLadderTransition : uint8
{
	ClimbUp,
	ClimbDown
};

UENUM(BlueprintType)
enum class ELadderMovement : uint8
{
	None,
	Idle,
	UpLeft,
	UpRight,
	DownLeft,
	DownRight
};