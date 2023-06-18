// Fill out your copyright notice in the Description page of Project Settings.

#include "UnrealSoulsPlayerController.h"

#include "Blueprint/WidgetLayoutLibrary.h"
#include "Kismet/KismetMathLibrary.h"

AUnrealSoulsPlayerController::AUnrealSoulsPlayerController() {}

void AUnrealSoulsPlayerController::BeginPlay()
{
	Super::BeginPlay();

	PlayerCharacter = Cast<AUnrealSoulsPlayerCharacter>(GetPawn());

	UEnhancedInputLocalPlayerSubsystem* Subsystem = ULocalPlayer::GetSubsystem<UEnhancedInputLocalPlayerSubsystem>(GetLocalPlayer());
	if (Subsystem)
	{
		Subsystem->ClearAllMappings();
		Subsystem->AddMappingContext(DefaultMappingContext, 0);
	}
}

void AUnrealSoulsPlayerController::Tick(float DeltaTime)
{
	if (CurrentTarget.GetObject() != nullptr)
	{
		AUnrealSoulsCharacter* TargetActor = Cast<AUnrealSoulsCharacter>(CurrentTarget.GetObject());
		if (TargetActor)
		{
			if (!TargetActor->IsTargetable())
			{
				Untarget();
				return;
			}

			// If we're blocking, rotate towards the target
			if (false) // PlayerCharacter->CombatComponent->IsBlocking()
			{
				// Get the LookAt rotation from the player to the target
				// Rotate the controller
				FRotator LookAt = UKismetMathLibrary::FindLookAtRotation(PlayerCharacter->GetActorLocation(), TargetActor->GetActorLocation());
				SetControlRotation(LookAt);

				// Rotate the player, but only the Yaw
				PlayerCharacter->GetCapsuleComponent()->SetWorldRotation(FRotator(0.0f, LookAt.Yaw, 0.0f));
			}

			// Get the 2D Coordinates of the new target location
			FVector2D ScreenLocation;
			const bool bProjected =
				UWidgetLayoutLibrary::ProjectWorldLocationToWidgetPosition(this, TargetActor->GetActorLocation(), ScreenLocation, true);
			if (bProjected)
			{
				TargetLocationChanged.Broadcast(ScreenLocation);
			}
		}
	}
}

void AUnrealSoulsPlayerController::SetupInputComponent()
{
	// Set up gameplay key bindings
	Super::SetupInputComponent();

	// Set up action bindings
	if (UEnhancedInputComponent* EnhancedInputComponent = CastChecked<UEnhancedInputComponent>(InputComponent))
	{
		// Moving
		EnhancedInputComponent->BindAction(MoveAction, ETriggerEvent::Triggered, this, &AUnrealSoulsPlayerController::OnMoveTriggered);

		// Looking
		EnhancedInputComponent->BindAction(LookAction, ETriggerEvent::Triggered, this, &AUnrealSoulsPlayerController::OnLookTriggered);

		// Rolling
		EnhancedInputComponent->BindAction(RollAction, ETriggerEvent::Triggered, this, &AUnrealSoulsPlayerController::OnRollTriggered);

		// Sprinting
		EnhancedInputComponent->BindAction(SprintAction, ETriggerEvent::Triggered, this, &AUnrealSoulsPlayerController::OnSprintTriggered);
		EnhancedInputComponent->BindAction(SprintAction, ETriggerEvent::Completed, this, &AUnrealSoulsPlayerController::OnSprintCompleted);

		// Jump
		EnhancedInputComponent->BindAction(JumpAction, ETriggerEvent::Triggered, this, &AUnrealSoulsPlayerController::OnJumpTriggered);

		// Interact
		EnhancedInputComponent->BindAction(InteractAction, ETriggerEvent::Triggered, this, &AUnrealSoulsPlayerController::OnInteractTriggered);

		// Target
		EnhancedInputComponent->BindAction(TargetAction, ETriggerEvent::Triggered, this, &AUnrealSoulsPlayerController::OnTargetTriggered);

		// Attacking
		EnhancedInputComponent->BindAction(AttackAction, ETriggerEvent::Triggered, this, &AUnrealSoulsPlayerController::OnAttackTriggered);

		// Blocking
		EnhancedInputComponent->BindAction(BlockAction, ETriggerEvent::Triggered, this, &AUnrealSoulsPlayerController::OnBlockTriggered);
		EnhancedInputComponent->BindAction(BlockAction, ETriggerEvent::Completed, this, &AUnrealSoulsPlayerController::OnBlockCompleted);
	}
}

void AUnrealSoulsPlayerController::OnMoveTriggered(const FInputActionValue& ActionValue)
{
	// If we're resting, allow moving to exit the resting state
	if (PlayerCharacter->bIsResting)
	{
		PlayerCharacter->OnRest(false);
	}

	// Disable input when we can't move
	UCharacterMovementComponent* Movement = Cast<UCharacterMovementComponent>(PlayerCharacter->GetMovementComponent());
	if (Movement->MovementMode == EMovementMode::MOVE_None)
	{
		return;
	}

	// Disallow movement while attacking, rolling, or falling
	if (Movement->IsFalling() || PlayerCharacter->bIsRolling) // || PlayerCharacter->CombatComponent->bIsAttacking
	{
		return;
	}

	// Get the current movement input vector
	FVector2D MovementVector = ActionValue.Get<FVector2D>();

	// Find out which way is forward
	const FRotator Rotation = GetControlRotation();
	const FRotator YawRotation(0, Rotation.Yaw, 0);

	// Get forward vector
	const FVector ForwardDirection = FRotationMatrix(YawRotation).GetUnitAxis(EAxis::X);

	// Get right vector
	const FVector RightDirection = FRotationMatrix(YawRotation).GetUnitAxis(EAxis::Y);

	// Get up vector
	const FVector UpDirection = FRotationMatrix(YawRotation).GetUnitAxis(EAxis::Z);

	// Add movement
	if (!PlayerCharacter->bIsClimbing)
	{
		PlayerCharacter->AddMovementInput(ForwardDirection, MovementVector.Y);
		PlayerCharacter->AddMovementInput(RightDirection, MovementVector.X);
	}
	else
	{
		PlayerCharacter->ClimbingComponent->AddMovementInput(MovementVector.Y);
	}
}

