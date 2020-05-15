.class public Landroid/media/AudioTrack;
.super Landroid/media/PlayerBase;
.source "AudioTrack.java"

# interfaces
.implements Landroid/media/AudioRouting;
.implements Landroid/media/VolumeAutomation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/AudioTrack$MetricsConstants;,
        Landroid/media/AudioTrack$NativePositionEventHandlerDelegate;,
        Landroid/media/AudioTrack$StreamEventCallback;,
        Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;,
        Landroid/media/AudioTrack$OnRoutingChangedListener;,
        Landroid/media/AudioTrack$Builder;,
        Landroid/media/AudioTrack$PerformanceMode;,
        Landroid/media/AudioTrack$WriteMode;,
        Landroid/media/AudioTrack$TransferMode;
    }
.end annotation


# static fields
.field private static final AUDIO_OUTPUT_FLAG_DEEP_BUFFER:I = 0x8

.field private static final AUDIO_OUTPUT_FLAG_FAST:I = 0x4

.field public static final CHANNEL_COUNT_MAX:I

.field public static final ERROR:I = -0x1

.field public static final ERROR_BAD_VALUE:I = -0x2

.field public static final ERROR_DEAD_OBJECT:I = -0x6

.field public static final ERROR_INVALID_OPERATION:I = -0x3

.field private static final ERROR_NATIVESETUP_AUDIOSYSTEM:I = -0x10

.field private static final ERROR_NATIVESETUP_INVALIDCHANNELMASK:I = -0x11

.field private static final ERROR_NATIVESETUP_INVALIDFORMAT:I = -0x12

.field private static final ERROR_NATIVESETUP_INVALIDSTREAMTYPE:I = -0x13

.field private static final ERROR_NATIVESETUP_NATIVEINITFAILED:I = -0x14

.field public static final ERROR_WOULD_BLOCK:I = -0x7

.field private static final GAIN_MAX:F = 1.0f

.field private static final GAIN_MIN:F = 0.0f

.field private static final HEADER_V2_SIZE_BYTES:F = 20.0f

.field public static final MODE_STATIC:I = 0x0

.field public static final MODE_STREAM:I = 0x1

.field private static final NATIVE_EVENT_MARKER:I = 0x3

.field private static final NATIVE_EVENT_MORE_DATA:I = 0x0

.field private static final NATIVE_EVENT_NEW_IAUDIOTRACK:I = 0x6

.field private static final NATIVE_EVENT_NEW_POS:I = 0x4

.field private static final NATIVE_EVENT_STREAM_END:I = 0x7

.field public static final PERFORMANCE_MODE_LOW_LATENCY:I = 0x1

.field public static final PERFORMANCE_MODE_NONE:I = 0x0

.field public static final PERFORMANCE_MODE_POWER_SAVING:I = 0x2

.field public static final PLAYSTATE_PAUSED:I = 0x2

.field public static final PLAYSTATE_PLAYING:I = 0x3

.field public static final PLAYSTATE_STOPPED:I = 0x1

.field public static final STATE_INITIALIZED:I = 0x1

.field public static final STATE_NO_STATIC_DATA:I = 0x2

.field public static final STATE_UNINITIALIZED:I = 0x0

.field public static final SUCCESS:I = 0x0

.field private static final SUPPORTED_OUT_CHANNELS:I = 0x1cfc

.field private static final TAG:Ljava/lang/String; = "android.media.AudioTrack"

.field public static final WRITE_BLOCKING:I = 0x0

.field public static final WRITE_NON_BLOCKING:I = 0x1


# instance fields
.field private mAudioFormat:I

.field private mAvSyncBytesRemaining:I

.field private mAvSyncHeader:Ljava/nio/ByteBuffer;

.field private mChannelConfiguration:I

.field private mChannelCount:I

.field private mChannelIndexMask:I

.field private mChannelMask:I

.field private mDataLoadMode:I

.field private mEventHandlerDelegate:Landroid/media/AudioTrack$NativePositionEventHandlerDelegate;

.field private final mInitializationLooper:Landroid/os/Looper;

.field private mJniData:J

.field private mNativeBufferSizeInBytes:I

.field private mNativeBufferSizeInFrames:I

.field protected mNativeTrackInJavaObj:J

.field private mOffset:I

.field private mPlayState:I

.field private final mPlayStateLock:Ljava/lang/Object;

.field private mPreferredDevice:Landroid/media/AudioDeviceInfo;

.field private mRoutingChangeListeners:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mRoutingChangeListeners"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/media/AudioRouting$OnRoutingChangedListener;",
            "Landroid/media/NativeRoutingEventHandlerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private mSampleRate:I

.field private mSessionId:I

.field private mState:I

.field private mStreamEventCb:Landroid/media/AudioTrack$StreamEventCallback;

.field private final mStreamEventCbLock:Ljava/lang/Object;

.field private mStreamEventExec:Ljava/util/concurrent/Executor;

.field private mStreamType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 105
    invoke-static {}, Landroid/media/AudioTrack;->native_get_FCC_8()I

    move-result v0

    sput v0, Landroid/media/AudioTrack;->CHANNEL_COUNT_MAX:I

    return-void
.end method

.method public constructor <init>(IIIIII)V
    .locals 8
    .param p1, "streamType"    # I
    .param p2, "sampleRateInHz"    # I
    .param p3, "channelConfig"    # I
    .param p4, "audioFormat"    # I
    .param p5, "bufferSizeInBytes"    # I
    .param p6, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 460
    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v7}, Landroid/media/AudioTrack;-><init>(IIIIIII)V

    .line 462
    return-void
.end method

.method public constructor <init>(IIIIIII)V
    .locals 7
    .param p1, "streamType"    # I
    .param p2, "sampleRateInHz"    # I
    .param p3, "channelConfig"    # I
    .param p4, "audioFormat"    # I
    .param p5, "bufferSizeInBytes"    # I
    .param p6, "mode"    # I
    .param p7, "sessionId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 519
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 520
    invoke-virtual {v0, p1}, Landroid/media/AudioAttributes$Builder;->setLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 521
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v2

    new-instance v0, Landroid/media/AudioFormat$Builder;

    invoke-direct {v0}, Landroid/media/AudioFormat$Builder;-><init>()V

    .line 523
    invoke-virtual {v0, p3}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    .line 524
    invoke-virtual {v0, p4}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    .line 525
    invoke-virtual {v0, p2}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    .line 526
    invoke-virtual {v0}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v3

    .line 519
    move-object v1, p0

    move v4, p5

    move v5, p6

    move v6, p7

    invoke-direct/range {v1 .. v6}, Landroid/media/AudioTrack;-><init>(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;III)V

    .line 529
    const-string v0, "AudioTrack"

    const-string v1, "AudioTrack()"

    invoke-static {p1, v0, v1}, Landroid/media/AudioTrack;->deprecateStreamTypeForPlayback(ILjava/lang/String;Ljava/lang/String;)V

    .line 530
    return-void
.end method

.method constructor <init>(J)V
    .locals 5
    .param p1, "nativeTrackInJavaObj"    # J

    .line 673
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/media/PlayerBase;-><init>(Landroid/media/AudioAttributes;I)V

    .line 311
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/AudioTrack;->mState:I

    .line 316
    iput v1, p0, Landroid/media/AudioTrack;->mPlayState:I

    .line 320
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Landroid/media/AudioTrack;->mPlayStateLock:Ljava/lang/Object;

    .line 326
    iput v0, p0, Landroid/media/AudioTrack;->mNativeBufferSizeInBytes:I

    .line 327
    iput v0, p0, Landroid/media/AudioTrack;->mNativeBufferSizeInFrames:I

    .line 344
    iput v1, p0, Landroid/media/AudioTrack;->mChannelCount:I

    .line 348
    const/4 v2, 0x4

    iput v2, p0, Landroid/media/AudioTrack;->mChannelMask:I

    .line 357
    const/4 v3, 0x3

    iput v3, p0, Landroid/media/AudioTrack;->mStreamType:I

    .line 362
    iput v1, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    .line 368
    iput v2, p0, Landroid/media/AudioTrack;->mChannelConfiguration:I

    .line 372
    iput v0, p0, Landroid/media/AudioTrack;->mChannelIndexMask:I

    .line 383
    iput v0, p0, Landroid/media/AudioTrack;->mSessionId:I

    .line 387
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    .line 391
    iput v0, p0, Landroid/media/AudioTrack;->mAvSyncBytesRemaining:I

    .line 395
    iput v0, p0, Landroid/media/AudioTrack;->mOffset:I

    .line 2782
    iput-object v1, p0, Landroid/media/AudioTrack;->mPreferredDevice:Landroid/media/AudioDeviceInfo;

    .line 2868
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Landroid/media/AudioTrack;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    .line 3031
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/media/AudioTrack;->mStreamEventCbLock:Ljava/lang/Object;

    .line 676
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/media/AudioTrack;->mNativeTrackInJavaObj:J

    .line 677
    iput-wide v1, p0, Landroid/media/AudioTrack;->mJniData:J

    .line 681
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    move-object v4, v3

    .local v4, "looper":Landroid/os/Looper;
    if-nez v3, :cond_0

    .line 682
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    .line 684
    :cond_0
    iput-object v4, p0, Landroid/media/AudioTrack;->mInitializationLooper:Landroid/os/Looper;

    .line 687
    cmp-long v1, p1, v1

    if-eqz v1, :cond_1

    .line 688
    invoke-virtual {p0}, Landroid/media/AudioTrack;->baseRegisterPlayer()V

    .line 689
    invoke-virtual {p0, p1, p2}, Landroid/media/AudioTrack;->deferred_connect(J)V

    goto :goto_0

    .line 691
    :cond_1
    iput v0, p0, Landroid/media/AudioTrack;->mState:I

    .line 693
    :goto_0
    return-void
.end method

.method public constructor <init>(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;III)V
    .locals 7
    .param p1, "attributes"    # Landroid/media/AudioAttributes;
    .param p2, "format"    # Landroid/media/AudioFormat;
    .param p3, "bufferSizeInBytes"    # I
    .param p4, "mode"    # I
    .param p5, "sessionId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 565
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Landroid/media/AudioTrack;-><init>(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;IIIZ)V

    .line 566
    return-void
.end method

