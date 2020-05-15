.class public Landroid/hardware/biometrics/BiometricPrompt$AuthenticationResult;
.super Landroid/hardware/biometrics/BiometricAuthenticator$AuthenticationResult;
.source "BiometricPrompt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/biometrics/BiometricPrompt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AuthenticationResult"
.end annotation


# direct methods
.method public constructor <init>(Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;Landroid/hardware/biometrics/BiometricAuthenticator$BiometricIdentifier;I)V
    .locals 0
    .param p1, "crypto"    # Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;
    .param p2, "identifier"    # Landroid/hardware/biometrics/BiometricAuthenticator$BiometricIdentifier;
    .param p3, "userId"    # I

    .line 298
    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/biometrics/BiometricAuthenticator$AuthenticationResult;-><init>(Landroid/hardware/biometrics/CryptoObject;Landroid/hardware/biometrics/BiometricAuthenticator$BiometricIdentifier;I)V

    .line 299
    return-void
.end method


# virtual methods
.method public getCryptoObject()Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;
    .locals 1

    .line 306
    invoke-super {p0}, Landroid/hardware/biometrics/BiometricAuthenticator$AuthenticationResult;->getCryptoObject()Landroid/hardware/biometrics/CryptoObject;

    move-result-object v0

    check-cast v0, Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;

    return-object v0
.end method

.method public bridge synthetic getCryptoObject()Landroid/hardware/biometrics/CryptoObject;
    .locals 1

    .line 288
    invoke-virtual {p0}, Landroid/hardware/biometrics/BiometricPrompt$AuthenticationResult;->getCryptoObject()Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;

    move-result-object v0

    return-object v0
.end method
