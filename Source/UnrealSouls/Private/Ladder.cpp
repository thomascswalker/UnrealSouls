// Fill out your copyright notice in the Description page of Project Settings.

#include "Ladder.h"
#include "Kismet/KismetSystemLibrary.h"
#include "Kismet/KismetMathLibrary.h"


/*

-12.5, 0, 400 # Climb up end / Climb down start
-12.5, 0, 0 # Climb up start / climb down end

-30 0 50 # Climb bottom idle
-30 0 250 # Climb top idle


*/


ALadder::ALadder()
{

}

void ALadder::Interact_Implementation(AActor* OtherActor)
{

}
