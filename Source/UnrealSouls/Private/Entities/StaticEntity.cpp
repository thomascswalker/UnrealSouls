// Fill out your copyright notice in the Description page of Project Settings.

#include "Entities/StaticEntity.h"
#include "Characters/PlayerFunctionLibrary.h"
#include "Characters/UnrealSoulsPlayerCharacter.h"
#include "Components/SceneComponent.h"
#include "Controllers/UnrealSoulsPlayerController.h"

// Sets default values
AStaticEntity::AStaticEntity()
{
    // Set this actor to call Tick() every frame.  You can turn this off to improve performance if you don't need it.
    PrimaryActorTick.bCanEverTick = true;

    Mesh = CreateDefaultSubobject<UStaticMeshComponent>(TEXT("Mesh"));
    Mesh->SetupAttachment(RootComponent);

    Collider = CreateDefaultSubobject<UCapsuleComponent>(TEXT("Collider"));
    Collider->AttachToComponent(Mesh, FAttachmentTransformRules::KeepRelativeTransform);
}

void AStaticEntity::OnConstruction(const FTransform& Transform)
{
    Super::OnConstruction(Transform);
}

// Called when the game starts or when spawned
void AStaticEntity::BeginPlay()
{
    Super::BeginPlay();

    Collider->OnComponentBeginOverlap.AddUniqueDynamic(this, &AStaticEntity::OnOverlapBegin);
    Collider->OnComponentEndOverlap.AddUniqueDynamic(this, &AStaticEntity::OnOverlapEnd);
}

// Called every frame
void AStaticEntity::Tick(float DeltaTime)
{
    Super::Tick(DeltaTime);
}

void AStaticEntity::OnOverlapBegin(UPrimitiveComponent* OverlappedComp, AActor* OtherActor, UPrimitiveComponent* OtherComp, int32 OtherBodyIndex,
    bool bFromSweep, const FHitResult& SweepResult)
{
    AUnrealSoulsPlayerCharacter* Character = Cast<AUnrealSoulsPlayerCharacter>(OtherActor);
    if (!Character)
    {
        return;
    }
    AUnrealSoulsPlayerController* Controller = Cast<AUnrealSoulsPlayerController>(Character->GetController());
    if (!Controller)
    {
        return;
    }

    if (!IInteractive::Execute_CanInteract(this))
    {
        return;
    }

    UPlayerFunctionLibrary::ShowPrompt(this, GetActionText());
    Controller->CurrentInteractiveCharacter.SetInterface(this);
    Controller->CurrentInteractiveCharacter.SetObject(this);
}

void AStaticEntity::OnOverlapEnd(UPrimitiveComponent* OverlappedComp, AActor* OtherActor, UPrimitiveComponent* OtherComp, int32 OtherBodyIndex)
{
    AUnrealSoulsPlayerCharacter* Character = Cast<AUnrealSoulsPlayerCharacter>(OtherActor);
    if (!Character)
    {
        return;
    }
    AUnrealSoulsPlayerController* Controller = Cast<AUnrealSoulsPlayerController>(Character->GetController());
    if (!Controller)
    {
        return;
    }

    if (!IInteractive::Execute_CanInteract(this))
    {
        return;
    }

    UPlayerFunctionLibrary::HidePrompt(this);
    Controller->CurrentInteractiveCharacter.SetInterface(nullptr);
    Controller->CurrentInteractiveCharacter.SetObject(nullptr);
}

void AStaticEntity::Interact_Implementation(AActor* OtherActor) {}

FText AStaticEntity::GetActionText_Implementation()
{
    return FText::FromString(FString("Default Action"));
}
