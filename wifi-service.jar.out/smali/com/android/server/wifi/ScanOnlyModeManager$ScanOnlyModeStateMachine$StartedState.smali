.class Lcom/android/server/wifi/ScanOnlyModeManager$ScanOnlyModeStateMachine$StartedState;
.super Lcom/android/internal/util/State;
.source "ScanOnlyModeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/ScanOnlyModeManager$ScanOnlyModeStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StartedState"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/wifi/ScanOnlyModeManager$ScanOnlyModeStateMachine;


# direct methods
.method private constructor <init>(Lcom/android/server/wifi/ScanOnlyModeManager$ScanOnlyModeStateMachine;)V
    .locals 0

    .line 222
    iput-object p1, p0, Lcom/android/server/wifi/ScanOnlyModeManager$ScanOnlyModeStateMachine$StartedState;->this$1:Lcom/android/server/wifi/ScanOnlyModeManager$ScanOnlyModeStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wifi/ScanOnlyModeManager$ScanOnlyModeStateMachine;Lcom/android/server/wifi/ScanOnlyModeManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/wifi/ScanOnlyModeManager$ScanOnlyModeStateMachine;
    .param p2, "x1"    # Lcom/android/server/wifi/ScanOnlyModeManager$1;

    .line 222
    invoke-direct {p0, p1}, Lcom/android/server/wifi/ScanOnlyModeManager$ScanOnlyModeStateMachine$StartedState;-><init>(Lcom/android/server/wifi/ScanOnlyModeManager$ScanOnlyModeStateMachine;)V

    return-void
.end method

