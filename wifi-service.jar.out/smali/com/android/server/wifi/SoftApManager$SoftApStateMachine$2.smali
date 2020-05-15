.class Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$2;
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

    .line 349
    iput-object p1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$2;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDestroyed(Ljava/lang/String;)V
    .locals 3
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 353
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$2;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->access$400(Lcom/android/server/wifi/SoftApManager;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 354
    const-string v0, "SoftApManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "One of Dual interface ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") destroyed. trigger cleanup"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$2;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->access$500(Lcom/android/server/wifi/SoftApManager;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 357
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$2;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->access$500(Lcom/android/server/wifi/SoftApManager;)[Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    aput-object v2, v0, v1

    goto :goto_0

    .line 358
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$2;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->access$500(Lcom/android/server/wifi/SoftApManager;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 359
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$2;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->access$500(Lcom/android/server/wifi/SoftApManager;)[Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    aput-object v2, v0, v1

    .line 361
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$2;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-virtual {v0}, Lcom/android/server/wifi/SoftApManager;->stop()V

    .line 363
    :cond_2
    return-void
.end method

.method public onDown(Ljava/lang/String;)V
    .locals 0
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 369
    return-void
.end method

.method public onUp(Ljava/lang/String;)V
    .locals 0
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 366
    return-void
.end method
