// Fill out your copyright notice in the Description page of Project Settings.

#include "Animations/AnimNotifies/MeleeAttackingDamage.h"
#include "Abilities/GameplayAbilityTargetTypes.h"
#include "AbilitySystemBlueprintLibrary.h"
#include "Characters/UnrealSoulsCharacter.h"
#include "Kismet/KismetSystemLibrary.h"

UMeleeAttackingDamage::UMeleeAttackingDamage()
{
    TraceRadius = 100.0f;
    bShowTrace = false;
    SocketToTrace = "hand_rSocket";
    TagToSend = FGameplayTag::RequestGameplayTag("Character.Action.Damaged");
}

void UMeleeAttackingDamage::NotifyTick(
    USkeletalMeshComponent* MeshComp, UAnimSequenceBase* Animation, float FrameDeltaTime, const FAnimNotifyEventReference& EventReference)
{
    AUnrealSoulsCharacter* OwnerRef = Cast<AUnrealSoulsCharacter>(MeshComp->GetOwner());
    if (OwnerRef && OwnerRef->GetWorld())
    {
        // Only trace pawns
        TArray<TEnumAsByte<EObjectTypeQuery>> ObjectTypes;
        ObjectTypes.Add(UEngineTypes::ConvertToObjectType(ECC_Pawn));

        // Ignore tracing the owner of this animation
        TArray<AActor*> ActorsToIgnore;
        ActorsToIgnore.Add(OwnerRef);

        TArray<AActor*> ActorsFound;

        UKismetSystemLibrary::SphereOverlapActors(
            OwnerRef->GetWorld(), MeshComp->GetSocketLocation(SocketToTrace), TraceRadius, ObjectTypes, nullptr, ActorsToIgnore, ActorsFound);

        if (bShowTrace)
        {
            FLinearColor DrawColor = ActorsFound.Num() > 0 ? FLinearColor::Green : FLinearColor::Red;
            UKismetSystemLibrary::DrawDebugSphere(
                OwnerRef->GetWorld(), OwnerRef->GetMesh()->GetSocketLocation(SocketToTrace), TraceRadius, 12, DrawColor, 1.0f, 0.25f);
        }

        // For each actor we've found, trigger damage
        for (AActor* OverlapActor : ActorsFound)
        {
            AUnrealSoulsCharacter* OverlapCharacter = Cast<AUnrealSoulsCharacter>(OverlapActor);
            if (!OverlapCharacter)
            {
                continue;
            }

            // If the character has already been damaged, early exit
            if (!OverlapCharacter->bCanReceiveDamage)
            {
                continue;
            }

            FGameplayEventData GameplayEventData{};
            GameplayEventData.Instigator = OwnerRef;
            GameplayEventData.Target = OverlapActor;
            GameplayEventData.TargetData = UAbilitySystemBlueprintLibrary::AbilityTargetDataFromActor(OverlapCharacter);
            UAbilitySystemBlueprintLibrary::SendGameplayEventToActor(OwnerRef, TagToSend, GameplayEventData);
        }
    }
}
