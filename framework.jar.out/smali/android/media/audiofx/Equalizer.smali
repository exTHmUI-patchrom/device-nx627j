.class public Landroid/media/audiofx/Equalizer;
.super Landroid/media/audiofx/AudioEffect;
.source "Equalizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/audiofx/Equalizer$Settings;,
        Landroid/media/audiofx/Equalizer$BaseParameterListener;,
        Landroid/media/audiofx/Equalizer$OnParameterChangeListener;
    }
.end annotation


# static fields
.field public static final PARAM_BAND_FREQ_RANGE:I = 0x4

.field public static final PARAM_BAND_LEVEL:I = 0x2

.field public static final PARAM_CENTER_FREQ:I = 0x3

.field public static final PARAM_CURRENT_PRESET:I = 0x6

.field public static final PARAM_GET_BAND:I = 0x5

.field public static final PARAM_GET_NUM_OF_PRESETS:I = 0x7

.field public static final PARAM_GET_PRESET_NAME:I = 0x8

.field public static final PARAM_LEVEL_RANGE:I = 0x1

.field public static final PARAM_NUM_BANDS:I = 0x0

.field private static final PARAM_PROPERTIES:I = 0x9

.field public static final PARAM_STRING_SIZE_MAX:I = 0x20

.field private static final TAG:Ljava/lang/String; = "Equalizer"


# instance fields
.field private mBaseParamListener:Landroid/media/audiofx/Equalizer$BaseParameterListener;

.field private mNumBands:S

.field private mNumPresets:I

.field private mParamListener:Landroid/media/audiofx/Equalizer$OnParameterChangeListener;

.field private final mParamListenerLock:Ljava/lang/Object;

