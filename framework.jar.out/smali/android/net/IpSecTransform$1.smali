.class Landroid/net/IpSecTransform$1;
.super Landroid/net/ConnectivityManager$PacketKeepaliveCallback;
.source "IpSecTransform.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/IpSecTransform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/IpSecTransform;


# direct methods
.method constructor <init>(Landroid/net/IpSecTransform;)V
    .locals 0
    .param p1, "this$0"    # Landroid/net/IpSecTransform;

    .line 217
    iput-object p1, p0, Landroid/net/IpSecTransform$1;->this$0:Landroid/net/IpSecTransform;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$PacketKeepaliveCallback;-><init>()V

    return-void
.end method

.method public static synthetic lambda$onError$2(Landroid/net/IpSecTransform$1;I)V
    .locals 1
    .param p1, "error"    # I

    .line 238
    iget-object v0, p0, Landroid/net/IpSecTransform$1;->this$0:Landroid/net/IpSecTransform;

    invoke-static {v0}, Landroid/net/IpSecTransform;->access$200(Landroid/net/IpSecTransform;)Landroid/net/IpSecTransform$NattKeepaliveCallback;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/IpSecTransform$NattKeepaliveCallback;->onError(I)V

    return-void
.end method

.method public static synthetic lambda$onStarted$0(Landroid/net/IpSecTransform$1;)V
    .locals 1

    .line 222
    iget-object v0, p0, Landroid/net/IpSecTransform$1;->this$0:Landroid/net/IpSecTransform;

    invoke-static {v0}, Landroid/net/IpSecTransform;->access$200(Landroid/net/IpSecTransform;)Landroid/net/IpSecTransform$NattKeepaliveCallback;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/IpSecTransform$NattKeepaliveCallback;->onStarted()V

    return-void
.end method

.method public static synthetic lambda$onStopped$1(Landroid/net/IpSecTransform$1;)V
    .locals 1

    .line 230
    iget-object v0, p0, Landroid/net/IpSecTransform$1;->this$0:Landroid/net/IpSecTransform;

    invoke-static {v0}, Landroid/net/IpSecTransform;->access$200(Landroid/net/IpSecTransform;)Landroid/net/IpSecTransform$NattKeepaliveCallback;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/IpSecTransform$NattKeepaliveCallback;->onStopped()V

    return-void
.end method


# virtual methods
.method public onError(I)V
    .locals 2
    .param p1, "error"    # I

    .line 236
    monitor-enter p0

    .line 237
    :try_start_0
    iget-object v0, p0, Landroid/net/IpSecTransform$1;->this$0:Landroid/net/IpSecTransform;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/net/IpSecTransform;->access$102(Landroid/net/IpSecTransform;Landroid/net/ConnectivityManager$PacketKeepalive;)Landroid/net/ConnectivityManager$PacketKeepalive;

    .line 238
    iget-object v0, p0, Landroid/net/IpSecTransform$1;->this$0:Landroid/net/IpSecTransform;

    invoke-static {v0}, Landroid/net/IpSecTransform;->access$000(Landroid/net/IpSecTransform;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/net/-$$Lambda$IpSecTransform$1$_ae2VrMToKvertNlEIezU0bdvXE;

    invoke-direct {v1, p0, p1}, Landroid/net/-$$Lambda$IpSecTransform$1$_ae2VrMToKvertNlEIezU0bdvXE;-><init>(Landroid/net/IpSecTransform$1;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 239
    monitor-exit p0

    .line 240
    return-void

    .line 239
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onStarted()V
    .locals 2

    .line 221
    monitor-enter p0

    .line 222
    :try_start_0
    iget-object v0, p0, Landroid/net/IpSecTransform$1;->this$0:Landroid/net/IpSecTransform;

    invoke-static {v0}, Landroid/net/IpSecTransform;->access$000(Landroid/net/IpSecTransform;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/net/-$$Lambda$IpSecTransform$1$zl9bpxiE2uj_QuCOkuJ091wPuwo;

    invoke-direct {v1, p0}, Landroid/net/-$$Lambda$IpSecTransform$1$zl9bpxiE2uj_QuCOkuJ091wPuwo;-><init>(Landroid/net/IpSecTransform$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 223
    monitor-exit p0

    .line 224
    return-void

    .line 223
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onStopped()V
    .locals 2

    .line 228
    monitor-enter p0

    .line 229
    :try_start_0
    iget-object v0, p0, Landroid/net/IpSecTransform$1;->this$0:Landroid/net/IpSecTransform;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/net/IpSecTransform;->access$102(Landroid/net/IpSecTransform;Landroid/net/ConnectivityManager$PacketKeepalive;)Landroid/net/ConnectivityManager$PacketKeepalive;

    .line 230
    iget-object v0, p0, Landroid/net/IpSecTransform$1;->this$0:Landroid/net/IpSecTransform;

    invoke-static {v0}, Landroid/net/IpSecTransform;->access$000(Landroid/net/IpSecTransform;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/net/-$$Lambda$IpSecTransform$1$Rc3lbWP51o1kJRHwkpVUEV1G_d8;

    invoke-direct {v1, p0}, Landroid/net/-$$Lambda$IpSecTransform$1$Rc3lbWP51o1kJRHwkpVUEV1G_d8;-><init>(Landroid/net/IpSecTransform$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 231
    monitor-exit p0

    .line 232
    return-void

    .line 231
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
