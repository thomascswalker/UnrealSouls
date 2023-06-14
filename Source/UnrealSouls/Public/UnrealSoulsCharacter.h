// Copyright Epic Games, Inc. All Rights Reserved.

#pragma once

#include "Abilities/CharacterAbilitySystemComponent.h"
#include "Abilities/CharacterAttributeSet.h"
#include "Abilities/CharacterGameplayAbility.h"
#include "AbilitySystemComponent.h"
#include "AbilitySystemInterface.h"
#include "Attackable.h"
#include "ClimbingComponent.h"
#include "CombatComponent.h"
#include "Components/BoxComponent.h"
#include "Components/TimelineComponent.h"
#include "Components/WidgetComponent.h"
#include "CoreMinimal.h"
#include "GameFramework/Character.h"
#include "GameFramework/CharacterMovementComponent.h"
#include "InputActionValue.h"
#include "StatusComponent.h"
#include "Targetable.h"

#include "UnrealSoulsCharacter.generated.h"

UENUM(BlueprintType)
enum class EFaction : uint8
{
	Passive,
	Neutral,
	Aggressive
};

UENUM(BlueprintType)
enum class ERollOrientation : uint8
{
	Forward,
	Backward,
	Left,
	Right
};

UCLASS(config = Game)
class AUnrealSoulsCharacter : public ACharacter, public ITargetable, public IAttackable, public IAbilitySystemInterface
{
	GENERATED_BODY()

public:
	UPROPERTY(EditAnywhere, BlueprintReadOnly, Category = "Components")
	TObjectPtr<UStatusComponent> HealthComponent;

	UPROPERTY(EditAnywhere, BlueprintReadOnly, Category = "Components")
	TObjectPtr<UClimbingComponent> ClimbingComponent;

	UPROPERTY(EditAnywhere, BlueprintReadOnly, Category = "Components")
	TObjectPtr<UCombatComponent> CombatComponent;

	UPROPERTY(EditAnywhere, BlueprintReadOnly, Category = "Components")
	TObjectPtr<UWidgetComponent> HealthWidgetComponent;

	UPROPERTY(VisibleDefaultsOnly, BlueprintReadOnly, Category = "Components")
	TObjectPtr<UCharacterAbilitySystemComponent> AbilitySystemComponent;
	TObjectPtr<UCharacterAttributeSet> AttributeSet;

	UPROPERTY(EditAnywhere, BlueprintReadOnly, Category = "Components")
	TObjectPtr<UTimelineComponent> ActionTimeline;

	FVector CacheDirection;

	UPROPERTY(EditAnywhere, BlueprintReadWrite, Category = "Movement")
	bool bCanMove = false;
	UPROPERTY(EditAnywhere, BlueprintReadWrite, Category = "Movement")
	bool bIsJumping = false;
	UPROPERTY(EditAnywhere, BlueprintReadWrite, Category = "Movement")
	bool bIsRolling = false;
	UPROPERTY(EditAnywhere, BlueprintReadWrite, Category = "Movement")
	bool bIsSprinting = false;
	UPROPERTY(EditDefaultsOnly, BlueprintReadOnly, Category = "Movement")
	bool bCanEverClimb = false;
	UPROPERTY(EditAnywhere, BlueprintReadWrite, Category = "Movement")
	bool bIsClimbing = false;
	UPROPERTY(EditAnywhere, BlueprintReadWrite, Category = "Movement")
	bool bIsResting = false;

	float BaseSpeed = 400.0f;
	float BaseAcceleration = 1500.0f;

	float RollSpeed = 1000.0f;
	FVector RollDirection;

	float SprintSpeed = 600.0f;
	float SprintAcceleration = 2500.0f;

	float WalkSpeed = 150.0f;
	float WalkAcceleration = 500.0f;

	UPROPERTY(EditAnywhere, BlueprintReadOnly, Category = "Animations")
	UAnimMontage* RollForwardMontage;

	UPROPERTY(EditAnywhere, BlueprintReadOnly, Category = "Animations")
	UAnimMontage* RollBackwardMontage;

	UPROPERTY(EditAnywhere, BlueprintReadOnly, Category = "Animations")
	UAnimMontage* RollRightMontage;

	UPROPERTY(EditAnywhere, BlueprintReadOnly, Category = "Animations")
	UAnimMontage* RollLeftMontage;

	UPROPERTY(EditAnywhere, BlueprintReadOnly, Category = "Animations")
	UAnimMontage* AttackMontage;

	UPROPERTY(EditAnywhere, BlueprintReadOnly, Category = "Animations")
	UAnimMontage* HitMontage;

	UPROPERTY(EditAnywhere, BlueprintReadOnly, Category = "Animations")
	UAnimMontage* DeathMontage;

