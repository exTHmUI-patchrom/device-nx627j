.class Landroid/media/MediaPlayer2Impl$12;
.super Landroid/media/MediaPlayer2Impl$Task;
.source "MediaPlayer2Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/MediaPlayer2Impl;->notifyWhenCommandLabelReached(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/MediaPlayer2Impl;

.field final synthetic val$label:Ljava/lang/Object;


# direct methods
.method constructor <init>(Landroid/media/MediaPlayer2Impl;IZLjava/lang/Object;)V
    .locals 0
    .param p1, "this$0"    # Landroid/media/MediaPlayer2Impl;
    .param p2, "mediaCallType"    # I
    .param p3, "needToWaitForEventToComplete"    # Z

    .line 665
    iput-object p1, p0, Landroid/media/MediaPlayer2Impl$12;->this$0:Landroid/media/MediaPlayer2Impl;

    iput-object p4, p0, Landroid/media/MediaPlayer2Impl$12;->val$label:Ljava/lang/Object;

    invoke-direct {p0, p1, p2, p3}, Landroid/media/MediaPlayer2Impl$Task;-><init>(Landroid/media/MediaPlayer2Impl;IZ)V

    return-void
.end method

.method public static synthetic lambda$process$0(Landroid/media/MediaPlayer2Impl$12;Landroid/util/Pair;Ljava/lang/Object;)V
    .locals 2
    .param p1, "cb"    # Landroid/util/Pair;
    .param p2, "label"    # Ljava/lang/Object;

    .line 670
    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/media/MediaPlayer2$MediaPlayer2EventCallback;

    iget-object v1, p0, Landroid/media/MediaPlayer2Impl$12;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-virtual {v0, v1, p2}, Landroid/media/MediaPlayer2$MediaPlayer2EventCallback;->onCommandLabelReached(Landroid/media/MediaPlayer2;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method process()V
    .locals 6

    .line 668
    iget-object v0, p0, Landroid/media/MediaPlayer2Impl$12;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {v0}, Landroid/media/MediaPlayer2Impl;->access$1800(Landroid/media/MediaPlayer2Impl;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 669
    :try_start_0
    iget-object v1, p0, Landroid/media/MediaPlayer2Impl$12;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {v1}, Landroid/media/MediaPlayer2Impl;->access$1900(Landroid/media/MediaPlayer2Impl;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 670
    .local v2, "cb":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/util/concurrent/Executor;Landroid/media/MediaPlayer2$MediaPlayer2EventCallback;>;"
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/util/concurrent/Executor;

    iget-object v4, p0, Landroid/media/MediaPlayer2Impl$12;->val$label:Ljava/lang/Object;

    new-instance v5, Landroid/media/-$$Lambda$MediaPlayer2Impl$12$GAwhcv62KlexkkYkbjb8-qEksjI;

    invoke-direct {v5, p0, v2, v4}, Landroid/media/-$$Lambda$MediaPlayer2Impl$12$GAwhcv62KlexkkYkbjb8-qEksjI;-><init>(Landroid/media/MediaPlayer2Impl$12;Landroid/util/Pair;Ljava/lang/Object;)V

    invoke-interface {v3, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 672
    .end local v2    # "cb":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/util/concurrent/Executor;Landroid/media/MediaPlayer2$MediaPlayer2EventCallback;>;"
    goto :goto_0

    .line 673
    :cond_0
    monitor-exit v0

    .line 674
    return-void

    .line 673
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
