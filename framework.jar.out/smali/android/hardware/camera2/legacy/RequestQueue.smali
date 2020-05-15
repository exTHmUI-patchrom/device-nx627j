.class public Landroid/hardware/camera2/legacy/RequestQueue;
.super Ljava/lang/Object;
.source "RequestQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/legacy/RequestQueue$RequestQueueEntry;
    }
.end annotation


# static fields
.field private static final INVALID_FRAME:J = -0x1L

.field private static final TAG:Ljava/lang/String; = "RequestQueue"


# instance fields
.field private mCurrentFrameNumber:J

.field private mCurrentRepeatingFrameNumber:J

.field private mCurrentRequestId:I

.field private final mJpegSurfaceIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mRepeatingRequest:Landroid/hardware/camera2/legacy/BurstHolder;

.field private final mRequestQueue:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Landroid/hardware/camera2/legacy/BurstHolder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 65
    .local p1, "jpegSurfaceIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/camera2/legacy/RequestQueue;->mRepeatingRequest:Landroid/hardware/camera2/legacy/BurstHolder;

    .line 36
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/legacy/RequestQueue;->mRequestQueue:Ljava/util/ArrayDeque;

    .line 38
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/hardware/camera2/legacy/RequestQueue;->mCurrentFrameNumber:J

    .line 39
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/hardware/camera2/legacy/RequestQueue;->mCurrentRepeatingFrameNumber:J

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/camera2/legacy/RequestQueue;->mCurrentRequestId:I

    .line 66
    iput-object p1, p0, Landroid/hardware/camera2/legacy/RequestQueue;->mJpegSurfaceIds:Ljava/util/List;

    .line 67
    return-void
.end method

.method private calculateLastFrame(I)J
    .locals 6
    .param p1, "requestId"    # I

    .line 163
    iget-wide v0, p0, Landroid/hardware/camera2/legacy/RequestQueue;->mCurrentFrameNumber:J

    .line 164
    .local v0, "total":J
    iget-object v2, p0, Landroid/hardware/camera2/legacy/RequestQueue;->mRequestQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/camera2/legacy/BurstHolder;

    .line 165
    .local v3, "b":Landroid/hardware/camera2/legacy/BurstHolder;
    invoke-virtual {v3}, Landroid/hardware/camera2/legacy/BurstHolder;->getNumberOfRequests()I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v0, v4

    .line 166
    invoke-virtual {v3}, Landroid/hardware/camera2/legacy/BurstHolder;->getRequestId()I

    move-result v4

    if-ne v4, p1, :cond_0

    .line 167
    const-wide/16 v4, 0x1

    sub-long v4, v0, v4

    return-wide v4

    .line 169
    .end local v3    # "b":Landroid/hardware/camera2/legacy/BurstHolder;
    :cond_0
    goto :goto_0

    .line 170
    :cond_1
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "At least one request must be in the queue to calculate frame number"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public declared-synchronized getNext()Landroid/hardware/camera2/legacy/RequestQueue$RequestQueueEntry;
    .locals 7

    monitor-enter p0

    .line 78
    :try_start_0
    iget-object v0, p0, Landroid/hardware/camera2/legacy/RequestQueue;->mRequestQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/legacy/BurstHolder;

    .line 79
    .local v0, "next":Landroid/hardware/camera2/legacy/BurstHolder;
    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/hardware/camera2/legacy/RequestQueue;->mRequestQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->size()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 80
    .local v1, "queueEmptied":Z
    :goto_0
    if-nez v0, :cond_1

    iget-object v2, p0, Landroid/hardware/camera2/legacy/RequestQueue;->mRepeatingRequest:Landroid/hardware/camera2/legacy/BurstHolder;

    if-eqz v2, :cond_1

    .line 81
    iget-object v2, p0, Landroid/hardware/camera2/legacy/RequestQueue;->mRepeatingRequest:Landroid/hardware/camera2/legacy/BurstHolder;

    move-object v0, v2

    .line 82
    iget-wide v2, p0, Landroid/hardware/camera2/legacy/RequestQueue;->mCurrentFrameNumber:J

    .line 83
    invoke-virtual {v0}, Landroid/hardware/camera2/legacy/BurstHolder;->getNumberOfRequests()I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Landroid/hardware/camera2/legacy/RequestQueue;->mCurrentRepeatingFrameNumber:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    :cond_1
    if-nez v0, :cond_2

    .line 87
    const/4 v2, 0x0

    monitor-exit p0

    return-object v2

    .line 90
    :cond_2
    :try_start_1
    new-instance v2, Landroid/hardware/camera2/legacy/RequestQueue$RequestQueueEntry;

    iget-wide v3, p0, Landroid/hardware/camera2/legacy/RequestQueue;->mCurrentFrameNumber:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {v2, p0, v0, v3, v1}, Landroid/hardware/camera2/legacy/RequestQueue$RequestQueueEntry;-><init>(Landroid/hardware/camera2/legacy/RequestQueue;Landroid/hardware/camera2/legacy/BurstHolder;Ljava/lang/Long;Z)V

    .line 91
    .local v2, "ret":Landroid/hardware/camera2/legacy/RequestQueue$RequestQueueEntry;
    iget-wide v3, p0, Landroid/hardware/camera2/legacy/RequestQueue;->mCurrentFrameNumber:J

    invoke-virtual {v0}, Landroid/hardware/camera2/legacy/BurstHolder;->getNumberOfRequests()I

    move-result v5

    int-to-long v5, v5

    add-long/2addr v3, v5

    iput-wide v3, p0, Landroid/hardware/camera2/legacy/RequestQueue;->mCurrentFrameNumber:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 92
    monitor-exit p0

    return-object v2

    .line 77
    .end local v0    # "next":Landroid/hardware/camera2/legacy/BurstHolder;
    .end local v1    # "queueEmptied":Z
    .end local v2    # "ret":Landroid/hardware/camera2/legacy/RequestQueue$RequestQueueEntry;
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Landroid/hardware/camera2/legacy/RequestQueue;
    throw v0
