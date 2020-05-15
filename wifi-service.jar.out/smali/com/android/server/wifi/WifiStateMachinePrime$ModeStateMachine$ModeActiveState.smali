.class Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine$ModeActiveState;
.super Lcom/android/internal/util/State;
.source "WifiStateMachinePrime.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ModeActiveState"
.end annotation


# instance fields
.field mManager:Lcom/android/server/wifi/ActiveModeManager;

.field final synthetic this$1:Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;

    .line 310
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine$ModeActiveState;->this$1:Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public exit()V
    .locals 2

    .line 323
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine$ModeActiveState;->mManager:Lcom/android/server/wifi/ActiveModeManager;

    if-eqz v0, :cond_0

    .line 324
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine$ModeActiveState;->mManager:Lcom/android/server/wifi/ActiveModeManager;

    invoke-interface {v0}, Lcom/android/server/wifi/ActiveModeManager;->stop()V

    .line 325
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine$ModeActiveState;->this$1:Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;->this$0:Lcom/android/server/wifi/WifiStateMachinePrime;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachinePrime;->access$400(Lcom/android/server/wifi/WifiStateMachinePrime;)Landroid/util/ArraySet;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine$ModeActiveState;->mManager:Lcom/android/server/wifi/ActiveModeManager;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 327
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine$ModeActiveState;->this$1:Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;->this$0:Lcom/android/server/wifi/WifiStateMachinePrime;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachinePrime;->access$500(Lcom/android/server/wifi/WifiStateMachinePrime;Z)V

    .line 328
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 1
    .param p1, "message"    # Landroid/os/Message;

    .line 315
    const/4 v0, 0x0

    return v0
.end method
