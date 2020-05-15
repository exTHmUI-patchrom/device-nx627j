.class Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$IdleState;
.super Lcom/android/internal/util/State;
.source "SoftApManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IdleState"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;


# direct methods
.method private constructor <init>(Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;)V
    .locals 0

    .line 445
    iput-object p1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$IdleState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;Lcom/android/server/wifi/SoftApManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;
    .param p2, "x1"    # Lcom/android/server/wifi/SoftApManager$1;

    .line 445
    invoke-direct {p0, p1}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$IdleState;-><init>(Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    .line 448
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$IdleState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/wifi/SoftApManager;->access$702(Lcom/android/server/wifi/SoftApManager;Ljava/lang/String;)Ljava/lang/String;

    .line 449
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$IdleState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0, v1}, Lcom/android/server/wifi/SoftApManager;->access$302(Lcom/android/server/wifi/SoftApManager;Ljava/lang/String;)Ljava/lang/String;

    .line 450
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$IdleState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/wifi/SoftApManager;->access$1202(Lcom/android/server/wifi/SoftApManager;Z)Z

    .line 451
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 8
    .param p1, "message"    # Landroid/os/Message;

    .line 455
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 457
    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 458
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_2

    iget v2, v0, Landroid/net/wifi/WifiConfiguration;->apBand:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 459
    iget-object v2, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$IdleState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    invoke-static {v2, v0}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->access$1300(Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;Landroid/net/wifi/WifiConfiguration;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 460
    const-string v2, "SoftApManager"

    const-string v3, "Dual Sap start failed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    goto/16 :goto_0

    .line 463
    :cond_1
    iget-object v2, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$IdleState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v3, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$IdleState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    invoke-static {v3}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->access$1400(Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;)Lcom/android/internal/util/State;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 464
    goto/16 :goto_0

    .line 467
    :cond_2
    iget-object v2, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$IdleState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v2, v2, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    iget-object v3, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$IdleState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v3, v3, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v3}, Lcom/android/server/wifi/SoftApManager;->access$600(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/WifiNative;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$IdleState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    .line 468
    invoke-static {v4}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->access$1500(Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;)Lcom/android/server/wifi/WifiNative$InterfaceCallback;

    move-result-object v4

    .line 467
    invoke-virtual {v3, v4}, Lcom/android/server/wifi/WifiNative;->setupInterfaceForSoftApMode(Lcom/android/server/wifi/WifiNative$InterfaceCallback;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/wifi/SoftApManager;->access$702(Lcom/android/server/wifi/SoftApManager;Ljava/lang/String;)Ljava/lang/String;

    .line 469
    iget-object v2, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$IdleState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v2, v2, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v2}, Lcom/android/server/wifi/SoftApManager;->access$700(Lcom/android/server/wifi/SoftApManager;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/16 v3, 0xb

    const/16 v4, 0xe

    const/4 v5, 0x0

    if-eqz v2, :cond_3

    .line 470
    const-string v2, "SoftApManager"

    const-string v6, "setup failure when creating ap interface."

    invoke-static {v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    iget-object v2, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$IdleState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v2, v2, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v2, v4, v3, v5}, Lcom/android/server/wifi/SoftApManager;->access$900(Lcom/android/server/wifi/SoftApManager;III)V

    .line 474
    iget-object v2, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$IdleState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v2, v2, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v2}, Lcom/android/server/wifi/SoftApManager;->access$1000(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/WifiMetrics;

    move-result-object v2

    invoke-virtual {v2, v5, v5}, Lcom/android/server/wifi/WifiMetrics;->incrementSoftApStartResult(ZI)V

    .line 476
    goto :goto_0

    .line 478
    :cond_3
    iget-object v2, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$IdleState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v2, v2, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    iget-object v6, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$IdleState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v6, v6, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v6}, Lcom/android/server/wifi/SoftApManager;->access$600(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/WifiNative;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/wifi/WifiNative;->getFstDataInterfaceName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/android/server/wifi/SoftApManager;->access$302(Lcom/android/server/wifi/SoftApManager;Ljava/lang/String;)Ljava/lang/String;

    .line 479
    iget-object v2, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$IdleState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v2, v2, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v2}, Lcom/android/server/wifi/SoftApManager;->access$300(Lcom/android/server/wifi/SoftApManager;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 480
    iget-object v2, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$IdleState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v2, v2, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    iget-object v6, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$IdleState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v6, v6, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v6}, Lcom/android/server/wifi/SoftApManager;->access$700(Lcom/android/server/wifi/SoftApManager;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/android/server/wifi/SoftApManager;->access$302(Lcom/android/server/wifi/SoftApManager;Ljava/lang/String;)Ljava/lang/String;

    .line 482
    :cond_4
    iget-object v2, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$IdleState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v2, v2, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    const/16 v6, 0xc

    invoke-static {v2, v6, v3, v5}, Lcom/android/server/wifi/SoftApManager;->access$900(Lcom/android/server/wifi/SoftApManager;III)V

    .line 484
    iget-object v2, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$IdleState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v2, v2, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/net/wifi/WifiConfiguration;

    invoke-static {v2, v3}, Lcom/android/server/wifi/SoftApManager;->access$1100(Lcom/android/server/wifi/SoftApManager;Landroid/net/wifi/WifiConfiguration;)I

    move-result v2

    .line 485
    .local v2, "result":I
    if-eqz v2, :cond_6

    .line 486
    const/4 v3, 0x0

    .line 487
    .local v3, "failureReason":I
    if-ne v2, v1, :cond_5

    .line 488
    const/4 v3, 0x1

    .line 490
    :cond_5
    iget-object v7, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$IdleState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v7, v7, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v7, v4, v6, v3}, Lcom/android/server/wifi/SoftApManager;->access$900(Lcom/android/server/wifi/SoftApManager;III)V

    .line 493
    iget-object v4, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$IdleState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v4, v4, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v4}, Lcom/android/server/wifi/SoftApManager;->access$800(Lcom/android/server/wifi/SoftApManager;)V

    .line 494
    iget-object v4, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$IdleState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v4, v4, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v4}, Lcom/android/server/wifi/SoftApManager;->access$1000(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/WifiMetrics;

    move-result-object v4

    invoke-virtual {v4, v5, v3}, Lcom/android/server/wifi/WifiMetrics;->incrementSoftApStartResult(ZI)V

    .line 495
    goto :goto_0

    .line 497
    .end local v3    # "failureReason":I
    :cond_6
    iget-object v3, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$IdleState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v4, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$IdleState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    invoke-static {v4}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->access$1400(Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;)Lcom/android/internal/util/State;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 498
    nop

    .line 504
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v2    # "result":I
    :goto_0
    return v1
.end method
