.class Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine$DefaultState;
.super Lcom/android/internal/util/State;
.source "WifiAwareStateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DefaultState"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;


# direct methods
.method private constructor <init>(Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;)V
    .locals 0

    .line 1229
    iput-object p1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;Lcom/android/server/wifi/aware/WifiAwareStateManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;
    .param p2, "x1"    # Lcom/android/server/wifi/aware/WifiAwareStateManager$1;

    .line 1229
    invoke-direct {p0, p1}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine$DefaultState;-><init>(Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;)V

    return-void
.end method


# virtual methods
.method public processMessage(Landroid/os/Message;)Z
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 1236
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    packed-switch v0, :pswitch_data_0

    .line 1260
    const-string v0, "WifiAwareStateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DefaultState: should not get non-NOTIFICATION in this state: msg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1262
    const/4 v0, 0x0

    return v0

    .line 1244
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;

    .line 1247
    .local v0, "networkSpecifier":Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    iget-object v1, v1, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->this$0:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    iget-boolean v1, v1, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mDbg:Z

    if-eqz v1, :cond_0

    .line 1248
    const-string v1, "WifiAwareStateManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MESSAGE_TYPE_DATA_PATH_TIMEOUT: networkSpecifier="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1252
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    iget-object v1, v1, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->this$0:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    iget-object v1, v1, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mDataPathMgr:Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->handleDataPathTimeout(Landroid/net/NetworkSpecifier;)V

    .line 1253
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    invoke-static {v1}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->access$900(Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1254
    return v2

    .line 1241
    .end local v0    # "networkSpecifier":Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->access$800(Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;)V

    .line 1242
    return v2

    .line 1238
    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    invoke-static {v0, p1}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->access$700(Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;Landroid/os/Message;)V

    .line 1239
    return v2

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
