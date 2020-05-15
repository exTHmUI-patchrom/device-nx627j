.class public abstract Landroid/media/PlayerBase;
.super Ljava/lang/Object;
.source "PlayerBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/PlayerBase$PlayerIdCard;,
        Landroid/media/PlayerBase$IPlayerWrapper;,
        Landroid/media/PlayerBase$IAppOpsCallbackWrapper;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DEBUG_APP_OPS:Z = false

.field private static final TAG:Ljava/lang/String; = "PlayerBase"

.field private static sService:Landroid/media/IAudioService;


# instance fields
.field private mAppOps:Lcom/android/internal/app/IAppOpsService;

.field private mAppOpsCallback:Lcom/android/internal/app/IAppOpsCallback;

.field protected mAttributes:Landroid/media/AudioAttributes;

.field protected mAuxEffectSendLevel:F

.field private mHasAppOpsPlayAudio:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mImplType:I

.field protected mLeftVolume:F

.field private final mLock:Ljava/lang/Object;

.field private mPanMultiplierL:F
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mPanMultiplierR:F
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mPlayerIId:I

.field protected mRightVolume:F

.field private mStartDelayMs:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mState:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/media/AudioAttributes;I)V
    .locals 3
    .param p1, "attr"    # Landroid/media/AudioAttributes;
    .param p2, "implType"    # I

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/media/PlayerBase;->mLeftVolume:F

    .line 59
    iput v0, p0, Landroid/media/PlayerBase;->mRightVolume:F

    .line 60
    const/4 v1, 0x0

    iput v1, p0, Landroid/media/PlayerBase;->mAuxEffectSendLevel:F

    .line 65
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/media/PlayerBase;->mLock:Ljava/lang/Object;

    .line 70
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/media/PlayerBase;->mHasAppOpsPlayAudio:Z

    .line 75
    const/4 v2, 0x0

    iput v2, p0, Landroid/media/PlayerBase;->mPlayerIId:I

    .line 79
    iput v2, p0, Landroid/media/PlayerBase;->mStartDelayMs:I

    .line 81
    iput v0, p0, Landroid/media/PlayerBase;->mPanMultiplierL:F

    .line 83
    iput v0, p0, Landroid/media/PlayerBase;->mPanMultiplierR:F

    .line 92
    if-eqz p1, :cond_0

    .line 95
    iput-object p1, p0, Landroid/media/PlayerBase;->mAttributes:Landroid/media/AudioAttributes;

    .line 96
    iput p2, p0, Landroid/media/PlayerBase;->mImplType:I

    .line 97
    iput v1, p0, Landroid/media/PlayerBase;->mState:I

    .line 98
    return-void

    .line 93
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal null AudioAttributes"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$000(Landroid/media/PlayerBase;)V
    .locals 0
    .param p0, "x0"    # Landroid/media/PlayerBase;

    .line 48
    invoke-direct {p0}, Landroid/media/PlayerBase;->updateAppOpsPlayAudio()V

    return-void
.end method