.field private mPresetNames:[Ljava/lang/String;


# direct methods
.method public constructor <init>(II)V
    .locals 8
    .param p1, "priority"    # I
    .param p2, "audioSession"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 139
    sget-object v0, Landroid/media/audiofx/Equalizer;->EFFECT_TYPE_EQUALIZER:Ljava/util/UUID;

    sget-object v1, Landroid/media/audiofx/Equalizer;->EFFECT_TYPE_NULL:Ljava/util/UUID;

    invoke-direct {p0, v0, v1, p1, p2}, Landroid/media/audiofx/AudioEffect;-><init>(Ljava/util/UUID;Ljava/util/UUID;II)V

    .line 96
    const/4 v0, 0x0

    iput-short v0, p0, Landroid/media/audiofx/Equalizer;->mNumBands:S

    .line 110
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/audiofx/Equalizer;->mParamListener:Landroid/media/audiofx/Equalizer$OnParameterChangeListener;

    .line 115
    iput-object v1, p0, Landroid/media/audiofx/Equalizer;->mBaseParamListener:Landroid/media/audiofx/Equalizer$BaseParameterListener;

    .line 120
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/media/audiofx/Equalizer;->mParamListenerLock:Ljava/lang/Object;

    .line 141
    if-nez p2, :cond_0

    .line 142
    const-string v1, "Equalizer"

    const-string v2, "WARNING: attaching an Equalizer to global output mix is deprecated!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    :cond_0
    invoke-virtual {p0}, Landroid/media/audiofx/Equalizer;->getNumberOfBands()S

    .line 147
    invoke-virtual {p0}, Landroid/media/audiofx/Equalizer;->getNumberOfPresets()S

    move-result v1

    iput v1, p0, Landroid/media/audiofx/Equalizer;->mNumPresets:I

    .line 149
    iget v1, p0, Landroid/media/audiofx/Equalizer;->mNumPresets:I

    if-eqz v1, :cond_2

    .line 150
    iget v1, p0, Landroid/media/audiofx/Equalizer;->mNumPresets:I

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Landroid/media/audiofx/Equalizer;->mPresetNames:[Ljava/lang/String;

    .line 151
    const/16 v1, 0x20

    new-array v1, v1, [B

    .line 152
    .local v1, "value":[B
    const/4 v2, 0x2

    new-array v2, v2, [I

    .line 153
    .local v2, "param":[I
    const/16 v3, 0x8

    aput v3, v2, v0

    .line 154
    move v3, v0

    .line 154
    .local v3, "i":I
    :goto_0
    iget v4, p0, Landroid/media/audiofx/Equalizer;->mNumPresets:I

    if-ge v3, v4, :cond_2

    .line 155
    const/4 v4, 0x1

    aput v3, v2, v4

    .line 156
    invoke-virtual {p0, v2, v1}, Landroid/media/audiofx/Equalizer;->getParameter([I[B)I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/media/audiofx/Equalizer;->checkStatus(I)V

    .line 157
    move v4, v0

    .line 158
    .local v4, "length":I
    :goto_1
    aget-byte v5, v1, v4

    if-eqz v5, :cond_1

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 160
    :cond_1
    :try_start_0
    iget-object v5, p0, Landroid/media/audiofx/Equalizer;->mPresetNames:[Ljava/lang/String;

    new-instance v6, Ljava/lang/String;

    const-string v7, "ISO-8859-1"

    invoke-direct {v6, v1, v0, v4, v7}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    aput-object v6, v5, v3
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    goto :goto_2

    .line 161
    :catch_0
    move-exception v5

    .line 162
    .local v5, "e":Ljava/io/UnsupportedEncodingException;
    const-string v6, "Equalizer"

    const-string/jumbo v7, "preset name decode error"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    .end local v4    # "length":I
    .end local v5    # "e":Ljava/io/UnsupportedEncodingException;
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 166
    .end local v1    # "value":[B
    .end local v2    # "param":[I
    .end local v3    # "i":I
    :cond_2
    return-void
.end method

.method static synthetic access$000(Landroid/media/audiofx/Equalizer;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Landroid/media/audiofx/Equalizer;

    .line 42
    iget-object v0, p0, Landroid/media/audiofx/Equalizer;->mParamListenerLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Landroid/media/audiofx/Equalizer;)Landroid/media/audiofx/Equalizer$OnParameterChangeListener;
    .locals 1
    .param p0, "x0"    # Landroid/media/audiofx/Equalizer;

    .line 42
    iget-object v0, p0, Landroid/media/audiofx/Equalizer;->mParamListener:Landroid/media/audiofx/Equalizer$OnParameterChangeListener;

    return-object v0
.end method


# virtual methods
.method public getBand(I)S
    .locals 5
    .param p1, "frequency"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 300
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 301
    .local v0, "param":[I
    const/4 v1, 0x1

    new-array v2, v1, [S

    .line 303
    .local v2, "result":[S
    const/4 v3, 0x0

    const/4 v4, 0x5

    aput v4, v0, v3

    .line 304
    aput p1, v0, v1

    .line 305
    invoke-virtual {p0, v0, v2}, Landroid/media/audiofx/Equalizer;->getParameter([I[S)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/media/audiofx/Equalizer;->checkStatus(I)V

    .line 307
    aget-short v1, v2, v3

    return v1
.end method

.method public getBandFreqRange(S)[I
    .locals 4
    .param p1, "band"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 281
    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 282
    .local v1, "param":[I
    new-array v0, v0, [I

    .line 283
    .local v0, "result":[I
    const/4 v2, 0x0

    const/4 v3, 0x4

    aput v3, v1, v2

    .line 284
    const/4 v2, 0x1

    aput p1, v1, v2

    .line 285
    invoke-virtual {p0, v1, v0}, Landroid/media/audiofx/Equalizer;->getParameter([I[I)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/media/audiofx/Equalizer;->checkStatus(I)V

    .line 287
    return-object v0
.end method

.method public getBandLevel(S)S
    .locals 5
    .param p1, "band"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 237
    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 238
    .local v1, "param":[I
    const/4 v2, 0x1

    new-array v3, v2, [S

    .line 240
    .local v3, "result":[S
    const/4 v4, 0x0

    aput v0, v1, v4

    .line 241
    aput p1, v1, v2

    .line 242
    invoke-virtual {p0, v1, v3}, Landroid/media/audiofx/Equalizer;->getParameter([I[S)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/media/audiofx/Equalizer;->checkStatus(I)V

    .line 244
    aget-short v0, v3, v4

    return v0
.end method

.method public getBandLevelRange()[S
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 199
    const/4 v0, 0x2

    new-array v0, v0, [S

    .line 200
    .local v0, "result":[S
    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Landroid/media/audiofx/Equalizer;->getParameter(I[S)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/media/audiofx/Equalizer;->checkStatus(I)V

    .line 201
    return-object v0
.end method

.method public getCenterFreq(S)I
    .locals 5
    .param p1, "band"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 259
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 260
    .local v0, "param":[I
    const/4 v1, 0x1

    new-array v2, v1, [I

    .line 262
    .local v2, "result":[I
    const/4 v3, 0x0

    const/4 v4, 0x3

    aput v4, v0, v3

    .line 263
    aput p1, v0, v1

    .line 264
    invoke-virtual {p0, v0, v2}, Landroid/media/audiofx/Equalizer;->getParameter([I[I)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/media/audiofx/Equalizer;->checkStatus(I)V

    .line 266
    aget v1, v2, v3

    return v1
.end method

.method public getCurrentPreset()S
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 319
    const/4 v0, 0x1

    new-array v0, v0, [S

    .line 320
    .local v0, "result":[S
    const/4 v1, 0x6

    invoke-virtual {p0, v1, v0}, Landroid/media/audiofx/Equalizer;->getParameter(I[S)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/media/audiofx/Equalizer;->checkStatus(I)V

    .line 321
    const/4 v1, 0x0

    aget-short v1, v0, v1

    return v1
.end method

.method public getNumberOfBands()S
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 177
    iget-short v0, p0, Landroid/media/audiofx/Equalizer;->mNumBands:S

    if-eqz v0, :cond_0

    .line 178
    iget-short v0, p0, Landroid/media/audiofx/Equalizer;->mNumBands:S

    return v0

    .line 180
    :cond_0
    const/4 v0, 0x1

    new-array v1, v0, [I

    .line 181
    .local v1, "param":[I
    const/4 v2, 0x0

    aput v2, v1, v2

    .line 182
    new-array v0, v0, [S

    .line 183
    .local v0, "result":[S
    invoke-virtual {p0, v1, v0}, Landroid/media/audiofx/Equalizer;->getParameter([I[S)I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/media/audiofx/Equalizer;->checkStatus(I)V

    .line 184
    aget-short v2, v0, v2

    iput-short v2, p0, Landroid/media/audiofx/Equalizer;->mNumBands:S

    .line 185
    iget-short v2, p0, Landroid/media/audiofx/Equalizer;->mNumBands:S

    return v2
.end method

.method public getNumberOfPresets()S
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 348
    const/4 v0, 0x1

    new-array v0, v0, [S

    .line 349
    .local v0, "result":[S
    const/4 v1, 0x7

    invoke-virtual {p0, v1, v0}, Landroid/media/audiofx/Equalizer;->getParameter(I[S)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/media/audiofx/Equalizer;->checkStatus(I)V

    .line 350
    const/4 v1, 0x0

    aget-short v1, v0, v1

    return v1
.end method

.method public getPresetName(S)Ljava/lang/String;
    .locals 1
    .param p1, "preset"    # S

    .line 363
    if-ltz p1, :cond_0

    iget v0, p0, Landroid/media/audiofx/Equalizer;->mNumPresets:I

    if-ge p1, v0, :cond_0

    .line 364
    iget-object v0, p0, Landroid/media/audiofx/Equalizer;->mPresetNames:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0

    .line 366
    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getProperties()Landroid/media/audiofx/Equalizer$Settings;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 524
    iget-short v0, p0, Landroid/media/audiofx/Equalizer;->mNumBands:S

    const/4 v1, 0x2

    mul-int/2addr v0, v1

    const/4 v2, 0x4

    add-int/2addr v0, v2

    new-array v0, v0, [B

    .line 525
    .local v0, "param":[B
    const/16 v3, 0x9

    invoke-virtual {p0, v3, v0}, Landroid/media/audiofx/Equalizer;->getParameter(I[B)I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/media/audiofx/Equalizer;->checkStatus(I)V

    .line 526
    new-instance v3, Landroid/media/audiofx/Equalizer$Settings;

    invoke-direct {v3}, Landroid/media/audiofx/Equalizer$Settings;-><init>()V

    .line 527
    .local v3, "settings":Landroid/media/audiofx/Equalizer$Settings;
    const/4 v4, 0x0

    invoke-static {v0, v4}, Landroid/media/audiofx/Equalizer;->byteArrayToShort([BI)S

    move-result v5

    iput-short v5, v3, Landroid/media/audiofx/Equalizer$Settings;->curPreset:S

    .line 528
    invoke-static {v0, v1}, Landroid/media/audiofx/Equalizer;->byteArrayToShort([BI)S

    move-result v5

    iput-short v5, v3, Landroid/media/audiofx/Equalizer$Settings;->numBands:S

    .line 529
    iget-short v5, p0, Landroid/media/audiofx/Equalizer;->mNumBands:S

    new-array v5, v5, [S

    iput-object v5, v3, Landroid/media/audiofx/Equalizer$Settings;->bandLevels:[S

    .line 530
    nop

    .local v4, "i":I
    :goto_0
    iget-short v5, p0, Landroid/media/audiofx/Equalizer;->mNumBands:S

    if-ge v4, v5, :cond_0

    .line 531
    iget-object v5, v3, Landroid/media/audiofx/Equalizer$Settings;->bandLevels:[S

    mul-int v6, v1, v4

    add-int/2addr v6, v2

    invoke-static {v0, v6}, Landroid/media/audiofx/Equalizer;->byteArrayToShort([BI)S

    move-result v6

    aput-short v6, v5, v4

    .line 530
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 533
    .end local v4    # "i":I
    :cond_0
    return-object v3
.end method

.method public setBandLevel(SS)V
    .locals 5
    .param p1, "band"    # S
    .param p2, "level"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 217
    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 218
    .local v1, "param":[I
    const/4 v2, 0x1

    new-array v3, v2, [S

    .line 220
    .local v3, "value":[S
    const/4 v4, 0x0

    aput v0, v1, v4

    .line 221
    aput p1, v1, v2

    .line 222
    aput-short p2, v3, v4

    .line 223
    invoke-virtual {p0, v1, v3}, Landroid/media/audiofx/Equalizer;->setParameter([I[S)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/media/audiofx/Equalizer;->checkStatus(I)V

    .line 224
    return-void
.end method

.method public setParameterListener(Landroid/media/audiofx/Equalizer$OnParameterChangeListener;)V
    .locals 3
    .param p1, "listener"    # Landroid/media/audiofx/Equalizer$OnParameterChangeListener;

    .line 433
    iget-object v0, p0, Landroid/media/audiofx/Equalizer;->mParamListenerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 434
    :try_start_0
    iget-object v1, p0, Landroid/media/audiofx/Equalizer;->mParamListener:Landroid/media/audiofx/Equalizer$OnParameterChangeListener;

    if-nez v1, :cond_0

    .line 435
    iput-object p1, p0, Landroid/media/audiofx/Equalizer;->mParamListener:Landroid/media/audiofx/Equalizer$OnParameterChangeListener;

    .line 436
    new-instance v1, Landroid/media/audiofx/Equalizer$BaseParameterListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/media/audiofx/Equalizer$BaseParameterListener;-><init>(Landroid/media/audiofx/Equalizer;Landroid/media/audiofx/Equalizer$1;)V

    iput-object v1, p0, Landroid/media/audiofx/Equalizer;->mBaseParamListener:Landroid/media/audiofx/Equalizer$BaseParameterListener;

    .line 437
    iget-object v1, p0, Landroid/media/audiofx/Equalizer;->mBaseParamListener:Landroid/media/audiofx/Equalizer$BaseParameterListener;

    invoke-super {p0, v1}, Landroid/media/audiofx/AudioEffect;->setParameterListener(Landroid/media/audiofx/AudioEffect$OnParameterChangeListener;)V

    .line 439
    :cond_0
    monitor-exit v0

    .line 440
    return-void

    .line 439
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setProperties(Landroid/media/audiofx/Equalizer$Settings;)V
    .locals 7
    .param p1, "settings"    # Landroid/media/audiofx/Equalizer$Settings;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 546
    iget-short v0, p1, Landroid/media/audiofx/Equalizer$Settings;->numBands:S

    iget-object v1, p1, Landroid/media/audiofx/Equalizer$Settings;->bandLevels:[S

    array-length v1, v1

    if-ne v0, v1, :cond_1

    iget-short v0, p1, Landroid/media/audiofx/Equalizer$Settings;->numBands:S

    iget-short v1, p0, Landroid/media/audiofx/Equalizer;->mNumBands:S

    if-ne v0, v1, :cond_1

    .line 551
    const/4 v0, 0x2

    new-array v1, v0, [[B

    iget-short v2, p1, Landroid/media/audiofx/Equalizer$Settings;->curPreset:S

    invoke-static {v2}, Landroid/media/audiofx/Equalizer;->shortToByteArray(S)[B

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-short v2, p0, Landroid/media/audiofx/Equalizer;->mNumBands:S

    .line 552
    invoke-static {v2}, Landroid/media/audiofx/Equalizer;->shortToByteArray(S)[B

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    .line 551
    invoke-static {v1}, Landroid/media/audiofx/Equalizer;->concatArrays([[B)[B

    move-result-object v1

    .line 553
    .local v1, "param":[B
    move-object v2, v1

    move v1, v3

    .line 553
    .local v1, "i":I
    .local v2, "param":[B
    :goto_0
    iget-short v5, p0, Landroid/media/audiofx/Equalizer;->mNumBands:S

    if-ge v1, v5, :cond_0

    .line 554
    new-array v5, v0, [[B

    aput-object v2, v5, v3

    iget-object v6, p1, Landroid/media/audiofx/Equalizer$Settings;->bandLevels:[S

    aget-short v6, v6, v1

    .line 555
    invoke-static {v6}, Landroid/media/audiofx/Equalizer;->shortToByteArray(S)[B

    move-result-object v6

    aput-object v6, v5, v4

    .line 554
    invoke-static {v5}, Landroid/media/audiofx/Equalizer;->concatArrays([[B)[B

    move-result-object v2

    .line 553
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 557
    .end local v1    # "i":I
    :cond_0
    const/16 v0, 0x9

    invoke-virtual {p0, v0, v2}, Landroid/media/audiofx/Equalizer;->setParameter(I[B)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/media/audiofx/Equalizer;->checkStatus(I)V

    .line 558
    return-void

    .line 548
    .end local v2    # "param":[B
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "settings invalid band count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short v2, p1, Landroid/media/audiofx/Equalizer$Settings;->numBands:S

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public usePreset(S)V
    .locals 1
    .param p1, "preset"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 335
    const/4 v0, 0x6

    invoke-virtual {p0, v0, p1}, Landroid/media/audiofx/Equalizer;->setParameter(IS)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/media/audiofx/Equalizer;->checkStatus(I)V

    .line 336
    return-void
.end method