	UPROPERTY(EditAnywhere, BlueprintReadOnly, Category = "Animations")
	UAnimMontage* RestTransitionDownMontage;

	UPROPERTY(EditAnywhere, BlueprintReadOnly, Category = "Animations")
	UAnimMontage* RestTransitionUpMontage;

	UPROPERTY(EditAnywhere, BlueprintReadOnly, Category = "Combat")
	EFaction Faction;

	UPROPERTY()
	UCurveFloat* DefaultRollCurve;

	DECLARE_DYNAMIC_MULTICAST_DELEGATE_OneParam(FCharacterDied, AUnrealSoulsCharacter*, Character);
	UPROPERTY(BlueprintAssignable, BlueprintCallable, Category = "Event Dispatchers")
	FCharacterDied CharacterDied;

	DECLARE_DYNAMIC_MULTICAST_DELEGATE_OneParam(FResting, bool, bIsResting);
	UPROPERTY(BlueprintAssignable, BlueprintCallable, Category = "Event Dispatchers")
	FResting Resting;

public:
	AUnrealSoulsCharacter(){};
	AUnrealSoulsCharacter(const class FObjectInitializer& ObjectInitializer);
	virtual void BeginPlay() override;
	virtual void Tick(float DeltaTime) override;
	virtual void PossessedBy(AController* NewController) override;

public:

	// Attributes

	//UPROPERTY(BlueprintCallable)
	bool IsAlive() const;

	void Die();

	void DieEnd();

	UFUNCTION(BlueprintCallable)
	float GetHealth() const;

	UFUNCTION(BlueprintCallable)
	float GetMaxHealth() const;

	UFUNCTION(BlueprintCallable)
	float GetStamina() const;

	UFUNCTION(BlueprintCallable)
	float GetMaxStamina() const;


	// Components

	UFUNCTION()
	UAbilitySystemComponent* GetAbilitySystemComponent() const override;

	UFUNCTION(BlueprintCallable, BlueprintNativeEvent)
	UCombatComponent* GetCombatComponent();

	UFUNCTION(BlueprintCallable, BlueprintNativeEvent)
	USkeletalMeshComponent* GetMeshComponent();

	// Montage

	UFUNCTION(BlueprintCallable)
	bool PlayMontage(UAnimMontage* Montage, UObject* InObject = nullptr, const FName InFunctionName = "", float PlayRate = 1.0f);
	bool PlayMontage(UAnimMontage* Montage, float PlayRate = 1.0f);

	// Movement

	UFUNCTION(BlueprintCallable)
	float GetMovementSpeed() { return GetCharacterMovement()->MaxWalkSpeed; }

	UFUNCTION(BlueprintCallable)
	void SetMovementSpeed(float NewSpeed) { GetCharacterMovement()->MaxWalkSpeed = NewSpeed; }

	UFUNCTION(BlueprintCallable)
	virtual bool CanSprint() { return false; }

	UFUNCTION(BlueprintCallable)
	virtual void StartSprint();

	UFUNCTION(BlueprintCallable)
	virtual void EndSprint();

	UFUNCTION(BlueprintCallable)
	virtual bool CanRoll() { return false; }

	UFUNCTION(BlueprintCallable)
	virtual void StartRoll();

	UFUNCTION(BlueprintCallable)
	virtual void UpdateRoll(float Multiplier);

	UFUNCTION(BlueprintCallable)
	virtual void EndRoll();

	// Targeting

	UFUNCTION(BlueprintCallable, BlueprintNativeEvent)
	bool IsTargetable();

	// Resting

	UFUNCTION(BlueprintCallable)
	void OnRest(bool bInResting);

	UFUNCTION(BlueprintCallable)
	void OnRestEnd(UAnimMontage* Montage, bool bInterrupted);

	UFUNCTION(BlueprintCallable)
	void OnUnrestEnd(UAnimMontage* Montage, bool bInterrupted);

	// Attacking
	UFUNCTION(BlueprintCallable, BlueprintNativeEvent)
	void OnAttack();

protected:
	FGameplayTag DeadTag;
	FGameplayTag EffectRemoveOnDeathTag;

	UPROPERTY(BlueprintReadOnly, EditAnywhere)
	TArray<TSubclassOf<class UCharacterGameplayAbility>> CharacterAbilities;

	UPROPERTY(BlueprintReadOnly, EditAnywhere)
	TSubclassOf<class UGameplayEffect> DefaultAttributes;

	UPROPERTY(BlueprintReadOnly, EditAnywhere)
	TSubclassOf<class UGameplayEffect> StartupEffect;

	virtual void AddCharacterAbilities();
	virtual void RemoveCharacterAbilities();
	virtual void InitializeAttributes();
	virtual void AddStartupEffect();

	virtual void SetHealth(float NewHealth);
	virtual void SetStamina(float NewStamina);
};
