.class Landroid/media/MediaPlayer2Impl$TimeProvider;
.super Ljava/lang/Object;
.source "MediaPlayer2Impl.java"

# interfaces
.implements Landroid/media/MediaTimeProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaPlayer2Impl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TimeProvider"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaPlayer2Impl$TimeProvider$EventHandler;
    }
.end annotation


# static fields
.field private static final MAX_EARLY_CALLBACK_US:J = 0x3e8L

.field private static final MAX_NS_WITHOUT_POSITION_CHECK:J = 0x12a05f200L

.field private static final NOTIFY:I = 0x1

.field private static final NOTIFY_SEEK:I = 0x3

.field private static final NOTIFY_STOP:I = 0x2

.field private static final NOTIFY_TIME:I = 0x0

.field private static final NOTIFY_TRACK_DATA:I = 0x4

.field private static final TAG:Ljava/lang/String; = "MTP"

.field private static final TIME_ADJUSTMENT_RATE:J = 0x2L


# instance fields
.field public DEBUG:Z

.field private mBuffering:Z

.field private mEventHandler:Landroid/media/MediaPlayer2Impl$TimeProvider$EventHandler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mLastReportedTime:J

.field private mLastTimeUs:J

.field private mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

.field private mPaused:Z

.field private mPausing:Z

.field private mPlayer:Landroid/media/MediaPlayer2Impl;

.field private mRefresh:Z

.field private mSeeking:Z

.field private mStopped:Z

