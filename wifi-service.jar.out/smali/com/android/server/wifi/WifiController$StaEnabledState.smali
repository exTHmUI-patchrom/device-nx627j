.class Lcom/android/server/wifi/WifiController$StaEnabledState;
.super Lcom/android/internal/util/State;
.source "WifiController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StaEnabledState"
.end annotation


# instance fields
.field private final br:Landroid/content/BroadcastReceiver;

.field final synthetic this$0:Lcom/android/server/wifi/WifiController;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiController;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiController;

    .line 450
    iput-object p1, p0, Lcom/android/server/wifi/WifiController$StaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    .line 452
    new-instance v0, Lcom/android/server/wifi/WifiController$StaEnabledState$1;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/WifiController$StaEnabledState$1;-><init>(Lcom/android/server/wifi/WifiController$StaEnabledState;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiController$StaEnabledState;->br:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private checkAndHandleDelayDisconnectDuration()Z
    .locals 13

    .line 464
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$StaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v0}, Lcom/android/server/wifi/WifiController;->access$3100(Lcom/android/server/wifi/WifiController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_disconnect_delay_duration"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 466
    .local v0, "delay":I
    if-lez v0, :cond_0

    .line 467
    iget-object v1, p0, Lcom/android/server/wifi/WifiController$StaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DISCONNECT_DELAY_DURATION set. Delaying disconnection by: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " seconds"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/server/wifi/WifiController;->access$3200(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V

    .line 468
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.qualcomm.qti.net.wifi.WIFI_DISCONNECT_IN_PROGRESS"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 469
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v3, 0x4000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 470
    iget-object v3, p0, Lcom/android/server/wifi/WifiController$StaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v3}, Lcom/android/server/wifi/WifiController;->access$3100(Lcom/android/server/wifi/WifiController;)Landroid/content/Context;

    move-result-object v4

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/server/wifi/WifiController$StaEnabledState;->br:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/android/server/wifi/WifiController$StaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    .line 471
    invoke-static {v3}, Lcom/android/server/wifi/WifiController;->access$2200(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiStateMachine;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 470
    move-object v5, v1

    invoke-virtual/range {v4 .. v12}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 473
    iget-object v3, p0, Lcom/android/server/wifi/WifiController$StaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v4, p0, Lcom/android/server/wifi/WifiController$StaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    const v5, 0x2601e

    invoke-virtual {v4, v5}, Lcom/android/server/wifi/WifiController;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    mul-int/lit16 v5, v0, 0x3e8

    int-to-long v5, v5

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/wifi/WifiController;->sendMessageDelayed(Landroid/os/Message;J)V

    .line 474
    iget-object v3, p0, Lcom/android/server/wifi/WifiController$StaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v4, p0, Lcom/android/server/wifi/WifiController$StaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v4}, Lcom/android/server/wifi/WifiController;->access$3300(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$QcStaDisablingState;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/wifi/WifiController;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 477
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    if-lez v0, :cond_1

    const/4 v2, 0x1

    nop

    :cond_1
    return v2
.end method


# virtual methods
.method public enter()V
    .locals 2

    .line 482
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$StaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    const-string v1, "StaEnabledState.enter()"

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiController;->access$3400(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V

    .line 483
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 487
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    .line 538
    :pswitch_0
    return v1

    .line 535
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$StaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v1, p0, Lcom/android/server/wifi/WifiController$StaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v1}, Lcom/android/server/wifi/WifiController;->access$900(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$StaDisabledState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiController;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 536
    goto/16 :goto_0

    .line 515
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$StaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v0}, Lcom/android/server/wifi/WifiController;->access$1800(Lcom/android/server/wifi/WifiController;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 516
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$StaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v1, p0, Lcom/android/server/wifi/WifiController$StaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v1}, Lcom/android/server/wifi/WifiController;->access$900(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$StaDisabledState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiController;->transitionTo(Lcom/android/internal/util/IState;)V

    goto/16 :goto_0

    .line 518
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$StaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v1, p0, Lcom/android/server/wifi/WifiController$StaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v1}, Lcom/android/server/wifi/WifiController;->access$1900(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiController;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 520
    goto :goto_0

    .line 528
    :pswitch_3
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$StaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v0}, Lcom/android/server/wifi/WifiController;->access$800(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiStateMachinePrime;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachinePrime;->stopSoftAPMode()V

    .line 532
    :pswitch_4
    goto :goto_0

    .line 522
    :pswitch_5
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v2, :cond_1

    .line 524
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$StaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v0}, Lcom/android/server/wifi/WifiController;->access$1300(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiSettingsStore;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/WifiSettingsStore;->setWifiSavedState(I)V

    .line 526
    :cond_1
    return v1

    .line 501
    :pswitch_6
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$StaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v0}, Lcom/android/server/wifi/WifiController;->access$1300(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiSettingsStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiSettingsStore;->isAirplaneModeOn()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 503
    invoke-direct {p0}, Lcom/android/server/wifi/WifiController$StaEnabledState;->checkAndHandleDelayDisconnectDuration()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 504
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$StaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiController;->deferMessage(Landroid/os/Message;)V

    .line 505
    return v2

    .line 508
    :cond_2
    return v1

    .line 511
    :cond_3
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$StaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    const-string v1, "airplane mode toggled - and airplane mode is off.  return handled"

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiController;->access$3500(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V

    .line 512
    return v2

    .line 489
    :pswitch_7
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$StaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v0}, Lcom/android/server/wifi/WifiController;->access$1300(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiSettingsStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiSettingsStore;->isWifiToggleEnabled()Z

    move-result v0

    if-nez v0, :cond_6

    .line 490
    invoke-direct {p0}, Lcom/android/server/wifi/WifiController$StaEnabledState;->checkAndHandleDelayDisconnectDuration()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 491
    goto :goto_0

    .line 492
    :cond_4
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$StaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v0}, Lcom/android/server/wifi/WifiController;->access$1800(Lcom/android/server/wifi/WifiController;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 493
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$StaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v1, p0, Lcom/android/server/wifi/WifiController$StaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v1}, Lcom/android/server/wifi/WifiController;->access$1900(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiController;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 495
    :cond_5
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$StaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v1, p0, Lcom/android/server/wifi/WifiController$StaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v1}, Lcom/android/server/wifi/WifiController;->access$900(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$StaDisabledState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiController;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 541
    :cond_6
    :goto_0
    return v2

    :pswitch_data_0
    .packed-switch 0x26008
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
