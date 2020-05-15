.class Landroid/media/MediaPlayer2Impl$6;
.super Landroid/media/MediaPlayer2Impl$Task;
.source "MediaPlayer2Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/MediaPlayer2Impl;->setDataSource(Landroid/media/DataSourceDesc;)V
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

    .line 392
    iput-object p1, p0, Landroid/media/MediaPlayer2Impl$6;->this$0:Landroid/media/MediaPlayer2Impl;

    iput-object p4, p0, Landroid/media/MediaPlayer2Impl$6;->val$dsd:Landroid/media/DataSourceDesc;

    invoke-direct {p0, p1, p2, p3}, Landroid/media/MediaPlayer2Impl$Task;-><init>(Landroid/media/MediaPlayer2Impl;IZ)V

    return-void
.end method


# virtual methods
.method process()V
    .locals 6

    .line 395
    iget-object v0, p0, Landroid/media/MediaPlayer2Impl$6;->val$dsd:Landroid/media/DataSourceDesc;

    const-string/jumbo v1, "the DataSourceDesc cannot be null"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    iget-object v0, p0, Landroid/media/MediaPlayer2Impl$6;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {v0}, Landroid/media/MediaPlayer2Impl;->access$400(Landroid/media/MediaPlayer2Impl;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 398
    :try_start_0
    iget-object v1, p0, Landroid/media/MediaPlayer2Impl$6;->this$0:Landroid/media/MediaPlayer2Impl;

    iget-object v2, p0, Landroid/media/MediaPlayer2Impl$6;->val$dsd:Landroid/media/DataSourceDesc;

    invoke-static {v1, v2}, Landroid/media/MediaPlayer2Impl;->access$502(Landroid/media/MediaPlayer2Impl;Landroid/media/DataSourceDesc;)Landroid/media/DataSourceDesc;

    .line 399
    iget-object v1, p0, Landroid/media/MediaPlayer2Impl$6;->this$0:Landroid/media/MediaPlayer2Impl;

    iget-object v2, p0, Landroid/media/MediaPlayer2Impl$6;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {v2}, Landroid/media/MediaPlayer2Impl;->access$708(Landroid/media/MediaPlayer2Impl;)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Landroid/media/MediaPlayer2Impl;->access$602(Landroid/media/MediaPlayer2Impl;J)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 401
    :try_start_1
    iget-object v1, p0, Landroid/media/MediaPlayer2Impl$6;->this$0:Landroid/media/MediaPlayer2Impl;

    const/4 v2, 0x1

    iget-object v3, p0, Landroid/media/MediaPlayer2Impl$6;->val$dsd:Landroid/media/DataSourceDesc;

    iget-object v4, p0, Landroid/media/MediaPlayer2Impl$6;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {v4}, Landroid/media/MediaPlayer2Impl;->access$600(Landroid/media/MediaPlayer2Impl;)J

    move-result-wide v4

    invoke-static {v1, v2, v3, v4, v5}, Landroid/media/MediaPlayer2Impl;->access$800(Landroid/media/MediaPlayer2Impl;ZLandroid/media/DataSourceDesc;J)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 403
    goto :goto_0

    .line 402
    :catch_0
    move-exception v1

    .line 404
    :goto_0
    :try_start_2
    monitor-exit v0

    .line 405
    return-void

    .line 404
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
