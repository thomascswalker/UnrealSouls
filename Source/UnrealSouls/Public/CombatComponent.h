// Fill out your copyright notice in the Description page of Project Settings.

#pragma once

#include "CoreMinimal.h"
#include "Components/ActorComponent.h"
#include "CombatComponent.generated.h"

UCLASS(ClassGroup = (Custom), meta = (BlueprintSpawnableComponent))
class UNREALSOULS_API UCombatComponent : public UActorComponent
{
	GENERATED_BODY()

	FTimerHandle AttackTimerHandle;
	float AttackTraceRate = 0.05f;


public:
	UPROPERTY(EditAnywhere, BlueprintReadWrite)
	bool bCanTakeDamage = true;

public:
	// Sets default values for this component's properties
	UCombatComponent();

protected:
	// Called when the game starts
	virtual void BeginPlay() override;

public:
	// Called every frame
	virtual void TickComponent(float DeltaTime, ELevelTick TickType, FActorComponentTickFunction* ThisTickFunction) override;

	TOptional<FVector> GetSocketLocation(FName SocketName);
	TOptional<FVector> GetAttackTraceStart();
	TOptional<FVector> GetAttackTraceEnd();

	UFUNCTION(BlueprintCallable, BlueprintNativeEvent)
	void OnAttackStart();

	UFUNCTION(BlueprintCallable, BlueprintNativeEvent)
	void OnAttackTrace();

	UFUNCTION(BlueprintCallable, BlueprintNativeEvent)
	void OnAttackHit(AActor* HitActor);

	UFUNCTION(BlueprintCallable, BlueprintNativeEvent)
	void AttackEnd();
};
