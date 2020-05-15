.class Landroid/net/ip/IpClient$3;
.super Lcom/android/server/net/NetlinkTracker;
.source "IpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/ip/IpClient;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/net/ip/IpClient$Callback;Landroid/net/ip/IpClient$Dependencies;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/ip/IpClient;


# direct methods
.method constructor <init>(Landroid/net/ip/IpClient;Ljava/lang/String;Lcom/android/server/net/NetlinkTracker$Callback;)V
    .locals 0
    .param p1, "this$0"    # Landroid/net/ip/IpClient;
    .param p2, "x0"    # Ljava/lang/String;
    .param p3, "x1"    # Lcom/android/server/net/NetlinkTracker$Callback;

    .line 738
    iput-object p1, p0, Landroid/net/ip/IpClient$3;->this$0:Landroid/net/ip/IpClient;

    invoke-direct {p0, p2, p3}, Lcom/android/server/net/NetlinkTracker;-><init>(Ljava/lang/String;Lcom/android/server/net/NetlinkTracker$Callback;)V

    return-void
.end method

.method public static synthetic lambda$logMsg$0(Landroid/net/ip/IpClient$3;Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .line 772
    iget-object v0, p0, Landroid/net/ip/IpClient$3;->this$0:Landroid/net/ip/IpClient;

    invoke-static {v0}, Landroid/net/ip/IpClient;->access$000(Landroid/net/ip/IpClient;)Landroid/net/util/SharedLog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OBSERVED "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/util/SharedLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method private logMsg(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 771
    iget-object v0, p0, Landroid/net/ip/IpClient$3;->this$0:Landroid/net/ip/IpClient;

    invoke-static {v0}, Landroid/net/ip/IpClient;->access$400(Landroid/net/ip/IpClient;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    iget-object v0, p0, Landroid/net/ip/IpClient$3;->this$0:Landroid/net/ip/IpClient;

    invoke-virtual {v0}, Landroid/net/ip/IpClient;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/net/ip/-$$Lambda$IpClient$3$97DqfCdvF_DK1fYMrSYfnetT_aU;

    invoke-direct {v1, p0, p1}, Landroid/net/ip/-$$Lambda$IpClient$3$97DqfCdvF_DK1fYMrSYfnetT_aU;-><init>(Landroid/net/ip/IpClient$3;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 773
    return-void
.end method


# virtual methods
.method public interfaceAdded(Ljava/lang/String;)V
    .locals 2
    .param p1, "iface"    # Ljava/lang/String;

    .line 741
    invoke-super {p0, p1}, Lcom/android/server/net/NetlinkTracker;->interfaceAdded(Ljava/lang/String;)V

    .line 742
    iget-object v0, p0, Landroid/net/ip/IpClient$3;->this$0:Landroid/net/ip/IpClient;

    invoke-static {v0}, Landroid/net/ip/IpClient;->access$200(Landroid/net/ip/IpClient;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 743
    iget-object v0, p0, Landroid/net/ip/IpClient$3;->this$0:Landroid/net/ip/IpClient;

    iget-object v0, v0, Landroid/net/ip/IpClient;->mCallback:Landroid/net/ip/IpClient$Callback;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/ip/IpClient$Callback;->setNeighborDiscoveryOffload(Z)V

    goto :goto_0

    .line 744
    :cond_0
    iget-object v0, p0, Landroid/net/ip/IpClient$3;->this$0:Landroid/net/ip/IpClient;

    invoke-static {v0}, Landroid/net/ip/IpClient;->access$300(Landroid/net/ip/IpClient;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 745
    return-void

    .line 748
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "interfaceAdded("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 749
    .local v0, "msg":Ljava/lang/String;
    invoke-direct {p0, v0}, Landroid/net/ip/IpClient$3;->logMsg(Ljava/lang/String;)V

    .line 750
    return-void
.end method

.method public interfaceRemoved(Ljava/lang/String;)V
    .locals 2
    .param p1, "iface"    # Ljava/lang/String;

    .line 754
    invoke-super {p0, p1}, Lcom/android/server/net/NetlinkTracker;->interfaceRemoved(Ljava/lang/String;)V

    .line 757
    iget-object v0, p0, Landroid/net/ip/IpClient$3;->this$0:Landroid/net/ip/IpClient;

    invoke-static {v0}, Landroid/net/ip/IpClient;->access$200(Landroid/net/ip/IpClient;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 761
    iget-object v0, p0, Landroid/net/ip/IpClient$3;->this$0:Landroid/net/ip/IpClient;

    iget-object v0, v0, Landroid/net/ip/IpClient;->mCallback:Landroid/net/ip/IpClient$Callback;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/ip/IpClient$Callback;->setNeighborDiscoveryOffload(Z)V

    goto :goto_0

    .line 762
    :cond_0
    iget-object v0, p0, Landroid/net/ip/IpClient$3;->this$0:Landroid/net/ip/IpClient;

    invoke-static {v0}, Landroid/net/ip/IpClient;->access$300(Landroid/net/ip/IpClient;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 763
    return-void

    .line 766
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "interfaceRemoved("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 767
    .local v0, "msg":Ljava/lang/String;
    invoke-direct {p0, v0}, Landroid/net/ip/IpClient$3;->logMsg(Ljava/lang/String;)V

    .line 768
    return-void
.end method
