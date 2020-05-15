.class public final Landroid/bluetooth/BluetoothCodecConfig;
.super Ljava/lang/Object;
.source "BluetoothCodecConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final BITS_PER_SAMPLE_16:I = 0x1

.field public static final BITS_PER_SAMPLE_24:I = 0x2

.field public static final BITS_PER_SAMPLE_32:I = 0x4

.field public static final BITS_PER_SAMPLE_NONE:I = 0x0

.field public static final CHANNEL_MODE_MONO:I = 0x1

.field public static final CHANNEL_MODE_NONE:I = 0x0

.field public static final CHANNEL_MODE_STEREO:I = 0x2

.field public static final CODEC_PRIORITY_DEFAULT:I = 0x0

.field public static final CODEC_PRIORITY_DISABLED:I = -0x1

.field public static final CODEC_PRIORITY_HIGHEST:I = 0xf4240

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/bluetooth/BluetoothCodecConfig;",
            ">;"
        }
    .end annotation
.end field

.field public static final SAMPLE_RATE_176400:I = 0x10

.field public static final SAMPLE_RATE_192000:I = 0x20

.field public static final SAMPLE_RATE_44100:I = 0x1

.field public static final SAMPLE_RATE_48000:I = 0x2

.field public static final SAMPLE_RATE_88200:I = 0x4

.field public static final SAMPLE_RATE_96000:I = 0x8

.field public static final SAMPLE_RATE_NONE:I = 0x0

.field public static final SOURCE_CODEC_TYPE_AAC:I = 0x1

.field public static final SOURCE_CODEC_TYPE_APTX:I = 0x2

.field public static final SOURCE_CODEC_TYPE_APTX_ADAPTIVE:I = 0x4

.field public static final SOURCE_CODEC_TYPE_APTX_HD:I = 0x3

.field public static final SOURCE_CODEC_TYPE_APTX_TWSP:I = 0x6

.field public static final SOURCE_CODEC_TYPE_INVALID:I = 0xf4240

.field public static final SOURCE_CODEC_TYPE_LDAC:I = 0x5

.field public static final SOURCE_CODEC_TYPE_MAX:I = 0x7

.field public static final SOURCE_CODEC_TYPE_SBC:I


# instance fields
.field private final mBitsPerSample:I

.field private final mChannelMode:I

.field private mCodecPriority:I

.field private final mCodecSpecific1:J

.field private final mCodecSpecific2:J

.field private final mCodecSpecific3:J

.field private final mCodecSpecific4:J

.field private final mCodecType:I

.field private final mSampleRate:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 213
    new-instance v0, Landroid/bluetooth/BluetoothCodecConfig$1;

    invoke-direct {v0}, Landroid/bluetooth/BluetoothCodecConfig$1;-><init>()V

    sput-object v0, Landroid/bluetooth/BluetoothCodecConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IIIIIJJJJ)V
    .locals 0
    .param p1, "codecType"    # I
    .param p2, "codecPriority"    # I
    .param p3, "sampleRate"    # I
    .param p4, "bitsPerSample"    # I
    .param p5, "channelMode"    # I
    .param p6, "codecSpecific1"    # J
    .param p8, "codecSpecific2"    # J
    .param p10, "codecSpecific3"    # J
    .param p12, "codecSpecific4"    # J

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput p1, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecType:I

    .line 83
    iput p2, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecPriority:I

    .line 84
    iput p3, p0, Landroid/bluetooth/BluetoothCodecConfig;->mSampleRate:I

    .line 85
    iput p4, p0, Landroid/bluetooth/BluetoothCodecConfig;->mBitsPerSample:I

    .line 86
    iput p5, p0, Landroid/bluetooth/BluetoothCodecConfig;->mChannelMode:I

    .line 87
    iput-wide p6, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific1:J

    .line 88
    iput-wide p8, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific2:J

    .line 89
    iput-wide p10, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific3:J

    .line 90
    iput-wide p12, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific4:J

    .line 91
    return-void
.end method

