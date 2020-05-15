.class Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine$StartedState;
.super Lcom/android/internal/util/State;
.source "ClientModeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StartedState"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine;


# direct methods
.method private constructor <init>(Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine;)V
    .locals 0

    .line 249
    iput-object p1, p0, Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine$StartedState;->this$1:Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine;Lcom/android/server/wifi/ClientModeManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine;
    .param p2, "x1"    # Lcom/android/server/wifi/ClientModeManager$1;

    .line 249
    invoke-direct {p0, p1}, Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine$StartedState;-><init>(Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine;)V

    return-void
.end method

.method private onUpChanged(Z)V
    .locals 4
    .param p1, "isUp"    # Z

    .line 252
    iget-object v0, p0, Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine$StartedState;->this$1:Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine;->this$0:Lcom/android/server/wifi/ClientModeManager;

    invoke-static {v0}, Lcom/android/server/wifi/ClientModeManager;->access$400(Lcom/android/server/wifi/ClientModeManager;)Z

    move-result v0

    if-ne p1, v0, :cond_0

    .line 253
    return-void

    .line 255
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine$StartedState;->this$1:Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine;->this$0:Lcom/android/server/wifi/ClientModeManager;

    invoke-static {v0, p1}, Lcom/android/server/wifi/ClientModeManager;->access$402(Lcom/android/server/wifi/ClientModeManager;Z)Z

    .line 256
    const/4 v0, 0x3

    if-eqz p1, :cond_1

    .line 257
    const-string v1, "WifiClientModeManager"

    const-string v2, "Wifi is ready to use for client mode"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    iget-object v1, p0, Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine$StartedState;->this$1:Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine;->access$800(Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine;Z)V

    .line 259
    iget-object v1, p0, Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine$StartedState;->this$1:Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine;

    iget-object v1, v1, Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine;->this$0:Lcom/android/server/wifi/ClientModeManager;

    invoke-static {v1}, Lcom/android/server/wifi/ClientModeManager;->access$300(Lcom/android/server/wifi/ClientModeManager;)Lcom/android/server/wifi/WifiStateMachine;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine$StartedState;->this$1:Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine;

    iget-object v3, v3, Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine;->this$0:Lcom/android/server/wifi/ClientModeManager;

    .line 260
    invoke-static {v3}, Lcom/android/server/wifi/ClientModeManager;->access$200(Lcom/android/server/wifi/ClientModeManager;)Ljava/lang/String;

    move-result-object v3

    .line 259
    invoke-virtual {v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->setOperationalMode(ILjava/lang/String;)V

    .line 261
    iget-object v1, p0, Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine$StartedState;->this$1:Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine;

    iget-object v1, v1, Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine;->this$0:Lcom/android/server/wifi/ClientModeManager;

    const/4 v2, 0x2

    invoke-static {v1, v0, v2}, Lcom/android/server/wifi/ClientModeManager;->access$500(Lcom/android/server/wifi/ClientModeManager;II)V

    goto :goto_0

    .line 264
    :cond_1
    iget-object v1, p0, Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine$StartedState;->this$1:Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine;

    iget-object v1, v1, Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine;->this$0:Lcom/android/server/wifi/ClientModeManager;

    invoke-static {v1}, Lcom/android/server/wifi/ClientModeManager;->access$300(Lcom/android/server/wifi/ClientModeManager;)Lcom/android/server/wifi/WifiStateMachine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiStateMachine;->isConnectedMacRandomizationEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 267
    return-void

    .line 270
    :cond_2
    const-string v1, "WifiClientModeManager"

    const-string v2, "interface down!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    iget-object v1, p0, Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine$StartedState;->this$1:Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine;

    iget-object v1, v1, Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine;->this$0:Lcom/android/server/wifi/ClientModeManager;

    const/4 v2, 0x4

    invoke-static {v1, v2, v0}, Lcom/android/server/wifi/ClientModeManager;->access$500(Lcom/android/server/wifi/ClientModeManager;II)V

    .line 273
    iget-object v0, p0, Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine$StartedState;->this$1:Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine;->this$0:Lcom/android/server/wifi/ClientModeManager;

    invoke-static {v0}, Lcom/android/server/wifi/ClientModeManager;->access$1100(Lcom/android/server/wifi/ClientModeManager;)Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine;->sendMessage(I)V

    .line 275
    :goto_0
    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    .line 279
    const-string v0, "WifiClientModeManager"

    const-string v1, "entering StartedState"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    iget-object v0, p0, Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine$StartedState;->this$1:Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine;->this$0:Lcom/android/server/wifi/ClientModeManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/wifi/ClientModeManager;->access$402(Lcom/android/server/wifi/ClientModeManager;Z)Z

    .line 281
    iget-object v0, p0, Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine$StartedState;->this$1:Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine;->this$0:Lcom/android/server/wifi/ClientModeManager;

    invoke-static {v0}, Lcom/android/server/wifi/ClientModeManager;->access$700(Lcom/android/server/wifi/ClientModeManager;)Lcom/android/server/wifi/WifiNative;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine$StartedState;->this$1:Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine;

    iget-object v1, v1, Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine;->this$0:Lcom/android/server/wifi/ClientModeManager;

    invoke-static {v1}, Lcom/android/server/wifi/ClientModeManager;->access$200(Lcom/android/server/wifi/ClientModeManager;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiNative;->isInterfaceUp(Ljava/lang/String;)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine$StartedState;->onUpChanged(Z)V

    .line 282
    iget-object v0, p0, Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine$StartedState;->this$1:Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine;->this$0:Lcom/android/server/wifi/ClientModeManager;

    invoke-static {v0}, Lcom/android/server/wifi/ClientModeManager;->access$900(Lcom/android/server/wifi/ClientModeManager;)Lcom/android/server/wifi/ScanRequestProxy;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/ScanRequestProxy;->enableScanningForHiddenNetworks(Z)V

    .line 283
    return-void
.end method

.method public exit()V
    .locals 4

    .line 322
    iget-object v0, p0, Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine$StartedState;->this$1:Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine;->this$0:Lcom/android/server/wifi/ClientModeManager;

    invoke-static {v0}, Lcom/android/server/wifi/ClientModeManager;->access$300(Lcom/android/server/wifi/ClientModeManager;)Lcom/android/server/wifi/WifiStateMachine;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-virtual {v0, v2, v1}, Lcom/android/server/wifi/WifiStateMachine;->setOperationalMode(ILjava/lang/String;)V

    .line 324
    iget-object v0, p0, Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine$StartedState;->this$1:Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine;->this$0:Lcom/android/server/wifi/ClientModeManager;

    invoke-static {v0}, Lcom/android/server/wifi/ClientModeManager;->access$200(Lcom/android/server/wifi/ClientModeManager;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 325
    iget-object v0, p0, Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine$StartedState;->this$1:Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine;->this$0:Lcom/android/server/wifi/ClientModeManager;

    invoke-static {v0}, Lcom/android/server/wifi/ClientModeManager;->access$700(Lcom/android/server/wifi/ClientModeManager;)Lcom/android/server/wifi/WifiNative;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine$StartedState;->this$1:Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine;

    iget-object v3, v3, Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine;->this$0:Lcom/android/server/wifi/ClientModeManager;

    invoke-static {v3}, Lcom/android/server/wifi/ClientModeManager;->access$200(Lcom/android/server/wifi/ClientModeManager;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/server/wifi/WifiNative;->teardownInterface(Ljava/lang/String;)V

    .line 326
    iget-object v0, p0, Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine$StartedState;->this$1:Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine;->this$0:Lcom/android/server/wifi/ClientModeManager;

    invoke-static {v0, v1}, Lcom/android/server/wifi/ClientModeManager;->access$202(Lcom/android/server/wifi/ClientModeManager;Ljava/lang/String;)Ljava/lang/String;

    .line 327
    iget-object v0, p0, Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine$StartedState;->this$1:Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine;->this$0:Lcom/android/server/wifi/ClientModeManager;

    invoke-static {v0, v2}, Lcom/android/server/wifi/ClientModeManager;->access$402(Lcom/android/server/wifi/ClientModeManager;Z)Z

    .line 330
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine$StartedState;->this$1:Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine;->this$0:Lcom/android/server/wifi/ClientModeManager;

    const/4 v1, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/ClientModeManager;->access$500(Lcom/android/server/wifi/ClientModeManager;II)V

    .line 334
    iget-object v0, p0, Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine$StartedState;->this$1:Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine;->this$0:Lcom/android/server/wifi/ClientModeManager;

    invoke-static {v0}, Lcom/android/server/wifi/ClientModeManager;->access$1100(Lcom/android/server/wifi/ClientModeManager;)Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine;->quitNow()V

    .line 335
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 4
    .param p1, "message"    # Landroid/os/Message;

    .line 287
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    .line 312
    return v2

    .line 292
    :pswitch_0
    const-string v0, "WifiClientModeManager"

    const-string v3, "Detected an interface down, reporting failure to SelfRecovery"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    iget-object v0, p0, Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine$StartedState;->this$1:Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine;->this$0:Lcom/android/server/wifi/ClientModeManager;

    invoke-static {v0}, Lcom/android/server/wifi/ClientModeManager;->access$300(Lcom/android/server/wifi/ClientModeManager;)Lcom/android/server/wifi/WifiStateMachine;

    move-result-object v0

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Lcom/android/server/wifi/WifiStateMachine;->failureDetected(I)V

    .line 295
    iget-object v0, p0, Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine$StartedState;->this$1:Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine;->this$0:Lcom/android/server/wifi/ClientModeManager;

    const/4 v3, 0x4

    invoke-static {v0, v2, v3}, Lcom/android/server/wifi/ClientModeManager;->access$500(Lcom/android/server/wifi/ClientModeManager;II)V

    .line 297
    iget-object v0, p0, Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine$StartedState;->this$1:Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine;

    iget-object v2, p0, Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine$StartedState;->this$1:Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine;

    invoke-static {v2}, Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine;->access$1200(Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine;)Lcom/android/internal/util/State;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 298
    goto :goto_0

    .line 304
    :pswitch_1
    const-string v0, "WifiClientModeManager"

    const-string v3, "interface destroyed - client mode stopping"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    iget-object v0, p0, Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine$StartedState;->this$1:Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine;->this$0:Lcom/android/server/wifi/ClientModeManager;

    const/4 v3, 0x3

    invoke-static {v0, v2, v3}, Lcom/android/server/wifi/ClientModeManager;->access$500(Lcom/android/server/wifi/ClientModeManager;II)V

    .line 308
    iget-object v0, p0, Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine$StartedState;->this$1:Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine;->this$0:Lcom/android/server/wifi/ClientModeManager;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/server/wifi/ClientModeManager;->access$202(Lcom/android/server/wifi/ClientModeManager;Ljava/lang/String;)Ljava/lang/String;

    .line 309
    iget-object v0, p0, Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine$StartedState;->this$1:Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine;

    iget-object v2, p0, Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine$StartedState;->this$1:Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine;

    invoke-static {v2}, Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine;->access$1200(Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine;)Lcom/android/internal/util/State;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 310
    goto :goto_0

    .line 300
    :pswitch_2
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v1, :cond_0

    move v2, v1

    nop

    :cond_0
    move v0, v2

    .line 301
    .local v0, "isUp":Z
    invoke-direct {p0, v0}, Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine$StartedState;->onUpChanged(Z)V

    .line 302
    goto :goto_0

    .line 290
    .end local v0    # "isUp":Z
    :cond_1
    nop

    .line 314
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
