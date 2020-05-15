.class Lcom/android/server/wifi/WifiStateMachine$IpClientCallback;
.super Landroid/net/ip/IpClient$Callback;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "IpClientCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiStateMachine;

    .line 1105
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine$IpClientCallback;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-direct {p0}, Landroid/net/ip/IpClient$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public installPacketFilter([B)V
    .locals 2
    .param p1, "filter"    # [B

    .line 1154
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$IpClientCallback;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v1, 0x200ca

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 1155
    return-void
.end method

.method public onLinkPropertiesChange(Landroid/net/LinkProperties;)V
    .locals 2
    .param p1, "newLp"    # Landroid/net/LinkProperties;

    .line 1143
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$IpClientCallback;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v1, 0x2008c

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 1144
    return-void
.end method

.method public onNewDhcpResults(Landroid/net/DhcpResults;)V
    .locals 4
    .param p1, "dhcpResults"    # Landroid/net/DhcpResults;

    .line 1118
    if-eqz p1, :cond_0

    .line 1119
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$IpClientCallback;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v1, 0x200c8

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0

    .line 1121
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$IpClientCallback;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v1, 0x200c9

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(I)V

    .line 1122
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$IpClientCallback;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$1300(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiInjector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiInjector;->getWifiLastResortWatchdog()Lcom/android/server/wifi/WifiLastResortWatchdog;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$IpClientCallback;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    .line 1123
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$1100(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$IpClientCallback;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$1200(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    .line 1122
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiLastResortWatchdog;->noteConnectionFailureAndTriggerIfNeeded(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 1126
    :goto_0
    return-void
.end method

.method public onPostDhcpAction()V
    .locals 2

    .line 1113
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$IpClientCallback;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v1, 0x30004

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(I)V

    .line 1114
    return-void
.end method

.method public onPreDhcpAction()V
    .locals 2

    .line 1108
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$IpClientCallback;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v1, 0x30003

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(I)V

    .line 1109
    return-void
.end method

.method public onProvisioningFailure(Landroid/net/LinkProperties;)V
    .locals 2
    .param p1, "newLp"    # Landroid/net/LinkProperties;

    .line 1137
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$IpClientCallback;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$1400(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiMetrics;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiMetrics;->logStaEvent(I)V

    .line 1138
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$IpClientCallback;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v1, 0x2008b

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(I)V

    .line 1139
    return-void
.end method

.method public onProvisioningSuccess(Landroid/net/LinkProperties;)V
    .locals 2
    .param p1, "newLp"    # Landroid/net/LinkProperties;

    .line 1130
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$IpClientCallback;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$1400(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiMetrics;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiMetrics;->logStaEvent(I)V

    .line 1131
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$IpClientCallback;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v1, 0x2008c

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 1132
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$IpClientCallback;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v1, 0x2008a

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(I)V

    .line 1133
    return-void
.end method

.method public onReachabilityLost(Ljava/lang/String;)V
    .locals 2
    .param p1, "logMsg"    # Ljava/lang/String;

    .line 1148
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$IpClientCallback;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$1400(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiMetrics;

    move-result-object v0

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiMetrics;->logStaEvent(I)V

    .line 1149
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$IpClientCallback;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v1, 0x20095

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 1150
    return-void
.end method

.method public setFallbackMulticastFilter(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .line 1164
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$IpClientCallback;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const v2, 0x200cb

    invoke-virtual {v0, v2, v1}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 1165
    return-void
.end method

.method public setNeighborDiscoveryOffload(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .line 1169
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$IpClientCallback;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v1, 0x200cc

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(II)V

    .line 1170
    return-void
.end method

.method public startReadPacketFilter()V
    .locals 2

    .line 1159
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$IpClientCallback;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v1, 0x200d0

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(I)V

    .line 1160
    return-void
.end method
