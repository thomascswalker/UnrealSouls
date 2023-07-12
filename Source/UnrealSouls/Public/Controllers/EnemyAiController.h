// Fill out your copyright notice in the Description page of Project Settings.

#pragma once

#include "AIController.h"
#include "BehaviorTree/BehaviorTree.h"
#include "BehaviorTree/BehaviorTreeComponent.h"
#include "BehaviorTree/BlackboardComponent.h"
#include "CoreMinimal.h"

#include "EnemyAiController.generated.h"

/**
 *
 */
UCLASS()
class UNREALSOULS_API AEnemyAiController : public AAIController
{
    GENERATED_BODY()

    UBehaviorTreeComponent* BehaviorComponent;
    UBlackboardComponent* BlackboardComponent;

    AEnemyAiController();
    virtual void OnPossess(class APawn* InPawn) override;
    virtual void OnUnPossess() override;

public:
    /** Returns BehaviorComp subobject **/
    FORCEINLINE UBehaviorTreeComponent* GetBehaviorComp() const
    {
        return BehaviorComponent;
    }

    FORCEINLINE UBlackboardComponent* GetBlackboardComp() const
    {
        return BlackboardComponent;
    }
};