.end method

.method public declared-synchronized stopRepeating()J
    .locals 2

    monitor-enter p0

    .line 123
    :try_start_0
    iget-object v0, p0, Landroid/hardware/camera2/legacy/RequestQueue;->mRepeatingRequest:Landroid/hardware/camera2/legacy/BurstHolder;

    if-nez v0, :cond_0

    .line 124
    const-string v0, "RequestQueue"

    const-string v1, "cancel failed: no repeating request exists."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    const-wide/16 v0, -0x1

    monitor-exit p0

    return-wide v0

    .line 127
    :cond_0
    :try_start_1
    iget-object v0, p0, Landroid/hardware/camera2/legacy/RequestQueue;->mRepeatingRequest:Landroid/hardware/camera2/legacy/BurstHolder;

    invoke-virtual {v0}, Landroid/hardware/camera2/legacy/BurstHolder;->getRequestId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/hardware/camera2/legacy/RequestQueue;->stopRepeating(I)J

    move-result-wide v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-wide v0

    .line 122
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Landroid/hardware/camera2/legacy/RequestQueue;
    throw v0
.end method

.method public declared-synchronized stopRepeating(I)J
    .locals 8
    .param p1, "requestId"    # I

    monitor-enter p0

    .line 103
    const-wide/16 v0, -0x1

    .line 104
    .local v0, "ret":J
    :try_start_0
    iget-object v2, p0, Landroid/hardware/camera2/legacy/RequestQueue;->mRepeatingRequest:Landroid/hardware/camera2/legacy/BurstHolder;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/hardware/camera2/legacy/RequestQueue;->mRepeatingRequest:Landroid/hardware/camera2/legacy/BurstHolder;

    invoke-virtual {v2}, Landroid/hardware/camera2/legacy/BurstHolder;->getRequestId()I

    move-result v2

    if-ne v2, p1, :cond_1

    .line 105
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/hardware/camera2/legacy/RequestQueue;->mRepeatingRequest:Landroid/hardware/camera2/legacy/BurstHolder;

    .line 106
    iget-wide v2, p0, Landroid/hardware/camera2/legacy/RequestQueue;->mCurrentRepeatingFrameNumber:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 107
    move-wide v2, v4

    goto :goto_0

    :cond_0
    iget-wide v2, p0, Landroid/hardware/camera2/legacy/RequestQueue;->mCurrentRepeatingFrameNumber:J

    const-wide/16 v6, 0x1

    sub-long/2addr v2, v6

    :goto_0
    move-wide v0, v2

    .line 108
    iput-wide v4, p0, Landroid/hardware/camera2/legacy/RequestQueue;->mCurrentRepeatingFrameNumber:J

    .line 109
    const-string v2, "RequestQueue"

    const-string v3, "Repeating capture request cancelled."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 111
    :cond_1
    const-string v2, "RequestQueue"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cancel failed: no repeating request exists for request id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    :goto_1
    monitor-exit p0

    return-wide v0

    .line 102
    .end local v0    # "ret":J
    .end local p1    # "requestId":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Landroid/hardware/camera2/legacy/RequestQueue;
    throw p1
