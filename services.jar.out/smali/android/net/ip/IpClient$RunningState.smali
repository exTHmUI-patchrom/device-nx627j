.class Landroid/net/ip/IpClient$RunningState;
.super Lcom/android/internal/util/State;
.source "IpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ip/IpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RunningState"
.end annotation


# instance fields
.field private mDhcpActionInFlight:Z

.field private mPacketTracker:Landroid/net/ip/ConnectivityPacketTracker;

.field final synthetic this$0:Landroid/net/ip/IpClient;


# direct methods
.method constructor <init>(Landroid/net/ip/IpClient;)V
    .locals 0
    .param p1, "this$0"    # Landroid/net/ip/IpClient;

    .line 1586
    iput-object p1, p0, Landroid/net/ip/IpClient$RunningState;->this$0:Landroid/net/ip/IpClient;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method private createPacketTracker()Landroid/net/ip/ConnectivityPacketTracker;
    .locals 4

    .line 1679
    :try_start_0
    new-instance v0, Landroid/net/ip/ConnectivityPacketTracker;

    iget-object v1, p0, Landroid/net/ip/IpClient$RunningState;->this$0:Landroid/net/ip/IpClient;

    .line 1680
    invoke-virtual {v1}, Landroid/net/ip/IpClient;->getHandler()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Landroid/net/ip/IpClient$RunningState;->this$0:Landroid/net/ip/IpClient;

    invoke-static {v2}, Landroid/net/ip/IpClient;->access$2800(Landroid/net/ip/IpClient;)Landroid/net/util/InterfaceParams;

    move-result-object v2

    iget-object v3, p0, Landroid/net/ip/IpClient$RunningState;->this$0:Landroid/net/ip/IpClient;

    invoke-static {v3}, Landroid/net/ip/IpClient;->access$3600(Landroid/net/ip/IpClient;)Landroid/util/LocalLog;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Landroid/net/ip/ConnectivityPacketTracker;-><init>(Landroid/os/Handler;Landroid/net/util/InterfaceParams;Landroid/util/LocalLog;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1679
    return-object v0

    .line 1681
    :catch_0
    move-exception v0

    .line 1682
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const/4 v1, 0x0

    return-object v1
.end method

.method private ensureDhcpAction()V
    .locals 4

    .line 1687
    iget-boolean v0, p0, Landroid/net/ip/IpClient$RunningState;->mDhcpActionInFlight:Z

    if-nez v0, :cond_0

    .line 1688
    iget-object v0, p0, Landroid/net/ip/IpClient$RunningState;->this$0:Landroid/net/ip/IpClient;

    iget-object v0, v0, Landroid/net/ip/IpClient;->mCallback:Landroid/net/ip/IpClient$Callback;

    invoke-virtual {v0}, Landroid/net/ip/IpClient$Callback;->onPreDhcpAction()V

    .line 1689
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/ip/IpClient$RunningState;->mDhcpActionInFlight:Z

    .line 1690
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Landroid/net/ip/IpClient$RunningState;->this$0:Landroid/net/ip/IpClient;

    .line 1691
    invoke-static {v2}, Landroid/net/ip/IpClient;->access$1000(Landroid/net/ip/IpClient;)Landroid/net/ip/IpClient$ProvisioningConfiguration;

    move-result-object v2

    iget v2, v2, Landroid/net/ip/IpClient$ProvisioningConfiguration;->mRequestedPreDhcpActionMs:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 1692
    .local v0, "alarmTime":J
    iget-object v2, p0, Landroid/net/ip/IpClient$RunningState;->this$0:Landroid/net/ip/IpClient;

    invoke-static {v2}, Landroid/net/ip/IpClient;->access$3700(Landroid/net/ip/IpClient;)Lcom/android/internal/util/WakeupMessage;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/android/internal/util/WakeupMessage;->schedule(J)V

    .line 1694
    .end local v0    # "alarmTime":J
    :cond_0
    return-void
.end method

.method public static synthetic lambda$enter$0(Landroid/net/ip/IpClient$RunningState;)V
    .locals 2

    .line 1633
    iget-object v0, p0, Landroid/net/ip/IpClient$RunningState;->this$0:Landroid/net/ip/IpClient;

    invoke-static {v0}, Landroid/net/ip/IpClient;->access$000(Landroid/net/ip/IpClient;)Landroid/net/util/SharedLog;

    move-result-object v0

    const-string v1, "OBSERVED AvoidBadWifi changed"

    invoke-virtual {v0, v1}, Landroid/net/util/SharedLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method private stopDhcpAction()V
    .locals 1

    .line 1697
    iget-object v0, p0, Landroid/net/ip/IpClient$RunningState;->this$0:Landroid/net/ip/IpClient;

    invoke-static {v0}, Landroid/net/ip/IpClient;->access$3700(Landroid/net/ip/IpClient;)Lcom/android/internal/util/WakeupMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/util/WakeupMessage;->cancel()V

    .line 1698
    iget-boolean v0, p0, Landroid/net/ip/IpClient$RunningState;->mDhcpActionInFlight:Z

    if-eqz v0, :cond_0

    .line 1699
    iget-object v0, p0, Landroid/net/ip/IpClient$RunningState;->this$0:Landroid/net/ip/IpClient;

    iget-object v0, v0, Landroid/net/ip/IpClient;->mCallback:Landroid/net/ip/IpClient$Callback;

    invoke-virtual {v0}, Landroid/net/ip/IpClient$Callback;->onPostDhcpAction()V

    .line 1700
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/ip/IpClient$RunningState;->mDhcpActionInFlight:Z

    .line 1702
    :cond_0
    return-void
.end method


# virtual methods
.method public enter()V
    .locals 7

    .line 1592
    new-instance v0, Landroid/net/apf/ApfFilter$ApfConfiguration;

    invoke-direct {v0}, Landroid/net/apf/ApfFilter$ApfConfiguration;-><init>()V

    .line 1593
    .local v0, "apfConfig":Landroid/net/apf/ApfFilter$ApfConfiguration;
    iget-object v1, p0, Landroid/net/ip/IpClient$RunningState;->this$0:Landroid/net/ip/IpClient;

    invoke-static {v1}, Landroid/net/ip/IpClient;->access$1000(Landroid/net/ip/IpClient;)Landroid/net/ip/IpClient$ProvisioningConfiguration;

    move-result-object v1

    iget-object v1, v1, Landroid/net/ip/IpClient$ProvisioningConfiguration;->mApfCapabilities:Landroid/net/apf/ApfCapabilities;

    iput-object v1, v0, Landroid/net/apf/ApfFilter$ApfConfiguration;->apfCapabilities:Landroid/net/apf/ApfCapabilities;

    .line 1594
    iget-object v1, p0, Landroid/net/ip/IpClient$RunningState;->this$0:Landroid/net/ip/IpClient;

    invoke-static {v1}, Landroid/net/ip/IpClient;->access$1500(Landroid/net/ip/IpClient;)Z

    move-result v1

    iput-boolean v1, v0, Landroid/net/apf/ApfFilter$ApfConfiguration;->multicastFilter:Z

    .line 1596
    iget-object v1, p0, Landroid/net/ip/IpClient$RunningState;->this$0:Landroid/net/ip/IpClient;

    .line 1597
    invoke-static {v1}, Landroid/net/ip/IpClient;->access$2600(Landroid/net/ip/IpClient;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x112001a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, v0, Landroid/net/apf/ApfFilter$ApfConfiguration;->ieee802_3Filter:Z

    .line 1598
    iget-object v1, p0, Landroid/net/ip/IpClient$RunningState;->this$0:Landroid/net/ip/IpClient;

    .line 1599
    invoke-static {v1}, Landroid/net/ip/IpClient;->access$2600(Landroid/net/ip/IpClient;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x107000f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    iput-object v1, v0, Landroid/net/apf/ApfFilter$ApfConfiguration;->ethTypeBlackList:[I

    .line 1600
    iget-object v1, p0, Landroid/net/ip/IpClient$RunningState;->this$0:Landroid/net/ip/IpClient;

    iget-object v2, p0, Landroid/net/ip/IpClient$RunningState;->this$0:Landroid/net/ip/IpClient;

    invoke-static {v2}, Landroid/net/ip/IpClient;->access$2600(Landroid/net/ip/IpClient;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Landroid/net/ip/IpClient$RunningState;->this$0:Landroid/net/ip/IpClient;

    invoke-static {v3}, Landroid/net/ip/IpClient;->access$2800(Landroid/net/ip/IpClient;)Landroid/net/util/InterfaceParams;

    move-result-object v3

    iget-object v4, p0, Landroid/net/ip/IpClient$RunningState;->this$0:Landroid/net/ip/IpClient;

    iget-object v4, v4, Landroid/net/ip/IpClient;->mCallback:Landroid/net/ip/IpClient$Callback;

    invoke-static {v2, v0, v3, v4}, Landroid/net/apf/ApfFilter;->maybeCreate(Landroid/content/Context;Landroid/net/apf/ApfFilter$ApfConfiguration;Landroid/net/util/InterfaceParams;Landroid/net/ip/IpClient$Callback;)Landroid/net/apf/ApfFilter;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/ip/IpClient;->access$2702(Landroid/net/ip/IpClient;Landroid/net/apf/ApfFilter;)Landroid/net/apf/ApfFilter;

    .line 1603
    iget-object v1, p0, Landroid/net/ip/IpClient$RunningState;->this$0:Landroid/net/ip/IpClient;

    invoke-static {v1}, Landroid/net/ip/IpClient;->access$2700(Landroid/net/ip/IpClient;)Landroid/net/apf/ApfFilter;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1604
    iget-object v1, p0, Landroid/net/ip/IpClient$RunningState;->this$0:Landroid/net/ip/IpClient;

    iget-object v1, v1, Landroid/net/ip/IpClient;->mCallback:Landroid/net/ip/IpClient$Callback;

    iget-object v2, p0, Landroid/net/ip/IpClient$RunningState;->this$0:Landroid/net/ip/IpClient;

    invoke-static {v2}, Landroid/net/ip/IpClient;->access$1500(Landroid/net/ip/IpClient;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/net/ip/IpClient$Callback;->setFallbackMulticastFilter(Z)V

    .line 1607
    :cond_0
    invoke-direct {p0}, Landroid/net/ip/IpClient$RunningState;->createPacketTracker()Landroid/net/ip/ConnectivityPacketTracker;

    move-result-object v1

    iput-object v1, p0, Landroid/net/ip/IpClient$RunningState;->mPacketTracker:Landroid/net/ip/ConnectivityPacketTracker;

    .line 1608
    iget-object v1, p0, Landroid/net/ip/IpClient$RunningState;->mPacketTracker:Landroid/net/ip/ConnectivityPacketTracker;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/net/ip/IpClient$RunningState;->mPacketTracker:Landroid/net/ip/ConnectivityPacketTracker;

    iget-object v2, p0, Landroid/net/ip/IpClient$RunningState;->this$0:Landroid/net/ip/IpClient;

    invoke-static {v2}, Landroid/net/ip/IpClient;->access$1000(Landroid/net/ip/IpClient;)Landroid/net/ip/IpClient$ProvisioningConfiguration;

    move-result-object v2

    iget-object v2, v2, Landroid/net/ip/IpClient$ProvisioningConfiguration;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/net/ip/ConnectivityPacketTracker;->start(Ljava/lang/String;)V

    .line 1610
    :cond_1
    iget-object v1, p0, Landroid/net/ip/IpClient$RunningState;->this$0:Landroid/net/ip/IpClient;

    invoke-static {v1}, Landroid/net/ip/IpClient;->access$1000(Landroid/net/ip/IpClient;)Landroid/net/ip/IpClient$ProvisioningConfiguration;

    move-result-object v1

    iget-boolean v1, v1, Landroid/net/ip/IpClient$ProvisioningConfiguration;->mEnableIPv6:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/net/ip/IpClient$RunningState;->this$0:Landroid/net/ip/IpClient;

    invoke-static {v1}, Landroid/net/ip/IpClient;->access$2900(Landroid/net/ip/IpClient;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1611
    iget-object v1, p0, Landroid/net/ip/IpClient$RunningState;->this$0:Landroid/net/ip/IpClient;

    const/4 v2, 0x5

    invoke-static {v1, v2}, Landroid/net/ip/IpClient;->access$3000(Landroid/net/ip/IpClient;I)V

    .line 1612
    iget-object v1, p0, Landroid/net/ip/IpClient$RunningState;->this$0:Landroid/net/ip/IpClient;

    iget-object v2, p0, Landroid/net/ip/IpClient$RunningState;->this$0:Landroid/net/ip/IpClient;

    invoke-static {v2}, Landroid/net/ip/IpClient;->access$2300(Landroid/net/ip/IpClient;)Lcom/android/internal/util/State;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/ip/IpClient;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 1613
    return-void

    .line 1616
    :cond_2
    iget-object v1, p0, Landroid/net/ip/IpClient$RunningState;->this$0:Landroid/net/ip/IpClient;

    invoke-static {v1}, Landroid/net/ip/IpClient;->access$1000(Landroid/net/ip/IpClient;)Landroid/net/ip/IpClient$ProvisioningConfiguration;

    move-result-object v1

    iget-boolean v1, v1, Landroid/net/ip/IpClient$ProvisioningConfiguration;->mEnableIPv4:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/net/ip/IpClient$RunningState;->this$0:Landroid/net/ip/IpClient;

    invoke-static {v1}, Landroid/net/ip/IpClient;->access$3100(Landroid/net/ip/IpClient;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1617
    iget-object v1, p0, Landroid/net/ip/IpClient$RunningState;->this$0:Landroid/net/ip/IpClient;

    const/4 v2, 0x4

    invoke-static {v1, v2}, Landroid/net/ip/IpClient;->access$3000(Landroid/net/ip/IpClient;I)V

    .line 1618
    iget-object v1, p0, Landroid/net/ip/IpClient$RunningState;->this$0:Landroid/net/ip/IpClient;

    iget-object v2, p0, Landroid/net/ip/IpClient$RunningState;->this$0:Landroid/net/ip/IpClient;

    invoke-static {v2}, Landroid/net/ip/IpClient;->access$2300(Landroid/net/ip/IpClient;)Lcom/android/internal/util/State;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/ip/IpClient;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 1619
    return-void

    .line 1622
    :cond_3
    iget-object v1, p0, Landroid/net/ip/IpClient$RunningState;->this$0:Landroid/net/ip/IpClient;

    invoke-static {v1}, Landroid/net/ip/IpClient;->access$1000(Landroid/net/ip/IpClient;)Landroid/net/ip/IpClient$ProvisioningConfiguration;

    move-result-object v1

    iget-object v1, v1, Landroid/net/ip/IpClient$ProvisioningConfiguration;->mInitialConfig:Landroid/net/ip/IpClient$InitialConfiguration;

    .line 1623
    .local v1, "config":Landroid/net/ip/IpClient$InitialConfiguration;
    if-eqz v1, :cond_4

    iget-object v2, p0, Landroid/net/ip/IpClient$RunningState;->this$0:Landroid/net/ip/IpClient;

    invoke-static {v2, v1}, Landroid/net/ip/IpClient;->access$3200(Landroid/net/ip/IpClient;Landroid/net/ip/IpClient$InitialConfiguration;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1625
    iget-object v2, p0, Landroid/net/ip/IpClient$RunningState;->this$0:Landroid/net/ip/IpClient;

    const/4 v3, 0x7

    invoke-static {v2, v3}, Landroid/net/ip/IpClient;->access$3000(Landroid/net/ip/IpClient;I)V

    .line 1626
    iget-object v2, p0, Landroid/net/ip/IpClient$RunningState;->this$0:Landroid/net/ip/IpClient;

    iget-object v3, p0, Landroid/net/ip/IpClient$RunningState;->this$0:Landroid/net/ip/IpClient;

    invoke-static {v3}, Landroid/net/ip/IpClient;->access$2300(Landroid/net/ip/IpClient;)Lcom/android/internal/util/State;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/ip/IpClient;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 1627
    return-void

    .line 1630
    :cond_4
    iget-object v2, p0, Landroid/net/ip/IpClient$RunningState;->this$0:Landroid/net/ip/IpClient;

    invoke-static {v2}, Landroid/net/ip/IpClient;->access$1000(Landroid/net/ip/IpClient;)Landroid/net/ip/IpClient$ProvisioningConfiguration;

    move-result-object v2

    iget-boolean v2, v2, Landroid/net/ip/IpClient$ProvisioningConfiguration;->mUsingMultinetworkPolicyTracker:Z

    if-eqz v2, :cond_5

    .line 1631
    iget-object v2, p0, Landroid/net/ip/IpClient$RunningState;->this$0:Landroid/net/ip/IpClient;

    new-instance v3, Landroid/net/util/MultinetworkPolicyTracker;

    iget-object v4, p0, Landroid/net/ip/IpClient$RunningState;->this$0:Landroid/net/ip/IpClient;

    .line 1632
    invoke-static {v4}, Landroid/net/ip/IpClient;->access$2600(Landroid/net/ip/IpClient;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Landroid/net/ip/IpClient$RunningState;->this$0:Landroid/net/ip/IpClient;

    invoke-virtual {v5}, Landroid/net/ip/IpClient;->getHandler()Landroid/os/Handler;

    move-result-object v5

    new-instance v6, Landroid/net/ip/-$$Lambda$IpClient$RunningState$62CnAIrZ9p4JQ9DgmmpMjXifdaw;

    invoke-direct {v6, p0}, Landroid/net/ip/-$$Lambda$IpClient$RunningState$62CnAIrZ9p4JQ9DgmmpMjXifdaw;-><init>(Landroid/net/ip/IpClient$RunningState;)V

    invoke-direct {v3, v4, v5, v6}, Landroid/net/util/MultinetworkPolicyTracker;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 1631
    invoke-static {v2, v3}, Landroid/net/ip/IpClient;->access$3302(Landroid/net/ip/IpClient;Landroid/net/util/MultinetworkPolicyTracker;)Landroid/net/util/MultinetworkPolicyTracker;

    .line 1634
    iget-object v2, p0, Landroid/net/ip/IpClient$RunningState;->this$0:Landroid/net/ip/IpClient;

    invoke-static {v2}, Landroid/net/ip/IpClient;->access$3300(Landroid/net/ip/IpClient;)Landroid/net/util/MultinetworkPolicyTracker;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/util/MultinetworkPolicyTracker;->start()V

    .line 1637
    :cond_5
    iget-object v2, p0, Landroid/net/ip/IpClient$RunningState;->this$0:Landroid/net/ip/IpClient;

    invoke-static {v2}, Landroid/net/ip/IpClient;->access$1000(Landroid/net/ip/IpClient;)Landroid/net/ip/IpClient$ProvisioningConfiguration;

    move-result-object v2

    iget-boolean v2, v2, Landroid/net/ip/IpClient$ProvisioningConfiguration;->mUsingIpReachabilityMonitor:Z

    if-eqz v2, :cond_6

    iget-object v2, p0, Landroid/net/ip/IpClient$RunningState;->this$0:Landroid/net/ip/IpClient;

    invoke-static {v2}, Landroid/net/ip/IpClient;->access$3400(Landroid/net/ip/IpClient;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 1638
    iget-object v2, p0, Landroid/net/ip/IpClient$RunningState;->this$0:Landroid/net/ip/IpClient;

    const/4 v3, 0x6

    invoke-static {v2, v3}, Landroid/net/ip/IpClient;->access$3000(Landroid/net/ip/IpClient;I)V

    .line 1640
    iget-object v2, p0, Landroid/net/ip/IpClient$RunningState;->this$0:Landroid/net/ip/IpClient;

    iget-object v3, p0, Landroid/net/ip/IpClient$RunningState;->this$0:Landroid/net/ip/IpClient;

    invoke-static {v3}, Landroid/net/ip/IpClient;->access$2300(Landroid/net/ip/IpClient;)Lcom/android/internal/util/State;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/ip/IpClient;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 1641
    return-void

    .line 1643
    :cond_6
    return-void
.end method

.method public exit()V
    .locals 3

    .line 1647
    invoke-direct {p0}, Landroid/net/ip/IpClient$RunningState;->stopDhcpAction()V

    .line 1649
    iget-object v0, p0, Landroid/net/ip/IpClient$RunningState;->this$0:Landroid/net/ip/IpClient;

    invoke-static {v0}, Landroid/net/ip/IpClient;->access$3500(Landroid/net/ip/IpClient;)Landroid/net/ip/IpReachabilityMonitor;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1650
    iget-object v0, p0, Landroid/net/ip/IpClient$RunningState;->this$0:Landroid/net/ip/IpClient;

    invoke-static {v0}, Landroid/net/ip/IpClient;->access$3500(Landroid/net/ip/IpClient;)Landroid/net/ip/IpReachabilityMonitor;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/ip/IpReachabilityMonitor;->stop()V

    .line 1651
    iget-object v0, p0, Landroid/net/ip/IpClient$RunningState;->this$0:Landroid/net/ip/IpClient;

    invoke-static {v0, v1}, Landroid/net/ip/IpClient;->access$3502(Landroid/net/ip/IpClient;Landroid/net/ip/IpReachabilityMonitor;)Landroid/net/ip/IpReachabilityMonitor;

    .line 1654
    :cond_0
    iget-object v0, p0, Landroid/net/ip/IpClient$RunningState;->this$0:Landroid/net/ip/IpClient;

    invoke-static {v0}, Landroid/net/ip/IpClient;->access$3300(Landroid/net/ip/IpClient;)Landroid/net/util/MultinetworkPolicyTracker;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1655
    iget-object v0, p0, Landroid/net/ip/IpClient$RunningState;->this$0:Landroid/net/ip/IpClient;

    invoke-static {v0}, Landroid/net/ip/IpClient;->access$3300(Landroid/net/ip/IpClient;)Landroid/net/util/MultinetworkPolicyTracker;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/util/MultinetworkPolicyTracker;->shutdown()V

    .line 1656
    iget-object v0, p0, Landroid/net/ip/IpClient$RunningState;->this$0:Landroid/net/ip/IpClient;

    invoke-static {v0, v1}, Landroid/net/ip/IpClient;->access$3302(Landroid/net/ip/IpClient;Landroid/net/util/MultinetworkPolicyTracker;)Landroid/net/util/MultinetworkPolicyTracker;

    .line 1659
    :cond_1
    iget-object v0, p0, Landroid/net/ip/IpClient$RunningState;->this$0:Landroid/net/ip/IpClient;

    invoke-static {v0}, Landroid/net/ip/IpClient;->access$1800(Landroid/net/ip/IpClient;)Landroid/net/dhcp/DhcpClient;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1660
    iget-object v0, p0, Landroid/net/ip/IpClient$RunningState;->this$0:Landroid/net/ip/IpClient;

    invoke-static {v0}, Landroid/net/ip/IpClient;->access$1800(Landroid/net/ip/IpClient;)Landroid/net/dhcp/DhcpClient;

    move-result-object v0

    const v2, 0x30002

    invoke-virtual {v0, v2}, Landroid/net/dhcp/DhcpClient;->sendMessage(I)V

    .line 1661
    iget-object v0, p0, Landroid/net/ip/IpClient$RunningState;->this$0:Landroid/net/ip/IpClient;

    invoke-static {v0}, Landroid/net/ip/IpClient;->access$1800(Landroid/net/ip/IpClient;)Landroid/net/dhcp/DhcpClient;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/dhcp/DhcpClient;->doQuit()V

    .line 1664
    :cond_2
    iget-object v0, p0, Landroid/net/ip/IpClient$RunningState;->mPacketTracker:Landroid/net/ip/ConnectivityPacketTracker;

    if-eqz v0, :cond_3

    .line 1665
    iget-object v0, p0, Landroid/net/ip/IpClient$RunningState;->mPacketTracker:Landroid/net/ip/ConnectivityPacketTracker;

    invoke-virtual {v0}, Landroid/net/ip/ConnectivityPacketTracker;->stop()V

    .line 1666
    iput-object v1, p0, Landroid/net/ip/IpClient$RunningState;->mPacketTracker:Landroid/net/ip/ConnectivityPacketTracker;

    .line 1669
    :cond_3
    iget-object v0, p0, Landroid/net/ip/IpClient$RunningState;->this$0:Landroid/net/ip/IpClient;

    invoke-static {v0}, Landroid/net/ip/IpClient;->access$2700(Landroid/net/ip/IpClient;)Landroid/net/apf/ApfFilter;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1670
    iget-object v0, p0, Landroid/net/ip/IpClient$RunningState;->this$0:Landroid/net/ip/IpClient;

    invoke-static {v0}, Landroid/net/ip/IpClient;->access$2700(Landroid/net/ip/IpClient;)Landroid/net/apf/ApfFilter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/apf/ApfFilter;->shutdown()V

    .line 1671
    iget-object v0, p0, Landroid/net/ip/IpClient$RunningState;->this$0:Landroid/net/ip/IpClient;

    invoke-static {v0, v1}, Landroid/net/ip/IpClient;->access$2702(Landroid/net/ip/IpClient;Landroid/net/apf/ApfFilter;)Landroid/net/apf/ApfFilter;

    .line 1674
    :cond_4
    iget-object v0, p0, Landroid/net/ip/IpClient$RunningState;->this$0:Landroid/net/ip/IpClient;

    invoke-static {v0}, Landroid/net/ip/IpClient;->access$600(Landroid/net/ip/IpClient;)V

    .line 1675
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 1706
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    packed-switch v0, :pswitch_data_3

    .line 1830
    return v2

    .line 1787
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/LinkAddress;

    .line 1788
    .local v0, "ipAddress":Landroid/net/LinkAddress;
    iget-object v3, p0, Landroid/net/ip/IpClient$RunningState;->this$0:Landroid/net/ip/IpClient;

    invoke-static {v3}, Landroid/net/ip/IpClient;->access$2000(Landroid/net/ip/IpClient;)Landroid/net/ip/InterfaceController;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/net/ip/InterfaceController;->setIPv4Address(Landroid/net/LinkAddress;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1789
    iget-object v2, p0, Landroid/net/ip/IpClient$RunningState;->this$0:Landroid/net/ip/IpClient;

    invoke-static {v2}, Landroid/net/ip/IpClient;->access$1800(Landroid/net/ip/IpClient;)Landroid/net/dhcp/DhcpClient;

    move-result-object v2

    const v3, 0x30009

    invoke-virtual {v2, v3}, Landroid/net/dhcp/DhcpClient;->sendMessage(I)V

    goto/16 :goto_0

    .line 1791
    :cond_0
    iget-object v3, p0, Landroid/net/ip/IpClient$RunningState;->this$0:Landroid/net/ip/IpClient;

    const-string v4, "Failed to set IPv4 address."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3, v4, v2}, Landroid/net/ip/IpClient;->access$1600(Landroid/net/ip/IpClient;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1792
    iget-object v2, p0, Landroid/net/ip/IpClient$RunningState;->this$0:Landroid/net/ip/IpClient;

    sget-object v3, Landroid/net/LinkProperties$ProvisioningChange;->LOST_PROVISIONING:Landroid/net/LinkProperties$ProvisioningChange;

    new-instance v4, Landroid/net/LinkProperties;

    iget-object v5, p0, Landroid/net/ip/IpClient$RunningState;->this$0:Landroid/net/ip/IpClient;

    .line 1793
    invoke-static {v5}, Landroid/net/ip/IpClient;->access$2500(Landroid/net/ip/IpClient;)Landroid/net/LinkProperties;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    .line 1792
    invoke-static {v2, v3, v4}, Landroid/net/ip/IpClient;->access$3900(Landroid/net/ip/IpClient;Landroid/net/LinkProperties$ProvisioningChange;Landroid/net/LinkProperties;)V

    .line 1794
    iget-object v2, p0, Landroid/net/ip/IpClient$RunningState;->this$0:Landroid/net/ip/IpClient;

    iget-object v3, p0, Landroid/net/ip/IpClient$RunningState;->this$0:Landroid/net/ip/IpClient;

    invoke-static {v3}, Landroid/net/ip/IpClient;->access$2300(Landroid/net/ip/IpClient;)Lcom/android/internal/util/State;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/ip/IpClient;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 1796
    goto/16 :goto_0

    .line 1783
    .end local v0    # "ipAddress":Landroid/net/LinkAddress;
    :pswitch_1
    iget-object v0, p0, Landroid/net/ip/IpClient$RunningState;->this$0:Landroid/net/ip/IpClient;

    invoke-static {v0}, Landroid/net/ip/IpClient;->access$2000(Landroid/net/ip/IpClient;)Landroid/net/ip/InterfaceController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/ip/InterfaceController;->clearIPv4Address()Z

    .line 1784
    goto/16 :goto_0

    .line 1825
    :pswitch_2
    iget-object v0, p0, Landroid/net/ip/IpClient$RunningState;->this$0:Landroid/net/ip/IpClient;

    const-string v3, "Unexpected CMD_ON_QUIT."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v2}, Landroid/net/ip/IpClient;->access$1600(Landroid/net/ip/IpClient;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1826
    iget-object v0, p0, Landroid/net/ip/IpClient$RunningState;->this$0:Landroid/net/ip/IpClient;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/net/ip/IpClient;->access$1802(Landroid/net/ip/IpClient;Landroid/net/dhcp/DhcpClient;)Landroid/net/dhcp/DhcpClient;

    .line 1827
    goto/16 :goto_0

    .line 1809
    :pswitch_3
    invoke-direct {p0}, Landroid/net/ip/IpClient$RunningState;->stopDhcpAction()V

    .line 1811
    iget v0, p1, Landroid/os/Message;->arg1:I

    packed-switch v0, :pswitch_data_4

    .line 1819
    iget-object v0, p0, Landroid/net/ip/IpClient$RunningState;->this$0:Landroid/net/ip/IpClient;

    const-string v3, "Unknown CMD_POST_DHCP_ACTION status: %s"

    new-array v4, v1, [Ljava/lang/Object;

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, Landroid/net/ip/IpClient;->access$1600(Landroid/net/ip/IpClient;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1821
    goto/16 :goto_0

    .line 1816
    :pswitch_4
    iget-object v0, p0, Landroid/net/ip/IpClient$RunningState;->this$0:Landroid/net/ip/IpClient;

    invoke-static {v0}, Landroid/net/ip/IpClient;->access$4100(Landroid/net/ip/IpClient;)V

    .line 1817
    goto/16 :goto_0

    .line 1813
    :pswitch_5
    iget-object v0, p0, Landroid/net/ip/IpClient$RunningState;->this$0:Landroid/net/ip/IpClient;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/net/DhcpResults;

    invoke-static {v0, v2}, Landroid/net/ip/IpClient;->access$4000(Landroid/net/ip/IpClient;Landroid/net/DhcpResults;)V

    .line 1814
    goto/16 :goto_0

    .line 1775
    :pswitch_6
    iget-object v0, p0, Landroid/net/ip/IpClient$RunningState;->this$0:Landroid/net/ip/IpClient;

    invoke-static {v0}, Landroid/net/ip/IpClient;->access$1000(Landroid/net/ip/IpClient;)Landroid/net/ip/IpClient$ProvisioningConfiguration;

    move-result-object v0

    iget v0, v0, Landroid/net/ip/IpClient$ProvisioningConfiguration;->mRequestedPreDhcpActionMs:I

    if-lez v0, :cond_1

    .line 1776
    invoke-direct {p0}, Landroid/net/ip/IpClient$RunningState;->ensureDhcpAction()V

    goto/16 :goto_0

    .line 1778
    :cond_1
    iget-object v0, p0, Landroid/net/ip/IpClient$RunningState;->this$0:Landroid/net/ip/IpClient;

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Landroid/net/ip/IpClient;->sendMessage(I)V

    .line 1780
    goto/16 :goto_0

    .line 1763
    :pswitch_7
    iget-object v0, p0, Landroid/net/ip/IpClient$RunningState;->this$0:Landroid/net/ip/IpClient;

    invoke-static {v0}, Landroid/net/ip/IpClient;->access$2700(Landroid/net/ip/IpClient;)Landroid/net/apf/ApfFilter;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1764
    iget-object v0, p0, Landroid/net/ip/IpClient$RunningState;->this$0:Landroid/net/ip/IpClient;

    invoke-static {v0}, Landroid/net/ip/IpClient;->access$2700(Landroid/net/ip/IpClient;)Landroid/net/apf/ApfFilter;

    move-result-object v0

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [B

    invoke-virtual {v0, v2}, Landroid/net/apf/ApfFilter;->setDataSnapshot([B)V

    .line 1766
    :cond_2
    iget-object v0, p0, Landroid/net/ip/IpClient$RunningState;->this$0:Landroid/net/ip/IpClient;

    invoke-static {v0}, Landroid/net/ip/IpClient;->access$3800(Landroid/net/ip/IpClient;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 1767
    goto/16 :goto_0

    .line 1771
    :pswitch_8
    invoke-direct {p0}, Landroid/net/ip/IpClient$RunningState;->stopDhcpAction()V

    .line 1772
    goto/16 :goto_0

    .line 1753
    :pswitch_9
    iget-object v0, p0, Landroid/net/ip/IpClient$RunningState;->this$0:Landroid/net/ip/IpClient;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v0, v2}, Landroid/net/ip/IpClient;->access$1502(Landroid/net/ip/IpClient;Z)Z

    .line 1754
    iget-object v0, p0, Landroid/net/ip/IpClient$RunningState;->this$0:Landroid/net/ip/IpClient;

    invoke-static {v0}, Landroid/net/ip/IpClient;->access$2700(Landroid/net/ip/IpClient;)Landroid/net/apf/ApfFilter;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1755
    iget-object v0, p0, Landroid/net/ip/IpClient$RunningState;->this$0:Landroid/net/ip/IpClient;

    invoke-static {v0}, Landroid/net/ip/IpClient;->access$2700(Landroid/net/ip/IpClient;)Landroid/net/apf/ApfFilter;

    move-result-object v0

    iget-object v2, p0, Landroid/net/ip/IpClient$RunningState;->this$0:Landroid/net/ip/IpClient;

    invoke-static {v2}, Landroid/net/ip/IpClient;->access$1500(Landroid/net/ip/IpClient;)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/net/apf/ApfFilter;->setMulticastFilter(Z)V

    goto/16 :goto_0

    .line 1757
    :cond_3
    iget-object v0, p0, Landroid/net/ip/IpClient$RunningState;->this$0:Landroid/net/ip/IpClient;

    iget-object v0, v0, Landroid/net/ip/IpClient;->mCallback:Landroid/net/ip/IpClient$Callback;

    iget-object v2, p0, Landroid/net/ip/IpClient$RunningState;->this$0:Landroid/net/ip/IpClient;

    invoke-static {v2}, Landroid/net/ip/IpClient;->access$1500(Landroid/net/ip/IpClient;)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/net/ip/IpClient$Callback;->setFallbackMulticastFilter(Z)V

    .line 1759
    goto/16 :goto_0

    .line 1747
    :pswitch_a
    iget-object v0, p0, Landroid/net/ip/IpClient$RunningState;->this$0:Landroid/net/ip/IpClient;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/net/ProxyInfo;

    invoke-static {v0, v2}, Landroid/net/ip/IpClient;->access$1402(Landroid/net/ip/IpClient;Landroid/net/ProxyInfo;)Landroid/net/ProxyInfo;

    .line 1749
    iget-object v0, p0, Landroid/net/ip/IpClient$RunningState;->this$0:Landroid/net/ip/IpClient;

    invoke-static {v0, v1}, Landroid/net/ip/IpClient;->access$1200(Landroid/net/ip/IpClient;Z)Z

    .line 1750
    goto :goto_0

    .line 1741
    :pswitch_b
    iget-object v0, p0, Landroid/net/ip/IpClient$RunningState;->this$0:Landroid/net/ip/IpClient;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/net/ip/IpClient;->access$1302(Landroid/net/ip/IpClient;Ljava/lang/String;)Ljava/lang/String;

    .line 1743
    iget-object v0, p0, Landroid/net/ip/IpClient$RunningState;->this$0:Landroid/net/ip/IpClient;

    invoke-static {v0, v1}, Landroid/net/ip/IpClient;->access$1200(Landroid/net/ip/IpClient;Z)Z

    .line 1744
    goto :goto_0

    .line 1735
    :pswitch_c
    iget-object v0, p0, Landroid/net/ip/IpClient$RunningState;->this$0:Landroid/net/ip/IpClient;

    invoke-static {v0, v1}, Landroid/net/ip/IpClient;->access$1200(Landroid/net/ip/IpClient;Z)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1736
    iget-object v0, p0, Landroid/net/ip/IpClient$RunningState;->this$0:Landroid/net/ip/IpClient;

    iget-object v2, p0, Landroid/net/ip/IpClient$RunningState;->this$0:Landroid/net/ip/IpClient;

    invoke-static {v2}, Landroid/net/ip/IpClient;->access$2300(Landroid/net/ip/IpClient;)Lcom/android/internal/util/State;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/net/ip/IpClient;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 1729
    :pswitch_d
    iget-object v0, p0, Landroid/net/ip/IpClient$RunningState;->this$0:Landroid/net/ip/IpClient;

    invoke-static {v0}, Landroid/net/ip/IpClient;->access$1800(Landroid/net/ip/IpClient;)Landroid/net/dhcp/DhcpClient;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1730
    iget-object v0, p0, Landroid/net/ip/IpClient$RunningState;->this$0:Landroid/net/ip/IpClient;

    invoke-static {v0}, Landroid/net/ip/IpClient;->access$1800(Landroid/net/ip/IpClient;)Landroid/net/dhcp/DhcpClient;

    move-result-object v0

    const v2, 0x30006

    invoke-virtual {v0, v2}, Landroid/net/dhcp/DhcpClient;->sendMessage(I)V

    goto :goto_0

    .line 1720
    :pswitch_e
    iget-object v0, p0, Landroid/net/ip/IpClient$RunningState;->this$0:Landroid/net/ip/IpClient;

    invoke-static {v0}, Landroid/net/ip/IpClient;->access$3500(Landroid/net/ip/IpClient;)Landroid/net/ip/IpReachabilityMonitor;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1721
    iget-object v0, p0, Landroid/net/ip/IpClient$RunningState;->this$0:Landroid/net/ip/IpClient;

    invoke-static {v0}, Landroid/net/ip/IpClient;->access$3500(Landroid/net/ip/IpClient;)Landroid/net/ip/IpReachabilityMonitor;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/ip/IpReachabilityMonitor;->probeAll()V

    goto :goto_0

    .line 1712
    :pswitch_f
    iget-object v0, p0, Landroid/net/ip/IpClient$RunningState;->this$0:Landroid/net/ip/IpClient;

    const-string v3, "ALERT: START received in StartedState. Please fix caller."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v2}, Landroid/net/ip/IpClient;->access$1600(Landroid/net/ip/IpClient;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1713
    goto :goto_0

    .line 1708
    :pswitch_10
    iget-object v0, p0, Landroid/net/ip/IpClient$RunningState;->this$0:Landroid/net/ip/IpClient;

    iget-object v2, p0, Landroid/net/ip/IpClient$RunningState;->this$0:Landroid/net/ip/IpClient;

    invoke-static {v2}, Landroid/net/ip/IpClient;->access$2300(Landroid/net/ip/IpClient;)Lcom/android/internal/util/State;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/net/ip/IpClient;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 1709
    nop

    .line 1833
    :cond_4
    :goto_0
    iget-object v0, p0, Landroid/net/ip/IpClient$RunningState;->this$0:Landroid/net/ip/IpClient;

    invoke-static {v0}, Landroid/net/ip/IpClient;->access$1700(Landroid/net/ip/IpClient;)Landroid/net/ip/IpClient$MessageHandlingLogger;

    move-result-object v0

    iget-object v2, p0, Landroid/net/ip/IpClient$RunningState;->this$0:Landroid/net/ip/IpClient;

    invoke-virtual {v2}, Landroid/net/ip/IpClient;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v2

    invoke-virtual {v0, p0, v2}, Landroid/net/ip/IpClient$MessageHandlingLogger;->handled(Lcom/android/internal/util/State;Lcom/android/internal/util/IState;)V

    .line 1834
    return v1

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xb
        :pswitch_8
        :pswitch_7
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x30003
        :pswitch_6
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x30007
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method
