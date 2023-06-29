// Fill out your copyright notice in the Description page of Project Settings.

#include "Entities/Bonfire.h"
#include "UnrealSoulsCharacter.h"
#include "EntitySubsystem.h"
#include "PlayerFunctionLibrary.h"

// Sets default values
ABonfire::ABonfire()
{
    // Set this actor to call Tick() every frame.  You can turn this off to improve performance if you don't need it.
    PrimaryActorTick.bCanEverTick = true;
}

// Called when the game starts or when spawned
void ABonfire::BeginPlay()
{
    Super::BeginPlay();
}

// Called every frame
void ABonfire::Tick(float DeltaTime)
{
    Super::Tick(DeltaTime);
}

void ABonfire::Interact_Implementation(AActor* OtherActor)
{
    UE_LOG(LogTemp, Display, TEXT("Interacting with %s"), *OtherActor->GetName())

    AUnrealSoulsCharacter* Character = Cast<AUnrealSoulsCharacter>(OtherActor);
    if (!Character)
    {
        UE_LOG(LogTemp, Error, TEXT("%s cannot interact with a bonfire."), *OtherActor->GetName())
        return;
    }

    if (!bBonfireLit)
    {
        LightBonfire();
        return;
    }

    // If the character is already resting, we can't interact here
    if (Character->IsResting())
    {
        UE_LOG(LogTemp, Error, TEXT("Character already resting."))
        return;
    }

    // Make the character rest
    Character->SetResting(true);

    // Hide the interaction prompt
    UPlayerFunctionLibrary::HidePrompt(this);
     
    // Respawn all entities
    UEntitySubsystem* EntitySubsystem = GetWorld()->GetGameInstance()->GetSubsystem<UEntitySubsystem>();
    EntitySubsystem->RespawnAllEntities();
}

FText ABonfire::GetActionText_Implementation()
{
    FString Text = bBonfireLit ? "Rest at bonfire" : "Light bonfire";
    return FText::FromString(Text);
}

void ABonfire::LightBonfire_Implementation(){}
