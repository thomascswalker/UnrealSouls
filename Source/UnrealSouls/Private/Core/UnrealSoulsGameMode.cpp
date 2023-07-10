// Copyright Epic Games, Inc. All Rights Reserved.

#include "Core/UnrealSoulsGameMode.h"
#include "Characters/UnrealSoulsCharacter.h"

#include "UObject/ConstructorHelpers.h"

AUnrealSoulsGameMode::AUnrealSoulsGameMode()
{
	// set default pawn class to our Blueprinted character
	static ConstructorHelpers::FClassFinder<APawn> PlayerPawnBPClass(TEXT("/Game/Blueprints/Player/BP_UnrealSoulsPlayerCharacter"));
	if (PlayerPawnBPClass.Class != NULL)
	{
		DefaultPawnClass = PlayerPawnBPClass.Class;
	}

	static ConstructorHelpers::FClassFinder<APlayerController> PlayerControllerBPClass(TEXT("/Game/Blueprints/Player/BP_UnrealSoulsPlayerController"));
	if (PlayerControllerBPClass.Class != NULL)
	{
		PlayerControllerClass = PlayerControllerBPClass.Class;
	}
}
