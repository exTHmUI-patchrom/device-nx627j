.class Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine$IdleState;
.super Lcom/android/internal/util/State;
.source "ClientModeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IdleState"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine;


# direct methods
.method private constructor <init>(Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine;)V
    .locals 0

    .line 210
    iput-object p1, p0, Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine$IdleState;->this$1:Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine;Lcom/android/server/wifi/ClientModeManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine;
    .param p2, "x1"    # Lcom/android/server/wifi/ClientModeManager$1;

    .line 210
    invoke-direct {p0, p1}, Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine$IdleState;-><init>(Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    .line 214
    const-string v0, "WifiClientModeManager"

    const-string v1, "entering IdleState"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    iget-object v0, p0, Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine$IdleState;->this$1:Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine;->this$0:Lcom/android/server/wifi/ClientModeManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/wifi/ClientModeManager;->access$202(Lcom/android/server/wifi/ClientModeManager;Ljava/lang/String;)Ljava/lang/String;

    .line 216
    iget-object v0, p0, Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine$IdleState;->this$1:Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine;->this$0:Lcom/android/server/wifi/ClientModeManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/wifi/ClientModeManager;->access$402(Lcom/android/server/wifi/ClientModeManager;Z)Z

    .line 217
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 6
    .param p1, "message"    # Landroid/os/Message;

    .line 221
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 242
    const-string v0, "WifiClientModeManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "received an invalid message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    return v1

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine$IdleState;->this$1:Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine;->this$0:Lcom/android/server/wifi/ClientModeManager;

    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Lcom/android/server/wifi/ClientModeManager;->access$500(Lcom/android/server/wifi/ClientModeManager;II)V

    .line 226
    iget-object v0, p0, Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine$IdleState;->this$1:Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine;->this$0:Lcom/android/server/wifi/ClientModeManager;

    iget-object v4, p0, Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine$IdleState;->this$1:Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine;

    iget-object v4, v4, Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine;->this$0:Lcom/android/server/wifi/ClientModeManager;

    invoke-static {v4}, Lcom/android/server/wifi/ClientModeManager;->access$700(Lcom/android/server/wifi/ClientModeManager;)Lcom/android/server/wifi/WifiNative;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine$IdleState;->this$1:Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine;

    .line 227
    invoke-static {v5}, Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine;->access$600(Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine;)Lcom/android/server/wifi/WifiNative$InterfaceCallback;

    move-result-object v5

    .line 226
    invoke-virtual {v4, v1, v5}, Lcom/android/server/wifi/WifiNative;->setupInterfaceForClientMode(ZLcom/android/server/wifi/WifiNative$InterfaceCallback;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/android/server/wifi/ClientModeManager;->access$202(Lcom/android/server/wifi/ClientModeManager;Ljava/lang/String;)Ljava/lang/String;

    .line 228
    iget-object v0, p0, Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine$IdleState;->this$1:Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine;->this$0:Lcom/android/server/wifi/ClientModeManager;

    invoke-static {v0}, Lcom/android/server/wifi/ClientModeManager;->access$200(Lcom/android/server/wifi/ClientModeManager;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 229
    const-string v0, "WifiClientModeManager"

    const-string v1, "Failed to create ClientInterface. Sit in Idle"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    iget-object v0, p0, Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine$IdleState;->this$1:Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine;->this$0:Lcom/android/server/wifi/ClientModeManager;

    const/4 v1, 0x4

    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/ClientModeManager;->access$500(Lcom/android/server/wifi/ClientModeManager;II)V

    .line 232
    iget-object v0, p0, Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine$IdleState;->this$1:Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine;->this$0:Lcom/android/server/wifi/ClientModeManager;

    invoke-static {v0, v3, v1}, Lcom/android/server/wifi/ClientModeManager;->access$500(Lcom/android/server/wifi/ClientModeManager;II)V

    .line 234
    goto :goto_0

    .line 236
    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine$IdleState;->this$1:Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine;

    invoke-static {v0, v1}, Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine;->access$800(Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine;Z)V

    .line 237
    iget-object v0, p0, Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine$IdleState;->this$1:Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine;->this$0:Lcom/android/server/wifi/ClientModeManager;

    invoke-static {v0}, Lcom/android/server/wifi/ClientModeManager;->access$900(Lcom/android/server/wifi/ClientModeManager;)Lcom/android/server/wifi/ScanRequestProxy;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/ScanRequestProxy;->enableScanningForHiddenNetworks(Z)V

    .line 238
    iget-object v0, p0, Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine$IdleState;->this$1:Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine;->this$0:Lcom/android/server/wifi/ClientModeManager;

    invoke-static {v0}, Lcom/android/server/wifi/ClientModeManager;->access$900(Lcom/android/server/wifi/ClientModeManager;)Lcom/android/server/wifi/ScanRequestProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wifi/ScanRequestProxy;->clearScanResults()V

    .line 239
    iget-object v0, p0, Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine$IdleState;->this$1:Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine$IdleState;->this$1:Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine;

    invoke-static {v1}, Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine;->access$1000(Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine;)Lcom/android/internal/util/State;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 240
    nop

    .line 245
    :goto_0
    return v3
.end method
