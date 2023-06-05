// Fill out your copyright notice in the Description page of Project Settings.

#include "UnrealSoulsPlayerController.h"

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
		AActor* TargetActor = Cast<AActor>(CurrentTarget.GetObject());
		if (TargetActor)
		{
			// Get the lookat rotation towards the current target
			FRotator LookAt = UKismetMathLibrary::FindLookAtRotation(PlayerCharacter->GetActorLocation(), TargetActor->GetActorLocation());

			// Only set the Yaw of the current rotation
			FRotator NewRotation = PlayerCharacter->GetCapsuleComponent()->GetComponentRotation();
			NewRotation.Yaw = LookAt.Yaw;

			// Rotate the controller
			SetControlRotation(LookAt);
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
	}
}

void AUnrealSoulsPlayerController::OnMoveTriggered(const FInputActionValue& ActionValue)
{
	// Disable input when we can't move
	UCharacterMovementComponent* Movement = Cast<UCharacterMovementComponent>(PlayerCharacter->GetMovementComponent());
	if (Movement->MovementMode == EMovementMode::MOVE_None)
	{
		return;
	}

	// Disable movement while falling
	if (Movement->IsFalling())
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
	// If we're currently targeting something, don't allow looking around
	if (CurrentTarget.GetObject() != nullptr)
	{
		return;
	}
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
	if (PlayerCharacter->bIsSprinting && PlayerCharacter->StaminaComponent->Value > 0.0f)
	{
		PlayerCharacter->Jump();
		PlayerCharacter->StaminaComponent->Deplete(PlayerCharacter->JumpCost);
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
		GEngine->AddOnScreenDebugMessage(-1, 5.0f, FColor::Green, FString(TEXT("Clearing target")));
		CurrentTarget.SetObject(nullptr);
		return;
	}

	GEngine->AddOnScreenDebugMessage(-1, 5.0f, FColor::Yellow, FString(TEXT("Targeting...")));

	// Get the start and end locations of our sweep trace
	float TraceRadius = 100.0f;
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
	QueryParams.bDebugQuery = true;

	// Create our sphere collision shape
	FCollisionShape SphereTrace = FCollisionShape::MakeSphere(TraceRadius);

	// Do the trace, exiting if we hit nothing
	const bool bHitResult = GetWorld()->SweepMultiByChannel(OutHits, SweepStart, SweepEnd, FQuat::Identity, ECC_Pawn, SphereTrace, QueryParams);
	if (!bHitResult)
	{
		GEngine->AddOnScreenDebugMessage(-1, 5.0f, FColor::Red, FString(TEXT("Not hits.")));
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
		GEngine->AddOnScreenDebugMessage(-1, 5.0f, FColor::Green, FString::Printf(TEXT("Hit Result: %s"), *Hit.GetActor()->GetName()));
		DrawDebugSphere(GetWorld(), Hit.GetActor()->GetActorLocation(), SphereTrace.GetSphereRadius(), 12, FColor::Blue, false, 2.0f);

		CurrentTarget.SetObject(Hit.GetActor());
		return;
	}

	// Set the target to the closest actor
}

void AUnrealSoulsPlayerController::ShowPrompt_Implementation(const FText& Text) {}

void AUnrealSoulsPlayerController::HidePrompt_Implementation() {}
