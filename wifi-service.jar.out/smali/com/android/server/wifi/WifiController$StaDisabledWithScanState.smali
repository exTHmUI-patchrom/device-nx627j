.class Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;
.super Lcom/android/internal/util/State;
.source "WifiController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StaDisabledWithScanState"
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

    .line 545
    iput-object p1, p0, Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    .line 546
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;->mDeferredEnableSerialNumber:I

    .line 547
    iput-boolean v0, p0, Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;->mHaveDeferredEnable:Z

    return-void
.end method

.method private doDeferEnable(Landroid/os/Message;)Z
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .line 617
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;->mDisabledTimestamp:J

    sub-long/2addr v0, v2

    .line 618
    .local v0, "delaySoFar":J
    iget-object v2, p0, Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v2}, Lcom/android/server/wifi/WifiController;->access$2600(Lcom/android/server/wifi/WifiController;)J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    .line 619
    const/4 v2, 0x0

    return v2

    .line 622
    :cond_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;->this$0:Lcom/android/server/wifi/WifiController;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WifiController msg "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " deferred for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;->this$0:Lcom/android/server/wifi/WifiController;

    .line 623
    invoke-static {v4}, Lcom/android/server/wifi/WifiController;->access$2600(Lcom/android/server/wifi/WifiController;)J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 622
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiController;->access$4000(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V

    .line 626
    iget-object v2, p0, Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;->this$0:Lcom/android/server/wifi/WifiController;

    const v3, 0x2600b

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiController;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 627
    .local v2, "deferredMsg":Landroid/os/Message;
    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v3

    iput-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 628
    iget v3, p0, Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;->mDeferredEnableSerialNumber:I

    const/4 v4, 0x1

    add-int/2addr v3, v4

    iput v3, p0, Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;->mDeferredEnableSerialNumber:I

    iput v3, v2, Landroid/os/Message;->arg1:I

    .line 629
    iget-object v3, p0, Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v5, p0, Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v5}, Lcom/android/server/wifi/WifiController;->access$2600(Lcom/android/server/wifi/WifiController;)J

    move-result-wide v5

    sub-long/2addr v5, v0

    const-wide/16 v7, 0x5

    add-long/2addr v5, v7

    invoke-virtual {v3, v2, v5, v6}, Lcom/android/server/wifi/WifiController;->sendMessageDelayed(Landroid/os/Message;J)V

    .line 630
    return v4
.end method


# virtual methods
.method public enter()V
    .locals 2

    .line 553
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v0}, Lcom/android/server/wifi/WifiController;->access$800(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiStateMachinePrime;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachinePrime;->enterScanOnlyMode()V

    .line 557
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;->mDisabledTimestamp:J

    .line 558
    iget v0, p0, Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;->mDeferredEnableSerialNumber:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;->mDeferredEnableSerialNumber:I

    .line 559
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;->mHaveDeferredEnable:Z

    .line 560
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiController;->access$202(Lcom/android/server/wifi/WifiController;Z)Z

    .line 561
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 565
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    sparse-switch v0, :sswitch_data_0

    .line 611
    return v1

    .line 607
    :sswitch_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;->this$0:Lcom/android/server/wifi/WifiController;

    const-string v1, "WifiController: SCANNING_STOPPED when in scan mode -> StaDisabled"

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiController;->access$3900(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V

    .line 608
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v1, p0, Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v1}, Lcom/android/server/wifi/WifiController;->access$900(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$StaDisabledState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiController;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 609
    goto/16 :goto_0

    .line 600
    :sswitch_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v0}, Lcom/android/server/wifi/WifiController;->access$800(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiStateMachinePrime;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachinePrime;->stopSoftAPMode()V

    .line 604
    :sswitch_2
    goto/16 :goto_0

    .line 592
    :sswitch_3
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p0, Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;->mDeferredEnableSerialNumber:I

    if-eq v0, v1, :cond_0

    .line 593
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;->this$0:Lcom/android/server/wifi/WifiController;

    const-string v1, "DEFERRED_TOGGLE ignored due to serial mismatch"

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiController;->access$3700(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V

    .line 594
    goto :goto_0

    .line 596
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;->this$0:Lcom/android/server/wifi/WifiController;

    const-string v1, "DEFERRED_TOGGLE handled"

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiController;->access$3800(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V

    .line 597
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Message;

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiController;->sendMessage(Landroid/os/Message;)V

    .line 598
    goto :goto_0

    .line 586
    :sswitch_4
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v2, :cond_1

    .line 588
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v0}, Lcom/android/server/wifi/WifiController;->access$1300(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiSettingsStore;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiSettingsStore;->setWifiSavedState(I)V

    .line 590
    :cond_1
    return v1

    .line 567
    :sswitch_5
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v0}, Lcom/android/server/wifi/WifiController;->access$1300(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiSettingsStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiSettingsStore;->isWifiToggleEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 568
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;->doDeferEnable(Landroid/os/Message;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 569
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;->mHaveDeferredEnable:Z

    if-eqz v0, :cond_2

    .line 571
    iget v0, p0, Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;->mDeferredEnableSerialNumber:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;->mDeferredEnableSerialNumber:I

    .line 573
    :cond_2
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;->mHaveDeferredEnable:Z

    xor-int/2addr v0, v2

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;->mHaveDeferredEnable:Z

    .line 574
    goto :goto_0

    .line 576
    :cond_3
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v1, p0, Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v1}, Lcom/android/server/wifi/WifiController;->access$1700(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$DeviceActiveState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiController;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 580
    :sswitch_6
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v0}, Lcom/android/server/wifi/WifiController;->access$1800(Lcom/android/server/wifi/WifiController;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 581
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;->this$0:Lcom/android/server/wifi/WifiController;

    const-string v1, "StaDisabledWithScanState: scan no longer available"

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiController;->access$3600(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V

    .line 582
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v1, p0, Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v1}, Lcom/android/server/wifi/WifiController;->access$900(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$StaDisabledState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiController;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 613
    :cond_4
    :goto_0
    return v2

    :sswitch_data_0
    .sparse-switch
        0x26007 -> :sswitch_6
        0x26008 -> :sswitch_5
        0x2600a -> :sswitch_4
        0x2600b -> :sswitch_3
        0x2600d -> :sswitch_1
        0x2600f -> :sswitch_2
        0x26015 -> :sswitch_0
    .end sparse-switch
.end method
