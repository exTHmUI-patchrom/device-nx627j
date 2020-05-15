.class Lcom/android/server/fingerprint/AuthenticationClient$2;
.super Ljava/lang/Object;
.source "AuthenticationClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/fingerprint/AuthenticationClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/fingerprint/AuthenticationClient;


# direct methods
.method constructor <init>(Lcom/android/server/fingerprint/AuthenticationClient;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/fingerprint/AuthenticationClient;

    .line 356
    iput-object p1, p0, Lcom/android/server/fingerprint/AuthenticationClient$2;->this$0:Lcom/android/server/fingerprint/AuthenticationClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 359
    const-string v0, "FingerprintService"

    const-string/jumbo v1, "vibrateRunnable start"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient$2;->this$0:Lcom/android/server/fingerprint/AuthenticationClient;

    invoke-virtual {v0}, Lcom/android/server/fingerprint/AuthenticationClient;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 361
    .local v0, "powerManager":Landroid/os/PowerManager;
    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v1

    .line 362
    .local v1, "isInteractive":Z
    invoke-virtual {v0}, Landroid/os/PowerManager;->isWakeUpWithoutBrightnessOn()Z

    move-result v2

    .line 364
    .local v2, "isWakeUpWithoutBrightnessOn":Z
    const-string v3, "FingerprintService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "vibrateRunnable, isInteractive="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", isWakeUpWithoutBrightnessOn="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    sget-boolean v3, Landroid/hardware/fingerprint/FingerprintManager;->DUAL_FINGERPRINT_ENABLE:Z

    if-eqz v3, :cond_1

    if-eqz v1, :cond_0

    if-eqz v2, :cond_1

    .line 368
    :cond_0
    const-string v3, "FingerprintService"

    const-string/jumbo v4, "onAuthenticationFailed, don\'t vibrate when screenoff"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 370
    :cond_1
    iget-object v3, p0, Lcom/android/server/fingerprint/AuthenticationClient$2;->this$0:Lcom/android/server/fingerprint/AuthenticationClient;

    invoke-virtual {v3}, Lcom/android/server/fingerprint/AuthenticationClient;->vibrateError()V

    .line 372
    :goto_0
    return-void
.end method
