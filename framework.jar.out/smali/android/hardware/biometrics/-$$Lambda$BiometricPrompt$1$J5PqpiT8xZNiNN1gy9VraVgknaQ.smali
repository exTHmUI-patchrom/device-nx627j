.class public final synthetic Landroid/hardware/biometrics/-$$Lambda$BiometricPrompt$1$J5PqpiT8xZNiNN1gy9VraVgknaQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Landroid/hardware/biometrics/BiometricPrompt$1;


# direct methods
.method public synthetic constructor <init>(Landroid/hardware/biometrics/BiometricPrompt$1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/biometrics/-$$Lambda$BiometricPrompt$1$J5PqpiT8xZNiNN1gy9VraVgknaQ;->f$0:Landroid/hardware/biometrics/BiometricPrompt$1;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Landroid/hardware/biometrics/-$$Lambda$BiometricPrompt$1$J5PqpiT8xZNiNN1gy9VraVgknaQ;->f$0:Landroid/hardware/biometrics/BiometricPrompt$1;

    invoke-static {v0}, Landroid/hardware/biometrics/BiometricPrompt$1;->lambda$onDialogDismissed$1(Landroid/hardware/biometrics/BiometricPrompt$1;)V

    return-void
.end method
