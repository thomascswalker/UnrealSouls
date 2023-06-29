// Fill out your copyright notice in the Description page of Project Settings.

#pragma once

#include "CoreMinimal.h"
#include "GameFramework/Actor.h"
#include "StaticEntity.h"

#include "Bonfire.generated.h"

UCLASS()
class UNREALSOULS_API ABonfire : public AStaticEntity
{
    GENERATED_BODY()

public:
    // Sets default values for this actor's properties
    ABonfire();

protected:
    // Called when the game starts or when spawned
    virtual void BeginPlay() override;

public:
    // Called every frame
    virtual void Tick(float DeltaTime) override;

public:
    /* Interaction */

    UPROPERTY(BlueprintReadWrite, EditAnywhere)
    bool bBonfireLit = false;

    void Interact_Implementation(AActor* OtherActor);
    FText GetActionText_Implementation();

    UFUNCTION(BlueprintCallable, BlueprintNativeEvent)
    void LightBonfire();
};
