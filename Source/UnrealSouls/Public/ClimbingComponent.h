// Fill out your copyright notice in the Description page of Project Settings.

#pragma once

#include "CoreMinimal.h"
#include "Components/ActorComponent.h"
#include "LadderStates.h"
#include "Ladder.h"

#include "ClimbingComponent.generated.h"


UCLASS(Blueprintable, meta = (BlueprintSpawnableComponent))
class UNREALSOULS_API UClimbingComponent : public UActorComponent
{
	GENERATED_BODY()

public:	
	// Sets default values for this component's properties
	UClimbingComponent();

	UPROPERTY(EditAnywhere, BlueprintReadWrite)
	ALadder* LadderRef;

	UPROPERTY(EditAnywhere, BlueprintReadWrite)
	float ClimbingSpeed = 36.0f;

protected:
	// Called when the game starts
	virtual void BeginPlay() override;

public:	
	// Called every frame
	virtual void TickComponent(float DeltaTime, ELevelTick TickType, FActorComponentTickFunction* ThisTickFunction) override;

	UFUNCTION(BlueprintCallable, BlueprintNativeEvent)
	void OnStartClimb(ALadder* InLadderRef);

	UFUNCTION(BlueprintCallable, BlueprintNativeEvent)
	void OnEndClimb();

	UFUNCTION(BlueprintCallable, BlueprintNativeEvent)
	void AddMovementInput(const float InputValue);
};
