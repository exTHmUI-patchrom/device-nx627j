.class Landroid/hardware/biometrics/BiometricPrompt$ButtonInfo;
.super Ljava/lang/Object;
.source "BiometricPrompt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/biometrics/BiometricPrompt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ButtonInfo"
.end annotation


# instance fields
.field executor:Ljava/util/concurrent/Executor;

.field listener:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method constructor <init>(Ljava/util/concurrent/Executor;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0
    .param p1, "ex"    # Ljava/util/concurrent/Executor;
    .param p2, "l"    # Landroid/content/DialogInterface$OnClickListener;

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-object p1, p0, Landroid/hardware/biometrics/BiometricPrompt$ButtonInfo;->executor:Ljava/util/concurrent/Executor;

    .line 92
    iput-object p2, p0, Landroid/hardware/biometrics/BiometricPrompt$ButtonInfo;->listener:Landroid/content/DialogInterface$OnClickListener;

    .line 93
    return-void
.end method
