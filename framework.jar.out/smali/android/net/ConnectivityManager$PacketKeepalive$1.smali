.class Landroid/net/ConnectivityManager$PacketKeepalive$1;
.super Landroid/os/Handler;
.source "ConnectivityManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/ConnectivityManager$PacketKeepalive;-><init>(Landroid/net/ConnectivityManager;Landroid/net/Network;Landroid/net/ConnectivityManager$PacketKeepaliveCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/net/ConnectivityManager$PacketKeepalive;

.field final synthetic val$this$0:Landroid/net/ConnectivityManager;


# direct methods
.method constructor <init>(Landroid/net/ConnectivityManager$PacketKeepalive;Landroid/os/Looper;Landroid/net/ConnectivityManager;)V
    .locals 0
    .param p1, "this$1"    # Landroid/net/ConnectivityManager$PacketKeepalive;
    .param p2, "x0"    # Landroid/os/Looper;

    .line 1714
    iput-object p1, p0, Landroid/net/ConnectivityManager$PacketKeepalive$1;->this$1:Landroid/net/ConnectivityManager$PacketKeepalive;

    iput-object p3, p0, Landroid/net/ConnectivityManager$PacketKeepalive$1;->val$this$0:Landroid/net/ConnectivityManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "message"    # Landroid/os/Message;

    .line 1717
    iget v0, p1, Landroid/os/Message;->what:I

    const v1, 0x8100d

    if-eq v0, v1, :cond_0

    .line 1739
    const-string v0, "PacketKeepalive"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unhandled message "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1719
    :cond_0
    iget v0, p1, Landroid/os/Message;->arg2:I

    .line 1721
    .local v0, "error":I
    if-nez v0, :cond_2

    .line 1722
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager$PacketKeepalive$1;->this$1:Landroid/net/ConnectivityManager$PacketKeepalive;

    invoke-static {v1}, Landroid/net/ConnectivityManager$PacketKeepalive;->access$300(Landroid/net/ConnectivityManager$PacketKeepalive;)Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1723
    iget-object v1, p0, Landroid/net/ConnectivityManager$PacketKeepalive$1;->this$1:Landroid/net/ConnectivityManager$PacketKeepalive;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/ConnectivityManager$PacketKeepalive;->access$302(Landroid/net/ConnectivityManager$PacketKeepalive;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 1724
    iget-object v1, p0, Landroid/net/ConnectivityManager$PacketKeepalive$1;->this$1:Landroid/net/ConnectivityManager$PacketKeepalive;

    invoke-static {v1}, Landroid/net/ConnectivityManager$PacketKeepalive;->access$400(Landroid/net/ConnectivityManager$PacketKeepalive;)Landroid/net/ConnectivityManager$PacketKeepaliveCallback;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/ConnectivityManager$PacketKeepaliveCallback;->onStarted()V

    goto :goto_0

    .line 1726
    :cond_1
    iget-object v1, p0, Landroid/net/ConnectivityManager$PacketKeepalive$1;->this$1:Landroid/net/ConnectivityManager$PacketKeepalive;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/net/ConnectivityManager$PacketKeepalive;->access$302(Landroid/net/ConnectivityManager$PacketKeepalive;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 1727
    iget-object v1, p0, Landroid/net/ConnectivityManager$PacketKeepalive$1;->this$1:Landroid/net/ConnectivityManager$PacketKeepalive;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager$PacketKeepalive;->stopLooper()V

    .line 1728
    iget-object v1, p0, Landroid/net/ConnectivityManager$PacketKeepalive$1;->this$1:Landroid/net/ConnectivityManager$PacketKeepalive;

    invoke-static {v1}, Landroid/net/ConnectivityManager$PacketKeepalive;->access$400(Landroid/net/ConnectivityManager$PacketKeepalive;)Landroid/net/ConnectivityManager$PacketKeepaliveCallback;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/ConnectivityManager$PacketKeepaliveCallback;->onStopped()V

    goto :goto_0

    .line 1734
    :catch_0
    move-exception v1

    goto :goto_1

    .line 1731
    :cond_2
    iget-object v1, p0, Landroid/net/ConnectivityManager$PacketKeepalive$1;->this$1:Landroid/net/ConnectivityManager$PacketKeepalive;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager$PacketKeepalive;->stopLooper()V

    .line 1732
    iget-object v1, p0, Landroid/net/ConnectivityManager$PacketKeepalive$1;->this$1:Landroid/net/ConnectivityManager$PacketKeepalive;

    invoke-static {v1}, Landroid/net/ConnectivityManager$PacketKeepalive;->access$400(Landroid/net/ConnectivityManager$PacketKeepalive;)Landroid/net/ConnectivityManager$PacketKeepaliveCallback;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/net/ConnectivityManager$PacketKeepaliveCallback;->onError(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1736
    :goto_0
    goto :goto_2

    .line 1734
    :goto_1
    nop

    .line 1735
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "PacketKeepalive"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception in keepalive callback("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1737
    .end local v1    # "e":Ljava/lang/Exception;
    nop

    .line 1742
    .end local v0    # "error":I
    :goto_2
    return-void
.end method
