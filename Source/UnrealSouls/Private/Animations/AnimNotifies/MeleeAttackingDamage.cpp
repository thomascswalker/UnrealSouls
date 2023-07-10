// Fill out your copyright notice in the Description page of Project Settings.

#include "Animations/AnimNotifies/MeleeAttackingDamage.h"
#include "Abilities/GameplayAbilityTargetTypes.h"
#include "AbilitySystemBlueprintLibrary.h"
#include "Characters/UnrealSoulsCharacter.h"
#include "Kismet/KismetSystemLibrary.h"

void UMeleeAttackingDamage::NotifyBegin(
    USkeletalMeshComponent* MeshComp, UAnimSequenceBase* Animation, float FrameDeltaTime, const FAnimNotifyEventReference& EventReference)
{
    AActor* OwnerRef = MeshComp->GetOwner();

    if (!OwnerRef->Implements<UCombatInterface>())
    {
        UE_LOG(LogTemp, Error, TEXT("Character does not implement ICombatInterface!"))
        return;
    }

    Mesh = MeshComp;
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

void UMeleeAttackingDamage::NotifyEnd(USkeletalMeshComponent* MeshComp, UAnimSequenceBase* Animation, const FAnimNotifyEventReference& EventReference)
{
    Hitbox->OnComponentBeginOverlap.RemoveAll(this);
}

void UMeleeAttackingDamage::OnHitboxOverlap(UPrimitiveComponent* OverlappedComponent, AActor* OtherActor, UPrimitiveComponent* OtherComponent,
    int32 OtherBodyIndex, bool bFromSweep, const FHitResult& SweepResult)
{
    AActor* OwnerRef = OverlappedComponent->GetOwner();
    AUnrealSoulsCharacter* OtherCharacter = Cast<AUnrealSoulsCharacter>(OtherActor);

    if (!OtherCharacter)
    {
        UE_LOG(LogTemp, Error, TEXT("Hit non-attackable actor"))
        return;
    }

    UKismetSystemLibrary::DrawDebugSphere(OtherActor->GetWorld(), OtherActor->GetActorLocation(), 50.0f, 16, FLinearColor::Green, 2.0f, 1.0f);

    // If the character has already been damaged, early exit
    if (!OtherCharacter->bCanReceiveDamage)
    {
        UE_LOG(LogTemp, Error, TEXT("Character cannot be damaged"))
        return;
    }

    FGameplayEventData GameplayEventData{};
    GameplayEventData.Instigator = OwnerRef;
    GameplayEventData.Target = OtherCharacter;
    GameplayEventData.TargetData = UAbilitySystemBlueprintLibrary::AbilityTargetDataFromActor(OtherCharacter);
    UAbilitySystemBlueprintLibrary::SendGameplayEventToActor(OwnerRef, TagToSend, GameplayEventData);

    UE_LOG(LogTemp, Log, TEXT("Damaged: %s"), *OtherActor->GetName())
}