.method private static appendCapabilityToString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "prevStr"    # Ljava/lang/String;
    .param p1, "capStr"    # Ljava/lang/String;

    .line 137
    if-nez p0, :cond_0

    .line 138
    return-object p1

    .line 140
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 210
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 95
    instance-of v0, p1, Landroid/bluetooth/BluetoothCodecConfig;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 96
    move-object v0, p1

    check-cast v0, Landroid/bluetooth/BluetoothCodecConfig;

    .line 97
    .local v0, "other":Landroid/bluetooth/BluetoothCodecConfig;
    iget v2, v0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecType:I

    iget v3, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecType:I

    if-ne v2, v3, :cond_0

    iget v2, v0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecPriority:I

    iget v3, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecPriority:I

    if-ne v2, v3, :cond_0

    iget v2, v0, Landroid/bluetooth/BluetoothCodecConfig;->mSampleRate:I

    iget v3, p0, Landroid/bluetooth/BluetoothCodecConfig;->mSampleRate:I

    if-ne v2, v3, :cond_0

    iget v2, v0, Landroid/bluetooth/BluetoothCodecConfig;->mBitsPerSample:I

    iget v3, p0, Landroid/bluetooth/BluetoothCodecConfig;->mBitsPerSample:I

    if-ne v2, v3, :cond_0

    iget v2, v0, Landroid/bluetooth/BluetoothCodecConfig;->mChannelMode:I

    iget v3, p0, Landroid/bluetooth/BluetoothCodecConfig;->mChannelMode:I

    if-ne v2, v3, :cond_0

    iget-wide v2, v0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific1:J

    iget-wide v4, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific1:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iget-wide v2, v0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific2:J

    iget-wide v4, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific2:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iget-wide v2, v0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific3:J

    iget-wide v4, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific3:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iget-wide v2, v0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific4:J

    iget-wide v4, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific4:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    const/4 v1, 0x1

    nop

    :cond_0
    return v1

    .line 107
    .end local v0    # "other":Landroid/bluetooth/BluetoothCodecConfig;
    :cond_1
    return v1
.end method

.method public getBitsPerSample()I
    .locals 1

    .line 348
    iget v0, p0, Landroid/bluetooth/BluetoothCodecConfig;->mBitsPerSample:I

    return v0
.end method

.method public getChannelMode()I
    .locals 1

    .line 361
    iget v0, p0, Landroid/bluetooth/BluetoothCodecConfig;->mChannelMode:I

    return v0
.end method

