.class Landroid/net/dhcp/DhcpClient$DhcpRapidCommitInitState;
.super Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;
.source "DhcpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/dhcp/DhcpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DhcpRapidCommitInitState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/dhcp/DhcpClient;


# direct methods
.method public constructor <init>(Landroid/net/dhcp/DhcpClient;)V
    .locals 0
    .param p1, "this$0"    # Landroid/net/dhcp/DhcpClient;

    .line 639
    iput-object p1, p0, Landroid/net/dhcp/DhcpClient$DhcpRapidCommitInitState;->this$0:Landroid/net/dhcp/DhcpClient;

    .line 640
    invoke-direct {p0, p1}, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;-><init>(Landroid/net/dhcp/DhcpClient;)V

    .line 641
    return-void
.end method


# virtual methods
.method public enter()V
    .locals 3

    .line 645
    invoke-super {p0}, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;->enter()V

    .line 646
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpRapidCommitInitState;->this$0:Landroid/net/dhcp/DhcpClient;

    iget-boolean v0, v0, Landroid/net/dhcp/DhcpClient;->mDiscoverSent:Z

    if-nez v0, :cond_0

    .line 647
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpRapidCommitInitState;->this$0:Landroid/net/dhcp/DhcpClient;

    invoke-static {v0}, Landroid/net/dhcp/DhcpClient;->access$1100(Landroid/net/dhcp/DhcpClient;)V

    .line 649
    :cond_0
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpRapidCommitInitState;->this$0:Landroid/net/dhcp/DhcpClient;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/net/dhcp/DhcpClient;->access$1202(Landroid/net/dhcp/DhcpClient;J)J

    .line 650
    return-void
.end method

