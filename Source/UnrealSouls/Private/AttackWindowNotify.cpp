// Fill out your copyright notice in the Description page of Project Settings.


#include "AttackWindowNotify.h"
#include "../UnrealSoulsCharacter.h"

bool UAttackWindowNotify::Received_Notify(USkeletalMeshComponent* MeshComp, UAnimSequenceBase* Animation, const FAnimNotifyEventReference& EventReference)
{
	AUnrealSoulsCharacter* Character = Cast<AUnrealSoulsCharacter>(MeshComp->GetOwner());
	if (!Character)
	{
		return false;
	}
	FString Message = FString::Printf(TEXT("Attacking!!!"));
	Character->CombatComponent->bCanDealDamage = true;

	return true;
}
