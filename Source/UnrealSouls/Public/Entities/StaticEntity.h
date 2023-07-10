// Fill out your copyright notice in the Description page of Project Settings.

#pragma once

#include "Components/BoxComponent.h"
#include "Components/CapsuleComponent.h"
#include "Components/StaticMeshComponent.h"
#include "CoreMinimal.h"
#include "GameFramework/Actor.h"
#include "Interfaces/Interactive.h"

#include "StaticEntity.generated.h"

UCLASS()
class UNREALSOULS_API AStaticEntity : public AActor, public IInteractive
{
    GENERATED_BODY()

public:
    // Sets default values for this actor's properties
    AStaticEntity();

    UPROPERTY(BlueprintReadOnly, VisibleAnywhere, Category = "Components")
    TObjectPtr<UStaticMeshComponent> Mesh;

    UPROPERTY(BlueprintReadOnly, VisibleAnywhere, Category = "Components")
    TObjectPtr<UCapsuleComponent> Collider;

    UPROPERTY(BlueprintReadOnly, VisibleAnywhere)
    AActor* InteractingActor;

protected:
    virtual void OnConstruction(const FTransform& Transform) override;

    // Called when the game starts or when spawned
    virtual void BeginPlay() override;

public:
    // Called every frame
    virtual void Tick(float DeltaTime) override;

    UFUNCTION(BlueprintNativeEvent, BlueprintCallable)
    void Interact(AActor* OtherActor);

    UFUNCTION(BlueprintNativeEvent, BlueprintCallable, BlueprintPure)
    FText GetActionText();

    UFUNCTION()
    void OnOverlapBegin(UPrimitiveComponent* OverlappedComp, AActor* OtherActor, UPrimitiveComponent* OtherComp, int32 OtherBodyIndex,
        bool bFromSweep, const FHitResult& SweepResult);

    UFUNCTION()
    void OnOverlapEnd(UPrimitiveComponent* OverlappedComp, AActor* OtherActor, UPrimitiveComponent* OtherComp, int32 OtherBodyIndex);
};
