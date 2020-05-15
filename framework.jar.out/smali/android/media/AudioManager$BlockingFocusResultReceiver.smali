.class final Landroid/media/AudioManager$BlockingFocusResultReceiver;
.super Ljava/lang/Object;
.source "AudioManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "BlockingFocusResultReceiver"
.end annotation


# instance fields
.field private final mFocusClientId:Ljava/lang/String;

.field private mFocusRequestResult:I

.field private final mLock:Landroid/media/AudioManager$SafeWaitObject;

.field private mResultReceived:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "clientId"    # Ljava/lang/String;

    .line 2792
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2785
    new-instance v0, Landroid/media/AudioManager$SafeWaitObject;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/media/AudioManager$SafeWaitObject;-><init>(Landroid/media/AudioManager$1;)V

    iput-object v0, p0, Landroid/media/AudioManager$BlockingFocusResultReceiver;->mLock:Landroid/media/AudioManager$SafeWaitObject;

    .line 2786
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/AudioManager$BlockingFocusResultReceiver;->mResultReceived:Z

    .line 2789
    iput v0, p0, Landroid/media/AudioManager$BlockingFocusResultReceiver;->mFocusRequestResult:I

    .line 2793
    iput-object p1, p0, Landroid/media/AudioManager$BlockingFocusResultReceiver;->mFocusClientId:Ljava/lang/String;

    .line 2794
    return-void
.end method


# virtual methods
.method notifyResult(I)V
    .locals 2
    .param p1, "requestResult"    # I

    .line 2800
    iget-object v0, p0, Landroid/media/AudioManager$BlockingFocusResultReceiver;->mLock:Landroid/media/AudioManager$SafeWaitObject;

    monitor-enter v0

    .line 2801
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Landroid/media/AudioManager$BlockingFocusResultReceiver;->mResultReceived:Z

    .line 2802
    iput p1, p0, Landroid/media/AudioManager$BlockingFocusResultReceiver;->mFocusRequestResult:I

    .line 2803
    iget-object v1, p0, Landroid/media/AudioManager$BlockingFocusResultReceiver;->mLock:Landroid/media/AudioManager$SafeWaitObject;

    invoke-virtual {v1}, Landroid/media/AudioManager$SafeWaitObject;->safeNotify()V

    .line 2804
    monitor-exit v0

    .line 2805
    return-void

    .line 2804
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method receivedResult()Z
    .locals 1

    .line 2796
    iget-boolean v0, p0, Landroid/media/AudioManager$BlockingFocusResultReceiver;->mResultReceived:Z

    return v0
.end method

.method requestResult()I
    .locals 1

    .line 2797
    iget v0, p0, Landroid/media/AudioManager$BlockingFocusResultReceiver;->mFocusRequestResult:I

    return v0
.end method

.method public waitForResult(J)V
    .locals 2
    .param p1, "timeOutMs"    # J

    .line 2808
    iget-object v0, p0, Landroid/media/AudioManager$BlockingFocusResultReceiver;->mLock:Landroid/media/AudioManager$SafeWaitObject;

    monitor-enter v0

    .line 2809
    :try_start_0
    iget-boolean v1, p0, Landroid/media/AudioManager$BlockingFocusResultReceiver;->mResultReceived:Z

    if-eqz v1, :cond_0

    .line 2811
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 2814
    :cond_0
    :try_start_1
    iget-object v1, p0, Landroid/media/AudioManager$BlockingFocusResultReceiver;->mLock:Landroid/media/AudioManager$SafeWaitObject;

    invoke-virtual {v1, p1, p2}, Landroid/media/AudioManager$SafeWaitObject;->safeWait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2815
    goto :goto_0

    :catch_0
    move-exception v1

    .line 2816
    :goto_0
    :try_start_2
    monitor-exit v0

    .line 2817
    return-void

    .line 2816
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
