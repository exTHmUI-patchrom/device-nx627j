.class public Lcom/android/server/wifi/SarManager;
.super Ljava/lang/Object;
.source "SarManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/SarManager$SarSensorEventListener;,
        Lcom/android/server/wifi/SarManager$WifiPhoneStateListener;
    }
.end annotation


# static fields
.field private static final CHECK_VOICE_STREAM_INTERVAL_MS:I = 0x1388

.field private static final TAG:Ljava/lang/String; = "WifiSarManager"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mIsVoiceStreamCheckEnabled:Z

.field private final mLooper:Landroid/os/Looper;

.field private final mPhoneStateListener:Lcom/android/server/wifi/SarManager$WifiPhoneStateListener;

.field private mSarInfo:Lcom/android/server/wifi/SarInfo;

.field private mSarSensorEventFreeSpace:I

.field private mSarSensorEventNearBody:I

.field private mSarSensorEventNearHand:I

.field private mSarSensorEventNearHead:I

.field private mScreenOn:Z

.field private final mSensorListener:Lcom/android/server/wifi/SarManager$SarSensorEventListener;

.field private final mSensorManager:Landroid/hardware/SensorManager;

.field private mSupportSarSensor:Z

.field private mSupportSarSoftAp:Z

.field private mSupportSarTxPowerLimit:Z

.field private mSupportSarVoiceCall:Z

.field private final mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mVerboseLoggingEnabled:Z

