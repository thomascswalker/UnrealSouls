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

UCLASS(config = Game)
class AUnrealSoulsCharacter : public ACharacter, public ITargetable, public IAttackable, public IAbilitySystemInterface
{
    GENERATED_BODY()

public:
    UPROPERTY(VisibleDefaultsOnly, BlueprintReadOnly, Category = "Components")
    TObjectPtr<UStaticMeshComponent> WeaponComponent;

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
    FORCEINLINE bool PlayMontage(UAnimMontage* Montage, UObject* InObject, const FName InFunctionName = "", float PlayRate = 1.0f)
    {
        UAnimInstance* AnimInstance = (GetMesh()) ? GetMesh()->GetAnimInstance() : nullptr;
        if (Montage && AnimInstance)
        {
            float MontageLength = AnimInstance->Montage_Play(Montage, PlayRate);
            const bool bPlayedSuccessfully = (MontageLength > 0.f);
            if (!bPlayedSuccessfully)
            {
                return false;
            }

            FOnMontageEnded OnMontageEndedDelegate;
            OnMontageEndedDelegate.BindUFunction(InObject, InFunctionName);
            AnimInstance->Montage_SetEndDelegate(OnMontageEndedDelegate, Montage);
            return true;
        }
        else
        {
            return false;
        }
    }

public:
    UAbilitySystemComponent* GetAbilitySystemComponent() const override;

    virtual void InitializeAttributes();
    virtual void InitializeAbilities();

    UFUNCTION(BlueprintCallable)
    FORCEINLINE void AddGameplayTag(const FGameplayTag& GameplayTag)
    {
        AbilitySystemComponent->AddLooseGameplayTag(GameplayTag);
    }

    UFUNCTION(BlueprintCallable)
    FORCEINLINE void RemoveGameplayTag(const FGameplayTag& GameplayTag)
    {
        AbilitySystemComponent->RemoveLooseGameplayTag(GameplayTag);
    }

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
    DECLARE_DYNAMIC_MULTICAST_DELEGATE_ThreeParams(FDamaged, float, Damage, float, NewHealth, float, OldHealth);
    UPROPERTY(BlueprintAssignable, BlueprintCallable, Category = "Combat")
    FDamaged Damaged;

    /* Broadcasts when the character's health has reached 0 (death). */
    DECLARE_DYNAMIC_MULTICAST_DELEGATE(FDied);
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
    FORCEINLINE void ReceiveDamage(float InDamage) {}

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

    /* Called when the character's health reaches zero. */
    UFUNCTION(BlueprintCallable, Category = "Combat")
    FORCEINLINE void Die()
    {
        // Disable damage
        bCanReceiveDamage = false;

        // Disable collision with pawns (but preserve collision with the environment)
        GetCapsuleComponent()->SetCollisionResponseToChannel(ECollisionChannel::ECC_Pawn, ECollisionResponse::ECR_Ignore);

        // Disable movement
        GetCharacterMovement()->SetMovementMode(EMovementMode::MOVE_None);

        // Broadcast that this character has died
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

public:
    /* Abilities */

    UFUNCTION(BlueprintCallable)
    void Attack()
    {
        AbilitySystemComponent->TryActivateAbilitiesByTag(FGameplayTagContainer(FGameplayTag::RequestGameplayTag("Character.Action.Attack")));
    }

    UFUNCTION(BlueprintCallable)
    void Roll()
    {
        AbilitySystemComponent->TryActivateAbilitiesByTag(FGameplayTagContainer(FGameplayTag::RequestGameplayTag("Character.Action.Roll")));
    }

public:
    /* Resting */

    DECLARE_DYNAMIC_MULTICAST_DELEGATE_OneParam(FRestingChanged, bool, bRestingState);
    UPROPERTY(BlueprintAssignable, BlueprintCallable, Category = "Resting")
    FRestingChanged RestingChanged;

    bool bResting = false;

    UPROPERTY(BlueprintReadOnly, EditDefaultsOnly, Category = "Animations")
    UAnimMontage* RestStartMontage;

    UPROPERTY(BlueprintReadOnly, EditDefaultsOnly, Category = "Animations")
    UAnimMontage* RestEndMontage;

    UFUNCTION(BlueprintCallable)
    FORCEINLINE void SetResting(bool bInResting)
    {
        bResting = bInResting;

        // We are now resting
        if (bResting)
        {
            GetCharacterMovement()->SetMovementMode(EMovementMode::MOVE_None);
            AddGameplayTag(FGameplayTag::RequestGameplayTag("Character.State.IsResting"));
        }

        UAnimMontage* TransitionMontage = bResting ? RestStartMontage : RestEndMontage;
        if (TransitionMontage != nullptr)
        {
            PlayMontage(TransitionMontage, this, "OnRestMontageEnded");
        }
    }

    UFUNCTION(BlueprintCallable)
    FORCEINLINE void OnRestMontageEnded(UAnimMontage* Montage, bool bInterrupted)
    {
        // We have stopped resting
        if (!bResting)
        {
            GetCharacterMovement()->SetMovementMode(EMovementMode::MOVE_Walking);
            RemoveGameplayTag(FGameplayTag::RequestGameplayTag("Character.State.IsResting"));
        }

        RestingChanged.Broadcast(bResting);
    }

    UFUNCTION(BlueprintCallable, BlueprintPure)
    FORCEINLINE bool IsResting()
    {
        return bResting;
    }
};
