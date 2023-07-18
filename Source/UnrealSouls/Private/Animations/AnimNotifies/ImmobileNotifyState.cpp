// Fill out your copyright notice in the Description page of Project Settings.


#include "Animations/AnimNotifies/ImmobileNotifyState.h"
#include "Characters/UnrealSoulsCharacter.h"

void UImmobileNotifyState::NotifyBegin(
    USkeletalMeshComponent* MeshComp, UAnimSequenceBase* Animation, float TotalDuration, const FAnimNotifyEventReference& EventReference)
{
    AUnrealSoulsCharacter* Character = Cast<AUnrealSoulsCharacter>(MeshComp->GetOwner());
    if (!Character)
    {
        return;
    }
    Character->GetCharacterMovement()->SetMovementMode(EMovementMode::MOVE_None);
}

void UImmobileNotifyState::NotifyEnd(USkeletalMeshComponent* MeshComp, UAnimSequenceBase* Animation, const FAnimNotifyEventReference& EventReference)
{
    AUnrealSoulsCharacter* Character = Cast<AUnrealSoulsCharacter>(MeshComp->GetOwner());
    if (!Character)
    {
        return;
    }
    Character->GetCharacterMovement()->SetMovementMode(EndMoveState);
}
