// Fill out your copyright notice in the Description page of Project Settings.

#include "Animations/AnimNotifies/IFrameNotifyState.h"
#include "Characters/UnrealSoulsCharacter.h"

void UIFrameNotifyState::NotifyBegin(USkeletalMeshComponent* MeshComp, UAnimSequenceBase* Animation, float TotalDuration, const FAnimNotifyEventReference& EventReference)
{
    AUnrealSoulsCharacter* Character = Cast<AUnrealSoulsCharacter>(MeshComp->GetOwner());
    if (!Character)
    {
        return;
    }
    Character->EnableIFrameForDuration(TotalDuration);
}

void UIFrameNotifyState::NotifyEnd(USkeletalMeshComponent* MeshComp, UAnimSequenceBase* Animation, const FAnimNotifyEventReference& EventReference)
{
    AUnrealSoulsCharacter* Character = Cast<AUnrealSoulsCharacter>(MeshComp->GetOwner());
    if (!Character)
    {
        return;
    }
    Character->DisableIFrame();
}
