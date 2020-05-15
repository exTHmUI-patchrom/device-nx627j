.class public final Landroid/hardware/wifi/V1_0/RttConfig;
.super Ljava/lang/Object;
.source "RttConfig.java"


# instance fields
.field public final addr:[B

.field public burstDuration:I

.field public burstPeriod:I

.field public bw:I

.field public final channel:Landroid/hardware/wifi/V1_0/WifiChannelInfo;

.field public mustRequestLci:Z

.field public mustRequestLcr:Z

.field public numBurst:I

.field public numFramesPerBurst:I

.field public numRetriesPerFtmr:I

.field public numRetriesPerRttFrame:I

.field public peer:I

.field public preamble:I

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/4 v0, 0x6

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/hardware/wifi/V1_0/RttConfig;->addr:[B

    .line 20
    new-instance v0, Landroid/hardware/wifi/V1_0/WifiChannelInfo;

    invoke-direct {v0}, Landroid/hardware/wifi/V1_0/WifiChannelInfo;-><init>()V

    iput-object v0, p0, Landroid/hardware/wifi/V1_0/RttConfig;->channel:Landroid/hardware/wifi/V1_0/WifiChannelInfo;

    return-void
.end method

.method public static final readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;
    .locals 12
    .param p0, "parcel"    # Landroid/os/HwParcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/HwParcel;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/wifi/V1_0/RttConfig;",
            ">;"
        }
    .end annotation

    .line 209
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 210
    .local v0, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/wifi/V1_0/RttConfig;>;"
    const-wide/16 v1, 0x10

    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    .line 213
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v2, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    .line 214
    .local v2, "_hidl_vec_size":I
    mul-int/lit8 v3, v2, 0x44

    int-to-long v5, v3

    .line 215
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    .line 214
    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v3

    .line 218
    .local v3, "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 219
    const/4 v4, 0x0

    .local v4, "_hidl_index_0":I
    :goto_0
    if-ge v4, v2, :cond_0

    .line 220
    new-instance v5, Landroid/hardware/wifi/V1_0/RttConfig;

    invoke-direct {v5}, Landroid/hardware/wifi/V1_0/RttConfig;-><init>()V

    .line 221
    .local v5, "_hidl_vec_element":Landroid/hardware/wifi/V1_0/RttConfig;
    mul-int/lit8 v6, v4, 0x44

    int-to-long v6, v6

    invoke-virtual {v5, p0, v3, v6, v7}, Landroid/hardware/wifi/V1_0/RttConfig;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 222
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 219
    .end local v5    # "_hidl_vec_element":Landroid/hardware/wifi/V1_0/RttConfig;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 226
    .end local v2    # "_hidl_vec_size":I
    .end local v3    # "childBlob":Landroid/os/HwBlob;
    .end local v4    # "_hidl_index_0":I
    :cond_0
    return-object v0
.end method

.method public static final writeVectorToParcel(Landroid/os/HwParcel;Ljava/util/ArrayList;)V
    .locals 7
    .param p0, "parcel"    # Landroid/os/HwParcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/HwParcel;",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/wifi/V1_0/RttConfig;",
            ">;)V"
        }
    .end annotation

    .line 259
    .local p1, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/wifi/V1_0/RttConfig;>;"
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 261
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 262
    .local v1, "_hidl_vec_size":I
    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 263
    const/4 v2, 0x0

    const-wide/16 v3, 0xc

    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 264
    new-instance v3, Landroid/os/HwBlob;

    mul-int/lit8 v4, v1, 0x44

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 265
    .local v3, "childBlob":Landroid/os/HwBlob;
    nop

    .local v2, "_hidl_index_0":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 266
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/wifi/V1_0/RttConfig;

    mul-int/lit8 v5, v2, 0x44

    int-to-long v5, v5

    invoke-virtual {v4, v3, v5, v6}, Landroid/hardware/wifi/V1_0/RttConfig;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 265
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 268
    .end local v2    # "_hidl_index_0":I
    :cond_0
    const-wide/16 v4, 0x0

    invoke-virtual {v0, v4, v5, v3}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 271
    .end local v1    # "_hidl_vec_size":I
    .end local v3    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 272
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "otherObject"    # Ljava/lang/Object;

    .line 93
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 94
    return v0

    .line 96
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 97
    return v1

    .line 99
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/hardware/wifi/V1_0/RttConfig;

    if-eq v2, v3, :cond_2

    .line 100
    return v1

    .line 102
    :cond_2
    move-object v2, p1

    check-cast v2, Landroid/hardware/wifi/V1_0/RttConfig;

    .line 103
    .local v2, "other":Landroid/hardware/wifi/V1_0/RttConfig;
    iget-object v3, p0, Landroid/hardware/wifi/V1_0/RttConfig;->addr:[B

    iget-object v4, v2, Landroid/hardware/wifi/V1_0/RttConfig;->addr:[B

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 104
    return v1

    .line 106
    :cond_3
    iget v3, p0, Landroid/hardware/wifi/V1_0/RttConfig;->type:I

    iget v4, v2, Landroid/hardware/wifi/V1_0/RttConfig;->type:I

    if-eq v3, v4, :cond_4

    .line 107
    return v1

    .line 109
    :cond_4
    iget v3, p0, Landroid/hardware/wifi/V1_0/RttConfig;->peer:I

    iget v4, v2, Landroid/hardware/wifi/V1_0/RttConfig;->peer:I

    if-eq v3, v4, :cond_5

    .line 110
    return v1

    .line 112
    :cond_5
    iget-object v3, p0, Landroid/hardware/wifi/V1_0/RttConfig;->channel:Landroid/hardware/wifi/V1_0/WifiChannelInfo;

    iget-object v4, v2, Landroid/hardware/wifi/V1_0/RttConfig;->channel:Landroid/hardware/wifi/V1_0/WifiChannelInfo;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 113
    return v1

    .line 115
    :cond_6
    iget v3, p0, Landroid/hardware/wifi/V1_0/RttConfig;->burstPeriod:I

    iget v4, v2, Landroid/hardware/wifi/V1_0/RttConfig;->burstPeriod:I

    if-eq v3, v4, :cond_7

    .line 116
    return v1

    .line 118
    :cond_7
    iget v3, p0, Landroid/hardware/wifi/V1_0/RttConfig;->numBurst:I

    iget v4, v2, Landroid/hardware/wifi/V1_0/RttConfig;->numBurst:I

    if-eq v3, v4, :cond_8

    .line 119
    return v1

    .line 121
    :cond_8
    iget v3, p0, Landroid/hardware/wifi/V1_0/RttConfig;->numFramesPerBurst:I

    iget v4, v2, Landroid/hardware/wifi/V1_0/RttConfig;->numFramesPerBurst:I

    if-eq v3, v4, :cond_9

    .line 122
    return v1

    .line 124
    :cond_9
    iget v3, p0, Landroid/hardware/wifi/V1_0/RttConfig;->numRetriesPerRttFrame:I

    iget v4, v2, Landroid/hardware/wifi/V1_0/RttConfig;->numRetriesPerRttFrame:I

    if-eq v3, v4, :cond_a

    .line 125
    return v1

    .line 127
    :cond_a
    iget v3, p0, Landroid/hardware/wifi/V1_0/RttConfig;->numRetriesPerFtmr:I

    iget v4, v2, Landroid/hardware/wifi/V1_0/RttConfig;->numRetriesPerFtmr:I

    if-eq v3, v4, :cond_b

    .line 128
    return v1

    .line 130
    :cond_b
    iget-boolean v3, p0, Landroid/hardware/wifi/V1_0/RttConfig;->mustRequestLci:Z

    iget-boolean v4, v2, Landroid/hardware/wifi/V1_0/RttConfig;->mustRequestLci:Z

    if-eq v3, v4, :cond_c

    .line 131
    return v1

    .line 133
    :cond_c
    iget-boolean v3, p0, Landroid/hardware/wifi/V1_0/RttConfig;->mustRequestLcr:Z

    iget-boolean v4, v2, Landroid/hardware/wifi/V1_0/RttConfig;->mustRequestLcr:Z

    if-eq v3, v4, :cond_d

    .line 134
    return v1

    .line 136
    :cond_d
    iget v3, p0, Landroid/hardware/wifi/V1_0/RttConfig;->burstDuration:I

    iget v4, v2, Landroid/hardware/wifi/V1_0/RttConfig;->burstDuration:I

    if-eq v3, v4, :cond_e

    .line 137
    return v1

    .line 139
    :cond_e
    iget v3, p0, Landroid/hardware/wifi/V1_0/RttConfig;->preamble:I

    iget v4, v2, Landroid/hardware/wifi/V1_0/RttConfig;->preamble:I

    if-eq v3, v4, :cond_f

    .line 140
    return v1

    .line 142
    :cond_f
    iget v3, p0, Landroid/hardware/wifi/V1_0/RttConfig;->bw:I

    iget v4, v2, Landroid/hardware/wifi/V1_0/RttConfig;->bw:I

    if-eq v3, v4, :cond_10

    .line 143
    return v1

    .line 145
    :cond_10
    return v0
.end method

.method public final hashCode()I
    .locals 3

    .line 150
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/hardware/wifi/V1_0/RttConfig;->addr:[B

    .line 151
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/wifi/V1_0/RttConfig;->type:I

    .line 152
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/wifi/V1_0/RttConfig;->peer:I

    .line 153
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/wifi/V1_0/RttConfig;->channel:Landroid/hardware/wifi/V1_0/WifiChannelInfo;

    .line 154
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/wifi/V1_0/RttConfig;->burstPeriod:I

    .line 155
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/wifi/V1_0/RttConfig;->numBurst:I

    .line 156
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/wifi/V1_0/RttConfig;->numFramesPerBurst:I

    .line 157
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/wifi/V1_0/RttConfig;->numRetriesPerRttFrame:I

    .line 158
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/wifi/V1_0/RttConfig;->numRetriesPerFtmr:I

    .line 159
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/hardware/wifi/V1_0/RttConfig;->mustRequestLci:Z

    .line 160
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/hardware/wifi/V1_0/RttConfig;->mustRequestLcr:Z

    .line 161
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/wifi/V1_0/RttConfig;->burstDuration:I

    .line 162
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/wifi/V1_0/RttConfig;->preamble:I

    .line 163
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xc

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/wifi/V1_0/RttConfig;->bw:I

    .line 164
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xd

    aput-object v1, v0, v2

    .line 150
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .locals 4
    .param p1, "parcel"    # Landroid/os/HwParcel;
    .param p2, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p3, "_hidl_offset"    # J

    .line 232
    const-wide/16 v0, 0x0

    add-long/2addr v0, p3

    .line 233
    .local v0, "_hidl_array_offset_0":J
    iget-object v2, p0, Landroid/hardware/wifi/V1_0/RttConfig;->addr:[B

    const/4 v3, 0x6

    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 234
    nop

    .line 236
    .end local v0    # "_hidl_array_offset_0":J
    const-wide/16 v0, 0x8

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v0

    iput v0, p0, Landroid/hardware/wifi/V1_0/RttConfig;->type:I

    .line 237
    const-wide/16 v0, 0xc

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v0

    iput v0, p0, Landroid/hardware/wifi/V1_0/RttConfig;->peer:I

    .line 238
    iget-object v0, p0, Landroid/hardware/wifi/V1_0/RttConfig;->channel:Landroid/hardware/wifi/V1_0/WifiChannelInfo;

    const-wide/16 v1, 0x10

    add-long/2addr v1, p3

    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/hardware/wifi/V1_0/WifiChannelInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 239
    const-wide/16 v0, 0x20

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v0

    iput v0, p0, Landroid/hardware/wifi/V1_0/RttConfig;->burstPeriod:I

    .line 240
    const-wide/16 v0, 0x24

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v0

    iput v0, p0, Landroid/hardware/wifi/V1_0/RttConfig;->numBurst:I

    .line 241
    const-wide/16 v0, 0x28

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v0

    iput v0, p0, Landroid/hardware/wifi/V1_0/RttConfig;->numFramesPerBurst:I

    .line 242
    const-wide/16 v0, 0x2c

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v0

    iput v0, p0, Landroid/hardware/wifi/V1_0/RttConfig;->numRetriesPerRttFrame:I

    .line 243
    const-wide/16 v0, 0x30

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v0

    iput v0, p0, Landroid/hardware/wifi/V1_0/RttConfig;->numRetriesPerFtmr:I

    .line 244
    const-wide/16 v0, 0x34

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v0

    iput-boolean v0, p0, Landroid/hardware/wifi/V1_0/RttConfig;->mustRequestLci:Z

    .line 245
    const-wide/16 v0, 0x35

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v0

    iput-boolean v0, p0, Landroid/hardware/wifi/V1_0/RttConfig;->mustRequestLcr:Z

    .line 246
    const-wide/16 v0, 0x38

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v0

    iput v0, p0, Landroid/hardware/wifi/V1_0/RttConfig;->burstDuration:I

    .line 247
    const-wide/16 v0, 0x3c

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v0

    iput v0, p0, Landroid/hardware/wifi/V1_0/RttConfig;->preamble:I

    .line 248
    const-wide/16 v0, 0x40

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v0

    iput v0, p0, Landroid/hardware/wifi/V1_0/RttConfig;->bw:I

    .line 249
    return-void
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 204
    const-wide/16 v0, 0x44

    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 205
    .local v0, "blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/hardware/wifi/V1_0/RttConfig;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 206
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 170
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    const-string v1, ".addr = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    iget-object v1, p0, Landroid/hardware/wifi/V1_0/RttConfig;->addr:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    const-string v1, ", .type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    iget v1, p0, Landroid/hardware/wifi/V1_0/RttConfig;->type:I

    invoke-static {v1}, Landroid/hardware/wifi/V1_0/RttType;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    const-string v1, ", .peer = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    iget v1, p0, Landroid/hardware/wifi/V1_0/RttConfig;->peer:I

    invoke-static {v1}, Landroid/hardware/wifi/V1_0/RttPeerType;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    const-string v1, ", .channel = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    iget-object v1, p0, Landroid/hardware/wifi/V1_0/RttConfig;->channel:Landroid/hardware/wifi/V1_0/WifiChannelInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 179
    const-string v1, ", .burstPeriod = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    iget v1, p0, Landroid/hardware/wifi/V1_0/RttConfig;->burstPeriod:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 181
    const-string v1, ", .numBurst = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    iget v1, p0, Landroid/hardware/wifi/V1_0/RttConfig;->numBurst:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 183
    const-string v1, ", .numFramesPerBurst = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    iget v1, p0, Landroid/hardware/wifi/V1_0/RttConfig;->numFramesPerBurst:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 185
    const-string v1, ", .numRetriesPerRttFrame = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    iget v1, p0, Landroid/hardware/wifi/V1_0/RttConfig;->numRetriesPerRttFrame:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 187
    const-string v1, ", .numRetriesPerFtmr = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    iget v1, p0, Landroid/hardware/wifi/V1_0/RttConfig;->numRetriesPerFtmr:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 189
    const-string v1, ", .mustRequestLci = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    iget-boolean v1, p0, Landroid/hardware/wifi/V1_0/RttConfig;->mustRequestLci:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 191
    const-string v1, ", .mustRequestLcr = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    iget-boolean v1, p0, Landroid/hardware/wifi/V1_0/RttConfig;->mustRequestLcr:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 193
    const-string v1, ", .burstDuration = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    iget v1, p0, Landroid/hardware/wifi/V1_0/RttConfig;->burstDuration:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 195
    const-string v1, ", .preamble = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    iget v1, p0, Landroid/hardware/wifi/V1_0/RttConfig;->preamble:I

    invoke-static {v1}, Landroid/hardware/wifi/V1_0/RttPreamble;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    const-string v1, ", .bw = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    iget v1, p0, Landroid/hardware/wifi/V1_0/RttConfig;->bw:I

    invoke-static {v1}, Landroid/hardware/wifi/V1_0/RttBw;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .locals 3
    .param p1, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p2, "_hidl_offset"    # J

    .line 277
    const-wide/16 v0, 0x0

    add-long/2addr v0, p2

    .line 278
    .local v0, "_hidl_array_offset_0":J
    iget-object v2, p0, Landroid/hardware/wifi/V1_0/RttConfig;->addr:[B

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 279
    nop

    .line 281
    .end local v0    # "_hidl_array_offset_0":J
    const-wide/16 v0, 0x8

    add-long/2addr v0, p2

    iget v2, p0, Landroid/hardware/wifi/V1_0/RttConfig;->type:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 282
    const-wide/16 v0, 0xc

    add-long/2addr v0, p2

    iget v2, p0, Landroid/hardware/wifi/V1_0/RttConfig;->peer:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 283
    iget-object v0, p0, Landroid/hardware/wifi/V1_0/RttConfig;->channel:Landroid/hardware/wifi/V1_0/WifiChannelInfo;

    const-wide/16 v1, 0x10

    add-long/2addr v1, p2

    invoke-virtual {v0, p1, v1, v2}, Landroid/hardware/wifi/V1_0/WifiChannelInfo;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 284
    const-wide/16 v0, 0x20

    add-long/2addr v0, p2

    iget v2, p0, Landroid/hardware/wifi/V1_0/RttConfig;->burstPeriod:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 285
    const-wide/16 v0, 0x24

    add-long/2addr v0, p2

    iget v2, p0, Landroid/hardware/wifi/V1_0/RttConfig;->numBurst:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 286
    const-wide/16 v0, 0x28

    add-long/2addr v0, p2

    iget v2, p0, Landroid/hardware/wifi/V1_0/RttConfig;->numFramesPerBurst:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 287
    const-wide/16 v0, 0x2c

    add-long/2addr v0, p2

    iget v2, p0, Landroid/hardware/wifi/V1_0/RttConfig;->numRetriesPerRttFrame:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 288
    const-wide/16 v0, 0x30

    add-long/2addr v0, p2

    iget v2, p0, Landroid/hardware/wifi/V1_0/RttConfig;->numRetriesPerFtmr:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 289
    const-wide/16 v0, 0x34

    add-long/2addr v0, p2

    iget-boolean v2, p0, Landroid/hardware/wifi/V1_0/RttConfig;->mustRequestLci:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 290
    const-wide/16 v0, 0x35

    add-long/2addr v0, p2

    iget-boolean v2, p0, Landroid/hardware/wifi/V1_0/RttConfig;->mustRequestLcr:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 291
    const-wide/16 v0, 0x38

    add-long/2addr v0, p2

    iget v2, p0, Landroid/hardware/wifi/V1_0/RttConfig;->burstDuration:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 292
    const-wide/16 v0, 0x3c

    add-long/2addr v0, p2

    iget v2, p0, Landroid/hardware/wifi/V1_0/RttConfig;->preamble:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 293
    const-wide/16 v0, 0x40

    add-long/2addr v0, p2

    iget v2, p0, Landroid/hardware/wifi/V1_0/RttConfig;->bw:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 294
    return-void
.end method

.method public final writeToParcel(Landroid/os/HwParcel;)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 252
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x44

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 253
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/wifi/V1_0/RttConfig;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 254
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 255
    return-void
.end method
