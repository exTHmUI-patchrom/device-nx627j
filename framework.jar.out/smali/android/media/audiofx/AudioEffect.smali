.class public Landroid/media/audiofx/AudioEffect;
.super Ljava/lang/Object;
.source "AudioEffect.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/audiofx/AudioEffect$NativeEventHandler;,
        Landroid/media/audiofx/AudioEffect$OnParameterChangeListener;,
        Landroid/media/audiofx/AudioEffect$OnControlStatusChangeListener;,
        Landroid/media/audiofx/AudioEffect$OnEnableStatusChangeListener;,
        Landroid/media/audiofx/AudioEffect$Descriptor;
    }
.end annotation


# static fields
.field public static final ACTION_CLOSE_AUDIO_EFFECT_CONTROL_SESSION:Ljava/lang/String; = "android.media.action.CLOSE_AUDIO_EFFECT_CONTROL_SESSION"

.field public static final ACTION_DISPLAY_AUDIO_EFFECT_CONTROL_PANEL:Ljava/lang/String; = "android.media.action.DISPLAY_AUDIO_EFFECT_CONTROL_PANEL"

.field public static final ACTION_OPEN_AUDIO_EFFECT_CONTROL_SESSION:Ljava/lang/String; = "android.media.action.OPEN_AUDIO_EFFECT_CONTROL_SESSION"

.field public static final ALREADY_EXISTS:I = -0x2

.field public static final CONTENT_TYPE_GAME:I = 0x2

.field public static final CONTENT_TYPE_MOVIE:I = 0x1

.field public static final CONTENT_TYPE_MUSIC:I = 0x0

.field public static final CONTENT_TYPE_VOICE:I = 0x3

.field public static final EFFECT_AUXILIARY:Ljava/lang/String; = "Auxiliary"

.field public static final EFFECT_INSERT:Ljava/lang/String; = "Insert"

.field public static final EFFECT_PRE_PROCESSING:Ljava/lang/String; = "Pre Processing"

.field public static final EFFECT_TYPE_AEC:Ljava/util/UUID;

.field public static final EFFECT_TYPE_AGC:Ljava/util/UUID;

.field public static final EFFECT_TYPE_BASS_BOOST:Ljava/util/UUID;

.field public static final EFFECT_TYPE_DYNAMICS_PROCESSING:Ljava/util/UUID;

.field public static final EFFECT_TYPE_ENV_REVERB:Ljava/util/UUID;

.field public static final EFFECT_TYPE_EQUALIZER:Ljava/util/UUID;

.field public static final EFFECT_TYPE_LOUDNESS_ENHANCER:Ljava/util/UUID;

.field public static final EFFECT_TYPE_NS:Ljava/util/UUID;

.field public static final EFFECT_TYPE_NULL:Ljava/util/UUID;

.field public static final EFFECT_TYPE_PRESET_REVERB:Ljava/util/UUID;

.field public static final EFFECT_TYPE_VIRTUALIZER:Ljava/util/UUID;

.field public static final ERROR:I = -0x1

.field public static final ERROR_BAD_VALUE:I = -0x4

.field public static final ERROR_DEAD_OBJECT:I = -0x7

.field public static final ERROR_INVALID_OPERATION:I = -0x5

.field public static final ERROR_NO_INIT:I = -0x3

.field public static final ERROR_NO_MEMORY:I = -0x6

.field public static final EXTRA_AUDIO_SESSION:Ljava/lang/String; = "android.media.extra.AUDIO_SESSION"

.field public static final EXTRA_CONTENT_TYPE:Ljava/lang/String; = "android.media.extra.CONTENT_TYPE"

.field public static final EXTRA_PACKAGE_NAME:Ljava/lang/String; = "android.media.extra.PACKAGE_NAME"

.field public static final NATIVE_EVENT_CONTROL_STATUS:I = 0x0

.field public static final NATIVE_EVENT_ENABLED_STATUS:I = 0x1

.field public static final NATIVE_EVENT_PARAMETER_CHANGED:I = 0x2

.field public static final STATE_INITIALIZED:I = 0x1

.field public static final STATE_UNINITIALIZED:I = 0x0

.field public static final SUCCESS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "AudioEffect-JAVA"


# instance fields
.field private mControlChangeStatusListener:Landroid/media/audiofx/AudioEffect$OnControlStatusChangeListener;

.field private mDescriptor:Landroid/media/audiofx/AudioEffect$Descriptor;

.field private mEnableStatusChangeListener:Landroid/media/audiofx/AudioEffect$OnEnableStatusChangeListener;

.field private mId:I

.field private mJniData:J

.field public final mListenerLock:Ljava/lang/Object;

.field private mNativeAudioEffect:J

.field public mNativeEventHandler:Landroid/media/audiofx/AudioEffect$NativeEventHandler;

.field private mParameterChangeListener:Landroid/media/audiofx/AudioEffect$OnParameterChangeListener;

.field private mState:I

