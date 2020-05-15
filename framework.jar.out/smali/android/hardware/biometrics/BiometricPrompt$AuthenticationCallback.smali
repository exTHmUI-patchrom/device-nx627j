.class public abstract Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;
.super Landroid/hardware/biometrics/BiometricAuthenticator$AuthenticationCallback;
.source "BiometricPrompt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/biometrics/BiometricPrompt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AuthenticationCallback"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 316
    invoke-direct {p0}, Landroid/hardware/biometrics/BiometricAuthenticator$AuthenticationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthenticationAcquired(I)V
    .locals 0
    .param p1, "acquireInfo"    # I

    .line 354
    return-void
.end method

.method public onAuthenticationError(ILjava/lang/CharSequence;)V
    .locals 0
    .param p1, "errorCode"    # I
    .param p2, "errString"    # Ljava/lang/CharSequence;

    .line 325
    return-void
.end method

.method public onAuthenticationFailed()V
    .locals 0

    .line 347
    return-void
.end method

.method public onAuthenticationHelp(ILjava/lang/CharSequence;)V
    .locals 0
    .param p1, "helpCode"    # I
    .param p2, "helpString"    # Ljava/lang/CharSequence;

    .line 335
    return-void
.end method

.method public onAuthenticationSucceeded(Landroid/hardware/biometrics/BiometricAuthenticator$AuthenticationResult;)V
    .locals 4
    .param p1, "result"    # Landroid/hardware/biometrics/BiometricAuthenticator$AuthenticationResult;

    .line 362
    new-instance v0, Landroid/hardware/biometrics/BiometricPrompt$AuthenticationResult;

    .line 363
    invoke-virtual {p1}, Landroid/hardware/biometrics/BiometricAuthenticator$AuthenticationResult;->getCryptoObject()Landroid/hardware/biometrics/CryptoObject;

    move-result-object v1

    check-cast v1, Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;

    .line 364
    invoke-virtual {p1}, Landroid/hardware/biometrics/BiometricAuthenticator$AuthenticationResult;->getId()Landroid/hardware/biometrics/BiometricAuthenticator$BiometricIdentifier;

    move-result-object v2

    .line 365
    invoke-virtual {p1}, Landroid/hardware/biometrics/BiometricAuthenticator$AuthenticationResult;->getUserId()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Landroid/hardware/biometrics/BiometricPrompt$AuthenticationResult;-><init>(Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;Landroid/hardware/biometrics/BiometricAuthenticator$BiometricIdentifier;I)V

    .line 362
    invoke-virtual {p0, v0}, Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;->onAuthenticationSucceeded(Landroid/hardware/biometrics/BiometricPrompt$AuthenticationResult;)V

    .line 366
    return-void
.end method

.method public onAuthenticationSucceeded(Landroid/hardware/biometrics/BiometricPrompt$AuthenticationResult;)V
    .locals 0
    .param p1, "result"    # Landroid/hardware/biometrics/BiometricPrompt$AuthenticationResult;

    .line 341
    return-void
.end method
