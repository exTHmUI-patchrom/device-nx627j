.class Landroid/media/MediaPlayer$TimeProvider;
.super Ljava/lang/Object;
.source "MediaPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnSeekCompleteListener;
.implements Landroid/media/MediaTimeProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TimeProvider"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaPlayer$TimeProvider$EventHandler;
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

.field private mEventHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mLastReportedTime:J

.field private mLastTimeUs:J

.field private mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

.field private mPaused:Z

.field private mPausing:Z

.field private mPlayer:Landroid/media/MediaPlayer;

.field private mRefresh:Z

.field private mSeeking:Z

.field private mStopped:Z

.field private mTimes:[J


# direct methods
.method public constructor <init>(Landroid/media/MediaPlayer;)V
    .locals 7
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .line 5549
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5525
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mLastTimeUs:J

    .line 5527
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/media/MediaPlayer$TimeProvider;->mPaused:Z

    .line 5528
    iput-boolean v2, p0, Landroid/media/MediaPlayer$TimeProvider;->mStopped:Z

    .line 5536
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/media/MediaPlayer$TimeProvider;->mRefresh:Z

    .line 5537
    iput-boolean v3, p0, Landroid/media/MediaPlayer$TimeProvider;->mPausing:Z

    .line 5538
    iput-boolean v3, p0, Landroid/media/MediaPlayer$TimeProvider;->mSeeking:Z

    .line 5547
    iput-boolean v3, p0, Landroid/media/MediaPlayer$TimeProvider;->DEBUG:Z

    .line 5550
    iput-object p1, p0, Landroid/media/MediaPlayer$TimeProvider;->mPlayer:Landroid/media/MediaPlayer;

    .line 5552
    :try_start_0
    invoke-virtual {p0, v2, v3}, Landroid/media/MediaPlayer$TimeProvider;->getCurrentTimeUs(ZZ)J
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5556
    goto :goto_0

    .line 5553
    :catch_0
    move-exception v4

    .line 5555
    .local v4, "e":Ljava/lang/IllegalStateException;
    iput-boolean v2, p0, Landroid/media/MediaPlayer$TimeProvider;->mRefresh:Z

    .line 5559
    .end local v4    # "e":Ljava/lang/IllegalStateException;
    :goto_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    move-object v4, v2

    .local v4, "looper":Landroid/os/Looper;
    if-nez v2, :cond_0

    .line 5560
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    move-object v4, v2

    if-nez v2, :cond_0

    .line 5562
    new-instance v2, Landroid/os/HandlerThread;

    const-string v5, "MediaPlayerMTPEventThread"

    const/4 v6, -0x2

    invoke-direct {v2, v5, v6}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v2, p0, Landroid/media/MediaPlayer$TimeProvider;->mHandlerThread:Landroid/os/HandlerThread;

    .line 5564
    iget-object v2, p0, Landroid/media/MediaPlayer$TimeProvider;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 5565
    iget-object v2, p0, Landroid/media/MediaPlayer$TimeProvider;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    .line 5567
    :cond_0
    new-instance v2, Landroid/media/MediaPlayer$TimeProvider$EventHandler;

    invoke-direct {v2, p0, v4}, Landroid/media/MediaPlayer$TimeProvider$EventHandler;-><init>(Landroid/media/MediaPlayer$TimeProvider;Landroid/os/Looper;)V

    iput-object v2, p0, Landroid/media/MediaPlayer$TimeProvider;->mEventHandler:Landroid/os/Handler;

    .line 5569
    new-array v2, v3, [Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    iput-object v2, p0, Landroid/media/MediaPlayer$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    .line 5570
    new-array v2, v3, [J

    iput-object v2, p0, Landroid/media/MediaPlayer$TimeProvider;->mTimes:[J

    .line 5571
    iput-wide v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mLastTimeUs:J

    .line 5572
    return-void
.end method

.method static synthetic access$4400(Landroid/media/MediaPlayer$TimeProvider;Z)V
    .locals 0
    .param p0, "x0"    # Landroid/media/MediaPlayer$TimeProvider;
    .param p1, "x1"    # Z

    .line 5519
    invoke-direct {p0, p1}, Landroid/media/MediaPlayer$TimeProvider;->notifyTimedEvent(Z)V

    return-void
.end method

.method static synthetic access$4500(Landroid/media/MediaPlayer$TimeProvider;)V
    .locals 0
    .param p0, "x0"    # Landroid/media/MediaPlayer$TimeProvider;

    .line 5519
    invoke-direct {p0}, Landroid/media/MediaPlayer$TimeProvider;->notifyStop()V

    return-void
.end method

.method static synthetic access$4600(Landroid/media/MediaPlayer$TimeProvider;)V
    .locals 0
    .param p0, "x0"    # Landroid/media/MediaPlayer$TimeProvider;

    .line 5519
    invoke-direct {p0}, Landroid/media/MediaPlayer$TimeProvider;->notifySeek()V

    return-void
.end method

.method static synthetic access$4700(Landroid/media/MediaPlayer$TimeProvider;Landroid/util/Pair;)V
    .locals 0
    .param p0, "x0"    # Landroid/media/MediaPlayer$TimeProvider;
    .param p1, "x1"    # Landroid/util/Pair;

    .line 5519
    invoke-direct {p0, p1}, Landroid/media/MediaPlayer$TimeProvider;->notifyTrackData(Landroid/util/Pair;)V

    return-void
.end method

.method static synthetic access$500(Landroid/media/MediaPlayer$TimeProvider;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Landroid/media/MediaPlayer$TimeProvider;

    .line 5519
    iget-object v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mEventHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private declared-synchronized notifySeek()V
    .locals 8

    monitor-enter p0

    .line 5670
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mSeeking:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5672
    const/4 v1, 0x1

    :try_start_1
    invoke-virtual {p0, v1, v0}, Landroid/media/MediaPlayer$TimeProvider;->getCurrentTimeUs(ZZ)J

    move-result-wide v2

    .line 5673
    .local v2, "timeUs":J
    iget-boolean v4, p0, Landroid/media/MediaPlayer$TimeProvider;->DEBUG:Z

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

    .line 5675
    :cond_0
    iget-object v4, p0, Landroid/media/MediaPlayer$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    array-length v5, v4

    move v6, v0

    :goto_0
    if-ge v6, v5, :cond_2

    aget-object v7, v4, v6

    .line 5676
    .local v7, "listener":Landroid/media/MediaTimeProvider$OnMediaTimeListener;
    if-nez v7, :cond_1

    .line 5677
    goto :goto_1

    .line 5679
    :cond_1
    invoke-interface {v7, v2, v3}, Landroid/media/MediaTimeProvider$OnMediaTimeListener;->onSeek(J)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5675
    .end local v7    # "listener":Landroid/media/MediaTimeProvider$OnMediaTimeListener;
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 5686
    .end local v2    # "timeUs":J
    :cond_2
    :goto_1
    goto :goto_2

    .line 5681
    :catch_0
    move-exception v2

    .line 5683
    .local v2, "e":Ljava/lang/IllegalStateException;
    :try_start_2
    iget-boolean v3, p0, Landroid/media/MediaPlayer$TimeProvider;->DEBUG:Z

    if-eqz v3, :cond_3

    const-string v3, "MTP"

    const-string/jumbo v4, "onSeekComplete but no player"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5684
    :cond_3
    iput-boolean v1, p0, Landroid/media/MediaPlayer$TimeProvider;->mPausing:Z

    .line 5685
    invoke-direct {p0, v0}, Landroid/media/MediaPlayer$TimeProvider;->notifyTimedEvent(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 5687
    .end local v2    # "e":Ljava/lang/IllegalStateException;
    :goto_2
    monitor-exit p0

    return-void

    .line 5669
    :catchall_0
    move-exception v0

    monitor-exit p0

    .line 5669
    .end local p0    # "this":Landroid/media/MediaPlayer$TimeProvider;
    throw v0
.end method

.method private declared-synchronized notifyStop()V
    .locals 4

    monitor-enter p0

    .line 5696
    :try_start_0
    iget-object v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 5697
    .local v3, "listener":Landroid/media/MediaTimeProvider$OnMediaTimeListener;
    if-nez v3, :cond_0

    .line 5698
    goto :goto_1

    .line 5700
    :cond_0
    invoke-interface {v3}, Landroid/media/MediaTimeProvider$OnMediaTimeListener;->onStop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5696
    .end local v3    # "listener":Landroid/media/MediaTimeProvider$OnMediaTimeListener;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5702
    :cond_1
    :goto_1
    monitor-exit p0

    return-void

    .line 5695
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Landroid/media/MediaPlayer$TimeProvider;
    throw v0
.end method

.method private declared-synchronized notifyTimedEvent(Z)V
    .locals 21
    .param p1, "refreshTime"    # Z

    move-object/from16 v1, p0

    move/from16 v2, p1

    monitor-enter p0

    .line 5777
    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {v1, v2, v3}, Landroid/media/MediaPlayer$TimeProvider;->getCurrentTimeUs(ZZ)J

    move-result-wide v4
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5783
    .local v4, "nowUs":J
    goto :goto_0

    .line 5776
    .end local v4    # "nowUs":J
    .end local p1    # "refreshTime":Z
    :catchall_0
    move-exception v0

    goto/16 :goto_a

    .line 5778
    .restart local p1    # "refreshTime":Z
    :catch_0
    move-exception v0

    move-object v4, v0

    .line 5780
    .local v0, "e":Ljava/lang/IllegalStateException;
    :try_start_1
    iput-boolean v3, v1, Landroid/media/MediaPlayer$TimeProvider;->mRefresh:Z

    .line 5781
    iput-boolean v3, v1, Landroid/media/MediaPlayer$TimeProvider;->mPausing:Z

    .line 5782
    invoke-virtual {v1, v2, v3}, Landroid/media/MediaPlayer$TimeProvider;->getCurrentTimeUs(ZZ)J

    move-result-wide v4

    .line 5784
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    .restart local v4    # "nowUs":J
    :goto_0
    move-wide v6, v4

    .line 5786
    .local v6, "nextTimeUs":J
    iget-boolean v0, v1, Landroid/media/MediaPlayer$TimeProvider;->mSeeking:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_0

    .line 5788
    monitor-exit p0

    return-void

    .line 5791
    :cond_0
    :try_start_2
    iget-boolean v0, v1, Landroid/media/MediaPlayer$TimeProvider;->DEBUG:Z

    const/4 v8, 0x0

    const-wide/16 v9, -0x1

    if-eqz v0, :cond_4

    .line 5792
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 5793
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v11, "notifyTimedEvent("

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v11, v1, Landroid/media/MediaPlayer$TimeProvider;->mLastTimeUs:J

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, " -> "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5794
    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, ") from {"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5795
    const/4 v11, 0x1

    .line 5796
    .local v11, "first":Z
    iget-object v12, v1, Landroid/media/MediaPlayer$TimeProvider;->mTimes:[J

    array-length v13, v12

    move v14, v11

    move v11, v8

    .line 5796
    .end local v11    # "first":Z
    .local v14, "first":Z
    :goto_1
    if-ge v11, v13, :cond_3

    aget-wide v15, v12, v11

    move-wide/from16 v17, v15

    .line 5797
    .local v17, "time":J
    move-wide/from16 v19, v4

    move-wide/from16 v3, v17

    cmp-long v5, v3, v9

    .line 5797
    .end local v4    # "nowUs":J
    .end local v17    # "time":J
    .local v3, "time":J
    .local v19, "nowUs":J
    if-nez v5, :cond_1

    .line 5798
    goto :goto_2

    .line 5800
    :cond_1
    if-nez v14, :cond_2

    const-string v5, ", "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5801
    :cond_2
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 5802
    const/4 v3, 0x0

    .line 5796
    .end local v14    # "first":Z
    .local v3, "first":Z
    move v14, v3

    .line 5796
    .end local v3    # "first":Z
    .restart local v14    # "first":Z
    :goto_2
    add-int/lit8 v11, v11, 0x1

    move-wide/from16 v4, v19

    const/4 v3, 0x1

    goto :goto_1

    .line 5804
    .end local v19    # "nowUs":J
    .restart local v4    # "nowUs":J
    :cond_3
    move-wide/from16 v19, v4

    .line 5804
    .end local v4    # "nowUs":J
    .restart local v19    # "nowUs":J
    const-string/jumbo v3, "}"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5805
    const-string v3, "MTP"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5805
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    .end local v14    # "first":Z
    goto :goto_3

    .line 5808
    .end local v19    # "nowUs":J
    .restart local v4    # "nowUs":J
    :cond_4
    move-wide/from16 v19, v4

    .line 5808
    .end local v4    # "nowUs":J
    .restart local v19    # "nowUs":J
    :goto_3
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 5810
    .local v0, "activatedListeners":Ljava/util/Vector;, "Ljava/util/Vector<Landroid/media/MediaTimeProvider$OnMediaTimeListener;>;"
    nop

    .line 5810
    .local v8, "ix":I
    :goto_4
    move v3, v8

    .line 5810
    .end local v8    # "ix":I
    .local v3, "ix":I
    iget-object v4, v1, Landroid/media/MediaPlayer$TimeProvider;->mTimes:[J

    array-length v4, v4

    if-ge v3, v4, :cond_b

    .line 5811
    iget-object v4, v1, Landroid/media/MediaPlayer$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    aget-object v4, v4, v3

    if-nez v4, :cond_5

    .line 5812
    goto :goto_6

    .line 5814
    :cond_5
    iget-object v4, v1, Landroid/media/MediaPlayer$TimeProvider;->mTimes:[J

    aget-wide v4, v4, v3

    cmp-long v4, v4, v9

    if-gtz v4, :cond_6

    goto :goto_5

    .line 5816
    :cond_6
    iget-object v4, v1, Landroid/media/MediaPlayer$TimeProvider;->mTimes:[J

    aget-wide v4, v4, v3

    const-wide/16 v11, 0x3e8

    add-long v11, v19, v11

    cmp-long v4, v4, v11

    if-gtz v4, :cond_8

    .line 5817
    iget-object v4, v1, Landroid/media/MediaPlayer$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    aget-object v4, v4, v3

    invoke-virtual {v0, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 5818
    iget-boolean v4, v1, Landroid/media/MediaPlayer$TimeProvider;->DEBUG:Z

    if-eqz v4, :cond_7

    const-string v4, "MTP"

    const-string/jumbo v5, "removed"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5819
    :cond_7
    iget-object v4, v1, Landroid/media/MediaPlayer$TimeProvider;->mTimes:[J

    aput-wide v9, v4, v3

    goto :goto_5

    .line 5820
    :cond_8
    cmp-long v4, v6, v19

    if-eqz v4, :cond_9

    iget-object v4, v1, Landroid/media/MediaPlayer$TimeProvider;->mTimes:[J

    aget-wide v4, v4, v3

    cmp-long v4, v4, v6

    if-gez v4, :cond_a

    .line 5821
    :cond_9
    iget-object v4, v1, Landroid/media/MediaPlayer$TimeProvider;->mTimes:[J

    aget-wide v4, v4, v3

    .line 5810
    .end local v6    # "nextTimeUs":J
    .local v4, "nextTimeUs":J
    move-wide v6, v4

    .line 5810
    .end local v4    # "nextTimeUs":J
    .restart local v6    # "nextTimeUs":J
    :cond_a
    :goto_5
    add-int/lit8 v8, v3, 0x1

    .line 5810
    .end local v3    # "ix":I
    .restart local v8    # "ix":I
    goto :goto_4

    .line 5825
    .end local v8    # "ix":I
    :cond_b
    :goto_6
    cmp-long v3, v6, v19

    if-lez v3, :cond_d

    iget-boolean v3, v1, Landroid/media/MediaPlayer$TimeProvider;->mPaused:Z

    if-nez v3, :cond_d

    .line 5827
    iget-boolean v3, v1, Landroid/media/MediaPlayer$TimeProvider;->DEBUG:Z

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

    .line 5828
    .end local v8    # "nowUs":J
    .restart local v19    # "nowUs":J
    :cond_c
    move-wide/from16 v8, v19

    .line 5828
    .end local v19    # "nowUs":J
    .restart local v8    # "nowUs":J
    :goto_7
    iget-object v3, v1, Landroid/media/MediaPlayer$TimeProvider;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3, v6, v7}, Landroid/media/MediaPlayer;->notifyAt(J)V

    goto :goto_8

    .line 5830
    .end local v8    # "nowUs":J
    .restart local v19    # "nowUs":J
    :cond_d
    move-wide/from16 v8, v19

    .line 5830
    .end local v19    # "nowUs":J
    .restart local v8    # "nowUs":J
    iget-object v3, v1, Landroid/media/MediaPlayer$TimeProvider;->mEventHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 5834
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

    .line 5835
    .local v4, "listener":Landroid/media/MediaTimeProvider$OnMediaTimeListener;
    invoke-interface {v4, v8, v9}, Landroid/media/MediaTimeProvider$OnMediaTimeListener;->onTimedEvent(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 5836
    .end local v4    # "listener":Landroid/media/MediaTimeProvider$OnMediaTimeListener;
    goto :goto_9

    .line 5837
    :cond_e
    monitor-exit p0

    return-void

    .line 5776
    .end local v0    # "activatedListeners":Ljava/util/Vector;, "Ljava/util/Vector<Landroid/media/MediaTimeProvider$OnMediaTimeListener;>;"
    .end local v6    # "nextTimeUs":J
    .end local v8    # "nowUs":J
    .end local p1    # "refreshTime":Z
    :goto_a
    monitor-exit p0

    .line 5776
    .end local p0    # "this":Landroid/media/MediaPlayer$TimeProvider;
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

    .line 5690
    :try_start_0
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/media/SubtitleTrack;

    .line 5691
    .local v0, "track":Landroid/media/SubtitleTrack;
    iget-object v1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, [B

    .line 5692
    .local v1, "data":[B
    const/4 v2, 0x1

    const-wide/16 v3, -0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/media/SubtitleTrack;->onData([BZJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5693
    monitor-exit p0

    return-void

    .line 5689
    .end local v0    # "track":Landroid/media/SubtitleTrack;
    .end local v1    # "data":[B
    .end local p1    # "trackData":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/media/SubtitleTrack;[B>;"
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Landroid/media/MediaPlayer$TimeProvider;
    throw p1
.end method

.method private registerListener(Landroid/media/MediaTimeProvider$OnMediaTimeListener;)I
    .locals 6
    .param p1, "listener"    # Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    .line 5705
    const/4 v0, 0x0

    move v1, v0

    .line 5706
    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Landroid/media/MediaPlayer$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 5707
    iget-object v2, p0, Landroid/media/MediaPlayer$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    aget-object v2, v2, v1

    if-eq v2, p1, :cond_1

    iget-object v2, p0, Landroid/media/MediaPlayer$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    aget-object v2, v2, v1

    if-nez v2, :cond_0

    .line 5708
    goto :goto_1

    .line 5706
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5713
    :cond_1
    :goto_1
    iget-object v2, p0, Landroid/media/MediaPlayer$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    array-length v2, v2

    if-lt v1, v2, :cond_2

    .line 5714
    add-int/lit8 v2, v1, 0x1

    new-array v2, v2, [Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    .line 5716
    .local v2, "newListeners":[Landroid/media/MediaTimeProvider$OnMediaTimeListener;
    add-int/lit8 v3, v1, 0x1

    new-array v3, v3, [J

    .line 5717
    .local v3, "newTimes":[J
    iget-object v4, p0, Landroid/media/MediaPlayer$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    iget-object v5, p0, Landroid/media/MediaPlayer$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    array-length v5, v5

    invoke-static {v4, v0, v2, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5718
    iget-object v4, p0, Landroid/media/MediaPlayer$TimeProvider;->mTimes:[J

    iget-object v5, p0, Landroid/media/MediaPlayer$TimeProvider;->mTimes:[J

    array-length v5, v5

    invoke-static {v4, v0, v3, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5719
    iput-object v2, p0, Landroid/media/MediaPlayer$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    .line 5720
    iput-object v3, p0, Landroid/media/MediaPlayer$TimeProvider;->mTimes:[J

    .line 5723
    .end local v2    # "newListeners":[Landroid/media/MediaTimeProvider$OnMediaTimeListener;
    .end local v3    # "newTimes":[J
    :cond_2
    iget-object v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    aget-object v0, v0, v1

    if-nez v0, :cond_3

    .line 5724
    iget-object v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    aput-object p1, v0, v1

    .line 5725
    iget-object v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mTimes:[J

    const-wide/16 v2, -0x1

    aput-wide v2, v0, v1

    .line 5727
    :cond_3
    return v1
.end method

.method private scheduleNotification(IJ)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "delayUs"    # J

    .line 5576
    iget-boolean v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mSeeking:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 5577
    return-void

    .line 5580
    :cond_0
    iget-boolean v0, p0, Landroid/media/MediaPlayer$TimeProvider;->DEBUG:Z

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

    .line 5581
    :cond_1
    iget-object v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mEventHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 5582
    iget-object v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mEventHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 5583
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Landroid/media/MediaPlayer$TimeProvider;->mEventHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    div-long v2, p2, v2

    long-to-int v2, v2

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 5584
    return-void
.end method


# virtual methods
.method public cancelNotifications(Landroid/media/MediaTimeProvider$OnMediaTimeListener;)V
    .locals 6
    .param p1, "listener"    # Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    .line 5753
    monitor-enter p0

    .line 5754
    const/4 v0, 0x0

    move v1, v0

    .line 5755
    .local v1, "i":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Landroid/media/MediaPlayer$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 5756
    iget-object v2, p0, Landroid/media/MediaPlayer$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    aget-object v2, v2, v1

    if-ne v2, p1, :cond_0

    .line 5757
    iget-object v2, p0, Landroid/media/MediaPlayer$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    add-int/lit8 v3, v1, 0x1

    iget-object v4, p0, Landroid/media/MediaPlayer$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    iget-object v5, p0, Landroid/media/MediaPlayer$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    array-length v5, v5

    sub-int/2addr v5, v1

    add-int/lit8 v5, v5, -0x1

    invoke-static {v2, v3, v4, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5759
    iget-object v2, p0, Landroid/media/MediaPlayer$TimeProvider;->mTimes:[J

    add-int/lit8 v3, v1, 0x1

    iget-object v4, p0, Landroid/media/MediaPlayer$TimeProvider;->mTimes:[J

    iget-object v5, p0, Landroid/media/MediaPlayer$TimeProvider;->mTimes:[J

    array-length v5, v5

    sub-int/2addr v5, v1

    add-int/lit8 v5, v5, -0x1

    invoke-static {v2, v3, v4, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5761
    iget-object v2, p0, Landroid/media/MediaPlayer$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    iget-object v3, p0, Landroid/media/MediaPlayer$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    const/4 v4, 0x0

    aput-object v4, v2, v3

    .line 5762
    iget-object v2, p0, Landroid/media/MediaPlayer$TimeProvider;->mTimes:[J

    iget-object v3, p0, Landroid/media/MediaPlayer$TimeProvider;->mTimes:[J

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    const-wide/16 v4, -0x1

    aput-wide v4, v2, v3

    .line 5763
    goto :goto_1

    .line 5764
    :cond_0
    iget-object v2, p0, Landroid/media/MediaPlayer$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    aget-object v2, v2, v1

    if-nez v2, :cond_1

    .line 5765
    goto :goto_1

    .line 5755
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5769
    :cond_2
    :goto_1
    const-wide/16 v2, 0x0

    invoke-direct {p0, v0, v2, v3}, Landroid/media/MediaPlayer$TimeProvider;->scheduleNotification(IJ)V

    .line 5770
    .end local v1    # "i":I
    monitor-exit p0

    .line 5771
    return-void

    .line 5770
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public close()V
    .locals 2

    .line 5588
    iget-object v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mEventHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 5589
    iget-object v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 5590
    iget-object v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 5591
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mHandlerThread:Landroid/os/HandlerThread;

    .line 5593
    :cond_0
    return-void
.end method

.method protected finalize()V
    .locals 1

    .line 5597
    iget-object v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 5598
    iget-object v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 5600
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

    .line 5841
    monitor-enter p0

    .line 5844
    :try_start_0
    iget-boolean v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mPaused:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 5845
    iget-wide v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mLastReportedTime:J

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-wide v0

    .line 5849
    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_1
    iget-object v2, p0, Landroid/media/MediaPlayer$TimeProvider;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v2

    int-to-long v2, v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    iput-wide v2, p0, Landroid/media/MediaPlayer$TimeProvider;->mLastTimeUs:J

    .line 5850
    iget-object v2, p0, Landroid/media/MediaPlayer$TimeProvider;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Landroid/media/MediaPlayer$TimeProvider;->mBuffering:Z

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    move v2, v1

    goto :goto_1

    :cond_2
    :goto_0
    move v2, v0

    :goto_1
    iput-boolean v2, p0, Landroid/media/MediaPlayer$TimeProvider;->mPaused:Z

    .line 5851
    iget-boolean v2, p0, Landroid/media/MediaPlayer$TimeProvider;->DEBUG:Z

    if-eqz v2, :cond_4

    const-string v2, "MTP"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v4, p0, Landroid/media/MediaPlayer$TimeProvider;->mPaused:Z

    if-eqz v4, :cond_3

    const-string/jumbo v4, "paused"

    goto :goto_2

    :cond_3
    const-string/jumbo v4, "playing"

    :goto_2
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Landroid/media/MediaPlayer$TimeProvider;->mLastTimeUs:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5865
    :cond_4
    nop

    .line 5866
    if-eqz p2, :cond_5

    :try_start_2
    iget-wide v2, p0, Landroid/media/MediaPlayer$TimeProvider;->mLastTimeUs:J

    iget-wide v4, p0, Landroid/media/MediaPlayer$TimeProvider;->mLastReportedTime:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_5

    .line 5868
    iget-wide v2, p0, Landroid/media/MediaPlayer$TimeProvider;->mLastReportedTime:J

    iget-wide v4, p0, Landroid/media/MediaPlayer$TimeProvider;->mLastTimeUs:J

    sub-long/2addr v2, v4

    const-wide/32 v4, 0xf4240

    cmp-long v2, v2, v4

    if-lez v2, :cond_6

    .line 5871
    iput-boolean v1, p0, Landroid/media/MediaPlayer$TimeProvider;->mStopped:Z

    .line 5872
    iput-boolean v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mSeeking:Z

    .line 5873
    const/4 v0, 0x3

    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2}, Landroid/media/MediaPlayer$TimeProvider;->scheduleNotification(IJ)V

    goto :goto_3

    .line 5876
    :cond_5
    iget-wide v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mLastTimeUs:J

    iput-wide v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mLastReportedTime:J

    .line 5879
    :cond_6
    :goto_3
    iget-wide v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mLastReportedTime:J

    monitor-exit p0

    return-wide v0

    .line 5852
    :catch_0
    move-exception v2

    .line 5853
    .local v2, "e":Ljava/lang/IllegalStateException;
    iget-boolean v3, p0, Landroid/media/MediaPlayer$TimeProvider;->mPausing:Z

    if-eqz v3, :cond_a

    .line 5855
    iput-boolean v1, p0, Landroid/media/MediaPlayer$TimeProvider;->mPausing:Z

    .line 5856
    if-eqz p2, :cond_7

    iget-wide v3, p0, Landroid/media/MediaPlayer$TimeProvider;->mLastReportedTime:J

    iget-wide v5, p0, Landroid/media/MediaPlayer$TimeProvider;->mLastTimeUs:J

    cmp-long v1, v3, v5

    if-gez v1, :cond_8

    .line 5857
    :cond_7
    iget-wide v3, p0, Landroid/media/MediaPlayer$TimeProvider;->mLastTimeUs:J

    iput-wide v3, p0, Landroid/media/MediaPlayer$TimeProvider;->mLastReportedTime:J

    .line 5859
    :cond_8
    iput-boolean v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mPaused:Z

    .line 5860
    iget-boolean v0, p0, Landroid/media/MediaPlayer$TimeProvider;->DEBUG:Z

    if-eqz v0, :cond_9

    const-string v0, "MTP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "illegal state, but pausing: estimating at "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Landroid/media/MediaPlayer$TimeProvider;->mLastReportedTime:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5861
    :cond_9
    iget-wide v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mLastReportedTime:J

    monitor-exit p0

    return-wide v0

    .line 5864
    :cond_a
    throw v2

    .line 5880
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

    .line 5732
    monitor-enter p0

    .line 5733
    :try_start_0
    iget-boolean v0, p0, Landroid/media/MediaPlayer$TimeProvider;->DEBUG:Z

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

    .line 5734
    :cond_0
    iget-object v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mTimes:[J

    invoke-direct {p0, p3}, Landroid/media/MediaPlayer$TimeProvider;->registerListener(Landroid/media/MediaTimeProvider$OnMediaTimeListener;)I

    move-result v1

    aput-wide p1, v0, v1

    .line 5735
    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2}, Landroid/media/MediaPlayer$TimeProvider;->scheduleNotification(IJ)V

    .line 5736
    monitor-exit p0

    .line 5737
    return-void

    .line 5736
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

    .line 5628
    monitor-enter p0

    .line 5629
    :try_start_0
    iget-boolean v0, p0, Landroid/media/MediaPlayer$TimeProvider;->DEBUG:Z

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

    .line 5630
    :cond_0
    iput-boolean p1, p0, Landroid/media/MediaPlayer$TimeProvider;->mBuffering:Z

    .line 5631
    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2}, Landroid/media/MediaPlayer$TimeProvider;->scheduleNotification(IJ)V

    .line 5632
    monitor-exit p0

    .line 5633
    return-void

    .line 5632
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onNewPlayer()V
    .locals 3

    .line 5659
    iget-boolean v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mRefresh:Z

    if-eqz v0, :cond_0

    .line 5660
    monitor-enter p0

    .line 5661
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mStopped:Z

    .line 5662
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/media/MediaPlayer$TimeProvider;->mSeeking:Z

    .line 5663
    iput-boolean v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mBuffering:Z

    .line 5664
    const/4 v0, 0x3

    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2}, Landroid/media/MediaPlayer$TimeProvider;->scheduleNotification(IJ)V

    .line 5665
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 5667
    :cond_0
    :goto_0
    return-void
.end method

.method public onNotifyTime()V
    .locals 3

    .line 5604
    monitor-enter p0

    .line 5605
    :try_start_0
    iget-boolean v0, p0, Landroid/media/MediaPlayer$TimeProvider;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MTP"

    const-string/jumbo v1, "onNotifyTime: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5606
    :cond_0
    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2}, Landroid/media/MediaPlayer$TimeProvider;->scheduleNotification(IJ)V

    .line 5607
    monitor-exit p0

    .line 5608
    return-void

    .line 5607
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

    .line 5612
    monitor-enter p0

    .line 5613
    :try_start_0
    iget-boolean v0, p0, Landroid/media/MediaPlayer$TimeProvider;->DEBUG:Z

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

    .line 5614
    :cond_0
    iget-boolean v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mStopped:Z

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 5615
    iput-boolean v3, p0, Landroid/media/MediaPlayer$TimeProvider;->mStopped:Z

    .line 5616
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mSeeking:Z

    .line 5617
    const/4 v0, 0x3

    invoke-direct {p0, v0, v1, v2}, Landroid/media/MediaPlayer$TimeProvider;->scheduleNotification(IJ)V

    goto :goto_0

    .line 5619
    :cond_1
    iput-boolean p1, p0, Landroid/media/MediaPlayer$TimeProvider;->mPausing:Z

    .line 5620
    iput-boolean v3, p0, Landroid/media/MediaPlayer$TimeProvider;->mSeeking:Z

    .line 5621
    invoke-direct {p0, v3, v1, v2}, Landroid/media/MediaPlayer$TimeProvider;->scheduleNotification(IJ)V

    .line 5623
    :goto_0
    monitor-exit p0

    .line 5624
    return-void

    .line 5623
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onSeekComplete(Landroid/media/MediaPlayer;)V
    .locals 3
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .line 5650
    monitor-enter p0

    .line 5651
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mStopped:Z

    .line 5652
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mSeeking:Z

    .line 5653
    const/4 v0, 0x3

    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2}, Landroid/media/MediaPlayer$TimeProvider;->scheduleNotification(IJ)V

    .line 5654
    monitor-exit p0

    .line 5655
    return-void

    .line 5654
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onStopped()V
    .locals 3

    .line 5637
    monitor-enter p0

    .line 5638
    :try_start_0
    iget-boolean v0, p0, Landroid/media/MediaPlayer$TimeProvider;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MTP"

    const-string/jumbo v1, "onStopped"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5639
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mPaused:Z

    .line 5640
    iput-boolean v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mStopped:Z

    .line 5641
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mSeeking:Z

    .line 5642
    iput-boolean v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mBuffering:Z

    .line 5643
    const/4 v0, 0x2

    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2}, Landroid/media/MediaPlayer$TimeProvider;->scheduleNotification(IJ)V

    .line 5644
    monitor-exit p0

    .line 5645
    return-void

    .line 5644
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

    .line 5740
    monitor-enter p0

    .line 5741
    :try_start_0
    iget-boolean v0, p0, Landroid/media/MediaPlayer$TimeProvider;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MTP"

    const-string/jumbo v1, "scheduleUpdate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5742
    :cond_0
    invoke-direct {p0, p1}, Landroid/media/MediaPlayer$TimeProvider;->registerListener(Landroid/media/MediaTimeProvider$OnMediaTimeListener;)I

    move-result v0

    .line 5744
    .local v0, "i":I
    iget-boolean v1, p0, Landroid/media/MediaPlayer$TimeProvider;->mStopped:Z

    if-nez v1, :cond_1

    .line 5745
    iget-object v1, p0, Landroid/media/MediaPlayer$TimeProvider;->mTimes:[J

    const-wide/16 v2, 0x0

    aput-wide v2, v1, v0

    .line 5746
    const/4 v1, 0x0

    invoke-direct {p0, v1, v2, v3}, Landroid/media/MediaPlayer$TimeProvider;->scheduleNotification(IJ)V

    .line 5748
    .end local v0    # "i":I
    :cond_1
    monitor-exit p0

    .line 5749
    return-void

    .line 5748
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
