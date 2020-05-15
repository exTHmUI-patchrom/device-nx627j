.class Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$1;
.super Ljava/lang/Object;
.source "SoftApManager.java"

# interfaces
.implements Lcom/android/server/wifi/WifiNative$InterfaceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    .line 326
    iput-object p1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$1;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDestroyed(Ljava/lang/String;)V
    .locals 2
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 329
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$1;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->access$300(Lcom/android/server/wifi/SoftApManager;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$1;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->access$300(Lcom/android/server/wifi/SoftApManager;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 330
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$1;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->sendMessage(I)V

    .line 332
    :cond_0
    return-void
.end method

.method public onDown(Ljava/lang/String;)V
    .locals 3
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 343
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$1;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->access$300(Lcom/android/server/wifi/SoftApManager;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$1;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->access$300(Lcom/android/server/wifi/SoftApManager;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 344
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$1;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->sendMessage(II)V

    .line 346
    :cond_0
    return-void
.end method

.method public onUp(Ljava/lang/String;)V
    .locals 3
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 336
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$1;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->access$300(Lcom/android/server/wifi/SoftApManager;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$1;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->access$300(Lcom/android/server/wifi/SoftApManager;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 337
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$1;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    const/4 v1, 0x3

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->sendMessage(II)V

    .line 339
    :cond_0
    return-void
.end method
