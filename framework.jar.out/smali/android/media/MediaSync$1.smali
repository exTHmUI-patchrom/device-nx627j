.class Landroid/media/MediaSync$1;
.super Ljava/lang/Object;
.source "MediaSync.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/MediaSync;->postRenderAudio(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/MediaSync;


# direct methods
.method constructor <init>(Landroid/media/MediaSync;)V
    .locals 0
    .param p1, "this$0"    # Landroid/media/MediaSync;

    .line 525
    iput-object p1, p0, Landroid/media/MediaSync$1;->this$0:Landroid/media/MediaSync;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 527
    iget-object v0, p0, Landroid/media/MediaSync$1;->this$0:Landroid/media/MediaSync;

    invoke-static {v0}, Landroid/media/MediaSync;->access$000(Landroid/media/MediaSync;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 528
    :try_start_0
    iget-object v1, p0, Landroid/media/MediaSync$1;->this$0:Landroid/media/MediaSync;

    invoke-static {v1}, Landroid/media/MediaSync;->access$100(Landroid/media/MediaSync;)F

    move-result v1

    float-to-double v1, v1

    const-wide/16 v3, 0x0

    cmpl-double v1, v1, v3

    if-nez v1, :cond_0

    .line 529
    monitor-exit v0

    return-void

    .line 532
    :cond_0
    iget-object v1, p0, Landroid/media/MediaSync$1;->this$0:Landroid/media/MediaSync;

    invoke-static {v1}, Landroid/media/MediaSync;->access$200(Landroid/media/MediaSync;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 533
    monitor-exit v0

    return-void

    .line 536
    :cond_1
    iget-object v1, p0, Landroid/media/MediaSync$1;->this$0:Landroid/media/MediaSync;

    invoke-static {v1}, Landroid/media/MediaSync;->access$200(Landroid/media/MediaSync;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaSync$AudioBuffer;

    .line 537
    .local v1, "audioBuffer":Landroid/media/MediaSync$AudioBuffer;
    iget-object v3, v1, Landroid/media/MediaSync$AudioBuffer;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    .line 539
    .local v3, "size":I
    if-lez v3, :cond_2

    iget-object v4, p0, Landroid/media/MediaSync$1;->this$0:Landroid/media/MediaSync;

    invoke-static {v4}, Landroid/media/MediaSync;->access$300(Landroid/media/MediaSync;)Landroid/media/AudioTrack;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v5, 0x3

    if-eq v4, v5, :cond_2

    .line 541
    :try_start_1
    iget-object v4, p0, Landroid/media/MediaSync$1;->this$0:Landroid/media/MediaSync;

    invoke-static {v4}, Landroid/media/MediaSync;->access$300(Landroid/media/MediaSync;)Landroid/media/AudioTrack;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/AudioTrack;->play()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 544
    goto :goto_0

    .line 542
    :catch_0
    move-exception v4

    .line 543
    .local v4, "e":Ljava/lang/IllegalStateException;
    :try_start_2
    const-string v5, "MediaSync"

    const-string v6, "could not start audio track"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    .end local v4    # "e":Ljava/lang/IllegalStateException;
    :cond_2
    :goto_0
    iget-object v4, p0, Landroid/media/MediaSync$1;->this$0:Landroid/media/MediaSync;

    invoke-static {v4}, Landroid/media/MediaSync;->access$300(Landroid/media/MediaSync;)Landroid/media/AudioTrack;

    move-result-object v4

    iget-object v5, v1, Landroid/media/MediaSync$AudioBuffer;->mByteBuffer:Ljava/nio/ByteBuffer;

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v3, v6}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;II)I

    move-result v4

    .line 550
    .local v4, "sizeWritten":I
    if-lez v4, :cond_5

    .line 551
    iget-wide v5, v1, Landroid/media/MediaSync$AudioBuffer;->mPresentationTimeUs:J

    const-wide/16 v7, -0x1

    cmp-long v5, v5, v7

    if-eqz v5, :cond_3

    .line 552
    iget-object v5, p0, Landroid/media/MediaSync$1;->this$0:Landroid/media/MediaSync;

    iget-wide v9, v1, Landroid/media/MediaSync$AudioBuffer;->mPresentationTimeUs:J

    invoke-static {v5, v3, v9, v10}, Landroid/media/MediaSync;->access$400(Landroid/media/MediaSync;IJ)V

    .line 554
    iput-wide v7, v1, Landroid/media/MediaSync$AudioBuffer;->mPresentationTimeUs:J

    .line 557
    :cond_3
    if-ne v4, v3, :cond_5

    .line 558
    iget-object v5, p0, Landroid/media/MediaSync$1;->this$0:Landroid/media/MediaSync;

    invoke-static {v5, v1}, Landroid/media/MediaSync;->access$500(Landroid/media/MediaSync;Landroid/media/MediaSync$AudioBuffer;)V

    .line 559
    iget-object v5, p0, Landroid/media/MediaSync$1;->this$0:Landroid/media/MediaSync;

    invoke-static {v5}, Landroid/media/MediaSync;->access$200(Landroid/media/MediaSync;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 560
    iget-object v2, p0, Landroid/media/MediaSync$1;->this$0:Landroid/media/MediaSync;

    invoke-static {v2}, Landroid/media/MediaSync;->access$200(Landroid/media/MediaSync;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 561
    iget-object v2, p0, Landroid/media/MediaSync$1;->this$0:Landroid/media/MediaSync;

    const-wide/16 v5, 0x0

    invoke-static {v2, v5, v6}, Landroid/media/MediaSync;->access$600(Landroid/media/MediaSync;J)V

    .line 563
    :cond_4
    monitor-exit v0

    return-void

    .line 566
    :cond_5
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v5, p0, Landroid/media/MediaSync$1;->this$0:Landroid/media/MediaSync;

    .line 567
    invoke-static {v5}, Landroid/media/MediaSync;->access$700(Landroid/media/MediaSync;)J

    move-result-wide v5

    .line 566
    invoke-virtual {v2, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v5

    .line 568
    .local v5, "pendingTimeMs":J
    iget-object v2, p0, Landroid/media/MediaSync$1;->this$0:Landroid/media/MediaSync;

    const-wide/16 v7, 0x2

    div-long v7, v5, v7

    invoke-static {v2, v7, v8}, Landroid/media/MediaSync;->access$600(Landroid/media/MediaSync;J)V

    .line 569
    .end local v1    # "audioBuffer":Landroid/media/MediaSync$AudioBuffer;
    .end local v3    # "size":I
    .end local v4    # "sizeWritten":I
    .end local v5    # "pendingTimeMs":J
    monitor-exit v0

    .line 570
    return-void

    .line 569
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