void AUnrealSoulsPlayerController::OnLookTriggered(const FInputActionValue& ActionValue)
{
	// If we're currently targeting something AND blocking, don't allow looking around
	//if (CurrentTarget.GetObject() != nullptr) // && PlayerCharacter->CombatComponent->IsBlocking())
	//{
	//	return;
	//}
	FVector2D LookVector = ActionValue.Get<FVector2D>();

	// Multiply the look input vector by the look sensitivity
	LookVector *= GetLookSensitivity();

	// Add camera yaw/pitch input
	PlayerCharacter->AddControllerYawInput(LookVector.X);
	PlayerCharacter->AddControllerPitchInput(LookVector.Y);
}

void AUnrealSoulsPlayerController::OnRollTriggered(const FInputActionValue& ActionValue)
{
	PlayerCharacter->StartRoll();
}

void AUnrealSoulsPlayerController::OnSprintTriggered(const FInputActionValue& ActionValue)
{
	PlayerCharacter->StartSprint();
}

void AUnrealSoulsPlayerController::OnSprintCompleted(const FInputActionValue& ActionValue)
{
	PlayerCharacter->EndSprint();
}

void AUnrealSoulsPlayerController::OnJumpTriggered(const FInputActionValue& ActionValue)
{
	if (PlayerCharacter->bIsSprinting) // && PlayerCharacter->StaminaComponent->Value > 0.0f)
	{
		PlayerCharacter->Jump();
		//PlayerCharacter->StaminaComponent->Deplete(PlayerCharacter->JumpCost);
	}
}

void AUnrealSoulsPlayerController::OnInteractTriggered(const FInputActionValue& ActionValue)
{
	if (CurrentInteractiveEntity.GetObject() != nullptr)
	{
		IInteractive::Execute_Interact(CurrentInteractiveEntity.GetObject(), PlayerCharacter);
	}
}

void AUnrealSoulsPlayerController::OnTargetTriggered(const FInputActionValue& ActionValue)
{
	if (CurrentTarget.GetObject() != nullptr)
	{
		Untarget();
		return;
	}

	// Get the start and end locations of our sweep trace
	float TraceRadius = 200.0f;
	FVector SweepStart = PlayerCharacter->GetActorLocation();

	// Find out which way is forward
	const FRotator Rotation = GetControlRotation();
	const FRotator YawRotation(0, Rotation.Yaw, 0);

	// Get forward vector
	const FVector ForwardDirection = FRotationMatrix(YawRotation).GetUnitAxis(EAxis::X);

	// Sweep out from the character in the direction of the camera
	FVector SweepEnd = PlayerCharacter->GetActorLocation() + (ForwardDirection * TargetDistance);
	TArray<FHitResult> OutHits;

	// Build query params, ignoring the player character
	FCollisionQueryParams QueryParams;
	QueryParams.AddIgnoredActor(PlayerCharacter);

	// Create our sphere collision shape
	FCollisionShape SphereTrace = FCollisionShape::MakeSphere(TraceRadius);

	// Do the trace, exiting if we hit nothing
	const bool bHitResult = GetWorld()->SweepMultiByChannel(OutHits, SweepStart, SweepEnd, FQuat::Identity, ECC_Pawn, SphereTrace, QueryParams);
	if (!bHitResult)
	{
		return;
	}

	AActor* ClosestActor = nullptr;
	for (FHitResult& Hit : OutHits)
	{
		// Is this a valid targetable pawn?
		ITargetable* TargetPawn = Cast<ITargetable>(Hit.GetActor());
		if (!TargetPawn)
		{
			continue;
		}

		CurrentTarget.SetObject(Hit.GetActor());
		TargetVisibilityChanged.Broadcast(true);
		return;
	}
}

void AUnrealSoulsPlayerController::Untarget()
{
	CurrentTarget.SetObject(nullptr);
	TargetVisibilityChanged.Broadcast(false);
}

void AUnrealSoulsPlayerController::OnAttackTriggered(const FInputActionValue& ActionValue)
{
	PlayerCharacter->OnAttack();
	//if (!PlayerCharacter->CombatComponent->bIsAttacking)
	//{
	//	PlayerCharacter->CombatComponent->OnAttackStart(EAttackType::Light);
	//}
}

void AUnrealSoulsPlayerController::OnBlockTriggered(const FInputActionValue& ActionValue)
{
	//PlayerCharacter->CombatComponent->SetBlocking(true);
}

void AUnrealSoulsPlayerController::OnBlockCompleted(const FInputActionValue& ActionValue)
{
	//PlayerCharacter->CombatComponent->SetBlocking(false);
}

void AUnrealSoulsPlayerController::ShowPrompt_Implementation(const FText& Text) {}

void AUnrealSoulsPlayerController::HidePrompt_Implementation() {}