.field private final mStateLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 63
    const-string v0, "audioeffect_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 64
    invoke-static {}, Landroid/media/audiofx/AudioEffect;->native_init()V

    .line 80
    const-string v0, "c2e5d5f0-94bd-4763-9cac-4e234d06839e"

    .line 81
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Landroid/media/audiofx/AudioEffect;->EFFECT_TYPE_ENV_REVERB:Ljava/util/UUID;

    .line 85
    const-string v0, "47382d60-ddd8-11db-bf3a-0002a5d5c51b"

    .line 86
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Landroid/media/audiofx/AudioEffect;->EFFECT_TYPE_PRESET_REVERB:Ljava/util/UUID;

    .line 90
    const-string v0, "0bed4300-ddd6-11db-8f34-0002a5d5c51b"

    .line 91
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Landroid/media/audiofx/AudioEffect;->EFFECT_TYPE_EQUALIZER:Ljava/util/UUID;

    .line 95
    const-string v0, "0634f220-ddd4-11db-a0fc-0002a5d5c51b"

    .line 96
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Landroid/media/audiofx/AudioEffect;->EFFECT_TYPE_BASS_BOOST:Ljava/util/UUID;

    .line 100
    const-string v0, "37cc2c00-dddd-11db-8577-0002a5d5c51b"

    .line 101
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Landroid/media/audiofx/AudioEffect;->EFFECT_TYPE_VIRTUALIZER:Ljava/util/UUID;

    .line 109
    const-string v0, "0a8abfe0-654c-11e0-ba26-0002a5d5c51b"

    .line 110
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Landroid/media/audiofx/AudioEffect;->EFFECT_TYPE_AGC:Ljava/util/UUID;

    .line 115
    const-string v0, "7b491460-8d4d-11e0-bd61-0002a5d5c51b"

    .line 116
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Landroid/media/audiofx/AudioEffect;->EFFECT_TYPE_AEC:Ljava/util/UUID;

    .line 121
    const-string v0, "58b4b260-8e06-11e0-aa8e-0002a5d5c51b"

    .line 122
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Landroid/media/audiofx/AudioEffect;->EFFECT_TYPE_NS:Ljava/util/UUID;

    .line 127
    const-string v0, "fe3199be-aed0-413f-87bb-11260eb63cf1"

    .line 128
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Landroid/media/audiofx/AudioEffect;->EFFECT_TYPE_LOUDNESS_ENHANCER:Ljava/util/UUID;

    .line 133
    const-string v0, "7261676f-6d75-7369-6364-28e2fd3ac39e"

    .line 134
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Landroid/media/audiofx/AudioEffect;->EFFECT_TYPE_DYNAMICS_PROCESSING:Ljava/util/UUID;

    .line 141
    const-string v0, "ec7178ec-e5e1-4432-a3f4-4657e6795210"

    .line 142
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Landroid/media/audiofx/AudioEffect;->EFFECT_TYPE_NULL:Ljava/util/UUID;

    .line 141
    return-void
.end method

