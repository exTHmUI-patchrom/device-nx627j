.class Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine$1;
.super Ljava/lang/Object;
.source "ClientModeManager.java"

# interfaces
.implements Lcom/android/server/wifi/WifiNative$InterfaceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine;

    .line 170
    iput-object p1, p0, Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine$1;->this$1:Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDestroyed(Ljava/lang/String;)V
    .locals 3
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 173
    iget-object v0, p0, Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine$1;->this$1:Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine;->this$0:Lcom/android/server/wifi/ClientModeManager;

    invoke-static {v0}, Lcom/android/server/wifi/ClientModeManager;->access$200(Lcom/android/server/wifi/ClientModeManager;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine$1;->this$1:Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine;->this$0:Lcom/android/server/wifi/ClientModeManager;

    invoke-static {v0}, Lcom/android/server/wifi/ClientModeManager;->access$200(Lcom/android/server/wifi/ClientModeManager;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    const-string v0, "WifiClientModeManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "STA iface "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " was destroyed, stopping client mode"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    iget-object v0, p0, Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine$1;->this$1:Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine;->this$0:Lcom/android/server/wifi/ClientModeManager;

    invoke-static {v0}, Lcom/android/server/wifi/ClientModeManager;->access$300(Lcom/android/server/wifi/ClientModeManager;)Lcom/android/server/wifi/WifiStateMachine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->handleIfaceDestroyed()V

    .line 181
    iget-object v0, p0, Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine$1;->this$1:Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine;->sendMessage(I)V

    .line 183
    :cond_0
    return-void
.end method

.method public onDown(Ljava/lang/String;)V
    .locals 3
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 194
    iget-object v0, p0, Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine$1;->this$1:Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine;->this$0:Lcom/android/server/wifi/ClientModeManager;

    invoke-static {v0}, Lcom/android/server/wifi/ClientModeManager;->access$200(Lcom/android/server/wifi/ClientModeManager;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine$1;->this$1:Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine;->this$0:Lcom/android/server/wifi/ClientModeManager;

    invoke-static {v0}, Lcom/android/server/wifi/ClientModeManager;->access$200(Lcom/android/server/wifi/ClientModeManager;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine$1;->this$1:Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine;->sendMessage(II)V

    .line 197
    :cond_0
    return-void
.end method

.method public onUp(Ljava/lang/String;)V
    .locals 3
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 187
    iget-object v0, p0, Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine$1;->this$1:Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine;->this$0:Lcom/android/server/wifi/ClientModeManager;

    invoke-static {v0}, Lcom/android/server/wifi/ClientModeManager;->access$200(Lcom/android/server/wifi/ClientModeManager;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine$1;->this$1:Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine;->this$0:Lcom/android/server/wifi/ClientModeManager;

    invoke-static {v0}, Lcom/android/server/wifi/ClientModeManager;->access$200(Lcom/android/server/wifi/ClientModeManager;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine$1;->this$1:Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine;

    const/4 v1, 0x3

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine;->sendMessage(II)V

    .line 190
    :cond_0
    return-void
.end method
