.class abstract Landroid/speech/tts/AbstractEventLogger;
.super Ljava/lang/Object;
.source "AbstractEventLogger.java"


# instance fields
.field protected final mCallerPid:I

.field protected final mCallerUid:I

.field private volatile mEngineCompleteTime:J

.field private volatile mEngineStartTime:J

.field private mLogWritten:Z

.field protected mPlaybackStartTime:J

.field protected final mReceivedTime:J

.field private volatile mRequestProcessingStartTime:J

.field protected final mServiceApp:Ljava/lang/String;


# direct methods
.method constructor <init>(IILjava/lang/String;)V
    .locals 2
    .param p1, "callerUid"    # I
    .param p2, "callerPid"    # I
    .param p3, "serviceApp"    # Ljava/lang/String;

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/speech/tts/AbstractEventLogger;->mPlaybackStartTime:J

    .line 34
    iput-wide v0, p0, Landroid/speech/tts/AbstractEventLogger;->mRequestProcessingStartTime:J

    .line 35
    iput-wide v0, p0, Landroid/speech/tts/AbstractEventLogger;->mEngineStartTime:J

    .line 36
    iput-wide v0, p0, Landroid/speech/tts/AbstractEventLogger;->mEngineCompleteTime:J

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/speech/tts/AbstractEventLogger;->mLogWritten:Z

    .line 41
    iput p1, p0, Landroid/speech/tts/AbstractEventLogger;->mCallerUid:I

    .line 42
    iput p2, p0, Landroid/speech/tts/AbstractEventLogger;->mCallerPid:I

    .line 43
    iput-object p3, p0, Landroid/speech/tts/AbstractEventLogger;->mServiceApp:Ljava/lang/String;

    .line 44
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/speech/tts/AbstractEventLogger;->mReceivedTime:J

    .line 45
    return-void
.end method


# virtual methods
.method protected abstract logFailure(I)V
.end method

.method protected abstract logSuccess(JJJ)V
.end method

.method public onAudioDataWritten()V
    .locals 4

    .line 83
    iget-wide v0, p0, Landroid/speech/tts/AbstractEventLogger;->mPlaybackStartTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 84
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/speech/tts/AbstractEventLogger;->mPlaybackStartTime:J

    .line 86
    :cond_0
    return-void
.end method

.method public onCompleted(I)V
    .locals 16
    .param p1, "statusCode"    # I

    move-object/from16 v7, p0

    .line 93
    iget-boolean v0, v7, Landroid/speech/tts/AbstractEventLogger;->mLogWritten:Z

    if-eqz v0, :cond_0

    .line 94
    return-void

    .line 96
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, v7, Landroid/speech/tts/AbstractEventLogger;->mLogWritten:Z

    .line 99
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 107
    .local v8, "completionTime":J
    if-nez p1, :cond_2

    iget-wide v0, v7, Landroid/speech/tts/AbstractEventLogger;->mPlaybackStartTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    iget-wide v0, v7, Landroid/speech/tts/AbstractEventLogger;->mEngineCompleteTime:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    goto :goto_0

    .line 113
    :cond_1
    iget-wide v0, v7, Landroid/speech/tts/AbstractEventLogger;->mPlaybackStartTime:J

    iget-wide v2, v7, Landroid/speech/tts/AbstractEventLogger;->mReceivedTime:J

    sub-long v10, v0, v2

    .line 114
    .local v10, "audioLatency":J
    iget-wide v0, v7, Landroid/speech/tts/AbstractEventLogger;->mEngineStartTime:J

    iget-wide v2, v7, Landroid/speech/tts/AbstractEventLogger;->mRequestProcessingStartTime:J

    sub-long v12, v0, v2

    .line 115
    .local v12, "engineLatency":J
    iget-wide v0, v7, Landroid/speech/tts/AbstractEventLogger;->mEngineCompleteTime:J

    iget-wide v2, v7, Landroid/speech/tts/AbstractEventLogger;->mRequestProcessingStartTime:J

    sub-long v14, v0, v2

    .line 116
    .local v14, "engineTotal":J
    move-object v0, v7

    move-wide v1, v10

    move-wide v3, v12

    move-wide v5, v14

    invoke-virtual/range {v0 .. v6}, Landroid/speech/tts/AbstractEventLogger;->logSuccess(JJJ)V

    .line 117
    return-void

    .line 109
    .end local v10    # "audioLatency":J
    .end local v12    # "engineLatency":J
    .end local v14    # "engineTotal":J
    :cond_2
    :goto_0
    invoke-virtual/range {p0 .. p1}, Landroid/speech/tts/AbstractEventLogger;->logFailure(I)V

    .line 110
    return-void
.end method

.method public onEngineComplete()V
    .locals 2

    .line 71
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/speech/tts/AbstractEventLogger;->mEngineCompleteTime:J

    .line 72
    return-void
.end method

.method public onEngineDataReceived()V
    .locals 4

    .line 61
    iget-wide v0, p0, Landroid/speech/tts/AbstractEventLogger;->mEngineStartTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 62
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/speech/tts/AbstractEventLogger;->mEngineStartTime:J

    .line 64
    :cond_0
    return-void
.end method

.method public onRequestProcessingStart()V
    .locals 2

    .line 53
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/speech/tts/AbstractEventLogger;->mRequestProcessingStartTime:J

    .line 54
    return-void
.end method
