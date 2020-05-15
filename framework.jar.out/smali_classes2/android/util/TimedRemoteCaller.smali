.class public abstract Landroid/util/TimedRemoteCaller;
.super Ljava/lang/Object;
.source "TimedRemoteCaller.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final DEFAULT_CALL_TIMEOUT_MILLIS:J = 0x1388L


# instance fields
.field private final mAwaitedCalls:Landroid/util/SparseIntArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mCallTimeoutMillis:J

.field private final mLock:Ljava/lang/Object;

.field private final mReceivedCalls:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "TT;>;"
        }
    .end annotation
.end field

.field private mSequenceCounter:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field


# direct methods
.method public constructor <init>(J)V
    .locals 2
    .param p1, "callTimeoutMillis"    # J

    .line 90
    .local p0, "this":Landroid/util/TimedRemoteCaller;, "Landroid/util/TimedRemoteCaller<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/util/TimedRemoteCaller;->mLock:Ljava/lang/Object;

    .line 74
    new-instance v0, Landroid/util/SparseIntArray;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v0, p0, Landroid/util/TimedRemoteCaller;->mAwaitedCalls:Landroid/util/SparseIntArray;

    .line 78
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Landroid/util/TimedRemoteCaller;->mReceivedCalls:Landroid/util/SparseArray;

    .line 91
    iput-wide p1, p0, Landroid/util/TimedRemoteCaller;->mCallTimeoutMillis:J

    .line 92
    return-void
.end method


# virtual methods
.method protected final getResultTimed(I)Ljava/lang/Object;
    .locals 10
    .param p1, "sequence"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 138
    .local p0, "this":Landroid/util/TimedRemoteCaller;, "Landroid/util/TimedRemoteCaller<TT;>;"
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 141
    .local v0, "startMillis":J
    :goto_0
    :try_start_0
    iget-object v2, p0, Landroid/util/TimedRemoteCaller;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    :try_start_1
    iget-object v3, p0, Landroid/util/TimedRemoteCaller;->mReceivedCalls:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v3

    if-ltz v3, :cond_0

    .line 143
    iget-object v3, p0, Landroid/util/TimedRemoteCaller;->mReceivedCalls:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->removeReturnOld(I)Ljava/lang/Object;

    move-result-object v3

    monitor-exit v2

    return-object v3

    .line 145
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    .line 146
    .local v3, "elapsedMillis":J
    iget-wide v5, p0, Landroid/util/TimedRemoteCaller;->mCallTimeoutMillis:J

    sub-long/2addr v5, v3

    .line 147
    .local v5, "waitMillis":J
    const-wide/16 v7, 0x0

    cmp-long v7, v5, v7

    if-lez v7, :cond_1

    .line 151
    iget-object v7, p0, Landroid/util/TimedRemoteCaller;->mLock:Ljava/lang/Object;

    invoke-virtual {v7, v5, v6}, Ljava/lang/Object;->wait(J)V

    .line 152
    .end local v3    # "elapsedMillis":J
    .end local v5    # "waitMillis":J
    monitor-exit v2

    goto :goto_1

    .line 148
    .restart local v3    # "elapsedMillis":J
    .restart local v5    # "waitMillis":J
    :cond_1
    iget-object v7, p0, Landroid/util/TimedRemoteCaller;->mAwaitedCalls:Landroid/util/SparseIntArray;

    invoke-virtual {v7, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 149
    new-instance v7, Ljava/util/concurrent/TimeoutException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "No response for sequence: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 152
    .end local v3    # "elapsedMillis":J
    .end local v5    # "waitMillis":J
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v3
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 153
    :catch_0
    move-exception v2

    .line 155
    :goto_1
    goto :goto_0
.end method

.method protected final onBeforeRemoteCall()I
    .locals 4

    .line 100
    .local p0, "this":Landroid/util/TimedRemoteCaller;, "Landroid/util/TimedRemoteCaller<TT;>;"
    iget-object v0, p0, Landroid/util/TimedRemoteCaller;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 103
    :cond_0
    :try_start_0
    iget v1, p0, Landroid/util/TimedRemoteCaller;->mSequenceCounter:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/util/TimedRemoteCaller;->mSequenceCounter:I

    .line 104
    .local v1, "sequenceId":I
    iget-object v2, p0, Landroid/util/TimedRemoteCaller;->mAwaitedCalls:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    if-nez v2, :cond_0

    .line 106
    iget-object v2, p0, Landroid/util/TimedRemoteCaller;->mAwaitedCalls:Landroid/util/SparseIntArray;

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 108
    monitor-exit v0

    return v1

    .line 109
    .end local v1    # "sequenceId":I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected final onRemoteMethodResult(Ljava/lang/Object;I)V
    .locals 3
    .param p2, "sequence"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    .line 119
    .local p0, "this":Landroid/util/TimedRemoteCaller;, "Landroid/util/TimedRemoteCaller<TT;>;"
    .local p1, "result":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Landroid/util/TimedRemoteCaller;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 121
    :try_start_0
    iget-object v1, p0, Landroid/util/TimedRemoteCaller;->mAwaitedCalls:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 122
    .local v1, "containedSequenceId":Z
    :goto_0
    if-eqz v1, :cond_1

    .line 123
    iget-object v2, p0, Landroid/util/TimedRemoteCaller;->mAwaitedCalls:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseIntArray;->delete(I)V

    .line 124
    iget-object v2, p0, Landroid/util/TimedRemoteCaller;->mReceivedCalls:Landroid/util/SparseArray;

    invoke-virtual {v2, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 125
    iget-object v2, p0, Landroid/util/TimedRemoteCaller;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 127
    .end local v1    # "containedSequenceId":Z
    :cond_1
    monitor-exit v0

    .line 128
    return-void

    .line 127
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
