.class final Landroid/media/AudioManager$SafeWaitObject;
.super Ljava/lang/Object;
.source "AudioManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SafeWaitObject"
.end annotation


# instance fields
.field private mQuit:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2762
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2763
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/AudioManager$SafeWaitObject;->mQuit:Z

    return-void
.end method

.method synthetic constructor <init>(Landroid/media/AudioManager$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/media/AudioManager$1;

    .line 2762
    invoke-direct {p0}, Landroid/media/AudioManager$SafeWaitObject;-><init>()V

    return-void
.end method


# virtual methods
.method public safeNotify()V
    .locals 1

    .line 2766
    monitor-enter p0

    .line 2767
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Landroid/media/AudioManager$SafeWaitObject;->mQuit:Z

    .line 2768
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 2769
    monitor-exit p0

    .line 2770
    return-void

    .line 2769
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public safeWait(J)V
    .locals 6
    .param p1, "millis"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 2773
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    add-long/2addr v0, p1

    .line 2774
    .local v0, "timeOutTime":J
    monitor-enter p0

    .line 2775
    :goto_0
    :try_start_0
    iget-boolean v2, p0, Landroid/media/AudioManager$SafeWaitObject;->mQuit:Z

    if-nez v2, :cond_1

    .line 2776
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v2, v0, v2

    .line 2777
    .local v2, "timeToWait":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-gez v4, :cond_0

    .end local v2    # "timeToWait":J
    goto :goto_1

    .line 2778
    .restart local v2    # "timeToWait":J
    :cond_0
    invoke-virtual {p0, v2, v3}, Ljava/lang/Object;->wait(J)V

    .line 2779
    .end local v2    # "timeToWait":J
    goto :goto_0

    .line 2780
    :cond_1
    :goto_1
    monitor-exit p0

    .line 2781
    return-void

    .line 2780
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
