.class Landroid/hardware/location/ContextHubManager$4;
.super Landroid/hardware/location/IContextHubCallback$Stub;
.source "ContextHubManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/location/ContextHubManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/location/ContextHubManager;


# direct methods
.method constructor <init>(Landroid/hardware/location/ContextHubManager;)V
    .locals 0
    .param p1, "this$0"    # Landroid/hardware/location/ContextHubManager;

    .line 725
    iput-object p1, p0, Landroid/hardware/location/ContextHubManager$4;->this$0:Landroid/hardware/location/ContextHubManager;

    invoke-direct {p0}, Landroid/hardware/location/IContextHubCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onMessageReceipt(IILandroid/hardware/location/ContextHubMessage;)V
    .locals 8
    .param p1, "hubId"    # I
    .param p2, "nanoAppId"    # I
    .param p3, "message"    # Landroid/hardware/location/ContextHubMessage;

    .line 729
    iget-object v0, p0, Landroid/hardware/location/ContextHubManager$4;->this$0:Landroid/hardware/location/ContextHubManager;

    invoke-static {v0}, Landroid/hardware/location/ContextHubManager;->access$000(Landroid/hardware/location/ContextHubManager;)Landroid/hardware/location/ContextHubManager$Callback;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 730
    monitor-enter p0

    .line 731
    :try_start_0
    iget-object v0, p0, Landroid/hardware/location/ContextHubManager$4;->this$0:Landroid/hardware/location/ContextHubManager;

    invoke-static {v0}, Landroid/hardware/location/ContextHubManager;->access$000(Landroid/hardware/location/ContextHubManager;)Landroid/hardware/location/ContextHubManager$Callback;

    move-result-object v3

    .line 732
    .local v3, "callback":Landroid/hardware/location/ContextHubManager$Callback;
    iget-object v0, p0, Landroid/hardware/location/ContextHubManager$4;->this$0:Landroid/hardware/location/ContextHubManager;

    invoke-static {v0}, Landroid/hardware/location/ContextHubManager;->access$100(Landroid/hardware/location/ContextHubManager;)Landroid/os/Handler;

    move-result-object v0

    if-nez v0, :cond_0

    .line 733
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Landroid/hardware/location/ContextHubManager$4;->this$0:Landroid/hardware/location/ContextHubManager;

    invoke-static {v1}, Landroid/hardware/location/ContextHubManager;->access$200(Landroid/hardware/location/ContextHubManager;)Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/hardware/location/ContextHubManager$4;->this$0:Landroid/hardware/location/ContextHubManager;

    invoke-static {v0}, Landroid/hardware/location/ContextHubManager;->access$100(Landroid/hardware/location/ContextHubManager;)Landroid/os/Handler;

    move-result-object v0

    .line 734
    .local v0, "handler":Landroid/os/Handler;
    :goto_0
    new-instance v7, Landroid/hardware/location/ContextHubManager$4$1;

    move-object v1, v7

    move-object v2, p0

    move v4, p1

    move v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Landroid/hardware/location/ContextHubManager$4$1;-><init>(Landroid/hardware/location/ContextHubManager$4;Landroid/hardware/location/ContextHubManager$Callback;IILandroid/hardware/location/ContextHubMessage;)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 740
    .end local v0    # "handler":Landroid/os/Handler;
    .end local v3    # "callback":Landroid/hardware/location/ContextHubManager$Callback;
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 741
    :cond_1
    iget-object v0, p0, Landroid/hardware/location/ContextHubManager$4;->this$0:Landroid/hardware/location/ContextHubManager;

    invoke-static {v0}, Landroid/hardware/location/ContextHubManager;->access$300(Landroid/hardware/location/ContextHubManager;)Landroid/hardware/location/ContextHubManager$ICallback;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 744
    monitor-enter p0

    .line 745
    :try_start_1
    iget-object v0, p0, Landroid/hardware/location/ContextHubManager$4;->this$0:Landroid/hardware/location/ContextHubManager;

    invoke-static {v0}, Landroid/hardware/location/ContextHubManager;->access$300(Landroid/hardware/location/ContextHubManager;)Landroid/hardware/location/ContextHubManager$ICallback;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/hardware/location/ContextHubManager$ICallback;->onMessageReceipt(IILandroid/hardware/location/ContextHubMessage;)V

    .line 746
    monitor-exit p0

    goto :goto_1

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    .line 748
    :cond_2
    :goto_1
    return-void
.end method
