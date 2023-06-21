// Fill out your copyright notice in the Description page of Project Settings.

#include "Animations/AnimNotifies/IFrameState.h"
#include "UnrealSoulsCharacter.h"

void UIFrameState::NotifyBegin(
    USkeletalMeshComponent* MeshComp, UAnimSequenceBase* Animation, float TotalDuration, const FAnimNotifyEventReference& EventReference)
{
    AUnrealSoulsCharacter* Character = Cast<AUnrealSoulsCharacter>(MeshComp->GetOwner());
    if (!Character)
    {
        UE_LOG(LogTemp, Error, TEXT("IFrameState requires AUnrealSoulsCharacter."));
        return;
    }
    Character->EnableIFrameForDuration(TotalDuration);
}

void UIFrameState::NotifyEnd(USkeletalMeshComponent* MeshComp, UAnimSequenceBase* Animation, const FAnimNotifyEventReference& EventReference)
{
    AUnrealSoulsCharacter* Character = Cast<AUnrealSoulsCharacter>(MeshComp->GetOwner());
    if (!Character)
    {
        UE_LOG(LogTemp, Error, TEXT("IFrameState requires AUnrealSoulsCharacter."));
        return;
    }
    Character->DisableIFrame();
}
