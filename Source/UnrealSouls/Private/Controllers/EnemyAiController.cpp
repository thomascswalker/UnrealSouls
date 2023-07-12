// Fill out your copyright notice in the Description page of Project Settings.


#include "Controllers/EnemyAiController.h"
#include "Characters/UnrealSoulsCharacter.h"

AEnemyAiController::AEnemyAiController()
{
    BehaviorComponent = CreateDefaultSubobject<UBehaviorTreeComponent>(TEXT("BehaviorComponent"));
    BlackboardComponent = CreateDefaultSubobject<UBlackboardComponent>(TEXT("BlackboardComponent"));
}

void AEnemyAiController::OnPossess(APawn* InPawn)
{
    Super::OnPossess(InPawn);

    AUnrealSoulsCharacter* Enemy = Cast<AUnrealSoulsCharacter>(InPawn);
    if (Enemy)
    {
        UBlackboardData* BlackboardAsset = Enemy->GetCharacterInfo().BehaviorTree->BlackboardAsset;
        if (ensure(BlackboardAsset))
        {
            BlackboardComponent->InitializeBlackboard(*BlackboardAsset);
        }
        else
        {
            UE_LOG(LogTemp, Error, TEXT("Unable to load blackboard asset!"))
        }

        BehaviorComponent->StartTree(*Enemy->GetCharacterInfo().BehaviorTree);
    }
}

void AEnemyAiController::OnUnPossess()
{
    Super::OnUnPossess();

    BehaviorComponent->StopTree();
}
