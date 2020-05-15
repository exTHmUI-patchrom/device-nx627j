.class final Landroid/speech/tts/SynthesisPlaybackQueueItem;
.super Landroid/speech/tts/PlaybackQueueItem;
.source "SynthesisPlaybackQueueItem.java"

# interfaces
.implements Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/speech/tts/SynthesisPlaybackQueueItem$ListEntry;,
        Landroid/speech/tts/SynthesisPlaybackQueueItem$ProgressMarker;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final MAX_UNCONSUMED_AUDIO_MS:J = 0x1f4L

.field private static final NOT_RUN:I = 0x0

.field private static final RUN_CALLED:I = 0x1

.field private static final STOP_CALLED:I = 0x2

.field private static final TAG:Ljava/lang/String; = "TTS.SynthQueueItem"


# instance fields
.field private final mAudioTrack:Landroid/speech/tts/BlockingAudioTrack;

.field private final mDataBufferList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Landroid/speech/tts/SynthesisPlaybackQueueItem$ListEntry;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mDone:Z

.field private final mListLock:Ljava/util/concurrent/locks/Lock;

.field private final mLogger:Landroid/speech/tts/AbstractEventLogger;

.field private final mNotFull:Ljava/util/concurrent/locks/Condition;

.field private final mReadReady:Ljava/util/concurrent/locks/Condition;

.field private final mRunState:Ljava/util/concurrent/atomic/AtomicInteger;

.field private volatile mStatusCode:I

.field private volatile mStopped:Z

.field private mUnconsumedBytes:I

.field private markerList:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Landroid/speech/tts/SynthesisPlaybackQueueItem$ProgressMarker;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/speech/tts/TextToSpeechService$AudioOutputParams;IIILandroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;Ljava/lang/Object;Landroid/speech/tts/AbstractEventLogger;)V
    .locals 2
    .param p1, "audioParams"    # Landroid/speech/tts/TextToSpeechService$AudioOutputParams;
    .param p2, "sampleRate"    # I
    .param p3, "audioFormat"    # I
    .param p4, "channelCount"    # I
    .param p5, "dispatcher"    # Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;
    .param p6, "callerIdentity"    # Ljava/lang/Object;
    .param p7, "logger"    # Landroid/speech/tts/AbstractEventLogger;

    .line 82
    invoke-direct {p0, p5, p6}, Landroid/speech/tts/PlaybackQueueItem;-><init>(Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;Ljava/lang/Object;)V

    .line 49
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mListLock:Ljava/util/concurrent/locks/Lock;

    .line 50
    iget-object v0, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mListLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mReadReady:Ljava/util/concurrent/locks/Condition;

    .line 51
    iget-object v0, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mListLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mNotFull:Ljava/util/concurrent/locks/Condition;

    .line 54
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mDataBufferList:Ljava/util/LinkedList;

    .line 72
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->markerList:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 77
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mRunState:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 84
    iput v1, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mUnconsumedBytes:I

    .line 86
    iput-boolean v1, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mStopped:Z

    .line 87
    iput-boolean v1, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mDone:Z

    .line 88
    iput v1, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mStatusCode:I

    .line 90
    new-instance v0, Landroid/speech/tts/BlockingAudioTrack;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/speech/tts/BlockingAudioTrack;-><init>(Landroid/speech/tts/TextToSpeechService$AudioOutputParams;III)V

    iput-object v0, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mAudioTrack:Landroid/speech/tts/BlockingAudioTrack;

    .line 91
    iput-object p7, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mLogger:Landroid/speech/tts/AbstractEventLogger;

    .line 92
    return-void
.end method

