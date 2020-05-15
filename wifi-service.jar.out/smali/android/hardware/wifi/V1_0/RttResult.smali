.class public final Landroid/hardware/wifi/V1_0/RttResult;
.super Ljava/lang/Object;
.source "RttResult.java"


# instance fields
.field public final addr:[B

.field public burstDurationInMs:I

.field public burstNum:I

.field public distanceInMm:I

.field public distanceSdInMm:I

.field public distanceSpreadInMm:I

.field public final lci:Landroid/hardware/wifi/V1_0/WifiInformationElement;

.field public final lcr:Landroid/hardware/wifi/V1_0/WifiInformationElement;

.field public measurementNumber:I

.field public negotiatedBurstNum:I

.field public numberPerBurstPeer:B

.field public retryAfterDuration:B

.field public rssi:I

.field public rssiSpread:I

.field public rtt:J

.field public rttSd:J

.field public rttSpread:J

.field public final rxRate:Landroid/hardware/wifi/V1_0/WifiRateInfo;

.field public status:I

.field public successNumber:I

.field public timeStampInUs:J

.field public final txRate:Landroid/hardware/wifi/V1_0/WifiRateInfo;

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/4 v0, 0x6

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/hardware/wifi/V1_0/RttResult;->addr:[B

    .line 59
    new-instance v0, Landroid/hardware/wifi/V1_0/WifiRateInfo;

    invoke-direct {v0}, Landroid/hardware/wifi/V1_0/WifiRateInfo;-><init>()V

    iput-object v0, p0, Landroid/hardware/wifi/V1_0/RttResult;->txRate:Landroid/hardware/wifi/V1_0/WifiRateInfo;

    .line 64
    new-instance v0, Landroid/hardware/wifi/V1_0/WifiRateInfo;

    invoke-direct {v0}, Landroid/hardware/wifi/V1_0/WifiRateInfo;-><init>()V

    iput-object v0, p0, Landroid/hardware/wifi/V1_0/RttResult;->rxRate:Landroid/hardware/wifi/V1_0/WifiRateInfo;

    .line 106
    new-instance v0, Landroid/hardware/wifi/V1_0/WifiInformationElement;

    invoke-direct {v0}, Landroid/hardware/wifi/V1_0/WifiInformationElement;-><init>()V

    iput-object v0, p0, Landroid/hardware/wifi/V1_0/RttResult;->lci:Landroid/hardware/wifi/V1_0/WifiInformationElement;

    .line 110
    new-instance v0, Landroid/hardware/wifi/V1_0/WifiInformationElement;

    invoke-direct {v0}, Landroid/hardware/wifi/V1_0/WifiInformationElement;-><init>()V

    iput-object v0, p0, Landroid/hardware/wifi/V1_0/RttResult;->lcr:Landroid/hardware/wifi/V1_0/WifiInformationElement;

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
            "Landroid/hardware/wifi/V1_0/RttResult;",
            ">;"
        }
    .end annotation

    .line 284
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 285
    .local v0, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/wifi/V1_0/RttResult;>;"
    const-wide/16 v1, 0x10

    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    .line 288
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v2, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    .line 289
    .local v2, "_hidl_vec_size":I
    mul-int/lit16 v3, v2, 0xc0

    int-to-long v5, v3

    .line 290
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    .line 289
    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v3

    .line 293
    .local v3, "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 294
    const/4 v4, 0x0

    .local v4, "_hidl_index_0":I
    :goto_0
    if-ge v4, v2, :cond_0

    .line 295
    new-instance v5, Landroid/hardware/wifi/V1_0/RttResult;

    invoke-direct {v5}, Landroid/hardware/wifi/V1_0/RttResult;-><init>()V

    .line 296
    .local v5, "_hidl_vec_element":Landroid/hardware/wifi/V1_0/RttResult;
    mul-int/lit16 v6, v4, 0xc0

    int-to-long v6, v6

    invoke-virtual {v5, p0, v3, v6, v7}, Landroid/hardware/wifi/V1_0/RttResult;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 297
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 294
    .end local v5    # "_hidl_vec_element":Landroid/hardware/wifi/V1_0/RttResult;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 301
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
            "Landroid/hardware/wifi/V1_0/RttResult;",
            ">;)V"
        }
    .end annotation

    .line 343
    .local p1, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/wifi/V1_0/RttResult;>;"
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 345
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 346
    .local v1, "_hidl_vec_size":I
    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 347
    const/4 v2, 0x0

    const-wide/16 v3, 0xc

    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 348
    new-instance v3, Landroid/os/HwBlob;

    mul-int/lit16 v4, v1, 0xc0

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 349
    .local v3, "childBlob":Landroid/os/HwBlob;
    nop

    .local v2, "_hidl_index_0":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 350
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/wifi/V1_0/RttResult;

    mul-int/lit16 v5, v2, 0xc0

    int-to-long v5, v5

    invoke-virtual {v4, v3, v5, v6}, Landroid/hardware/wifi/V1_0/RttResult;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 349
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 352
    .end local v2    # "_hidl_index_0":I
    :cond_0
    const-wide/16 v4, 0x0

    invoke-virtual {v0, v4, v5, v3}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 355
    .end local v1    # "_hidl_vec_size":I
    .end local v3    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 356
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "otherObject"    # Ljava/lang/Object;

    .line 114
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 115
    return v0

    .line 117
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 118
    return v1

    .line 120
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/hardware/wifi/V1_0/RttResult;

    if-eq v2, v3, :cond_2

    .line 121
    return v1

    .line 123
    :cond_2
    move-object v2, p1

    check-cast v2, Landroid/hardware/wifi/V1_0/RttResult;

    .line 124
    .local v2, "other":Landroid/hardware/wifi/V1_0/RttResult;
    iget-object v3, p0, Landroid/hardware/wifi/V1_0/RttResult;->addr:[B

    iget-object v4, v2, Landroid/hardware/wifi/V1_0/RttResult;->addr:[B

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 125
    return v1

    .line 127
    :cond_3
    iget v3, p0, Landroid/hardware/wifi/V1_0/RttResult;->burstNum:I

    iget v4, v2, Landroid/hardware/wifi/V1_0/RttResult;->burstNum:I

    if-eq v3, v4, :cond_4

    .line 128
    return v1

    .line 130
    :cond_4
    iget v3, p0, Landroid/hardware/wifi/V1_0/RttResult;->measurementNumber:I

    iget v4, v2, Landroid/hardware/wifi/V1_0/RttResult;->measurementNumber:I

    if-eq v3, v4, :cond_5

    .line 131
    return v1

    .line 133
    :cond_5
    iget v3, p0, Landroid/hardware/wifi/V1_0/RttResult;->successNumber:I

    iget v4, v2, Landroid/hardware/wifi/V1_0/RttResult;->successNumber:I

    if-eq v3, v4, :cond_6

    .line 134
    return v1

    .line 136
    :cond_6
    iget-byte v3, p0, Landroid/hardware/wifi/V1_0/RttResult;->numberPerBurstPeer:B

    iget-byte v4, v2, Landroid/hardware/wifi/V1_0/RttResult;->numberPerBurstPeer:B

    if-eq v3, v4, :cond_7

    .line 137
    return v1

    .line 139
    :cond_7
    iget v3, p0, Landroid/hardware/wifi/V1_0/RttResult;->status:I

    iget v4, v2, Landroid/hardware/wifi/V1_0/RttResult;->status:I

    if-eq v3, v4, :cond_8

    .line 140
    return v1

    .line 142
    :cond_8
    iget-byte v3, p0, Landroid/hardware/wifi/V1_0/RttResult;->retryAfterDuration:B

    iget-byte v4, v2, Landroid/hardware/wifi/V1_0/RttResult;->retryAfterDuration:B

    if-eq v3, v4, :cond_9

    .line 143
    return v1

    .line 145
    :cond_9
    iget v3, p0, Landroid/hardware/wifi/V1_0/RttResult;->type:I

    iget v4, v2, Landroid/hardware/wifi/V1_0/RttResult;->type:I

    if-eq v3, v4, :cond_a

    .line 146
    return v1

    .line 148
    :cond_a
    iget v3, p0, Landroid/hardware/wifi/V1_0/RttResult;->rssi:I

    iget v4, v2, Landroid/hardware/wifi/V1_0/RttResult;->rssi:I

    if-eq v3, v4, :cond_b

    .line 149
    return v1

    .line 151
    :cond_b
    iget v3, p0, Landroid/hardware/wifi/V1_0/RttResult;->rssiSpread:I

    iget v4, v2, Landroid/hardware/wifi/V1_0/RttResult;->rssiSpread:I

    if-eq v3, v4, :cond_c

    .line 152
    return v1

    .line 154
    :cond_c
    iget-object v3, p0, Landroid/hardware/wifi/V1_0/RttResult;->txRate:Landroid/hardware/wifi/V1_0/WifiRateInfo;

    iget-object v4, v2, Landroid/hardware/wifi/V1_0/RttResult;->txRate:Landroid/hardware/wifi/V1_0/WifiRateInfo;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    .line 155
    return v1

    .line 157
    :cond_d
    iget-object v3, p0, Landroid/hardware/wifi/V1_0/RttResult;->rxRate:Landroid/hardware/wifi/V1_0/WifiRateInfo;

    iget-object v4, v2, Landroid/hardware/wifi/V1_0/RttResult;->rxRate:Landroid/hardware/wifi/V1_0/WifiRateInfo;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    .line 158
    return v1

    .line 160
    :cond_e
    iget-wide v3, p0, Landroid/hardware/wifi/V1_0/RttResult;->rtt:J

    iget-wide v5, v2, Landroid/hardware/wifi/V1_0/RttResult;->rtt:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_f

    .line 161
    return v1

    .line 163
    :cond_f
    iget-wide v3, p0, Landroid/hardware/wifi/V1_0/RttResult;->rttSd:J

    iget-wide v5, v2, Landroid/hardware/wifi/V1_0/RttResult;->rttSd:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_10

    .line 164
    return v1

    .line 166
    :cond_10
    iget-wide v3, p0, Landroid/hardware/wifi/V1_0/RttResult;->rttSpread:J

    iget-wide v5, v2, Landroid/hardware/wifi/V1_0/RttResult;->rttSpread:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_11

    .line 167
    return v1

    .line 169
    :cond_11
    iget v3, p0, Landroid/hardware/wifi/V1_0/RttResult;->distanceInMm:I

    iget v4, v2, Landroid/hardware/wifi/V1_0/RttResult;->distanceInMm:I

    if-eq v3, v4, :cond_12

    .line 170
    return v1

    .line 172
    :cond_12
    iget v3, p0, Landroid/hardware/wifi/V1_0/RttResult;->distanceSdInMm:I

    iget v4, v2, Landroid/hardware/wifi/V1_0/RttResult;->distanceSdInMm:I

    if-eq v3, v4, :cond_13

    .line 173
    return v1

    .line 175
    :cond_13
    iget v3, p0, Landroid/hardware/wifi/V1_0/RttResult;->distanceSpreadInMm:I

    iget v4, v2, Landroid/hardware/wifi/V1_0/RttResult;->distanceSpreadInMm:I

    if-eq v3, v4, :cond_14

    .line 176
    return v1

    .line 178
    :cond_14
    iget-wide v3, p0, Landroid/hardware/wifi/V1_0/RttResult;->timeStampInUs:J

    iget-wide v5, v2, Landroid/hardware/wifi/V1_0/RttResult;->timeStampInUs:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_15

    .line 179
    return v1

    .line 181
    :cond_15
    iget v3, p0, Landroid/hardware/wifi/V1_0/RttResult;->burstDurationInMs:I

    iget v4, v2, Landroid/hardware/wifi/V1_0/RttResult;->burstDurationInMs:I

    if-eq v3, v4, :cond_16

    .line 182
    return v1

    .line 184
    :cond_16
    iget v3, p0, Landroid/hardware/wifi/V1_0/RttResult;->negotiatedBurstNum:I

    iget v4, v2, Landroid/hardware/wifi/V1_0/RttResult;->negotiatedBurstNum:I

    if-eq v3, v4, :cond_17

    .line 185
    return v1

    .line 187
    :cond_17
    iget-object v3, p0, Landroid/hardware/wifi/V1_0/RttResult;->lci:Landroid/hardware/wifi/V1_0/WifiInformationElement;

    iget-object v4, v2, Landroid/hardware/wifi/V1_0/RttResult;->lci:Landroid/hardware/wifi/V1_0/WifiInformationElement;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_18

    .line 188
    return v1

    .line 190
    :cond_18
    iget-object v3, p0, Landroid/hardware/wifi/V1_0/RttResult;->lcr:Landroid/hardware/wifi/V1_0/WifiInformationElement;

    iget-object v4, v2, Landroid/hardware/wifi/V1_0/RttResult;->lcr:Landroid/hardware/wifi/V1_0/WifiInformationElement;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_19

    .line 191
    return v1

    .line 193
    :cond_19
    return v0
.end method

.method public final hashCode()I
    .locals 3

    .line 198
    const/16 v0, 0x17

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/hardware/wifi/V1_0/RttResult;->addr:[B

    .line 199
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/wifi/V1_0/RttResult;->burstNum:I

    .line 200
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/wifi/V1_0/RttResult;->measurementNumber:I

    .line 201
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/wifi/V1_0/RttResult;->successNumber:I

    .line 202
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-byte v1, p0, Landroid/hardware/wifi/V1_0/RttResult;->numberPerBurstPeer:B

    .line 203
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/wifi/V1_0/RttResult;->status:I

    .line 204
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-byte v1, p0, Landroid/hardware/wifi/V1_0/RttResult;->retryAfterDuration:B

    .line 205
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/wifi/V1_0/RttResult;->type:I

    .line 206
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/wifi/V1_0/RttResult;->rssi:I

    .line 207
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/wifi/V1_0/RttResult;->rssiSpread:I

    .line 208
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/wifi/V1_0/RttResult;->txRate:Landroid/hardware/wifi/V1_0/WifiRateInfo;

    .line 209
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/wifi/V1_0/RttResult;->rxRate:Landroid/hardware/wifi/V1_0/WifiRateInfo;

    .line 210
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    iget-wide v1, p0, Landroid/hardware/wifi/V1_0/RttResult;->rtt:J

    .line 211
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xc

    aput-object v1, v0, v2

    iget-wide v1, p0, Landroid/hardware/wifi/V1_0/RttResult;->rttSd:J

    .line 212
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xd

    aput-object v1, v0, v2

    iget-wide v1, p0, Landroid/hardware/wifi/V1_0/RttResult;->rttSpread:J

    .line 213
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xe

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/wifi/V1_0/RttResult;->distanceInMm:I

    .line 214
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xf

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/wifi/V1_0/RttResult;->distanceSdInMm:I

    .line 215
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x10

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/wifi/V1_0/RttResult;->distanceSpreadInMm:I

    .line 216
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x11

    aput-object v1, v0, v2

    iget-wide v1, p0, Landroid/hardware/wifi/V1_0/RttResult;->timeStampInUs:J

    .line 217
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x12

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/wifi/V1_0/RttResult;->burstDurationInMs:I

    .line 218
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x13

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/wifi/V1_0/RttResult;->negotiatedBurstNum:I

    .line 219
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x14

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/wifi/V1_0/RttResult;->lci:Landroid/hardware/wifi/V1_0/WifiInformationElement;

    .line 220
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x15

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/wifi/V1_0/RttResult;->lcr:Landroid/hardware/wifi/V1_0/WifiInformationElement;

    .line 221
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x16

    aput-object v1, v0, v2

    .line 198
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .locals 4
    .param p1, "parcel"    # Landroid/os/HwParcel;
    .param p2, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p3, "_hidl_offset"    # J

    .line 307
    const-wide/16 v0, 0x0

    add-long/2addr v0, p3

    .line 308
    .local v0, "_hidl_array_offset_0":J
    iget-object v2, p0, Landroid/hardware/wifi/V1_0/RttResult;->addr:[B

    const/4 v3, 0x6

    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 309
    nop

    .line 311
    .end local v0    # "_hidl_array_offset_0":J
    const-wide/16 v0, 0x8

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v0

    iput v0, p0, Landroid/hardware/wifi/V1_0/RttResult;->burstNum:I

    .line 312
    const-wide/16 v0, 0xc

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v0

    iput v0, p0, Landroid/hardware/wifi/V1_0/RttResult;->measurementNumber:I

    .line 313
    const-wide/16 v0, 0x10

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v0

    iput v0, p0, Landroid/hardware/wifi/V1_0/RttResult;->successNumber:I

    .line 314
    const-wide/16 v0, 0x14

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v0

    iput-byte v0, p0, Landroid/hardware/wifi/V1_0/RttResult;->numberPerBurstPeer:B

    .line 315
    const-wide/16 v0, 0x18

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v0

    iput v0, p0, Landroid/hardware/wifi/V1_0/RttResult;->status:I

    .line 316
    const-wide/16 v0, 0x1c

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v0

    iput-byte v0, p0, Landroid/hardware/wifi/V1_0/RttResult;->retryAfterDuration:B

    .line 317
    const-wide/16 v0, 0x20

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v0

    iput v0, p0, Landroid/hardware/wifi/V1_0/RttResult;->type:I

    .line 318
    const-wide/16 v0, 0x24

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v0

    iput v0, p0, Landroid/hardware/wifi/V1_0/RttResult;->rssi:I

    .line 319
    const-wide/16 v0, 0x28

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v0

    iput v0, p0, Landroid/hardware/wifi/V1_0/RttResult;->rssiSpread:I

    .line 320
    iget-object v0, p0, Landroid/hardware/wifi/V1_0/RttResult;->txRate:Landroid/hardware/wifi/V1_0/WifiRateInfo;

    const-wide/16 v1, 0x2c

    add-long/2addr v1, p3

    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/hardware/wifi/V1_0/WifiRateInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 321
    iget-object v0, p0, Landroid/hardware/wifi/V1_0/RttResult;->rxRate:Landroid/hardware/wifi/V1_0/WifiRateInfo;

    const-wide/16 v1, 0x40

    add-long/2addr v1, p3

    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/hardware/wifi/V1_0/WifiRateInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 322
    const-wide/16 v0, 0x58

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt64(J)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/wifi/V1_0/RttResult;->rtt:J

    .line 323
    const-wide/16 v0, 0x60

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt64(J)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/wifi/V1_0/RttResult;->rttSd:J

    .line 324
    const-wide/16 v0, 0x68

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt64(J)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/wifi/V1_0/RttResult;->rttSpread:J

    .line 325
    const-wide/16 v0, 0x70

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v0

    iput v0, p0, Landroid/hardware/wifi/V1_0/RttResult;->distanceInMm:I

    .line 326
    const-wide/16 v0, 0x74

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v0

    iput v0, p0, Landroid/hardware/wifi/V1_0/RttResult;->distanceSdInMm:I

    .line 327
    const-wide/16 v0, 0x78

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v0

    iput v0, p0, Landroid/hardware/wifi/V1_0/RttResult;->distanceSpreadInMm:I

    .line 328
    const-wide/16 v0, 0x80

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt64(J)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/wifi/V1_0/RttResult;->timeStampInUs:J

    .line 329
    const-wide/16 v0, 0x88

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v0

    iput v0, p0, Landroid/hardware/wifi/V1_0/RttResult;->burstDurationInMs:I

    .line 330
    const-wide/16 v0, 0x8c

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v0

    iput v0, p0, Landroid/hardware/wifi/V1_0/RttResult;->negotiatedBurstNum:I

    .line 331
    iget-object v0, p0, Landroid/hardware/wifi/V1_0/RttResult;->lci:Landroid/hardware/wifi/V1_0/WifiInformationElement;

    const-wide/16 v1, 0x90

    add-long/2addr v1, p3

    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/hardware/wifi/V1_0/WifiInformationElement;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 332
    iget-object v0, p0, Landroid/hardware/wifi/V1_0/RttResult;->lcr:Landroid/hardware/wifi/V1_0/WifiInformationElement;

    const-wide/16 v1, 0xa8

    add-long/2addr v1, p3

    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/hardware/wifi/V1_0/WifiInformationElement;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 333
    return-void
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 279
    const-wide/16 v0, 0xc0

    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 280
    .local v0, "blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/hardware/wifi/V1_0/RttResult;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 281
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 226
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 227
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    const-string v1, ".addr = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    iget-object v1, p0, Landroid/hardware/wifi/V1_0/RttResult;->addr:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    const-string v1, ", .burstNum = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    iget v1, p0, Landroid/hardware/wifi/V1_0/RttResult;->burstNum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 232
    const-string v1, ", .measurementNumber = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    iget v1, p0, Landroid/hardware/wifi/V1_0/RttResult;->measurementNumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 234
    const-string v1, ", .successNumber = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    iget v1, p0, Landroid/hardware/wifi/V1_0/RttResult;->successNumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 236
    const-string v1, ", .numberPerBurstPeer = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    iget-byte v1, p0, Landroid/hardware/wifi/V1_0/RttResult;->numberPerBurstPeer:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 238
    const-string v1, ", .status = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    iget v1, p0, Landroid/hardware/wifi/V1_0/RttResult;->status:I

    invoke-static {v1}, Landroid/hardware/wifi/V1_0/RttStatus;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    const-string v1, ", .retryAfterDuration = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    iget-byte v1, p0, Landroid/hardware/wifi/V1_0/RttResult;->retryAfterDuration:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 242
    const-string v1, ", .type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    iget v1, p0, Landroid/hardware/wifi/V1_0/RttResult;->type:I

    invoke-static {v1}, Landroid/hardware/wifi/V1_0/RttType;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    const-string v1, ", .rssi = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    iget v1, p0, Landroid/hardware/wifi/V1_0/RttResult;->rssi:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 246
    const-string v1, ", .rssiSpread = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    iget v1, p0, Landroid/hardware/wifi/V1_0/RttResult;->rssiSpread:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 248
    const-string v1, ", .txRate = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    iget-object v1, p0, Landroid/hardware/wifi/V1_0/RttResult;->txRate:Landroid/hardware/wifi/V1_0/WifiRateInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 250
    const-string v1, ", .rxRate = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    iget-object v1, p0, Landroid/hardware/wifi/V1_0/RttResult;->rxRate:Landroid/hardware/wifi/V1_0/WifiRateInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 252
    const-string v1, ", .rtt = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    iget-wide v1, p0, Landroid/hardware/wifi/V1_0/RttResult;->rtt:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 254
    const-string v1, ", .rttSd = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    iget-wide v1, p0, Landroid/hardware/wifi/V1_0/RttResult;->rttSd:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 256
    const-string v1, ", .rttSpread = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    iget-wide v1, p0, Landroid/hardware/wifi/V1_0/RttResult;->rttSpread:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 258
    const-string v1, ", .distanceInMm = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    iget v1, p0, Landroid/hardware/wifi/V1_0/RttResult;->distanceInMm:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 260
    const-string v1, ", .distanceSdInMm = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    iget v1, p0, Landroid/hardware/wifi/V1_0/RttResult;->distanceSdInMm:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 262
    const-string v1, ", .distanceSpreadInMm = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    iget v1, p0, Landroid/hardware/wifi/V1_0/RttResult;->distanceSpreadInMm:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 264
    const-string v1, ", .timeStampInUs = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    iget-wide v1, p0, Landroid/hardware/wifi/V1_0/RttResult;->timeStampInUs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 266
    const-string v1, ", .burstDurationInMs = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    iget v1, p0, Landroid/hardware/wifi/V1_0/RttResult;->burstDurationInMs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 268
    const-string v1, ", .negotiatedBurstNum = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    iget v1, p0, Landroid/hardware/wifi/V1_0/RttResult;->negotiatedBurstNum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 270
    const-string v1, ", .lci = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    iget-object v1, p0, Landroid/hardware/wifi/V1_0/RttResult;->lci:Landroid/hardware/wifi/V1_0/WifiInformationElement;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 272
    const-string v1, ", .lcr = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    iget-object v1, p0, Landroid/hardware/wifi/V1_0/RttResult;->lcr:Landroid/hardware/wifi/V1_0/WifiInformationElement;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 274
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .locals 4
    .param p1, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p2, "_hidl_offset"    # J

    .line 361
    const-wide/16 v0, 0x0

    add-long/2addr v0, p2

    .line 362
    .local v0, "_hidl_array_offset_0":J
    iget-object v2, p0, Landroid/hardware/wifi/V1_0/RttResult;->addr:[B

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 363
    nop

    .line 365
    .end local v0    # "_hidl_array_offset_0":J
    const-wide/16 v0, 0x8

    add-long/2addr v0, p2

    iget v2, p0, Landroid/hardware/wifi/V1_0/RttResult;->burstNum:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 366
    const-wide/16 v0, 0xc

    add-long/2addr v0, p2

    iget v2, p0, Landroid/hardware/wifi/V1_0/RttResult;->measurementNumber:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 367
    const-wide/16 v0, 0x10

    add-long/2addr v0, p2

    iget v2, p0, Landroid/hardware/wifi/V1_0/RttResult;->successNumber:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 368
    const-wide/16 v0, 0x14

    add-long/2addr v0, p2

    iget-byte v2, p0, Landroid/hardware/wifi/V1_0/RttResult;->numberPerBurstPeer:B

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt8(JB)V

    .line 369
    const-wide/16 v0, 0x18

    add-long/2addr v0, p2

    iget v2, p0, Landroid/hardware/wifi/V1_0/RttResult;->status:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 370
    const-wide/16 v0, 0x1c

    add-long/2addr v0, p2

    iget-byte v2, p0, Landroid/hardware/wifi/V1_0/RttResult;->retryAfterDuration:B

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt8(JB)V

    .line 371
    const-wide/16 v0, 0x20

    add-long/2addr v0, p2

    iget v2, p0, Landroid/hardware/wifi/V1_0/RttResult;->type:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 372
    const-wide/16 v0, 0x24

    add-long/2addr v0, p2

    iget v2, p0, Landroid/hardware/wifi/V1_0/RttResult;->rssi:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 373
    const-wide/16 v0, 0x28

    add-long/2addr v0, p2

    iget v2, p0, Landroid/hardware/wifi/V1_0/RttResult;->rssiSpread:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 374
    iget-object v0, p0, Landroid/hardware/wifi/V1_0/RttResult;->txRate:Landroid/hardware/wifi/V1_0/WifiRateInfo;

    const-wide/16 v1, 0x2c

    add-long/2addr v1, p2

    invoke-virtual {v0, p1, v1, v2}, Landroid/hardware/wifi/V1_0/WifiRateInfo;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 375
    iget-object v0, p0, Landroid/hardware/wifi/V1_0/RttResult;->rxRate:Landroid/hardware/wifi/V1_0/WifiRateInfo;

    const-wide/16 v1, 0x40

    add-long/2addr v1, p2

    invoke-virtual {v0, p1, v1, v2}, Landroid/hardware/wifi/V1_0/WifiRateInfo;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 376
    const-wide/16 v0, 0x58

    add-long/2addr v0, p2

    iget-wide v2, p0, Landroid/hardware/wifi/V1_0/RttResult;->rtt:J

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/os/HwBlob;->putInt64(JJ)V

    .line 377
    const-wide/16 v0, 0x60

    add-long/2addr v0, p2

    iget-wide v2, p0, Landroid/hardware/wifi/V1_0/RttResult;->rttSd:J

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/os/HwBlob;->putInt64(JJ)V

    .line 378
    const-wide/16 v0, 0x68

    add-long/2addr v0, p2

    iget-wide v2, p0, Landroid/hardware/wifi/V1_0/RttResult;->rttSpread:J

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/os/HwBlob;->putInt64(JJ)V

    .line 379
    const-wide/16 v0, 0x70

    add-long/2addr v0, p2

    iget v2, p0, Landroid/hardware/wifi/V1_0/RttResult;->distanceInMm:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 380
    const-wide/16 v0, 0x74

    add-long/2addr v0, p2

    iget v2, p0, Landroid/hardware/wifi/V1_0/RttResult;->distanceSdInMm:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 381
    const-wide/16 v0, 0x78

    add-long/2addr v0, p2

    iget v2, p0, Landroid/hardware/wifi/V1_0/RttResult;->distanceSpreadInMm:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 382
    const-wide/16 v0, 0x80

    add-long/2addr v0, p2

    iget-wide v2, p0, Landroid/hardware/wifi/V1_0/RttResult;->timeStampInUs:J

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/os/HwBlob;->putInt64(JJ)V

    .line 383
    const-wide/16 v0, 0x88

    add-long/2addr v0, p2

    iget v2, p0, Landroid/hardware/wifi/V1_0/RttResult;->burstDurationInMs:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 384
    const-wide/16 v0, 0x8c

    add-long/2addr v0, p2

    iget v2, p0, Landroid/hardware/wifi/V1_0/RttResult;->negotiatedBurstNum:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 385
    iget-object v0, p0, Landroid/hardware/wifi/V1_0/RttResult;->lci:Landroid/hardware/wifi/V1_0/WifiInformationElement;

    const-wide/16 v1, 0x90

    add-long/2addr v1, p2

    invoke-virtual {v0, p1, v1, v2}, Landroid/hardware/wifi/V1_0/WifiInformationElement;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 386
    iget-object v0, p0, Landroid/hardware/wifi/V1_0/RttResult;->lcr:Landroid/hardware/wifi/V1_0/WifiInformationElement;

    const-wide/16 v1, 0xa8

    add-long/2addr v1, p2

    invoke-virtual {v0, p1, v1, v2}, Landroid/hardware/wifi/V1_0/WifiInformationElement;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 387
    return-void
.end method

.method public final writeToParcel(Landroid/os/HwParcel;)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 336
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0xc0

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 337
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/wifi/V1_0/RttResult;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 338
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 339
    return-void
.end method
