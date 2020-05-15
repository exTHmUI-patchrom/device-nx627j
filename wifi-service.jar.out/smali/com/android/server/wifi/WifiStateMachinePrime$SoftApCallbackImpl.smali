.class Lcom/android/server/wifi/WifiStateMachinePrime$SoftApCallbackImpl;
.super Lcom/android/server/wifi/WifiStateMachinePrime$ModeCallback;
.source "WifiStateMachinePrime.java"

# interfaces
.implements Landroid/net/wifi/WifiManager$SoftApCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiStateMachinePrime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SoftApCallbackImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiStateMachinePrime;


# direct methods
.method private constructor <init>(Lcom/android/server/wifi/WifiStateMachinePrime;)V
    .locals 1

    .line 527
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachinePrime$SoftApCallbackImpl;->this$0:Lcom/android/server/wifi/WifiStateMachinePrime;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/wifi/WifiStateMachinePrime$ModeCallback;-><init>(Lcom/android/server/wifi/WifiStateMachinePrime;Lcom/android/server/wifi/WifiStateMachinePrime$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wifi/WifiStateMachinePrime;Lcom/android/server/wifi/WifiStateMachinePrime$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/wifi/WifiStateMachinePrime;
    .param p2, "x1"    # Lcom/android/server/wifi/WifiStateMachinePrime$1;

    .line 527
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiStateMachinePrime$SoftApCallbackImpl;-><init>(Lcom/android/server/wifi/WifiStateMachinePrime;)V

    return-void
.end method


# virtual methods
.method public onNumClientsChanged(I)V
    .locals 2
    .param p1, "numClients"    # I

    .line 545
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachinePrime$SoftApCallbackImpl;->this$0:Lcom/android/server/wifi/WifiStateMachinePrime;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachinePrime;->access$1800(Lcom/android/server/wifi/WifiStateMachinePrime;)Landroid/net/wifi/WifiManager$SoftApCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 546
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachinePrime$SoftApCallbackImpl;->this$0:Lcom/android/server/wifi/WifiStateMachinePrime;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachinePrime;->access$1800(Lcom/android/server/wifi/WifiStateMachinePrime;)Landroid/net/wifi/WifiManager$SoftApCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/net/wifi/WifiManager$SoftApCallback;->onNumClientsChanged(I)V

    goto :goto_0

    .line 548
    :cond_0
    const-string v0, "WifiStateMachinePrime"

    const-string v1, "SoftApCallback is null. Dropping NumClientsChanged event."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    :goto_0
    return-void
.end method

.method public onStaConnected(Ljava/lang/String;I)V
    .locals 2
    .param p1, "Macaddr"    # Ljava/lang/String;
    .param p2, "numClients"    # I

    .line 554
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachinePrime$SoftApCallbackImpl;->this$0:Lcom/android/server/wifi/WifiStateMachinePrime;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachinePrime;->access$1800(Lcom/android/server/wifi/WifiStateMachinePrime;)Landroid/net/wifi/WifiManager$SoftApCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 555
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachinePrime$SoftApCallbackImpl;->this$0:Lcom/android/server/wifi/WifiStateMachinePrime;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachinePrime;->access$1800(Lcom/android/server/wifi/WifiStateMachinePrime;)Landroid/net/wifi/WifiManager$SoftApCallback;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/net/wifi/WifiManager$SoftApCallback;->onStaConnected(Ljava/lang/String;I)V

    goto :goto_0

    .line 557
    :cond_0
    const-string v0, "WifiStateMachinePrime"

    const-string v1, "SoftApCallback is null. Dropping onStaConnected event."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    :goto_0
    return-void
.end method

.method public onStaDisconnected(Ljava/lang/String;I)V
    .locals 2
    .param p1, "Macaddr"    # Ljava/lang/String;
    .param p2, "numClients"    # I

    .line 563
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachinePrime$SoftApCallbackImpl;->this$0:Lcom/android/server/wifi/WifiStateMachinePrime;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachinePrime;->access$1800(Lcom/android/server/wifi/WifiStateMachinePrime;)Landroid/net/wifi/WifiManager$SoftApCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 564
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachinePrime$SoftApCallbackImpl;->this$0:Lcom/android/server/wifi/WifiStateMachinePrime;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachinePrime;->access$1800(Lcom/android/server/wifi/WifiStateMachinePrime;)Landroid/net/wifi/WifiManager$SoftApCallback;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/net/wifi/WifiManager$SoftApCallback;->onStaDisconnected(Ljava/lang/String;I)V

    goto :goto_0

    .line 566
    :cond_0
    const-string v0, "WifiStateMachinePrime"

    const-string v1, "SoftApCallback is null. Dropping onStaDisconnected event."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    :goto_0
    return-void
.end method

.method public onStateChanged(II)V
    .locals 3
    .param p1, "state"    # I
    .param p2, "reason"    # I

    .line 530
    const/4 v0, 0x0

    const/16 v1, 0xb

    if-ne p1, v1, :cond_0

    .line 531
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachinePrime$SoftApCallbackImpl;->this$0:Lcom/android/server/wifi/WifiStateMachinePrime;

    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachinePrime;->access$400(Lcom/android/server/wifi/WifiStateMachinePrime;)Landroid/util/ArraySet;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachinePrime$SoftApCallbackImpl;->getActiveModeManager()Lcom/android/server/wifi/ActiveModeManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 532
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachinePrime$SoftApCallbackImpl;->this$0:Lcom/android/server/wifi/WifiStateMachinePrime;

    invoke-static {v1, v0}, Lcom/android/server/wifi/WifiStateMachinePrime;->access$500(Lcom/android/server/wifi/WifiStateMachinePrime;Z)V

    goto :goto_0

    .line 533
    :cond_0
    const/16 v1, 0xe

    if-ne p1, v1, :cond_1

    .line 534
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachinePrime$SoftApCallbackImpl;->this$0:Lcom/android/server/wifi/WifiStateMachinePrime;

    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachinePrime;->access$400(Lcom/android/server/wifi/WifiStateMachinePrime;)Landroid/util/ArraySet;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachinePrime$SoftApCallbackImpl;->getActiveModeManager()Lcom/android/server/wifi/ActiveModeManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 535
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachinePrime$SoftApCallbackImpl;->this$0:Lcom/android/server/wifi/WifiStateMachinePrime;

    invoke-static {v1, v0}, Lcom/android/server/wifi/WifiStateMachinePrime;->access$500(Lcom/android/server/wifi/WifiStateMachinePrime;Z)V

    .line 538
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachinePrime$SoftApCallbackImpl;->this$0:Lcom/android/server/wifi/WifiStateMachinePrime;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachinePrime;->access$1800(Lcom/android/server/wifi/WifiStateMachinePrime;)Landroid/net/wifi/WifiManager$SoftApCallback;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 539
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachinePrime$SoftApCallbackImpl;->this$0:Lcom/android/server/wifi/WifiStateMachinePrime;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachinePrime;->access$1800(Lcom/android/server/wifi/WifiStateMachinePrime;)Landroid/net/wifi/WifiManager$SoftApCallback;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/net/wifi/WifiManager$SoftApCallback;->onStateChanged(II)V

    .line 541
    :cond_2
    return-void
.end method
