.class Landroid/net/ip/IpClient$StartedState;
.super Lcom/android/internal/util/State;
.source "IpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ip/IpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StartedState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/ip/IpClient;


# direct methods
.method constructor <init>(Landroid/net/ip/IpClient;)V
    .locals 0
    .param p1, "this$0"    # Landroid/net/ip/IpClient;

    .line 1523
    iput-object p1, p0, Landroid/net/ip/IpClient$StartedState;->this$0:Landroid/net/ip/IpClient;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 4

    .line 1526
    iget-object v0, p0, Landroid/net/ip/IpClient$StartedState;->this$0:Landroid/net/ip/IpClient;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/net/ip/IpClient;->access$702(Landroid/net/ip/IpClient;J)J

    .line 1528
    iget-object v0, p0, Landroid/net/ip/IpClient$StartedState;->this$0:Landroid/net/ip/IpClient;

    invoke-static {v0}, Landroid/net/ip/IpClient;->access$1000(Landroid/net/ip/IpClient;)Landroid/net/ip/IpClient$ProvisioningConfiguration;

    move-result-object v0

    iget v0, v0, Landroid/net/ip/IpClient$ProvisioningConfiguration;->mProvisioningTimeoutMs:I

    if-lez v0, :cond_0

    .line 1529
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Landroid/net/ip/IpClient$StartedState;->this$0:Landroid/net/ip/IpClient;

    .line 1530
    invoke-static {v2}, Landroid/net/ip/IpClient;->access$1000(Landroid/net/ip/IpClient;)Landroid/net/ip/IpClient$ProvisioningConfiguration;

    move-result-object v2

    iget v2, v2, Landroid/net/ip/IpClient$ProvisioningConfiguration;->mProvisioningTimeoutMs:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 1531
    .local v0, "alarmTime":J
    iget-object v2, p0, Landroid/net/ip/IpClient$StartedState;->this$0:Landroid/net/ip/IpClient;

    invoke-static {v2}, Landroid/net/ip/IpClient;->access$2100(Landroid/net/ip/IpClient;)Lcom/android/internal/util/WakeupMessage;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/android/internal/util/WakeupMessage;->schedule(J)V

    .line 1534
    .end local v0    # "alarmTime":J
    :cond_0
    invoke-virtual {p0}, Landroid/net/ip/IpClient$StartedState;->readyToProceed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1535
    iget-object v0, p0, Landroid/net/ip/IpClient$StartedState;->this$0:Landroid/net/ip/IpClient;

    iget-object v1, p0, Landroid/net/ip/IpClient$StartedState;->this$0:Landroid/net/ip/IpClient;

    invoke-static {v1}, Landroid/net/ip/IpClient;->access$2200(Landroid/net/ip/IpClient;)Lcom/android/internal/util/State;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/ip/IpClient;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 1540
    :cond_1
    iget-object v0, p0, Landroid/net/ip/IpClient$StartedState;->this$0:Landroid/net/ip/IpClient;

    invoke-static {v0}, Landroid/net/ip/IpClient;->access$500(Landroid/net/ip/IpClient;)V

    .line 1542
    :goto_0
    return-void
.end method

.method public exit()V
    .locals 1

    .line 1546
    iget-object v0, p0, Landroid/net/ip/IpClient$StartedState;->this$0:Landroid/net/ip/IpClient;

    invoke-static {v0}, Landroid/net/ip/IpClient;->access$2100(Landroid/net/ip/IpClient;)Lcom/android/internal/util/WakeupMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/util/WakeupMessage;->cancel()V

    .line 1547
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 1551
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    .line 1573
    iget-object v0, p0, Landroid/net/ip/IpClient$StartedState;->this$0:Landroid/net/ip/IpClient;

    invoke-virtual {v0, p1}, Landroid/net/ip/IpClient;->deferMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 1564
    :cond_0
    iget-object v0, p0, Landroid/net/ip/IpClient$StartedState;->this$0:Landroid/net/ip/IpClient;

    invoke-static {v0}, Landroid/net/ip/IpClient;->access$2400(Landroid/net/ip/IpClient;)V

    .line 1565
    goto :goto_0

    .line 1557
    :cond_1
    iget-object v0, p0, Landroid/net/ip/IpClient$StartedState;->this$0:Landroid/net/ip/IpClient;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/net/ip/IpClient;->access$1200(Landroid/net/ip/IpClient;Z)Z

    .line 1558
    invoke-virtual {p0}, Landroid/net/ip/IpClient$StartedState;->readyToProceed()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1559
    iget-object v0, p0, Landroid/net/ip/IpClient$StartedState;->this$0:Landroid/net/ip/IpClient;

    iget-object v1, p0, Landroid/net/ip/IpClient$StartedState;->this$0:Landroid/net/ip/IpClient;

    invoke-static {v1}, Landroid/net/ip/IpClient;->access$2200(Landroid/net/ip/IpClient;)Lcom/android/internal/util/State;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/ip/IpClient;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 1553
    :cond_2
    iget-object v0, p0, Landroid/net/ip/IpClient$StartedState;->this$0:Landroid/net/ip/IpClient;

    iget-object v1, p0, Landroid/net/ip/IpClient$StartedState;->this$0:Landroid/net/ip/IpClient;

    invoke-static {v1}, Landroid/net/ip/IpClient;->access$2300(Landroid/net/ip/IpClient;)Lcom/android/internal/util/State;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/ip/IpClient;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 1554
    nop

    .line 1576
    :cond_3
    :goto_0
    iget-object v0, p0, Landroid/net/ip/IpClient$StartedState;->this$0:Landroid/net/ip/IpClient;

    invoke-static {v0}, Landroid/net/ip/IpClient;->access$1700(Landroid/net/ip/IpClient;)Landroid/net/ip/IpClient$MessageHandlingLogger;

    move-result-object v0

    iget-object v1, p0, Landroid/net/ip/IpClient$StartedState;->this$0:Landroid/net/ip/IpClient;

    invoke-virtual {v1}, Landroid/net/ip/IpClient;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/net/ip/IpClient$MessageHandlingLogger;->handled(Lcom/android/internal/util/State;Lcom/android/internal/util/IState;)V

    .line 1577
    const/4 v0, 0x1

    return v0
.end method

.method readyToProceed()Z
    .locals 1

    .line 1581
    iget-object v0, p0, Landroid/net/ip/IpClient$StartedState;->this$0:Landroid/net/ip/IpClient;

    invoke-static {v0}, Landroid/net/ip/IpClient;->access$2500(Landroid/net/ip/IpClient;)Landroid/net/LinkProperties;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/LinkProperties;->hasIPv4Address()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/net/ip/IpClient$StartedState;->this$0:Landroid/net/ip/IpClient;

    .line 1582
    invoke-static {v0}, Landroid/net/ip/IpClient;->access$2500(Landroid/net/ip/IpClient;)Landroid/net/LinkProperties;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/LinkProperties;->hasGlobalIPv6Address()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1581
    :goto_0
    return v0
.end method
