.class Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$1;
.super Landroid/net/ip/IpClient$Callback;
.source "WifiP2pServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->startIpClient(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    .line 478
    iput-object p1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$1;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    invoke-direct {p0}, Landroid/net/ip/IpClient$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onNewDhcpResults(Landroid/net/DhcpResults;)V
    .locals 2
    .param p1, "dhcpResults"    # Landroid/net/DhcpResults;

    .line 489
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$1;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    invoke-static {v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$000(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    move-result-object v0

    const v1, 0x23020

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 490
    return-void
.end method

.method public onPostDhcpAction()V
    .locals 2

    .line 485
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$1;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    invoke-static {v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$000(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    move-result-object v0

    const v1, 0x2301f

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->sendMessage(I)V

    .line 486
    return-void
.end method

.method public onPreDhcpAction()V
    .locals 2

    .line 481
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$1;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    invoke-static {v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$000(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    move-result-object v0

    const v1, 0x2301e

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->sendMessage(I)V

    .line 482
    return-void
.end method

.method public onProvisioningFailure(Landroid/net/LinkProperties;)V
    .locals 2
    .param p1, "newLp"    # Landroid/net/LinkProperties;

    .line 497
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$1;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    invoke-static {v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$000(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    move-result-object v0

    const v1, 0x23022

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->sendMessage(I)V

    .line 498
    return-void
.end method

.method public onProvisioningSuccess(Landroid/net/LinkProperties;)V
    .locals 2
    .param p1, "newLp"    # Landroid/net/LinkProperties;

    .line 493
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$1;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    invoke-static {v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$000(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    move-result-object v0

    const v1, 0x23021

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->sendMessage(I)V

    .line 494
    return-void
.end method
