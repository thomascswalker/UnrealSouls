// Copyright Epic Games, Inc. All Rights Reserved.

#include "UnrealSoulsCharacter.h"
#include "Camera/CameraComponent.h"
#include "Components/CapsuleComponent.h"
#include "Components/InputComponent.h"
#include "EnhancedInputComponent.h"
#include "EnhancedInputSubsystems.h"
#include "GameFramework/CharacterMovementComponent.h"
#include "GameFramework/Controller.h"
#include "GameFramework/SpringArmComponent.h"
#include "GameplayTags.h"
#include "Kismet/GameplayStatics.h"
#include "Kismet/KismetSystemLibrary.h"
#include "Ladder.h"
#include "Math/UnrealMathUtility.h"

AUnrealSoulsCharacter::AUnrealSoulsCharacter()
{
    bAlwaysRelevant = true;

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
}

void AUnrealSoulsCharacter::BeginPlay()
{
    Super::BeginPlay();

    if (AbilitySystemComponent && Attributes)
    {
        AbilitySystemComponent->GetSet<UCharacterAttributeSet>();
        AbilitySystemComponent->InitAbilityActorInfo(this, this);

        Attributes->InitHealth(CharacterInfo.BaseHealth);
        Attributes->InitStamina(CharacterInfo.BaseStamina);
    }
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
    if (!AbilitySystemComponent || !DefaultAttributeEffect)
    {
        return;
    }

    FGameplayEffectContextHandle EffectContext = AbilitySystemComponent->MakeEffectContext();
    EffectContext.AddSourceObject(this);

    FGameplayEffectSpecHandle SpecHandle = AbilitySystemComponent->MakeOutgoingSpec(DefaultAttributeEffect, 1, EffectContext);

    if (SpecHandle.IsValid())
    {
        FActiveGameplayEffectHandle GEHandle = AbilitySystemComponent->ApplyGameplayEffectSpecToSelf(*SpecHandle.Data.Get());
    }
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
