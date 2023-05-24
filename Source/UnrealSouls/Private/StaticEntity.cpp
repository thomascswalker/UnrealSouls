// Fill out your copyright notice in the Description page of Project Settings.

#include "StaticEntity.h"
#include "UnrealSouls/UnrealSoulsPlayerCharacter.h"
#include "UnrealSouls/UnrealSoulsPlayerController.h"
#include "Components/SceneComponent.h"

// Sets default values
AStaticEntity::AStaticEntity()
{
	// Set this actor to call Tick() every frame.  You can turn this off to improve performance if you don't need it.
	PrimaryActorTick.bCanEverTick = true;

	Mesh = CreateDefaultSubobject<UStaticMeshComponent>(TEXT("Mesh"));
	Mesh->SetRelativeRotation(FQuat::MakeFromEuler(FVector(0, 0, 90)));
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

void AStaticEntity::OnOverlapBegin(UPrimitiveComponent* OverlappedComp, AActor* OtherActor, UPrimitiveComponent* OtherComp, int32 OtherBodyIndex, bool bFromSweep, const FHitResult& SweepResult)
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
	Controller->ShowPrompt(GetActionText());
	Controller->CurrentInteractiveEntity.SetInterface(this);
	Controller->CurrentInteractiveEntity.SetObject(this);
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
	Controller->HidePrompt();
	Controller->CurrentInteractiveEntity.SetInterface(nullptr);
	Controller->CurrentInteractiveEntity.SetObject(nullptr);
}

void AStaticEntity::Interact_Implementation() {}

FText AStaticEntity::GetActionText_Implementation()
{
	return FText::FromString(FString("Default Action"));
}