.method public getCodecName()Ljava/lang/String;
    .locals 2

    .line 256
    iget v0, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecType:I

    const v1, 0xf4240

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    .line 276
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN CODEC("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 270
    :pswitch_0
    const-string v0, "aptX TWS+"

    return-object v0

    .line 266
    :pswitch_1
    const-string v0, "LDAC"

    return-object v0

    .line 268
    :pswitch_2
    const-string v0, "aptX Adaptive"

    return-object v0

    .line 264
    :pswitch_3
    const-string v0, "aptX HD"

    return-object v0

    .line 262
    :pswitch_4
    const-string v0, "aptX"

    return-object v0

    .line 260
    :pswitch_5
    const-string v0, "AAC"

    return-object v0

    .line 258
    :pswitch_6
    const-string v0, "SBC"

    return-object v0

    .line 272
    :cond_0
    const-string v0, "INVALID CODEC"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getCodecPriority()I
    .locals 1

    .line 306
    iget v0, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecPriority:I

    return v0
.end method

.method public getCodecSpecific1()J
    .locals 2

    .line 370
    iget-wide v0, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific1:J

    return-wide v0
.end method

.method public getCodecSpecific2()J
    .locals 2

    .line 379
    iget-wide v0, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific2:J

    return-wide v0
.end method

.method public getCodecSpecific3()J
    .locals 2

    .line 388
    iget-wide v0, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific3:J

    return-wide v0
.end method

.method public getCodecSpecific4()J
    .locals 2

    .line 397
    iget-wide v0, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific4:J

    return-wide v0
.end method

.method public getCodecType()I
    .locals 1

    .line 286
    iget v0, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecType:I

    return v0
.end method

.method public getSampleRate()I
    .locals 1

    .line 334
    iget v0, p0, Landroid/bluetooth/BluetoothCodecConfig;->mSampleRate:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 112
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecPriority:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/bluetooth/BluetoothCodecConfig;->mSampleRate:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Landroid/bluetooth/BluetoothCodecConfig;->mBitsPerSample:I

    .line 113
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Landroid/bluetooth/BluetoothCodecConfig;->mChannelMode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-wide v1, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific1:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-wide v1, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific2:J

    .line 114
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-wide v1, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific3:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget-wide v1, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific4:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 112
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isMandatoryCodec()Z
    .locals 1

    .line 295
    iget v0, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecType:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isValid()Z
    .locals 1

    .line 123
    iget v0, p0, Landroid/bluetooth/BluetoothCodecConfig;->mSampleRate:I

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/bluetooth/BluetoothCodecConfig;->mBitsPerSample:I

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/bluetooth/BluetoothCodecConfig;->mChannelMode:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public sameAudioFeedingParameters(Landroid/bluetooth/BluetoothCodecConfig;)Z
    .locals 2
    .param p1, "other"    # Landroid/bluetooth/BluetoothCodecConfig;

    .line 407
    if-eqz p1, :cond_0

    iget v0, p1, Landroid/bluetooth/BluetoothCodecConfig;->mSampleRate:I

    iget v1, p0, Landroid/bluetooth/BluetoothCodecConfig;->mSampleRate:I

    if-ne v0, v1, :cond_0

    iget v0, p1, Landroid/bluetooth/BluetoothCodecConfig;->mBitsPerSample:I

    iget v1, p0, Landroid/bluetooth/BluetoothCodecConfig;->mBitsPerSample:I

    if-ne v0, v1, :cond_0

    iget v0, p1, Landroid/bluetooth/BluetoothCodecConfig;->mChannelMode:I

    iget v1, p0, Landroid/bluetooth/BluetoothCodecConfig;->mChannelMode:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setCodecPriority(I)V
    .locals 0
    .param p1, "codecPriority"    # I

    .line 317
    iput p1, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecPriority:I

    .line 318
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    .line 145
    const/4 v0, 0x0

    .line 146
    .local v0, "sampleRateStr":Ljava/lang/String;
    iget v1, p0, Landroid/bluetooth/BluetoothCodecConfig;->mSampleRate:I

    if-nez v1, :cond_0

    .line 147
    const-string v1, "NONE"

    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothCodecConfig;->appendCapabilityToString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 149
    :cond_0
    iget v1, p0, Landroid/bluetooth/BluetoothCodecConfig;->mSampleRate:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-eqz v1, :cond_1

    .line 150
    const-string v1, "44100"

    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothCodecConfig;->appendCapabilityToString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 152
    :cond_1
    iget v1, p0, Landroid/bluetooth/BluetoothCodecConfig;->mSampleRate:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_2

    .line 153
    const-string v1, "48000"

    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothCodecConfig;->appendCapabilityToString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 155
    :cond_2
    iget v1, p0, Landroid/bluetooth/BluetoothCodecConfig;->mSampleRate:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_3

    .line 156
    const-string v1, "88200"

    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothCodecConfig;->appendCapabilityToString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 158
    :cond_3
    iget v1, p0, Landroid/bluetooth/BluetoothCodecConfig;->mSampleRate:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_4

    .line 159
    const-string v1, "96000"

    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothCodecConfig;->appendCapabilityToString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 161
    :cond_4
    iget v1, p0, Landroid/bluetooth/BluetoothCodecConfig;->mSampleRate:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_5

    .line 162
    const-string v1, "176400"

    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothCodecConfig;->appendCapabilityToString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 164
    :cond_5
    iget v1, p0, Landroid/bluetooth/BluetoothCodecConfig;->mSampleRate:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_6

    .line 165
    const-string v1, "192000"

    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothCodecConfig;->appendCapabilityToString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 168
    :cond_6
    const/4 v1, 0x0

    .line 169
    .local v1, "bitsPerSampleStr":Ljava/lang/String;
    iget v3, p0, Landroid/bluetooth/BluetoothCodecConfig;->mBitsPerSample:I

    if-nez v3, :cond_7

    .line 170
    const-string v3, "NONE"

    invoke-static {v1, v3}, Landroid/bluetooth/BluetoothCodecConfig;->appendCapabilityToString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 172
    :cond_7
    iget v3, p0, Landroid/bluetooth/BluetoothCodecConfig;->mBitsPerSample:I

    and-int/2addr v3, v2

    if-eqz v3, :cond_8

    .line 173
    const-string v3, "16"

    invoke-static {v1, v3}, Landroid/bluetooth/BluetoothCodecConfig;->appendCapabilityToString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 175
    :cond_8
    iget v3, p0, Landroid/bluetooth/BluetoothCodecConfig;->mBitsPerSample:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_9

    .line 176
    const-string v3, "24"

    invoke-static {v1, v3}, Landroid/bluetooth/BluetoothCodecConfig;->appendCapabilityToString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 178
    :cond_9
    iget v3, p0, Landroid/bluetooth/BluetoothCodecConfig;->mBitsPerSample:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_a

    .line 179
    const-string v3, "32"

    invoke-static {v1, v3}, Landroid/bluetooth/BluetoothCodecConfig;->appendCapabilityToString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 182
    :cond_a
    const/4 v3, 0x0

    .line 183
    .local v3, "channelModeStr":Ljava/lang/String;
    iget v4, p0, Landroid/bluetooth/BluetoothCodecConfig;->mChannelMode:I

    if-nez v4, :cond_b

    .line 184
    const-string v4, "NONE"

    invoke-static {v3, v4}, Landroid/bluetooth/BluetoothCodecConfig;->appendCapabilityToString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 186
    :cond_b
    iget v4, p0, Landroid/bluetooth/BluetoothCodecConfig;->mChannelMode:I

    and-int/2addr v4, v2

    if-eqz v4, :cond_c

    .line 187
    const-string v4, "MONO"

    invoke-static {v3, v4}, Landroid/bluetooth/BluetoothCodecConfig;->appendCapabilityToString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 189
    :cond_c
    iget v4, p0, Landroid/bluetooth/BluetoothCodecConfig;->mChannelMode:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_d

    .line 190
    const-string v4, "STEREO"

    invoke-static {v3, v4}, Landroid/bluetooth/BluetoothCodecConfig;->appendCapabilityToString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 193
    :cond_d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "{codecName:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothCodecConfig;->getCodecName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ",mCodecType:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ",mCodecPriority:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecPriority:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ",mSampleRate:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "0x%x"

    new-array v6, v2, [Ljava/lang/Object;

    iget v7, p0, Landroid/bluetooth/BluetoothCodecConfig;->mSampleRate:I

    .line 196
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "),mBitsPerSample:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "0x%x"

    new-array v6, v2, [Ljava/lang/Object;

    iget v7, p0, Landroid/bluetooth/BluetoothCodecConfig;->mBitsPerSample:I

    .line 198
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "),mChannelMode:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "0x%x"

    new-array v2, v2, [Ljava/lang/Object;

    iget v6, p0, Landroid/bluetooth/BluetoothCodecConfig;->mChannelMode:I

    .line 200
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v8

    invoke-static {v5, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "),mCodecSpecific1:"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific1:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ",mCodecSpecific2:"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific2:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ",mCodecSpecific3:"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific3:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ",mCodecSpecific4:"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific4:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "}"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 193
    return-object v2
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 239
    iget v0, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 240
    iget v0, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecPriority:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 241
    iget v0, p0, Landroid/bluetooth/BluetoothCodecConfig;->mSampleRate:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 242
    iget v0, p0, Landroid/bluetooth/BluetoothCodecConfig;->mBitsPerSample:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 243
    iget v0, p0, Landroid/bluetooth/BluetoothCodecConfig;->mChannelMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 244
    iget-wide v0, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific1:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 245
    iget-wide v0, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific2:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 246
    iget-wide v0, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific3:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 247
    iget-wide v0, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific4:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 248
    return-void
.end method
