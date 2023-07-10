// Fill out your copyright notice in the Description page of Project Settings.

#include "Components/ClimbingComponent.h"

// Sets default values for this component's properties
UClimbingComponent::UClimbingComponent()
{
	// Set this component to be initialized when the game starts, and to be ticked every frame.  You can turn these features
	// off to improve performance if you don't need them.
	PrimaryComponentTick.bCanEverTick = true;
}

// Called when the game starts
void UClimbingComponent::BeginPlay()
{
	Super::BeginPlay();

	// ...
}

// Called every frame
void UClimbingComponent::TickComponent(float DeltaTime, ELevelTick TickType, FActorComponentTickFunction* ThisTickFunction)
{
	Super::TickComponent(DeltaTime, TickType, ThisTickFunction);

	// ...
}

void UClimbingComponent::AddMovementInput_Implementation(float InputValue) {}

void UClimbingComponent::OnStartClimb_Implementation(ALadder* InLadderRef) {}
void UClimbingComponent::OnEndClimb_Implementation() {}