.class Landroid/media/MediaPlayer2Impl$7;
.super Landroid/media/MediaPlayer2Impl$Task;
.source "MediaPlayer2Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/MediaPlayer2Impl;->setNextDataSource(Landroid/media/DataSourceDesc;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/MediaPlayer2Impl;

.field final synthetic val$dsd:Landroid/media/DataSourceDesc;


# direct methods
.method constructor <init>(Landroid/media/MediaPlayer2Impl;IZLandroid/media/DataSourceDesc;)V
    .locals 0
    .param p1, "this$0"    # Landroid/media/MediaPlayer2Impl;
    .param p2, "mediaCallType"    # I
    .param p3, "needToWaitForEventToComplete"    # Z

    .line 419
    iput-object p1, p0, Landroid/media/MediaPlayer2Impl$7;->this$0:Landroid/media/MediaPlayer2Impl;

    iput-object p4, p0, Landroid/media/MediaPlayer2Impl$7;->val$dsd:Landroid/media/DataSourceDesc;

    invoke-direct {p0, p1, p2, p3}, Landroid/media/MediaPlayer2Impl$Task;-><init>(Landroid/media/MediaPlayer2Impl;IZ)V

    return-void
.end method


# virtual methods
.method process()V
    .locals 6

    .line 422
    iget-object v0, p0, Landroid/media/MediaPlayer2Impl$7;->val$dsd:Landroid/media/DataSourceDesc;

    const-string/jumbo v1, "the DataSourceDesc cannot be null"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    iget-object v0, p0, Landroid/media/MediaPlayer2Impl$7;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {v0}, Landroid/media/MediaPlayer2Impl;->access$400(Landroid/media/MediaPlayer2Impl;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 424
    :try_start_0
    iget-object v1, p0, Landroid/media/MediaPlayer2Impl$7;->this$0:Landroid/media/MediaPlayer2Impl;

    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {v1, v2}, Landroid/media/MediaPlayer2Impl;->access$902(Landroid/media/MediaPlayer2Impl;Ljava/util/List;)Ljava/util/List;

    .line 425
    iget-object v1, p0, Landroid/media/MediaPlayer2Impl$7;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {v1}, Landroid/media/MediaPlayer2Impl;->access$900(Landroid/media/MediaPlayer2Impl;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Landroid/media/MediaPlayer2Impl$7;->val$dsd:Landroid/media/DataSourceDesc;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 426
    iget-object v1, p0, Landroid/media/MediaPlayer2Impl$7;->this$0:Landroid/media/MediaPlayer2Impl;

    iget-object v2, p0, Landroid/media/MediaPlayer2Impl$7;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {v2}, Landroid/media/MediaPlayer2Impl;->access$708(Landroid/media/MediaPlayer2Impl;)J

    move-result-wide v4

    invoke-static {v1, v4, v5}, Landroid/media/MediaPlayer2Impl;->access$1002(Landroid/media/MediaPlayer2Impl;J)J

    .line 427
    iget-object v1, p0, Landroid/media/MediaPlayer2Impl$7;->this$0:Landroid/media/MediaPlayer2Impl;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/media/MediaPlayer2Impl;->access$1102(Landroid/media/MediaPlayer2Impl;I)I

    .line 428
    iget-object v1, p0, Landroid/media/MediaPlayer2Impl$7;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {v1, v2}, Landroid/media/MediaPlayer2Impl;->access$1202(Landroid/media/MediaPlayer2Impl;Z)Z

    .line 429
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 430
    iget-object v0, p0, Landroid/media/MediaPlayer2Impl$7;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-virtual {v0}, Landroid/media/MediaPlayer2Impl;->getMediaPlayer2State()I

    move-result v0

    .line 431
    .local v0, "state":I
    if-eq v0, v3, :cond_0

    .line 432
    iget-object v1, p0, Landroid/media/MediaPlayer2Impl$7;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {v1}, Landroid/media/MediaPlayer2Impl;->access$400(Landroid/media/MediaPlayer2Impl;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 433
    :try_start_1
    iget-object v2, p0, Landroid/media/MediaPlayer2Impl$7;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {v2}, Landroid/media/MediaPlayer2Impl;->access$1300(Landroid/media/MediaPlayer2Impl;)V

    .line 434
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 436
    :cond_0
    :goto_0
    return-void

    .line 429
    .end local v0    # "state":I
    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method
