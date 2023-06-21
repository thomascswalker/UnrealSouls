// Copyright Epic Games, Inc. All Rights Reserved.

#pragma once

#include "Abilities/CharacterAbilitySystemComponent.h"
#include "Abilities/CharacterAttributeSet.h"
#include "Abilities/CharacterGameplayAbility.h"
#include "AbilitySystemComponent.h"
#include "AbilitySystemInterface.h"
#include "Attackable.h"
#include "Characters/CharacterInfo.h"
#include "ClimbingComponent.h"
#include "Components/BoxComponent.h"
#include "Components/TimelineComponent.h"
#include "Components/WidgetComponent.h"
#include "CoreMinimal.h"
#include "GameFramework/Character.h"
#include "GameFramework/CharacterMovementComponent.h"
#include "GameplayEffectTypes.h"
#include "InputActionValue.h"
#include "StatusComponent.h"
#include "Targetable.h"
#include "UI/StatusBar.h"

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

DECLARE_DYNAMIC_MULTICAST_DELEGATE_ThreeParams(FDamaged, float, Damage, float, NewHealth, float, OldHealth);
DECLARE_DYNAMIC_MULTICAST_DELEGATE(FDied);

UCLASS(config = Game)
class AUnrealSoulsCharacter : public ACharacter, public ITargetable, public IAttackable, public IAbilitySystemInterface
{
    GENERATED_BODY()

public:
    UPROPERTY(VisibleDefaultsOnly, BlueprintReadOnly, Category = "Components")
    TObjectPtr<UCharacterAbilitySystemComponent> AbilitySystemComponent;

    UPROPERTY(VisibleDefaultsOnly, BlueprintReadOnly, Category = "Attributes")
    TObjectPtr<UCharacterAttributeSet> Attributes;

    UPROPERTY(VisibleDefaultsOnly, BlueprintReadOnly, Category = "Components", meta = (AllowPrivateAccess = "true"))
    TObjectPtr<UWidgetComponent> HealthBarComponent;

public:
    AUnrealSoulsCharacter();
    virtual void BeginPlay() override;
    virtual void Tick(float DeltaTime) override;

    virtual void PossessedBy(AController* NewController) override;

public:
    UAbilitySystemComponent* GetAbilitySystemComponent() const override;

    virtual void InitializeAttributes();
    virtual void InitializeAbilities();

    UFUNCTION(BlueprintCallable)
    FCharacterInfo GetCharacterInfo() const
    {
        return CharacterInfo;
    }

    void SetCharacterInfo(FCharacterInfo NewCharacterInfo)
    {
        CharacterInfo = NewCharacterInfo;
        Attributes->InitHealth(CharacterInfo.BaseHealth);
        Attributes->InitStamina(CharacterInfo.BaseStamina);
        Attributes->InitAttackPower(CharacterInfo.BaseAttackPower);
        Attributes->BaseHealth = CharacterInfo.BaseHealth;
        Attributes->BaseStamina = CharacterInfo.BaseStamina;
    }

    UPROPERTY(BlueprintReadOnly, EditAnywhere, Category = "Abilities")
    TSubclassOf<class UGameplayEffect> DefaultAttributeEffect;

    UPROPERTY(BlueprintReadOnly, EditAnywhere, Category = "Abilities")
    TArray<TSubclassOf<class UGameplayAbility>> DefaultAbilities;

    /* The character's base info. Defined in DT_EntityTable. */
    UPROPERTY(BlueprintReadOnly, EditDefaultsOnly, Category = "Attributes")
    FCharacterInfo CharacterInfo;

    /* Whether the character can receive damage or not. */
    UPROPERTY(BlueprintReadWrite, EditAnywhere, Category = "Abilities")
    bool bCanReceiveDamage = true;

    /* Handle for IFrame events. */
    FTimerHandle IFrameHandle;

    /* Montage to play when the character receives damage. */
    UPROPERTY(BlueprintReadOnly, EditDefaultsOnly)
    UAnimMontage* HitMontage;

    /* Broadcasts when the character receives damage. */
    UPROPERTY(BlueprintAssignable, BlueprintCallable, Category = "Combat")
    FDamaged Damaged;

