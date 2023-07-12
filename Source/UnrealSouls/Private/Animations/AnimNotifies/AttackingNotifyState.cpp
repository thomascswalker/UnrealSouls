// Fill out your copyright notice in the Description page of Project Settings.

#include "Animations/AnimNotifies/AttackingNotifyState.h"
#include "Abilities/GameplayAbilityTargetTypes.h"
#include "AbilitySystemBlueprintLibrary.h"
#include "Characters/UnrealSoulsCharacter.h"
#include "Kismet/KismetSystemLibrary.h"

void UAttackingNotifyState::NotifyBegin(
    USkeletalMeshComponent* MeshComp, UAnimSequenceBase* Animation, float FrameDeltaTime, const FAnimNotifyEventReference& EventReference)
{
    AActor* OwnerRef = MeshComp->GetOwner();

    if (!OwnerRef->Implements<UCombatInterface>())
    {
        return;
    }

    Mesh = MeshComp;

    // Depending on the attack type, setup the hitbox differently
    switch (AttackType)
    {
        case EAttackType::Melee:
        {
            Hitbox = ICombatInterface::Execute_GetWeaponHitbox(OwnerRef);
            if (Hitbox != nullptr)
            {
                FScriptDelegate OnOverlapDelegate;
                OnOverlapDelegate.BindUFunction(this, "OnHitboxOverlap");
                Hitbox->OnComponentBeginOverlap.AddUnique(OnOverlapDelegate);
                Hitbox->MoveIgnoreActors.Add(OwnerRef);
            }
            else
            {
                UE_LOG(LogTemp, Error, TEXT("No weapon hitbox found on character!"))
            }
        }
    }
}

void UAttackingNotifyState::NotifyEnd(USkeletalMeshComponent* MeshComp, UAnimSequenceBase* Animation, const FAnimNotifyEventReference& EventReference)
{
    if (Hitbox != nullptr)
    {
        Hitbox->OnComponentBeginOverlap.RemoveAll(this);
    }
}

void UAttackingNotifyState::OnHitboxOverlap(UPrimitiveComponent* OverlappedComponent, AActor* OtherActor, UPrimitiveComponent* OtherComponent,
    int32 OtherBodyIndex, bool bFromSweep, const FHitResult& SweepResult)
{
    AUnrealSoulsCharacter* Attacker = Cast<AUnrealSoulsCharacter>(OverlappedComponent->GetOwner());
    AUnrealSoulsCharacter* Defender = Cast<AUnrealSoulsCharacter>(OtherActor);

    if (!Defender)
    {
        UE_LOG(LogTemp, Error, TEXT("Hit non-attackable actor"))
        return;
    }

    // Check the character type masks
    if ((Attacker->CharacterInfo.AttackMaskType & Defender->CharacterInfo.DefenseMaskType) != 0)
    {
        UE_LOG(LogTemp, Display, TEXT("Cannot attack other"))
        return;
    }

    if (bShowTrace)
    {
        UKismetSystemLibrary::DrawDebugSphere(
            OtherActor->GetWorld(), OtherActor->GetActorLocation(), TraceRadius, 16, FLinearColor::Green, 2.0f, 1.0f);
    }

    FGameplayEventData GameplayEventData{};
    GameplayEventData.Instigator = Attacker;
    GameplayEventData.Target = Defender;
    GameplayEventData.TargetData = UAbilitySystemBlueprintLibrary::AbilityTargetDataFromActor(Defender);
    UAbilitySystemBlueprintLibrary::SendGameplayEventToActor(Attacker, TagToSend, GameplayEventData);
}