.field private final mWifiNative:Lcom/android/server/wifi/WifiNative;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/telephony/TelephonyManager;Landroid/os/Looper;Lcom/android/server/wifi/WifiNative;Landroid/hardware/SensorManager;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "telephonyManager"    # Landroid/telephony/TelephonyManager;
    .param p3, "looper"    # Landroid/os/Looper;
    .param p4, "wifiNative"    # Lcom/android/server/wifi/WifiNative;
    .param p5, "sensorManager"    # Landroid/hardware/SensorManager;

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wifi/SarManager;->mVerboseLoggingEnabled:Z

    .line 79
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifi/SarManager;->mScreenOn:Z

    .line 80
    iput-boolean v0, p0, Lcom/android/server/wifi/SarManager;->mIsVoiceStreamCheckEnabled:Z

    .line 102
    iput-object p1, p0, Lcom/android/server/wifi/SarManager;->mContext:Landroid/content/Context;

    .line 103
    iput-object p2, p0, Lcom/android/server/wifi/SarManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 104
    iput-object p4, p0, Lcom/android/server/wifi/SarManager;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    .line 105
    iput-object p3, p0, Lcom/android/server/wifi/SarManager;->mLooper:Landroid/os/Looper;

    .line 106
    new-instance v0, Lcom/android/server/wifi/util/WifiHandler;

    const-string v1, "WifiSarManager"

    invoke-direct {v0, v1, p3}, Lcom/android/server/wifi/util/WifiHandler;-><init>(Ljava/lang/String;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/wifi/SarManager;->mHandler:Landroid/os/Handler;

    .line 107
    iput-object p5, p0, Lcom/android/server/wifi/SarManager;->mSensorManager:Landroid/hardware/SensorManager;

    .line 108
    new-instance v0, Lcom/android/server/wifi/SarManager$WifiPhoneStateListener;

    invoke-direct {v0, p0, p3}, Lcom/android/server/wifi/SarManager$WifiPhoneStateListener;-><init>(Lcom/android/server/wifi/SarManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/wifi/SarManager;->mPhoneStateListener:Lcom/android/server/wifi/SarManager$WifiPhoneStateListener;

    .line 109
    new-instance v0, Lcom/android/server/wifi/SarManager$SarSensorEventListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/wifi/SarManager$SarSensorEventListener;-><init>(Lcom/android/server/wifi/SarManager;Lcom/android/server/wifi/SarManager$1;)V

    iput-object v0, p0, Lcom/android/server/wifi/SarManager;->mSensorListener:Lcom/android/server/wifi/SarManager$SarSensorEventListener;

    .line 111
    invoke-direct {p0}, Lcom/android/server/wifi/SarManager;->readSarConfigs()V

    .line 112
    iget-boolean v0, p0, Lcom/android/server/wifi/SarManager;->mSupportSarTxPowerLimit:Z

    if-eqz v0, :cond_0

    .line 113
    new-instance v0, Lcom/android/server/wifi/SarInfo;

    invoke-direct {v0}, Lcom/android/server/wifi/SarInfo;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/SarManager;->mSarInfo:Lcom/android/server/wifi/SarInfo;

    .line 114
    invoke-direct {p0}, Lcom/android/server/wifi/SarManager;->setSarConfigsInInfo()V

    .line 115
    invoke-direct {p0}, Lcom/android/server/wifi/SarManager;->registerListeners()V

    .line 117
    :cond_0
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/wifi/SarManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/SarManager;

    .line 58
    invoke-direct {p0}, Lcom/android/server/wifi/SarManager;->isVoiceCallStreamActive()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/android/server/wifi/SarManager;)Landroid/hardware/SensorManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/SarManager;

    .line 58
    iget-object v0, p0, Lcom/android/server/wifi/SarManager;->mSensorManager:Landroid/hardware/SensorManager;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/wifi/SarManager;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/SarManager;
    .param p1, "x1"    # I

    .line 58
    invoke-direct {p0, p1}, Lcom/android/server/wifi/SarManager;->onSarSensorEvent(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/wifi/SarManager;)Lcom/android/server/wifi/SarInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/SarManager;

    .line 58
    iget-object v0, p0, Lcom/android/server/wifi/SarManager;->mSarInfo:Lcom/android/server/wifi/SarInfo;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/wifi/SarManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/SarManager;

    .line 58
    iget-boolean v0, p0, Lcom/android/server/wifi/SarManager;->mVerboseLoggingEnabled:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/wifi/SarManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/SarManager;

    .line 58
    invoke-direct {p0}, Lcom/android/server/wifi/SarManager;->updateSarScenario()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/wifi/SarManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/SarManager;

    .line 58
    iget-boolean v0, p0, Lcom/android/server/wifi/SarManager;->mSupportSarTxPowerLimit:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/wifi/SarManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/SarManager;

    .line 58
    iget-boolean v0, p0, Lcom/android/server/wifi/SarManager;->mSupportSarVoiceCall:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/wifi/SarManager;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/SarManager;
    .param p1, "x1"    # I

    .line 58
    invoke-direct {p0, p1}, Lcom/android/server/wifi/SarManager;->onCellStateChangeEvent(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/wifi/SarManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/SarManager;

    .line 58
    iget-object v0, p0, Lcom/android/server/wifi/SarManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private checkAudioDevice()V
    .locals 6

    .line 161
    invoke-direct {p0}, Lcom/android/server/wifi/SarManager;->isVoiceCallStreamActive()Z

    move-result v0

    .line 164
    .local v0, "voiceStreamActive":Z
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 166
    invoke-direct {p0}, Lcom/android/server/wifi/SarManager;->isVoiceCallOnEarpiece()Z

    move-result v2

    .line 168
    .local v2, "earPieceActive":Z
    iget-boolean v3, p0, Lcom/android/server/wifi/SarManager;->mVerboseLoggingEnabled:Z

    if-eqz v3, :cond_1

    .line 169
    const-string v3, "WifiSarManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EarPiece active = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 172
    .end local v2    # "earPieceActive":Z
    :cond_0
    move v2, v1

    .line 176
    .restart local v2    # "earPieceActive":Z
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/android/server/wifi/SarManager;->mSarInfo:Lcom/android/server/wifi/SarInfo;

    iget-boolean v3, v3, Lcom/android/server/wifi/SarInfo;->isEarPieceActive:Z

    if-eq v2, v3, :cond_2

    .line 177
    iget-object v3, p0, Lcom/android/server/wifi/SarManager;->mSarInfo:Lcom/android/server/wifi/SarInfo;

    iput-boolean v2, v3, Lcom/android/server/wifi/SarInfo;->isEarPieceActive:Z

    .line 178
    invoke-direct {p0}, Lcom/android/server/wifi/SarManager;->updateSarScenario()V

    .line 182
    :cond_2
    iget-boolean v3, p0, Lcom/android/server/wifi/SarManager;->mScreenOn:Z

    if-nez v3, :cond_3

    if-nez v0, :cond_3

    .line 184
    iput-boolean v1, p0, Lcom/android/server/wifi/SarManager;->mIsVoiceStreamCheckEnabled:Z

    goto :goto_1

    .line 187
    :cond_3
    iget-object v1, p0, Lcom/android/server/wifi/SarManager;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/wifi/-$$Lambda$SarManager$VrXGaN2lCt0CybxxEfgneaY4FvY;

    invoke-direct {v3, p0}, Lcom/android/server/wifi/-$$Lambda$SarManager$VrXGaN2lCt0CybxxEfgneaY4FvY;-><init>(Lcom/android/server/wifi/SarManager;)V

    const-wide/16 v4, 0x1388

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 191
    :goto_1
    return-void
.end method

.method private isVoiceCallOnEarpiece()Z
    .locals 4

    .line 149
    iget-object v0, p0, Lcom/android/server/wifi/SarManager;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 151
    .local v0, "audioManager":Landroid/media/AudioManager;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getDevicesForStream(I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    move v1, v3

    nop

    :cond_0
    return v1
.end method

.method private isVoiceCallStreamActive()Z
    .locals 1

    .line 156
    const/4 v0, 0x0

    invoke-static {v0, v0}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v0

    return v0
.end method

.method public static synthetic lambda$checkAudioDevice$1(Lcom/android/server/wifi/SarManager;)V
    .locals 0

    .line 188
    invoke-direct {p0}, Lcom/android/server/wifi/SarManager;->checkAudioDevice()V

    .line 189
    return-void
.end method

.method public static synthetic lambda$handleScreenStateChanged$0(Lcom/android/server/wifi/SarManager;)V
    .locals 0

    .line 141
    invoke-direct {p0}, Lcom/android/server/wifi/SarManager;->checkAudioDevice()V

    .line 142
    return-void
.end method

.method private onCellStateChangeEvent(I)V
    .locals 4
    .param p1, "state"    # I

    .line 402
    packed-switch p1, :pswitch_data_0

    .line 413
    const-string v0, "WifiSarManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid Cell State: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    return-void

    .line 405
    :pswitch_0
    const/4 v0, 0x1

    .line 406
    .local v0, "newIsVoiceCall":Z
    goto :goto_0

    .line 409
    .end local v0    # "newIsVoiceCall":Z
    :pswitch_1
    const/4 v0, 0x0

    .line 410
    .restart local v0    # "newIsVoiceCall":Z
    nop

    .line 414
    :goto_0
    nop

    .line 418
    iget-object v1, p0, Lcom/android/server/wifi/SarManager;->mSarInfo:Lcom/android/server/wifi/SarInfo;

    iget-boolean v1, v1, Lcom/android/server/wifi/SarInfo;->isVoiceCall:Z

    if-eq v1, v0, :cond_1

    .line 419
    iget-object v1, p0, Lcom/android/server/wifi/SarManager;->mSarInfo:Lcom/android/server/wifi/SarInfo;

    iput-boolean v0, v1, Lcom/android/server/wifi/SarInfo;->isVoiceCall:Z

    .line 421
    iget-boolean v1, p0, Lcom/android/server/wifi/SarManager;->mVerboseLoggingEnabled:Z

    if-eqz v1, :cond_0

    .line 422
    const-string v1, "WifiSarManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Voice Call = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    :cond_0
    invoke-direct {p0}, Lcom/android/server/wifi/SarManager;->updateSarScenario()V

    .line 426
    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private onSarSensorEvent(I)V
    .locals 4
    .param p1, "sarSensorEvent"    # I

    .line 433
    iget v0, p0, Lcom/android/server/wifi/SarManager;->mSarSensorEventFreeSpace:I

    if-ne p1, v0, :cond_0

    .line 434
    const/4 v0, 0x1

    .local v0, "newSensorState":I
    :goto_0
    goto :goto_1

    .line 435
    .end local v0    # "newSensorState":I
    :cond_0
    iget v0, p0, Lcom/android/server/wifi/SarManager;->mSarSensorEventNearBody:I

    if-ne p1, v0, :cond_1

    .line 436
    const/4 v0, 0x4

    goto :goto_0

    .line 437
    :cond_1
    iget v0, p0, Lcom/android/server/wifi/SarManager;->mSarSensorEventNearHand:I

    if-ne p1, v0, :cond_2

    .line 438
    const/4 v0, 0x2

    goto :goto_0

    .line 439
    :cond_2
    iget v0, p0, Lcom/android/server/wifi/SarManager;->mSarSensorEventNearHead:I

    if-ne p1, v0, :cond_4

    .line 440
    const/4 v0, 0x3

    goto :goto_0

    .line 443
    .restart local v0    # "newSensorState":I
    :goto_1
    nop

    .line 447
    iget-object v1, p0, Lcom/android/server/wifi/SarManager;->mSarInfo:Lcom/android/server/wifi/SarInfo;

    iget v1, v1, Lcom/android/server/wifi/SarInfo;->sensorState:I

    if-eq v1, v0, :cond_3

    .line 448
    const-string v1, "WifiSarManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setting Sensor state to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/server/wifi/SarInfo;->sensorStateToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    iget-object v1, p0, Lcom/android/server/wifi/SarManager;->mSarInfo:Lcom/android/server/wifi/SarInfo;

    iput v0, v1, Lcom/android/server/wifi/SarInfo;->sensorState:I

    .line 450
    invoke-direct {p0}, Lcom/android/server/wifi/SarManager;->updateSarScenario()V

    .line 452
    :cond_3
    return-void

    .line 442
    .end local v0    # "newSensorState":I
    :cond_4
    const-string v0, "WifiSarManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid SAR sensor event id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    return-void
.end method

.method private readSarConfigs()V
    .locals 2

    .line 194
    iget-object v0, p0, Lcom/android/server/wifi/SarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11200e4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wifi/SarManager;->mSupportSarTxPowerLimit:Z

    .line 198
    iget-boolean v0, p0, Lcom/android/server/wifi/SarManager;->mSupportSarTxPowerLimit:Z

    if-nez v0, :cond_0

    .line 199
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifi/SarManager;->mSupportSarVoiceCall:Z

    .line 200
    iput-boolean v0, p0, Lcom/android/server/wifi/SarManager;->mSupportSarSoftAp:Z

    .line 201
    iput-boolean v0, p0, Lcom/android/server/wifi/SarManager;->mSupportSarSensor:Z

    .line 202
    return-void

    .line 206
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wifi/SarManager;->mSupportSarVoiceCall:Z

    .line 208
    iget-object v0, p0, Lcom/android/server/wifi/SarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11200e5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wifi/SarManager;->mSupportSarSoftAp:Z

    .line 211
    iget-object v0, p0, Lcom/android/server/wifi/SarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11200e3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wifi/SarManager;->mSupportSarSensor:Z

    .line 215
    iget-boolean v0, p0, Lcom/android/server/wifi/SarManager;->mSupportSarSensor:Z

    if-eqz v0, :cond_1

    .line 216
    iget-object v0, p0, Lcom/android/server/wifi/SarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e00c3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/SarManager;->mSarSensorEventFreeSpace:I

    .line 218
    iget-object v0, p0, Lcom/android/server/wifi/SarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e00c4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/SarManager;->mSarSensorEventNearBody:I

    .line 220
    iget-object v0, p0, Lcom/android/server/wifi/SarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e00c5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/SarManager;->mSarSensorEventNearHand:I

    .line 222
    iget-object v0, p0, Lcom/android/server/wifi/SarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e00c6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/SarManager;->mSarSensorEventNearHead:I

    .line 225
    :cond_1
    return-void
.end method

.method private registerListeners()V
    .locals 2

    .line 234
    iget-boolean v0, p0, Lcom/android/server/wifi/SarManager;->mSupportSarVoiceCall:Z

    if-eqz v0, :cond_0

    .line 236
    invoke-direct {p0}, Lcom/android/server/wifi/SarManager;->registerPhoneStateListener()V

    .line 237
    invoke-direct {p0}, Lcom/android/server/wifi/SarManager;->registerVoiceStreamListener()V

    .line 241
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/wifi/SarManager;->mSupportSarSensor:Z

    if-eqz v0, :cond_1

    .line 244
    invoke-direct {p0}, Lcom/android/server/wifi/SarManager;->registerSensorListener()Z

    move-result v0

    if-nez v0, :cond_1

    .line 245
    const-string v0, "WifiSarManager"

    const-string v1, "Failed to register sensor listener, setting Sensor to NearHead"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    iget-object v0, p0, Lcom/android/server/wifi/SarManager;->mSarInfo:Lcom/android/server/wifi/SarInfo;

    const/4 v1, 0x3

    iput v1, v0, Lcom/android/server/wifi/SarInfo;->sensorState:I

    .line 250
    :cond_1
    return-void
.end method

.method private registerPhoneStateListener()V
    .locals 3

    .line 306
    const-string v0, "WifiSarManager"

    const-string v1, "Registering for telephony call state changes"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    iget-object v0, p0, Lcom/android/server/wifi/SarManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/server/wifi/SarManager;->mPhoneStateListener:Lcom/android/server/wifi/SarManager$WifiPhoneStateListener;

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 309
    return-void
.end method

.method private registerSensorListener()Z
    .locals 2

    .line 315
    const-string v0, "WifiSarManager"

    const-string v1, "Registering for Sensor notification Listener"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    iget-object v0, p0, Lcom/android/server/wifi/SarManager;->mSensorListener:Lcom/android/server/wifi/SarManager$SarSensorEventListener;

    invoke-static {v0}, Lcom/android/server/wifi/SarManager$SarSensorEventListener;->access$500(Lcom/android/server/wifi/SarManager$SarSensorEventListener;)Z

    move-result v0

    return v0
.end method

.method private registerVoiceStreamListener()V
    .locals 5

    .line 253
    const-string v0, "WifiSarManager"

    const-string v1, "Registering for voice stream status"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 257
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.media.STREAM_DEVICES_CHANGED_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 259
    iget-object v1, p0, Lcom/android/server/wifi/SarManager;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/wifi/SarManager$1;

    invoke-direct {v2, p0}, Lcom/android/server/wifi/SarManager$1;-><init>(Lcom/android/server/wifi/SarManager;)V

    iget-object v3, p0, Lcom/android/server/wifi/SarManager;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 300
    return-void
.end method

.method private setSarConfigsInInfo()V
    .locals 2

    .line 228
    iget-object v0, p0, Lcom/android/server/wifi/SarManager;->mSarInfo:Lcom/android/server/wifi/SarInfo;

    iget-boolean v1, p0, Lcom/android/server/wifi/SarManager;->mSupportSarVoiceCall:Z

    iput-boolean v1, v0, Lcom/android/server/wifi/SarInfo;->sarVoiceCallSupported:Z

    .line 229
    iget-object v0, p0, Lcom/android/server/wifi/SarManager;->mSarInfo:Lcom/android/server/wifi/SarInfo;

    iget-boolean v1, p0, Lcom/android/server/wifi/SarManager;->mSupportSarSoftAp:Z

    iput-boolean v1, v0, Lcom/android/server/wifi/SarInfo;->sarSapSupported:Z

    .line 230
    iget-object v0, p0, Lcom/android/server/wifi/SarManager;->mSarInfo:Lcom/android/server/wifi/SarInfo;

    iget-boolean v1, p0, Lcom/android/server/wifi/SarManager;->mSupportSarSensor:Z

    iput-boolean v1, v0, Lcom/android/server/wifi/SarInfo;->sarSensorSupported:Z

    .line 231
    return-void
.end method

.method private updateSarScenario()V
    .locals 2

    .line 568
    iget-object v0, p0, Lcom/android/server/wifi/SarManager;->mSarInfo:Lcom/android/server/wifi/SarInfo;

    invoke-virtual {v0}, Lcom/android/server/wifi/SarInfo;->shouldReport()Z

    move-result v0

    if-nez v0, :cond_0

    .line 569
    return-void

    .line 573
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/SarManager;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v1, p0, Lcom/android/server/wifi/SarManager;->mSarInfo:Lcom/android/server/wifi/SarInfo;

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiNative;->selectTxPowerScenario(Lcom/android/server/wifi/SarInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 574
    iget-object v0, p0, Lcom/android/server/wifi/SarManager;->mSarInfo:Lcom/android/server/wifi/SarInfo;

    invoke-virtual {v0}, Lcom/android/server/wifi/SarInfo;->reportingSuccessful()V

    goto :goto_0

    .line 576
    :cond_1
    const-string v0, "WifiSarManager"

    const-string v1, "Failed in WifiNative.selectTxPowerScenario()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    :goto_0
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 470
    const-string v0, "Dump of SarManager"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 471
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isSarSupported: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wifi/SarManager;->mSupportSarTxPowerLimit:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 472
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isSarVoiceCallSupported: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wifi/SarManager;->mSupportSarVoiceCall:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 473
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isSarSoftApSupported: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wifi/SarManager;->mSupportSarSoftAp:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 474
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isSarSensorSupported: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wifi/SarManager;->mSupportSarSensor:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 475
    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 476
    iget-object v0, p0, Lcom/android/server/wifi/SarManager;->mSarInfo:Lcom/android/server/wifi/SarInfo;

    if-eqz v0, :cond_0

    .line 477
    iget-object v0, p0, Lcom/android/server/wifi/SarManager;->mSarInfo:Lcom/android/server/wifi/SarInfo;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/wifi/SarInfo;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 479
    :cond_0
    return-void
.end method

.method public enableVerboseLogging(I)V
    .locals 1
    .param p1, "verbose"    # I

    .line 458
    if-lez p1, :cond_0

    .line 459
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wifi/SarManager;->mVerboseLoggingEnabled:Z

    goto :goto_0

    .line 461
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifi/SarManager;->mVerboseLoggingEnabled:Z

    .line 463
    :goto_0
    return-void
.end method

.method public handleScreenStateChanged(Z)V
    .locals 3
    .param p1, "screenOn"    # Z

    .line 123
    iget-boolean v0, p0, Lcom/android/server/wifi/SarManager;->mSupportSarVoiceCall:Z

    if-nez v0, :cond_0

    .line 124
    return-void

    .line 127
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/wifi/SarManager;->mScreenOn:Z

    if-ne v0, p1, :cond_1

    .line 128
    return-void

    .line 131
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/wifi/SarManager;->mVerboseLoggingEnabled:Z

    if-eqz v0, :cond_2

    .line 132
    const-string v0, "WifiSarManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleScreenStateChanged: screenOn = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    :cond_2
    iput-boolean p1, p0, Lcom/android/server/wifi/SarManager;->mScreenOn:Z

    .line 139
    iget-boolean v0, p0, Lcom/android/server/wifi/SarManager;->mScreenOn:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/server/wifi/SarManager;->mIsVoiceStreamCheckEnabled:Z

    if-nez v0, :cond_3

    .line 140
    iget-object v0, p0, Lcom/android/server/wifi/SarManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/wifi/-$$Lambda$SarManager$cF1vmoM2QYZACA-YzJsns9WSQI4;

    invoke-direct {v1, p0}, Lcom/android/server/wifi/-$$Lambda$SarManager$cF1vmoM2QYZACA-YzJsns9WSQI4;-><init>(Lcom/android/server/wifi/SarManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 144
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wifi/SarManager;->mIsVoiceStreamCheckEnabled:Z

    .line 146
    :cond_3
    return-void
.end method

.method public setClientWifiState(I)V
    .locals 2
    .param p1, "state"    # I

    .line 325
    iget-boolean v0, p0, Lcom/android/server/wifi/SarManager;->mSupportSarTxPowerLimit:Z

    if-nez v0, :cond_0

    .line 326
    return-void

    .line 329
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 330
    const/4 v0, 0x0

    .local v0, "newIsEnabled":Z
    :goto_0
    goto :goto_1

    .line 331
    .end local v0    # "newIsEnabled":Z
    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    .line 332
    const/4 v0, 0x1

    goto :goto_0

    .line 335
    .restart local v0    # "newIsEnabled":Z
    :goto_1
    nop

    .line 339
    iget-object v1, p0, Lcom/android/server/wifi/SarManager;->mSarInfo:Lcom/android/server/wifi/SarInfo;

    iget-boolean v1, v1, Lcom/android/server/wifi/SarInfo;->isWifiClientEnabled:Z

    if-eq v1, v0, :cond_2

    .line 340
    iget-object v1, p0, Lcom/android/server/wifi/SarManager;->mSarInfo:Lcom/android/server/wifi/SarInfo;

    iput-boolean v0, v1, Lcom/android/server/wifi/SarInfo;->isWifiClientEnabled:Z

    .line 341
    invoke-direct {p0}, Lcom/android/server/wifi/SarManager;->updateSarScenario()V

    .line 343
    :cond_2
    return-void

    .line 335
    .end local v0    # "newIsEnabled":Z
    :cond_3
    return-void
.end method

.method public setSapWifiState(I)V
    .locals 2
    .param p1, "state"    # I

    .line 351
    iget-boolean v0, p0, Lcom/android/server/wifi/SarManager;->mSupportSarTxPowerLimit:Z

    if-nez v0, :cond_0

    .line 352
    return-void

    .line 355
    :cond_0
    const/16 v0, 0xb

    if-ne p1, v0, :cond_1

    .line 356
    const/4 v0, 0x0

    .local v0, "newIsEnabled":Z
    :goto_0
    goto :goto_1

    .line 357
    .end local v0    # "newIsEnabled":Z
    :cond_1
    const/16 v0, 0xd

    if-ne p1, v0, :cond_3

    .line 358
    const/4 v0, 0x1

    goto :goto_0

    .line 361
    .restart local v0    # "newIsEnabled":Z
    :goto_1
    nop

    .line 365
    iget-object v1, p0, Lcom/android/server/wifi/SarManager;->mSarInfo:Lcom/android/server/wifi/SarInfo;

    iget-boolean v1, v1, Lcom/android/server/wifi/SarInfo;->isWifiSapEnabled:Z

    if-eq v1, v0, :cond_2

    .line 366
    iget-object v1, p0, Lcom/android/server/wifi/SarManager;->mSarInfo:Lcom/android/server/wifi/SarInfo;

    iput-boolean v0, v1, Lcom/android/server/wifi/SarInfo;->isWifiSapEnabled:Z

    .line 367
    invoke-direct {p0}, Lcom/android/server/wifi/SarManager;->updateSarScenario()V

    .line 369
    :cond_2
    return-void

    .line 361
    .end local v0    # "newIsEnabled":Z
    :cond_3
    return-void
.end method

.method public setScanOnlyWifiState(I)V
    .locals 2
    .param p1, "state"    # I

    .line 377
    iget-boolean v0, p0, Lcom/android/server/wifi/SarManager;->mSupportSarTxPowerLimit:Z

    if-nez v0, :cond_0

    .line 378
    return-void

    .line 381
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 382
    const/4 v0, 0x0

    .local v0, "newIsEnabled":Z
    :goto_0
    goto :goto_1

    .line 383
    .end local v0    # "newIsEnabled":Z
    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    .line 384
    const/4 v0, 0x1

    goto :goto_0

    .line 387
    .restart local v0    # "newIsEnabled":Z
    :goto_1
    nop

    .line 391
    iget-object v1, p0, Lcom/android/server/wifi/SarManager;->mSarInfo:Lcom/android/server/wifi/SarInfo;

    iget-boolean v1, v1, Lcom/android/server/wifi/SarInfo;->isWifiScanOnlyEnabled:Z

    if-eq v1, v0, :cond_2

    .line 392
    iget-object v1, p0, Lcom/android/server/wifi/SarManager;->mSarInfo:Lcom/android/server/wifi/SarInfo;

    iput-boolean v0, v1, Lcom/android/server/wifi/SarInfo;->isWifiScanOnlyEnabled:Z

    .line 393
    invoke-direct {p0}, Lcom/android/server/wifi/SarManager;->updateSarScenario()V

    .line 395
    :cond_2
    return-void

    .line 387
    .end local v0    # "newIsEnabled":Z
    :cond_3
    return-void
.end method