.end method

.method public declared-synchronized submit([Landroid/hardware/camera2/CaptureRequest;Z)Landroid/hardware/camera2/utils/SubmitInfo;
    .locals 11
    .param p1, "requests"    # [Landroid/hardware/camera2/CaptureRequest;
    .param p2, "repeating"    # Z

    monitor-enter p0

    .line 143
    :try_start_0
    iget v0, p0, Landroid/hardware/camera2/legacy/RequestQueue;->mCurrentRequestId:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/hardware/camera2/legacy/RequestQueue;->mCurrentRequestId:I

    .line 144
    .local v0, "requestId":I
    new-instance v1, Landroid/hardware/camera2/legacy/BurstHolder;

    iget-object v2, p0, Landroid/hardware/camera2/legacy/RequestQueue;->mJpegSurfaceIds:Ljava/util/List;

    invoke-direct {v1, v0, p2, p1, v2}, Landroid/hardware/camera2/legacy/BurstHolder;-><init>(IZ[Landroid/hardware/camera2/CaptureRequest;Ljava/util/Collection;)V

    .line 145
    .local v1, "burst":Landroid/hardware/camera2/legacy/BurstHolder;
    const-wide/16 v2, -0x1

    .line 146
    .local v2, "lastFrame":J
    invoke-virtual {v1}, Landroid/hardware/camera2/legacy/BurstHolder;->isRepeating()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 147
    const-string v4, "RequestQueue"

    const-string v5, "Repeating capture request set."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    iget-object v4, p0, Landroid/hardware/camera2/legacy/RequestQueue;->mRepeatingRequest:Landroid/hardware/camera2/legacy/BurstHolder;

    const-wide/16 v5, -0x1

    if-eqz v4, :cond_1

    .line 149
    iget-wide v7, p0, Landroid/hardware/camera2/legacy/RequestQueue;->mCurrentRepeatingFrameNumber:J

    cmp-long v4, v7, v5

    if-nez v4, :cond_0

    .line 150
    move-wide v7, v5

    goto :goto_0

    :cond_0
    iget-wide v7, p0, Landroid/hardware/camera2/legacy/RequestQueue;->mCurrentRepeatingFrameNumber:J

    const-wide/16 v9, 0x1

    sub-long/2addr v7, v9

    :goto_0
    move-wide v2, v7

    .line 152
    :cond_1
    iput-wide v5, p0, Landroid/hardware/camera2/legacy/RequestQueue;->mCurrentRepeatingFrameNumber:J

    .line 153
    iput-object v1, p0, Landroid/hardware/camera2/legacy/RequestQueue;->mRepeatingRequest:Landroid/hardware/camera2/legacy/BurstHolder;

    goto :goto_1

    .line 155
    :cond_2
    iget-object v4, p0, Landroid/hardware/camera2/legacy/RequestQueue;->mRequestQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v4, v1}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    .line 156
    invoke-virtual {v1}, Landroid/hardware/camera2/legacy/BurstHolder;->getRequestId()I

    move-result v4

    invoke-direct {p0, v4}, Landroid/hardware/camera2/legacy/RequestQueue;->calculateLastFrame(I)J

    move-result-wide v4

    move-wide v2, v4

    .line 158
    :goto_1
    new-instance v4, Landroid/hardware/camera2/utils/SubmitInfo;

    invoke-direct {v4, v0, v2, v3}, Landroid/hardware/camera2/utils/SubmitInfo;-><init>(IJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    .local v4, "info":Landroid/hardware/camera2/utils/SubmitInfo;
    monitor-exit p0

    return-object v4

    .line 142
    .end local v0    # "requestId":I
    .end local v1    # "burst":Landroid/hardware/camera2/legacy/BurstHolder;
    .end local v2    # "lastFrame":J
    .end local v4    # "info":Landroid/hardware/camera2/utils/SubmitInfo;
    .end local p1    # "requests":[Landroid/hardware/camera2/CaptureRequest;
    .end local p2    # "repeating":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Landroid/hardware/camera2/legacy/RequestQueue;
    throw p1
.end method
