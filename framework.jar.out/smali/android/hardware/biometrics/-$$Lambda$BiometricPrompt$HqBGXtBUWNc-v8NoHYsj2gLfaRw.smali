.class public final synthetic Landroid/hardware/biometrics/-$$Lambda$BiometricPrompt$HqBGXtBUWNc-v8NoHYsj2gLfaRw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Landroid/hardware/biometrics/BiometricPrompt;

.field private final synthetic f$1:Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;

.field private final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Landroid/hardware/biometrics/BiometricPrompt;Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/biometrics/-$$Lambda$BiometricPrompt$HqBGXtBUWNc-v8NoHYsj2gLfaRw;->f$0:Landroid/hardware/biometrics/BiometricPrompt;

    iput-object p2, p0, Landroid/hardware/biometrics/-$$Lambda$BiometricPrompt$HqBGXtBUWNc-v8NoHYsj2gLfaRw;->f$1:Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;

    iput p3, p0, Landroid/hardware/biometrics/-$$Lambda$BiometricPrompt$HqBGXtBUWNc-v8NoHYsj2gLfaRw;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Landroid/hardware/biometrics/-$$Lambda$BiometricPrompt$HqBGXtBUWNc-v8NoHYsj2gLfaRw;->f$0:Landroid/hardware/biometrics/BiometricPrompt;

    iget-object v1, p0, Landroid/hardware/biometrics/-$$Lambda$BiometricPrompt$HqBGXtBUWNc-v8NoHYsj2gLfaRw;->f$1:Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;

    iget v2, p0, Landroid/hardware/biometrics/-$$Lambda$BiometricPrompt$HqBGXtBUWNc-v8NoHYsj2gLfaRw;->f$2:I

    invoke-static {v0, v1, v2}, Landroid/hardware/biometrics/BiometricPrompt;->lambda$sendError$0(Landroid/hardware/biometrics/BiometricPrompt;Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;I)V

    return-void
.end method
