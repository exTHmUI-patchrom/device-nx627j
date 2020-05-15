.class Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine$WaitState;
.super Lcom/android/internal/util/State;
.source "WifiAwareStateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WaitState"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;


# direct methods
.method private constructor <init>(Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;)V
    .locals 0

    .line 1266
    iput-object p1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine$WaitState;->this$1:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;Lcom/android/server/wifi/aware/WifiAwareStateManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;
    .param p2, "x1"    # Lcom/android/server/wifi/aware/WifiAwareStateManager$1;

    .line 1266
    invoke-direct {p0, p1}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine$WaitState;-><init>(Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;)V

    return-void
.end method


# virtual methods
.method public processMessage(Landroid/os/Message;)Z
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 1273
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x4

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    packed-switch v0, :pswitch_data_0

    .line 1293
    const/4 v0, 0x0

    return v0

    .line 1275
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine$WaitState;->this$1:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    invoke-static {v0, p1}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->access$1000(Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;Landroid/os/Message;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1276
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine$WaitState;->this$1:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine$WaitState;->this$1:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    invoke-static {v1}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->access$1100(Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;)Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine$WaitForResponseState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 1278
    :cond_0
    return v2

    .line 1287
    :cond_1
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine$WaitState;->this$1:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->deferMessage(Landroid/os/Message;)V

    .line 1288
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
