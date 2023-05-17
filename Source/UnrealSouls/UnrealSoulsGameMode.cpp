// Copyright Epic Games, Inc. All Rights Reserved.

#include "UnrealSoulsGameMode.h"
#include "UnrealSoulsCharacter.h"
#include "UObject/ConstructorHelpers.h"

AUnrealSoulsGameMode::AUnrealSoulsGameMode()
{
	// set default pawn class to our Blueprinted character
	static ConstructorHelpers::FClassFinder<APawn> PlayerPawnBPClass(TEXT("/Game/ThirdPerson/Blueprints/BP_ThirdPersonCharacter"));
	if (PlayerPawnBPClass.Class != NULL)
	{
		DefaultPawnClass = PlayerPawnBPClass.Class;
	}
}