.method public constructor <init>(Ljava/util/UUID;Ljava/util/UUID;II)V
    .locals 15
    .param p1, "type"    # Ljava/util/UUID;
    .param p2, "uuid"    # Ljava/util/UUID;
    .param p3, "priority"    # I
    .param p4, "audioSession"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    move-object v10, p0

    move-object/from16 v11, p1

    .line 405
    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    .line 319
    const/4 v0, 0x0

    iput v0, v10, Landroid/media/audiofx/AudioEffect;->mState:I

    .line 323
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v10, Landroid/media/audiofx/AudioEffect;->mStateLock:Ljava/lang/Object;

    .line 343
    const/4 v1, 0x0

    iput-object v1, v10, Landroid/media/audiofx/AudioEffect;->mEnableStatusChangeListener:Landroid/media/audiofx/AudioEffect$OnEnableStatusChangeListener;

    .line 349
    iput-object v1, v10, Landroid/media/audiofx/AudioEffect;->mControlChangeStatusListener:Landroid/media/audiofx/AudioEffect$OnControlStatusChangeListener;

    .line 355
    iput-object v1, v10, Landroid/media/audiofx/AudioEffect;->mParameterChangeListener:Landroid/media/audiofx/AudioEffect$OnParameterChangeListener;

    .line 360
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, v10, Landroid/media/audiofx/AudioEffect;->mListenerLock:Ljava/lang/Object;

    .line 365
    iput-object v1, v10, Landroid/media/audiofx/AudioEffect;->mNativeEventHandler:Landroid/media/audiofx/AudioEffect$NativeEventHandler;

    .line 406
    const/4 v12, 0x1

    new-array v13, v12, [I

    .line 407
    .local v13, "id":[I
    new-array v14, v12, [Landroid/media/audiofx/AudioEffect$Descriptor;

    .line 409
    .local v14, "desc":[Landroid/media/audiofx/AudioEffect$Descriptor;
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v10}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 410
    invoke-virtual/range {p1 .. p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    .line 411
    invoke-static {}, Landroid/app/ActivityThread;->currentOpPackageName()Ljava/lang/String;

    move-result-object v9

    .line 409
    move-object v1, v10

    move/from16 v5, p3

    move/from16 v6, p4

    move-object v7, v13

    move-object v8, v14

    invoke-direct/range {v1 .. v9}, Landroid/media/audiofx/AudioEffect;->native_setup(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;II[I[Ljava/lang/Object;Ljava/lang/String;)I

    move-result v1

    .line 412
    .local v1, "initResult":I
    if-eqz v1, :cond_0

    const/4 v2, -0x2

    if-eq v1, v2, :cond_0

    .line 413
    const-string v0, "AudioEffect-JAVA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error code "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " when initializing AudioEffect."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    packed-switch v1, :pswitch_data_0

    .line 423
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot initialize effect engine for type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " Error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 417
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Effect type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " not supported."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 420
    :pswitch_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Effect library not loaded"

    invoke-direct {v0, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 428
    :cond_0
    aget v2, v13, v0

    iput v2, v10, Landroid/media/audiofx/AudioEffect;->mId:I

    .line 429
    aget-object v0, v14, v0

    iput-object v0, v10, Landroid/media/audiofx/AudioEffect;->mDescriptor:Landroid/media/audiofx/AudioEffect$Descriptor;

    .line 430
    iget-object v2, v10, Landroid/media/audiofx/AudioEffect;->mStateLock:Ljava/lang/Object;

    monitor-enter v2

    .line 431
    :try_start_0
    iput v12, v10, Landroid/media/audiofx/AudioEffect;->mState:I

    .line 432
    monitor-exit v2

    .line 433
    return-void

    .line 432
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch -0x5
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic access$000(Landroid/media/audiofx/AudioEffect;)Landroid/media/audiofx/AudioEffect$OnEnableStatusChangeListener;
    .locals 1
    .param p0, "x0"    # Landroid/media/audiofx/AudioEffect;

    .line 61
    iget-object v0, p0, Landroid/media/audiofx/AudioEffect;->mEnableStatusChangeListener:Landroid/media/audiofx/AudioEffect$OnEnableStatusChangeListener;

    return-object v0
.end method

.method static synthetic access$100(Landroid/media/audiofx/AudioEffect;)Landroid/media/audiofx/AudioEffect$OnControlStatusChangeListener;
    .locals 1
    .param p0, "x0"    # Landroid/media/audiofx/AudioEffect;

    .line 61
    iget-object v0, p0, Landroid/media/audiofx/AudioEffect;->mControlChangeStatusListener:Landroid/media/audiofx/AudioEffect$OnControlStatusChangeListener;

    return-object v0
.end method

.method static synthetic access$200(Landroid/media/audiofx/AudioEffect;)Landroid/media/audiofx/AudioEffect$OnParameterChangeListener;
    .locals 1
    .param p0, "x0"    # Landroid/media/audiofx/AudioEffect;

    .line 61
    iget-object v0, p0, Landroid/media/audiofx/AudioEffect;->mParameterChangeListener:Landroid/media/audiofx/AudioEffect$OnParameterChangeListener;

    return-object v0
.end method

.method public static byteArrayToFloat([B)F
    .locals 1
    .param p0, "valueBuf"    # [B

    .line 1379
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/media/audiofx/AudioEffect;->byteArrayToFloat([BI)F

    move-result v0

    return v0
.end method

.method public static byteArrayToFloat([BI)F
    .locals 2
    .param p0, "valueBuf"    # [B
    .param p1, "offset"    # I

    .line 1387
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1388
    .local v0, "converter":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 1389
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->getFloat(I)F

    move-result v1

    return v1
.end method

.method public static byteArrayToInt([B)I
    .locals 1
    .param p0, "valueBuf"    # [B

    .line 1320
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/media/audiofx/AudioEffect;->byteArrayToInt([BI)I

    move-result v0

    return v0
.end method

.method public static byteArrayToInt([BI)I
    .locals 2
    .param p0, "valueBuf"    # [B
    .param p1, "offset"    # I

    .line 1328
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1329
    .local v0, "converter":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 1330
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v1

    return v1
.end method

.method public static byteArrayToShort([B)S
    .locals 1
    .param p0, "valueBuf"    # [B

    .line 1350
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/media/audiofx/AudioEffect;->byteArrayToShort([BI)S

    move-result v0

    return v0
.end method

.method public static byteArrayToShort([BI)S
    .locals 2
    .param p0, "valueBuf"    # [B
    .param p1, "offset"    # I

    .line 1357
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1358
    .local v0, "converter":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 1359
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v1

    return v1
.end method

.method public static varargs concatArrays([[B)[B
    .locals 8
    .param p0, "arrays"    # [[B

    .line 1407
    const/4 v0, 0x0

    .line 1408
    .local v0, "len":I
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v0

    move v0, v2

    .end local v0    # "len":I
    .local v3, "len":I
    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v4, p0, v0

    .line 1409
    .local v4, "a":[B
    array-length v5, v4

    add-int/2addr v3, v5

    .line 1408
    .end local v4    # "a":[B
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1411
    :cond_0
    new-array v0, v3, [B

    .line 1413
    .local v0, "b":[B
    const/4 v1, 0x0

    .line 1414
    .local v1, "offs":I
    array-length v4, p0

    move v5, v1

    move v1, v2

    .end local v1    # "offs":I
    .local v5, "offs":I
    :goto_1
    if-ge v1, v4, :cond_1

    aget-object v6, p0, v1

    .line 1415
    .local v6, "a":[B
    array-length v7, v6

    invoke-static {v6, v2, v0, v5, v7}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 1416
    array-length v7, v6

    add-int/2addr v5, v7

    .line 1414
    .end local v6    # "a":[B
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1418
    :cond_1
    return-object v0
.end method

.method private createNativeEventHandler()V
    .locals 2

    .line 971
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    move-object v1, v0

    .local v1, "looper":Landroid/os/Looper;
    if-eqz v0, :cond_0

    .line 972
    new-instance v0, Landroid/media/audiofx/AudioEffect$NativeEventHandler;

    invoke-direct {v0, p0, p0, v1}, Landroid/media/audiofx/AudioEffect$NativeEventHandler;-><init>(Landroid/media/audiofx/AudioEffect;Landroid/media/audiofx/AudioEffect;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/media/audiofx/AudioEffect;->mNativeEventHandler:Landroid/media/audiofx/AudioEffect$NativeEventHandler;

    goto :goto_0

    .line 973
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    move-object v1, v0

    if-eqz v0, :cond_1

    .line 974
    new-instance v0, Landroid/media/audiofx/AudioEffect$NativeEventHandler;

    invoke-direct {v0, p0, p0, v1}, Landroid/media/audiofx/AudioEffect$NativeEventHandler;-><init>(Landroid/media/audiofx/AudioEffect;Landroid/media/audiofx/AudioEffect;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/media/audiofx/AudioEffect;->mNativeEventHandler:Landroid/media/audiofx/AudioEffect$NativeEventHandler;

    goto :goto_0

    .line 976
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/audiofx/AudioEffect;->mNativeEventHandler:Landroid/media/audiofx/AudioEffect$NativeEventHandler;

    .line 978
    :goto_0
    return-void
.end method

.method public static floatToByteArray(F)[B
    .locals 2
    .param p0, "value"    # F

    .line 1397
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1398
    .local v0, "converter":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 1399
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 1400
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    return-object v1
.end method

.method public static intToByteArray(I)[B
    .locals 2
    .param p0, "value"    # I

    .line 1339
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1340
    .local v0, "converter":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 1341
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1342
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    return-object v1
.end method

.method public static isEffectTypeAvailable(Ljava/util/UUID;)Z
    .locals 4
    .param p0, "type"    # Ljava/util/UUID;

    .line 499
    invoke-static {}, Landroid/media/audiofx/AudioEffect;->queryEffects()[Landroid/media/audiofx/AudioEffect$Descriptor;

    move-result-object v0

    .line 500
    .local v0, "desc":[Landroid/media/audiofx/AudioEffect$Descriptor;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 501
    return v1

    .line 504
    :cond_0
    move v2, v1

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_2

    .line 505
    aget-object v3, v0, v2

    iget-object v3, v3, Landroid/media/audiofx/AudioEffect$Descriptor;->type:Ljava/util/UUID;

    invoke-virtual {v3, p0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 506
    const/4 v1, 0x1

    return v1

    .line 504
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 509
    .end local v2    # "i":I
    :cond_2
    return v1
.end method

.method public static isError(I)Z
    .locals 1
    .param p0, "status"    # I

    .line 1312
    if-gez p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private final native native_command(II[BI[B)I
.end method

.method private final native native_finalize()V
.end method

.method private final native native_getEnabled()Z
.end method

.method private final native native_getParameter(I[BI[B)I
.end method

.method private final native native_hasControl()Z
.end method

.method private static final native native_init()V
.end method

.method private static native native_query_effects()[Ljava/lang/Object;
.end method

.method private static native native_query_pre_processing(I)[Ljava/lang/Object;
.end method

.method private final native native_release()V
.end method

.method private final native native_setEnabled(Z)I
.end method

.method private final native native_setParameter(I[BI[B)I
.end method

.method private final native native_setup(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;II[I[Ljava/lang/Object;Ljava/lang/String;)I
.end method

.method private static postEventFromNative(Ljava/lang/Object;IIILjava/lang/Object;)V
    .locals 3
    .param p0, "effect_ref"    # Ljava/lang/Object;
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "obj"    # Ljava/lang/Object;

    .line 1228
    move-object v0, p0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/audiofx/AudioEffect;

    .line 1229
    .local v0, "effect":Landroid/media/audiofx/AudioEffect;
    if-nez v0, :cond_0

    .line 1230
    return-void

    .line 1232
    :cond_0
    iget-object v1, v0, Landroid/media/audiofx/AudioEffect;->mNativeEventHandler:Landroid/media/audiofx/AudioEffect$NativeEventHandler;

    if-eqz v1, :cond_1

    .line 1233
    iget-object v1, v0, Landroid/media/audiofx/AudioEffect;->mNativeEventHandler:Landroid/media/audiofx/AudioEffect$NativeEventHandler;

    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/media/audiofx/AudioEffect$NativeEventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1235
    .local v1, "m":Landroid/os/Message;
    iget-object v2, v0, Landroid/media/audiofx/AudioEffect;->mNativeEventHandler:Landroid/media/audiofx/AudioEffect$NativeEventHandler;

    invoke-virtual {v2, v1}, Landroid/media/audiofx/AudioEffect$NativeEventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1238
    .end local v1    # "m":Landroid/os/Message;
    :cond_1
    return-void
.end method

.method public static queryEffects()[Landroid/media/audiofx/AudioEffect$Descriptor;
    .locals 1

    .line 475
    invoke-static {}, Landroid/media/audiofx/AudioEffect;->native_query_effects()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/media/audiofx/AudioEffect$Descriptor;

    return-object v0
.end method

.method public static queryPreProcessings(I)[Landroid/media/audiofx/AudioEffect$Descriptor;
    .locals 1
    .param p0, "audioSession"    # I

    .line 488
    invoke-static {p0}, Landroid/media/audiofx/AudioEffect;->native_query_pre_processing(I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/media/audiofx/AudioEffect$Descriptor;

    return-object v0
.end method

.method public static shortToByteArray(S)[B
    .locals 3
    .param p0, "value"    # S

    .line 1368
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1369
    .local v0, "converter":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 1370
    move v1, p0

    .line 1371
    .local v1, "sValue":S
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1372
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public checkState(Ljava/lang/String;)V
    .locals 4
    .param p1, "methodName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1281
    iget-object v0, p0, Landroid/media/audiofx/AudioEffect;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1282
    :try_start_0
    iget v1, p0, Landroid/media/audiofx/AudioEffect;->mState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 1286
    monitor-exit v0

    .line 1287
    return-void

    .line 1283
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " called on uninitialized AudioEffect."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1286
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public checkStatus(I)V
    .locals 2
    .param p1, "status"    # I

    .line 1293
    invoke-static {p1}, Landroid/media/audiofx/AudioEffect;->isError(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1294
    packed-switch p1, :pswitch_data_0

    .line 1302
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "AudioEffect: set/get parameter error"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1296
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "AudioEffect: bad parameter value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1299
    :pswitch_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "AudioEffect: invalid parameter operation"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1305
    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch -0x5
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public command(I[B[B)I
    .locals 7
    .param p1, "cmdCode"    # I
    .param p2, "command"    # [B
    .param p3, "reply"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 872
    const-string v0, "command()"

    invoke-virtual {p0, v0}, Landroid/media/audiofx/AudioEffect;->checkState(Ljava/lang/String;)V

    .line 873
    array-length v3, p2

    array-length v5, p3

    move-object v1, p0

    move v2, p1

    move-object v4, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Landroid/media/audiofx/AudioEffect;->native_command(II[BI[B)I

    move-result v0

    return v0
.end method

.method protected finalize()V
    .locals 0

    .line 449
    invoke-direct {p0}, Landroid/media/audiofx/AudioEffect;->native_finalize()V

    .line 450
    return-void
.end method

.method public getDescriptor()Landroid/media/audiofx/AudioEffect$Descriptor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 459
    const-string v0, "getDescriptor()"

    invoke-virtual {p0, v0}, Landroid/media/audiofx/AudioEffect;->checkState(Ljava/lang/String;)V

    .line 460
    iget-object v0, p0, Landroid/media/audiofx/AudioEffect;->mDescriptor:Landroid/media/audiofx/AudioEffect$Descriptor;

    return-object v0
.end method

.method public getEnabled()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 900
    const-string v0, "getEnabled()"

    invoke-virtual {p0, v0}, Landroid/media/audiofx/AudioEffect;->checkState(Ljava/lang/String;)V

    .line 901
    invoke-direct {p0}, Landroid/media/audiofx/AudioEffect;->native_getEnabled()Z

    move-result v0

    return v0
.end method

.method public getId()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 889
    const-string v0, "getId()"

    invoke-virtual {p0, v0}, Landroid/media/audiofx/AudioEffect;->checkState(Ljava/lang/String;)V

    .line 890
    iget v0, p0, Landroid/media/audiofx/AudioEffect;->mId:I

    return v0
.end method

.method public getParameter(I[B)I
    .locals 2
    .param p1, "param"    # I
    .param p2, "value"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 704
    invoke-static {p1}, Landroid/media/audiofx/AudioEffect;->intToByteArray(I)[B

    move-result-object v0

    .line 706
    .local v0, "p":[B
    invoke-virtual {p0, v0, p2}, Landroid/media/audiofx/AudioEffect;->getParameter([B[B)I

    move-result v1

    return v1
.end method

.method public getParameter(I[I)I
    .locals 7
    .param p1, "param"    # I
    .param p2, "value"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 720
    array-length v0, p2

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    .line 721
    const/4 v0, -0x4

    return v0

    .line 723
    :cond_0
    invoke-static {p1}, Landroid/media/audiofx/AudioEffect;->intToByteArray(I)[B

    move-result-object v0

    .line 725
    .local v0, "p":[B
    array-length v1, p2

    const/4 v2, 0x4

    mul-int/2addr v1, v2

    new-array v1, v1, [B

    .line 727
    .local v1, "v":[B
    invoke-virtual {p0, v0, v1}, Landroid/media/audiofx/AudioEffect;->getParameter([B[B)I

    move-result v3

    .line 729
    .local v3, "status":I
    const/16 v4, 0x8

    if-eq v3, v2, :cond_2

    if-ne v3, v4, :cond_1

    goto :goto_1

    .line 736
    :cond_1
    const/4 v2, -0x1

    .end local v3    # "status":I
    .local v2, "status":I
    :goto_0
    goto :goto_2

    .line 730
    .end local v2    # "status":I
    .restart local v3    # "status":I
    :cond_2
    :goto_1
    const/4 v5, 0x0

    invoke-static {v1}, Landroid/media/audiofx/AudioEffect;->byteArrayToInt([B)I

    move-result v6

    aput v6, p2, v5

    .line 731
    if-ne v3, v4, :cond_3

    .line 732
    const/4 v4, 0x1

    invoke-static {v1, v2}, Landroid/media/audiofx/AudioEffect;->byteArrayToInt([BI)I

    move-result v5

    aput v5, p2, v4

    .line 734
    :cond_3
    div-int/lit8 v2, v3, 0x4

    goto :goto_0

    .line 738
    .end local v3    # "status":I
    .restart local v2    # "status":I
    :goto_2
    return v2
.end method

.method public getParameter(I[S)I
    .locals 7
    .param p1, "param"    # I
    .param p2, "value"    # [S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 752
    array-length v0, p2

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    .line 753
    const/4 v0, -0x4

    return v0

    .line 755
    :cond_0
    invoke-static {p1}, Landroid/media/audiofx/AudioEffect;->intToByteArray(I)[B

    move-result-object v0

    .line 757
    .local v0, "p":[B
    array-length v2, p2

    mul-int/2addr v2, v1

    new-array v2, v2, [B

    .line 759
    .local v2, "v":[B
    invoke-virtual {p0, v0, v2}, Landroid/media/audiofx/AudioEffect;->getParameter([B[B)I

    move-result v3

    .line 761
    .local v3, "status":I
    const/4 v4, 0x4

    if-eq v3, v1, :cond_2

    if-ne v3, v4, :cond_1

    goto :goto_1

    .line 768
    :cond_1
    const/4 v1, -0x1

    .end local v3    # "status":I
    .local v1, "status":I
    :goto_0
    goto :goto_2

    .line 762
    .end local v1    # "status":I
    .restart local v3    # "status":I
    :cond_2
    :goto_1
    const/4 v5, 0x0

    invoke-static {v2}, Landroid/media/audiofx/AudioEffect;->byteArrayToShort([B)S

    move-result v6

    aput-short v6, p2, v5

    .line 763
    if-ne v3, v4, :cond_3

    .line 764
    const/4 v4, 0x1

    invoke-static {v2, v1}, Landroid/media/audiofx/AudioEffect;->byteArrayToShort([BI)S

    move-result v5

    aput-short v5, p2, v4

    .line 766
    :cond_3
    div-int/lit8 v1, v3, 0x2

    goto :goto_0

    .line 770
    .end local v3    # "status":I
    .restart local v1    # "status":I
    :goto_2
    return v1
.end method

.method public getParameter([B[B)I
    .locals 2
    .param p1, "param"    # [B
    .param p2, "value"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 690
    const-string v0, "getParameter()"

    invoke-virtual {p0, v0}, Landroid/media/audiofx/AudioEffect;->checkState(Ljava/lang/String;)V

    .line 691
    array-length v0, p1

    array-length v1, p2

    invoke-direct {p0, v0, p1, v1, p2}, Landroid/media/audiofx/AudioEffect;->native_getParameter(I[BI[B)I

    move-result v0

    return v0
.end method

.method public getParameter([I[B)I
    .locals 5
    .param p1, "param"    # [I
    .param p2, "value"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 851
    array-length v0, p1

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    .line 852
    const/4 v0, -0x4

    return v0

    .line 854
    :cond_0
    const/4 v0, 0x0

    aget v2, p1, v0

    invoke-static {v2}, Landroid/media/audiofx/AudioEffect;->intToByteArray(I)[B

    move-result-object v2

    .line 855
    .local v2, "p":[B
    array-length v3, p1

    const/4 v4, 0x1

    if-le v3, v4, :cond_1

    .line 856
    aget v3, p1, v4

    invoke-static {v3}, Landroid/media/audiofx/AudioEffect;->intToByteArray(I)[B

    move-result-object v3

    .line 857
    .local v3, "p2":[B
    new-array v1, v1, [[B

    aput-object v2, v1, v0

    aput-object v3, v1, v4

    invoke-static {v1}, Landroid/media/audiofx/AudioEffect;->concatArrays([[B)[B

    move-result-object v2

    .line 860
    .end local v3    # "p2":[B
    :cond_1
    invoke-virtual {p0, v2, p2}, Landroid/media/audiofx/AudioEffect;->getParameter([B[B)I

    move-result v0

    return v0
.end method

.method public getParameter([I[I)I
    .locals 8
    .param p1, "param"    # [I
    .param p2, "value"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 783
    array-length v0, p1

    const/4 v1, 0x2

    if-gt v0, v1, :cond_5

    array-length v0, p2

    if-le v0, v1, :cond_0

    goto :goto_3

    .line 786
    :cond_0
    const/4 v0, 0x0

    aget v2, p1, v0

    invoke-static {v2}, Landroid/media/audiofx/AudioEffect;->intToByteArray(I)[B

    move-result-object v2

    .line 787
    .local v2, "p":[B
    array-length v3, p1

    const/4 v4, 0x1

    if-le v3, v4, :cond_1

    .line 788
    aget v3, p1, v4

    invoke-static {v3}, Landroid/media/audiofx/AudioEffect;->intToByteArray(I)[B

    move-result-object v3

    .line 789
    .local v3, "p2":[B
    new-array v1, v1, [[B

    aput-object v2, v1, v0

    aput-object v3, v1, v4

    invoke-static {v1}, Landroid/media/audiofx/AudioEffect;->concatArrays([[B)[B

    move-result-object v2

    .line 791
    .end local v3    # "p2":[B
    :cond_1
    array-length v1, p2

    const/4 v3, 0x4

    mul-int/2addr v1, v3

    new-array v1, v1, [B

    .line 793
    .local v1, "v":[B
    invoke-virtual {p0, v2, v1}, Landroid/media/audiofx/AudioEffect;->getParameter([B[B)I

    move-result v5

    .line 795
    .local v5, "status":I
    const/16 v6, 0x8

    if-eq v5, v3, :cond_3

    if-ne v5, v6, :cond_2

    goto :goto_1

    .line 802
    :cond_2
    const/4 v0, -0x1

    .end local v5    # "status":I
    .local v0, "status":I
    :goto_0
    goto :goto_2

    .line 796
    .end local v0    # "status":I
    .restart local v5    # "status":I
    :cond_3
    :goto_1
    invoke-static {v1}, Landroid/media/audiofx/AudioEffect;->byteArrayToInt([B)I

    move-result v7

    aput v7, p2, v0

    .line 797
    if-ne v5, v6, :cond_4

    .line 798
    invoke-static {v1, v3}, Landroid/media/audiofx/AudioEffect;->byteArrayToInt([BI)I

    move-result v0

    aput v0, p2, v4

    .line 800
    :cond_4
    div-int/lit8 v0, v5, 0x4

    goto :goto_0

    .line 804
    .end local v5    # "status":I
    .restart local v0    # "status":I
    :goto_2
    return v0

    .line 784
    .end local v0    # "status":I
    .end local v1    # "v":[B
    .end local v2    # "p":[B
    :cond_5
    :goto_3
    const/4 v0, -0x4

    return v0
.end method

.method public getParameter([I[S)I
    .locals 8
    .param p1, "param"    # [I
    .param p2, "value"    # [S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 818
    array-length v0, p1

    const/4 v1, 0x2

    if-gt v0, v1, :cond_5

    array-length v0, p2

    if-le v0, v1, :cond_0

    goto :goto_3

    .line 821
    :cond_0
    const/4 v0, 0x0

    aget v2, p1, v0

    invoke-static {v2}, Landroid/media/audiofx/AudioEffect;->intToByteArray(I)[B

    move-result-object v2

    .line 822
    .local v2, "p":[B
    array-length v3, p1

    const/4 v4, 0x1

    if-le v3, v4, :cond_1

    .line 823
    aget v3, p1, v4

    invoke-static {v3}, Landroid/media/audiofx/AudioEffect;->intToByteArray(I)[B

    move-result-object v3

    .line 824
    .local v3, "p2":[B
    new-array v5, v1, [[B

    aput-object v2, v5, v0

    aput-object v3, v5, v4

    invoke-static {v5}, Landroid/media/audiofx/AudioEffect;->concatArrays([[B)[B

    move-result-object v2

    .line 826
    .end local v3    # "p2":[B
    :cond_1
    array-length v3, p2

    mul-int/2addr v3, v1

    new-array v3, v3, [B

    .line 828
    .local v3, "v":[B
    invoke-virtual {p0, v2, v3}, Landroid/media/audiofx/AudioEffect;->getParameter([B[B)I

    move-result v5

    .line 830
    .local v5, "status":I
    const/4 v6, 0x4

    if-eq v5, v1, :cond_3

    if-ne v5, v6, :cond_2

    goto :goto_1

    .line 837
    :cond_2
    const/4 v0, -0x1

    .end local v5    # "status":I
    .local v0, "status":I
    :goto_0
    goto :goto_2

    .line 831
    .end local v0    # "status":I
    .restart local v5    # "status":I
    :cond_3
    :goto_1
    invoke-static {v3}, Landroid/media/audiofx/AudioEffect;->byteArrayToShort([B)S

    move-result v7

    aput-short v7, p2, v0

    .line 832
    if-ne v5, v6, :cond_4

    .line 833
    invoke-static {v3, v1}, Landroid/media/audiofx/AudioEffect;->byteArrayToShort([BI)S

    move-result v0

    aput-short v0, p2, v4

    .line 835
    :cond_4
    div-int/lit8 v0, v5, 0x2

    goto :goto_0

    .line 839
    .end local v5    # "status":I
    .restart local v0    # "status":I
    :goto_2
    return v0

    .line 819
    .end local v0    # "status":I
    .end local v2    # "p":[B
    .end local v3    # "v":[B
    :cond_5
    :goto_3
    const/4 v0, -0x4

    return v0
.end method

.method public hasControl()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 912
    const-string v0, "hasControl()"

    invoke-virtual {p0, v0}, Landroid/media/audiofx/AudioEffect;->checkState(Ljava/lang/String;)V

    .line 913
    invoke-direct {p0}, Landroid/media/audiofx/AudioEffect;->native_hasControl()Z

    move-result v0

    return v0
.end method

.method public release()V
    .locals 2

    .line 441
    iget-object v0, p0, Landroid/media/audiofx/AudioEffect;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 442
    :try_start_0
    invoke-direct {p0}, Landroid/media/audiofx/AudioEffect;->native_release()V

    .line 443
    const/4 v1, 0x0

    iput v1, p0, Landroid/media/audiofx/AudioEffect;->mState:I

    .line 444
    monitor-exit v0

    .line 445
    return-void

    .line 444
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setControlStatusListener(Landroid/media/audiofx/AudioEffect$OnControlStatusChangeListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/media/audiofx/AudioEffect$OnControlStatusChangeListener;

    .line 941
    iget-object v0, p0, Landroid/media/audiofx/AudioEffect;->mListenerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 942
    :try_start_0
    iput-object p1, p0, Landroid/media/audiofx/AudioEffect;->mControlChangeStatusListener:Landroid/media/audiofx/AudioEffect$OnControlStatusChangeListener;

    .line 943
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 944
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/media/audiofx/AudioEffect;->mNativeEventHandler:Landroid/media/audiofx/AudioEffect$NativeEventHandler;

    if-nez v0, :cond_0

    .line 945
    invoke-direct {p0}, Landroid/media/audiofx/AudioEffect;->createNativeEventHandler()V

    .line 947
    :cond_0
    return-void

    .line 943
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public setEnableStatusListener(Landroid/media/audiofx/AudioEffect$OnEnableStatusChangeListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/media/audiofx/AudioEffect$OnEnableStatusChangeListener;

    .line 926
    iget-object v0, p0, Landroid/media/audiofx/AudioEffect;->mListenerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 927
    :try_start_0
    iput-object p1, p0, Landroid/media/audiofx/AudioEffect;->mEnableStatusChangeListener:Landroid/media/audiofx/AudioEffect$OnEnableStatusChangeListener;

    .line 928
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 929
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/media/audiofx/AudioEffect;->mNativeEventHandler:Landroid/media/audiofx/AudioEffect$NativeEventHandler;

    if-nez v0, :cond_0

    .line 930
    invoke-direct {p0}, Landroid/media/audiofx/AudioEffect;->createNativeEventHandler()V

    .line 932
    :cond_0
    return-void

    .line 928
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public setEnabled(Z)I
    .locals 1
    .param p1, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 529
    const-string/jumbo v0, "setEnabled()"

    invoke-virtual {p0, v0}, Landroid/media/audiofx/AudioEffect;->checkState(Ljava/lang/String;)V

    .line 530
    invoke-direct {p0, p1}, Landroid/media/audiofx/AudioEffect;->native_setEnabled(Z)I

    move-result v0

    return v0
.end method

.method public setParameter(II)I
    .locals 3
    .param p1, "param"    # I
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 565
    invoke-static {p1}, Landroid/media/audiofx/AudioEffect;->intToByteArray(I)[B

    move-result-object v0

    .line 566
    .local v0, "p":[B
    invoke-static {p2}, Landroid/media/audiofx/AudioEffect;->intToByteArray(I)[B

    move-result-object v1

    .line 567
    .local v1, "v":[B
    invoke-virtual {p0, v0, v1}, Landroid/media/audiofx/AudioEffect;->setParameter([B[B)I

    move-result v2

    return v2
.end method

.method public setParameter(IS)I
    .locals 3
    .param p1, "param"    # I
    .param p2, "value"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 580
    invoke-static {p1}, Landroid/media/audiofx/AudioEffect;->intToByteArray(I)[B

    move-result-object v0

    .line 581
    .local v0, "p":[B
    invoke-static {p2}, Landroid/media/audiofx/AudioEffect;->shortToByteArray(S)[B

    move-result-object v1

    .line 582
    .local v1, "v":[B
    invoke-virtual {p0, v0, v1}, Landroid/media/audiofx/AudioEffect;->setParameter([B[B)I

    move-result v2

    return v2
.end method

.method public setParameter(I[B)I
    .locals 2
    .param p1, "param"    # I
    .param p2, "value"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 595
    invoke-static {p1}, Landroid/media/audiofx/AudioEffect;->intToByteArray(I)[B

    move-result-object v0

    .line 596
    .local v0, "p":[B
    invoke-virtual {p0, v0, p2}, Landroid/media/audiofx/AudioEffect;->setParameter([B[B)I

    move-result v1

    return v1
.end method

.method public setParameter([B[B)I
    .locals 2
    .param p1, "param"    # [B
    .param p2, "value"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 553
    const-string/jumbo v0, "setParameter()"

    invoke-virtual {p0, v0}, Landroid/media/audiofx/AudioEffect;->checkState(Ljava/lang/String;)V

    .line 554
    array-length v0, p1

    array-length v1, p2

    invoke-direct {p0, v0, p1, v1, p2}, Landroid/media/audiofx/AudioEffect;->native_setParameter(I[BI[B)I

    move-result v0

    return v0
.end method

.method public setParameter([I[B)I
    .locals 5
    .param p1, "param"    # [I
    .param p2, "value"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 661
    array-length v0, p1

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    .line 662
    const/4 v0, -0x4

    return v0

    .line 664
    :cond_0
    const/4 v0, 0x0

    aget v2, p1, v0

    invoke-static {v2}, Landroid/media/audiofx/AudioEffect;->intToByteArray(I)[B

    move-result-object v2

    .line 665
    .local v2, "p":[B
    array-length v3, p1

    const/4 v4, 0x1

    if-le v3, v4, :cond_1

    .line 666
    aget v3, p1, v4

    invoke-static {v3}, Landroid/media/audiofx/AudioEffect;->intToByteArray(I)[B

    move-result-object v3

    .line 667
    .local v3, "p2":[B
    new-array v1, v1, [[B

    aput-object v2, v1, v0

    aput-object v3, v1, v4

    invoke-static {v1}, Landroid/media/audiofx/AudioEffect;->concatArrays([[B)[B

    move-result-object v2

    .line 669
    .end local v3    # "p2":[B
    :cond_1
    invoke-virtual {p0, v2, p2}, Landroid/media/audiofx/AudioEffect;->setParameter([B[B)I

    move-result v0

    return v0
.end method

.method public setParameter([I[I)I
    .locals 6
    .param p1, "param"    # [I
    .param p2, "value"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 609
    array-length v0, p1

    const/4 v1, 0x2

    if-gt v0, v1, :cond_3

    array-length v0, p2

    if-le v0, v1, :cond_0

    goto :goto_0

    .line 612
    :cond_0
    const/4 v0, 0x0

    aget v2, p1, v0

    invoke-static {v2}, Landroid/media/audiofx/AudioEffect;->intToByteArray(I)[B

    move-result-object v2

    .line 613
    .local v2, "p":[B
    array-length v3, p1

    const/4 v4, 0x1

    if-le v3, v4, :cond_1

    .line 614
    aget v3, p1, v4

    invoke-static {v3}, Landroid/media/audiofx/AudioEffect;->intToByteArray(I)[B

    move-result-object v3

    .line 615
    .local v3, "p2":[B
    new-array v5, v1, [[B

    aput-object v2, v5, v0

    aput-object v3, v5, v4

    invoke-static {v5}, Landroid/media/audiofx/AudioEffect;->concatArrays([[B)[B

    move-result-object v2

    .line 617
    .end local v3    # "p2":[B
    :cond_1
    aget v3, p2, v0

    invoke-static {v3}, Landroid/media/audiofx/AudioEffect;->intToByteArray(I)[B

    move-result-object v3

    .line 618
    .local v3, "v":[B
    array-length v5, p2

    if-le v5, v4, :cond_2

    .line 619
    aget v5, p2, v4

    invoke-static {v5}, Landroid/media/audiofx/AudioEffect;->intToByteArray(I)[B

    move-result-object v5

    .line 620
    .local v5, "v2":[B
    new-array v1, v1, [[B

    aput-object v3, v1, v0

    aput-object v5, v1, v4

    invoke-static {v1}, Landroid/media/audiofx/AudioEffect;->concatArrays([[B)[B

    move-result-object v3

    .line 622
    .end local v5    # "v2":[B
    :cond_2
    invoke-virtual {p0, v2, v3}, Landroid/media/audiofx/AudioEffect;->setParameter([B[B)I

    move-result v0

    return v0

    .line 610
    .end local v2    # "p":[B
    .end local v3    # "v":[B
    :cond_3
    :goto_0
    const/4 v0, -0x4

    return v0
.end method

.method public setParameter([I[S)I
    .locals 6
    .param p1, "param"    # [I
    .param p2, "value"    # [S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 634
    array-length v0, p1

    const/4 v1, 0x2

    if-gt v0, v1, :cond_3

    array-length v0, p2

    if-le v0, v1, :cond_0

    goto :goto_0

    .line 637
    :cond_0
    const/4 v0, 0x0

    aget v2, p1, v0

    invoke-static {v2}, Landroid/media/audiofx/AudioEffect;->intToByteArray(I)[B

    move-result-object v2

    .line 638
    .local v2, "p":[B
    array-length v3, p1

    const/4 v4, 0x1

    if-le v3, v4, :cond_1

    .line 639
    aget v3, p1, v4

    invoke-static {v3}, Landroid/media/audiofx/AudioEffect;->intToByteArray(I)[B

    move-result-object v3

    .line 640
    .local v3, "p2":[B
    new-array v5, v1, [[B

    aput-object v2, v5, v0

    aput-object v3, v5, v4

    invoke-static {v5}, Landroid/media/audiofx/AudioEffect;->concatArrays([[B)[B

    move-result-object v2

    .line 643
    .end local v3    # "p2":[B
    :cond_1
    aget-short v3, p2, v0

    invoke-static {v3}, Landroid/media/audiofx/AudioEffect;->shortToByteArray(S)[B

    move-result-object v3

    .line 644
    .local v3, "v":[B
    array-length v5, p2

    if-le v5, v4, :cond_2

    .line 645
    aget-short v5, p2, v4

    invoke-static {v5}, Landroid/media/audiofx/AudioEffect;->shortToByteArray(S)[B

    move-result-object v5

    .line 646
    .local v5, "v2":[B
    new-array v1, v1, [[B

    aput-object v3, v1, v0

    aput-object v5, v1, v4

    invoke-static {v1}, Landroid/media/audiofx/AudioEffect;->concatArrays([[B)[B

    move-result-object v3

    .line 648
    .end local v5    # "v2":[B
    :cond_2
    invoke-virtual {p0, v2, v3}, Landroid/media/audiofx/AudioEffect;->setParameter([B[B)I

    move-result v0

    return v0

    .line 635
    .end local v2    # "p":[B
    .end local v3    # "v":[B
    :cond_3
    :goto_0
    const/4 v0, -0x4

    return v0
.end method

.method public setParameterListener(Landroid/media/audiofx/AudioEffect$OnParameterChangeListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/media/audiofx/AudioEffect$OnParameterChangeListener;

    .line 957
    iget-object v0, p0, Landroid/media/audiofx/AudioEffect;->mListenerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 958
    :try_start_0
    iput-object p1, p0, Landroid/media/audiofx/AudioEffect;->mParameterChangeListener:Landroid/media/audiofx/AudioEffect$OnParameterChangeListener;

    .line 959
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 960
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/media/audiofx/AudioEffect;->mNativeEventHandler:Landroid/media/audiofx/AudioEffect$NativeEventHandler;

    if-nez v0, :cond_0

    .line 961
    invoke-direct {p0}, Landroid/media/audiofx/AudioEffect;->createNativeEventHandler()V

    .line 963
    :cond_0
    return-void

    .line 959
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
