// Fill out your copyright notice in the Description page of Project Settings.

#include "UnrealSoulsPlayerCharacter.h"
#include "Camera/CameraComponent.h"
#include "Components/CapsuleComponent.h"
#include "Components/InputComponent.h"
#include "GameFramework/CharacterMovementComponent.h"
#include "GameFramework/Controller.h"
#include "GameFramework/SpringArmComponent.h"
#include "EnhancedInputComponent.h"
#include "EnhancedInputSubsystems.h"

// Sets default values
AUnrealSoulsPlayerCharacter::AUnrealSoulsPlayerCharacter()
{
	// Set size for collision capsule
	GetCapsuleComponent()->InitCapsuleSize(42.f, 96.0f);

	// Don't rotate when the controller rotates. Let that just affect the camera.
	bUseControllerRotationPitch = false;
	bUseControllerRotationYaw = false;
	bUseControllerRotationRoll = false;

	// Configure character movement
	GetCharacterMovement()->bOrientRotationToMovement = true; // Character moves in the direction of input...

	// Note: For faster iteration times these variables, and many more, can be tweaked in the Character Blueprint
	// instead of recompiling to adjust them
	GetCharacterMovement()->MaxWalkSpeed = BaseSpeed;
	GetCharacterMovement()->MinAnalogWalkSpeed = 20.f;
	GetCharacterMovement()->BrakingDecelerationWalking = 2000.f;

	// Create a camera boom (pulls in towards the player if there is a collision)
	CameraBoom = CreateDefaultSubobject<USpringArmComponent>(TEXT("CameraBoom"));
	CameraBoom->SetupAttachment(RootComponent);
	CameraBoom->bUsePawnControlRotation = true; // Rotate the arm based on the controller

	// Create a follow camera
	FollowCamera = CreateDefaultSubobject<UCameraComponent>(TEXT("FollowCamera"));
	FollowCamera->SetupAttachment(CameraBoom, USpringArmComponent::SocketName); // Attach the camera to the end of the boom and let the boom adjust to match the controller orientation
	FollowCamera->bUsePawnControlRotation = false;								// Camera does not rotate relative to arm
	FollowCamera->FieldOfView = 43.0f;


	StaminaComponent = CreateDefaultSubobject<UStatusComponent>(TEXT("StaminaComponent"));
	if (HealthComponent)
	{
		StaminaComponent->SetupAttachment(RootComponent);
	}
}

// Called when the game starts or when spawned
void AUnrealSoulsPlayerCharacter::BeginPlay()
{
	Super::BeginPlay();
}

// Called every frame
void AUnrealSoulsPlayerCharacter::Tick(float DeltaTime)
{
	Super::Tick(DeltaTime);
}

bool AUnrealSoulsPlayerCharacter::CanRoll()
{
	return !bIsRolling;
}
