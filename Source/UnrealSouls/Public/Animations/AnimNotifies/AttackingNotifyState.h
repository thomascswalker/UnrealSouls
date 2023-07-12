// Fill out your copyright notice in the Description page of Project Settings.

#pragma once

#include "Animation/AnimNotifies/AnimNotifyState.h"
#include "Characters/CharacterInfo.h"
#include "Components/CapsuleComponent.h"
#include "CoreMinimal.h"
#include "GameplayTagContainer.h"
#include "Interfaces/CombatInterface.h"

#include "AttackingNotifyState.generated.h"

/**
 *
 */
UCLASS()
class UNREALSOULS_API UAttackingNotifyState : public UAnimNotifyState
{
    GENERATED_BODY()

public:
    UPROPERTY(BlueprintReadOnly, EditAnywhere, Category = "Combat")
    EAttackType AttackType;

    UPROPERTY(BlueprintReadOnly, EditAnywhere, Category = "Tags")
    FGameplayTag TagToSend;

    UPROPERTY(BlueprintReadOnly, EditAnywhere, Category = "Tracing")
    bool bShowTrace;

    UPROPERTY(BlueprintReadOnly, EditAnywhere, Category = "Tracing")
    float TraceRadius;

    USkeletalMeshComponent* Mesh;
    UCapsuleComponent* Hitbox;

    virtual void NotifyBegin(
        USkeletalMeshComponent* MeshComp, UAnimSequenceBase* Animation, float TotalDuration, const FAnimNotifyEventReference& EventReference);

    virtual void NotifyEnd(USkeletalMeshComponent* MeshComp, UAnimSequenceBase* Animation, const FAnimNotifyEventReference& EventReference);

    UFUNCTION()
    void OnHitboxOverlap(UPrimitiveComponent* OverlappedComponent, AActor* OtherActor, UPrimitiveComponent* OtherComponent, int32 OtherBodyIndex,
        bool bFromSweep, const FHitResult& SweepResult);
};
