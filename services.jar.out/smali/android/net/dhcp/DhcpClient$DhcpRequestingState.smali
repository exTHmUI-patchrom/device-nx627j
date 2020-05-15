.class Landroid/net/dhcp/DhcpClient$DhcpRequestingState;
.super Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;
.source "DhcpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/dhcp/DhcpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DhcpRequestingState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/dhcp/DhcpClient;


# direct methods
.method public constructor <init>(Landroid/net/dhcp/DhcpClient;)V
    .locals 1
    .param p1, "this$0"    # Landroid/net/dhcp/DhcpClient;

    .line 897
    iput-object p1, p0, Landroid/net/dhcp/DhcpClient$DhcpRequestingState;->this$0:Landroid/net/dhcp/DhcpClient;

    invoke-direct {p0, p1}, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;-><init>(Landroid/net/dhcp/DhcpClient;)V

    .line 898
    const/16 v0, 0x4650

    iput v0, p0, Landroid/net/dhcp/DhcpClient$DhcpRequestingState;->mTimeout:I

    .line 899
    return-void
.end method


# virtual methods
.method protected receivePacket(Landroid/net/dhcp/DhcpPacket;)V
    .locals 3
    .param p1, "packet"    # Landroid/net/dhcp/DhcpPacket;

    .line 910
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpRequestingState;->this$0:Landroid/net/dhcp/DhcpClient;

    invoke-virtual {v0, p1}, Landroid/net/dhcp/DhcpClient;->isValidPacket(Landroid/net/dhcp/DhcpPacket;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 911
    :cond_0
    instance-of v0, p1, Landroid/net/dhcp/DhcpAckPacket;

    if-eqz v0, :cond_2

    .line 912
    invoke-virtual {p1}, Landroid/net/dhcp/DhcpPacket;->toDhcpResults()Landroid/net/DhcpResults;

    move-result-object v0

    .line 913
    .local v0, "results":Landroid/net/DhcpResults;
    if-eqz v0, :cond_1

    .line 914
    iget-object v1, p0, Landroid/net/dhcp/DhcpClient$DhcpRequestingState;->this$0:Landroid/net/dhcp/DhcpClient;

    invoke-virtual {v1, p1}, Landroid/net/dhcp/DhcpClient;->setDhcpLeaseExpiry(Landroid/net/dhcp/DhcpPacket;)V

    .line 915
    iget-object v1, p0, Landroid/net/dhcp/DhcpClient$DhcpRequestingState;->this$0:Landroid/net/dhcp/DhcpClient;

    const-string v2, "Confirmed"

    invoke-static {v1, v0, v2}, Landroid/net/dhcp/DhcpClient;->access$1600(Landroid/net/dhcp/DhcpClient;Landroid/net/DhcpResults;Ljava/lang/String;)V

    .line 916
    iget-object v1, p0, Landroid/net/dhcp/DhcpClient$DhcpRequestingState;->this$0:Landroid/net/dhcp/DhcpClient;

    iget-object v2, p0, Landroid/net/dhcp/DhcpClient$DhcpRequestingState;->this$0:Landroid/net/dhcp/DhcpClient;

    invoke-static {v2}, Landroid/net/dhcp/DhcpClient;->access$1700(Landroid/net/dhcp/DhcpClient;)Lcom/android/internal/util/State;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/dhcp/DhcpClient;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 918
    .end local v0    # "results":Landroid/net/DhcpResults;
    :cond_1
    goto :goto_0

    :cond_2
    instance-of v0, p1, Landroid/net/dhcp/DhcpNakPacket;

    if-eqz v0, :cond_3

    .line 920
    const-string v0, "DhcpClient"

    const-string v1, "Received NAK, returning to INIT"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 921
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpRequestingState;->this$0:Landroid/net/dhcp/DhcpClient;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/net/dhcp/DhcpClient;->access$1402(Landroid/net/dhcp/DhcpClient;Landroid/net/DhcpResults;)Landroid/net/DhcpResults;

    .line 922
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpRequestingState;->this$0:Landroid/net/dhcp/DhcpClient;

    iget-object v1, p0, Landroid/net/dhcp/DhcpClient$DhcpRequestingState;->this$0:Landroid/net/dhcp/DhcpClient;

    invoke-static {v1}, Landroid/net/dhcp/DhcpClient;->access$800(Landroid/net/dhcp/DhcpClient;)Lcom/android/internal/util/State;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/dhcp/DhcpClient;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 924
    :cond_3
    :goto_0
    return-void
.end method

.method protected sendPacket()Z
    .locals 5

    .line 902
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpRequestingState;->this$0:Landroid/net/dhcp/DhcpClient;

    sget-object v1, Landroid/net/dhcp/DhcpPacket;->INADDR_ANY:Ljava/net/Inet4Address;

    iget-object v2, p0, Landroid/net/dhcp/DhcpClient$DhcpRequestingState;->this$0:Landroid/net/dhcp/DhcpClient;

    .line 904
    invoke-static {v2}, Landroid/net/dhcp/DhcpClient;->access$1400(Landroid/net/dhcp/DhcpClient;)Landroid/net/DhcpResults;

    move-result-object v2

    iget-object v2, v2, Landroid/net/DhcpResults;->ipAddress:Landroid/net/LinkAddress;

    invoke-virtual {v2}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    check-cast v2, Ljava/net/Inet4Address;

    iget-object v3, p0, Landroid/net/dhcp/DhcpClient$DhcpRequestingState;->this$0:Landroid/net/dhcp/DhcpClient;

    .line 905
    invoke-static {v3}, Landroid/net/dhcp/DhcpClient;->access$1400(Landroid/net/dhcp/DhcpClient;)Landroid/net/DhcpResults;

    move-result-object v3

    iget-object v3, v3, Landroid/net/DhcpResults;->serverAddress:Ljava/net/Inet4Address;

    sget-object v4, Landroid/net/dhcp/DhcpPacket;->INADDR_BROADCAST:Ljava/net/Inet4Address;

    .line 902
    invoke-static {v0, v1, v2, v3, v4}, Landroid/net/dhcp/DhcpClient;->access$2800(Landroid/net/dhcp/DhcpClient;Ljava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;)Z

    move-result v0

    return v0
.end method

.method protected timeout()V
    .locals 2

    .line 929
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpRequestingState;->this$0:Landroid/net/dhcp/DhcpClient;

    iget-object v1, p0, Landroid/net/dhcp/DhcpClient$DhcpRequestingState;->this$0:Landroid/net/dhcp/DhcpClient;

    invoke-static {v1}, Landroid/net/dhcp/DhcpClient;->access$800(Landroid/net/dhcp/DhcpClient;)Lcom/android/internal/util/State;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/dhcp/DhcpClient;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 930
    return-void
.end method
