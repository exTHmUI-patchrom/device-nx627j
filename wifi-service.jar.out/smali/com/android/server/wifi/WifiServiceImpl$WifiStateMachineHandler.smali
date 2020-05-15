.class Lcom/android/server/wifi/WifiServiceImpl$WifiStateMachineHandler;
.super Lcom/android/server/wifi/util/WifiHandler;
.source "WifiServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WifiStateMachineHandler"
.end annotation


# instance fields
.field private mWsmChannel:Lcom/android/internal/util/AsyncChannel;

.field final synthetic this$0:Lcom/android/server/wifi/WifiServiceImpl;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiServiceImpl;Ljava/lang/String;Landroid/os/Looper;Lcom/android/internal/util/AsyncChannel;)V
    .locals 2
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "looper"    # Landroid/os/Looper;
    .param p4, "asyncChannel"    # Lcom/android/internal/util/AsyncChannel;

    .line 434
    iput-object p1, p0, Lcom/android/server/wifi/WifiServiceImpl$WifiStateMachineHandler;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    .line 435
    invoke-direct {p0, p2, p3}, Lcom/android/server/wifi/util/WifiHandler;-><init>(Ljava/lang/String;Landroid/os/Looper;)V

    .line 436
    iput-object p4, p0, Lcom/android/server/wifi/WifiServiceImpl$WifiStateMachineHandler;->mWsmChannel:Lcom/android/internal/util/AsyncChannel;

    .line 437
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$WifiStateMachineHandler;->mWsmChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-static {p1}, Lcom/android/server/wifi/WifiServiceImpl;->access$300(Lcom/android/server/wifi/WifiServiceImpl;)Landroid/content/Context;

    move-result-object v1

    iget-object p1, p1, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {p1}, Lcom/android/server/wifi/WifiStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {v0, v1, p0, p1}, Lcom/android/internal/util/AsyncChannel;->connect(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Handler;)V

    .line 438
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 442
    invoke-super {p0, p1}, Lcom/android/server/wifi/util/WifiHandler;->handleMessage(Landroid/os/Message;)V

    .line 443
    iget v0, p1, Landroid/os/Message;->what:I

    const v1, 0x11000

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    const v1, 0x11004

    if-eq v0, v1, :cond_0

    .line 461
    const-string v0, "WifiService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WifiStateMachineHandler.handleMessage ignoring msg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 454
    :cond_0
    const-string v0, "WifiService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WifiStateMachine channel lost, msg.arg1 ="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$WifiStateMachineHandler;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-static {v0, v2}, Lcom/android/server/wifi/WifiServiceImpl;->access$502(Lcom/android/server/wifi/WifiServiceImpl;Lcom/android/internal/util/AsyncChannel;)Lcom/android/internal/util/AsyncChannel;

    .line 457
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$WifiStateMachineHandler;->mWsmChannel:Lcom/android/internal/util/AsyncChannel;

    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl$WifiStateMachineHandler;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-static {v1}, Lcom/android/server/wifi/WifiServiceImpl;->access$300(Lcom/android/server/wifi/WifiServiceImpl;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl$WifiStateMachineHandler;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    iget-object v2, v2, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v0, v1, p0, v2}, Lcom/android/internal/util/AsyncChannel;->connect(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Handler;)V

    .line 458
    goto :goto_0

    .line 445
    :cond_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-nez v0, :cond_2

    .line 446
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$WifiStateMachineHandler;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl$WifiStateMachineHandler;->mWsmChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiServiceImpl;->access$502(Lcom/android/server/wifi/WifiServiceImpl;Lcom/android/internal/util/AsyncChannel;)Lcom/android/internal/util/AsyncChannel;

    goto :goto_0

    .line 448
    :cond_2
    const-string v0, "WifiService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WifiStateMachine connection failure, error="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$WifiStateMachineHandler;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-static {v0, v2}, Lcom/android/server/wifi/WifiServiceImpl;->access$502(Lcom/android/server/wifi/WifiServiceImpl;Lcom/android/internal/util/AsyncChannel;)Lcom/android/internal/util/AsyncChannel;

    .line 451
    nop

    .line 465
    :goto_0
    return-void
.end method
