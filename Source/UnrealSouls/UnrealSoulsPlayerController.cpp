// Fill out your copyright notice in the Description page of Project Settings.

#include "UnrealSoulsPlayerController.h"

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
	}
}

void AUnrealSoulsPlayerController::OnMoveTriggered(const FInputActionValue& ActionValue)
{
	UCharacterMovementComponent* Movement = Cast<UCharacterMovementComponent>(PlayerCharacter->GetMovementComponent());
	if (Movement->MovementMode == EMovementMode::MOVE_None)
	{
		return;
	}

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
		PlayerCharacter->AddMovementInput(UpDirection, MovementVector.Y);
	}
}

void AUnrealSoulsPlayerController::OnLookTriggered(const FInputActionValue& ActionValue)
{
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

void AUnrealSoulsPlayerController::ShowPrompt_Implementation(const FText& Text) {}

void AUnrealSoulsPlayerController::HidePrompt_Implementation() {}
