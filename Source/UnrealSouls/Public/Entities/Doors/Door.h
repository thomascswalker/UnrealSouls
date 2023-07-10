// Fill out your copyright notice in the Description page of Project Settings.

#pragma once

#include "CoreMinimal.h"
#include "Entities/StaticEntity.h"

#include "Door.generated.h"

/**
 *
 */
UCLASS()
class UNREALSOULS_API ADoor : public AStaticEntity
{
    GENERATED_BODY()

public:
    ADoor();

    UPROPERTY(BlueprintReadOnly, EditDefaultsOnly, Category = "Components")
    TObjectPtr<UStaticMeshComponent> DoorA;

    UPROPERTY(BlueprintReadOnly, EditDefaultsOnly, Category = "Components")
    TObjectPtr<UStaticMeshComponent> DoorB;

    UPROPERTY(BlueprintReadOnly, EditDefaultsOnly, Category = "Components")
    TObjectPtr<UBoxComponent> AnimLocationBox;

    UPROPERTY(BlueprintReadOnly, EditDefaultsOnly)
    UAnimMontage* OpenMontage;

    UPROPERTY(BlueprintReadOnly, EditDefaultsOnly)
    bool bDoubleDoor = false;

    UPROPERTY(BlueprintReadWrite)
    bool bIsOpen = false;

    UPROPERTY(BlueprintReadOnly, EditDefaultsOnly)
    UCurveFloat* AnimCurve;

    virtual void OnConstruction(const FTransform& Transform) override;

    UFUNCTION(BlueprintCallable, meta = (ExpandBoolAsExecs = "ReturnValue"))
    FORCEINLINE bool CanOpen()
    {
        return !bIsOpen;
    }

    bool CanInteract_Implementation();
    FText GetActionText_Implementation();
    void Interact_Implementation(AActor* OtherActor);

    UFUNCTION(BlueprintCallable, BlueprintNativeEvent)
    void OnAnimateDoor();

    UFUNCTION()
    void OnMoveComponentToComplete();

    UFUNCTION()
    void OnMontageEnded(UAnimMontage* Montage, bool bInterrupted);
};
