.class public interface abstract Landroid/hardware/biometrics/BiometricAuthenticator;
.super Ljava/lang/Object;
.source "BiometricAuthenticator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/biometrics/BiometricAuthenticator$AuthenticationCallback;,
        Landroid/hardware/biometrics/BiometricAuthenticator$AuthenticationResult;,
        Landroid/hardware/biometrics/BiometricAuthenticator$BiometricIdentifier;
    }
.end annotation


# virtual methods
.method public abstract authenticate(Landroid/hardware/biometrics/CryptoObject;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/hardware/biometrics/BiometricAuthenticator$AuthenticationCallback;)V
.end method

.method public abstract authenticate(Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/hardware/biometrics/BiometricAuthenticator$AuthenticationCallback;)V
.end method
