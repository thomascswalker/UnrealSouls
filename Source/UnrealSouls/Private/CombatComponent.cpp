// Fill out your copyright notice in the Description page of Project Settings.

#include "CombatComponent.h"
#include "Attackable.h"
#include "Kismet/KismetSystemLibrary.h"
#include "UnrealSoulsCharacter.h"

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

FCombatData UCombatComponent::GetData()
{
	FCombatData OutData;
	OutData.bCanDealDamage = bCanDealDamage;
	OutData.bCanTakeDamage = bCanTakeDamage;
	OutData.bIsAttacking = bIsAttacking;
	OutData.bIsBlocking = bIsBlocking;
	return OutData;
}

float UCombatComponent::GetBaseDamage()
{
	return 50.0f;
}

bool UCombatComponent::CanTakeDamage_Implementation()
{
	AUnrealSoulsCharacter* Character = Cast<AUnrealSoulsCharacter>(GetOwner());
	float CurrentHealth = Character->HealthComponent->Value;
	return bCanTakeDamage && CurrentHealth > 0.0f;
}

void UCombatComponent::OnTakeDamageStart_Implementation(float DamageTaken, AActor* Attacker)
{
	bCanTakeDamage = false;

	AUnrealSoulsCharacter* Character = Cast<AUnrealSoulsCharacter>(GetOwner());
	const bool bPlayedSuccessfully = Character->PlayMontage(Character->HitMontage, this, "OnTakeDamageEnd");

	Character->HealthWidgetComponent->SetVisibility(true);
	Character->HealthComponent->Deplete(DamageTaken);
}

void UCombatComponent::OnTakeDamageEnd_Implementation(UAnimMontage* Montage, bool bInterrupted)
{
	bCanTakeDamage = true;
}

void UCombatComponent::OnAttackStart_Implementation()
{
	// Start attacking
	bIsAttacking = true;

	// https://www.tomlooman.com/unreal-engine-cpp-timers/
	// Start a trace to loop the tracing of our attack
	if (AttackTimerHandle.IsValid())
	{
		GetWorld()->GetTimerManager().ClearTimer(AttackTimerHandle);
	}
	GetWorld()->GetTimerManager().SetTimer(AttackTimerHandle, this, &UCombatComponent::OnAttackTrace, AttackTraceRate, true);

	// Play the attacking montage
	AUnrealSoulsCharacter* Character = Cast<AUnrealSoulsCharacter>(GetOwner());
	Character->PlayMontage(Character->AttackMontage, this, "OnAttackEnd");

	// Broadcast that we've begun attacking
	AttackStarted.Broadcast();
}

void UCombatComponent::OnAttackTrace_Implementation()
{
	FVector Start = GetAttackTraceStart().GetValue();
	FVector End = GetAttackTraceEnd().GetValue();

	FHitResult OutHit;

	TArray<AActor*> ActorsToIgnore;
	ActorsToIgnore.Add(GetOwner());

	float Length = (Start - End).Length();
	const bool bHitSuccessful = UKismetSystemLibrary::CapsuleTraceSingle(this, Start, End, 25.0f, Length, UEngineTypes::ConvertToTraceType(ECC_Pawn),
		true, ActorsToIgnore, EDrawDebugTrace::ForDuration, OutHit, true, FLinearColor::Red, FLinearColor::Green, 0.1f);

	if (bHitSuccessful)
	{
		if (!OutHit.GetActor()->GetClass()->ImplementsInterface(UAttackable::StaticClass()))
		{
			return;
		}

		UCombatComponent* OtherComp = IAttackable::Execute_GetCombatComponent(OutHit.GetActor());
		if (OtherComp && OtherComp->CanTakeDamage())
		{
			OtherComp->OnTakeDamageStart(GetBaseDamage(), GetOwner());
		}
	}
}

void UCombatComponent::OnAttackHit_Implementation(AActor* HitActor)
{
	FString Message = FString::Printf(TEXT("Attacking: %s"), *HitActor->GetName());
	GEngine->AddOnScreenDebugMessage(1, AttackTraceRate, FColor::Green, Message);

	UCombatComponent* OtherComponent = IAttackable::Execute_GetCombatComponent(HitActor);
	IAttackable::Execute_StartDamage(HitActor, GetBaseDamage(), GetOwner());
	AttackHit.Broadcast();
}

void UCombatComponent::OnAttackEnd_Implementation()
{
	bIsAttacking = false;
	GetWorld()->GetTimerManager().ClearTimer(AttackTimerHandle);
	AttackEnded.Broadcast();
}

void UCombatComponent::OnDeathStart_Implementation()
{
	AUnrealSoulsCharacter* Character = Cast<AUnrealSoulsCharacter>(GetOwner());
	UAnimInstance* AnimInstance = (Character->GetMesh()) ? Character->GetMesh()->GetAnimInstance() : nullptr;
	if (AnimInstance)
	{
		AnimInstance->StopAllMontages(0.0f);
	}

	Character->HealthWidgetComponent->SetVisibility(false);

	bCanTakeDamage = false;
	const bool bPlayedSuccessfully = Character->PlayMontage(Character->DeathMontage, this, "OnDeathEnd");
}

void UCombatComponent::OnDeathEnd_Implementation(UAnimMontage* Montage, bool bInterrupted)
{
	GetOwner()->Destroy();
}