.method protected receivePacket(Landroid/net/dhcp/DhcpPacket;)V
    .locals 3
    .param p1, "packet"    # Landroid/net/dhcp/DhcpPacket;

    .line 661
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpRapidCommitInitState;->this$0:Landroid/net/dhcp/DhcpClient;

    invoke-virtual {v0, p1}, Landroid/net/dhcp/DhcpClient;->isValidPacket(Landroid/net/dhcp/DhcpPacket;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 662
    :cond_0
    instance-of v0, p1, Landroid/net/dhcp/DhcpOfferPacket;

    if-eqz v0, :cond_1

    .line 663
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpRapidCommitInitState;->this$0:Landroid/net/dhcp/DhcpClient;

    invoke-virtual {p1}, Landroid/net/dhcp/DhcpPacket;->toDhcpResults()Landroid/net/DhcpResults;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/dhcp/DhcpClient;->access$1402(Landroid/net/dhcp/DhcpClient;Landroid/net/DhcpResults;)Landroid/net/DhcpResults;

    .line 664
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpRapidCommitInitState;->this$0:Landroid/net/dhcp/DhcpClient;

    invoke-static {v0}, Landroid/net/dhcp/DhcpClient;->access$1400(Landroid/net/dhcp/DhcpClient;)Landroid/net/DhcpResults;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 665
    const-string v0, "DhcpClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DhcpRapidCommitInitState:Got pending lease: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/net/dhcp/DhcpClient$DhcpRapidCommitInitState;->this$0:Landroid/net/dhcp/DhcpClient;

    invoke-static {v2}, Landroid/net/dhcp/DhcpClient;->access$1400(Landroid/net/dhcp/DhcpClient;)Landroid/net/DhcpResults;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpRapidCommitInitState;->this$0:Landroid/net/dhcp/DhcpClient;

    iget-object v1, p0, Landroid/net/dhcp/DhcpClient$DhcpRapidCommitInitState;->this$0:Landroid/net/dhcp/DhcpClient;

    invoke-static {v1}, Landroid/net/dhcp/DhcpClient;->access$1500(Landroid/net/dhcp/DhcpClient;)Lcom/android/internal/util/State;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/dhcp/DhcpClient;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 668
    :cond_1
    instance-of v0, p1, Landroid/net/dhcp/DhcpAckPacket;

    if-eqz v0, :cond_3

    .line 669
    invoke-virtual {p1}, Landroid/net/dhcp/DhcpPacket;->toDhcpResults()Landroid/net/DhcpResults;

    move-result-object v0

    .line 670
    .local v0, "results":Landroid/net/DhcpResults;
    const-string v1, "DhcpClient"

    const-string v2, "Received ACK in DhcpRapidCommitInitState"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    if-eqz v0, :cond_2

    .line 672
    iget-object v1, p0, Landroid/net/dhcp/DhcpClient$DhcpRapidCommitInitState;->this$0:Landroid/net/dhcp/DhcpClient;

    invoke-virtual {v1, p1}, Landroid/net/dhcp/DhcpClient;->setDhcpLeaseExpiry(Landroid/net/dhcp/DhcpPacket;)V

    .line 673
    iget-object v1, p0, Landroid/net/dhcp/DhcpClient$DhcpRapidCommitInitState;->this$0:Landroid/net/dhcp/DhcpClient;

    const-string v2, "Confirmed"

    invoke-static {v1, v0, v2}, Landroid/net/dhcp/DhcpClient;->access$1600(Landroid/net/dhcp/DhcpClient;Landroid/net/DhcpResults;Ljava/lang/String;)V

    .line 674
    iget-object v1, p0, Landroid/net/dhcp/DhcpClient$DhcpRapidCommitInitState;->this$0:Landroid/net/dhcp/DhcpClient;

    iget-object v2, p0, Landroid/net/dhcp/DhcpClient$DhcpRapidCommitInitState;->this$0:Landroid/net/dhcp/DhcpClient;

    invoke-static {v2}, Landroid/net/dhcp/DhcpClient;->access$1700(Landroid/net/dhcp/DhcpClient;)Lcom/android/internal/util/State;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/dhcp/DhcpClient;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 676
    .end local v0    # "results":Landroid/net/DhcpResults;
    :cond_2
    goto :goto_0

    :cond_3
    instance-of v0, p1, Landroid/net/dhcp/DhcpNakPacket;

    if-eqz v0, :cond_4

    .line 677
    const-string v0, "DhcpClient"

    const-string v1, "Received NAK in DhcpRapidCommitInitState, returning to INIT"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpRapidCommitInitState;->this$0:Landroid/net/dhcp/DhcpClient;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/net/dhcp/DhcpClient;->access$1402(Landroid/net/dhcp/DhcpClient;Landroid/net/DhcpResults;)Landroid/net/DhcpResults;

    .line 679
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpRapidCommitInitState;->this$0:Landroid/net/dhcp/DhcpClient;

    iget-object v1, p0, Landroid/net/dhcp/DhcpClient$DhcpRapidCommitInitState;->this$0:Landroid/net/dhcp/DhcpClient;

    invoke-static {v1}, Landroid/net/dhcp/DhcpClient;->access$800(Landroid/net/dhcp/DhcpClient;)Lcom/android/internal/util/State;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/dhcp/DhcpClient;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 681
    :cond_4
    :goto_0
    return-void
.end method

.method protected sendPacket()Z
    .locals 2

    .line 653
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpRapidCommitInitState;->this$0:Landroid/net/dhcp/DhcpClient;

    iget-boolean v0, v0, Landroid/net/dhcp/DhcpClient;->mDiscoverSent:Z

    if-eqz v0, :cond_0

    .line 654
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpRapidCommitInitState;->this$0:Landroid/net/dhcp/DhcpClient;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/net/dhcp/DhcpClient;->mDiscoverSent:Z

    .line 655
    const/4 v0, 0x1

    return v0

    .line 657
    :cond_0
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpRapidCommitInitState;->this$0:Landroid/net/dhcp/DhcpClient;

    invoke-static {v0}, Landroid/net/dhcp/DhcpClient;->access$1300(Landroid/net/dhcp/DhcpClient;)Z

    move-result v0

    return v0
.end method
