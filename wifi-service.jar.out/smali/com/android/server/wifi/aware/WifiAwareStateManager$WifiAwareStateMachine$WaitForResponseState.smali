.class Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine$WaitForResponseState;
.super Lcom/android/internal/util/State;
.source "WifiAwareStateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WaitForResponseState"
.end annotation


# static fields
.field private static final AWARE_COMMAND_TIMEOUT:J = 0x1388L


# instance fields
.field private mTimeoutMessage:Lcom/android/internal/util/WakeupMessage;

.field final synthetic this$1:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;


# direct methods
.method private constructor <init>(Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;)V
    .locals 0

    .line 1297
    iput-object p1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine$WaitForResponseState;->this$1:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;Lcom/android/server/wifi/aware/WifiAwareStateManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;
    .param p2, "x1"    # Lcom/android/server/wifi/aware/WifiAwareStateManager$1;

    .line 1297
    invoke-direct {p0, p1}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine$WaitForResponseState;-><init>(Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 8

    .line 1303
    new-instance v7, Lcom/android/internal/util/WakeupMessage;

    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine$WaitForResponseState;->this$1:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->this$0:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    invoke-static {v0}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->access$600(Lcom/android/server/wifi/aware/WifiAwareStateManager;)Landroid/content/Context;

    move-result-object v1

    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine$WaitForResponseState;->this$1:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const-string v3, "WifiAwareStateManager HAL Command Timeout"

    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine$WaitForResponseState;->this$1:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    .line 1304
    invoke-static {v0}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->access$1200(Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;)Landroid/os/Message;

    move-result-object v0

    iget v5, v0, Landroid/os/Message;->arg1:I

    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine$WaitForResponseState;->this$1:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->access$1300(Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;)S

    move-result v6

    const/4 v4, 0x4

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/util/WakeupMessage;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;III)V

    iput-object v7, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine$WaitForResponseState;->mTimeoutMessage:Lcom/android/internal/util/WakeupMessage;

    .line 1305
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine$WaitForResponseState;->mTimeoutMessage:Lcom/android/internal/util/WakeupMessage;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const-wide/16 v3, 0x1388

    add-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/util/WakeupMessage;->schedule(J)V

    .line 1306
    return-void
.end method

.method public exit()V
    .locals 1

    .line 1310
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine$WaitForResponseState;->mTimeoutMessage:Lcom/android/internal/util/WakeupMessage;

    invoke-virtual {v0}, Lcom/android/internal/util/WakeupMessage;->cancel()V

    .line 1311
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 1319
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x4

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    packed-switch v0, :pswitch_data_0

    .line 1354
    const/4 v0, 0x0

    return v0

    .line 1328
    :pswitch_0
    iget v0, p1, Landroid/os/Message;->arg2:I

    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine$WaitForResponseState;->this$1:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    invoke-static {v1}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->access$1300(Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;)S

    move-result v1

    if-ne v0, v1, :cond_0

    .line 1329
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine$WaitForResponseState;->this$1:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    invoke-static {v0, p1}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->access$1400(Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;Landroid/os/Message;)V

    .line 1330
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine$WaitForResponseState;->this$1:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine$WaitForResponseState;->this$1:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    invoke-static {v1}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->access$1500(Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;)Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine$WaitState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 1332
    :cond_0
    const-string v0, "WifiAwareStateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WaitForResponseState: processMessage: non-matching transaction ID on RESPONSE (a very late response) -- msg="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1338
    :goto_0
    return v2

    .line 1325
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine$WaitForResponseState;->this$1:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->deferMessage(Landroid/os/Message;)V

    .line 1326
    return v2

    .line 1340
    :cond_1
    iget v0, p1, Landroid/os/Message;->arg2:I

    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine$WaitForResponseState;->this$1:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    invoke-static {v1}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->access$1300(Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;)S

    move-result v1

    if-ne v0, v1, :cond_2

    .line 1341
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine$WaitForResponseState;->this$1:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    invoke-static {v0, p1}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->access$1600(Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;Landroid/os/Message;)V

    .line 1342
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine$WaitForResponseState;->this$1:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine$WaitForResponseState;->this$1:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    invoke-static {v1}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->access$1500(Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;)Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine$WaitState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_1

    .line 1344
    :cond_2
    const-string v0, "WifiAwareStateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WaitForResponseState: processMessage: non-matching transaction ID on RESPONSE_TIMEOUT (either a non-cancelled timeout or a race condition with cancel) -- msg="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1349
    :goto_1
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
