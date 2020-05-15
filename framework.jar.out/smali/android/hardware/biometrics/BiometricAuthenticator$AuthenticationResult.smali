.class public Landroid/hardware/biometrics/BiometricAuthenticator$AuthenticationResult;
.super Ljava/lang/Object;
.source "BiometricAuthenticator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/biometrics/BiometricAuthenticator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AuthenticationResult"
.end annotation


# instance fields
.field private mCryptoObject:Landroid/hardware/biometrics/CryptoObject;

.field private mIdentifier:Landroid/hardware/biometrics/BiometricAuthenticator$BiometricIdentifier;

.field private mUserId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/hardware/biometrics/CryptoObject;Landroid/hardware/biometrics/BiometricAuthenticator$BiometricIdentifier;I)V
    .locals 0
    .param p1, "crypto"    # Landroid/hardware/biometrics/CryptoObject;
    .param p2, "identifier"    # Landroid/hardware/biometrics/BiometricAuthenticator$BiometricIdentifier;
    .param p3, "userId"    # I

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Landroid/hardware/biometrics/BiometricAuthenticator$AuthenticationResult;->mCryptoObject:Landroid/hardware/biometrics/CryptoObject;

    .line 64
    iput-object p2, p0, Landroid/hardware/biometrics/BiometricAuthenticator$AuthenticationResult;->mIdentifier:Landroid/hardware/biometrics/BiometricAuthenticator$BiometricIdentifier;

    .line 65
    iput p3, p0, Landroid/hardware/biometrics/BiometricAuthenticator$AuthenticationResult;->mUserId:I

    .line 66
    return-void
.end method


# virtual methods
.method public getCryptoObject()Landroid/hardware/biometrics/CryptoObject;
    .locals 1

    .line 74
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricAuthenticator$AuthenticationResult;->mCryptoObject:Landroid/hardware/biometrics/CryptoObject;

    return-object v0
.end method

.method public getId()Landroid/hardware/biometrics/BiometricAuthenticator$BiometricIdentifier;
    .locals 1

    .line 84
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricAuthenticator$AuthenticationResult;->mIdentifier:Landroid/hardware/biometrics/BiometricAuthenticator$BiometricIdentifier;

    return-object v0
.end method

.method public getUserId()I
    .locals 1

    .line 92
    iget v0, p0, Landroid/hardware/biometrics/BiometricAuthenticator$AuthenticationResult;->mUserId:I

    return v0
.end method
