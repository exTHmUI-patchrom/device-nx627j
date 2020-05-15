.class Lcom/android/server/wifi/WifiController$StaDisabledState;
.super Lcom/android/internal/util/State;
.source "WifiController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StaDisabledState"
.end annotation


# instance fields
.field private mDeferredEnableSerialNumber:I

.field private mDisabledTimestamp:J

.field private mHaveDeferredEnable:Z

.field final synthetic this$0:Lcom/android/server/wifi/WifiController;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiController;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiController;

    .line 352
    iput-object p1, p0, Lcom/android/server/wifi/WifiController$StaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    .line 353
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wifi/WifiController$StaDisabledState;->mDeferredEnableSerialNumber:I

    .line 354
    iput-boolean v0, p0, Lcom/android/server/wifi/WifiController$StaDisabledState;->mHaveDeferredEnable:Z

    return-void
.end method

.method private doDeferEnable(Landroid/os/Message;)Z
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .line 432
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/wifi/WifiController$StaDisabledState;->mDisabledTimestamp:J

    sub-long/2addr v0, v2

    .line 433
    .local v0, "delaySoFar":J
    iget-object v2, p0, Lcom/android/server/wifi/WifiController$StaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v2}, Lcom/android/server/wifi/WifiController;->access$2600(Lcom/android/server/wifi/WifiController;)J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    .line 434
    const/4 v2, 0x0

    return v2

    .line 437
    :cond_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiController$StaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WifiController msg "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " deferred for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/wifi/WifiController$StaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    .line 438
    invoke-static {v4}, Lcom/android/server/wifi/WifiController;->access$2600(Lcom/android/server/wifi/WifiController;)J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 437
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiController;->access$2700(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V

    .line 441
    iget-object v2, p0, Lcom/android/server/wifi/WifiController$StaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    const v3, 0x2600b

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiController;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 442
    .local v2, "deferredMsg":Landroid/os/Message;
    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v3

    iput-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 443
    iget v3, p0, Lcom/android/server/wifi/WifiController$StaDisabledState;->mDeferredEnableSerialNumber:I

    const/4 v4, 0x1

    add-int/2addr v3, v4

    iput v3, p0, Lcom/android/server/wifi/WifiController$StaDisabledState;->mDeferredEnableSerialNumber:I

    iput v3, v2, Landroid/os/Message;->arg1:I

    .line 444
    iget-object v3, p0, Lcom/android/server/wifi/WifiController$StaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v5, p0, Lcom/android/server/wifi/WifiController$StaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v5}, Lcom/android/server/wifi/WifiController;->access$2600(Lcom/android/server/wifi/WifiController;)J

    move-result-wide v5

    sub-long/2addr v5, v0

    const-wide/16 v7, 0x5

    add-long/2addr v5, v7

    invoke-virtual {v3, v2, v5, v6}, Lcom/android/server/wifi/WifiController;->sendMessageDelayed(Landroid/os/Message;J)V

    .line 445
    return v4
.end method