    /* Broadcasts when the character's health has reached 0 (death). */
    UPROPERTY(BlueprintAssignable, BlueprintCallable, Category = "Combat")
    FDied Died;

    UFUNCTION(BlueprintCallable, Category = "Combat")
    FORCEINLINE float GetHealth() const
    {
        return Attributes->GetHealth();
    }

    UFUNCTION(BlueprintCallable, Category = "Combat")
    FORCEINLINE bool IsAlive() const
    {
        return GetHealth() > 0.0f;
    }

    UFUNCTION(BlueprintCallable, Category = "Movement")
    FORCEINLINE bool IsRolling() const
    {
        return AbilitySystemComponent->HasMatchingGameplayTag(FGameplayTag::RequestGameplayTag("Character.State.IsRolling"));
    }

    UFUNCTION(BlueprintCallable, Category = "Combat")
    FORCEINLINE bool IsInvulnerable() const
    {
        FGameplayTag InvulnerableTag = FGameplayTag::RequestGameplayTag(FName("Character.State.Invulnerable"));
        bool bIsInvulnerable = AbilitySystemComponent->HasMatchingGameplayTag(InvulnerableTag);
        return bIsInvulnerable;
    }

    UFUNCTION(BlueprintCallable, Category = "Combat")
    FORCEINLINE void ReceiveDamage(float InDamage)
    {
        //float OldHealth = Attributes->GetHealth();
        //UE_LOG(LogTemp, Warning, TEXT("Old health: %f"), OldHealth);
        //float NewHealth = FMath::Clamp(OldHealth - InDamage, 0.0f, CharacterInfo.BaseHealth);
        ////Attributes->SetHealth(NewHealth);
        //Damaged.Broadcast(InDamage, NewHealth, OldHealth);
        //UpdateHealthBar(InDamage);

        //if (GetHealth() <= 0.0f)
        //{
        //    Die();
        //}
        //else
        //{
        //    float Duration = PlayAnimMontage(HitMontage);

        //    // When damage is applied, temporarily disable the ability to receive damage. This will be re-enabled
        //    // when the hit montage is complete.
        //    EnableIFrameForDuration(Duration);
        //}
    }

    /* Enables IFrames. This sets bCanReceiveDamage to false. */
    UFUNCTION(BlueprintCallable, Category = "Combat")
    FORCEINLINE void EnableIFrame()
    {
        bCanReceiveDamage = false;
    }

    /* Enables IFrames for the specified Duration. This sets bCanReceiveDamage to false until the Duration has been reached. */
    UFUNCTION(BlueprintCallable, Category = "Combat")
    FORCEINLINE void EnableIFrameForDuration(float Duration)
    {
        bCanReceiveDamage = false;
        GetWorld()->GetTimerManager().SetTimer(IFrameHandle, this, &AUnrealSoulsCharacter::DisableIFrame, Duration);
    }

    /* Disables IFrames. This sets bCanReceiveDamage to true. */
    UFUNCTION(BlueprintCallable, Category = "Combat")
    FORCEINLINE void DisableIFrame()
    {
        bCanReceiveDamage = true;
        if (IFrameHandle.IsValid())
        {
            GetWorld()->GetTimerManager().ClearTimer(IFrameHandle);
        }
    }

    UFUNCTION(BlueprintCallable, Category = "Combat")
    FORCEINLINE void Die()
    {
        bCanReceiveDamage = false;
        GetCapsuleComponent()->SetCollisionEnabled(ECollisionEnabled::NoCollision);
        Died.Broadcast();
    }

    UFUNCTION(BlueprintCallable)
    FORCEINLINE void UpdateHealthBar(float InDamage)
    {
        UStatusBar* HealthBar = Cast<UStatusBar>(HealthBarComponent->GetWidget());
        if (!HealthBar || !HealthBar->StatusBar)
        {
            UE_LOG(LogTemp, Error, TEXT("HealthBar is not valid."));
            return;
        }

        float Percent = FMath::Clamp(GetHealth() / CharacterInfo.BaseHealth, 0.0f, 1.0f);
        HealthBar->SetPercent(Percent);

        HealthBar->ShowText(2.0f);
        HealthBar->SetText(FText::FromString(FString::SanitizeFloat(InDamage, 0)));
    }
};
