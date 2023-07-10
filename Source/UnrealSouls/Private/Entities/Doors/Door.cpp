// Fill out your copyright notice in the Description page of Project Settings.

#include "Entities/Doors/Door.h"
#include "Characters/PlayerFunctionLibrary.h"

ADoor::ADoor()
{
    PrimaryActorTick.bCanEverTick = true;

    DoorA = CreateDefaultSubobject<UStaticMeshComponent>(TEXT("DoorA"));
    DoorB = CreateDefaultSubobject<UStaticMeshComponent>(TEXT("DoorB"));
    AnimLocationBox = CreateDefaultSubobject<UBoxComponent>(TEXT("AnimLocation"));
}

void ADoor::OnConstruction(const FTransform& Transform)
{
    Super::OnConstruction(Transform);

    if (DoorA)
    {
        DoorA->AttachToComponent(RootComponent, FAttachmentTransformRules::KeepRelativeTransform);
    }

    if (bDoubleDoor && DoorB)
    {
        DoorB->AttachToComponent(RootComponent, FAttachmentTransformRules::KeepRelativeTransform);
    }

    AnimLocationBox->AttachToComponent(RootComponent, FAttachmentTransformRules::KeepRelativeTransform);
}

bool ADoor::CanInteract_Implementation()
{
    return !bIsOpen;
}

FText ADoor::GetActionText_Implementation()
{
    return FText::FromString("Open");
}

void ADoor::Interact_Implementation(AActor* OtherActor)
{
    if (!CanOpen())
    {
        return;
    }

    bIsOpen = true;
    UPlayerFunctionLibrary::HidePrompt(this);

    AUnrealSoulsCharacter* Character = Cast<AUnrealSoulsCharacter>(OtherActor);
    if (!Character)
    {
        return;
    }
    InteractingActor = Character;

    UCharacterMovementComponent* Movement = Cast<UCharacterMovementComponent>(Character->GetMovementComponent());
    Movement->SetMovementMode(EMovementMode::MOVE_None);

    FLatentActionInfo LatentInfo;
    LatentInfo.CallbackTarget = this;
    LatentInfo.ExecutionFunction = FName("OnMoveComponentToComplete");
    LatentInfo.UUID = 0;
    LatentInfo.Linkage = 0;

    FVector TargetLocation = AnimLocationBox->GetComponentLocation();
    FRotator TargetRotation = GetActorForwardVector().ToOrientationRotator();
    UKismetSystemLibrary::MoveComponentTo(
        Character->GetCapsuleComponent(), TargetLocation, TargetRotation, true, true, 0.25f, false, EMoveComponentAction::Type::Move, LatentInfo);
}

void ADoor::OnAnimateDoor_Implementation() {}

void ADoor::OnMoveComponentToComplete()
{
    AUnrealSoulsCharacter* Character = Cast<AUnrealSoulsCharacter>(InteractingActor);
    UAnimInstance* AnimInstance = (Character->GetMesh()) ? Character->GetMesh()->GetAnimInstance() : nullptr;

    if (OpenMontage && AnimInstance)
    {
        float MontageLength = AnimInstance->Montage_Play(OpenMontage);
        const bool bPlayedSuccessfully = (MontageLength > 0.f);
        if (!bPlayedSuccessfully)
        {
            return;
        }

        FOnMontageEnded OnMontageEndedDelegate;
        OnMontageEndedDelegate.BindUFunction(this, "OnMontageEnded");
        AnimInstance->Montage_SetEndDelegate(OnMontageEndedDelegate, OpenMontage);
    }

    OnAnimateDoor();
}

void ADoor::OnMontageEnded(UAnimMontage* Montage, bool bInterrupted)
{
    AUnrealSoulsCharacter* Character = Cast<AUnrealSoulsCharacter>(InteractingActor);
    UCharacterMovementComponent* Movement = Cast<UCharacterMovementComponent>(Character->GetMovementComponent());
    Movement->SetMovementMode(EMovementMode::MOVE_Walking);
}