# virtual methods
.method public enter()V
    .locals 2

    .line 359
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$StaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v0}, Lcom/android/server/wifi/WifiController;->access$800(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiStateMachinePrime;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachinePrime;->disableWifi()V

    .line 361
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wifi/WifiController$StaDisabledState;->mDisabledTimestamp:J

    .line 362
    iget v0, p0, Lcom/android/server/wifi/WifiController$StaDisabledState;->mDeferredEnableSerialNumber:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/wifi/WifiController$StaDisabledState;->mDeferredEnableSerialNumber:I

    .line 363
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiController$StaDisabledState;->mHaveDeferredEnable:Z

    .line 364
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$StaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v0}, Lcom/android/server/wifi/WifiController;->access$2200(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiStateMachine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->clearANQPCache()V

    .line 365
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$StaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiController;->access$202(Lcom/android/server/wifi/WifiController;Z)Z

    .line 367
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 370
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    sparse-switch v0, :sswitch_data_0

    .line 426
    return v1

    .line 415
    :sswitch_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$StaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v0}, Lcom/android/server/wifi/WifiController;->access$1300(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiSettingsStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiSettingsStore;->isWifiToggleEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 418
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$StaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v1, p0, Lcom/android/server/wifi/WifiController$StaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v1}, Lcom/android/server/wifi/WifiController;->access$1700(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$DeviceActiveState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiController;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 419
    goto/16 :goto_0

    .line 420
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$StaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v0}, Lcom/android/server/wifi/WifiController;->access$1800(Lcom/android/server/wifi/WifiController;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 421
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$StaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v1, p0, Lcom/android/server/wifi/WifiController$StaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v1}, Lcom/android/server/wifi/WifiController;->access$1900(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiController;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 422
    goto/16 :goto_0

    .line 407
    :sswitch_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p0, Lcom/android/server/wifi/WifiController$StaDisabledState;->mDeferredEnableSerialNumber:I

    if-eq v0, v1, :cond_1

    .line 408
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$StaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    const-string v1, "DEFERRED_TOGGLE ignored due to serial mismatch"

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiController;->access$2400(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V

    .line 409
    goto/16 :goto_0

    .line 411
    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$StaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    const-string v1, "DEFERRED_TOGGLE handled"

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiController;->access$2500(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V

    .line 412
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$StaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Message;

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiController;->sendMessage(Landroid/os/Message;)V

    .line 413
    goto/16 :goto_0

    .line 397
    :sswitch_2
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$StaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v0}, Lcom/android/server/wifi/WifiController;->access$1300(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiSettingsStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiSettingsStore;->isAirplaneModeOn()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 398
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$StaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    const-string v1, "drop softap requests when in airplane mode"

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiController;->access$2300(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V

    .line 399
    goto :goto_0

    .line 401
    :cond_2
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v2, :cond_3

    .line 403
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$StaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v0}, Lcom/android/server/wifi/WifiController;->access$1300(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiSettingsStore;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiSettingsStore;->setWifiSavedState(I)V

    .line 405
    :cond_3
    return v1

    .line 372
    :sswitch_3
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$StaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v0}, Lcom/android/server/wifi/WifiController;->access$1300(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiSettingsStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiSettingsStore;->isWifiToggleEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 373
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiController$StaDisabledState;->doDeferEnable(Landroid/os/Message;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 374
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiController$StaDisabledState;->mHaveDeferredEnable:Z

    if-eqz v0, :cond_4

    .line 376
    iget v0, p0, Lcom/android/server/wifi/WifiController$StaDisabledState;->mDeferredEnableSerialNumber:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/android/server/wifi/WifiController$StaDisabledState;->mDeferredEnableSerialNumber:I

    .line 378
    :cond_4
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiController$StaDisabledState;->mHaveDeferredEnable:Z

    xor-int/2addr v0, v2

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiController$StaDisabledState;->mHaveDeferredEnable:Z

    .line 379
    goto :goto_0

    .line 381
    :cond_5
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$StaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v1, p0, Lcom/android/server/wifi/WifiController$StaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v1}, Lcom/android/server/wifi/WifiController;->access$1700(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$DeviceActiveState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiController;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 382
    :cond_6
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$StaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v0}, Lcom/android/server/wifi/WifiController;->access$1800(Lcom/android/server/wifi/WifiController;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 384
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$StaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v0}, Lcom/android/server/wifi/WifiController;->access$1300(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiSettingsStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiSettingsStore;->isAirplaneModeOn()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 385
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$StaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v1, p0, Lcom/android/server/wifi/WifiController$StaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v1}, Lcom/android/server/wifi/WifiController;->access$1900(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiController;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 390
    :sswitch_4
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$StaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v0}, Lcom/android/server/wifi/WifiController;->access$1800(Lcom/android/server/wifi/WifiController;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 391
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$StaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v1, p0, Lcom/android/server/wifi/WifiController$StaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v1}, Lcom/android/server/wifi/WifiController;->access$1900(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiController;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 392
    nop

    .line 428
    :cond_7
    :goto_0
    return v2

    nop

    :sswitch_data_0
    .sparse-switch
        0x26007 -> :sswitch_4
        0x26008 -> :sswitch_3
        0x2600a -> :sswitch_2
        0x2600b -> :sswitch_1
        0x26012 -> :sswitch_0
    .end sparse-switch
.end method
