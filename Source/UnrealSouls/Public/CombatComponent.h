// Fill out your copyright notice in the Description page of Project Settings.

#pragma once

#include "Components/ActorComponent.h"
#include "CoreMinimal.h"

#include "CombatComponent.generated.h"

const TArray<FString> ANIMATION_OPTIONS = { "Attack", "Hit", "Death" };

UENUM(BlueprintType)
enum class EAttackType : uint8
{
	Light,
	Heavy,
	Ranged,
	Spell
};

USTRUCT(BlueprintType)
struct FCombatData
{
	GENERATED_BODY()

	UPROPERTY(EditAnywhere, BlueprintReadOnly, Category = "Combat")
	bool bIsAttacking = false;

	UPROPERTY(EditAnywhere, BlueprintReadOnly, Category = "Combat")
	bool bIsBlocking = false;

	UPROPERTY(EditAnywhere, BlueprintReadOnly, Category = "Combat")
	bool bCanTakeDamage = true;

	UPROPERTY(EditAnywhere, BlueprintReadOnly, Category = "Combat")
	bool bCanDealDamage = false;
};

UCLASS(ClassGroup = (Custom), meta = (BlueprintSpawnableComponent))
class UNREALSOULS_API UCombatComponent : public UActorComponent
{
	GENERATED_BODY()


public:
	UPROPERTY(EditDefaultsOnly, BlueprintReadOnly, Category = "Animations", meta = (GetOptions = "GetAnimationOptions"))
	TMap<FString, UAnimMontage*> Animations;

	UPROPERTY(EditAnywhere, BlueprintReadWrite, Category = "Combat")
	bool bIsAttacking = false;

	UPROPERTY(EditAnywhere, BlueprintReadWrite, Category = "Combat")
	bool bIsBlocking = false;

	UPROPERTY(EditAnywhere, BlueprintReadWrite, Category = "Combat")
	bool bCanTakeDamage = true;

	UPROPERTY(EditAnywhere, BlueprintReadWrite, Category = "Combat")
	bool bCanDealDamage = false;

	UPROPERTY(EditAnywhere, BlueprintReadWrite, Category = "Combat")
	FTimerHandle AttackTimerHandle;

	UPROPERTY(EditAnywhere, BlueprintReadWrite, Category = "Combat")
	float AttackTraceRate = 0.05f;

	DECLARE_DYNAMIC_MULTICAST_DELEGATE(FAttackStarted);
	UPROPERTY(BlueprintAssignable, BlueprintCallable, Category = "Event Dispatchers")
	FAttackStarted AttackStarted;

	DECLARE_DYNAMIC_MULTICAST_DELEGATE(FAttackEnded);
	UPROPERTY(BlueprintAssignable, BlueprintCallable, Category = "Event Dispatchers")
	FAttackEnded AttackEnded;

	DECLARE_DYNAMIC_MULTICAST_DELEGATE(FAttackHit);
	UPROPERTY(BlueprintAssignable, BlueprintCallable, Category = "Event Dispatchers")
	FAttackHit AttackHit;

	DECLARE_DYNAMIC_MULTICAST_DELEGATE(FDeath);
	UPROPERTY(BlueprintAssignable, BlueprintCallable, Category = "Event Dispatchers")
	FDeath Death;

public:
	// Sets default values for this component's properties
	UCombatComponent();

protected:
	// Called when the game starts
	virtual void BeginPlay() override;

public:
	// Called every frame
	virtual void TickComponent(float DeltaTime, ELevelTick TickType, FActorComponentTickFunction* ThisTickFunction) override;

	// Utility

	TOptional<FVector> GetSocketLocation(FName SocketName);
	TOptional<FVector> GetAttackTraceStart();
	TOptional<FVector> GetAttackTraceEnd();

	UFUNCTION()
	TArray<FString> GetAnimationOptions() const { return ANIMATION_OPTIONS; }

	// Functions

	UFUNCTION(BlueprintCallable)
	FCombatData GetData();

	UFUNCTION(BlueprintCallable)
	float GetBaseDamage();

	UFUNCTION(BlueprintCallable, BlueprintNativeEvent)
	bool CanTakeDamage();

	UFUNCTION(BlueprintCallable, BlueprintNativeEvent)
	void OnTakeDamageStart(float DamageTaken, AActor* Attacker);

	UFUNCTION(BlueprintCallable, BlueprintNativeEvent)
	void OnTakeDamageEnd(UAnimMontage* Montage, bool bInterrupted);

	UFUNCTION(BlueprintCallable, BlueprintNativeEvent)
	void OnAttackStart(EAttackType AttackType);

	UFUNCTION(BlueprintCallable, BlueprintNativeEvent)
	void OnAttackTrace();

	UFUNCTION(BlueprintCallable, BlueprintNativeEvent)
	void OnAttackHit(AActor* HitActor);

	UFUNCTION(BlueprintCallable, BlueprintNativeEvent)
	void OnAttackEnd();

	UFUNCTION(BlueprintCallable, BlueprintNativeEvent)
	void OnDeathStart();

	UFUNCTION(BlueprintCallable, BlueprintNativeEvent)
	void OnDeathEnd(UAnimMontage* Montage, bool bInterrupted);

	UFUNCTION(BlueprintCallable)
	void SetBlocking(bool bInBlocking) { bIsBlocking = bInBlocking; }

	UFUNCTION(BlueprintCallable, BlueprintPure)
	bool IsBlocking() { return bIsBlocking; }
};
