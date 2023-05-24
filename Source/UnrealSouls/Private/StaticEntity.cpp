// Fill out your copyright notice in the Description page of Project Settings.


#include "StaticEntity.h"

// Sets default values
AStaticEntity::AStaticEntity()
{
 	// Set this actor to call Tick() every frame.  You can turn this off to improve performance if you don't need it.
	PrimaryActorTick.bCanEverTick = true;

	Mesh = CreateDefaultSubobject<UStaticMeshComponent>(TEXT("Mesh"));
	Mesh->SetupAttachment(RootComponent);

	CapsuleComponent = CreateDefaultSubobject<UCapsuleComponent>(TEXT("Trigger"));
	CapsuleComponent->SetupAttachment(Mesh);
}

// Called when the game starts or when spawned
void AStaticEntity::BeginPlay()
{
	Super::BeginPlay();
	
}

// Called every frame
void AStaticEntity::Tick(float DeltaTime)
{
	Super::Tick(DeltaTime);

}

void AStaticEntity::Interact_Implementation() {}

FText AStaticEntity::GetActionText_Implementation()
{
	return FText::FromString(FString("Default Action"));
}
