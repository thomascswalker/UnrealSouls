// Fill out your copyright notice in the Description page of Project Settings.

#pragma once

#include "Blueprint/UserWidget.h"
#include "Components/Image.h"
#include "CoreMinimal.h"

#include "Icon.generated.h"

#define MAKE_ICON_PATH(x) "Texture2D'/Game/Textures/Interface/Controls/" + x + "." + x + "'"

static const TMap<FKey, FString> IconNameMap = {
    { EKeys::Gamepad_FaceButton_Bottom, "T_Xbox_A" },
    { EKeys::Gamepad_FaceButton_Right, "T_Xbox_B" },
    { EKeys::Gamepad_FaceButton_Left, "T_Xbox_X" },
    { EKeys::Gamepad_FaceButton_Top, "T_Xbox_Y" },
};

UCLASS() class UNREALSOULS_API UIcon : public UUserWidget
{
    GENERATED_BODY()

    FString GetIconPath(FKey InKey)
    {
        return MAKE_ICON_PATH(*IconNameMap.Find(InKey));
    }

public:
    UPROPERTY(BlueprintReadWrite, meta = (BindWidget))
    UImage* Image;

    UPROPERTY(BlueprintReadOnly, EditAnywhere)
    FKey Key;

    virtual bool Initialize()
    {
        Super::Initialize();
        bool bIconSet = SetIcon(Key);
        return bIconSet;
    }

    bool SetIcon(FKey InKey)
    {
        FString IconPath = GetIconPath(InKey);
        UTexture2D* Texture = Cast<UTexture2D>(StaticLoadObject(UTexture2D::StaticClass(), NULL, *IconPath));
        if (Texture)
        {
            Image->SetBrushFromTexture(Texture);
            Image->SetDesiredSizeOverride(FVector2D(48.0f, 48.0f));
            return true;
        }
        else
        {
            UE_LOG(LogTemp, Error, TEXT("Unable to load texture asset %s"), *IconPath);
            return false;
        }
    }
};
