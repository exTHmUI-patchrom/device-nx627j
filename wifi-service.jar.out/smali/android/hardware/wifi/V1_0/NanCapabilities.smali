.class public final Landroid/hardware/wifi/V1_0/NanCapabilities;
.super Ljava/lang/Object;
.source "NanCapabilities.java"


# instance fields
.field public maxAppInfoLen:I

.field public maxConcurrentClusters:I

.field public maxExtendedServiceSpecificInfoLen:I

.field public maxMatchFilterLen:I

.field public maxNdiInterfaces:I

.field public maxNdpSessions:I

.field public maxPublishes:I

.field public maxQueuedTransmitFollowupMsgs:I

.field public maxServiceNameLen:I

.field public maxServiceSpecificInfoLen:I

.field public maxSubscribeInterfaceAddresses:I

.field public maxSubscribes:I

.field public maxTotalMatchFilterLen:I

.field public supportedCipherSuites:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
            "Landroid/hardware/wifi/V1_0/NanCapabilities;",
            ">;"
        }
    .end annotation

    .line 181
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 182
    .local v0, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/wifi/V1_0/NanCapabilities;>;"
    const-wide/16 v1, 0x10

    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    .line 185
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v2, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    .line 186
    .local v2, "_hidl_vec_size":I
    mul-int/lit8 v3, v2, 0x38

    int-to-long v5, v3

    .line 187
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    .line 186
    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v3

    .line 190
    .local v3, "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 191
    const/4 v4, 0x0

    .local v4, "_hidl_index_0":I
    :goto_0
    if-ge v4, v2, :cond_0

    .line 192
    new-instance v5, Landroid/hardware/wifi/V1_0/NanCapabilities;

    invoke-direct {v5}, Landroid/hardware/wifi/V1_0/NanCapabilities;-><init>()V

    .line 193
    .local v5, "_hidl_vec_element":Landroid/hardware/wifi/V1_0/NanCapabilities;
    mul-int/lit8 v6, v4, 0x38

    int-to-long v6, v6

    invoke-virtual {v5, p0, v3, v6, v7}, Landroid/hardware/wifi/V1_0/NanCapabilities;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 194
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 191
    .end local v5    # "_hidl_vec_element":Landroid/hardware/wifi/V1_0/NanCapabilities;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 198
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
            "Landroid/hardware/wifi/V1_0/NanCapabilities;",
            ">;)V"
        }
    .end annotation

    .line 227
    .local p1, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/wifi/V1_0/NanCapabilities;>;"
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 229
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 230
    .local v1, "_hidl_vec_size":I
    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 231
    const/4 v2, 0x0

    const-wide/16 v3, 0xc

    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 232
    new-instance v3, Landroid/os/HwBlob;

    mul-int/lit8 v4, v1, 0x38

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 233
    .local v3, "childBlob":Landroid/os/HwBlob;
    nop

    .local v2, "_hidl_index_0":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 234
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/wifi/V1_0/NanCapabilities;

    mul-int/lit8 v5, v2, 0x38

    int-to-long v5, v5

    invoke-virtual {v4, v3, v5, v6}, Landroid/hardware/wifi/V1_0/NanCapabilities;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 233
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 236
    .end local v2    # "_hidl_index_0":I
    :cond_0
    const-wide/16 v4, 0x0

    invoke-virtual {v0, v4, v5, v3}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 239
    .end local v1    # "_hidl_vec_size":I
    .end local v3    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 240
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "otherObject"    # Ljava/lang/Object;

    .line 65
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 66
    return v0

    .line 68
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 69
    return v1

    .line 71
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/hardware/wifi/V1_0/NanCapabilities;

    if-eq v2, v3, :cond_2

    .line 72
    return v1

    .line 74
    :cond_2
    move-object v2, p1

    check-cast v2, Landroid/hardware/wifi/V1_0/NanCapabilities;

    .line 75
    .local v2, "other":Landroid/hardware/wifi/V1_0/NanCapabilities;
    iget v3, p0, Landroid/hardware/wifi/V1_0/NanCapabilities;->maxConcurrentClusters:I

    iget v4, v2, Landroid/hardware/wifi/V1_0/NanCapabilities;->maxConcurrentClusters:I

    if-eq v3, v4, :cond_3

    .line 76
    return v1

    .line 78
    :cond_3
    iget v3, p0, Landroid/hardware/wifi/V1_0/NanCapabilities;->maxPublishes:I

    iget v4, v2, Landroid/hardware/wifi/V1_0/NanCapabilities;->maxPublishes:I

    if-eq v3, v4, :cond_4

    .line 79
    return v1

    .line 81
    :cond_4
    iget v3, p0, Landroid/hardware/wifi/V1_0/NanCapabilities;->maxSubscribes:I

    iget v4, v2, Landroid/hardware/wifi/V1_0/NanCapabilities;->maxSubscribes:I

    if-eq v3, v4, :cond_5

    .line 82
    return v1

    .line 84
    :cond_5
    iget v3, p0, Landroid/hardware/wifi/V1_0/NanCapabilities;->maxServiceNameLen:I

    iget v4, v2, Landroid/hardware/wifi/V1_0/NanCapabilities;->maxServiceNameLen:I

    if-eq v3, v4, :cond_6

    .line 85
    return v1

    .line 87
    :cond_6
    iget v3, p0, Landroid/hardware/wifi/V1_0/NanCapabilities;->maxMatchFilterLen:I

    iget v4, v2, Landroid/hardware/wifi/V1_0/NanCapabilities;->maxMatchFilterLen:I

    if-eq v3, v4, :cond_7

    .line 88
    return v1

    .line 90
    :cond_7
    iget v3, p0, Landroid/hardware/wifi/V1_0/NanCapabilities;->maxTotalMatchFilterLen:I

    iget v4, v2, Landroid/hardware/wifi/V1_0/NanCapabilities;->maxTotalMatchFilterLen:I

    if-eq v3, v4, :cond_8

    .line 91
    return v1

    .line 93
    :cond_8
    iget v3, p0, Landroid/hardware/wifi/V1_0/NanCapabilities;->maxServiceSpecificInfoLen:I

    iget v4, v2, Landroid/hardware/wifi/V1_0/NanCapabilities;->maxServiceSpecificInfoLen:I

    if-eq v3, v4, :cond_9

    .line 94
    return v1

    .line 96
    :cond_9
    iget v3, p0, Landroid/hardware/wifi/V1_0/NanCapabilities;->maxExtendedServiceSpecificInfoLen:I

    iget v4, v2, Landroid/hardware/wifi/V1_0/NanCapabilities;->maxExtendedServiceSpecificInfoLen:I

    if-eq v3, v4, :cond_a

    .line 97
    return v1

    .line 99
    :cond_a
    iget v3, p0, Landroid/hardware/wifi/V1_0/NanCapabilities;->maxNdiInterfaces:I

    iget v4, v2, Landroid/hardware/wifi/V1_0/NanCapabilities;->maxNdiInterfaces:I

    if-eq v3, v4, :cond_b

    .line 100
    return v1

    .line 102
    :cond_b
    iget v3, p0, Landroid/hardware/wifi/V1_0/NanCapabilities;->maxNdpSessions:I

    iget v4, v2, Landroid/hardware/wifi/V1_0/NanCapabilities;->maxNdpSessions:I

    if-eq v3, v4, :cond_c

    .line 103
    return v1

    .line 105
    :cond_c
    iget v3, p0, Landroid/hardware/wifi/V1_0/NanCapabilities;->maxAppInfoLen:I

    iget v4, v2, Landroid/hardware/wifi/V1_0/NanCapabilities;->maxAppInfoLen:I

    if-eq v3, v4, :cond_d

    .line 106
    return v1

    .line 108
    :cond_d
    iget v3, p0, Landroid/hardware/wifi/V1_0/NanCapabilities;->maxQueuedTransmitFollowupMsgs:I

    iget v4, v2, Landroid/hardware/wifi/V1_0/NanCapabilities;->maxQueuedTransmitFollowupMsgs:I

    if-eq v3, v4, :cond_e

    .line 109
    return v1

    .line 111
    :cond_e
    iget v3, p0, Landroid/hardware/wifi/V1_0/NanCapabilities;->maxSubscribeInterfaceAddresses:I

    iget v4, v2, Landroid/hardware/wifi/V1_0/NanCapabilities;->maxSubscribeInterfaceAddresses:I

    if-eq v3, v4, :cond_f

    .line 112
    return v1

    .line 114
    :cond_f
    iget v3, p0, Landroid/hardware/wifi/V1_0/NanCapabilities;->supportedCipherSuites:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, v2, Landroid/hardware/wifi/V1_0/NanCapabilities;->supportedCipherSuites:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10

    .line 115
    return v1

    .line 117
    :cond_10
    return v0