.method private constructor <init>(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;IIIZ)V
    .locals 28
    .param p1, "attributes"    # Landroid/media/AudioAttributes;
    .param p2, "format"    # Landroid/media/AudioFormat;
    .param p3, "bufferSizeInBytes"    # I
    .param p4, "mode"    # I
    .param p5, "sessionId"    # I
    .param p6, "offload"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    move-object/from16 v13, p0

    move-object/from16 v14, p2

    move/from16 v15, p3

    move/from16 v12, p5

    .line 571
    const/4 v10, 0x1

    move-object/from16 v11, p1

    invoke-direct {v13, v11, v10}, Landroid/media/PlayerBase;-><init>(Landroid/media/AudioAttributes;I)V

    .line 311
    const/4 v9, 0x0

    iput v9, v13, Landroid/media/AudioTrack;->mState:I

    .line 316
    iput v10, v13, Landroid/media/AudioTrack;->mPlayState:I

    .line 320
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, v13, Landroid/media/AudioTrack;->mPlayStateLock:Ljava/lang/Object;

    .line 326
    iput v9, v13, Landroid/media/AudioTrack;->mNativeBufferSizeInBytes:I

    .line 327
    iput v9, v13, Landroid/media/AudioTrack;->mNativeBufferSizeInFrames:I

    .line 344
    iput v10, v13, Landroid/media/AudioTrack;->mChannelCount:I

    .line 348
    const/4 v0, 0x4

    iput v0, v13, Landroid/media/AudioTrack;->mChannelMask:I

    .line 357
    const/4 v1, 0x3

    iput v1, v13, Landroid/media/AudioTrack;->mStreamType:I

    .line 362
    iput v10, v13, Landroid/media/AudioTrack;->mDataLoadMode:I

    .line 368
    iput v0, v13, Landroid/media/AudioTrack;->mChannelConfiguration:I

    .line 372
    iput v9, v13, Landroid/media/AudioTrack;->mChannelIndexMask:I

    .line 383
    iput v9, v13, Landroid/media/AudioTrack;->mSessionId:I

    .line 387
    const/4 v1, 0x0

    iput-object v1, v13, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    .line 391
    iput v9, v13, Landroid/media/AudioTrack;->mAvSyncBytesRemaining:I

    .line 395
    iput v9, v13, Landroid/media/AudioTrack;->mOffset:I

    .line 2782
    iput-object v1, v13, Landroid/media/AudioTrack;->mPreferredDevice:Landroid/media/AudioDeviceInfo;

    .line 2868
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, v13, Landroid/media/AudioTrack;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    .line 3031
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v13, Landroid/media/AudioTrack;->mStreamEventCbLock:Ljava/lang/Object;

    .line 574
    if-eqz v14, :cond_c

    .line 579
    iget-object v1, v13, Landroid/media/AudioTrack;->mAttributes:Landroid/media/AudioAttributes;

    move/from16 v8, p4

    invoke-static {v1, v14, v15, v8}, Landroid/media/AudioTrack;->shouldEnablePowerSaving(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 580
    new-instance v1, Landroid/media/AudioAttributes$Builder;

    iget-object v2, v13, Landroid/media/AudioTrack;->mAttributes:Landroid/media/AudioAttributes;

    invoke-direct {v1, v2}, Landroid/media/AudioAttributes$Builder;-><init>(Landroid/media/AudioAttributes;)V

    iget-object v2, v13, Landroid/media/AudioTrack;->mAttributes:Landroid/media/AudioAttributes;

    .line 581
    invoke-virtual {v2}, Landroid/media/AudioAttributes;->getAllFlags()I

    move-result v2

    or-int/lit16 v2, v2, 0x200

    and-int/lit16 v2, v2, -0x101

    invoke-virtual {v1, v2}, Landroid/media/AudioAttributes$Builder;->replaceFlags(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    .line 584
    invoke-virtual {v1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v1

    iput-object v1, v13, Landroid/media/AudioTrack;->mAttributes:Landroid/media/AudioAttributes;

    .line 589
    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    move-object v2, v1

    .local v2, "looper":Landroid/os/Looper;
    if-nez v1, :cond_1

    .line 590
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    .line 593
    .end local v2    # "looper":Landroid/os/Looper;
    .local v7, "looper":Landroid/os/Looper;
    :cond_1
    move-object v7, v2

    invoke-virtual/range {p2 .. p2}, Landroid/media/AudioFormat;->getSampleRate()I

    move-result v1

    .line 594
    .local v1, "rate":I
    if-nez v1, :cond_2

    .line 595
    const/4 v1, 0x0

    .line 598
    .end local v1    # "rate":I
    .local v16, "rate":I
    :cond_2
    move/from16 v16, v1

    const/4 v1, 0x0

    .line 599
    .local v1, "channelIndexMask":I
    invoke-virtual/range {p2 .. p2}, Landroid/media/AudioFormat;->getPropertySetMask()I

    move-result v2

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_3

    .line 601
    invoke-virtual/range {p2 .. p2}, Landroid/media/AudioFormat;->getChannelIndexMask()I

    move-result v1

    .line 603
    .end local v1    # "channelIndexMask":I
    .local v17, "channelIndexMask":I
    :cond_3
    move/from16 v17, v1

    const/4 v1, 0x0

    .line 604
    .local v1, "channelMask":I
    invoke-virtual/range {p2 .. p2}, Landroid/media/AudioFormat;->getPropertySetMask()I

    move-result v2

    and-int/2addr v0, v2

    if-eqz v0, :cond_4

    .line 606
    invoke-virtual/range {p2 .. p2}, Landroid/media/AudioFormat;->getChannelMask()I

    move-result v0

    .line 611
    .end local v1    # "channelMask":I
    .local v0, "channelMask":I
    .local v18, "channelMask":I
    :goto_0
    move/from16 v18, v0

    goto :goto_1

    .line 607
    .end local v0    # "channelMask":I
    .end local v18    # "channelMask":I
    .restart local v1    # "channelMask":I
    :cond_4
    if-nez v17, :cond_5

    .line 608
    const/16 v0, 0xc

    goto :goto_0

    .line 611
    :cond_5
    move/from16 v18, v1

    .end local v1    # "channelMask":I
    .restart local v18    # "channelMask":I
    :goto_1
    const/4 v0, 0x1

    .line 612
    .local v0, "encoding":I
    invoke-virtual/range {p2 .. p2}, Landroid/media/AudioFormat;->getPropertySetMask()I

    move-result v1

    and-int/2addr v1, v10

    if-eqz v1, :cond_6

    .line 613
    invoke-virtual/range {p2 .. p2}, Landroid/media/AudioFormat;->getEncoding()I

    move-result v0

    .line 615
    .end local v0    # "encoding":I
    .local v19, "encoding":I
    :cond_6
    move/from16 v19, v0

    move-object v0, v13

    move/from16 v1, v16

    move/from16 v2, v18

    move/from16 v3, v17

    move/from16 v4, v19

    move v5, v8

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioTrack;->audioParamCheck(IIIII)V

    .line 616
    const/4 v0, -0x1

    iput v0, v13, Landroid/media/AudioTrack;->mStreamType:I

    .line 618
    invoke-direct {v13, v15}, Landroid/media/AudioTrack;->audioBuffSizeCheck(I)V

    .line 620
    iput-object v7, v13, Landroid/media/AudioTrack;->mInitializationLooper:Landroid/os/Looper;

    .line 622
    if-ltz v12, :cond_b

    .line 626
    new-array v0, v10, [I

    iget v1, v13, Landroid/media/AudioTrack;->mSampleRate:I

    aput v1, v0, v9

    move-object/from16 v20, v0

    .line 627
    .local v20, "sampleRate":[I
    new-array v6, v10, [I

    .line 628
    .local v6, "session":[I
    aput v12, v6, v9

    .line 630
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v13}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget-object v2, v13, Landroid/media/AudioTrack;->mAttributes:Landroid/media/AudioAttributes;

    iget v4, v13, Landroid/media/AudioTrack;->mChannelMask:I

    iget v5, v13, Landroid/media/AudioTrack;->mChannelIndexMask:I

    iget v3, v13, Landroid/media/AudioTrack;->mAudioFormat:I

    iget v0, v13, Landroid/media/AudioTrack;->mNativeBufferSizeInBytes:I

    iget v9, v13, Landroid/media/AudioTrack;->mDataLoadMode:I

    const-wide/16 v22, 0x0

    move/from16 v24, v0

    move-object v0, v13

    move/from16 v25, v3

    move-object/from16 v3, v20

    move-object/from16 v26, v6

    move/from16 v6, v25

    .end local v6    # "session":[I
    .local v26, "session":[I
    move-object/from16 v25, v7

    move/from16 v7, v24

    .end local v7    # "looper":Landroid/os/Looper;
    .local v25, "looper":Landroid/os/Looper;
    move v8, v9

    const/16 v21, 0x0

    move-object/from16 v9, v26

    move v14, v10

    move-wide/from16 v10, v22

    move/from16 v12, p6

    invoke-direct/range {v0 .. v12}, Landroid/media/AudioTrack;->native_setup(Ljava/lang/Object;Ljava/lang/Object;[IIIIII[IJZ)I

    move-result v0

    .line 634
    .local v0, "initResult":I
    if-eqz v0, :cond_7

    .line 635
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " when initializing AudioTrack."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    .line 636
    return-void

    .line 639
    :cond_7
    aget v1, v20, v21

    iput v1, v13, Landroid/media/AudioTrack;->mSampleRate:I

    .line 640
    aget v1, v26, v21

    iput v1, v13, Landroid/media/AudioTrack;->mSessionId:I

    .line 642
    iget-object v1, v13, Landroid/media/AudioTrack;->mAttributes:Landroid/media/AudioAttributes;

    invoke-virtual {v1}, Landroid/media/AudioAttributes;->getFlags()I

    move-result v1

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_9

    .line 644
    iget v1, v13, Landroid/media/AudioTrack;->mAudioFormat:I

    invoke-static {v1}, Landroid/media/AudioFormat;->isEncodingLinearFrames(I)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 645
    iget v1, v13, Landroid/media/AudioTrack;->mChannelCount:I

    iget v2, v13, Landroid/media/AudioTrack;->mAudioFormat:I

    invoke-static {v2}, Landroid/media/AudioFormat;->getBytesPerSample(I)I

    move-result v2

    mul-int v10, v1, v2

    .local v10, "frameSizeInBytes":I
    goto :goto_2

    .line 647
    .end local v10    # "frameSizeInBytes":I
    :cond_8
    move v10, v14

    .restart local v10    # "frameSizeInBytes":I
    :goto_2
    move v1, v10

    .line 649
    .end local v10    # "frameSizeInBytes":I
    .local v1, "frameSizeInBytes":I
    const/high16 v2, 0x41a00000    # 20.0f

    int-to-float v3, v1

    div-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    mul-int/2addr v2, v1

    iput v2, v13, Landroid/media/AudioTrack;->mOffset:I

    .line 652
    .end local v1    # "frameSizeInBytes":I
    :cond_9
    iget v1, v13, Landroid/media/AudioTrack;->mDataLoadMode:I

    if-nez v1, :cond_a

    .line 653
    const/4 v1, 0x2

    iput v1, v13, Landroid/media/AudioTrack;->mState:I

    goto :goto_3

    .line 655
    :cond_a
    iput v14, v13, Landroid/media/AudioTrack;->mState:I

    .line 658
    :goto_3
    invoke-virtual/range {p0 .. p0}, Landroid/media/AudioTrack;->baseRegisterPlayer()V

    .line 659
    return-void

    .line 623
    .end local v0    # "initResult":I
    .end local v20    # "sampleRate":[I
    .end local v25    # "looper":Landroid/os/Looper;
    .end local v26    # "session":[I
    .restart local v7    # "looper":Landroid/os/Looper;
    :cond_b
    move-object/from16 v25, v7

    .end local v7    # "looper":Landroid/os/Looper;
    .restart local v25    # "looper":Landroid/os/Looper;
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid audio session ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v2, p5

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 575
    .end local v16    # "rate":I
    .end local v17    # "channelIndexMask":I
    .end local v18    # "channelMask":I
    .end local v19    # "encoding":I
    .end local v25    # "looper":Landroid/os/Looper;
    :cond_c
    move v2, v12

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal null AudioFormat"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method synthetic constructor <init>(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;IIIZLandroid/media/AudioTrack$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/media/AudioAttributes;
    .param p2, "x1"    # Landroid/media/AudioFormat;
    .param p3, "x2"    # I
    .param p4, "x3"    # I
    .param p5, "x4"    # I
    .param p6, "x5"    # Z
    .param p7, "x6"    # Landroid/media/AudioTrack$1;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 86
    invoke-direct/range {p0 .. p6}, Landroid/media/AudioTrack;-><init>(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;IIIZ)V

    return-void
.end method

.method static synthetic access$000(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;II)Z
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioAttributes;
    .param p1, "x1"    # Landroid/media/AudioFormat;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .line 86
    invoke-static {p0, p1, p2, p3}, Landroid/media/AudioTrack;->shouldEnablePowerSaving(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Landroid/media/AudioTrack;)V
    .locals 0
    .param p0, "x0"    # Landroid/media/AudioTrack;

    .line 86
    invoke-direct {p0}, Landroid/media/AudioTrack;->startImpl()V

    return-void
.end method

.method static synthetic access$300(Landroid/media/AudioTrack;)Landroid/os/Looper;
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioTrack;

    .line 86
    iget-object v0, p0, Landroid/media/AudioTrack;->mInitializationLooper:Landroid/os/Looper;

    return-object v0
.end method

.method static synthetic access$400(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .line 86
    invoke-static {p0}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    return-void
.end method

.method private audioBuffSizeCheck(I)V
    .locals 3
    .param p1, "audioBufferSize"    # I

    .line 1206
    iget v0, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    invoke-static {v0}, Landroid/media/AudioFormat;->isEncodingLinearFrames(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1207
    iget v0, p0, Landroid/media/AudioTrack;->mChannelCount:I

    iget v2, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    invoke-static {v2}, Landroid/media/AudioFormat;->getBytesPerSample(I)I

    move-result v2

    mul-int/2addr v0, v2

    .local v0, "frameSizeInBytes":I
    goto :goto_0

    .line 1209
    .end local v0    # "frameSizeInBytes":I
    :cond_0
    move v0, v1

    .line 1211
    .restart local v0    # "frameSizeInBytes":I
    :goto_0
    rem-int v2, p1, v0

    if-nez v2, :cond_1

    if-lt p1, v1, :cond_1

    .line 1215
    iput p1, p0, Landroid/media/AudioTrack;->mNativeBufferSizeInBytes:I

    .line 1216
    div-int v1, p1, v0

    iput v1, p0, Landroid/media/AudioTrack;->mNativeBufferSizeInFrames:I

    .line 1217
    return-void

    .line 1212
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid audio buffer size."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private audioParamCheck(IIIII)V
    .locals 4
    .param p1, "sampleRateInHz"    # I
    .param p2, "channelConfig"    # I
    .param p3, "channelIndexMask"    # I
    .param p4, "audioFormat"    # I
    .param p5, "mode"    # I

    .line 1069
    const/16 v0, 0xfa0

    if-lt p1, v0, :cond_0

    const v0, 0x2ee00

    if-le p1, v0, :cond_1

    :cond_0
    if-nez p1, :cond_10

    .line 1075
    :cond_1
    iput p1, p0, Landroid/media/AudioTrack;->mSampleRate:I

    .line 1080
    const/16 v0, 0xd

    const/16 v1, 0xc

    if-ne p4, v0, :cond_3

    if-ne p2, v1, :cond_2

    goto :goto_0

    .line 1082
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ENCODING_IEC61937 must be configured as CHANNEL_OUT_STEREO"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1088
    :cond_3
    :goto_0
    iput p2, p0, Landroid/media/AudioTrack;->mChannelConfiguration:I

    .line 1090
    const/4 v0, 0x1

    if-eq p2, v1, :cond_6

    packed-switch p2, :pswitch_data_0

    .line 1103
    if-nez p2, :cond_4

    if-eqz p3, :cond_4

    .line 1104
    const/4 v1, 0x0

    iput v1, p0, Landroid/media/AudioTrack;->mChannelCount:I

    .line 1105
    goto :goto_1

    .line 1107
    :cond_4
    invoke-static {p2}, Landroid/media/AudioTrack;->isMultichannelConfigSupported(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1111
    iput p2, p0, Landroid/media/AudioTrack;->mChannelMask:I

    .line 1112
    invoke-static {p2}, Landroid/media/AudioFormat;->channelCountFromOutChannelMask(I)I

    move-result v1

    iput v1, p0, Landroid/media/AudioTrack;->mChannelCount:I

    goto :goto_1

    .line 1109
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported channel configuration."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1094
    :pswitch_0
    iput v0, p0, Landroid/media/AudioTrack;->mChannelCount:I

    .line 1095
    const/4 v1, 0x4

    iput v1, p0, Landroid/media/AudioTrack;->mChannelMask:I

    .line 1096
    goto :goto_1

    .line 1099
    :cond_6
    :pswitch_1
    const/4 v2, 0x2

    iput v2, p0, Landroid/media/AudioTrack;->mChannelCount:I

    .line 1100
    iput v1, p0, Landroid/media/AudioTrack;->mChannelMask:I

    .line 1101
    nop

    .line 1115
    :goto_1
    iput p3, p0, Landroid/media/AudioTrack;->mChannelIndexMask:I

    .line 1116
    iget v1, p0, Landroid/media/AudioTrack;->mChannelIndexMask:I

    if-eqz v1, :cond_a

    .line 1118
    sget v1, Landroid/media/AudioTrack;->CHANNEL_COUNT_MAX:I

    shl-int v1, v0, v1

    sub-int/2addr v1, v0

    .line 1119
    .local v1, "indexMask":I
    not-int v2, v1

    and-int/2addr v2, p3

    if-nez v2, :cond_9

    .line 1123
    invoke-static {p3}, Ljava/lang/Integer;->bitCount(I)I

    move-result v2

    .line 1124
    .local v2, "channelIndexCount":I
    iget v3, p0, Landroid/media/AudioTrack;->mChannelCount:I

    if-nez v3, :cond_7

    .line 1125
    iput v2, p0, Landroid/media/AudioTrack;->mChannelCount:I

    goto :goto_2

    .line 1126
    :cond_7
    iget v3, p0, Landroid/media/AudioTrack;->mChannelCount:I

    if-ne v3, v2, :cond_8

    .end local v1    # "indexMask":I
    .end local v2    # "channelIndexCount":I
    goto :goto_2

    .line 1127
    .restart local v1    # "indexMask":I
    .restart local v2    # "channelIndexCount":I
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v3, "Channel count must match"

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1120
    .end local v2    # "channelIndexCount":I
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported channel index configuration "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1133
    .end local v1    # "indexMask":I
    :cond_a
    :goto_2
    if-ne p4, v0, :cond_b

    .line 1134
    const/4 p4, 0x2

    .line 1137
    :cond_b
    invoke-static {p4}, Landroid/media/AudioFormat;->isPublicEncoding(I)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1140
    iput p4, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    .line 1144
    if-eq p5, v0, :cond_c

    if-nez p5, :cond_d

    :cond_c
    if-eq p5, v0, :cond_e

    iget v0, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    .line 1145
    invoke-static {v0}, Landroid/media/AudioFormat;->isEncodingLinearPcm(I)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_3

    .line 1146
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid mode."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1148
    :cond_e
    :goto_3
    iput p5, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    .line 1149
    return-void

    .line 1138
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported audio encoding."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1072
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "Hz is not a supported sample rate."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private broadcastRoutingChange()V
    .locals 3

    .line 2970
    invoke-static {}, Landroid/media/AudioManager;->resetAudioPortGeneration()I

    .line 2971
    iget-object v0, p0, Landroid/media/AudioTrack;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 2972
    :try_start_0
    iget-object v1, p0, Landroid/media/AudioTrack;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/NativeRoutingEventHandlerDelegate;

    .line 2973
    .local v2, "delegate":Landroid/media/NativeRoutingEventHandlerDelegate;
    invoke-virtual {v2}, Landroid/media/NativeRoutingEventHandlerDelegate;->notifyClient()V

    .line 2974
    .end local v2    # "delegate":Landroid/media/NativeRoutingEventHandlerDelegate;
    goto :goto_0

    .line 2975
    :cond_0
    monitor-exit v0

    .line 2976
    return-void

    .line 2975
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static clampGainOrLevel(F)F
    .locals 1
    .param p0, "gainOrLevel"    # F

    .line 1776
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1779
    const/4 v0, 0x0

    cmpg-float v0, p0, v0

    if-gez v0, :cond_0

    .line 1780
    const/4 p0, 0x0

    goto :goto_0

    .line 1781
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p0, v0

    if-lez v0, :cond_1

    .line 1782
    const/high16 p0, 0x3f800000    # 1.0f

    .line 1784
    :cond_1
    :goto_0
    return p0

    .line 1777
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public static getMaxVolume()F
    .locals 1

    .line 1264
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public static getMinBufferSize(III)I
    .locals 4
    .param p0, "sampleRateInHz"    # I
    .param p1, "channelConfig"    # I
    .param p2, "audioFormat"    # I

    .line 1580
    const/4 v0, 0x0

    .line 1581
    .local v0, "channelCount":I
    const/16 v1, 0xc

    const/4 v2, -0x2

    if-eq p1, v1, :cond_1

    packed-switch p1, :pswitch_data_0

    .line 1591
    invoke-static {p1}, Landroid/media/AudioTrack;->isMultichannelConfigSupported(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1592
    const-string v1, "getMinBufferSize(): Invalid channel configuration."

    invoke-static {v1}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    .line 1593
    return v2

    .line 1595
    :cond_0
    invoke-static {p1}, Landroid/media/AudioFormat;->channelCountFromOutChannelMask(I)I

    move-result v0

    goto :goto_0

    .line 1584
    :pswitch_0
    const/4 v0, 0x1

    .line 1585
    goto :goto_0

    .line 1588
    :cond_1
    :pswitch_1
    const/4 v0, 0x2

    .line 1589
    nop

    .line 1599
    :goto_0
    invoke-static {p2}, Landroid/media/AudioFormat;->isPublicEncoding(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1600
    const-string v1, "getMinBufferSize(): Invalid audio format."

    invoke-static {v1}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    .line 1601
    return v2

    .line 1606
    :cond_2
    const/16 v1, 0xfa0

    if-lt p0, v1, :cond_5

    const v1, 0x2ee00

    if-le p0, v1, :cond_3

    goto :goto_1

    .line 1612
    :cond_3
    invoke-static {p0, v0, p2}, Landroid/media/AudioTrack;->native_get_min_buff_size(III)I

    move-result v1

    .line 1613
    .local v1, "size":I
    if-gtz v1, :cond_4

    .line 1614
    const-string v2, "getMinBufferSize(): error querying hardware"

    invoke-static {v2}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    .line 1615
    const/4 v2, -0x1

    return v2

    .line 1618
    :cond_4
    return v1

    .line 1608
    .end local v1    # "size":I
    :cond_5
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMinBufferSize(): "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " Hz is not a supported sample rate."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    .line 1609
    return v2

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getMinVolume()F
    .locals 1

    .line 1252
    const/4 v0, 0x0

    return v0
.end method

.method public static getNativeOutputSampleRate(I)I
    .locals 1
    .param p0, "streamType"    # I

    .line 1553
    invoke-static {p0}, Landroid/media/AudioTrack;->native_get_output_sample_rate(I)I

    move-result v0

    return v0
.end method

.method private static isMultichannelConfigSupported(I)Z
    .locals 7
    .param p0, "channelConfig"    # I

    .line 1158
    and-int/lit16 v0, p0, 0x1cfc

    const/4 v1, 0x0

    if-eq v0, p0, :cond_0

    .line 1159
    const-string v0, "Channel configuration features unsupported channels"

    invoke-static {v0}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    .line 1160
    return v1

    .line 1162
    :cond_0
    invoke-static {p0}, Landroid/media/AudioFormat;->channelCountFromOutChannelMask(I)I

    move-result v0

    .line 1163
    .local v0, "channelCount":I
    sget v2, Landroid/media/AudioTrack;->CHANNEL_COUNT_MAX:I

    if-le v0, v2, :cond_1

    .line 1164
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Channel configuration contains too many channels "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Landroid/media/AudioTrack;->CHANNEL_COUNT_MAX:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    .line 1166
    return v1

    .line 1171
    :cond_1
    const/16 v2, 0xc

    .line 1173
    .local v2, "frontPair":I
    and-int/lit8 v3, p0, 0xc

    const/16 v4, 0xc

    if-eq v3, v4, :cond_2

    .line 1174
    const-string v3, "Front channels must be present in multichannel configurations"

    invoke-static {v3}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    .line 1175
    return v1

    .line 1177
    :cond_2
    const/16 v3, 0xc0

    .line 1179
    .local v3, "backPair":I
    and-int/lit16 v4, p0, 0xc0

    if-eqz v4, :cond_3

    .line 1180
    and-int/lit16 v4, p0, 0xc0

    const/16 v5, 0xc0

    if-eq v4, v5, :cond_3

    .line 1181
    const-string v4, "Rear channels can\'t be used independently"

    invoke-static {v4}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    .line 1182
    return v1

    .line 1185
    :cond_3
    const/16 v4, 0x1800

    .line 1187
    .local v4, "sidePair":I
    and-int/lit16 v5, p0, 0x1800

    if-eqz v5, :cond_4

    and-int/lit16 v5, p0, 0x1800

    const/16 v6, 0x1800

    if-eq v5, v6, :cond_4

    .line 1189
    const-string v5, "Side channels can\'t be used independently"

    invoke-static {v5}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    .line 1190
    return v1

    .line 1192
    :cond_4
    const/4 v1, 0x1

    return v1
.end method

.method static synthetic lambda$postEventFromNative$0(Landroid/media/AudioTrack$StreamEventCallback;Landroid/media/AudioTrack;)V
    .locals 0
    .param p0, "cb"    # Landroid/media/AudioTrack$StreamEventCallback;
    .param p1, "track"    # Landroid/media/AudioTrack;

    .line 3171
    invoke-virtual {p0, p1}, Landroid/media/AudioTrack$StreamEventCallback;->onStreamDataRequest(Landroid/media/AudioTrack;)V

    return-void
.end method

.method static synthetic lambda$postEventFromNative$1(Landroid/media/AudioTrack$StreamEventCallback;Landroid/media/AudioTrack;)V
    .locals 0
    .param p0, "cb"    # Landroid/media/AudioTrack$StreamEventCallback;
    .param p1, "track"    # Landroid/media/AudioTrack;

    .line 3175
    invoke-virtual {p0, p1}, Landroid/media/AudioTrack$StreamEventCallback;->onTearDown(Landroid/media/AudioTrack;)V

    return-void
.end method

.method static synthetic lambda$postEventFromNative$2(Landroid/media/AudioTrack$StreamEventCallback;Landroid/media/AudioTrack;)V
    .locals 0
    .param p0, "cb"    # Landroid/media/AudioTrack$StreamEventCallback;
    .param p1, "track"    # Landroid/media/AudioTrack;

    .line 3178
    invoke-virtual {p0, p1}, Landroid/media/AudioTrack$StreamEventCallback;->onStreamPresentationEnd(Landroid/media/AudioTrack;)V

    return-void
.end method

.method private static logd(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .line 3298
    const-string v0, "android.media.AudioTrack"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3299
    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .line 3302
    const-string v0, "android.media.AudioTrack"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3303
    return-void
.end method

.method private native native_applyVolumeShaper(Landroid/media/VolumeShaper$Configuration;Landroid/media/VolumeShaper$Operation;)I
.end method

.method private final native native_attachAuxEffect(I)I
.end method

.method private final native native_disableDeviceCallback()V
.end method

.method private final native native_enableDeviceCallback()V
.end method

.method private final native native_finalize()V
.end method

.method private final native native_flush()V
.end method

.method private native native_getMetrics()Landroid/os/PersistableBundle;
.end method

.method private final native native_getRoutedDeviceId()I
.end method

.method private native native_getVolumeShaperState(I)Landroid/media/VolumeShaper$State;
.end method

.method private static native native_get_FCC_8()I
.end method

.method private final native native_get_buffer_capacity_frames()I
.end method

.method private final native native_get_buffer_size_frames()I
.end method

.method private final native native_get_flags()I
.end method

.method private final native native_get_latency()I
.end method

.method private final native native_get_marker_pos()I
.end method

.method private static final native native_get_min_buff_size(III)I
.end method

.method private static final native native_get_output_sample_rate(I)I
.end method

.method private final native native_get_playback_params()Landroid/media/PlaybackParams;
.end method

.method private final native native_get_playback_rate()I
.end method

.method private final native native_get_pos_update_period()I
.end method

.method private final native native_get_position()I
.end method

.method private final native native_get_timestamp([J)I
.end method

.method private final native native_get_underrun_count()I
.end method

.method private final native native_pause()V
.end method

.method private final native native_reload_static()I
.end method

.method private final native native_setAuxEffectSendLevel(F)I
.end method

.method private final native native_setOutputDevice(I)Z
.end method

.method private final native native_setPresentation(II)I
.end method

.method private final native native_setVolume(FF)V
.end method

.method private final native native_set_buffer_size_frames(I)I
.end method

.method private final native native_set_loop(III)I
.end method

.method private final native native_set_marker_pos(I)I
.end method

.method private final native native_set_playback_params(Landroid/media/PlaybackParams;)V
.end method

.method private final native native_set_playback_rate(I)I
.end method

.method private final native native_set_pos_update_period(I)I
.end method

.method private final native native_set_position(I)I
.end method

.method private final native native_setup(Ljava/lang/Object;Ljava/lang/Object;[IIIIII[IJZ)I
.end method

.method private final native native_start()V
.end method

.method private final native native_stop()V
.end method

.method private final native native_write_byte([BIIIZ)I
.end method

.method private final native native_write_float([FIIIZ)I
.end method

.method private final native native_write_native_bytes(Ljava/lang/Object;IIIZ)I
.end method

.method private final native native_write_short([SIIIZ)I
.end method

.method private static postEventFromNative(Ljava/lang/Object;IIILjava/lang/Object;)V
    .locals 4
    .param p0, "audiotrack_ref"    # Ljava/lang/Object;
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "obj"    # Ljava/lang/Object;

    .line 3148
    move-object v0, p0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioTrack;

    .line 3149
    .local v0, "track":Landroid/media/AudioTrack;
    if-nez v0, :cond_0

    .line 3150
    return-void

    .line 3153
    :cond_0
    const/16 v1, 0x3e8

    if-ne p1, v1, :cond_1

    .line 3154
    invoke-direct {v0}, Landroid/media/AudioTrack;->broadcastRoutingChange()V

    .line 3155
    return-void

    .line 3158
    :cond_1
    if-eqz p1, :cond_2

    const/4 v1, 0x6

    if-eq p1, v1, :cond_2

    const/4 v1, 0x7

    if-ne p1, v1, :cond_4

    .line 3162
    :cond_2
    iget-object v1, v0, Landroid/media/AudioTrack;->mStreamEventCbLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3163
    :try_start_0
    iget-object v2, v0, Landroid/media/AudioTrack;->mStreamEventExec:Ljava/util/concurrent/Executor;

    .line 3164
    .local v2, "exec":Ljava/util/concurrent/Executor;
    iget-object v3, v0, Landroid/media/AudioTrack;->mStreamEventCb:Landroid/media/AudioTrack$StreamEventCallback;

    .line 3165
    .local v3, "cb":Landroid/media/AudioTrack$StreamEventCallback;
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3166
    if-eqz v2, :cond_7

    if-nez v3, :cond_3

    goto :goto_0

    .line 3169
    :cond_3
    if-eqz p1, :cond_6

    packed-switch p1, :pswitch_data_0

    .line 3183
    .end local v2    # "exec":Ljava/util/concurrent/Executor;
    .end local v3    # "cb":Landroid/media/AudioTrack$StreamEventCallback;
    :cond_4
    iget-object v1, v0, Landroid/media/AudioTrack;->mEventHandlerDelegate:Landroid/media/AudioTrack$NativePositionEventHandlerDelegate;

    .line 3184
    .local v1, "delegate":Landroid/media/AudioTrack$NativePositionEventHandlerDelegate;
    if-eqz v1, :cond_5

    .line 3185
    invoke-virtual {v1}, Landroid/media/AudioTrack$NativePositionEventHandlerDelegate;->getHandler()Landroid/os/Handler;

    move-result-object v2

    .line 3186
    .local v2, "handler":Landroid/os/Handler;
    if-eqz v2, :cond_5

    .line 3187
    invoke-virtual {v2, p1, p2, p3, p4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 3188
    .local v3, "m":Landroid/os/Message;
    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3191
    .end local v2    # "handler":Landroid/os/Handler;
    .end local v3    # "m":Landroid/os/Message;
    :cond_5
    return-void

    .line 3178
    .end local v1    # "delegate":Landroid/media/AudioTrack$NativePositionEventHandlerDelegate;
    .local v2, "exec":Ljava/util/concurrent/Executor;
    .local v3, "cb":Landroid/media/AudioTrack$StreamEventCallback;
    :pswitch_0
    new-instance v1, Landroid/media/-$$Lambda$AudioTrack$om39tqtuoUKWEwKYDHE7uiykjxw;

    invoke-direct {v1, v3, v0}, Landroid/media/-$$Lambda$AudioTrack$om39tqtuoUKWEwKYDHE7uiykjxw;-><init>(Landroid/media/AudioTrack$StreamEventCallback;Landroid/media/AudioTrack;)V

    invoke-interface {v2, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 3179
    return-void

    .line 3175
    :pswitch_1
    new-instance v1, Landroid/media/-$$Lambda$AudioTrack$m_q5GeJNFuHKP4bKA5zNcUJmptg;

    invoke-direct {v1, v3, v0}, Landroid/media/-$$Lambda$AudioTrack$m_q5GeJNFuHKP4bKA5zNcUJmptg;-><init>(Landroid/media/AudioTrack$StreamEventCallback;Landroid/media/AudioTrack;)V

    invoke-interface {v2, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 3176
    return-void

    .line 3171
    :cond_6
    new-instance v1, Landroid/media/-$$Lambda$AudioTrack$RYzHLsveZX4qW27TDViuZeb3nTQ;

    invoke-direct {v1, v3, v0}, Landroid/media/-$$Lambda$AudioTrack$RYzHLsveZX4qW27TDViuZeb3nTQ;-><init>(Landroid/media/AudioTrack$StreamEventCallback;Landroid/media/AudioTrack;)V

    invoke-interface {v2, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 3172
    return-void

    .line 3167
    :cond_7
    :goto_0
    return-void

    .line 3165
    .end local v2    # "exec":Ljava/util/concurrent/Executor;
    .end local v3    # "cb":Landroid/media/AudioTrack$StreamEventCallback;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static shouldEnablePowerSaving(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;II)Z
    .locals 9
    .param p0, "attributes"    # Landroid/media/AudioAttributes;
    .param p1, "format"    # Landroid/media/AudioFormat;
    .param p2, "bufferSizeInBytes"    # I
    .param p3, "mode"    # I

    .line 1015
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p0, :cond_1

    .line 1016
    invoke-virtual {p0}, Landroid/media/AudioAttributes;->getAllFlags()I

    move-result v2

    if-nez v2, :cond_0

    .line 1017
    invoke-virtual {p0}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v2

    if-ne v2, v1, :cond_0

    .line 1018
    invoke-virtual {p0}, Landroid/media/AudioAttributes;->getContentType()I

    move-result v2

    if-eqz v2, :cond_1

    .line 1019
    invoke-virtual {p0}, Landroid/media/AudioAttributes;->getContentType()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    .line 1020
    invoke-virtual {p0}, Landroid/media/AudioAttributes;->getContentType()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    .line 1021
    :cond_0
    return v0

    .line 1025
    :cond_1
    if-eqz p1, :cond_5

    .line 1026
    invoke-virtual {p1}, Landroid/media/AudioFormat;->getSampleRate()I

    move-result v2

    if-eqz v2, :cond_5

    .line 1027
    invoke-virtual {p1}, Landroid/media/AudioFormat;->getEncoding()I

    move-result v2

    invoke-static {v2}, Landroid/media/AudioFormat;->isEncodingLinearPcm(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1028
    invoke-virtual {p1}, Landroid/media/AudioFormat;->getEncoding()I

    move-result v2

    invoke-static {v2}, Landroid/media/AudioFormat;->isValidEncoding(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1029
    invoke-virtual {p1}, Landroid/media/AudioFormat;->getChannelCount()I

    move-result v2

    if-ge v2, v1, :cond_2

    goto :goto_0

    .line 1034
    :cond_2
    if-eq p3, v1, :cond_3

    .line 1035
    return v0

    .line 1040
    :cond_3
    if-eqz p2, :cond_4

    .line 1041
    const-wide/16 v2, 0x64

    .line 1042
    .local v2, "BUFFER_TARGET_MODE_STREAM_MS":J
    const/16 v4, 0x3e8

    .line 1043
    .local v4, "MILLIS_PER_SECOND":I
    const-wide/16 v5, 0x64

    .line 1045
    invoke-virtual {p1}, Landroid/media/AudioFormat;->getChannelCount()I

    move-result v7

    int-to-long v7, v7

    mul-long/2addr v5, v7

    .line 1046
    invoke-virtual {p1}, Landroid/media/AudioFormat;->getEncoding()I

    move-result v7

    invoke-static {v7}, Landroid/media/AudioFormat;->getBytesPerSample(I)I

    move-result v7

    int-to-long v7, v7

    mul-long/2addr v5, v7

    .line 1047
    invoke-virtual {p1}, Landroid/media/AudioFormat;->getSampleRate()I

    move-result v7

    int-to-long v7, v7

    mul-long/2addr v5, v7

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    .line 1049
    .local v5, "bufferTargetSize":J
    int-to-long v7, p2

    cmp-long v7, v7, v5

    if-gez v7, :cond_4

    .line 1050
    return v0

    .line 1054
    .end local v2    # "BUFFER_TARGET_MODE_STREAM_MS":J
    .end local v4    # "MILLIS_PER_SECOND":I
    .end local v5    # "bufferTargetSize":J
    :cond_4
    return v1

    .line 1030
    :cond_5
    :goto_0
    return v0
.end method

.method private startImpl()V
    .locals 5

    .line 2105
    iget-object v0, p0, Landroid/media/AudioTrack;->mPlayStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2106
    :try_start_0
    invoke-virtual {p0}, Landroid/media/AudioTrack;->baseStart()V

    .line 2107
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_start()V

    .line 2108
    const/4 v1, 0x3

    iput v1, p0, Landroid/media/AudioTrack;->mPlayState:I

    .line 2110
    iget v2, p0, Landroid/media/AudioTrack;->mStreamType:I

    if-ne v2, v1, :cond_0

    .line 2112
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 2113
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 2111
    invoke-static {v1, v2, v3, v4}, Lnubia/os/ApplicationManager$Trigger;->noteStartMusic(IIJ)V

    .line 2116
    :cond_0
    monitor-exit v0

    .line 2117
    return-void

    .line 2116
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private testDisableNativeRoutingCallbacksLocked()V
    .locals 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mRoutingChangeListeners"
    .end annotation

    .line 2855
    iget-object v0, p0, Landroid/media/AudioTrack;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 2856
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_disableDeviceCallback()V

    .line 2858
    :cond_0
    return-void
.end method

.method private testEnableNativeRoutingCallbacksLocked()V
    .locals 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mRoutingChangeListeners"
    .end annotation

    .line 2845
    iget-object v0, p0, Landroid/media/AudioTrack;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 2846
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_enableDeviceCallback()V

    .line 2848
    :cond_0
    return-void
.end method


# virtual methods
.method public addOnRoutingChangedListener(Landroid/media/AudioRouting$OnRoutingChangedListener;Landroid/os/Handler;)V
    .locals 5
    .param p1, "listener"    # Landroid/media/AudioRouting$OnRoutingChangedListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 2884
    iget-object v0, p0, Landroid/media/AudioTrack;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 2885
    if-eqz p1, :cond_1

    :try_start_0
    iget-object v1, p0, Landroid/media/AudioTrack;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2886
    invoke-direct {p0}, Landroid/media/AudioTrack;->testEnableNativeRoutingCallbacksLocked()V

    .line 2887
    iget-object v1, p0, Landroid/media/AudioTrack;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    new-instance v2, Landroid/media/NativeRoutingEventHandlerDelegate;

    .line 2889
    if-eqz p2, :cond_0

    move-object v3, p2

    goto :goto_0

    :cond_0
    new-instance v3, Landroid/os/Handler;

    iget-object v4, p0, Landroid/media/AudioTrack;->mInitializationLooper:Landroid/os/Looper;

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    :goto_0
    invoke-direct {v2, p0, p1, v3}, Landroid/media/NativeRoutingEventHandlerDelegate;-><init>(Landroid/media/AudioRouting;Landroid/media/AudioRouting$OnRoutingChangedListener;Landroid/os/Handler;)V

    .line 2887
    invoke-virtual {v1, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 2891
    :catchall_0
    move-exception v1

    goto :goto_2

    :cond_1
    :goto_1
    monitor-exit v0

    .line 2892
    return-void

    .line 2891
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public addOnRoutingChangedListener(Landroid/media/AudioTrack$OnRoutingChangedListener;Landroid/os/Handler;)V
    .locals 0
    .param p1, "listener"    # Landroid/media/AudioTrack$OnRoutingChangedListener;
    .param p2, "handler"    # Landroid/os/Handler;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2951
    invoke-virtual {p0, p1, p2}, Landroid/media/AudioTrack;->addOnRoutingChangedListener(Landroid/media/AudioRouting$OnRoutingChangedListener;Landroid/os/Handler;)V

    .line 2952
    return-void
.end method

.method public attachAuxEffect(I)I
    .locals 1
    .param p1, "effectId"    # I

    .line 2741
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-nez v0, :cond_0

    .line 2742
    const/4 v0, -0x3

    return v0

    .line 2744
    :cond_0
    invoke-direct {p0, p1}, Landroid/media/AudioTrack;->native_attachAuxEffect(I)I

    move-result v0

    return v0
.end method

.method public createVolumeShaper(Landroid/media/VolumeShaper$Configuration;)Landroid/media/VolumeShaper;
    .locals 1
    .param p1, "configuration"    # Landroid/media/VolumeShaper$Configuration;

    .line 1855
    new-instance v0, Landroid/media/VolumeShaper;

    invoke-direct {v0, p1, p0}, Landroid/media/VolumeShaper;-><init>(Landroid/media/VolumeShaper$Configuration;Landroid/media/PlayerBase;)V

    return-object v0
.end method

.method deferred_connect(J)V
    .locals 17
    .param p1, "nativeTrackInJavaObj"    # J

    move-object/from16 v13, p0

    .line 699
    iget v0, v13, Landroid/media/AudioTrack;->mState:I

    const/4 v14, 0x1

    if-eq v0, v14, :cond_1

    .line 702
    new-array v0, v14, [I

    const/4 v15, 0x0

    aput v15, v0, v15

    move-object/from16 v16, v0

    .line 703
    .local v16, "session":[I
    new-array v3, v14, [I

    aput v15, v3, v15

    .line 704
    .local v3, "rates":[I
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v13}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v12, 0x0

    move-object v0, v13

    move-object/from16 v9, v16

    move-wide/from16 v10, p1

    invoke-direct/range {v0 .. v12}, Landroid/media/AudioTrack;->native_setup(Ljava/lang/Object;Ljava/lang/Object;[IIIIII[IJZ)I

    move-result v0

    .line 715
    .local v0, "initResult":I
    if-eqz v0, :cond_0

    .line 716
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " when initializing AudioTrack."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    .line 717
    return-void

    .line 720
    :cond_0
    aget v1, v16, v15

    iput v1, v13, Landroid/media/AudioTrack;->mSessionId:I

    .line 722
    iput v14, v13, Landroid/media/AudioTrack;->mState:I

    .line 724
    .end local v0    # "initResult":I
    .end local v3    # "rates":[I
    .end local v16    # "session":[I
    :cond_1
    return-void
.end method

.method protected finalize()V
    .locals 0

    .line 1238
    invoke-virtual {p0}, Landroid/media/AudioTrack;->baseRelease()V

    .line 1239
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_finalize()V

    .line 1240
    return-void
.end method

.method public flush()V
    .locals 2

    .line 2188
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2190
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_flush()V

    .line 2191
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    .line 2192
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/AudioTrack;->mAvSyncBytesRemaining:I

    .line 2195
    :cond_0
    return-void
.end method

.method public getAudioFormat()I
    .locals 1

    .line 1302
    iget v0, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    return v0
.end method

.method public getAudioSessionId()I
    .locals 1

    .line 1628
    iget v0, p0, Landroid/media/AudioTrack;->mSessionId:I

    return v0
.end method

.method public getBufferCapacityInFrames()I
    .locals 1

    .line 1453
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_get_buffer_capacity_frames()I

    move-result v0

    return v0
.end method

.method public getBufferSizeInFrames()I
    .locals 1

    .line 1397
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_get_buffer_size_frames()I

    move-result v0

    return v0
.end method

.method public getChannelConfiguration()I
    .locals 1

    .line 1327
    iget v0, p0, Landroid/media/AudioTrack;->mChannelConfiguration:I

    return v0
.end method

.method public getChannelCount()I
    .locals 1

    .line 1352
    iget v0, p0, Landroid/media/AudioTrack;->mChannelCount:I

    return v0
.end method

.method public getFormat()Landroid/media/AudioFormat;
    .locals 2

    .line 1336
    new-instance v0, Landroid/media/AudioFormat$Builder;

    invoke-direct {v0}, Landroid/media/AudioFormat$Builder;-><init>()V

    iget v1, p0, Landroid/media/AudioTrack;->mSampleRate:I

    .line 1337
    invoke-virtual {v0, v1}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    iget v1, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    .line 1338
    invoke-virtual {v0, v1}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    .line 1339
    .local v0, "builder":Landroid/media/AudioFormat$Builder;
    iget v1, p0, Landroid/media/AudioTrack;->mChannelConfiguration:I

    if-eqz v1, :cond_0

    .line 1340
    iget v1, p0, Landroid/media/AudioTrack;->mChannelConfiguration:I

    invoke-virtual {v0, v1}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    .line 1342
    :cond_0
    iget v1, p0, Landroid/media/AudioTrack;->mChannelIndexMask:I

    if-eqz v1, :cond_1

    .line 1343
    iget v1, p0, Landroid/media/AudioTrack;->mChannelIndexMask:I

    invoke-virtual {v0, v1}, Landroid/media/AudioFormat$Builder;->setChannelIndexMask(I)Landroid/media/AudioFormat$Builder;

    .line 1345
    :cond_1
    invoke-virtual {v0}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v1

    return-object v1
.end method

.method public getLatency()I
    .locals 1

    .line 1508
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_get_latency()I

    move-result v0

    return v0
.end method

.method public getMetrics()Landroid/os/PersistableBundle;
    .locals 1

    .line 1737
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_getMetrics()Landroid/os/PersistableBundle;

    move-result-object v0

    .line 1738
    .local v0, "bundle":Landroid/os/PersistableBundle;
    return-object v0
.end method

.method protected getNativeFrameCount()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1464
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_get_buffer_capacity_frames()I

    move-result v0

    return v0
.end method

.method public getNotificationMarkerPosition()I
    .locals 1

    .line 1473
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_get_marker_pos()I

    move-result v0

    return v0
.end method

.method public getPerformanceMode()I
    .locals 2

    .line 1539
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_get_flags()I

    move-result v0

    .line 1540
    .local v0, "flags":I
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_0

    .line 1541
    const/4 v1, 0x1

    return v1

    .line 1542
    :cond_0
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_1

    .line 1543
    const/4 v1, 0x2

    return v1

    .line 1545
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public getPlayState()I
    .locals 2

    .line 1374
    iget-object v0, p0, Landroid/media/AudioTrack;->mPlayStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1375
    :try_start_0
    iget v1, p0, Landroid/media/AudioTrack;->mPlayState:I

    monitor-exit v0

    return v1

    .line 1376
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getPlaybackHeadPosition()I
    .locals 1

    .line 1496
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_get_position()I

    move-result v0

    return v0
.end method

.method public getPlaybackParams()Landroid/media/PlaybackParams;
    .locals 1

    .line 1294
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_get_playback_params()Landroid/media/PlaybackParams;

    move-result-object v0

    return-object v0
.end method

.method public getPlaybackRate()I
    .locals 1

    .line 1284
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_get_playback_rate()I

    move-result v0

    return v0
.end method

.method public getPositionNotificationPeriod()I
    .locals 1

    .line 1481
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_get_pos_update_period()I

    move-result v0

    return v0
.end method

.method public getPreferredDevice()Landroid/media/AudioDeviceInfo;
    .locals 1

    .line 2814
    monitor-enter p0

    .line 2815
    :try_start_0
    iget-object v0, p0, Landroid/media/AudioTrack;->mPreferredDevice:Landroid/media/AudioDeviceInfo;

    monitor-exit p0

    return-object v0

    .line 2816
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getRoutedDevice()Landroid/media/AudioDeviceInfo;
    .locals 5

    .line 2826
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_getRoutedDeviceId()I

    move-result v0

    .line 2827
    .local v0, "deviceId":I
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2828
    return-object v1

    .line 2830
    :cond_0
    const/4 v2, 0x2

    .line 2831
    invoke-static {v2}, Landroid/media/AudioManager;->getDevicesStatic(I)[Landroid/media/AudioDeviceInfo;

    move-result-object v2

    .line 2832
    .local v2, "devices":[Landroid/media/AudioDeviceInfo;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_2

    .line 2833
    aget-object v4, v2, v3

    invoke-virtual {v4}, Landroid/media/AudioDeviceInfo;->getId()I

    move-result v4

    if-ne v4, v0, :cond_1

    .line 2834
    aget-object v1, v2, v3

    return-object v1

    .line 2832
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2837
    .end local v3    # "i":I
    :cond_2
    return-object v1
.end method

.method public getSampleRate()I
    .locals 1

    .line 1277
    iget v0, p0, Landroid/media/AudioTrack;->mSampleRate:I

    return v0
.end method

.method public getState()I
    .locals 1

    .line 1364
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    return v0
.end method

.method public getStreamType()I
    .locals 1

    .line 1314
    iget v0, p0, Landroid/media/AudioTrack;->mStreamType:I

    return v0
.end method

.method public getTimestamp(Landroid/media/AudioTimestamp;)Z
    .locals 5
    .param p1, "timestamp"    # Landroid/media/AudioTimestamp;

    .line 1673
    if-eqz p1, :cond_1

    .line 1677
    const/4 v0, 0x2

    new-array v0, v0, [J

    .line 1678
    .local v0, "longArray":[J
    invoke-direct {p0, v0}, Landroid/media/AudioTrack;->native_get_timestamp([J)I

    move-result v1

    .line 1679
    .local v1, "ret":I
    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 1680
    return v2

    .line 1682
    :cond_0
    aget-wide v2, v0, v2

    iput-wide v2, p1, Landroid/media/AudioTimestamp;->framePosition:J

    .line 1683
    const/4 v2, 0x1

    aget-wide v3, v0, v2

    iput-wide v3, p1, Landroid/media/AudioTimestamp;->nanoTime:J

    .line 1684
    return v2

    .line 1674
    .end local v0    # "longArray":[J
    .end local v1    # "ret":I
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public getTimestampWithStatus(Landroid/media/AudioTimestamp;)I
    .locals 4
    .param p1, "timestamp"    # Landroid/media/AudioTimestamp;

    .line 1715
    if-eqz p1, :cond_0

    .line 1719
    const/4 v0, 0x2

    new-array v0, v0, [J

    .line 1720
    .local v0, "longArray":[J
    invoke-direct {p0, v0}, Landroid/media/AudioTrack;->native_get_timestamp([J)I

    move-result v1

    .line 1721
    .local v1, "ret":I
    const/4 v2, 0x0

    aget-wide v2, v0, v2

    iput-wide v2, p1, Landroid/media/AudioTimestamp;->framePosition:J

    .line 1722
    const/4 v2, 0x1

    aget-wide v2, v0, v2

    iput-wide v2, p1, Landroid/media/AudioTimestamp;->nanoTime:J

    .line 1723
    return v1

    .line 1716
    .end local v0    # "longArray":[J
    .end local v1    # "ret":I
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public getUnderrunCount()I
    .locals 1

    .line 1525
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_get_underrun_count()I

    move-result v0

    return v0
.end method

.method public final native native_release()V
.end method

.method public pause()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 2152
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 2157
    iget-object v0, p0, Landroid/media/AudioTrack;->mPlayStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2158
    :try_start_0
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_pause()V

    .line 2159
    invoke-virtual {p0}, Landroid/media/AudioTrack;->basePause()V

    .line 2160
    const/4 v1, 0x2

    iput v1, p0, Landroid/media/AudioTrack;->mPlayState:I

    .line 2162
    iget v1, p0, Landroid/media/AudioTrack;->mStreamType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 2164
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 2165
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 2163
    invoke-static {v1, v2, v3, v4}, Lnubia/os/ApplicationManager$Trigger;->noteEndMusic(IIJ)V

    .line 2168
    :cond_0
    monitor-exit v0

    .line 2169
    return-void

    .line 2168
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 2153
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "pause() called on uninitialized AudioTrack."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public play()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 2076
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 2080
    invoke-virtual {p0}, Landroid/media/AudioTrack;->getStartDelayMs()I

    move-result v0

    .line 2081
    .local v0, "delay":I
    if-nez v0, :cond_0

    .line 2082
    invoke-direct {p0}, Landroid/media/AudioTrack;->startImpl()V

    goto :goto_0

    .line 2084
    :cond_0
    new-instance v1, Landroid/media/AudioTrack$1;

    invoke-direct {v1, p0, v0}, Landroid/media/AudioTrack$1;-><init>(Landroid/media/AudioTrack;I)V

    .line 2100
    invoke-virtual {v1}, Landroid/media/AudioTrack$1;->start()V

    .line 2102
    :goto_0
    return-void

    .line 2077
    .end local v0    # "delay":I
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "play() called on uninitialized AudioTrack."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method playerApplyVolumeShaper(Landroid/media/VolumeShaper$Configuration;Landroid/media/VolumeShaper$Operation;)I
    .locals 1
    .param p1, "configuration"    # Landroid/media/VolumeShaper$Configuration;
    .param p2, "operation"    # Landroid/media/VolumeShaper$Operation;

    .line 1844
    invoke-direct {p0, p1, p2}, Landroid/media/AudioTrack;->native_applyVolumeShaper(Landroid/media/VolumeShaper$Configuration;Landroid/media/VolumeShaper$Operation;)I

    move-result v0

    return v0
.end method

.method playerGetVolumeShaperState(I)Landroid/media/VolumeShaper$State;
    .locals 1
    .param p1, "id"    # I

    .line 1849
    invoke-direct {p0, p1}, Landroid/media/AudioTrack;->native_getVolumeShaperState(I)Landroid/media/VolumeShaper$State;

    move-result-object v0

    return-object v0
.end method

.method playerPause()V
    .locals 0

    .line 3133
    invoke-virtual {p0}, Landroid/media/AudioTrack;->pause()V

    .line 3134
    return-void
.end method

.method playerSetAuxEffectSendLevel(ZF)I
    .locals 2
    .param p1, "muting"    # Z
    .param p2, "level"    # F

    .line 2774
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    move v0, p2

    :goto_0
    invoke-static {v0}, Landroid/media/AudioTrack;->clampGainOrLevel(F)F

    move-result p2

    .line 2775
    invoke-direct {p0, p2}, Landroid/media/AudioTrack;->native_setAuxEffectSendLevel(F)I

    move-result v0

    .line 2776
    .local v0, "err":I
    if-nez v0, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    const/4 v1, -0x1

    :goto_1
    return v1
.end method

.method playerSetVolume(ZFF)V
    .locals 2
    .param p1, "muting"    # Z
    .param p2, "leftVolume"    # F
    .param p3, "rightVolume"    # F

    .line 1815
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    move v1, p2

    :goto_0
    invoke-static {v1}, Landroid/media/AudioTrack;->clampGainOrLevel(F)F

    move-result p2

    .line 1816
    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v0, p3

    :goto_1
    invoke-static {v0}, Landroid/media/AudioTrack;->clampGainOrLevel(F)F

    move-result p3

    .line 1818
    invoke-direct {p0, p2, p3}, Landroid/media/AudioTrack;->native_setVolume(FF)V

    .line 1819
    return-void
.end method

.method playerStart()V
    .locals 0

    .line 3128
    invoke-virtual {p0}, Landroid/media/AudioTrack;->play()V

    .line 3129
    return-void
.end method

.method playerStop()V
    .locals 0

    .line 3138
    invoke-virtual {p0}, Landroid/media/AudioTrack;->stop()V

    .line 3139
    return-void
.end method

.method public release()V
    .locals 1

    .line 1227
    :try_start_0
    invoke-virtual {p0}, Landroid/media/AudioTrack;->stop()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1230
    goto :goto_0

    .line 1228
    :catch_0
    move-exception v0

    .line 1231
    :goto_0
    invoke-virtual {p0}, Landroid/media/AudioTrack;->baseRelease()V

    .line 1232
    invoke-virtual {p0}, Landroid/media/AudioTrack;->native_release()V

    .line 1233
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/AudioTrack;->mState:I

    .line 1234
    return-void
.end method

.method public reloadStaticData()I
    .locals 2

    .line 2713
    iget v0, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2716
    :cond_0
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_reload_static()I

    move-result v0

    return v0

    .line 2714
    :cond_1
    :goto_0
    const/4 v0, -0x3

    return v0
.end method

.method public removeOnRoutingChangedListener(Landroid/media/AudioRouting$OnRoutingChangedListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/media/AudioRouting$OnRoutingChangedListener;

    .line 2902
    iget-object v0, p0, Landroid/media/AudioTrack;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 2903
    :try_start_0
    iget-object v1, p0, Landroid/media/AudioTrack;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2904
    iget-object v1, p0, Landroid/media/AudioTrack;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2906
    :cond_0
    invoke-direct {p0}, Landroid/media/AudioTrack;->testDisableNativeRoutingCallbacksLocked()V

    .line 2907
    monitor-exit v0

    .line 2908
    return-void

    .line 2907
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeOnRoutingChangedListener(Landroid/media/AudioTrack$OnRoutingChangedListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/media/AudioTrack$OnRoutingChangedListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2963
    invoke-virtual {p0, p1}, Landroid/media/AudioTrack;->removeOnRoutingChangedListener(Landroid/media/AudioRouting$OnRoutingChangedListener;)V

    .line 2964
    return-void
.end method

.method public removeStreamEventCallback()V
    .locals 2

    .line 3059
    iget-object v0, p0, Landroid/media/AudioTrack;->mStreamEventCbLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3060
    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Landroid/media/AudioTrack;->mStreamEventExec:Ljava/util/concurrent/Executor;

    .line 3061
    iput-object v1, p0, Landroid/media/AudioTrack;->mStreamEventCb:Landroid/media/AudioTrack$StreamEventCallback;

    .line 3062
    monitor-exit v0

    .line 3063
    return-void

    .line 3062
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setAuxEffectSendLevel(F)I
    .locals 1
    .param p1, "level"    # F

    .line 2766
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-nez v0, :cond_0

    .line 2767
    const/4 v0, -0x3

    return v0

    .line 2769
    :cond_0
    invoke-virtual {p0, p1}, Landroid/media/AudioTrack;->baseSetAuxEffectSendLevel(F)I

    move-result v0

    return v0
.end method

.method public setBufferSizeInFrames(I)I
    .locals 1
    .param p1, "bufferSizeInFrames"    # I

    .line 1424
    iget v0, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    if-eqz v0, :cond_2

    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-nez v0, :cond_0

    goto :goto_0

    .line 1427
    :cond_0
    if-gez p1, :cond_1

    .line 1428
    const/4 v0, -0x2

    return v0

    .line 1430
    :cond_1
    invoke-direct {p0, p1}, Landroid/media/AudioTrack;->native_set_buffer_size_frames(I)I

    move-result v0

    return v0

    .line 1425
    :cond_2
    :goto_0
    const/4 v0, -0x3

    return v0
.end method

.method public setLoopPoints(III)I
    .locals 2
    .param p1, "startInFrames"    # I
    .param p2, "endInFrames"    # I
    .param p3, "loopCount"    # I

    .line 2001
    iget v0, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-eqz v0, :cond_4

    .line 2002
    invoke-virtual {p0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_2

    .line 2005
    :cond_0
    if-nez p3, :cond_1

    goto :goto_0

    .line 2007
    :cond_1
    if-ltz p1, :cond_3

    iget v0, p0, Landroid/media/AudioTrack;->mNativeBufferSizeInFrames:I

    if-ge p1, v0, :cond_3

    if-ge p1, p2, :cond_3

    iget v0, p0, Landroid/media/AudioTrack;->mNativeBufferSizeInFrames:I

    if-le p2, v0, :cond_2

    goto :goto_1

    .line 2011
    :cond_2
    :goto_0
    invoke-direct {p0, p1, p2, p3}, Landroid/media/AudioTrack;->native_set_loop(III)I

    move-result v0

    return v0

    .line 2009
    :cond_3
    :goto_1
    const/4 v0, -0x2

    return v0

    .line 2003
    :cond_4
    :goto_2
    const/4 v0, -0x3

    return v0
.end method

.method public setNotificationMarkerPosition(I)I
    .locals 1
    .param p1, "markerInFrames"    # I

    .line 1919
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-nez v0, :cond_0

    .line 1920
    const/4 v0, -0x3

    return v0

    .line 1922
    :cond_0
    invoke-direct {p0, p1}, Landroid/media/AudioTrack;->native_set_marker_pos(I)I

    move-result v0

    return v0
.end method

.method public setPlaybackHeadPosition(I)I
    .locals 2
    .param p1, "positionInFrames"    # I

    .line 1959
    iget v0, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-eqz v0, :cond_3

    .line 1960
    invoke-virtual {p0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_1

    .line 1963
    :cond_0
    if-ltz p1, :cond_2

    iget v0, p0, Landroid/media/AudioTrack;->mNativeBufferSizeInFrames:I

    if-le p1, v0, :cond_1

    goto :goto_0

    .line 1966
    :cond_1
    invoke-direct {p0, p1}, Landroid/media/AudioTrack;->native_set_position(I)I

    move-result v0

    return v0

    .line 1964
    :cond_2
    :goto_0
    const/4 v0, -0x2

    return v0

    .line 1961
    :cond_3
    :goto_1
    const/4 v0, -0x3

    return v0
.end method

.method public setPlaybackParams(Landroid/media/PlaybackParams;)V
    .locals 2
    .param p1, "params"    # Landroid/media/PlaybackParams;

    .line 1902
    if-eqz p1, :cond_0

    .line 1905
    invoke-direct {p0, p1}, Landroid/media/AudioTrack;->native_set_playback_params(Landroid/media/PlaybackParams;)V

    .line 1906
    return-void

    .line 1903
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "params is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setPlaybackPositionUpdateListener(Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;

    .line 1754
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/media/AudioTrack;->setPlaybackPositionUpdateListener(Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;Landroid/os/Handler;)V

    .line 1755
    return-void
.end method

.method public setPlaybackPositionUpdateListener(Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;Landroid/os/Handler;)V
    .locals 1
    .param p1, "listener"    # Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 1767
    if-eqz p1, :cond_0

    .line 1768
    new-instance v0, Landroid/media/AudioTrack$NativePositionEventHandlerDelegate;

    invoke-direct {v0, p0, p0, p1, p2}, Landroid/media/AudioTrack$NativePositionEventHandlerDelegate;-><init>(Landroid/media/AudioTrack;Landroid/media/AudioTrack;Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/media/AudioTrack;->mEventHandlerDelegate:Landroid/media/AudioTrack$NativePositionEventHandlerDelegate;

    goto :goto_0

    .line 1770
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/AudioTrack;->mEventHandlerDelegate:Landroid/media/AudioTrack$NativePositionEventHandlerDelegate;

    .line 1772
    :goto_0
    return-void
.end method

.method public setPlaybackRate(I)I
    .locals 2
    .param p1, "sampleRateInHz"    # I

    .line 1877
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 1878
    const/4 v0, -0x3

    return v0

    .line 1880
    :cond_0
    if-gtz p1, :cond_1

    .line 1881
    const/4 v0, -0x2

    return v0

    .line 1883
    :cond_1
    invoke-direct {p0, p1}, Landroid/media/AudioTrack;->native_set_playback_rate(I)I

    move-result v0

    return v0
.end method

.method public setPositionNotificationPeriod(I)I
    .locals 1
    .param p1, "periodInFrames"    # I

    .line 1933
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-nez v0, :cond_0

    .line 1934
    const/4 v0, -0x3

    return v0

    .line 1936
    :cond_0
    invoke-direct {p0, p1}, Landroid/media/AudioTrack;->native_set_pos_update_period(I)I

    move-result v0

    return v0
.end method

.method public setPreferredDevice(Landroid/media/AudioDeviceInfo;)Z
    .locals 3
    .param p1, "deviceInfo"    # Landroid/media/AudioDeviceInfo;

    .line 2795
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/media/AudioDeviceInfo;->isSink()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2796
    return v0

    .line 2798
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/media/AudioDeviceInfo;->getId()I

    move-result v0

    nop

    .line 2799
    .local v0, "preferredDeviceId":I
    :cond_1
    invoke-direct {p0, v0}, Landroid/media/AudioTrack;->native_setOutputDevice(I)Z

    move-result v1

    .line 2800
    .local v1, "status":Z
    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 2801
    monitor-enter p0

    .line 2802
    :try_start_0
    iput-object p1, p0, Landroid/media/AudioTrack;->mPreferredDevice:Landroid/media/AudioDeviceInfo;

    .line 2803
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 2805
    :cond_2
    :goto_0
    return v1
.end method

.method public setPresentation(Landroid/media/AudioPresentation;)I
    .locals 2
    .param p1, "presentation"    # Landroid/media/AudioPresentation;

    .line 2027
    if-eqz p1, :cond_0

    .line 2030
    invoke-virtual {p1}, Landroid/media/AudioPresentation;->getPresentationId()I

    move-result v0

    .line 2031
    invoke-virtual {p1}, Landroid/media/AudioPresentation;->getProgramId()I

    move-result v1

    .line 2030
    invoke-direct {p0, v0, v1}, Landroid/media/AudioTrack;->native_setPresentation(II)I

    move-result v0

    return v0

    .line 2028
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "audio presentation is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected setState(I)V
    .locals 0
    .param p1, "state"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2043
    iput p1, p0, Landroid/media/AudioTrack;->mState:I

    .line 2044
    return-void
.end method

.method public setStereoVolume(FF)I
    .locals 1
    .param p1, "leftGain"    # F
    .param p2, "rightGain"    # F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1805
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-nez v0, :cond_0

    .line 1806
    const/4 v0, -0x3

    return v0

    .line 1809
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/media/AudioTrack;->baseSetVolume(FF)V

    .line 1810
    const/4 v0, 0x0

    return v0
.end method

.method public setStreamEventCallback(Ljava/util/concurrent/Executor;Landroid/media/AudioTrack$StreamEventCallback;)V
    .locals 2
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "eventCallback"    # Landroid/media/AudioTrack$StreamEventCallback;

    .line 3041
    if-eqz p2, :cond_1

    .line 3044
    if-eqz p1, :cond_0

    .line 3047
    iget-object v0, p0, Landroid/media/AudioTrack;->mStreamEventCbLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3048
    :try_start_0
    iput-object p1, p0, Landroid/media/AudioTrack;->mStreamEventExec:Ljava/util/concurrent/Executor;

    .line 3049
    iput-object p2, p0, Landroid/media/AudioTrack;->mStreamEventCb:Landroid/media/AudioTrack$StreamEventCallback;

    .line 3050
    monitor-exit v0

    .line 3051
    return-void

    .line 3050
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 3045
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal null Executor for the StreamEventCallback"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3042
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal null StreamEventCallback"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setVolume(F)I
    .locals 1
    .param p1, "gain"    # F

    .line 1837
    invoke-virtual {p0, p1, p1}, Landroid/media/AudioTrack;->setStereoVolume(FF)I

    move-result v0

    return v0
.end method

.method public stop()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 2129
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2134
    iget-object v0, p0, Landroid/media/AudioTrack;->mPlayStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2135
    :try_start_0
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_stop()V

    .line 2136
    invoke-virtual {p0}, Landroid/media/AudioTrack;->baseStop()V

    .line 2137
    iput v1, p0, Landroid/media/AudioTrack;->mPlayState:I

    .line 2138
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    .line 2139
    const/4 v1, 0x0

    iput v1, p0, Landroid/media/AudioTrack;->mAvSyncBytesRemaining:I

    .line 2140
    monitor-exit v0

    .line 2141
    return-void

    .line 2140
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 2130
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "stop() called on uninitialized AudioTrack."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public write(Ljava/nio/ByteBuffer;II)I
    .locals 10
    .param p1, "audioData"    # Ljava/nio/ByteBuffer;
    .param p2, "sizeInBytes"    # I
    .param p3, "writeMode"    # I

    .line 2552
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-nez v0, :cond_0

    .line 2553
    const-string v0, "android.media.AudioTrack"

    const-string v1, "AudioTrack.write() called in invalid state STATE_UNINITIALIZED"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2554
    const/4 v0, -0x3

    return v0

    .line 2557
    :cond_0
    const/4 v0, -0x2

    const/4 v1, 0x1

    if-eqz p3, :cond_1

    if-eq p3, v1, :cond_1

    .line 2558
    const-string v1, "android.media.AudioTrack"

    const-string v2, "AudioTrack.write() called with invalid blocking mode"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2559
    return v0

    .line 2562
    :cond_1
    if-eqz p1, :cond_8

    if-ltz p2, :cond_8

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-le p2, v2, :cond_2

    goto :goto_3

    .line 2567
    :cond_2
    const/4 v0, 0x0

    .line 2568
    .local v0, "ret":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    .line 2569
    nop

    .line 2570
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    iget v8, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    if-nez p3, :cond_3

    .line 2569
    move v9, v1

    goto :goto_0

    .line 2570
    :cond_3
    nop

    .line 2569
    move v9, v3

    :goto_0
    move-object v4, p0

    move-object v5, p1

    move v7, p2

    invoke-direct/range {v4 .. v9}, Landroid/media/AudioTrack;->native_write_native_bytes(Ljava/lang/Object;IIIZ)I

    move-result v0

    goto :goto_2

    .line 2573
    :cond_4
    invoke-static {p1}, Ljava/nio/NioUtils;->unsafeArray(Ljava/nio/ByteBuffer;)[B

    move-result-object v4

    .line 2574
    invoke-static {p1}, Ljava/nio/NioUtils;->unsafeArrayOffset(Ljava/nio/ByteBuffer;)I

    move-result v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    add-int/2addr v5, v2

    iget v6, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    if-nez p3, :cond_5

    .line 2573
    move v7, v1

    goto :goto_1

    .line 2574
    :cond_5
    nop

    .line 2573
    move v7, v3

    :goto_1
    move-object v2, p0

    move-object v3, v4

    move v4, v5

    move v5, p2

    invoke-direct/range {v2 .. v7}, Landroid/media/AudioTrack;->native_write_byte([BIIIZ)I

    move-result v0

    .line 2579
    :goto_2
    iget v2, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    if-nez v2, :cond_6

    iget v2, p0, Landroid/media/AudioTrack;->mState:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_6

    if-lez v0, :cond_6

    .line 2583
    iput v1, p0, Landroid/media/AudioTrack;->mState:I

    .line 2586
    :cond_6
    if-lez v0, :cond_7

    .line 2587
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 2590
    :cond_7
    return v0

    .line 2563
    .end local v0    # "ret":I
    :cond_8
    :goto_3
    const-string v1, "android.media.AudioTrack"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AudioTrack.write() called with invalid size ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") value"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2564
    return v0
.end method

.method public write(Ljava/nio/ByteBuffer;IIJ)I
    .locals 6
    .param p1, "audioData"    # Ljava/nio/ByteBuffer;
    .param p2, "sizeInBytes"    # I
    .param p3, "writeMode"    # I
    .param p4, "timestamp"    # J

    .line 2625
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    const/4 v1, -0x3

    if-nez v0, :cond_0

    .line 2626
    const-string v0, "android.media.AudioTrack"

    const-string v2, "AudioTrack.write() called in invalid state STATE_UNINITIALIZED"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2627
    return v1

    .line 2630
    :cond_0
    const/4 v0, -0x2

    const/4 v2, 0x1

    if-eqz p3, :cond_1

    if-eq p3, v2, :cond_1

    .line 2631
    const-string v1, "android.media.AudioTrack"

    const-string v2, "AudioTrack.write() called with invalid blocking mode"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2632
    return v0

    .line 2635
    :cond_1
    iget v3, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    if-eq v3, v2, :cond_2

    .line 2636
    const-string v0, "android.media.AudioTrack"

    const-string v2, "AudioTrack.write() with timestamp called for non-streaming mode track"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2637
    return v1

    .line 2640
    :cond_2
    iget-object v1, p0, Landroid/media/AudioTrack;->mAttributes:Landroid/media/AudioAttributes;

    invoke-virtual {v1}, Landroid/media/AudioAttributes;->getFlags()I

    move-result v1

    const/16 v2, 0x10

    and-int/2addr v1, v2

    if-nez v1, :cond_3

    .line 2641
    const-string v0, "android.media.AudioTrack"

    const-string v1, "AudioTrack.write() called on a regular AudioTrack. Ignoring pts..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2642
    invoke-virtual {p0, p1, p2, p3}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;II)I

    move-result v0

    return v0

    .line 2645
    :cond_3
    if-eqz p1, :cond_a

    if-ltz p2, :cond_a

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-le p2, v1, :cond_4

    goto/16 :goto_0

    .line 2651
    :cond_4
    iget-object v0, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_5

    .line 2652
    iget v0, p0, Landroid/media/AudioTrack;->mOffset:I

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    .line 2653
    iget-object v0, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 2654
    iget-object v0, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    const v1, 0x55550002

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 2657
    :cond_5
    iget v0, p0, Landroid/media/AudioTrack;->mAvSyncBytesRemaining:I

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 2658
    iget-object v0, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    const/4 v3, 0x4

    invoke-virtual {v0, v3, p2}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 2659
    iget-object v0, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    const/16 v3, 0x8

    invoke-virtual {v0, v3, p4, p5}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    .line 2660
    iget-object v0, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    iget v3, p0, Landroid/media/AudioTrack;->mOffset:I

    invoke-virtual {v0, v2, v3}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 2661
    iget-object v0, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 2662
    iput p2, p0, Landroid/media/AudioTrack;->mAvSyncBytesRemaining:I

    .line 2666
    :cond_6
    const/4 v0, 0x0

    .line 2667
    .local v0, "ret":I
    iget-object v2, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_8

    .line 2668
    iget-object v2, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    iget-object v4, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    invoke-virtual {p0, v2, v4, p3}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;II)I

    move-result v0

    .line 2669
    if-gez v0, :cond_7

    .line 2670
    const-string v2, "android.media.AudioTrack"

    const-string v4, "AudioTrack.write() could not write timestamp header!"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2671
    iput-object v3, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    .line 2672
    iput v1, p0, Landroid/media/AudioTrack;->mAvSyncBytesRemaining:I

    .line 2673
    return v0

    .line 2675
    :cond_7
    iget-object v2, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-lez v2, :cond_8

    .line 2676
    const-string v2, "android.media.AudioTrack"

    const-string v3, "AudioTrack.write() partial timestamp header written."

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2677
    return v1

    .line 2682
    :cond_8
    iget v2, p0, Landroid/media/AudioTrack;->mAvSyncBytesRemaining:I

    invoke-static {v2, p2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 2683
    .local v2, "sizeToWrite":I
    invoke-virtual {p0, p1, v2, p3}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;II)I

    move-result v0

    .line 2684
    if-gez v0, :cond_9

    .line 2685
    const-string v4, "android.media.AudioTrack"

    const-string v5, "AudioTrack.write() could not write audio data!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2686
    iput-object v3, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    .line 2687
    iput v1, p0, Landroid/media/AudioTrack;->mAvSyncBytesRemaining:I

    .line 2688
    return v0

    .line 2691
    :cond_9
    iget v1, p0, Landroid/media/AudioTrack;->mAvSyncBytesRemaining:I

    sub-int/2addr v1, v0

    iput v1, p0, Landroid/media/AudioTrack;->mAvSyncBytesRemaining:I

    .line 2693
    return v0

    .line 2646
    .end local v0    # "ret":I
    .end local v2    # "sizeToWrite":I
    :cond_a
    :goto_0
    const-string v1, "android.media.AudioTrack"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AudioTrack.write() called with invalid size ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") value"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2647
    return v0
.end method

.method public write([BII)I
    .locals 1
    .param p1, "audioData"    # [B
    .param p2, "offsetInBytes"    # I
    .param p3, "sizeInBytes"    # I

    .line 2233
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/media/AudioTrack;->write([BIII)I

    move-result v0

    return v0
.end method

.method public write([BIII)I
    .locals 10
    .param p1, "audioData"    # [B
    .param p2, "offsetInBytes"    # I
    .param p3, "sizeInBytes"    # I
    .param p4, "writeMode"    # I

    .line 2281
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-eqz v0, :cond_6

    iget v0, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    goto :goto_2

    .line 2285
    :cond_0
    const/4 v0, -0x2

    const/4 v1, 0x1

    if-eqz p4, :cond_1

    if-eq p4, v1, :cond_1

    .line 2286
    const-string v1, "android.media.AudioTrack"

    const-string v2, "AudioTrack.write() called with invalid blocking mode"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2287
    return v0

    .line 2290
    :cond_1
    if-eqz p1, :cond_5

    if-ltz p2, :cond_5

    if-ltz p3, :cond_5

    add-int v2, p2, p3

    if-ltz v2, :cond_5

    add-int v2, p2, p3

    array-length v3, p1

    if-le v2, v3, :cond_2

    goto :goto_1

    .line 2296
    :cond_2
    iget v8, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    if-nez p4, :cond_3

    move v9, v1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    move v9, v0

    :goto_0
    move-object v4, p0

    move-object v5, p1

    move v6, p2

    move v7, p3

    invoke-direct/range {v4 .. v9}, Landroid/media/AudioTrack;->native_write_byte([BIIIZ)I

    move-result v0

    .line 2299
    .local v0, "ret":I
    iget v2, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    if-nez v2, :cond_4

    iget v2, p0, Landroid/media/AudioTrack;->mState:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    if-lez v0, :cond_4

    .line 2303
    iput v1, p0, Landroid/media/AudioTrack;->mState:I

    .line 2306
    :cond_4
    return v0

    .line 2293
    .end local v0    # "ret":I
    :cond_5
    :goto_1
    return v0

    .line 2282
    :cond_6
    :goto_2
    const/4 v0, -0x3

    return v0
.end method

.method public write([FIII)I
    .locals 10
    .param p1, "audioData"    # [F
    .param p2, "offsetInFloats"    # I
    .param p3, "sizeInFloats"    # I
    .param p4, "writeMode"    # I

    .line 2471
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    const/4 v1, -0x3

    if-nez v0, :cond_0

    .line 2472
    const-string v0, "android.media.AudioTrack"

    const-string v2, "AudioTrack.write() called in invalid state STATE_UNINITIALIZED"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2473
    return v1

    .line 2476
    :cond_0
    iget v0, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    .line 2477
    const-string v0, "android.media.AudioTrack"

    const-string v2, "AudioTrack.write(float[] ...) requires format ENCODING_PCM_FLOAT"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2478
    return v1

    .line 2481
    :cond_1
    const/4 v0, -0x2

    const/4 v1, 0x1

    if-eqz p4, :cond_2

    if-eq p4, v1, :cond_2

    .line 2482
    const-string v1, "android.media.AudioTrack"

    const-string v2, "AudioTrack.write() called with invalid blocking mode"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2483
    return v0

    .line 2486
    :cond_2
    if-eqz p1, :cond_6

    if-ltz p2, :cond_6

    if-ltz p3, :cond_6

    add-int v2, p2, p3

    if-ltz v2, :cond_6

    add-int v2, p2, p3

    array-length v3, p1

    if-le v2, v3, :cond_3

    goto :goto_1

    .line 2493
    :cond_3
    iget v8, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    if-nez p4, :cond_4

    move v9, v1

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    move v9, v0

    :goto_0
    move-object v4, p0

    move-object v5, p1

    move v6, p2

    move v7, p3

    invoke-direct/range {v4 .. v9}, Landroid/media/AudioTrack;->native_write_float([FIIIZ)I

    move-result v0

    .line 2496
    .local v0, "ret":I
    iget v2, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    if-nez v2, :cond_5

    iget v2, p0, Landroid/media/AudioTrack;->mState:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_5

    if-lez v0, :cond_5

    .line 2500
    iput v1, p0, Landroid/media/AudioTrack;->mState:I

    .line 2503
    :cond_5
    return v0

    .line 2489
    .end local v0    # "ret":I
    :cond_6
    :goto_1
    const-string v1, "android.media.AudioTrack"

    const-string v2, "AudioTrack.write() called with invalid array, offset, or size"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2490
    return v0
.end method

.method public write([SII)I
    .locals 1
    .param p1, "audioData"    # [S
    .param p2, "offsetInShorts"    # I
    .param p3, "sizeInShorts"    # I

    .line 2344
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/media/AudioTrack;->write([SIII)I

    move-result v0

    return v0
.end method

.method public write([SIII)I
    .locals 10
    .param p1, "audioData"    # [S
    .param p2, "offsetInShorts"    # I
    .param p3, "sizeInShorts"    # I
    .param p4, "writeMode"    # I

    .line 2390
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-eqz v0, :cond_6

    iget v0, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    goto :goto_2

    .line 2394
    :cond_0
    const/4 v0, -0x2

    const/4 v1, 0x1

    if-eqz p4, :cond_1

    if-eq p4, v1, :cond_1

    .line 2395
    const-string v1, "android.media.AudioTrack"

    const-string v2, "AudioTrack.write() called with invalid blocking mode"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2396
    return v0

    .line 2399
    :cond_1
    if-eqz p1, :cond_5

    if-ltz p2, :cond_5

    if-ltz p3, :cond_5

    add-int v2, p2, p3

    if-ltz v2, :cond_5

    add-int v2, p2, p3

    array-length v3, p1

    if-le v2, v3, :cond_2

    goto :goto_1

    .line 2405
    :cond_2
    iget v8, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    if-nez p4, :cond_3

    move v9, v1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    move v9, v0

    :goto_0
    move-object v4, p0

    move-object v5, p1

    move v6, p2

    move v7, p3

    invoke-direct/range {v4 .. v9}, Landroid/media/AudioTrack;->native_write_short([SIIIZ)I

    move-result v0

    .line 2408
    .local v0, "ret":I
    iget v2, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    if-nez v2, :cond_4

    iget v2, p0, Landroid/media/AudioTrack;->mState:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    if-lez v0, :cond_4

    .line 2412
    iput v1, p0, Landroid/media/AudioTrack;->mState:I

    .line 2415
    :cond_4
    return v0

    .line 2402
    .end local v0    # "ret":I
    :cond_5
    :goto_1
    return v0

    .line 2391
    :cond_6
    :goto_2
    const/4 v0, -0x3

    return v0
.end method
