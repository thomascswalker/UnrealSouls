// Copyright Epic Games, Inc. All Rights Reserved.

#include "Characters/UnrealSoulsCharacter.h"
#include "Camera/CameraComponent.h"
#include "Components/CapsuleComponent.h"
#include "Components/InputComponent.h"
#include "EnhancedInputComponent.h"
#include "EnhancedInputSubsystems.h"
#include "Entities/Ladder.h"
#include "GameFramework/CharacterMovementComponent.h"
#include "GameFramework/Controller.h"
#include "GameFramework/SpringArmComponent.h"
#include "GameplayTags.h"
#include "Kismet/GameplayStatics.h"
#include "Kismet/KismetSystemLibrary.h"
#include "Math/UnrealMathUtility.h"

AUnrealSoulsCharacter::AUnrealSoulsCharacter()
{
    PrimaryActorTick.bCanEverTick = true;
    PrimaryActorTick.TickInterval = 0.001;
    bAlwaysRelevant = true;

    // Scene components
    WeaponComponent = CreateDefaultSubobject<UStaticMeshComponent>(TEXT("WeaponComponent"));
    WeaponComponent->SetupAttachment(GetMesh(), TEXT("hand_rSocket"));

    // Actor components
    AbilitySystemComponent = CreateDefaultSubobject<UCharacterAbilitySystemComponent>(TEXT("AbilitySystemComponent"));
    Attributes = CreateDefaultSubobject<UCharacterAttributeSet>(TEXT("AttributeSet"));

    // Setup health bar
    HealthBarComponent = CreateDefaultSubobject<UWidgetComponent>(TEXT("HealthBarComponent"));
    HealthBarComponent->SetupAttachment(RootComponent);
    HealthBarComponent->SetWidgetSpace(EWidgetSpace::Screen);
    HealthBarComponent->SetRelativeLocation(FVector(0.0f, 0.0f, 110.0f));
    HealthBarComponent->SetDrawSize(FVector2D(128.0f, 16.0f));
    HealthBarComponent->SetWidgetClass(UStatusBar::StaticClass());

    // AI Options
    AutoPossessAI = EAutoPossessAI::PlacedInWorldOrSpawned;
}

void AUnrealSoulsCharacter::BeginPlay()
{
    Super::BeginPlay();

    if (AbilitySystemComponent && Attributes)
    {
        AbilitySystemComponent->GetSet<UCharacterAttributeSet>();
        AbilitySystemComponent->InitAbilityActorInfo(this, this);

        InitializeAttributes();
        InitializeAbilities();
    }

    ConstructParticles();
}

void AUnrealSoulsCharacter::Tick(float DeltaTime)
{
    Super::Tick(DeltaTime);
}

void AUnrealSoulsCharacter::PossessedBy(AController* NewController)
{
    Super::PossessedBy(NewController);

    if (AbilitySystemComponent)
    {
        AbilitySystemComponent->InitAbilityActorInfo(this, this);
    }

    InitializeAttributes();
    InitializeAbilities();
}

UAbilitySystemComponent* AUnrealSoulsCharacter::GetAbilitySystemComponent() const
{
    return AbilitySystemComponent;
}

void AUnrealSoulsCharacter::InitializeAttributes()
{
    // Set default attributes
    Attributes->InitHealth(CharacterInfo.BaseHealth);
    Attributes->InitStamina(CharacterInfo.BaseStamina);
    Attributes->InitAttackPower(CharacterInfo.BaseAttackPower);
}

void AUnrealSoulsCharacter::InitializeAbilities()
{
    if (!AbilitySystemComponent || !HasAuthority())
    {
        return;
    }

    for (TSubclassOf<UGameplayAbility>& Ability : DefaultAbilities)
    {
        AbilitySystemComponent->GiveAbility(FGameplayAbilitySpec(Ability.GetDefaultObject(), 1, 0));
    }
}

void AUnrealSoulsCharacter::AddGameplayTag(const FGameplayTag& GameplayTag) const
{
    AbilitySystemComponent->AddLooseGameplayTag(GameplayTag);
}

void AUnrealSoulsCharacter::RemoveGameplayTag(const FGameplayTag& GameplayTag) const
{
    AbilitySystemComponent->RemoveLooseGameplayTag(GameplayTag);
}

bool AUnrealSoulsCharacter::HasGameplayTag(const FGameplayTag& GameplayTag) const
{
    return AbilitySystemComponent->HasMatchingGameplayTag(GameplayTag);
}

UUserWidget* AUnrealSoulsCharacter::GetHealthBarWidget_Implementation() const
{
    return HealthBarComponent->GetWidget();
}

bool AUnrealSoulsCharacter::IsInvulnerable_Implementation() const
{
    FGameplayTag InvulnerableTag = FGameplayTag::RequestGameplayTag(FName("Character.State.Invulnerable"));
    return HasGameplayTag(InvulnerableTag);
}

void AUnrealSoulsCharacter::SetInvulnerable_Implementation(bool bInInvulnerable)
{
    FGameplayTag InvulnerableTag = FGameplayTag::RequestGameplayTag(FName("Character.State.Invulnerable"));
    if (bInInvulnerable)
    {
        AddGameplayTag(InvulnerableTag);
    }
    else
    {
        RemoveGameplayTag(InvulnerableTag);
    }
}