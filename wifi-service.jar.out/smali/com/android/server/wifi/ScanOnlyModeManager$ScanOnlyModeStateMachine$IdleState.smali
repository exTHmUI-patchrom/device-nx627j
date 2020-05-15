.class Lcom/android/server/wifi/ScanOnlyModeManager$ScanOnlyModeStateMachine$IdleState;
.super Lcom/android/internal/util/State;
.source "ScanOnlyModeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/ScanOnlyModeManager$ScanOnlyModeStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IdleState"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/wifi/ScanOnlyModeManager$ScanOnlyModeStateMachine;


# direct methods
.method private constructor <init>(Lcom/android/server/wifi/ScanOnlyModeManager$ScanOnlyModeStateMachine;)V
    .locals 0

    .line 185
    iput-object p1, p0, Lcom/android/server/wifi/ScanOnlyModeManager$ScanOnlyModeStateMachine$IdleState;->this$1:Lcom/android/server/wifi/ScanOnlyModeManager$ScanOnlyModeStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wifi/ScanOnlyModeManager$ScanOnlyModeStateMachine;Lcom/android/server/wifi/ScanOnlyModeManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/wifi/ScanOnlyModeManager$ScanOnlyModeStateMachine;
    .param p2, "x1"    # Lcom/android/server/wifi/ScanOnlyModeManager$1;

    .line 185
    invoke-direct {p0, p1}, Lcom/android/server/wifi/ScanOnlyModeManager$ScanOnlyModeStateMachine$IdleState;-><init>(Lcom/android/server/wifi/ScanOnlyModeManager$ScanOnlyModeStateMachine;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    .line 189
    const-string v0, "WifiScanOnlyModeManager"

    const-string v1, "entering IdleState"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    iget-object v0, p0, Lcom/android/server/wifi/ScanOnlyModeManager$ScanOnlyModeStateMachine$IdleState;->this$1:Lcom/android/server/wifi/ScanOnlyModeManager$ScanOnlyModeStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/ScanOnlyModeManager$ScanOnlyModeStateMachine;->this$0:Lcom/android/server/wifi/ScanOnlyModeManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/wifi/ScanOnlyModeManager;->access$202(Lcom/android/server/wifi/ScanOnlyModeManager;Ljava/lang/String;)Ljava/lang/String;

    .line 191
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 5
    .param p1, "message"    # Landroid/os/Message;

    .line 195
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 215
    const-string v0, "WifiScanOnlyModeManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "received an invalid message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    return v1

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/ScanOnlyModeManager$ScanOnlyModeStateMachine$IdleState;->this$1:Lcom/android/server/wifi/ScanOnlyModeManager$ScanOnlyModeStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/ScanOnlyModeManager$ScanOnlyModeStateMachine;->this$0:Lcom/android/server/wifi/ScanOnlyModeManager;

    iget-object v2, p0, Lcom/android/server/wifi/ScanOnlyModeManager$ScanOnlyModeStateMachine$IdleState;->this$1:Lcom/android/server/wifi/ScanOnlyModeManager$ScanOnlyModeStateMachine;

    iget-object v2, v2, Lcom/android/server/wifi/ScanOnlyModeManager$ScanOnlyModeStateMachine;->this$0:Lcom/android/server/wifi/ScanOnlyModeManager;

    invoke-static {v2}, Lcom/android/server/wifi/ScanOnlyModeManager;->access$400(Lcom/android/server/wifi/ScanOnlyModeManager;)Lcom/android/server/wifi/WifiNative;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/ScanOnlyModeManager$ScanOnlyModeStateMachine$IdleState;->this$1:Lcom/android/server/wifi/ScanOnlyModeManager$ScanOnlyModeStateMachine;

    .line 198
    invoke-static {v3}, Lcom/android/server/wifi/ScanOnlyModeManager$ScanOnlyModeStateMachine;->access$300(Lcom/android/server/wifi/ScanOnlyModeManager$ScanOnlyModeStateMachine;)Lcom/android/server/wifi/WifiNative$InterfaceCallback;

    move-result-object v3

    .line 197
    const/4 v4, 0x1

    invoke-virtual {v2, v4, v3}, Lcom/android/server/wifi/WifiNative;->setupInterfaceForClientMode(ZLcom/android/server/wifi/WifiNative$InterfaceCallback;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/server/wifi/ScanOnlyModeManager;->access$202(Lcom/android/server/wifi/ScanOnlyModeManager;Ljava/lang/String;)Ljava/lang/String;

    .line 199
    iget-object v0, p0, Lcom/android/server/wifi/ScanOnlyModeManager$ScanOnlyModeStateMachine$IdleState;->this$1:Lcom/android/server/wifi/ScanOnlyModeManager$ScanOnlyModeStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/ScanOnlyModeManager$ScanOnlyModeStateMachine;->this$0:Lcom/android/server/wifi/ScanOnlyModeManager;

    invoke-static {v0}, Lcom/android/server/wifi/ScanOnlyModeManager;->access$200(Lcom/android/server/wifi/ScanOnlyModeManager;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 200
    const-string v0, "WifiScanOnlyModeManager"

    const-string v1, "Failed to create ClientInterface. Sit in Idle"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    iget-object v0, p0, Lcom/android/server/wifi/ScanOnlyModeManager$ScanOnlyModeStateMachine$IdleState;->this$1:Lcom/android/server/wifi/ScanOnlyModeManager$ScanOnlyModeStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/ScanOnlyModeManager$ScanOnlyModeStateMachine;->this$0:Lcom/android/server/wifi/ScanOnlyModeManager;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/android/server/wifi/ScanOnlyModeManager;->access$500(Lcom/android/server/wifi/ScanOnlyModeManager;I)V

    .line 202
    goto :goto_0

    .line 206
    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/ScanOnlyModeManager$ScanOnlyModeStateMachine$IdleState;->this$1:Lcom/android/server/wifi/ScanOnlyModeManager$ScanOnlyModeStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/ScanOnlyModeManager$ScanOnlyModeStateMachine;->this$0:Lcom/android/server/wifi/ScanOnlyModeManager;

    invoke-static {v0, v1}, Lcom/android/server/wifi/ScanOnlyModeManager;->access$600(Lcom/android/server/wifi/ScanOnlyModeManager;Z)V

    .line 209
    iget-object v0, p0, Lcom/android/server/wifi/ScanOnlyModeManager$ScanOnlyModeStateMachine$IdleState;->this$1:Lcom/android/server/wifi/ScanOnlyModeManager$ScanOnlyModeStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/ScanOnlyModeManager$ScanOnlyModeStateMachine;->this$0:Lcom/android/server/wifi/ScanOnlyModeManager;

    invoke-static {v0}, Lcom/android/server/wifi/ScanOnlyModeManager;->access$700(Lcom/android/server/wifi/ScanOnlyModeManager;)Lcom/android/server/wifi/ScanRequestProxy;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/ScanRequestProxy;->enableScanningForHiddenNetworks(Z)V

    .line 210
    iget-object v0, p0, Lcom/android/server/wifi/ScanOnlyModeManager$ScanOnlyModeStateMachine$IdleState;->this$1:Lcom/android/server/wifi/ScanOnlyModeManager$ScanOnlyModeStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/ScanOnlyModeManager$ScanOnlyModeStateMachine;->this$0:Lcom/android/server/wifi/ScanOnlyModeManager;

    invoke-static {v0}, Lcom/android/server/wifi/ScanOnlyModeManager;->access$700(Lcom/android/server/wifi/ScanOnlyModeManager;)Lcom/android/server/wifi/ScanRequestProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wifi/ScanRequestProxy;->clearScanResults()V

    .line 212
    iget-object v0, p0, Lcom/android/server/wifi/ScanOnlyModeManager$ScanOnlyModeStateMachine$IdleState;->this$1:Lcom/android/server/wifi/ScanOnlyModeManager$ScanOnlyModeStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/ScanOnlyModeManager$ScanOnlyModeStateMachine$IdleState;->this$1:Lcom/android/server/wifi/ScanOnlyModeManager$ScanOnlyModeStateMachine;

    invoke-static {v1}, Lcom/android/server/wifi/ScanOnlyModeManager$ScanOnlyModeStateMachine;->access$800(Lcom/android/server/wifi/ScanOnlyModeManager$ScanOnlyModeStateMachine;)Lcom/android/internal/util/State;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/ScanOnlyModeManager$ScanOnlyModeStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 213
    nop

    .line 218
    :goto_0
    return v4
.end method