.field private mTimes:[J


# direct methods
.method public constructor <init>(Landroid/media/MediaPlayer2Impl;)V
    .locals 7
    .param p1, "mp"    # Landroid/media/MediaPlayer2Impl;

    .line 4376
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4352
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->mLastTimeUs:J

    .line 4354
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->mPaused:Z

    .line 4355
    iput-boolean v2, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->mStopped:Z

    .line 4363
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->mRefresh:Z

    .line 4364
    iput-boolean v3, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->mPausing:Z

    .line 4365
    iput-boolean v3, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->mSeeking:Z

    .line 4374
    iput-boolean v3, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->DEBUG:Z

    .line 4377
    iput-object p1, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->mPlayer:Landroid/media/MediaPlayer2Impl;

    .line 4379
    :try_start_0
    invoke-virtual {p0, v2, v3}, Landroid/media/MediaPlayer2Impl$TimeProvider;->getCurrentTimeUs(ZZ)J
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4383
    goto :goto_0

    .line 4380
    :catch_0
    move-exception v4

    .line 4382
    .local v4, "e":Ljava/lang/IllegalStateException;
    iput-boolean v2, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->mRefresh:Z

    .line 4386
    .end local v4    # "e":Ljava/lang/IllegalStateException;
    :goto_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    move-object v4, v2

    .local v4, "looper":Landroid/os/Looper;
    if-nez v2, :cond_0

    .line 4387
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    move-object v4, v2

    if-nez v2, :cond_0

    .line 4389
    new-instance v2, Landroid/os/HandlerThread;

    const-string v5, "MediaPlayer2MTPEventThread"

    const/4 v6, -0x2

    invoke-direct {v2, v5, v6}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v2, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->mHandlerThread:Landroid/os/HandlerThread;

    .line 4391
    iget-object v2, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 4392
    iget-object v2, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    .line 4394
    :cond_0
    new-instance v2, Landroid/media/MediaPlayer2Impl$TimeProvider$EventHandler;

    invoke-direct {v2, p0, v4}, Landroid/media/MediaPlayer2Impl$TimeProvider$EventHandler;-><init>(Landroid/media/MediaPlayer2Impl$TimeProvider;Landroid/os/Looper;)V

    iput-object v2, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->mEventHandler:Landroid/media/MediaPlayer2Impl$TimeProvider$EventHandler;

    .line 4396
    new-array v2, v3, [Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    iput-object v2, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    .line 4397
    new-array v2, v3, [J

    iput-object v2, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->mTimes:[J

    .line 4398
    iput-wide v0, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->mLastTimeUs:J

    .line 4399
    return-void
.end method

.method static synthetic access$3600(Landroid/media/MediaPlayer2Impl$TimeProvider;)Landroid/media/MediaPlayer2Impl$TimeProvider$EventHandler;
    .locals 1
    .param p0, "x0"    # Landroid/media/MediaPlayer2Impl$TimeProvider;

    .line 4347
    iget-object v0, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->mEventHandler:Landroid/media/MediaPlayer2Impl$TimeProvider$EventHandler;

    return-object v0
.end method

.method static synthetic access$7000(Landroid/media/MediaPlayer2Impl$TimeProvider;Z)V
    .locals 0
    .param p0, "x0"    # Landroid/media/MediaPlayer2Impl$TimeProvider;
    .param p1, "x1"    # Z

    .line 4347
    invoke-direct {p0, p1}, Landroid/media/MediaPlayer2Impl$TimeProvider;->notifyTimedEvent(Z)V

    return-void
.end method

.method static synthetic access$7100(Landroid/media/MediaPlayer2Impl$TimeProvider;)V
    .locals 0
    .param p0, "x0"    # Landroid/media/MediaPlayer2Impl$TimeProvider;

    .line 4347
    invoke-direct {p0}, Landroid/media/MediaPlayer2Impl$TimeProvider;->notifyStop()V

    return-void
.end method

.method static synthetic access$7200(Landroid/media/MediaPlayer2Impl$TimeProvider;)V
    .locals 0
    .param p0, "x0"    # Landroid/media/MediaPlayer2Impl$TimeProvider;

    .line 4347
    invoke-direct {p0}, Landroid/media/MediaPlayer2Impl$TimeProvider;->notifySeek()V

    return-void
.end method

.method static synthetic access$7300(Landroid/media/MediaPlayer2Impl$TimeProvider;Landroid/util/Pair;)V
    .locals 0
    .param p0, "x0"    # Landroid/media/MediaPlayer2Impl$TimeProvider;
    .param p1, "x1"    # Landroid/util/Pair;

    .line 4347
    invoke-direct {p0, p1}, Landroid/media/MediaPlayer2Impl$TimeProvider;->notifyTrackData(Landroid/util/Pair;)V

    return-void
.end method

.method private declared-synchronized notifySeek()V
    .locals 8

    monitor-enter p0

    .line 4496
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->mSeeking:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4498
    const/4 v1, 0x1

    :try_start_1
    invoke-virtual {p0, v1, v0}, Landroid/media/MediaPlayer2Impl$TimeProvider;->getCurrentTimeUs(ZZ)J

    move-result-wide v2

    .line 4499
    .local v2, "timeUs":J
    iget-boolean v4, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->DEBUG:Z

    if-eqz v4, :cond_0

    const-string v4, "MTP"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onSeekComplete at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4501
    :cond_0
    iget-object v4, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    array-length v5, v4

    move v6, v0

    :goto_0
    if-ge v6, v5, :cond_2

    aget-object v7, v4, v6

    .line 4502
    .local v7, "listener":Landroid/media/MediaTimeProvider$OnMediaTimeListener;
    if-nez v7, :cond_1

    .line 4503
    goto :goto_1

    .line 4505
    :cond_1
    invoke-interface {v7, v2, v3}, Landroid/media/MediaTimeProvider$OnMediaTimeListener;->onSeek(J)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4501
    .end local v7    # "listener":Landroid/media/MediaTimeProvider$OnMediaTimeListener;
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 4512
    .end local v2    # "timeUs":J
    :cond_2
    :goto_1
    goto :goto_2

    .line 4507
    :catch_0
    move-exception v2

    .line 4509
    .local v2, "e":Ljava/lang/IllegalStateException;
    :try_start_2
    iget-boolean v3, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->DEBUG:Z

    if-eqz v3, :cond_3

    const-string v3, "MTP"

    const-string/jumbo v4, "onSeekComplete but no player"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4510
    :cond_3
    iput-boolean v1, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->mPausing:Z

    .line 4511
    invoke-direct {p0, v0}, Landroid/media/MediaPlayer2Impl$TimeProvider;->notifyTimedEvent(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4513
    .end local v2    # "e":Ljava/lang/IllegalStateException;
    :goto_2
    monitor-exit p0

    return-void

    .line 4495
    :catchall_0
    move-exception v0

    monitor-exit p0

    .line 4495
    .end local p0    # "this":Landroid/media/MediaPlayer2Impl$TimeProvider;
    throw v0
.end method

.method private declared-synchronized notifyStop()V
    .locals 4

    monitor-enter p0

    .line 4522
    :try_start_0
    iget-object v0, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 4523
    .local v3, "listener":Landroid/media/MediaTimeProvider$OnMediaTimeListener;
    if-nez v3, :cond_0

    .line 4524
    goto :goto_1

    .line 4526
    :cond_0
    invoke-interface {v3}, Landroid/media/MediaTimeProvider$OnMediaTimeListener;->onStop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4522
    .end local v3    # "listener":Landroid/media/MediaTimeProvider$OnMediaTimeListener;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4528
    :cond_1
    :goto_1
    monitor-exit p0

    return-void

    .line 4521
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Landroid/media/MediaPlayer2Impl$TimeProvider;
    throw v0
.end method

.method private declared-synchronized notifyTimedEvent(Z)V
    .locals 21
    .param p1, "refreshTime"    # Z

    move-object/from16 v1, p0

    move/from16 v2, p1

    monitor-enter p0

    .line 4603
    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {v1, v2, v3}, Landroid/media/MediaPlayer2Impl$TimeProvider;->getCurrentTimeUs(ZZ)J

    move-result-wide v4
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4609
    .local v4, "nowUs":J
    goto :goto_0

    .line 4602
    .end local v4    # "nowUs":J
    .end local p1    # "refreshTime":Z
    :catchall_0
    move-exception v0

    goto/16 :goto_a

    .line 4604
    .restart local p1    # "refreshTime":Z
    :catch_0
    move-exception v0

    move-object v4, v0

    .line 4606
    .local v0, "e":Ljava/lang/IllegalStateException;
    :try_start_1
    iput-boolean v3, v1, Landroid/media/MediaPlayer2Impl$TimeProvider;->mRefresh:Z

    .line 4607
    iput-boolean v3, v1, Landroid/media/MediaPlayer2Impl$TimeProvider;->mPausing:Z

    .line 4608
    invoke-virtual {v1, v2, v3}, Landroid/media/MediaPlayer2Impl$TimeProvider;->getCurrentTimeUs(ZZ)J

    move-result-wide v4

    .line 4610
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    .restart local v4    # "nowUs":J
    :goto_0
    move-wide v6, v4

    .line 4612
    .local v6, "nextTimeUs":J
    iget-boolean v0, v1, Landroid/media/MediaPlayer2Impl$TimeProvider;->mSeeking:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_0

    .line 4614
    monitor-exit p0

    return-void

    .line 4617
    :cond_0
    :try_start_2
    iget-boolean v0, v1, Landroid/media/MediaPlayer2Impl$TimeProvider;->DEBUG:Z

    const/4 v8, 0x0

    const-wide/16 v9, -0x1

    if-eqz v0, :cond_4

    .line 4618
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4619
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v11, "notifyTimedEvent("

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v11, v1, Landroid/media/MediaPlayer2Impl$TimeProvider;->mLastTimeUs:J

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, " -> "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4620
    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, ") from {"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4621
    const/4 v11, 0x1

    .line 4622
    .local v11, "first":Z
    iget-object v12, v1, Landroid/media/MediaPlayer2Impl$TimeProvider;->mTimes:[J

    array-length v13, v12

    move v14, v11

    move v11, v8

    .line 4622
    .end local v11    # "first":Z
    .local v14, "first":Z
    :goto_1
    if-ge v11, v13, :cond_3

    aget-wide v15, v12, v11

    move-wide/from16 v17, v15

    .line 4623
    .local v17, "time":J
    move-wide/from16 v19, v4

    move-wide/from16 v3, v17

    cmp-long v5, v3, v9

    .line 4623
    .end local v4    # "nowUs":J
    .end local v17    # "time":J
    .local v3, "time":J
    .local v19, "nowUs":J
    if-nez v5, :cond_1

    .line 4624
    goto :goto_2

    .line 4626
    :cond_1
    if-nez v14, :cond_2

    const-string v5, ", "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4627
    :cond_2
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 4628
    const/4 v3, 0x0

    .line 4622
    .end local v14    # "first":Z
    .local v3, "first":Z
    move v14, v3

    .line 4622
    .end local v3    # "first":Z
    .restart local v14    # "first":Z
    :goto_2
    add-int/lit8 v11, v11, 0x1

    move-wide/from16 v4, v19

    const/4 v3, 0x1

    goto :goto_1

    .line 4630
    .end local v19    # "nowUs":J
    .restart local v4    # "nowUs":J
    :cond_3
    move-wide/from16 v19, v4

    .line 4630
    .end local v4    # "nowUs":J
    .restart local v19    # "nowUs":J
    const-string/jumbo v3, "}"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4631
    const-string v3, "MTP"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4631
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    .end local v14    # "first":Z
    goto :goto_3

    .line 4634
    .end local v19    # "nowUs":J
    .restart local v4    # "nowUs":J
    :cond_4
    move-wide/from16 v19, v4

    .line 4634
    .end local v4    # "nowUs":J
    .restart local v19    # "nowUs":J
    :goto_3
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 4636
    .local v0, "activatedListeners":Ljava/util/Vector;, "Ljava/util/Vector<Landroid/media/MediaTimeProvider$OnMediaTimeListener;>;"
    nop

    .line 4636
    .local v8, "ix":I
    :goto_4
    move v3, v8

    .line 4636
    .end local v8    # "ix":I
    .local v3, "ix":I
    iget-object v4, v1, Landroid/media/MediaPlayer2Impl$TimeProvider;->mTimes:[J

    array-length v4, v4

    if-ge v3, v4, :cond_b

    .line 4637
    iget-object v4, v1, Landroid/media/MediaPlayer2Impl$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    aget-object v4, v4, v3

    if-nez v4, :cond_5

    .line 4638
    goto :goto_6

    .line 4640
    :cond_5
    iget-object v4, v1, Landroid/media/MediaPlayer2Impl$TimeProvider;->mTimes:[J

    aget-wide v4, v4, v3

    cmp-long v4, v4, v9

    if-gtz v4, :cond_6

    goto :goto_5

    .line 4642
    :cond_6
    iget-object v4, v1, Landroid/media/MediaPlayer2Impl$TimeProvider;->mTimes:[J

    aget-wide v4, v4, v3

    const-wide/16 v11, 0x3e8

    add-long v11, v19, v11

    cmp-long v4, v4, v11

    if-gtz v4, :cond_8

    .line 4643
    iget-object v4, v1, Landroid/media/MediaPlayer2Impl$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    aget-object v4, v4, v3

    invoke-virtual {v0, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 4644
    iget-boolean v4, v1, Landroid/media/MediaPlayer2Impl$TimeProvider;->DEBUG:Z

    if-eqz v4, :cond_7

    const-string v4, "MTP"

    const-string/jumbo v5, "removed"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4645
    :cond_7
    iget-object v4, v1, Landroid/media/MediaPlayer2Impl$TimeProvider;->mTimes:[J

    aput-wide v9, v4, v3

    goto :goto_5

    .line 4646
    :cond_8
    cmp-long v4, v6, v19

    if-eqz v4, :cond_9

    iget-object v4, v1, Landroid/media/MediaPlayer2Impl$TimeProvider;->mTimes:[J

    aget-wide v4, v4, v3

    cmp-long v4, v4, v6

    if-gez v4, :cond_a

    .line 4647
    :cond_9
    iget-object v4, v1, Landroid/media/MediaPlayer2Impl$TimeProvider;->mTimes:[J

    aget-wide v4, v4, v3

    .line 4636
    .end local v6    # "nextTimeUs":J
    .local v4, "nextTimeUs":J
    move-wide v6, v4

    .line 4636
    .end local v4    # "nextTimeUs":J
    .restart local v6    # "nextTimeUs":J
    :cond_a
    :goto_5
    add-int/lit8 v8, v3, 0x1

    .line 4636
    .end local v3    # "ix":I
    .restart local v8    # "ix":I
    goto :goto_4

    .line 4651
    .end local v8    # "ix":I
    :cond_b
    :goto_6
    cmp-long v3, v6, v19

    if-lez v3, :cond_d

    iget-boolean v3, v1, Landroid/media/MediaPlayer2Impl$TimeProvider;->mPaused:Z

    if-nez v3, :cond_d

    .line 4653
    iget-boolean v3, v1, Landroid/media/MediaPlayer2Impl$TimeProvider;->DEBUG:Z

    if-eqz v3, :cond_c

    const-string v3, "MTP"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "scheduling for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " and "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v8, v19

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .end local v19    # "nowUs":J
    .local v8, "nowUs":J
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 4654
    .end local v8    # "nowUs":J
    .restart local v19    # "nowUs":J
    :cond_c
    move-wide/from16 v8, v19

    .line 4654
    .end local v19    # "nowUs":J
    .restart local v8    # "nowUs":J
    :goto_7
    iget-object v3, v1, Landroid/media/MediaPlayer2Impl$TimeProvider;->mPlayer:Landroid/media/MediaPlayer2Impl;

    invoke-virtual {v3, v6, v7}, Landroid/media/MediaPlayer2Impl;->notifyAt(J)V

    goto :goto_8

    .line 4656
    .end local v8    # "nowUs":J
    .restart local v19    # "nowUs":J
    :cond_d
    move-wide/from16 v8, v19

    .line 4656
    .end local v19    # "nowUs":J
    .restart local v8    # "nowUs":J
    iget-object v3, v1, Landroid/media/MediaPlayer2Impl$TimeProvider;->mEventHandler:Landroid/media/MediaPlayer2Impl$TimeProvider$EventHandler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer2Impl$TimeProvider$EventHandler;->removeMessages(I)V

    .line 4660
    :goto_8
    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    .line 4661
    .local v4, "listener":Landroid/media/MediaTimeProvider$OnMediaTimeListener;
    invoke-interface {v4, v8, v9}, Landroid/media/MediaTimeProvider$OnMediaTimeListener;->onTimedEvent(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4662
    .end local v4    # "listener":Landroid/media/MediaTimeProvider$OnMediaTimeListener;
    goto :goto_9

    .line 4663
    :cond_e
    monitor-exit p0

    return-void

    .line 4602
    .end local v0    # "activatedListeners":Ljava/util/Vector;, "Ljava/util/Vector<Landroid/media/MediaTimeProvider$OnMediaTimeListener;>;"
    .end local v6    # "nextTimeUs":J
    .end local v8    # "nowUs":J
    .end local p1    # "refreshTime":Z
    :goto_a
    monitor-exit p0

    .line 4602
    .end local p0    # "this":Landroid/media/MediaPlayer2Impl$TimeProvider;
    throw v0
.end method

.method private declared-synchronized notifyTrackData(Landroid/util/Pair;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Landroid/media/SubtitleTrack;",
            "[B>;)V"
        }
    .end annotation

    .local p1, "trackData":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/media/SubtitleTrack;[B>;"
    monitor-enter p0

    .line 4516
    :try_start_0
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/media/SubtitleTrack;

    .line 4517
    .local v0, "track":Landroid/media/SubtitleTrack;
    iget-object v1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, [B

    .line 4518
    .local v1, "data":[B
    const/4 v2, 0x1

    const-wide/16 v3, -0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/media/SubtitleTrack;->onData([BZJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4519
    monitor-exit p0

    return-void

    .line 4515
    .end local v0    # "track":Landroid/media/SubtitleTrack;
    .end local v1    # "data":[B
    .end local p1    # "trackData":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/media/SubtitleTrack;[B>;"
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Landroid/media/MediaPlayer2Impl$TimeProvider;
    throw p1
.end method

.method private registerListener(Landroid/media/MediaTimeProvider$OnMediaTimeListener;)I
    .locals 6
    .param p1, "listener"    # Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    .line 4531
    const/4 v0, 0x0

    move v1, v0

    .line 4532
    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 4533
    iget-object v2, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    aget-object v2, v2, v1

    if-eq v2, p1, :cond_1

    iget-object v2, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    aget-object v2, v2, v1

    if-nez v2, :cond_0

    .line 4534
    goto :goto_1

    .line 4532
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4539
    :cond_1
    :goto_1
    iget-object v2, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    array-length v2, v2

    if-lt v1, v2, :cond_2

    .line 4540
    add-int/lit8 v2, v1, 0x1

    new-array v2, v2, [Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    .line 4542
    .local v2, "newListeners":[Landroid/media/MediaTimeProvider$OnMediaTimeListener;
    add-int/lit8 v3, v1, 0x1

    new-array v3, v3, [J

    .line 4543
    .local v3, "newTimes":[J
    iget-object v4, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    iget-object v5, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    array-length v5, v5

    invoke-static {v4, v0, v2, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4544
    iget-object v4, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->mTimes:[J

    iget-object v5, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->mTimes:[J

    array-length v5, v5

    invoke-static {v4, v0, v3, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4545
    iput-object v2, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    .line 4546
    iput-object v3, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->mTimes:[J

    .line 4549
    .end local v2    # "newListeners":[Landroid/media/MediaTimeProvider$OnMediaTimeListener;
    .end local v3    # "newTimes":[J
    :cond_2
    iget-object v0, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    aget-object v0, v0, v1

    if-nez v0, :cond_3

    .line 4550
    iget-object v0, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    aput-object p1, v0, v1

    .line 4551
    iget-object v0, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->mTimes:[J

    const-wide/16 v2, -0x1

    aput-wide v2, v0, v1

    .line 4553
    :cond_3
    return v1
.end method

.method private scheduleNotification(IJ)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "delayUs"    # J

    .line 4403
    iget-boolean v0, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->mSeeking:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 4404
    return-void

    .line 4407
    :cond_0
    iget-boolean v0, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "MTP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "scheduleNotification "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4408
    :cond_1
    iget-object v0, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->mEventHandler:Landroid/media/MediaPlayer2Impl$TimeProvider$EventHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer2Impl$TimeProvider$EventHandler;->removeMessages(I)V

    .line 4409
    iget-object v0, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->mEventHandler:Landroid/media/MediaPlayer2Impl$TimeProvider$EventHandler;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/media/MediaPlayer2Impl$TimeProvider$EventHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 4410
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->mEventHandler:Landroid/media/MediaPlayer2Impl$TimeProvider$EventHandler;

    const-wide/16 v2, 0x3e8

    div-long v2, p2, v2

    long-to-int v2, v2

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/media/MediaPlayer2Impl$TimeProvider$EventHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 4411
    return-void
.end method


# virtual methods
.method public cancelNotifications(Landroid/media/MediaTimeProvider$OnMediaTimeListener;)V
    .locals 6
    .param p1, "listener"    # Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    .line 4579
    monitor-enter p0

    .line 4580
    const/4 v0, 0x0

    move v1, v0

    .line 4581
    .local v1, "i":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 4582
    iget-object v2, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    aget-object v2, v2, v1

    if-ne v2, p1, :cond_0

    .line 4583
    iget-object v2, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    add-int/lit8 v3, v1, 0x1

    iget-object v4, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    iget-object v5, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    array-length v5, v5

    sub-int/2addr v5, v1

    add-int/lit8 v5, v5, -0x1

    invoke-static {v2, v3, v4, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4585
    iget-object v2, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->mTimes:[J

    add-int/lit8 v3, v1, 0x1

    iget-object v4, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->mTimes:[J

    iget-object v5, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->mTimes:[J

    array-length v5, v5

    sub-int/2addr v5, v1

    add-int/lit8 v5, v5, -0x1

    invoke-static {v2, v3, v4, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4587
    iget-object v2, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    iget-object v3, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    const/4 v4, 0x0

    aput-object v4, v2, v3

    .line 4588
    iget-object v2, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->mTimes:[J

    iget-object v3, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->mTimes:[J

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    const-wide/16 v4, -0x1

    aput-wide v4, v2, v3

    .line 4589
    goto :goto_1

    .line 4590
    :cond_0
    iget-object v2, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    aget-object v2, v2, v1

    if-nez v2, :cond_1

    .line 4591
    goto :goto_1

    .line 4581
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4595
    :cond_2
    :goto_1
    const-wide/16 v2, 0x0

    invoke-direct {p0, v0, v2, v3}, Landroid/media/MediaPlayer2Impl$TimeProvider;->scheduleNotification(IJ)V

    .line 4596
    .end local v1    # "i":I
    monitor-exit p0

    .line 4597
    return-void

    .line 4596
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public close()V
    .locals 2

    .line 4415
    iget-object v0, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->mEventHandler:Landroid/media/MediaPlayer2Impl$TimeProvider$EventHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer2Impl$TimeProvider$EventHandler;->removeMessages(I)V

    .line 4416
    iget-object v0, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 4417
    iget-object v0, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 4418
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->mHandlerThread:Landroid/os/HandlerThread;

    .line 4420
    :cond_0
    return-void
.end method

.method protected finalize()V
    .locals 1

    .line 4424
    iget-object v0, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 4425
    iget-object v0, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 4427
    :cond_0
    return-void
.end method

.method public getCurrentTimeUs(ZZ)J
    .locals 7
    .param p1, "refreshTime"    # Z
    .param p2, "monotonic"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 4667
    monitor-enter p0

    .line 4670
    :try_start_0
    iget-boolean v0, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->mPaused:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 4671
    iget-wide v0, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->mLastReportedTime:J

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-wide v0

    .line 4675
    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_1
    iget-object v2, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->mPlayer:Landroid/media/MediaPlayer2Impl;

    invoke-virtual {v2}, Landroid/media/MediaPlayer2Impl;->getCurrentPosition()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    iput-wide v2, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->mLastTimeUs:J

    .line 4676
    iget-object v2, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->mPlayer:Landroid/media/MediaPlayer2Impl;

    invoke-virtual {v2}, Landroid/media/MediaPlayer2Impl;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->mBuffering:Z

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    move v2, v1

    goto :goto_1

    :cond_2
    :goto_0
    move v2, v0

    :goto_1
    iput-boolean v2, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->mPaused:Z

    .line 4677
    iget-boolean v2, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->DEBUG:Z

    if-eqz v2, :cond_4

    const-string v2, "MTP"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v4, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->mPaused:Z

    if-eqz v4, :cond_3

    const-string/jumbo v4, "paused"

    goto :goto_2

    :cond_3
    const-string/jumbo v4, "playing"

    :goto_2
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->mLastTimeUs:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4691
    :cond_4
    nop

    .line 4692
    if-eqz p2, :cond_5

    :try_start_2
    iget-wide v2, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->mLastTimeUs:J

    iget-wide v4, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->mLastReportedTime:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_5

    .line 4694
    iget-wide v2, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->mLastReportedTime:J

    iget-wide v4, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->mLastTimeUs:J

    sub-long/2addr v2, v4

    const-wide/32 v4, 0xf4240

    cmp-long v2, v2, v4

    if-lez v2, :cond_6

    .line 4697
    iput-boolean v1, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->mStopped:Z

    .line 4698
    iput-boolean v0, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->mSeeking:Z

    .line 4699
    const/4 v0, 0x3

    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2}, Landroid/media/MediaPlayer2Impl$TimeProvider;->scheduleNotification(IJ)V

    goto :goto_3

    .line 4702
    :cond_5
    iget-wide v0, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->mLastTimeUs:J

    iput-wide v0, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->mLastReportedTime:J

    .line 4705
    :cond_6
    :goto_3
    iget-wide v0, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->mLastReportedTime:J

    monitor-exit p0

    return-wide v0

    .line 4678
    :catch_0
    move-exception v2

    .line 4679
    .local v2, "e":Ljava/lang/IllegalStateException;
    iget-boolean v3, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->mPausing:Z

    if-eqz v3, :cond_a

    .line 4681
    iput-boolean v1, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->mPausing:Z

    .line 4682
    if-eqz p2, :cond_7

    iget-wide v3, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->mLastReportedTime:J

    iget-wide v5, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->mLastTimeUs:J

    cmp-long v1, v3, v5

    if-gez v1, :cond_8

    .line 4683
    :cond_7
    iget-wide v3, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->mLastTimeUs:J

    iput-wide v3, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->mLastReportedTime:J

    .line 4685
    :cond_8
    iput-boolean v0, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->mPaused:Z

    .line 4686
    iget-boolean v0, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->DEBUG:Z

    if-eqz v0, :cond_9

    const-string v0, "MTP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "illegal state, but pausing: estimating at "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->mLastReportedTime:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4687
    :cond_9
    iget-wide v0, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->mLastReportedTime:J

    monitor-exit p0

    return-wide v0

    .line 4690
    :cond_a
    throw v2

    .line 4706
    .end local v2    # "e":Ljava/lang/IllegalStateException;
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public notifyAt(JLandroid/media/MediaTimeProvider$OnMediaTimeListener;)V
    .locals 3
    .param p1, "timeUs"    # J
    .param p3, "listener"    # Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    .line 4558
    monitor-enter p0

    .line 4559
    :try_start_0
    iget-boolean v0, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MTP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyAt "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4560
    :cond_0
    iget-object v0, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->mTimes:[J

    invoke-direct {p0, p3}, Landroid/media/MediaPlayer2Impl$TimeProvider;->registerListener(Landroid/media/MediaTimeProvider$OnMediaTimeListener;)I

    move-result v1

    aput-wide p1, v0, v1

    .line 4561
    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2}, Landroid/media/MediaPlayer2Impl$TimeProvider;->scheduleNotification(IJ)V

    .line 4562
    monitor-exit p0

    .line 4563
    return-void

    .line 4562
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onBuffering(Z)V
    .locals 3
    .param p1, "buffering"    # Z

    .line 4455
    monitor-enter p0

    .line 4456
    :try_start_0
    iget-boolean v0, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MTP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onBuffering: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4457
    :cond_0
    iput-boolean p1, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->mBuffering:Z

    .line 4458
    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2}, Landroid/media/MediaPlayer2Impl$TimeProvider;->scheduleNotification(IJ)V

    .line 4459
    monitor-exit p0

    .line 4460
    return-void

    .line 4459
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onNewPlayer()V
    .locals 3

    .line 4485
    iget-boolean v0, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->mRefresh:Z

    if-eqz v0, :cond_0

    .line 4486
    monitor-enter p0

    .line 4487
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->mStopped:Z

    .line 4488
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->mSeeking:Z

    .line 4489
    iput-boolean v0, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->mBuffering:Z

    .line 4490
    const/4 v0, 0x3

    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2}, Landroid/media/MediaPlayer2Impl$TimeProvider;->scheduleNotification(IJ)V

    .line 4491
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 4493
    :cond_0
    :goto_0
    return-void
.end method

.method public onNotifyTime()V
    .locals 3

    .line 4431
    monitor-enter p0

    .line 4432
    :try_start_0
    iget-boolean v0, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MTP"

    const-string/jumbo v1, "onNotifyTime: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4433
    :cond_0
    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2}, Landroid/media/MediaPlayer2Impl$TimeProvider;->scheduleNotification(IJ)V

    .line 4434
    monitor-exit p0

    .line 4435
    return-void

    .line 4434
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onPaused(Z)V
    .locals 4
    .param p1, "paused"    # Z

    .line 4439
    monitor-enter p0

    .line 4440
    :try_start_0
    iget-boolean v0, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MTP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPaused: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4441
    :cond_0
    iget-boolean v0, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->mStopped:Z

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 4442
    iput-boolean v3, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->mStopped:Z

    .line 4443
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->mSeeking:Z

    .line 4444
    const/4 v0, 0x3

    invoke-direct {p0, v0, v1, v2}, Landroid/media/MediaPlayer2Impl$TimeProvider;->scheduleNotification(IJ)V

    goto :goto_0

    .line 4446
    :cond_1
    iput-boolean p1, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->mPausing:Z

    .line 4447
    iput-boolean v3, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->mSeeking:Z

    .line 4448
    invoke-direct {p0, v3, v1, v2}, Landroid/media/MediaPlayer2Impl$TimeProvider;->scheduleNotification(IJ)V

    .line 4450
    :goto_0
    monitor-exit p0

    .line 4451
    return-void

    .line 4450
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onSeekComplete(Landroid/media/MediaPlayer2Impl;)V
    .locals 3
    .param p1, "mp"    # Landroid/media/MediaPlayer2Impl;

    .line 4476
    monitor-enter p0

    .line 4477
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->mStopped:Z

    .line 4478
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->mSeeking:Z

    .line 4479
    const/4 v0, 0x3

    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2}, Landroid/media/MediaPlayer2Impl$TimeProvider;->scheduleNotification(IJ)V

    .line 4480
    monitor-exit p0

    .line 4481
    return-void

    .line 4480
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onStopped()V
    .locals 3

    .line 4464
    monitor-enter p0

    .line 4465
    :try_start_0
    iget-boolean v0, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MTP"

    const-string/jumbo v1, "onStopped"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4466
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->mPaused:Z

    .line 4467
    iput-boolean v0, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->mStopped:Z

    .line 4468
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->mSeeking:Z

    .line 4469
    iput-boolean v0, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->mBuffering:Z

    .line 4470
    const/4 v0, 0x2

    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2}, Landroid/media/MediaPlayer2Impl$TimeProvider;->scheduleNotification(IJ)V

    .line 4471
    monitor-exit p0

    .line 4472
    return-void

    .line 4471
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public scheduleUpdate(Landroid/media/MediaTimeProvider$OnMediaTimeListener;)V
    .locals 4
    .param p1, "listener"    # Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    .line 4566
    monitor-enter p0

    .line 4567
    :try_start_0
    iget-boolean v0, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MTP"

    const-string/jumbo v1, "scheduleUpdate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4568
    :cond_0
    invoke-direct {p0, p1}, Landroid/media/MediaPlayer2Impl$TimeProvider;->registerListener(Landroid/media/MediaTimeProvider$OnMediaTimeListener;)I

    move-result v0

    .line 4570
    .local v0, "i":I
    iget-boolean v1, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->mStopped:Z

    if-nez v1, :cond_1

    .line 4571
    iget-object v1, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->mTimes:[J

    const-wide/16 v2, 0x0

    aput-wide v2, v1, v0

    .line 4572
    const/4 v1, 0x0

    invoke-direct {p0, v1, v2, v3}, Landroid/media/MediaPlayer2Impl$TimeProvider;->scheduleNotification(IJ)V

    .line 4574
    .end local v0    # "i":I
    :cond_1
    monitor-exit p0

    .line 4575
    return-void

    .line 4574
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
