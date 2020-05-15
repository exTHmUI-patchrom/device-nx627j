.class Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine$WifiDisabledState;
.super Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine$ModeActiveState;
.source "WifiStateMachinePrime.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WifiDisabledState"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;

    .line 331
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine$WifiDisabledState;->this$1:Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;

    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine$ModeActiveState;-><init>(Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 3

    .line 334
    const-string v0, "WifiStateMachinePrime"

    const-string v1, "Entering WifiDisabledState"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine$WifiDisabledState;->this$1:Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;->this$0:Lcom/android/server/wifi/WifiStateMachinePrime;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachinePrime;->access$700(Lcom/android/server/wifi/WifiStateMachinePrime;)Lcom/android/server/wifi/DefaultModeManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine$WifiDisabledState;->this$1:Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;

    iget-object v1, v1, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;->this$0:Lcom/android/server/wifi/WifiStateMachinePrime;

    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachinePrime;->access$600(Lcom/android/server/wifi/WifiStateMachinePrime;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/DefaultModeManager;->sendScanAvailableBroadcast(Landroid/content/Context;Z)V

    .line 336
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine$WifiDisabledState;->this$1:Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;->this$0:Lcom/android/server/wifi/WifiStateMachinePrime;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachinePrime;->access$800(Lcom/android/server/wifi/WifiStateMachinePrime;)Lcom/android/server/wifi/ScanRequestProxy;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/ScanRequestProxy;->enableScanningForHiddenNetworks(Z)V

    .line 337
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine$WifiDisabledState;->this$1:Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;->this$0:Lcom/android/server/wifi/WifiStateMachinePrime;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachinePrime;->access$800(Lcom/android/server/wifi/WifiStateMachinePrime;)Lcom/android/server/wifi/ScanRequestProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wifi/ScanRequestProxy;->clearScanResults()V

    .line 338
    invoke-static {}, Lcom/android/server/wifi/WifiGbk;->clearBssCache()V

    .line 339
    return-void
.end method

.method public exit()V
    .locals 0

    .line 353
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 3
    .param p1, "message"    # Landroid/os/Message;

    .line 343
    const-string v0, "WifiStateMachinePrime"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "received a message in WifiDisabledState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine$WifiDisabledState;->this$1:Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;

    invoke-static {v0, p1}, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;->access$900(Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;Landroid/os/Message;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 345
    const/4 v0, 0x1

    return v0

    .line 347
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
