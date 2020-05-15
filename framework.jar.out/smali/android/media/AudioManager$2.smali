.class Landroid/media/AudioManager$2;
.super Landroid/media/IPlaybackConfigDispatcher$Stub;
.source "AudioManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/AudioManager;


# direct methods
.method constructor <init>(Landroid/media/AudioManager;)V
    .locals 0
    .param p1, "this$0"    # Landroid/media/AudioManager;

    .line 3396
    iput-object p1, p0, Landroid/media/AudioManager$2;->this$0:Landroid/media/AudioManager;

    invoke-direct {p0}, Landroid/media/IPlaybackConfigDispatcher$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchPlaybackConfigChange(Ljava/util/List;Z)V
    .locals 7
    .param p2, "flush"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/AudioPlaybackConfiguration;",
            ">;Z)V"
        }
    .end annotation

    .line 3400
    .local p1, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioPlaybackConfiguration;>;"
    if-eqz p2, :cond_0

    .line 3401
    invoke-static {}, Landroid/os/Binder;->flushPendingCommands()V

    .line 3403
    :cond_0
    iget-object v0, p0, Landroid/media/AudioManager$2;->this$0:Landroid/media/AudioManager;

    invoke-static {v0}, Landroid/media/AudioManager;->access$500(Landroid/media/AudioManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3404
    :try_start_0
    iget-object v1, p0, Landroid/media/AudioManager$2;->this$0:Landroid/media/AudioManager;

    invoke-static {v1}, Landroid/media/AudioManager;->access$600(Landroid/media/AudioManager;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 3405
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Landroid/media/AudioManager$2;->this$0:Landroid/media/AudioManager;

    invoke-static {v2}, Landroid/media/AudioManager;->access$600(Landroid/media/AudioManager;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 3406
    iget-object v2, p0, Landroid/media/AudioManager$2;->this$0:Landroid/media/AudioManager;

    invoke-static {v2}, Landroid/media/AudioManager;->access$600(Landroid/media/AudioManager;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager$AudioPlaybackCallbackInfo;

    .line 3407
    .local v2, "arci":Landroid/media/AudioManager$AudioPlaybackCallbackInfo;
    iget-object v3, v2, Landroid/media/AudioManager$AudioPlaybackCallbackInfo;->mHandler:Landroid/os/Handler;

    if-eqz v3, :cond_1

    .line 3408
    iget-object v3, v2, Landroid/media/AudioManager$AudioPlaybackCallbackInfo;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x2

    new-instance v5, Landroid/media/AudioManager$PlaybackConfigChangeCallbackData;

    iget-object v6, v2, Landroid/media/AudioManager$AudioPlaybackCallbackInfo;->mCb:Landroid/media/AudioManager$AudioPlaybackCallback;

    invoke-direct {v5, v6, p1}, Landroid/media/AudioManager$PlaybackConfigChangeCallbackData;-><init>(Landroid/media/AudioManager$AudioPlaybackCallback;Ljava/util/List;)V

    invoke-virtual {v3, v4, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 3411
    .local v3, "m":Landroid/os/Message;
    iget-object v4, v2, Landroid/media/AudioManager$AudioPlaybackCallbackInfo;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3405
    .end local v2    # "arci":Landroid/media/AudioManager$AudioPlaybackCallbackInfo;
    .end local v3    # "m":Landroid/os/Message;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3415
    .end local v1    # "i":I
    :cond_2
    monitor-exit v0

    .line 3416
    return-void

    .line 3415
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
