// Fill out your copyright notice in the Description page of Project Settings.

#pragma once

#include "Animation/AnimNotifies/AnimNotifyState.h"
#include "CoreMinimal.h"
#include "GameplayTagContainer.h"

#include "MeleeAttackingDamage.generated.h"

/**
 *
 */
UCLASS()
class UNREALSOULS_API UMeleeAttackingDamage : public UAnimNotifyState
{
    GENERATED_BODY()

public:
    UMeleeAttackingDamage();

    UPROPERTY(BlueprintReadOnly, EditDefaultsOnly)
    float TraceRadius;
    UPROPERTY(BlueprintReadOnly, EditDefaultsOnly)
    bool bShowTrace;
    UPROPERTY(BlueprintReadOnly, EditDefaultsOnly)
    FName SocketToTrace;
    UPROPERTY(BlueprintReadOnly, EditDefaultsOnly)
    FGameplayTag TagToSend;

    virtual void NotifyTick(
        USkeletalMeshComponent* MeshComp, UAnimSequenceBase* Animation, float FrameDeltaTime, const FAnimNotifyEventReference& EventReference);
};