.method public static deprecateStreamTypeForPlayback(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "streamType"    # I
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "opName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 587
    const/16 v0, 0xa

    if-eq p0, v0, :cond_0

    .line 591
    const-string v0, "Use of stream types is deprecated for operations other than volume control"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "See the documentation of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " for what to use instead with android.media.AudioAttributes to qualify your playback use case"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    return-void

    .line 588
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Use of STREAM_ACCESSIBILITY is reserved for volume control"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getService()Landroid/media/IAudioService;
    .locals 2

    .line 346
    sget-object v0, Landroid/media/PlayerBase;->sService:Landroid/media/IAudioService;

    if-eqz v0, :cond_0

    .line 347
    sget-object v0, Landroid/media/PlayerBase;->sService:Landroid/media/IAudioService;

    return-object v0

    .line 349
    :cond_0
    const-string v0, "audio"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 350
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v1

    sput-object v1, Landroid/media/PlayerBase;->sService:Landroid/media/IAudioService;

    .line 351
    sget-object v1, Landroid/media/PlayerBase;->sService:Landroid/media/IAudioService;

    return-object v1
.end method

.method private updateAppOpsPlayAudio()V
    .locals 2

    .line 259
    iget-object v0, p0, Landroid/media/PlayerBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 260
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v1}, Landroid/media/PlayerBase;->updateAppOpsPlayAudio_sync(Z)V

    .line 261
    monitor-exit v0

    .line 262
    return-void

    .line 261
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private updateState(I)V
    .locals 5
    .param p1, "state"    # I

    .line 149
    iget-object v0, p0, Landroid/media/PlayerBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 150
    :try_start_0
    iput p1, p0, Landroid/media/PlayerBase;->mState:I

    .line 151
    iget v1, p0, Landroid/media/PlayerBase;->mPlayerIId:I

    .line 152
    .local v1, "piid":I
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    :try_start_1
    invoke-static {}, Landroid/media/PlayerBase;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-interface {v0, v1, p1}, Landroid/media/IAudioService;->playerEvent(II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 159
    goto :goto_0

    .line 155
    :catch_0
    move-exception v0

    .line 156
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "PlayerBase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error talking to audio service, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    invoke-static {p1}, Landroid/media/AudioPlaybackConfiguration;->toLogFriendlyPlayerState(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " state will not be tracked for piid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 156
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 160
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void

    .line 152
    .end local v1    # "piid":I
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method


# virtual methods
.method basePause()V
    .locals 1

    .line 186
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/media/PlayerBase;->updateState(I)V

    .line 187
    return-void
.end method

.method protected baseRegisterPlayer()V
    .locals 7

    .line 104
    const/4 v0, -0x1

    .line 105
    .local v0, "newPiid":I
    const-string v1, "appops"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 106
    .local v1, "b":Landroid/os/IBinder;
    invoke-static {v1}, Lcom/android/internal/app/IAppOpsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppOpsService;

    move-result-object v2

    iput-object v2, p0, Landroid/media/PlayerBase;->mAppOps:Lcom/android/internal/app/IAppOpsService;

    .line 108
    invoke-direct {p0}, Landroid/media/PlayerBase;->updateAppOpsPlayAudio()V

    .line 110
    new-instance v2, Landroid/media/PlayerBase$IAppOpsCallbackWrapper;

    invoke-direct {v2, p0}, Landroid/media/PlayerBase$IAppOpsCallbackWrapper;-><init>(Landroid/media/PlayerBase;)V

    iput-object v2, p0, Landroid/media/PlayerBase;->mAppOpsCallback:Lcom/android/internal/app/IAppOpsCallback;

    .line 112
    :try_start_0
    iget-object v2, p0, Landroid/media/PlayerBase;->mAppOps:Lcom/android/internal/app/IAppOpsService;

    const/16 v3, 0x1c

    .line 113
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Landroid/media/PlayerBase;->mAppOpsCallback:Lcom/android/internal/app/IAppOpsCallback;

    .line 112
    invoke-interface {v2, v3, v4, v5}, Lcom/android/internal/app/IAppOpsService;->startWatchingMode(ILjava/lang/String;Lcom/android/internal/app/IAppOpsCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    goto :goto_0

    .line 114
    :catch_0
    move-exception v2

    .line 115
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "PlayerBase"

    const-string v4, "Error registering appOps callback"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 116
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/media/PlayerBase;->mHasAppOpsPlayAudio:Z

    .line 119
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    :try_start_1
    invoke-static {}, Landroid/media/PlayerBase;->getService()Landroid/media/IAudioService;

    move-result-object v2

    new-instance v3, Landroid/media/PlayerBase$PlayerIdCard;

    iget v4, p0, Landroid/media/PlayerBase;->mImplType:I

    iget-object v5, p0, Landroid/media/PlayerBase;->mAttributes:Landroid/media/AudioAttributes;

    new-instance v6, Landroid/media/PlayerBase$IPlayerWrapper;

    invoke-direct {v6, p0}, Landroid/media/PlayerBase$IPlayerWrapper;-><init>(Landroid/media/PlayerBase;)V

    invoke-direct {v3, v4, v5, v6}, Landroid/media/PlayerBase$PlayerIdCard;-><init>(ILandroid/media/AudioAttributes;Landroid/media/IPlayer;)V

    invoke-interface {v2, v3}, Landroid/media/IAudioService;->trackPlayer(Landroid/media/PlayerBase$PlayerIdCard;)I

    move-result v2
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move v0, v2

    .line 123
    goto :goto_1

    .line 121
    :catch_1
    move-exception v2

    .line 122
    .restart local v2    # "e":Landroid/os/RemoteException;
    const-string v3, "PlayerBase"

    const-string v4, "Error talking to audio service, player will not be tracked"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 124
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_1
    iput v0, p0, Landroid/media/PlayerBase;->mPlayerIId:I

    .line 125
    return-void
.end method

.method baseRelease()V
    .locals 4

    .line 235
    const/4 v0, 0x0

    .line 236
    .local v0, "releasePlayer":Z
    iget-object v1, p0, Landroid/media/PlayerBase;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 237
    :try_start_0
    iget v2, p0, Landroid/media/PlayerBase;->mState:I

    if-eqz v2, :cond_0

    .line 238
    const/4 v0, 0x1

    .line 239
    const/4 v2, 0x0

    iput v2, p0, Landroid/media/PlayerBase;->mState:I

    .line 241
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 243
    if-eqz v0, :cond_1

    .line 244
    :try_start_1
    invoke-static {}, Landroid/media/PlayerBase;->getService()Landroid/media/IAudioService;

    move-result-object v1

    iget v2, p0, Landroid/media/PlayerBase;->mPlayerIId:I

    invoke-interface {v1, v2}, Landroid/media/IAudioService;->releasePlayer(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 246
    :catch_0
    move-exception v1

    .line 247
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "PlayerBase"

    const-string v3, "Error talking to audio service, the player will still be tracked"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v1    # "e":Landroid/os/RemoteException;
    goto :goto_1

    .line 248
    :cond_1
    :goto_0
    nop

    .line 250
    :goto_1
    :try_start_2
    iget-object v1, p0, Landroid/media/PlayerBase;->mAppOps:Lcom/android/internal/app/IAppOpsService;

    if-eqz v1, :cond_2

    .line 251
    iget-object v1, p0, Landroid/media/PlayerBase;->mAppOps:Lcom/android/internal/app/IAppOpsService;

    iget-object v2, p0, Landroid/media/PlayerBase;->mAppOpsCallback:Lcom/android/internal/app/IAppOpsCallback;

    invoke-interface {v1, v2}, Lcom/android/internal/app/IAppOpsService;->stopWatchingMode(Lcom/android/internal/app/IAppOpsCallback;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 255
    :cond_2
    goto :goto_2

    .line 253
    :catch_1
    move-exception v1

    .line 256
    :goto_2
    return-void

    .line 241
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2
.end method

.method baseSetAuxEffectSendLevel(F)I
    .locals 3
    .param p1, "level"    # F

    .line 220
    iget-object v0, p0, Landroid/media/PlayerBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 221
    :try_start_0
    iput p1, p0, Landroid/media/PlayerBase;->mAuxEffectSendLevel:F

    .line 222
    invoke-virtual {p0}, Landroid/media/PlayerBase;->isRestricted_sync()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 223
    monitor-exit v0

    return v2

    .line 225
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 226
    invoke-virtual {p0, v2, p1}, Landroid/media/PlayerBase;->playerSetAuxEffectSendLevel(ZF)I

    move-result v0

    return v0

    .line 225
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method baseSetPan(F)V
    .locals 4
    .param p1, "pan"    # F

    .line 195
    const/high16 v0, -0x40800000    # -1.0f

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 196
    .local v0, "p":F
    iget-object v2, p0, Landroid/media/PlayerBase;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 197
    const/4 v3, 0x0

    cmpl-float v3, v0, v3

    if-ltz v3, :cond_0

    .line 198
    sub-float v3, v1, v0

    :try_start_0
    iput v3, p0, Landroid/media/PlayerBase;->mPanMultiplierL:F

    .line 199
    iput v1, p0, Landroid/media/PlayerBase;->mPanMultiplierR:F

    goto :goto_0

    .line 204
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 201
    :cond_0
    iput v1, p0, Landroid/media/PlayerBase;->mPanMultiplierL:F

    .line 202
    add-float/2addr v1, v0

    iput v1, p0, Landroid/media/PlayerBase;->mPanMultiplierR:F

    .line 204
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 205
    iget v1, p0, Landroid/media/PlayerBase;->mLeftVolume:F

    iget v2, p0, Landroid/media/PlayerBase;->mRightVolume:F

    invoke-virtual {p0, v1, v2}, Landroid/media/PlayerBase;->baseSetVolume(FF)V

    .line 206
    return-void

    .line 204
    :goto_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method baseSetStartDelayMs(I)V
    .locals 2
    .param p1, "delayMs"    # I

    .line 173
    iget-object v0, p0, Landroid/media/PlayerBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 174
    const/4 v1, 0x0

    :try_start_0
    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Landroid/media/PlayerBase;->mStartDelayMs:I

    .line 175
    monitor-exit v0

    .line 176
    return-void

    .line 175
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method baseSetVolume(FF)V
    .locals 3
    .param p1, "leftVolume"    # F
    .param p2, "rightVolume"    # F

    .line 210
    iget-object v0, p0, Landroid/media/PlayerBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 211
    :try_start_0
    iput p1, p0, Landroid/media/PlayerBase;->mLeftVolume:F

    .line 212
    iput p2, p0, Landroid/media/PlayerBase;->mRightVolume:F

    .line 213
    invoke-virtual {p0}, Landroid/media/PlayerBase;->isRestricted_sync()Z

    move-result v1

    .line 214
    .local v1, "isRestricted":Z
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 215
    iget v0, p0, Landroid/media/PlayerBase;->mPanMultiplierL:F

    mul-float/2addr v0, p1

    iget v2, p0, Landroid/media/PlayerBase;->mPanMultiplierR:F

    mul-float/2addr v2, p2

    invoke-virtual {p0, v1, v0, v2}, Landroid/media/PlayerBase;->playerSetVolume(ZFF)V

    .line 217
    return-void

    .line 214
    .end local v1    # "isRestricted":Z
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method baseStart()V
    .locals 3

    .line 164
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/media/PlayerBase;->updateState(I)V

    .line 165
    iget-object v0, p0, Landroid/media/PlayerBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 166
    :try_start_0
    invoke-virtual {p0}, Landroid/media/PlayerBase;->isRestricted_sync()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 167
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v2}, Landroid/media/PlayerBase;->playerSetVolume(ZFF)V

    .line 169
    :cond_0
    monitor-exit v0

    .line 170
    return-void

    .line 169
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method baseStop()V
    .locals 1

    .line 191
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/media/PlayerBase;->updateState(I)V

    .line 192
    return-void
.end method

.method baseUpdateAudioAttributes(Landroid/media/AudioAttributes;)V
    .locals 3
    .param p1, "attr"    # Landroid/media/AudioAttributes;

    .line 132
    if-eqz p1, :cond_1

    .line 136
    :try_start_0
    invoke-static {}, Landroid/media/PlayerBase;->getService()Landroid/media/IAudioService;

    move-result-object v0

    iget v1, p0, Landroid/media/PlayerBase;->mPlayerIId:I

    invoke-interface {v0, v1, p1}, Landroid/media/IAudioService;->playerAttributes(ILandroid/media/AudioAttributes;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    goto :goto_0

    .line 137
    :catch_0
    move-exception v0

    .line 138
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "PlayerBase"

    const-string v2, "Error talking to audio service, STARTED state will not be tracked"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 140
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    iget-object v0, p0, Landroid/media/PlayerBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 141
    :try_start_1
    iget-object v1, p0, Landroid/media/PlayerBase;->mAttributes:Landroid/media/AudioAttributes;

    if-eq v1, p1, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    .line 142
    .local v1, "attributesChanged":Z
    :goto_1
    iput-object p1, p0, Landroid/media/PlayerBase;->mAttributes:Landroid/media/AudioAttributes;

    .line 143
    invoke-virtual {p0, v1}, Landroid/media/PlayerBase;->updateAppOpsPlayAudio_sync(Z)V

    .line 144
    .end local v1    # "attributesChanged":Z
    monitor-exit v0

    .line 145
    return-void

    .line 144
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 133
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal null AudioAttributes"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected getStartDelayMs()I
    .locals 2

    .line 179
    iget-object v0, p0, Landroid/media/PlayerBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 180
    :try_start_0
    iget v1, p0, Landroid/media/PlayerBase;->mStartDelayMs:I

    monitor-exit v0

    return v1

    .line 181
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method isRestricted_sync()Z
    .locals 6

    .line 319
    iget-boolean v0, p0, Landroid/media/PlayerBase;->mHasAppOpsPlayAudio:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 320
    return v1

    .line 323
    :cond_0
    iget-object v0, p0, Landroid/media/PlayerBase;->mAttributes:Landroid/media/AudioAttributes;

    invoke-virtual {v0}, Landroid/media/AudioAttributes;->getAllFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_1

    .line 324
    return v1

    .line 327
    :cond_1
    iget-object v0, p0, Landroid/media/PlayerBase;->mAttributes:Landroid/media/AudioAttributes;

    invoke-virtual {v0}, Landroid/media/AudioAttributes;->getAllFlags()I

    move-result v0

    const/4 v2, 0x1

    and-int/2addr v0, v2

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/media/PlayerBase;->mAttributes:Landroid/media/AudioAttributes;

    .line 328
    invoke-virtual {v0}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v0

    const/16 v3, 0xd

    if-ne v0, v3, :cond_2

    .line 329
    move v0, v1

    .line 331
    .local v0, "cameraSoundForced":Z
    :try_start_0
    invoke-static {}, Landroid/media/PlayerBase;->getService()Landroid/media/IAudioService;

    move-result-object v3

    invoke-interface {v3}, Landroid/media/IAudioService;->isCameraSoundForced()Z

    move-result v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v3

    .line 336
    :goto_0
    goto :goto_1

    .line 334
    :catch_0
    move-exception v3

    .line 335
    .local v3, "e":Ljava/lang/NullPointerException;
    const-string v4, "PlayerBase"

    const-string v5, "Null AudioService in isRestricted_sync()"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v3    # "e":Ljava/lang/NullPointerException;
    goto :goto_1

    .line 332
    :catch_1
    move-exception v3

    .line 333
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "PlayerBase"

    const-string v5, "Cannot access AudioService in isRestricted_sync()"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v3    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 337
    :goto_1
    if-eqz v0, :cond_2

    .line 338
    return v1

    .line 341
    .end local v0    # "cameraSoundForced":Z
    :cond_2
    return v2
.end method

.method abstract playerApplyVolumeShaper(Landroid/media/VolumeShaper$Configuration;Landroid/media/VolumeShaper$Operation;)I
.end method

.method abstract playerGetVolumeShaperState(I)Landroid/media/VolumeShaper$State;
.end method

.method abstract playerPause()V
.end method

.method abstract playerSetAuxEffectSendLevel(ZF)I
.end method

.method abstract playerSetVolume(ZFF)V
.end method

.method abstract playerStart()V
.end method

.method abstract playerStop()V
.end method

.method public setStartDelayMs(I)V
    .locals 0
    .param p1, "delayMs"    # I

    .line 359
    invoke-virtual {p0, p1}, Landroid/media/PlayerBase;->baseSetStartDelayMs(I)V

    .line 360
    return-void
.end method

.method updateAppOpsPlayAudio_sync(Z)V
    .locals 9
    .param p1, "attributesChanged"    # Z

    .line 269
    iget-boolean v0, p0, Landroid/media/PlayerBase;->mHasAppOpsPlayAudio:Z

    .line 271
    .local v0, "oldHasAppOpsPlayAudio":Z
    const/4 v1, 0x1

    .line 272
    .local v1, "mode":I
    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_0
    iget-object v4, p0, Landroid/media/PlayerBase;->mAppOps:Lcom/android/internal/app/IAppOpsService;

    if-eqz v4, :cond_0

    .line 273
    iget-object v4, p0, Landroid/media/PlayerBase;->mAppOps:Lcom/android/internal/app/IAppOpsService;

    const/16 v5, 0x1c

    iget-object v6, p0, Landroid/media/PlayerBase;->mAttributes:Landroid/media/AudioAttributes;

    .line 274
    invoke-virtual {v6}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v6

    .line 275
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v7

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v8

    .line 273
    invoke-interface {v4, v5, v6, v7, v8}, Lcom/android/internal/app/IAppOpsService;->checkAudioOperation(IIILjava/lang/String;)I

    move-result v4

    move v1, v4

    .line 277
    :cond_0
    if-nez v1, :cond_1

    move v4, v2

    goto :goto_0

    :cond_1
    move v4, v3

    :goto_0
    iput-boolean v4, p0, Landroid/media/PlayerBase;->mHasAppOpsPlayAudio:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 280
    .end local v1    # "mode":I
    goto :goto_1

    .line 278
    :catch_0
    move-exception v1

    .line 279
    .local v1, "e":Landroid/os/RemoteException;
    iput-boolean v3, p0, Landroid/media/PlayerBase;->mHasAppOpsPlayAudio:Z

    .line 285
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_1
    :try_start_1
    iget-boolean v1, p0, Landroid/media/PlayerBase;->mHasAppOpsPlayAudio:Z

    if-ne v0, v1, :cond_2

    if-eqz p1, :cond_4

    .line 287
    :cond_2
    invoke-static {}, Landroid/media/PlayerBase;->getService()Landroid/media/IAudioService;

    move-result-object v1

    iget v4, p0, Landroid/media/PlayerBase;->mPlayerIId:I

    iget-boolean v5, p0, Landroid/media/PlayerBase;->mHasAppOpsPlayAudio:Z

    invoke-interface {v1, v4, v5}, Landroid/media/IAudioService;->playerHasOpPlayAudio(IZ)V

    .line 288
    invoke-virtual {p0}, Landroid/media/PlayerBase;->isRestricted_sync()Z

    move-result v1

    if-nez v1, :cond_3

    .line 293
    iget v1, p0, Landroid/media/PlayerBase;->mLeftVolume:F

    iget v2, p0, Landroid/media/PlayerBase;->mPanMultiplierL:F

    mul-float/2addr v1, v2

    iget v2, p0, Landroid/media/PlayerBase;->mRightVolume:F

    iget v4, p0, Landroid/media/PlayerBase;->mPanMultiplierR:F

    mul-float/2addr v2, v4

    invoke-virtual {p0, v3, v1, v2}, Landroid/media/PlayerBase;->playerSetVolume(ZFF)V

    .line 295
    iget v1, p0, Landroid/media/PlayerBase;->mAuxEffectSendLevel:F

    invoke-virtual {p0, v3, v1}, Landroid/media/PlayerBase;->playerSetAuxEffectSendLevel(ZF)I

    goto :goto_2

    .line 300
    :cond_3
    const/4 v1, 0x0

    invoke-virtual {p0, v2, v1, v1}, Landroid/media/PlayerBase;->playerSetVolume(ZFF)V

    .line 301
    invoke-virtual {p0, v2, v1}, Landroid/media/PlayerBase;->playerSetAuxEffectSendLevel(ZF)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 306
    :cond_4
    :goto_2
    goto :goto_3

    .line 304
    :catch_1
    move-exception v1

    .line 307
    :goto_3
    return-void
.end method
