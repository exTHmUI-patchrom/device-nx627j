.class Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine$ClientModeActiveState;
.super Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine$ModeActiveState;
.source "WifiStateMachinePrime.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ClientModeActiveState"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine$ClientModeActiveState$ClientListener;
    }
.end annotation


# instance fields
.field mListener:Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine$ClientModeActiveState$ClientListener;

.field final synthetic this$1:Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;

    .line 357
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine$ClientModeActiveState;->this$1:Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;

    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine$ModeActiveState;-><init>(Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    .line 387
    const-string v0, "WifiStateMachinePrime"

    const-string v1, "Entering ClientModeActiveState"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    new-instance v0, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine$ClientModeActiveState$ClientListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine$ClientModeActiveState$ClientListener;-><init>(Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine$ClientModeActiveState;Lcom/android/server/wifi/WifiStateMachinePrime$1;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine$ClientModeActiveState;->mListener:Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine$ClientModeActiveState$ClientListener;

    .line 390
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine$ClientModeActiveState;->this$1:Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;->this$0:Lcom/android/server/wifi/WifiStateMachinePrime;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachinePrime;->access$1100(Lcom/android/server/wifi/WifiStateMachinePrime;)Lcom/android/server/wifi/WifiInjector;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine$ClientModeActiveState;->mListener:Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine$ClientModeActiveState$ClientListener;

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiInjector;->makeClientModeManager(Lcom/android/server/wifi/ClientModeManager$Listener;)Lcom/android/server/wifi/ClientModeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine$ClientModeActiveState;->mManager:Lcom/android/server/wifi/ActiveModeManager;

    .line 391
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine$ClientModeActiveState;->mManager:Lcom/android/server/wifi/ActiveModeManager;

    invoke-interface {v0}, Lcom/android/server/wifi/ActiveModeManager;->start()V

    .line 392
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine$ClientModeActiveState;->this$1:Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;->this$0:Lcom/android/server/wifi/WifiStateMachinePrime;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachinePrime;->access$400(Lcom/android/server/wifi/WifiStateMachinePrime;)Landroid/util/ArraySet;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine$ClientModeActiveState;->mManager:Lcom/android/server/wifi/ActiveModeManager;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 394
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine$ClientModeActiveState;->this$1:Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;->this$0:Lcom/android/server/wifi/WifiStateMachinePrime;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachinePrime;->access$500(Lcom/android/server/wifi/WifiStateMachinePrime;Z)V

    .line 395
    return-void
.end method

.method public exit()V
    .locals 1

    .line 399
    invoke-super {p0}, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine$ModeActiveState;->exit()V

    .line 400
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine$ClientModeActiveState;->mListener:Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine$ClientModeActiveState$ClientListener;

    .line 401
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 4
    .param p1, "message"    # Landroid/os/Message;

    .line 405
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine$ClientModeActiveState;->this$1:Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;

    invoke-static {v0, p1}, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;->access$900(Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;Landroid/os/Message;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 406
    return v1

    .line 409
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    packed-switch v0, :pswitch_data_0

    .line 435
    return v2

    .line 414
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine$ClientModeActiveState;->mListener:Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine$ClientModeActiveState$ClientListener;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eq v0, v3, :cond_1

    .line 415
    const-string v0, "WifiStateMachinePrime"

    const-string v2, "Client mode state change from previous manager"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    return v1

    .line 418
    :cond_1
    const-string v0, "WifiStateMachinePrime"

    const-string v1, "ClientMode failed, return to WifiDisabledState."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine$ClientModeActiveState;->this$1:Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;->this$0:Lcom/android/server/wifi/WifiStateMachinePrime;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachinePrime;->access$1200(Lcom/android/server/wifi/WifiStateMachinePrime;)Lcom/android/server/wifi/ClientModeManager$Listener;

    move-result-object v0

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Lcom/android/server/wifi/ClientModeManager$Listener;->onStateChanged(I)V

    .line 421
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine$ClientModeActiveState;->this$1:Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;->this$0:Lcom/android/server/wifi/WifiStateMachinePrime;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachinePrime;->access$300(Lcom/android/server/wifi/WifiStateMachinePrime;)Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine$ClientModeActiveState;->this$1:Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;

    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;->access$1300(Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;)Lcom/android/internal/util/State;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 422
    goto :goto_0

    .line 424
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine$ClientModeActiveState;->mListener:Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine$ClientModeActiveState$ClientListener;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eq v0, v3, :cond_2

    .line 425
    const-string v0, "WifiStateMachinePrime"

    const-string v2, "Client mode state change from previous manager"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    return v1

    .line 429
    :cond_2
    const-string v0, "WifiStateMachinePrime"

    const-string v3, "ClientMode stopped, return to WifiDisabledState."

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine$ClientModeActiveState;->this$1:Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;->this$0:Lcom/android/server/wifi/WifiStateMachinePrime;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachinePrime;->access$1200(Lcom/android/server/wifi/WifiStateMachinePrime;)Lcom/android/server/wifi/ClientModeManager$Listener;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/android/server/wifi/ClientModeManager$Listener;->onStateChanged(I)V

    .line 432
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine$ClientModeActiveState;->this$1:Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;->this$0:Lcom/android/server/wifi/WifiStateMachinePrime;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachinePrime;->access$300(Lcom/android/server/wifi/WifiStateMachinePrime;)Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine$ClientModeActiveState;->this$1:Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;

    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;->access$1300(Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;)Lcom/android/internal/util/State;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 433
    goto :goto_0

    .line 411
    :cond_3
    const-string v0, "WifiStateMachinePrime"

    const-string v1, "Received CMD_START_CLIENT_MODE when active - drop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    nop

    .line 437
    :goto_0
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x2012f
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
