.class Lcom/android/server/wifi/WifiController$DefaultState;
.super Lcom/android/internal/util/State;
.source "WifiController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DefaultState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiController;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiController;

    .line 259
    iput-object p1, p0, Lcom/android/server/wifi/WifiController$DefaultState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    .line 263
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$DefaultState;->this$0:Lcom/android/server/wifi/WifiController;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiController;->access$202(Lcom/android/server/wifi/WifiController;Z)Z

    .line 264
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 268
    iget v0, p1, Landroid/os/Message;->what:I

    const v1, 0x26001

    const/4 v2, 0x1

    if-eq v0, v1, :cond_7

    const v1, 0x2601e

    if-eq v0, v1, :cond_6

    packed-switch v0, :pswitch_data_0

    .line 345
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WifiController.handleMessage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 278
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$DefaultState;->this$0:Lcom/android/server/wifi/WifiController;

    const-string v1, "Recovery has been throttled, disable wifi"

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiController;->access$700(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V

    .line 279
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$DefaultState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v0}, Lcom/android/server/wifi/WifiController;->access$800(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiStateMachinePrime;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachinePrime;->shutdownWifi()V

    .line 280
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$DefaultState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v1, p0, Lcom/android/server/wifi/WifiController$DefaultState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v1}, Lcom/android/server/wifi/WifiController;->access$900(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$StaDisabledState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiController;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 281
    goto/16 :goto_0

    .line 283
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$DefaultState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v1, p0, Lcom/android/server/wifi/WifiController$DefaultState;->this$0:Lcom/android/server/wifi/WifiController;

    const v3, 0x26012

    invoke-virtual {v1, v3}, Lcom/android/server/wifi/WifiController;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiController;->deferMessage(Landroid/os/Message;)V

    .line 284
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$DefaultState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v0}, Lcom/android/server/wifi/WifiController;->access$800(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiStateMachinePrime;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachinePrime;->shutdownWifi()V

    .line 285
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$DefaultState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v1, p0, Lcom/android/server/wifi/WifiController$DefaultState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v1}, Lcom/android/server/wifi/WifiController;->access$900(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$StaDisabledState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiController;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 286
    goto/16 :goto_0

    .line 334
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$DefaultState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v0}, Lcom/android/server/wifi/WifiController;->access$800(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiStateMachinePrime;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachinePrime;->stopSoftAPMode()V

    .line 336
    :pswitch_3
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$DefaultState;->this$0:Lcom/android/server/wifi/WifiController;

    const-string v1, "SoftAp mode disabled, determine next state"

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiController;->access$2100(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V

    .line 337
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$DefaultState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v0}, Lcom/android/server/wifi/WifiController;->access$1300(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiSettingsStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiSettingsStore;->isWifiToggleEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 338
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$DefaultState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v1, p0, Lcom/android/server/wifi/WifiController$DefaultState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v1}, Lcom/android/server/wifi/WifiController;->access$1700(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$DeviceActiveState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiController;->transitionTo(Lcom/android/internal/util/IState;)V

    goto/16 :goto_0

    .line 339
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$DefaultState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v0}, Lcom/android/server/wifi/WifiController;->access$1800(Lcom/android/server/wifi/WifiController;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 340
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$DefaultState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v1, p0, Lcom/android/server/wifi/WifiController$DefaultState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v1}, Lcom/android/server/wifi/WifiController;->access$1900(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiController;->transitionTo(Lcom/android/internal/util/IState;)V

    goto/16 :goto_0

    .line 288
    :pswitch_4
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$DefaultState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v0, v2}, Lcom/android/server/wifi/WifiController;->access$1002(Lcom/android/server/wifi/WifiController;Z)Z

    .line 289
    goto/16 :goto_0

    .line 291
    :pswitch_5
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$DefaultState;->this$0:Lcom/android/server/wifi/WifiController;

    const-string v1, "DEFERRED_TOGGLE ignored due to state change"

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiController;->access$1100(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V

    .line 292
    goto/16 :goto_0

    .line 297
    :pswitch_6
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/android/server/wifi/WifiController$DefaultState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v0}, Lcom/android/server/wifi/WifiController;->access$1200(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiApConfigStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiApConfigStore;->getDualSapStatus()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 298
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$DefaultState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v1, p0, Lcom/android/server/wifi/WifiController$DefaultState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v1}, Lcom/android/server/wifi/WifiController;->access$900(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$StaDisabledState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiController;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 301
    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$DefaultState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v0}, Lcom/android/server/wifi/WifiController;->access$1300(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiSettingsStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiSettingsStore;->isAirplaneModeOn()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 302
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$DefaultState;->this$0:Lcom/android/server/wifi/WifiController;

    const-string v1, "drop softap requests when in airplane mode"

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiController;->access$1400(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V

    .line 303
    goto/16 :goto_0

    .line 305
    :cond_2
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v2, :cond_3

    .line 306
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 307
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$DefaultState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v0}, Lcom/android/server/wifi/WifiController;->access$800(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiStateMachinePrime;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/wifi/SoftApModeConfiguration;

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachinePrime;->enterSoftAPMode(Lcom/android/server/wifi/SoftApModeConfiguration;)V

    .line 308
    goto/16 :goto_0

    .line 309
    :cond_3
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$DefaultState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v0}, Lcom/android/server/wifi/WifiController;->access$800(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiStateMachinePrime;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachinePrime;->stopSoftAPMode()V

    .line 311
    goto :goto_0

    .line 313
    :pswitch_7
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$DefaultState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v0}, Lcom/android/server/wifi/WifiController;->access$1300(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiSettingsStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiSettingsStore;->isAirplaneModeOn()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 314
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$DefaultState;->this$0:Lcom/android/server/wifi/WifiController;

    const-string v1, "Airplane mode toggled, shutdown all modes"

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiController;->access$1500(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V

    .line 315
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$DefaultState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v0}, Lcom/android/server/wifi/WifiController;->access$800(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiStateMachinePrime;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachinePrime;->shutdownWifi()V

    .line 316
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$DefaultState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v1, p0, Lcom/android/server/wifi/WifiController$DefaultState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v1}, Lcom/android/server/wifi/WifiController;->access$900(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$StaDisabledState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiController;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 318
    :cond_4
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$DefaultState;->this$0:Lcom/android/server/wifi/WifiController;

    const-string v1, "Airplane mode disabled, determine next state"

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiController;->access$1600(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V

    .line 319
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$DefaultState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v0}, Lcom/android/server/wifi/WifiController;->access$1300(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiSettingsStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiSettingsStore;->isWifiToggleEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 320
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$DefaultState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v1, p0, Lcom/android/server/wifi/WifiController$DefaultState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v1}, Lcom/android/server/wifi/WifiController;->access$1700(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$DeviceActiveState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiController;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 321
    :cond_5
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$DefaultState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v0}, Lcom/android/server/wifi/WifiController;->access$1800(Lcom/android/server/wifi/WifiController;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 322
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$DefaultState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v1, p0, Lcom/android/server/wifi/WifiController$DefaultState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v1}, Lcom/android/server/wifi/WifiController;->access$1900(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiController;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 276
    :cond_6
    :pswitch_8
    goto :goto_0

    .line 329
    :cond_7
    :pswitch_9
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v2, :cond_8

    .line 330
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$DefaultState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v1, p0, Lcom/android/server/wifi/WifiController$DefaultState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v1}, Lcom/android/server/wifi/WifiController;->access$2000(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$EcmState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiController;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 347
    :cond_8
    :goto_0
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x26007
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_2
        :pswitch_9
        :pswitch_3
        :pswitch_8
        :pswitch_1
        :pswitch_8
        :pswitch_0
        :pswitch_8
        :pswitch_8
    .end packed-switch
.end method
