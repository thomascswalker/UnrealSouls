// Fill out your copyright notice in the Description page of Project Settings.

#include "StatusComponent.h"
#include "Kismet/GameplayStatics.h"

// Sets default values for this component's properties
UStatusComponent::UStatusComponent()
{
	// Set this component to be initialized when the game starts, and to be ticked every frame.  You can turn these features
	// off to improve performance if you don't need them.
	PrimaryComponentTick.bCanEverTick = true;
}

// Called when the game starts
void UStatusComponent::BeginPlay()
{
	Super::BeginPlay();
}

// Called every frame
void UStatusComponent::TickComponent(float DeltaTime, ELevelTick TickType, FActorComponentTickFunction* ThisTickFunction)
{
	Super::TickComponent(DeltaTime, TickType, ThisTickFunction);

	float CurrentTime = UGameplayStatics::GetRealTimeSeconds(GetWorld());

	bool bCanReplenish = ReplenishRate > 0.0f && Value < MaxValue;
	bool bPastDelayThreshold = CurrentTime - LastDepletion > ReplenishDelay;
	if (bCanReplenish && bPastDelayThreshold && bAutoReplenish)
	{
		float ReplenishAmount = DeltaTime * ReplenishRate;
		Replenish(ReplenishAmount);
	}

	if (DepleteRate > 0.0f && Value > 0.0f && bAutoDeplete)
	{
		float DepleteAmount = DeltaTime * DepleteRate;
		Deplete(DepleteAmount);
	}
}

void UStatusComponent::Replenish(float Amount)
{
	Value = FMath::Clamp(Value + Amount, 0.0f, MaxValue);
}

void UStatusComponent::Deplete(float Amount)
{
	LastDepletion = UGameplayStatics::GetRealTimeSeconds(GetWorld());
	Value = FMath::Clamp(Value - Amount, 0.0f, MaxValue);
	if (Value == 0.0f)
	{
		Depleted.Broadcast();
	}
}
