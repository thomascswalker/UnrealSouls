// Fill out your copyright notice in the Description page of Project Settings.

#pragma once

#include "CoreMinimal.h"
#include "Components/SceneComponent.h"
#include "StatusComponent.generated.h"

UCLASS(Blueprintable, meta = (BlueprintSpawnableComponent))
class UNREALSOULS_API UStatusComponent : public USceneComponent
{
	GENERATED_BODY()

public:
	UPROPERTY(EditAnywhere, BlueprintReadWrite)
	float Value = 100.0f;

	UPROPERTY(EditAnywhere, BlueprintReadWrite)
	float MaxValue = 100.0f;

	// Replenish
	UPROPERTY(EditAnywhere, BlueprintReadWrite)
	float ReplenishRate = 0.0f;

	UPROPERTY(EditAnywhere, BlueprintReadWrite)
	float ReplenishDelay = 0.0f;

	UPROPERTY(EditAnywhere, BlueprintReadWrite)
	bool bCanReplenish = false;

	// Deplete
	UPROPERTY(EditAnywhere, BlueprintReadWrite)
	float DepleteRate = 0.0f;

	UPROPERTY(EditAnywhere, BlueprintReadWrite)
	bool bCanDeplete = false;

	float LastDepletion = 0.0f;

public:
	// Sets default values for this component's properties
	UStatusComponent();

protected:
	// Called when the game starts
	virtual void BeginPlay() override;

public:
	// Called every frame
	virtual void TickComponent(float DeltaTime, ELevelTick TickType, FActorComponentTickFunction* ThisTickFunction) override;

	UFUNCTION(BlueprintCallable)
	void Replenish(float Amount);

	UFUNCTION(BlueprintCallable)
	void Deplete(float Amount);
};
