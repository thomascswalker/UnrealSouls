// Fill out your copyright notice in the Description page of Project Settings.

#include "CombatComponent.h"
#include "Kismet/KismetSystemLibrary.h"
#include "Attackable.h"

// Sets default values for this component's properties
UCombatComponent::UCombatComponent()
{
	// Set this component to be initialized when the game starts, and to be ticked every frame.  You can turn these features
	// off to improve performance if you don't need them.
	PrimaryComponentTick.bCanEverTick = true;

	// ...
}

// Called when the game starts
void UCombatComponent::BeginPlay()
{
	Super::BeginPlay();

	// ...
}

// Called every frame
void UCombatComponent::TickComponent(float DeltaTime, ELevelTick TickType, FActorComponentTickFunction* ThisTickFunction)
{
	Super::TickComponent(DeltaTime, TickType, ThisTickFunction);

	// ...
}

TOptional<FVector> UCombatComponent::GetSocketLocation(FName SocketName)
{
	TOptional<FVector> Result;

	AActor* Owner = GetOwner();
	USkeletalMeshComponent* Mesh = Cast<USkeletalMeshComponent>(Owner->GetComponentByClass(USkeletalMeshComponent::StaticClass()));

	if (!Mesh)
	{
		return Result;
	}

	FVector Location = Mesh->GetSocketLocation(SocketName);
	return Location;
}

TOptional<FVector> UCombatComponent::GetAttackTraceStart()
{
	return GetSocketLocation("hand_rSocket");
}

TOptional<FVector> UCombatComponent::GetAttackTraceEnd()
{
	return GetSocketLocation("hand_rSocket");
}

float UCombatComponent::GetBaseDamage()
{
	return 20.0f;
}

void UCombatComponent::OnAttackStart_Implementation()
{
	// https://www.tomlooman.com/unreal-engine-cpp-timers/
	// Start a trace to loop the tracing of our attack
	if (AttackTimerHandle.IsValid())
	{
		GetWorld()->GetTimerManager().ClearTimer(AttackTimerHandle);
	}
	GetWorld()->GetTimerManager().SetTimer(AttackTimerHandle, this, &UCombatComponent::OnAttackTrace, AttackTraceRate, true);
}

void UCombatComponent::OnAttackTrace_Implementation()
{
	FVector Start = GetAttackTraceStart().GetValue();
	FVector End = GetAttackTraceEnd().GetValue();

	FHitResult OutHit;

	TArray<AActor*> ActorsToIgnore;
	ActorsToIgnore.Add(GetOwner());

	float Length = (Start - End).Length();
	const bool bHitSuccessful = UKismetSystemLibrary::CapsuleTraceSingle(
		this, Start, End, 25.0f, Length, UEngineTypes::ConvertToTraceType(ECC_Pawn), true, ActorsToIgnore, EDrawDebugTrace::ForDuration, OutHit, true, FLinearColor::Red, FLinearColor::Green, 0.1f);

	if (bHitSuccessful)
	{
		IAttackable* HitActor = Cast<IAttackable>(OutHit.GetActor());
		if (HitActor && IAttackable::Execute_CanTakeDamage(OutHit.GetActor()))
		{
			OnAttackHit(OutHit.GetActor());
		}
	}
}

void UCombatComponent::OnAttackHit_Implementation(AActor* HitActor)
{
	FString Message = FString::Printf(TEXT("Attacking: %s"), *HitActor->GetName());
	GEngine->AddOnScreenDebugMessage(1, AttackTraceRate, FColor::Green, Message);

	IAttackable::Execute_StartDamage(HitActor, GetBaseDamage(), GetOwner());
}

void UCombatComponent::AttackEnd_Implementation()
{
	GetWorld()->GetTimerManager().ClearTimer(AttackTimerHandle);
}
