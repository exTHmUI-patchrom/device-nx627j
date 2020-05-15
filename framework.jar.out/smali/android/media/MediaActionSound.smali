.class public Landroid/media/MediaActionSound;
.super Ljava/lang/Object;
.source "MediaActionSound.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaActionSound$SoundState;
    }
.end annotation


# static fields
.field public static final FOCUS_COMPLETE:I = 0x1

.field private static final NUM_MEDIA_SOUND_STREAMS:I = 0x1

.field public static final SHUTTER_CLICK:I = 0x0

.field private static final SOUND_DIRS:[Ljava/lang/String;

.field private static final SOUND_FILES:[Ljava/lang/String;

.field public static final START_VIDEO_RECORDING:I = 0x2

.field private static final STATE_LOADED:I = 0x3

.field private static final STATE_LOADING:I = 0x1

.field private static final STATE_LOADING_PLAY_REQUESTED:I = 0x2

.field private static final STATE_NOT_LOADED:I = 0x0

.field public static final STOP_VIDEO_RECORDING:I = 0x3

.field private static final TAG:Ljava/lang/String; = "MediaActionSound"


# instance fields
.field private mLoadCompleteListener:Landroid/media/SoundPool$OnLoadCompleteListener;

.field private mSoundPool:Landroid/media/SoundPool;

.field private mSounds:[Landroid/media/MediaActionSound$SoundState;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 54
    const-string v0, "/product/media/audio/ui/"

    const-string v1, "/data/system/theme/current/audioeffect/"

    const-string v2, "/system/media/audio/ui/"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/media/MediaActionSound;->SOUND_DIRS:[Ljava/lang/String;

    .line 62
    const-string v1, "camera_click.ogg"

    const-string v2, "camera_focus.ogg"

    const-string v3, "VideoRecord.ogg"

    const-string v4, "VideoStop.ogg"

    const-string v5, "ZoomSound.ogg"

    const-string v6, "cameraCountdownSlow.ogg"

    const-string v7, "cameraCountdownFast.ogg"

    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/media/MediaActionSound;->SOUND_FILES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 262
    new-instance v0, Landroid/media/MediaActionSound$1;

    invoke-direct {v0, p0}, Landroid/media/MediaActionSound$1;-><init>(Landroid/media/MediaActionSound;)V

    iput-object v0, p0, Landroid/media/MediaActionSound;->mLoadCompleteListener:Landroid/media/SoundPool$OnLoadCompleteListener;

    .line 139
    new-instance v0, Landroid/media/SoundPool$Builder;

    invoke-direct {v0}, Landroid/media/SoundPool$Builder;-><init>()V

    .line 140
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/SoundPool$Builder;->setMaxStreams(I)Landroid/media/SoundPool$Builder;

    move-result-object v0

    new-instance v2, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v2}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 142
    const/16 v3, 0xd

    invoke-virtual {v2, v3}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v2

    .line 143
    invoke-virtual {v2, v1}, Landroid/media/AudioAttributes$Builder;->setFlags(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    .line 144
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    .line 145
    invoke-virtual {v1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v1

    .line 141
    invoke-virtual {v0, v1}, Landroid/media/SoundPool$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/SoundPool$Builder;

    move-result-object v0

    .line 146
    invoke-virtual {v0}, Landroid/media/SoundPool$Builder;->build()Landroid/media/SoundPool;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaActionSound;->mSoundPool:Landroid/media/SoundPool;

    .line 147
    iget-object v0, p0, Landroid/media/MediaActionSound;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Landroid/media/MediaActionSound;->mLoadCompleteListener:Landroid/media/SoundPool$OnLoadCompleteListener;

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    .line 148
    sget-object v0, Landroid/media/MediaActionSound;->SOUND_FILES:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [Landroid/media/MediaActionSound$SoundState;

    iput-object v0, p0, Landroid/media/MediaActionSound;->mSounds:[Landroid/media/MediaActionSound$SoundState;

    .line 149
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/media/MediaActionSound;->mSounds:[Landroid/media/MediaActionSound$SoundState;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 150
    iget-object v1, p0, Landroid/media/MediaActionSound;->mSounds:[Landroid/media/MediaActionSound$SoundState;

    new-instance v2, Landroid/media/MediaActionSound$SoundState;

    invoke-direct {v2, p0, v0}, Landroid/media/MediaActionSound$SoundState;-><init>(Landroid/media/MediaActionSound;I)V

    aput-object v2, v1, v0

    .line 149
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 152
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method static synthetic access$000(Landroid/media/MediaActionSound;)[Landroid/media/MediaActionSound$SoundState;
    .locals 1
    .param p0, "x0"    # Landroid/media/MediaActionSound;

    .line 48
    iget-object v0, p0, Landroid/media/MediaActionSound;->mSounds:[Landroid/media/MediaActionSound$SoundState;

    return-object v0
.end method

.method private loadSound(Landroid/media/MediaActionSound$SoundState;)I
    .locals 9
    .param p1, "sound"    # Landroid/media/MediaActionSound$SoundState;

    .line 155
    sget-object v0, Landroid/media/MediaActionSound;->SOUND_FILES:[Ljava/lang/String;

    iget v1, p1, Landroid/media/MediaActionSound$SoundState;->name:I

    aget-object v0, v0, v1

    .line 156
    .local v0, "soundFileName":Ljava/lang/String;
    sget-object v1, Landroid/media/MediaActionSound;->SOUND_DIRS:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v1, v4

    .line 162
    .local v5, "soundDir":Ljava/lang/String;
    iget-object v6, p0, Landroid/media/MediaActionSound;->mSoundPool:Landroid/media/SoundPool;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v6

    .line 163
    .local v6, "id":I
    if-lez v6, :cond_0

    .line 164
    iput v8, p1, Landroid/media/MediaActionSound$SoundState;->state:I

    .line 165
    iput v6, p1, Landroid/media/MediaActionSound$SoundState;->id:I

    .line 166
    return v6

    .line 156
    .end local v5    # "soundDir":Ljava/lang/String;
    .end local v6    # "id":I
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 169
    :cond_1
    return v3
.end method


# virtual methods
.method public load(I)V
    .locals 4
    .param p1, "soundName"    # I

    .line 185
    if-ltz p1, :cond_2

    sget-object v0, Landroid/media/MediaActionSound;->SOUND_FILES:[Ljava/lang/String;

    array-length v0, v0

    if-ge p1, v0, :cond_2

    .line 188
    iget-object v0, p0, Landroid/media/MediaActionSound;->mSounds:[Landroid/media/MediaActionSound$SoundState;

    aget-object v0, v0, p1

    .line 189
    .local v0, "sound":Landroid/media/MediaActionSound$SoundState;
    monitor-enter v0

    .line 190
    :try_start_0
    iget v1, v0, Landroid/media/MediaActionSound$SoundState;->state:I

    if-eqz v1, :cond_0

    .line 197
    const-string v1, "MediaActionSound"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "load() called in wrong state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " for sound: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 192
    :cond_0
    invoke-direct {p0, v0}, Landroid/media/MediaActionSound;->loadSound(Landroid/media/MediaActionSound$SoundState;)I

    move-result v1

    if-gtz v1, :cond_1

    .line 193
    const-string v1, "MediaActionSound"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "load() error loading sound: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    :cond_1
    :goto_0
    monitor-exit v0

    .line 201
    return-void

    .line 200
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 186
    .end local v0    # "sound":Landroid/media/MediaActionSound$SoundState;
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown sound requested: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public play(I)V
    .locals 9
    .param p1, "soundName"    # I

    .line 235
    if-ltz p1, :cond_2

    sget-object v0, Landroid/media/MediaActionSound;->SOUND_FILES:[Ljava/lang/String;

    array-length v0, v0

    if-ge p1, v0, :cond_2

    .line 238
    iget-object v0, p0, Landroid/media/MediaActionSound;->mSounds:[Landroid/media/MediaActionSound$SoundState;

    aget-object v0, v0, p1

    .line 239
    .local v0, "sound":Landroid/media/MediaActionSound$SoundState;
    monitor-enter v0

    .line 240
    :try_start_0
    iget v1, v0, Landroid/media/MediaActionSound$SoundState;->state:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    packed-switch v1, :pswitch_data_0

    .line 256
    const-string v1, "MediaActionSound"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "play() called in wrong state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Landroid/media/MediaActionSound$SoundState;->state:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " for sound: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 242
    :pswitch_0
    invoke-direct {p0, v0}, Landroid/media/MediaActionSound;->loadSound(Landroid/media/MediaActionSound$SoundState;)I

    .line 243
    invoke-direct {p0, v0}, Landroid/media/MediaActionSound;->loadSound(Landroid/media/MediaActionSound$SoundState;)I

    move-result v1

    if-gtz v1, :cond_0

    .line 244
    const-string v1, "MediaActionSound"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "play() error loading sound: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    goto :goto_0

    .line 250
    :cond_0
    :pswitch_1
    const/4 v1, 0x2

    iput v1, v0, Landroid/media/MediaActionSound$SoundState;->state:I

    .line 251
    goto :goto_0

    .line 253
    :cond_1
    iget-object v2, p0, Landroid/media/MediaActionSound;->mSoundPool:Landroid/media/SoundPool;

    iget v3, v0, Landroid/media/MediaActionSound$SoundState;->id:I

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual/range {v2 .. v8}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 254
    nop

    .line 259
    :goto_0
    monitor-exit v0

    .line 260
    return-void

    .line 259
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 236
    .end local v0    # "sound":Landroid/media/MediaActionSound$SoundState;
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown sound requested: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public release()V
    .locals 5

    .line 307
    iget-object v0, p0, Landroid/media/MediaActionSound;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_1

    .line 308
    iget-object v0, p0, Landroid/media/MediaActionSound;->mSounds:[Landroid/media/MediaActionSound$SoundState;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    .line 309
    .local v4, "sound":Landroid/media/MediaActionSound$SoundState;
    monitor-enter v4

    .line 310
    :try_start_0
    iput v2, v4, Landroid/media/MediaActionSound$SoundState;->state:I

    .line 311
    iput v2, v4, Landroid/media/MediaActionSound$SoundState;->id:I

    .line 312
    monitor-exit v4

    .line 308
    .end local v4    # "sound":Landroid/media/MediaActionSound$SoundState;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 312
    .restart local v4    # "sound":Landroid/media/MediaActionSound$SoundState;
    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 314
    .end local v4    # "sound":Landroid/media/MediaActionSound$SoundState;
    :cond_0
    iget-object v0, p0, Landroid/media/MediaActionSound;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    .line 315
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/MediaActionSound;->mSoundPool:Landroid/media/SoundPool;

    .line 317
    :cond_1
    return-void
.end method