.method private onUpChanged(Z)V
    .locals 2
    .param p1, "isUp"    # Z

    .line 225
    iget-object v0, p0, Lcom/android/server/wifi/ScanOnlyModeManager$ScanOnlyModeStateMachine$StartedState;->this$1:Lcom/android/server/wifi/ScanOnlyModeManager$ScanOnlyModeStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/ScanOnlyModeManager$ScanOnlyModeStateMachine;->this$0:Lcom/android/server/wifi/ScanOnlyModeManager;

    invoke-static {v0}, Lcom/android/server/wifi/ScanOnlyModeManager;->access$900(Lcom/android/server/wifi/ScanOnlyModeManager;)Z

    move-result v0

    if-ne p1, v0, :cond_0

    .line 226
    return-void

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/ScanOnlyModeManager$ScanOnlyModeStateMachine$StartedState;->this$1:Lcom/android/server/wifi/ScanOnlyModeManager$ScanOnlyModeStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/ScanOnlyModeManager$ScanOnlyModeStateMachine;->this$0:Lcom/android/server/wifi/ScanOnlyModeManager;

    invoke-static {v0, p1}, Lcom/android/server/wifi/ScanOnlyModeManager;->access$902(Lcom/android/server/wifi/ScanOnlyModeManager;Z)Z

    .line 229
    if-eqz p1, :cond_1

    .line 230
    const-string v0, "WifiScanOnlyModeManager"

    const-string v1, "Wifi is ready to use for scanning"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    iget-object v0, p0, Lcom/android/server/wifi/ScanOnlyModeManager$ScanOnlyModeStateMachine$StartedState;->this$1:Lcom/android/server/wifi/ScanOnlyModeManager$ScanOnlyModeStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/ScanOnlyModeManager$ScanOnlyModeStateMachine;->this$0:Lcom/android/server/wifi/ScanOnlyModeManager;

    invoke-static {v0}, Lcom/android/server/wifi/ScanOnlyModeManager;->access$1000(Lcom/android/server/wifi/ScanOnlyModeManager;)Lcom/android/server/wifi/WakeupController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wifi/WakeupController;->start()V

    .line 232
    iget-object v0, p0, Lcom/android/server/wifi/ScanOnlyModeManager$ScanOnlyModeStateMachine$StartedState;->this$1:Lcom/android/server/wifi/ScanOnlyModeManager$ScanOnlyModeStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/ScanOnlyModeManager$ScanOnlyModeStateMachine;->this$0:Lcom/android/server/wifi/ScanOnlyModeManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/wifi/ScanOnlyModeManager;->access$600(Lcom/android/server/wifi/ScanOnlyModeManager;Z)V

    .line 233
    iget-object v0, p0, Lcom/android/server/wifi/ScanOnlyModeManager$ScanOnlyModeStateMachine$StartedState;->this$1:Lcom/android/server/wifi/ScanOnlyModeManager$ScanOnlyModeStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/ScanOnlyModeManager$ScanOnlyModeStateMachine;->this$0:Lcom/android/server/wifi/ScanOnlyModeManager;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/android/server/wifi/ScanOnlyModeManager;->access$500(Lcom/android/server/wifi/ScanOnlyModeManager;I)V

    goto :goto_0

    .line 236
    :cond_1
    const-string v0, "WifiScanOnlyModeManager"

    const-string v1, "interface down - stop scan mode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    iget-object v0, p0, Lcom/android/server/wifi/ScanOnlyModeManager$ScanOnlyModeStateMachine$StartedState;->this$1:Lcom/android/server/wifi/ScanOnlyModeManager$ScanOnlyModeStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/ScanOnlyModeManager$ScanOnlyModeStateMachine;->this$0:Lcom/android/server/wifi/ScanOnlyModeManager;

    invoke-static {v0}, Lcom/android/server/wifi/ScanOnlyModeManager;->access$1100(Lcom/android/server/wifi/ScanOnlyModeManager;)Lcom/android/server/wifi/ScanOnlyModeManager$ScanOnlyModeStateMachine;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/ScanOnlyModeManager$ScanOnlyModeStateMachine;->sendMessage(I)V

    .line 239
    :goto_0
    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    .line 243
    const-string v0, "WifiScanOnlyModeManager"

    const-string v1, "entering StartedState"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    iget-object v0, p0, Lcom/android/server/wifi/ScanOnlyModeManager$ScanOnlyModeStateMachine$StartedState;->this$1:Lcom/android/server/wifi/ScanOnlyModeManager$ScanOnlyModeStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/ScanOnlyModeManager$ScanOnlyModeStateMachine;->this$0:Lcom/android/server/wifi/ScanOnlyModeManager;

    invoke-static {v0}, Lcom/android/server/wifi/ScanOnlyModeManager;->access$700(Lcom/android/server/wifi/ScanOnlyModeManager;)Lcom/android/server/wifi/ScanRequestProxy;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/ScanRequestProxy;->enableScanningForHiddenNetworks(Z)V

    .line 246
    iget-object v0, p0, Lcom/android/server/wifi/ScanOnlyModeManager$ScanOnlyModeStateMachine$StartedState;->this$1:Lcom/android/server/wifi/ScanOnlyModeManager$ScanOnlyModeStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/ScanOnlyModeManager$ScanOnlyModeStateMachine;->this$0:Lcom/android/server/wifi/ScanOnlyModeManager;

    invoke-static {v0, v1}, Lcom/android/server/wifi/ScanOnlyModeManager;->access$902(Lcom/android/server/wifi/ScanOnlyModeManager;Z)Z

    .line 247
    iget-object v0, p0, Lcom/android/server/wifi/ScanOnlyModeManager$ScanOnlyModeStateMachine$StartedState;->this$1:Lcom/android/server/wifi/ScanOnlyModeManager$ScanOnlyModeStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/ScanOnlyModeManager$ScanOnlyModeStateMachine;->this$0:Lcom/android/server/wifi/ScanOnlyModeManager;

    invoke-static {v0}, Lcom/android/server/wifi/ScanOnlyModeManager;->access$400(Lcom/android/server/wifi/ScanOnlyModeManager;)Lcom/android/server/wifi/WifiNative;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/ScanOnlyModeManager$ScanOnlyModeStateMachine$StartedState;->this$1:Lcom/android/server/wifi/ScanOnlyModeManager$ScanOnlyModeStateMachine;

    iget-object v1, v1, Lcom/android/server/wifi/ScanOnlyModeManager$ScanOnlyModeStateMachine;->this$0:Lcom/android/server/wifi/ScanOnlyModeManager;

    invoke-static {v1}, Lcom/android/server/wifi/ScanOnlyModeManager;->access$200(Lcom/android/server/wifi/ScanOnlyModeManager;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiNative;->isInterfaceUp(Ljava/lang/String;)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/ScanOnlyModeManager$ScanOnlyModeStateMachine$StartedState;->onUpChanged(Z)V

    .line 248
    iget-object v0, p0, Lcom/android/server/wifi/ScanOnlyModeManager$ScanOnlyModeStateMachine$StartedState;->this$1:Lcom/android/server/wifi/ScanOnlyModeManager$ScanOnlyModeStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/ScanOnlyModeManager$ScanOnlyModeStateMachine;->this$0:Lcom/android/server/wifi/ScanOnlyModeManager;

    invoke-static {v0}, Lcom/android/server/wifi/ScanOnlyModeManager;->access$1200(Lcom/android/server/wifi/ScanOnlyModeManager;)Lcom/android/server/wifi/SarManager;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/SarManager;->setScanOnlyWifiState(I)V

    .line 249
    return-void
.end method

.method public exit()V
    .locals 2

    .line 282
    iget-object v0, p0, Lcom/android/server/wifi/ScanOnlyModeManager$ScanOnlyModeStateMachine$StartedState;->this$1:Lcom/android/server/wifi/ScanOnlyModeManager$ScanOnlyModeStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/ScanOnlyModeManager$ScanOnlyModeStateMachine;->this$0:Lcom/android/server/wifi/ScanOnlyModeManager;

    invoke-static {v0}, Lcom/android/server/wifi/ScanOnlyModeManager;->access$1000(Lcom/android/server/wifi/ScanOnlyModeManager;)Lcom/android/server/wifi/WakeupController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wifi/WakeupController;->stop()V

    .line 283
    iget-object v0, p0, Lcom/android/server/wifi/ScanOnlyModeManager$ScanOnlyModeStateMachine$StartedState;->this$1:Lcom/android/server/wifi/ScanOnlyModeManager$ScanOnlyModeStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/ScanOnlyModeManager$ScanOnlyModeStateMachine;->this$0:Lcom/android/server/wifi/ScanOnlyModeManager;

    invoke-static {v0}, Lcom/android/server/wifi/ScanOnlyModeManager;->access$200(Lcom/android/server/wifi/ScanOnlyModeManager;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/android/server/wifi/ScanOnlyModeManager$ScanOnlyModeStateMachine$StartedState;->this$1:Lcom/android/server/wifi/ScanOnlyModeManager$ScanOnlyModeStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/ScanOnlyModeManager$ScanOnlyModeStateMachine;->this$0:Lcom/android/server/wifi/ScanOnlyModeManager;

    invoke-static {v0}, Lcom/android/server/wifi/ScanOnlyModeManager;->access$400(Lcom/android/server/wifi/ScanOnlyModeManager;)Lcom/android/server/wifi/WifiNative;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/ScanOnlyModeManager$ScanOnlyModeStateMachine$StartedState;->this$1:Lcom/android/server/wifi/ScanOnlyModeManager$ScanOnlyModeStateMachine;

    iget-object v1, v1, Lcom/android/server/wifi/ScanOnlyModeManager$ScanOnlyModeStateMachine;->this$0:Lcom/android/server/wifi/ScanOnlyModeManager;

    invoke-static {v1}, Lcom/android/server/wifi/ScanOnlyModeManager;->access$200(Lcom/android/server/wifi/ScanOnlyModeManager;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiNative;->teardownInterface(Ljava/lang/String;)V

    .line 285
    iget-object v0, p0, Lcom/android/server/wifi/ScanOnlyModeManager$ScanOnlyModeStateMachine$StartedState;->this$1:Lcom/android/server/wifi/ScanOnlyModeManager$ScanOnlyModeStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/ScanOnlyModeManager$ScanOnlyModeStateMachine;->this$0:Lcom/android/server/wifi/ScanOnlyModeManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/wifi/ScanOnlyModeManager;->access$202(Lcom/android/server/wifi/ScanOnlyModeManager;Ljava/lang/String;)Ljava/lang/String;

    .line 287
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/ScanOnlyModeManager$ScanOnlyModeStateMachine$StartedState;->this$1:Lcom/android/server/wifi/ScanOnlyModeManager$ScanOnlyModeStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/ScanOnlyModeManager$ScanOnlyModeStateMachine;->this$0:Lcom/android/server/wifi/ScanOnlyModeManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/wifi/ScanOnlyModeManager;->access$500(Lcom/android/server/wifi/ScanOnlyModeManager;I)V

    .line 288
    iget-object v0, p0, Lcom/android/server/wifi/ScanOnlyModeManager$ScanOnlyModeStateMachine$StartedState;->this$1:Lcom/android/server/wifi/ScanOnlyModeManager$ScanOnlyModeStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/ScanOnlyModeManager$ScanOnlyModeStateMachine;->this$0:Lcom/android/server/wifi/ScanOnlyModeManager;

    invoke-static {v0}, Lcom/android/server/wifi/ScanOnlyModeManager;->access$1200(Lcom/android/server/wifi/ScanOnlyModeManager;)Lcom/android/server/wifi/SarManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/SarManager;->setScanOnlyWifiState(I)V

    .line 291
    iget-object v0, p0, Lcom/android/server/wifi/ScanOnlyModeManager$ScanOnlyModeStateMachine$StartedState;->this$1:Lcom/android/server/wifi/ScanOnlyModeManager$ScanOnlyModeStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/ScanOnlyModeManager$ScanOnlyModeStateMachine;->this$0:Lcom/android/server/wifi/ScanOnlyModeManager;

    invoke-static {v0}, Lcom/android/server/wifi/ScanOnlyModeManager;->access$1100(Lcom/android/server/wifi/ScanOnlyModeManager;)Lcom/android/server/wifi/ScanOnlyModeManager$ScanOnlyModeStateMachine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wifi/ScanOnlyModeManager$ScanOnlyModeStateMachine;->quitNow()V

    .line 292
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 3
    .param p1, "message"    # Landroid/os/Message;

    .line 253
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    .line 272
    return v2

    .line 267
    :pswitch_0
    const-string v0, "WifiScanOnlyModeManager"

    const-string v2, "interface down!  stop mode"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    iget-object v0, p0, Lcom/android/server/wifi/ScanOnlyModeManager$ScanOnlyModeStateMachine$StartedState;->this$1:Lcom/android/server/wifi/ScanOnlyModeManager$ScanOnlyModeStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/ScanOnlyModeManager$ScanOnlyModeStateMachine;->this$0:Lcom/android/server/wifi/ScanOnlyModeManager;

    const/4 v2, 0x4

    invoke-static {v0, v2}, Lcom/android/server/wifi/ScanOnlyModeManager;->access$500(Lcom/android/server/wifi/ScanOnlyModeManager;I)V

    .line 269
    iget-object v0, p0, Lcom/android/server/wifi/ScanOnlyModeManager$ScanOnlyModeStateMachine$StartedState;->this$1:Lcom/android/server/wifi/ScanOnlyModeManager$ScanOnlyModeStateMachine;

    iget-object v2, p0, Lcom/android/server/wifi/ScanOnlyModeManager$ScanOnlyModeStateMachine$StartedState;->this$1:Lcom/android/server/wifi/ScanOnlyModeManager$ScanOnlyModeStateMachine;

    invoke-static {v2}, Lcom/android/server/wifi/ScanOnlyModeManager$ScanOnlyModeStateMachine;->access$1300(Lcom/android/server/wifi/ScanOnlyModeManager$ScanOnlyModeStateMachine;)Lcom/android/internal/util/State;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/ScanOnlyModeManager$ScanOnlyModeStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 270
    goto :goto_0

    .line 258
    :pswitch_1
    const-string v0, "WifiScanOnlyModeManager"

    const-string v2, "Interface cleanly destroyed, report scan mode stop."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    iget-object v0, p0, Lcom/android/server/wifi/ScanOnlyModeManager$ScanOnlyModeStateMachine$StartedState;->this$1:Lcom/android/server/wifi/ScanOnlyModeManager$ScanOnlyModeStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/ScanOnlyModeManager$ScanOnlyModeStateMachine;->this$0:Lcom/android/server/wifi/ScanOnlyModeManager;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/server/wifi/ScanOnlyModeManager;->access$202(Lcom/android/server/wifi/ScanOnlyModeManager;Ljava/lang/String;)Ljava/lang/String;

    .line 260
    iget-object v0, p0, Lcom/android/server/wifi/ScanOnlyModeManager$ScanOnlyModeStateMachine$StartedState;->this$1:Lcom/android/server/wifi/ScanOnlyModeManager$ScanOnlyModeStateMachine;

    iget-object v2, p0, Lcom/android/server/wifi/ScanOnlyModeManager$ScanOnlyModeStateMachine$StartedState;->this$1:Lcom/android/server/wifi/ScanOnlyModeManager$ScanOnlyModeStateMachine;

    invoke-static {v2}, Lcom/android/server/wifi/ScanOnlyModeManager$ScanOnlyModeStateMachine;->access$1300(Lcom/android/server/wifi/ScanOnlyModeManager$ScanOnlyModeStateMachine;)Lcom/android/internal/util/State;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/ScanOnlyModeManager$ScanOnlyModeStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 261
    goto :goto_0

    .line 263
    :pswitch_2
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v1, :cond_0

    move v2, v1

    nop

    :cond_0
    move v0, v2

    .line 264
    .local v0, "isUp":Z
    invoke-direct {p0, v0}, Lcom/android/server/wifi/ScanOnlyModeManager$ScanOnlyModeStateMachine$StartedState;->onUpChanged(Z)V

    .line 265
    goto :goto_0

    .line 256
    .end local v0    # "isUp":Z
    :cond_1
    nop

    .line 274
    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