.end method

.method public final hashCode()I
    .locals 3

    .line 122
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/hardware/wifi/V1_0/NanCapabilities;->maxConcurrentClusters:I

    .line 123
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/wifi/V1_0/NanCapabilities;->maxPublishes:I

    .line 124
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/wifi/V1_0/NanCapabilities;->maxSubscribes:I

    .line 125
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/wifi/V1_0/NanCapabilities;->maxServiceNameLen:I

    .line 126
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/wifi/V1_0/NanCapabilities;->maxMatchFilterLen:I

    .line 127
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/wifi/V1_0/NanCapabilities;->maxTotalMatchFilterLen:I

    .line 128
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/wifi/V1_0/NanCapabilities;->maxServiceSpecificInfoLen:I

    .line 129
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/wifi/V1_0/NanCapabilities;->maxExtendedServiceSpecificInfoLen:I

    .line 130
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/wifi/V1_0/NanCapabilities;->maxNdiInterfaces:I

    .line 131
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/wifi/V1_0/NanCapabilities;->maxNdpSessions:I

    .line 132
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/wifi/V1_0/NanCapabilities;->maxAppInfoLen:I

    .line 133
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/wifi/V1_0/NanCapabilities;->maxQueuedTransmitFollowupMsgs:I

    .line 134
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/wifi/V1_0/NanCapabilities;->maxSubscribeInterfaceAddresses:I

    .line 135
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xc

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/wifi/V1_0/NanCapabilities;->supportedCipherSuites:I

    .line 136
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xd

    aput-object v1, v0, v2

    .line 122
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .locals 2
    .param p1, "parcel"    # Landroid/os/HwParcel;
    .param p2, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p3, "_hidl_offset"    # J

    .line 203
    const-wide/16 v0, 0x0

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v0

    iput v0, p0, Landroid/hardware/wifi/V1_0/NanCapabilities;->maxConcurrentClusters:I

    .line 204
    const-wide/16 v0, 0x4

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v0

    iput v0, p0, Landroid/hardware/wifi/V1_0/NanCapabilities;->maxPublishes:I

    .line 205
    const-wide/16 v0, 0x8

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v0

    iput v0, p0, Landroid/hardware/wifi/V1_0/NanCapabilities;->maxSubscribes:I

    .line 206
    const-wide/16 v0, 0xc

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v0

    iput v0, p0, Landroid/hardware/wifi/V1_0/NanCapabilities;->maxServiceNameLen:I

    .line 207
    const-wide/16 v0, 0x10

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v0

    iput v0, p0, Landroid/hardware/wifi/V1_0/NanCapabilities;->maxMatchFilterLen:I

    .line 208
    const-wide/16 v0, 0x14

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v0

    iput v0, p0, Landroid/hardware/wifi/V1_0/NanCapabilities;->maxTotalMatchFilterLen:I

    .line 209
    const-wide/16 v0, 0x18

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v0

    iput v0, p0, Landroid/hardware/wifi/V1_0/NanCapabilities;->maxServiceSpecificInfoLen:I

    .line 210
    const-wide/16 v0, 0x1c

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v0

    iput v0, p0, Landroid/hardware/wifi/V1_0/NanCapabilities;->maxExtendedServiceSpecificInfoLen:I

    .line 211
    const-wide/16 v0, 0x20

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v0

    iput v0, p0, Landroid/hardware/wifi/V1_0/NanCapabilities;->maxNdiInterfaces:I

    .line 212
    const-wide/16 v0, 0x24

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v0

    iput v0, p0, Landroid/hardware/wifi/V1_0/NanCapabilities;->maxNdpSessions:I

    .line 213
    const-wide/16 v0, 0x28

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v0

    iput v0, p0, Landroid/hardware/wifi/V1_0/NanCapabilities;->maxAppInfoLen:I

    .line 214
    const-wide/16 v0, 0x2c

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v0

    iput v0, p0, Landroid/hardware/wifi/V1_0/NanCapabilities;->maxQueuedTransmitFollowupMsgs:I

    .line 215
    const-wide/16 v0, 0x30

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v0

    iput v0, p0, Landroid/hardware/wifi/V1_0/NanCapabilities;->maxSubscribeInterfaceAddresses:I

    .line 216
    const-wide/16 v0, 0x34

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v0

    iput v0, p0, Landroid/hardware/wifi/V1_0/NanCapabilities;->supportedCipherSuites:I

    .line 217
    return-void
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 176
    const-wide/16 v0, 0x38

    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 177
    .local v0, "blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/hardware/wifi/V1_0/NanCapabilities;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 178
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 142
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    const-string v1, ".maxConcurrentClusters = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    iget v1, p0, Landroid/hardware/wifi/V1_0/NanCapabilities;->maxConcurrentClusters:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 145
    const-string v1, ", .maxPublishes = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    iget v1, p0, Landroid/hardware/wifi/V1_0/NanCapabilities;->maxPublishes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 147
    const-string v1, ", .maxSubscribes = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    iget v1, p0, Landroid/hardware/wifi/V1_0/NanCapabilities;->maxSubscribes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 149
    const-string v1, ", .maxServiceNameLen = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    iget v1, p0, Landroid/hardware/wifi/V1_0/NanCapabilities;->maxServiceNameLen:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 151
    const-string v1, ", .maxMatchFilterLen = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    iget v1, p0, Landroid/hardware/wifi/V1_0/NanCapabilities;->maxMatchFilterLen:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 153
    const-string v1, ", .maxTotalMatchFilterLen = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    iget v1, p0, Landroid/hardware/wifi/V1_0/NanCapabilities;->maxTotalMatchFilterLen:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 155
    const-string v1, ", .maxServiceSpecificInfoLen = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    iget v1, p0, Landroid/hardware/wifi/V1_0/NanCapabilities;->maxServiceSpecificInfoLen:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 157
    const-string v1, ", .maxExtendedServiceSpecificInfoLen = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    iget v1, p0, Landroid/hardware/wifi/V1_0/NanCapabilities;->maxExtendedServiceSpecificInfoLen:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 159
    const-string v1, ", .maxNdiInterfaces = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    iget v1, p0, Landroid/hardware/wifi/V1_0/NanCapabilities;->maxNdiInterfaces:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 161
    const-string v1, ", .maxNdpSessions = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    iget v1, p0, Landroid/hardware/wifi/V1_0/NanCapabilities;->maxNdpSessions:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 163
    const-string v1, ", .maxAppInfoLen = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    iget v1, p0, Landroid/hardware/wifi/V1_0/NanCapabilities;->maxAppInfoLen:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 165
    const-string v1, ", .maxQueuedTransmitFollowupMsgs = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    iget v1, p0, Landroid/hardware/wifi/V1_0/NanCapabilities;->maxQueuedTransmitFollowupMsgs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 167
    const-string v1, ", .maxSubscribeInterfaceAddresses = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    iget v1, p0, Landroid/hardware/wifi/V1_0/NanCapabilities;->maxSubscribeInterfaceAddresses:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 169
    const-string v1, ", .supportedCipherSuites = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    iget v1, p0, Landroid/hardware/wifi/V1_0/NanCapabilities;->supportedCipherSuites:I

    invoke-static {v1}, Landroid/hardware/wifi/V1_0/NanCipherSuiteType;->dumpBitfield(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .locals 3
    .param p1, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p2, "_hidl_offset"    # J

    .line 244
    const-wide/16 v0, 0x0

    add-long/2addr v0, p2

    iget v2, p0, Landroid/hardware/wifi/V1_0/NanCapabilities;->maxConcurrentClusters:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 245
    const-wide/16 v0, 0x4

    add-long/2addr v0, p2

    iget v2, p0, Landroid/hardware/wifi/V1_0/NanCapabilities;->maxPublishes:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 246
    const-wide/16 v0, 0x8

    add-long/2addr v0, p2

    iget v2, p0, Landroid/hardware/wifi/V1_0/NanCapabilities;->maxSubscribes:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 247
    const-wide/16 v0, 0xc

    add-long/2addr v0, p2

    iget v2, p0, Landroid/hardware/wifi/V1_0/NanCapabilities;->maxServiceNameLen:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 248
    const-wide/16 v0, 0x10

    add-long/2addr v0, p2

    iget v2, p0, Landroid/hardware/wifi/V1_0/NanCapabilities;->maxMatchFilterLen:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 249
    const-wide/16 v0, 0x14

    add-long/2addr v0, p2

    iget v2, p0, Landroid/hardware/wifi/V1_0/NanCapabilities;->maxTotalMatchFilterLen:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 250
    const-wide/16 v0, 0x18

    add-long/2addr v0, p2

    iget v2, p0, Landroid/hardware/wifi/V1_0/NanCapabilities;->maxServiceSpecificInfoLen:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 251
    const-wide/16 v0, 0x1c

    add-long/2addr v0, p2

    iget v2, p0, Landroid/hardware/wifi/V1_0/NanCapabilities;->maxExtendedServiceSpecificInfoLen:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 252
    const-wide/16 v0, 0x20

    add-long/2addr v0, p2

    iget v2, p0, Landroid/hardware/wifi/V1_0/NanCapabilities;->maxNdiInterfaces:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 253
    const-wide/16 v0, 0x24

    add-long/2addr v0, p2

    iget v2, p0, Landroid/hardware/wifi/V1_0/NanCapabilities;->maxNdpSessions:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 254
    const-wide/16 v0, 0x28

    add-long/2addr v0, p2

    iget v2, p0, Landroid/hardware/wifi/V1_0/NanCapabilities;->maxAppInfoLen:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 255
    const-wide/16 v0, 0x2c

    add-long/2addr v0, p2

    iget v2, p0, Landroid/hardware/wifi/V1_0/NanCapabilities;->maxQueuedTransmitFollowupMsgs:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 256
    const-wide/16 v0, 0x30

    add-long/2addr v0, p2

    iget v2, p0, Landroid/hardware/wifi/V1_0/NanCapabilities;->maxSubscribeInterfaceAddresses:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 257
    const-wide/16 v0, 0x34

    add-long/2addr v0, p2

    iget v2, p0, Landroid/hardware/wifi/V1_0/NanCapabilities;->supportedCipherSuites:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 258
    return-void
.end method

.method public final writeToParcel(Landroid/os/HwParcel;)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 220
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x38

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 221
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/wifi/V1_0/NanCapabilities;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 222
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 223
    return-void
.end method
