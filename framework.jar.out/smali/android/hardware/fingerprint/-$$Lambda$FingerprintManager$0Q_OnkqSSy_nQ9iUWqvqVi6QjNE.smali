.class public final synthetic Landroid/hardware/fingerprint/-$$Lambda$FingerprintManager$0Q_OnkqSSy_nQ9iUWqvqVi6QjNE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Landroid/hardware/fingerprint/FingerprintManager;

.field private final synthetic f$1:Landroid/hardware/biometrics/BiometricAuthenticator$AuthenticationCallback;


# direct methods
.method public synthetic constructor <init>(Landroid/hardware/fingerprint/FingerprintManager;Landroid/hardware/biometrics/BiometricAuthenticator$AuthenticationCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/fingerprint/-$$Lambda$FingerprintManager$0Q_OnkqSSy_nQ9iUWqvqVi6QjNE;->f$0:Landroid/hardware/fingerprint/FingerprintManager;

    iput-object p2, p0, Landroid/hardware/fingerprint/-$$Lambda$FingerprintManager$0Q_OnkqSSy_nQ9iUWqvqVi6QjNE;->f$1:Landroid/hardware/biometrics/BiometricAuthenticator$AuthenticationCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroid/hardware/fingerprint/-$$Lambda$FingerprintManager$0Q_OnkqSSy_nQ9iUWqvqVi6QjNE;->f$0:Landroid/hardware/fingerprint/FingerprintManager;

    iget-object v1, p0, Landroid/hardware/fingerprint/-$$Lambda$FingerprintManager$0Q_OnkqSSy_nQ9iUWqvqVi6QjNE;->f$1:Landroid/hardware/biometrics/BiometricAuthenticator$AuthenticationCallback;

    invoke-static {v0, v1}, Landroid/hardware/fingerprint/FingerprintManager;->lambda$authenticate$0(Landroid/hardware/fingerprint/FingerprintManager;Landroid/hardware/biometrics/BiometricAuthenticator$AuthenticationCallback;)V

    return-void
.end method
