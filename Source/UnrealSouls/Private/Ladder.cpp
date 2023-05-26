// Fill out your copyright notice in the Description page of Project Settings.

#include "Ladder.h"
#include "Kismet/KismetSystemLibrary.h"
#include "Kismet/KismetMathLibrary.h"

ALadder::ALadder()
{
	LadderTopEnter = CreateDefaultSubobject<UBoxComponent>(TEXT("LadderTopEnter"));
	LadderTopEnter->AttachToComponent(Mesh, FAttachmentTransformRules::KeepRelativeTransform);

	LadderTopExit = CreateDefaultSubobject<UBoxComponent>(TEXT("LadderTopExit"));
	LadderTopExit->AttachToComponent(Mesh, FAttachmentTransformRules::KeepRelativeTransform);

	LadderBottomEnter = CreateDefaultSubobject<UBoxComponent>(TEXT("LadderBottomEnter"));
	LadderBottomEnter->AttachToComponent(Mesh, FAttachmentTransformRules::KeepRelativeTransform);

	LadderBottomExit = CreateDefaultSubobject<UBoxComponent>(TEXT("LadderBottomExit"));
	LadderBottomExit->AttachToComponent(Mesh, FAttachmentTransformRules::KeepRelativeTransform);

	LadderTopExitLocation = CreateDefaultSubobject<USceneComponent>(TEXT("LadderTopExitLocation"));
	LadderTopExitLocation->AttachToComponent(Mesh, FAttachmentTransformRules::KeepRelativeTransform);

	LadderBottomExitLocation = CreateDefaultSubobject<USceneComponent>(TEXT("LadderBottomExitLocation"));
	LadderBottomExitLocation->AttachToComponent(Mesh, FAttachmentTransformRules::KeepRelativeTransform);
}

void ALadder::Interact_Implementation(AActor* OtherActor)
{
	// Only characters can climb a ladder
	AUnrealSoulsCharacter* Character = Cast<AUnrealSoulsCharacter>(OtherActor);
	if (!Character)
	{
		UE_LOG(LogTemp, Error, L"%s: %s cannot climb ladders.", *GetName(), *OtherActor->GetName());
		return;
	}

	Character->CurrentLadder = this;

	FVector TransitionLocation;
	UAnimMontage* TransitionMontage;

	// Are we entering through the top or the bottom of the ladder?
	const bool bBottom = LadderBottomEnter->IsOverlappingActor(Character);
	if (bBottom)
	{
		TransitionLocation = LadderBottomEnter->GetComponentLocation();
		TransitionMontage = Character->ClimbStartBottomMontage;
	}
	else
	{
		TransitionLocation = LadderTopEnter->GetComponentLocation();
		TransitionMontage = Character->ClimbStartTopMontage;
	}

	Character->StartClimb(TransitionLocation, GetActorLookAtRotation(Character), TransitionMontage);
}

FRotator ALadder::GetActorLookAtRotation(AActor* OtherActor)
{
	FVector ActorLocation2D = OtherActor->GetActorLocation();
	ActorLocation2D.Z = 0.0f;

	FVector LadderLocation2D = GetActorLocation();
	LadderLocation2D.Z = 0.0f;

	FRotator TransitionRotation = UKismetMathLibrary::FindLookAtRotation(ActorLocation2D, LadderLocation2D);

	return TransitionRotation;
}
