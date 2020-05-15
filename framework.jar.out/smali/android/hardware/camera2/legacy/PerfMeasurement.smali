.class Landroid/hardware/camera2/legacy/PerfMeasurement;
.super Ljava/lang/Object;
.source "PerfMeasurement.java"


# static fields
.field public static final DEFAULT_MAX_QUERIES:I = 0x3

.field private static final FAILED_TIMING:J = -0x2L

.field private static final NO_DURATION_YET:J = -0x1L

.field private static final TAG:Ljava/lang/String; = "PerfMeasurement"


# instance fields
.field private mCollectedCpuDurations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mCollectedGpuDurations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mCollectedTimestamps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mCompletedQueryCount:I

.field private mCpuDurationsQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mNativeContext:J

.field private mStartTimeNs:J

.field private mTimestampQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/camera2/legacy/PerfMeasurement;->mCompletedQueryCount:I

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/legacy/PerfMeasurement;->mCollectedGpuDurations:Ljava/util/ArrayList;

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/legacy/PerfMeasurement;->mCollectedCpuDurations:Ljava/util/ArrayList;

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/legacy/PerfMeasurement;->mCollectedTimestamps:Ljava/util/ArrayList;

    .line 72
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/legacy/PerfMeasurement;->mTimestampQueue:Ljava/util/Queue;

    .line 73
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/legacy/PerfMeasurement;->mCpuDurationsQueue:Ljava/util/Queue;

    .line 94
    const/4 v0, 0x3

    invoke-static {v0}, Landroid/hardware/camera2/legacy/PerfMeasurement;->nativeCreateContext(I)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/camera2/legacy/PerfMeasurement;->mNativeContext:J

    .line 95
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "maxQueries"    # I

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/camera2/legacy/PerfMeasurement;->mCompletedQueryCount:I

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/legacy/PerfMeasurement;->mCollectedGpuDurations:Ljava/util/ArrayList;

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/legacy/PerfMeasurement;->mCollectedCpuDurations:Ljava/util/ArrayList;

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/legacy/PerfMeasurement;->mCollectedTimestamps:Ljava/util/ArrayList;

    .line 72
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/legacy/PerfMeasurement;->mTimestampQueue:Ljava/util/Queue;

    .line 73
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/legacy/PerfMeasurement;->mCpuDurationsQueue:Ljava/util/Queue;

    .line 105
    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    .line 106
    invoke-static {p1}, Landroid/hardware/camera2/legacy/PerfMeasurement;->nativeCreateContext(I)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/camera2/legacy/PerfMeasurement;->mNativeContext:J

    .line 107
    return-void

    .line 105
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "maxQueries is less than 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getNextGlDuration()J
    .locals 4

    .line 228
    iget-wide v0, p0, Landroid/hardware/camera2/legacy/PerfMeasurement;->mNativeContext:J

    invoke-static {v0, v1}, Landroid/hardware/camera2/legacy/PerfMeasurement;->nativeGetNextGlDuration(J)J

    move-result-wide v0

    .line 229
    .local v0, "duration":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 230
    iget v2, p0, Landroid/hardware/camera2/legacy/PerfMeasurement;->mCompletedQueryCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/hardware/camera2/legacy/PerfMeasurement;->mCompletedQueryCount:I

    .line 232
    :cond_0
    return-wide v0
.end method

.method public static isGlTimingSupported()Z
    .locals 1

    .line 115
    invoke-static {}, Landroid/hardware/camera2/legacy/PerfMeasurement;->nativeQuerySupport()Z

    move-result v0

    return v0
.end method

.method private static native nativeCreateContext(I)J
.end method

.method private static native nativeDeleteContext(J)V
.end method

.method protected static native nativeGetNextGlDuration(J)J
.end method

.method private static native nativeQuerySupport()Z
.end method

.method protected static native nativeStartGlTimer(J)V
.end method

.method protected static native nativeStopGlTimer(J)V
.end method


# virtual methods
.method public addTimestamp(J)V
    .locals 2
    .param p1, "timestamp"    # J

    .line 208
    iget-object v0, p0, Landroid/hardware/camera2/legacy/PerfMeasurement;->mTimestampQueue:Ljava/util/Queue;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 209
    return-void
.end method