.method private dispatchEndStatus()V
    .locals 3

    .line 138
    invoke-virtual {p0}, Landroid/speech/tts/SynthesisPlaybackQueueItem;->getDispatcher()Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;

    move-result-object v0

    .line 140
    .local v0, "dispatcher":Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;
    iget v1, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mStatusCode:I

    if-nez v1, :cond_0

    .line 141
    invoke-interface {v0}, Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;->dispatchOnSuccess()V

    goto :goto_0

    .line 142
    :cond_0
    iget v1, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mStatusCode:I

    const/4 v2, -0x2

    if-ne v1, v2, :cond_1

    .line 143
    invoke-interface {v0}, Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;->dispatchOnStop()V

    goto :goto_0

    .line 145
    :cond_1
    iget v1, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mStatusCode:I

    invoke-interface {v0, v1}, Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;->dispatchOnError(I)V

    .line 148
    :goto_0
    iget-object v1, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mLogger:Landroid/speech/tts/AbstractEventLogger;

    iget v2, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mStatusCode:I

    invoke-virtual {v1, v2}, Landroid/speech/tts/AbstractEventLogger;->onCompleted(I)V

    .line 149
    return-void
.end method

.method private take()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 288
    :try_start_0
    iget-object v0, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mListLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 292
    :goto_0
    iget-object v0, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mDataBufferList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mStopped:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mDone:Z

    if-nez v0, :cond_0

    .line 293
    iget-object v0, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mReadReady:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->await()V

    goto :goto_0

    .line 298
    :cond_0
    iget-boolean v0, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mStopped:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 299
    nop

    .line 319
    iget-object v0, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mListLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 299
    return-object v1

    .line 303
    :cond_1
    :try_start_1
    iget-object v0, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mDataBufferList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/speech/tts/SynthesisPlaybackQueueItem$ListEntry;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 307
    .local v0, "entry":Landroid/speech/tts/SynthesisPlaybackQueueItem$ListEntry;
    if-nez v0, :cond_2

    .line 308
    nop

    .line 319
    iget-object v2, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mListLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 308
    return-object v1

    .line 311
    :cond_2
    :try_start_2
    iget v1, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mUnconsumedBytes:I

    iget-object v2, v0, Landroid/speech/tts/SynthesisPlaybackQueueItem$ListEntry;->mBytes:[B

    array-length v2, v2

    sub-int/2addr v1, v2

    iput v1, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mUnconsumedBytes:I

    .line 315
    iget-object v1, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mNotFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->signal()V

    .line 317
    iget-object v1, v0, Landroid/speech/tts/SynthesisPlaybackQueueItem$ListEntry;->mBytes:[B
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 319
    iget-object v2, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mListLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 317
    return-object v1

    .line 319
    .end local v0    # "entry":Landroid/speech/tts/SynthesisPlaybackQueueItem$ListEntry;
    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mListLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method


# virtual methods
.method done()V
    .locals 2

    .line 190
    :try_start_0
    iget-object v0, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mListLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 193
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mDone:Z

    .line 198
    iget-object v0, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mReadReady:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V

    .line 204
    iget-object v0, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mNotFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 206
    iget-object v0, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mListLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 207
    nop

    .line 208
    return-void

    .line 206
    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mListLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public onMarkerReached(Landroid/media/AudioTrack;)V
    .locals 5
    .param p1, "track"    # Landroid/media/AudioTrack;

    .line 245
    iget-object v0, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->markerList:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/speech/tts/SynthesisPlaybackQueueItem$ProgressMarker;

    .line 246
    .local v0, "marker":Landroid/speech/tts/SynthesisPlaybackQueueItem$ProgressMarker;
    if-nez v0, :cond_0

    .line 247
    const-string v1, "TTS.SynthQueueItem"

    const-string/jumbo v2, "onMarkerReached reached called but no marker in queue"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    return-void

    .line 251
    :cond_0
    invoke-virtual {p0}, Landroid/speech/tts/SynthesisPlaybackQueueItem;->getDispatcher()Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;

    move-result-object v1

    iget v2, v0, Landroid/speech/tts/SynthesisPlaybackQueueItem$ProgressMarker;->start:I

    iget v3, v0, Landroid/speech/tts/SynthesisPlaybackQueueItem$ProgressMarker;->end:I

    iget v4, v0, Landroid/speech/tts/SynthesisPlaybackQueueItem$ProgressMarker;->frames:I

    invoke-interface {v1, v2, v3, v4}, Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;->dispatchOnRangeStart(III)V

    .line 254
    invoke-virtual {p0}, Landroid/speech/tts/SynthesisPlaybackQueueItem;->updateMarker()V

    .line 255
    return-void
.end method

.method public onPeriodicNotification(Landroid/media/AudioTrack;)V
    .locals 0
    .param p1, "track"    # Landroid/media/AudioTrack;

    .line 258
    return-void
.end method

.method put([B)V
    .locals 6
    .param p1, "buffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 262
    :try_start_0
    iget-object v0, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mListLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 263
    const-wide/16 v0, 0x0

    .line 265
    .local v0, "unconsumedAudioMs":J
    :goto_0
    iget-object v2, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mAudioTrack:Landroid/speech/tts/BlockingAudioTrack;

    iget v3, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mUnconsumedBytes:I

    invoke-virtual {v2, v3}, Landroid/speech/tts/BlockingAudioTrack;->getAudioLengthMs(I)J

    move-result-wide v2

    move-wide v0, v2

    const-wide/16 v4, 0x1f4

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    iget-boolean v2, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mStopped:Z

    if-nez v2, :cond_0

    .line 267
    iget-object v2, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mNotFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Condition;->await()V

    goto :goto_0

    .line 274
    :cond_0
    iget-boolean v2, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mStopped:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    .line 282
    iget-object v2, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mListLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 275
    return-void

    .line 278
    :cond_1
    :try_start_1
    iget-object v2, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mDataBufferList:Ljava/util/LinkedList;

    new-instance v3, Landroid/speech/tts/SynthesisPlaybackQueueItem$ListEntry;

    invoke-direct {v3, p1}, Landroid/speech/tts/SynthesisPlaybackQueueItem$ListEntry;-><init>([B)V

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 279
    iget v2, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mUnconsumedBytes:I

    array-length v3, p1

    add-int/2addr v2, v3

    iput v2, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mUnconsumedBytes:I

    .line 280
    iget-object v2, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mReadReady:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 282
    .end local v0    # "unconsumedAudioMs":J
    iget-object v0, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mListLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 283
    nop

    .line 284
    return-void

    .line 282
    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mListLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method rangeStart(III)V
    .locals 2
    .param p1, "markerInFrames"    # I
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 239
    iget-object v0, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->markerList:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v1, Landroid/speech/tts/SynthesisPlaybackQueueItem$ProgressMarker;

    invoke-direct {v1, p0, p1, p2, p3}, Landroid/speech/tts/SynthesisPlaybackQueueItem$ProgressMarker;-><init>(Landroid/speech/tts/SynthesisPlaybackQueueItem;III)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 240
    invoke-virtual {p0}, Landroid/speech/tts/SynthesisPlaybackQueueItem;->updateMarker()V

    .line 241
    return-void
.end method

.method public run()V
    .locals 3

    .line 97
    iget-object v0, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mRunState:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 99
    return-void

    .line 102
    :cond_0
    invoke-virtual {p0}, Landroid/speech/tts/SynthesisPlaybackQueueItem;->getDispatcher()Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;

    move-result-object v0

    .line 103
    .local v0, "dispatcher":Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;
    invoke-interface {v0}, Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;->dispatchOnStart()V

    .line 105
    iget-object v1, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mAudioTrack:Landroid/speech/tts/BlockingAudioTrack;

    invoke-virtual {v1}, Landroid/speech/tts/BlockingAudioTrack;->init()Z

    move-result v1

    if-nez v1, :cond_1

    .line 106
    const/4 v1, -0x5

    invoke-interface {v0, v1}, Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;->dispatchOnError(I)V

    .line 107
    return-void

    .line 110
    :cond_1
    iget-object v1, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mAudioTrack:Landroid/speech/tts/BlockingAudioTrack;

    invoke-virtual {v1, p0}, Landroid/speech/tts/BlockingAudioTrack;->setPlaybackPositionUpdateListener(Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;)V

    .line 112
    invoke-virtual {p0}, Landroid/speech/tts/SynthesisPlaybackQueueItem;->updateMarker()V

    .line 115
    const/4 v1, 0x0

    .line 123
    .local v1, "buffer":[B
    :goto_0
    :try_start_0
    invoke-direct {p0}, Landroid/speech/tts/SynthesisPlaybackQueueItem;->take()[B

    move-result-object v2

    move-object v1, v2

    if-eqz v2, :cond_2

    .line 124
    iget-object v2, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mAudioTrack:Landroid/speech/tts/BlockingAudioTrack;

    invoke-virtual {v2, v1}, Landroid/speech/tts/BlockingAudioTrack;->write([B)I

    .line 125
    iget-object v2, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mLogger:Landroid/speech/tts/AbstractEventLogger;

    invoke-virtual {v2}, Landroid/speech/tts/AbstractEventLogger;->onAudioDataWritten()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 130
    .end local v1    # "buffer":[B
    :cond_2
    goto :goto_1

    .line 128
    :catch_0
    move-exception v1

    .line 132
    :goto_1
    iget-object v1, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mAudioTrack:Landroid/speech/tts/BlockingAudioTrack;

    invoke-virtual {v1}, Landroid/speech/tts/BlockingAudioTrack;->waitAndRelease()V

    .line 134
    invoke-direct {p0}, Landroid/speech/tts/SynthesisPlaybackQueueItem;->dispatchEndStatus()V

    .line 135
    return-void
.end method

.method stop(I)V
    .locals 2
    .param p1, "statusCode"    # I

    .line 154
    :try_start_0
    iget-object v0, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mListLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 157
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mStopped:Z

    .line 158
    iput p1, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mStatusCode:I

    .line 165
    iget-object v0, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mNotFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V

    .line 167
    iget-object v0, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mRunState:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result v0

    if-nez v0, :cond_0

    .line 170
    invoke-direct {p0}, Landroid/speech/tts/SynthesisPlaybackQueueItem;->dispatchEndStatus()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    iget-object v0, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mListLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 171
    return-void

    .line 177
    :cond_0
    :try_start_1
    iget-object v0, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mReadReady:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 179
    iget-object v0, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mListLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 180
    nop

    .line 185
    iget-object v0, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mAudioTrack:Landroid/speech/tts/BlockingAudioTrack;

    invoke-virtual {v0}, Landroid/speech/tts/BlockingAudioTrack;->stop()V

    .line 186
    return-void

    .line 179
    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mListLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method updateMarker()V
    .locals 3

    .line 228
    iget-object v0, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->markerList:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/speech/tts/SynthesisPlaybackQueueItem$ProgressMarker;

    .line 229
    .local v0, "marker":Landroid/speech/tts/SynthesisPlaybackQueueItem$ProgressMarker;
    if-eqz v0, :cond_1

    .line 232
    iget v1, v0, Landroid/speech/tts/SynthesisPlaybackQueueItem$ProgressMarker;->frames:I

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    iget v1, v0, Landroid/speech/tts/SynthesisPlaybackQueueItem$ProgressMarker;->frames:I

    .line 233
    .local v1, "markerInFrames":I
    :goto_0
    iget-object v2, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mAudioTrack:Landroid/speech/tts/BlockingAudioTrack;

    invoke-virtual {v2, v1}, Landroid/speech/tts/BlockingAudioTrack;->setNotificationMarkerPosition(I)V

    .line 235
    .end local v1    # "markerInFrames":I
    :cond_1
    return-void
.end method
