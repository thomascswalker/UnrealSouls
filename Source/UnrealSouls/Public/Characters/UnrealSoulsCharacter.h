// Copyright Epic Games, Inc. All Rights Reserved.

#pragma once

#include "Abilities/CharacterAbilitySystemComponent.h"
#include "Abilities/CharacterAttributeSet.h"
#include "Abilities/CharacterGameplayAbility.h"
#include "AbilitySystemComponent.h"
#include "AbilitySystemInterface.h"
#include "CharacterInfo.h"
#include "Components/BoxComponent.h"
#include "Components/ClimbingComponent.h"
#include "Components/StatusComponent.h"
#include "Components/TimelineComponent.h"
#include "Components/WidgetComponent.h"
#include "CoreMinimal.h"
#include "GameFramework/Character.h"
#include "GameFramework/CharacterMovementComponent.h"
#include "GameplayEffectTypes.h"
#include "InputActionValue.h"
#include "Interfaces/CombatInterface.h"
#include "NiagaraComponent.h"
#include "NiagaraFunctionLibrary.h"
#include "UI/StatusBar.h"
#include "NiagaraComponent.h"

#include "UnrealSoulsCharacter.generated.h"

class UNiagaraComponent;

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
class AUnrealSoulsCharacter : public ACharacter, public IAbilitySystemInterface, public ICombatInterface
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

    /// Misc
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

    /// Particles
public:
    FORCEINLINE void ConstructParticles()
    {
        for (const FCharacterParticle& CharacterParticle : CharacterInfo.Particles)
        {
            FName Socket = CharacterParticle.Socket;
            UE_LOG(LogTemp, Display, TEXT("%s"), *Socket.ToString())
            FName CompName = FName(FString::Printf(TEXT("NiagaraComponent_%s"), *Socket.ToString()));
            UNiagaraComponent* NewComp = NewObject<UNiagaraComponent>(this, UNiagaraComponent::StaticClass(), Socket);
            if (NewComp)
            {
                NewComp->RegisterComponent();
                NewComp->SetAsset(CharacterParticle.System);
                NewComp->AttachToComponent(GetMesh(), FAttachmentTransformRules::KeepRelativeTransform, Socket);
                // attach or set location, etc
            }
        }
    }

    /// Abilities
public:
    UPROPERTY(BlueprintReadOnly, EditAnywhere, Category = "Abilities")
    TSubclassOf<class UGameplayEffect> DefaultAttributeEffect;

    UPROPERTY(BlueprintReadOnly, EditAnywhere, Category = "Abilities")
    TArray<TSubclassOf<class UGameplayAbility>> DefaultAbilities;

    UAbilitySystemComponent* GetAbilitySystemComponent() const override;

    UFUNCTION(BlueprintCallable, Category = "Attributes")
    virtual void InitializeAttributes();
    UFUNCTION(BlueprintCallable, Category = "Attributes")
    virtual void InitializeAbilities();

    /* Wrapper for adding GameplayTags */
    UFUNCTION(BlueprintCallable)
    void AddGameplayTag(const FGameplayTag& GameplayTag) const;

    /* Wrapper for removing GameplayTags */
    UFUNCTION(BlueprintCallable)
    void RemoveGameplayTag(const FGameplayTag& GameplayTag) const;

    /* Wrapper for checking GameplayTags */
    UFUNCTION(BlueprintCallable)
    bool HasGameplayTag(const FGameplayTag& GameplayTag) const;

public:
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

    /// Character Info
public:
    /* The character's base info. Defined in DT_CharacterTable. */
    UPROPERTY(BlueprintReadOnly, VisibleAnywhere, Category = "Attributes")
    FCharacterInfo CharacterInfo;

    /* Get CharacterInfo for this Character. */
    UFUNCTION(BlueprintCallable)
    FCharacterInfo GetCharacterInfo() const
    {
        return CharacterInfo;
    }

    /* Update CharacterInfo in this Character. This will also reinitialize the CharacterAttributeSet.*/
    UFUNCTION(BlueprintCallable)
    void SetCharacterInfo(const FCharacterInfo& InCharacterInfo)
    {
        CharacterInfo = InCharacterInfo;
        GetMesh()->SetSkeletalMeshAsset(CharacterInfo.Mesh);
        GetMesh()->SetAnimInstanceClass(CharacterInfo.AnimClass);
        InitializeAttributes();
    }

public:
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

    UFUNCTION(BlueprintCallable, BlueprintNativeEvent, Category = "Combat")
    bool IsInvulnerable() const;

    UFUNCTION(BlueprintCallable, BlueprintNativeEvent, Category = "Combat")
    void SetInvulnerable(bool bInInvulnerable);

    /* Enables IFrames. This sets bCanReceiveDamage to false. */
    UFUNCTION(BlueprintCallable, Category = "Combat")
    FORCEINLINE void EnableIFrame()
    {
        // bCanReceiveDamage = false;
        AddGameplayTag(FGameplayTag::RequestGameplayTag("Character.State.Invulnerable"));
    }

    /* Enables IFrames for the specified Duration. This sets bCanReceiveDamage to false until the Duration has been reached. */
    UFUNCTION(BlueprintCallable, Category = "Combat")
    FORCEINLINE void EnableIFrameForDuration(float Duration)
    {
        // bCanReceiveDamage = false;
        AddGameplayTag(FGameplayTag::RequestGameplayTag("Character.State.Invulnerable"));
        GetWorld()->GetTimerManager().SetTimer(IFrameHandle, this, &AUnrealSoulsCharacter::DisableIFrame, Duration);
    }

    /* Disables IFrames. This sets bCanReceiveDamage to true. */
    UFUNCTION(BlueprintCallable, Category = "Combat")
    FORCEINLINE void DisableIFrame()
    {
        // bCanReceiveDamage = true;
        RemoveGameplayTag(FGameplayTag::RequestGameplayTag("Character.State.Invulnerable"));
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
        SetInvulnerable(true);

        // Disable collision with pawns (but preserve collision with the environment)
        GetCapsuleComponent()->SetCollisionResponseToChannel(ECollisionChannel::ECC_Pawn, ECollisionResponse::ECR_Ignore);

        // Disable movement
        GetCharacterMovement()->SetMovementMode(EMovementMode::MOVE_None);

        // Broadcast that this character has died
        Died.Broadcast();
    }

    UFUNCTION(BlueprintNativeEvent, BlueprintCallable)
    UUserWidget* GetHealthBarWidget() const;

    UFUNCTION(BlueprintCallable)
    FORCEINLINE void UpdateHealthBar(float InDamage)
    {
        UStatusBar* HealthBar = Cast<UStatusBar>(ICombatInterface::Execute_GetHealthBarWidget(this));
        if (!HealthBar || !HealthBar->StatusBar)
        {
            UE_LOG(LogTemp, Error, TEXT("HealthBarComponent not found!"));
            UE_LOG(LogTemp, Display, TEXT("CurrentHealth: %f"), GetHealth())
            return;
        }

        float Percent = FMath::Clamp(GetHealth() / CharacterInfo.BaseHealth, 0.0f, 1.0f);
        HealthBar->SetPercent(Percent);

        HealthBar->ShowText(2.0f);
        HealthBar->SetText(FText::FromString(FString::SanitizeFloat(InDamage, 0)));
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