.method public dumpPerformanceData(Ljava/lang/String;)V
    .locals 8
    .param p1, "path"    # Ljava/lang/String;

    .line 134
    :try_start_0
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/FileWriter;

    invoke-direct {v1, p1}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 134
    .local v0, "dump":Ljava/io/BufferedWriter;
    const/4 v1, 0x0

    .line 135
    :try_start_1
    const-string/jumbo v2, "timestamp gpu_duration cpu_duration\n"

    invoke-virtual {v0, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 136
    const/4 v2, 0x0

    move v3, v2

    .line 136
    .local v3, "i":I
    :goto_0
    iget-object v4, p0, Landroid/hardware/camera2/legacy/PerfMeasurement;->mCollectedGpuDurations:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 137
    const-string v4, "%d %d %d\n"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Landroid/hardware/camera2/legacy/PerfMeasurement;->mCollectedTimestamps:Ljava/util/ArrayList;

    .line 138
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v5, v2

    iget-object v6, p0, Landroid/hardware/camera2/legacy/PerfMeasurement;->mCollectedGpuDurations:Ljava/util/ArrayList;

    .line 139
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v5, v7

    const/4 v6, 0x2

    iget-object v7, p0, Landroid/hardware/camera2/legacy/PerfMeasurement;->mCollectedCpuDurations:Ljava/util/ArrayList;

    .line 140
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v5, v6

    .line 137
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 136
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 142
    .end local v3    # "i":I
    :cond_0
    iget-object v2, p0, Landroid/hardware/camera2/legacy/PerfMeasurement;->mCollectedTimestamps:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 143
    iget-object v2, p0, Landroid/hardware/camera2/legacy/PerfMeasurement;->mCollectedGpuDurations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 144
    iget-object v2, p0, Landroid/hardware/camera2/legacy/PerfMeasurement;->mCollectedCpuDurations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 145
    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 147
    .end local v0    # "dump":Ljava/io/BufferedWriter;
    goto :goto_3

    .line 145
    .restart local v0    # "dump":Ljava/io/BufferedWriter;
    :catchall_0
    move-exception v2

    goto :goto_1

    .line 134
    :catch_0
    move-exception v1

    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 145
    :goto_1
    if-eqz v1, :cond_1

    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    :catch_1
    move-exception v3

    :try_start_5
    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_1
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V

    :goto_2
    throw v2
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 145
    .end local v0    # "dump":Ljava/io/BufferedWriter;
    :catch_2
    move-exception v0

    .line 146
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "PerfMeasurement"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error writing data dump to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    .end local v0    # "e":Ljava/io/IOException;
    :goto_3
    return-void
.end method

.method protected finalize()V
    .locals 2

    .line 245
    iget-wide v0, p0, Landroid/hardware/camera2/legacy/PerfMeasurement;->mNativeContext:J

    invoke-static {v0, v1}, Landroid/hardware/camera2/legacy/PerfMeasurement;->nativeDeleteContext(J)V

    .line 246
    return-void
.end method

.method public getCompletedQueryCount()I
    .locals 1

    .line 240
    iget v0, p0, Landroid/hardware/camera2/legacy/PerfMeasurement;->mCompletedQueryCount:I

    return v0
.end method

.method public startTimer()V
    .locals 2

    .line 161
    iget-wide v0, p0, Landroid/hardware/camera2/legacy/PerfMeasurement;->mNativeContext:J

    invoke-static {v0, v1}, Landroid/hardware/camera2/legacy/PerfMeasurement;->nativeStartGlTimer(J)V

    .line 162
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/camera2/legacy/PerfMeasurement;->mStartTimeNs:J

    .line 163
    return-void
.end method

.method public stopTimer()V
    .locals 10

    .line 177
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    .line 178
    .local v0, "endTimeNs":J
    iget-object v2, p0, Landroid/hardware/camera2/legacy/PerfMeasurement;->mCpuDurationsQueue:Ljava/util/Queue;

    iget-wide v3, p0, Landroid/hardware/camera2/legacy/PerfMeasurement;->mStartTimeNs:J

    sub-long v3, v0, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 180
    iget-wide v2, p0, Landroid/hardware/camera2/legacy/PerfMeasurement;->mNativeContext:J

    invoke-static {v2, v3}, Landroid/hardware/camera2/legacy/PerfMeasurement;->nativeStopGlTimer(J)V

    .line 184
    invoke-direct {p0}, Landroid/hardware/camera2/legacy/PerfMeasurement;->getNextGlDuration()J

    move-result-wide v2

    .line 185
    .local v2, "duration":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_2

    .line 186
    iget-object v4, p0, Landroid/hardware/camera2/legacy/PerfMeasurement;->mCollectedGpuDurations:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 187
    iget-object v4, p0, Landroid/hardware/camera2/legacy/PerfMeasurement;->mCollectedTimestamps:Ljava/util/ArrayList;

    iget-object v5, p0, Landroid/hardware/camera2/legacy/PerfMeasurement;->mTimestampQueue:Ljava/util/Queue;

    invoke-interface {v5}, Ljava/util/Queue;->isEmpty()Z

    move-result v5

    const-wide/16 v6, -0x1

    if-eqz v5, :cond_0

    .line 188
    nop

    .line 187
    move-wide v8, v6

    goto :goto_0

    .line 188
    :cond_0
    iget-object v5, p0, Landroid/hardware/camera2/legacy/PerfMeasurement;->mTimestampQueue:Ljava/util/Queue;

    invoke-interface {v5}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 187
    :goto_0
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 189
    iget-object v4, p0, Landroid/hardware/camera2/legacy/PerfMeasurement;->mCollectedCpuDurations:Ljava/util/ArrayList;

    iget-object v5, p0, Landroid/hardware/camera2/legacy/PerfMeasurement;->mCpuDurationsQueue:Ljava/util/Queue;

    invoke-interface {v5}, Ljava/util/Queue;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 190
    goto :goto_1

    :cond_1
    iget-object v5, p0, Landroid/hardware/camera2/legacy/PerfMeasurement;->mCpuDurationsQueue:Ljava/util/Queue;

    invoke-interface {v5}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 189
    :goto_1
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 192
    :cond_2
    const-wide/16 v4, -0x2

    cmp-long v4, v2, v4

    if-nez v4, :cond_4

    .line 194
    iget-object v4, p0, Landroid/hardware/camera2/legacy/PerfMeasurement;->mTimestampQueue:Ljava/util/Queue;

    invoke-interface {v4}, Ljava/util/Queue;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    .line 195
    iget-object v4, p0, Landroid/hardware/camera2/legacy/PerfMeasurement;->mTimestampQueue:Ljava/util/Queue;

    invoke-interface {v4}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 197
    :cond_3
    iget-object v4, p0, Landroid/hardware/camera2/legacy/PerfMeasurement;->mCpuDurationsQueue:Ljava/util/Queue;

    invoke-interface {v4}, Ljava/util/Queue;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    .line 198
    iget-object v4, p0, Landroid/hardware/camera2/legacy/PerfMeasurement;->mCpuDurationsQueue:Ljava/util/Queue;

    invoke-interface {v4}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 201
    :cond_4
    return-void
.end method
