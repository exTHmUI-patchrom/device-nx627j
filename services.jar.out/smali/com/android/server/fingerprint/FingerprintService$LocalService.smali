.class final Lcom/android/server/fingerprint/FingerprintService$LocalService;
.super Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceInternal;
.source "FingerprintService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/fingerprint/FingerprintService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "LocalService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/fingerprint/FingerprintService;


# direct methods
.method constructor <init>(Lcom/android/server/fingerprint/FingerprintService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/fingerprint/FingerprintService;

    .line 2218
    iput-object p1, p0, Lcom/android/server/fingerprint/FingerprintService$LocalService;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-direct {p0, p1}, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceInternal;-><init>(Lcom/android/server/fingerprint/FingerprintService;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized getCanGoToSleepByPowerKey()Z
    .locals 1

    monitor-enter p0

    .line 2227
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/fingerprint/FingerprintService$LocalService;->mCanGoToSleepByPowerKey:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/fingerprint/FingerprintService$LocalService;
    throw v0
.end method

.method public declared-synchronized setCanGoToSleepByPowerKey(Z)V
    .locals 0
    .param p1, "canGoToSleep"    # Z

    monitor-enter p0

    .line 2222
    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/fingerprint/FingerprintService$LocalService;->mCanGoToSleepByPowerKey:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2223
    monitor-exit p0

    return-void

    .line 2221
    .end local p1    # "canGoToSleep":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/fingerprint/FingerprintService$LocalService;
    throw p1
.end method
