.class public final Landroid/hardware/wifi/V1_0/NanDebugConfig;
.super Ljava/lang/Object;
.source "NanDebugConfig.java"


# instance fields
.field public clusterIdBottomRangeVal:S

.field public clusterIdTopRangeVal:S

.field public final discoveryChannelMhzVal:[I

.field public hopCountForceVal:B

.field public final intfAddrVal:[B

.field public ouiVal:I

.field public randomFactorForceVal:B

.field public final useBeaconsInBandVal:[Z

.field public final useSdfInBandVal:[Z

.field public validClusterIdVals:Z

.field public validDiscoveryChannelVal:Z

.field public validHopCountForceVal:Z

.field public validIntfAddrVal:Z

.field public validOuiVal:Z

.field public validRandomFactorForceVal:Z

.field public validUseBeaconsInBandVal:Z

.field public validUseSdfInBandVal:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x6

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/hardware/wifi/V1_0/NanDebugConfig;->intfAddrVal:[B

    .line 47
    const/4 v0, 0x2

    new-array v1, v0, [I

    iput-object v1, p0, Landroid/hardware/wifi/V1_0/NanDebugConfig;->discoveryChannelMhzVal:[I

    .line 53
    new-array v1, v0, [Z

    iput-object v1, p0, Landroid/hardware/wifi/V1_0/NanDebugConfig;->useBeaconsInBandVal:[Z

    .line 59
    new-array v0, v0, [Z

    iput-object v0, p0, Landroid/hardware/wifi/V1_0/NanDebugConfig;->useSdfInBandVal:[Z

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
            "Landroid/hardware/wifi/V1_0/NanDebugConfig;",
            ">;"
        }
    .end annotation

    .line 197
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 198
    .local v0, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/wifi/V1_0/NanDebugConfig;>;"
    const-wide/16 v1, 0x10

    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    .line 201
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v2, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    .line 202
    .local v2, "_hidl_vec_size":I
    mul-int/lit8 v3, v2, 0x2c

    int-to-long v5, v3

    .line 203
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    .line 202
    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v3

    .line 206
    .local v3, "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 207
    const/4 v4, 0x0

    .local v4, "_hidl_index_0":I
    :goto_0
    if-ge v4, v2, :cond_0

    .line 208
    new-instance v5, Landroid/hardware/wifi/V1_0/NanDebugConfig;

    invoke-direct {v5}, Landroid/hardware/wifi/V1_0/NanDebugConfig;-><init>()V

    .line 209
    .local v5, "_hidl_vec_element":Landroid/hardware/wifi/V1_0/NanDebugConfig;
    mul-int/lit8 v6, v4, 0x2c

    int-to-long v6, v6

    invoke-virtual {v5, p0, v3, v6, v7}, Landroid/hardware/wifi/V1_0/NanDebugConfig;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 210
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 207
    .end local v5    # "_hidl_vec_element":Landroid/hardware/wifi/V1_0/NanDebugConfig;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 214
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
            "Landroid/hardware/wifi/V1_0/NanDebugConfig;",
            ">;)V"
        }
    .end annotation

    .line 262
    .local p1, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/wifi/V1_0/NanDebugConfig;>;"
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 264
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 265
    .local v1, "_hidl_vec_size":I
    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 266
    const/4 v2, 0x0

    const-wide/16 v3, 0xc

    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 267
    new-instance v3, Landroid/os/HwBlob;

    mul-int/lit8 v4, v1, 0x2c

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 268
    .local v3, "childBlob":Landroid/os/HwBlob;
    nop

    .local v2, "_hidl_index_0":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 269
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/wifi/V1_0/NanDebugConfig;

    mul-int/lit8 v5, v2, 0x2c

    int-to-long v5, v5

    invoke-virtual {v4, v3, v5, v6}, Landroid/hardware/wifi/V1_0/NanDebugConfig;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 268
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 271
    .end local v2    # "_hidl_index_0":I
    :cond_0
    const-wide/16 v4, 0x0

    invoke-virtual {v0, v4, v5, v3}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 274
    .end local v1    # "_hidl_vec_size":I
    .end local v3    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 275
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "otherObject"    # Ljava/lang/Object;

    .line 63
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 64
    return v0

    .line 66
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 67
    return v1

    .line 69
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/hardware/wifi/V1_0/NanDebugConfig;

    if-eq v2, v3, :cond_2

    .line 70
    return v1

    .line 72
    :cond_2
    move-object v2, p1

    check-cast v2, Landroid/hardware/wifi/V1_0/NanDebugConfig;

    .line 73
    .local v2, "other":Landroid/hardware/wifi/V1_0/NanDebugConfig;
    iget-boolean v3, p0, Landroid/hardware/wifi/V1_0/NanDebugConfig;->validClusterIdVals:Z

    iget-boolean v4, v2, Landroid/hardware/wifi/V1_0/NanDebugConfig;->validClusterIdVals:Z

    if-eq v3, v4, :cond_3

    .line 74
    return v1

    .line 76
    :cond_3
    iget-short v3, p0, Landroid/hardware/wifi/V1_0/NanDebugConfig;->clusterIdBottomRangeVal:S

    iget-short v4, v2, Landroid/hardware/wifi/V1_0/NanDebugConfig;->clusterIdBottomRangeVal:S

    if-eq v3, v4, :cond_4

    .line 77
    return v1

    .line 79
    :cond_4
    iget-short v3, p0, Landroid/hardware/wifi/V1_0/NanDebugConfig;->clusterIdTopRangeVal:S

    iget-short v4, v2, Landroid/hardware/wifi/V1_0/NanDebugConfig;->clusterIdTopRangeVal:S

    if-eq v3, v4, :cond_5

    .line 80
    return v1

    .line 82
    :cond_5
    iget-boolean v3, p0, Landroid/hardware/wifi/V1_0/NanDebugConfig;->validIntfAddrVal:Z

    iget-boolean v4, v2, Landroid/hardware/wifi/V1_0/NanDebugConfig;->validIntfAddrVal:Z

    if-eq v3, v4, :cond_6

    .line 83
    return v1

    .line 85
    :cond_6
    iget-object v3, p0, Landroid/hardware/wifi/V1_0/NanDebugConfig;->intfAddrVal:[B

    iget-object v4, v2, Landroid/hardware/wifi/V1_0/NanDebugConfig;->intfAddrVal:[B

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 86
    return v1

    .line 88
    :cond_7
    iget-boolean v3, p0, Landroid/hardware/wifi/V1_0/NanDebugConfig;->validOuiVal:Z

    iget-boolean v4, v2, Landroid/hardware/wifi/V1_0/NanDebugConfig;->validOuiVal:Z

    if-eq v3, v4, :cond_8

    .line 89
    return v1

    .line 91
    :cond_8
    iget v3, p0, Landroid/hardware/wifi/V1_0/NanDebugConfig;->ouiVal:I

    iget v4, v2, Landroid/hardware/wifi/V1_0/NanDebugConfig;->ouiVal:I

    if-eq v3, v4, :cond_9

    .line 92
    return v1

    .line 94
    :cond_9
    iget-boolean v3, p0, Landroid/hardware/wifi/V1_0/NanDebugConfig;->validRandomFactorForceVal:Z

    iget-boolean v4, v2, Landroid/hardware/wifi/V1_0/NanDebugConfig;->validRandomFactorForceVal:Z

    if-eq v3, v4, :cond_a

    .line 95
    return v1

    .line 97
    :cond_a
    iget-byte v3, p0, Landroid/hardware/wifi/V1_0/NanDebugConfig;->randomFactorForceVal:B

    iget-byte v4, v2, Landroid/hardware/wifi/V1_0/NanDebugConfig;->randomFactorForceVal:B

    if-eq v3, v4, :cond_b

    .line 98
    return v1

    .line 100
    :cond_b
    iget-boolean v3, p0, Landroid/hardware/wifi/V1_0/NanDebugConfig;->validHopCountForceVal:Z

    iget-boolean v4, v2, Landroid/hardware/wifi/V1_0/NanDebugConfig;->validHopCountForceVal:Z

    if-eq v3, v4, :cond_c

    .line 101
    return v1

    .line 103
    :cond_c
    iget-byte v3, p0, Landroid/hardware/wifi/V1_0/NanDebugConfig;->hopCountForceVal:B

    iget-byte v4, v2, Landroid/hardware/wifi/V1_0/NanDebugConfig;->hopCountForceVal:B

    if-eq v3, v4, :cond_d

    .line 104
    return v1

    .line 106
    :cond_d
    iget-boolean v3, p0, Landroid/hardware/wifi/V1_0/NanDebugConfig;->validDiscoveryChannelVal:Z

    iget-boolean v4, v2, Landroid/hardware/wifi/V1_0/NanDebugConfig;->validDiscoveryChannelVal:Z

    if-eq v3, v4, :cond_e

    .line 107
    return v1

    .line 109
    :cond_e
    iget-object v3, p0, Landroid/hardware/wifi/V1_0/NanDebugConfig;->discoveryChannelMhzVal:[I

    iget-object v4, v2, Landroid/hardware/wifi/V1_0/NanDebugConfig;->discoveryChannelMhzVal:[I

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    .line 110
    return v1

    .line 112
    :cond_f
    iget-boolean v3, p0, Landroid/hardware/wifi/V1_0/NanDebugConfig;->validUseBeaconsInBandVal:Z

    iget-boolean v4, v2, Landroid/hardware/wifi/V1_0/NanDebugConfig;->validUseBeaconsInBandVal:Z

    if-eq v3, v4, :cond_10

    .line 113
    return v1

    .line 115
    :cond_10
    iget-object v3, p0, Landroid/hardware/wifi/V1_0/NanDebugConfig;->useBeaconsInBandVal:[Z

    iget-object v4, v2, Landroid/hardware/wifi/V1_0/NanDebugConfig;->useBeaconsInBandVal:[Z

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    .line 116
    return v1

    .line 118
    :cond_11
    iget-boolean v3, p0, Landroid/hardware/wifi/V1_0/NanDebugConfig;->validUseSdfInBandVal:Z

    iget-boolean v4, v2, Landroid/hardware/wifi/V1_0/NanDebugConfig;->validUseSdfInBandVal:Z

    if-eq v3, v4, :cond_12

    .line 119
    return v1

    .line 121
    :cond_12
    iget-object v3, p0, Landroid/hardware/wifi/V1_0/NanDebugConfig;->useSdfInBandVal:[Z

    iget-object v4, v2, Landroid/hardware/wifi/V1_0/NanDebugConfig;->useSdfInBandVal:[Z

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_13

    .line 122
    return v1

    .line 124
    :cond_13
    return v0
.end method

.method public final hashCode()I
    .locals 3

    .line 129
    const/16 v0, 0x11

    new-array v0, v0, [Ljava/lang/Object;

    iget-boolean v1, p0, Landroid/hardware/wifi/V1_0/NanDebugConfig;->validClusterIdVals:Z

    .line 130
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-short v1, p0, Landroid/hardware/wifi/V1_0/NanDebugConfig;->clusterIdBottomRangeVal:S

    .line 131
    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-short v1, p0, Landroid/hardware/wifi/V1_0/NanDebugConfig;->clusterIdTopRangeVal:S

    .line 132
    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/hardware/wifi/V1_0/NanDebugConfig;->validIntfAddrVal:Z

    .line 133
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/wifi/V1_0/NanDebugConfig;->intfAddrVal:[B

    .line 134
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/hardware/wifi/V1_0/NanDebugConfig;->validOuiVal:Z

    .line 135
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/wifi/V1_0/NanDebugConfig;->ouiVal:I

    .line 136
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/hardware/wifi/V1_0/NanDebugConfig;->validRandomFactorForceVal:Z

    .line 137
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget-byte v1, p0, Landroid/hardware/wifi/V1_0/NanDebugConfig;->randomFactorForceVal:B

    .line 138
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/hardware/wifi/V1_0/NanDebugConfig;->validHopCountForceVal:Z

    .line 139
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    iget-byte v1, p0, Landroid/hardware/wifi/V1_0/NanDebugConfig;->hopCountForceVal:B

    .line 140
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/hardware/wifi/V1_0/NanDebugConfig;->validDiscoveryChannelVal:Z

    .line 141
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/wifi/V1_0/NanDebugConfig;->discoveryChannelMhzVal:[I

    .line 142
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xc

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/hardware/wifi/V1_0/NanDebugConfig;->validUseBeaconsInBandVal:Z

    .line 143
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xd

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/wifi/V1_0/NanDebugConfig;->useBeaconsInBandVal:[Z

    .line 144
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xe

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/hardware/wifi/V1_0/NanDebugConfig;->validUseSdfInBandVal:Z

    .line 145
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xf

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/wifi/V1_0/NanDebugConfig;->useSdfInBandVal:[Z

    .line 146
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x10

    aput-object v1, v0, v2

    .line 129
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .locals 4
    .param p1, "parcel"    # Landroid/os/HwParcel;
    .param p2, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p3, "_hidl_offset"    # J

    .line 219
    const-wide/16 v0, 0x0

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v0

    iput-boolean v0, p0, Landroid/hardware/wifi/V1_0/NanDebugConfig;->validClusterIdVals:Z

    .line 220
    const-wide/16 v0, 0x2

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt16(J)S

    move-result v0

    iput-short v0, p0, Landroid/hardware/wifi/V1_0/NanDebugConfig;->clusterIdBottomRangeVal:S

    .line 221
    const-wide/16 v0, 0x4

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt16(J)S

    move-result v0

    iput-short v0, p0, Landroid/hardware/wifi/V1_0/NanDebugConfig;->clusterIdTopRangeVal:S

    .line 222
    const-wide/16 v0, 0x6

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v0

    iput-boolean v0, p0, Landroid/hardware/wifi/V1_0/NanDebugConfig;->validIntfAddrVal:Z

    .line 224
    const-wide/16 v0, 0x7

    add-long/2addr v0, p3

    .line 225
    .local v0, "_hidl_array_offset_0":J
    iget-object v2, p0, Landroid/hardware/wifi/V1_0/NanDebugConfig;->intfAddrVal:[B

    const/4 v3, 0x6

    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 226
    nop

    .line 228
    .end local v0    # "_hidl_array_offset_0":J
    const-wide/16 v0, 0xd

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v0

    iput-boolean v0, p0, Landroid/hardware/wifi/V1_0/NanDebugConfig;->validOuiVal:Z

    .line 229
    const-wide/16 v0, 0x10

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v0

    iput v0, p0, Landroid/hardware/wifi/V1_0/NanDebugConfig;->ouiVal:I

    .line 230
    const-wide/16 v0, 0x14

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v0

    iput-boolean v0, p0, Landroid/hardware/wifi/V1_0/NanDebugConfig;->validRandomFactorForceVal:Z

    .line 231
    const-wide/16 v0, 0x15

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v0

    iput-byte v0, p0, Landroid/hardware/wifi/V1_0/NanDebugConfig;->randomFactorForceVal:B

    .line 232
    const-wide/16 v0, 0x16

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v0

    iput-boolean v0, p0, Landroid/hardware/wifi/V1_0/NanDebugConfig;->validHopCountForceVal:Z

    .line 233
    const-wide/16 v0, 0x17

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v0

    iput-byte v0, p0, Landroid/hardware/wifi/V1_0/NanDebugConfig;->hopCountForceVal:B

    .line 234
    const-wide/16 v0, 0x18

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v0

    iput-boolean v0, p0, Landroid/hardware/wifi/V1_0/NanDebugConfig;->validDiscoveryChannelVal:Z

    .line 236
    const-wide/16 v0, 0x1c

    add-long/2addr v0, p3

    .line 237
    .restart local v0    # "_hidl_array_offset_0":J
    iget-object v2, p0, Landroid/hardware/wifi/V1_0/NanDebugConfig;->discoveryChannelMhzVal:[I

    const/4 v3, 0x2

    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/os/HwBlob;->copyToInt32Array(J[II)V

    .line 238
    nop

    .line 240
    .end local v0    # "_hidl_array_offset_0":J
    const-wide/16 v0, 0x24

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v0

    iput-boolean v0, p0, Landroid/hardware/wifi/V1_0/NanDebugConfig;->validUseBeaconsInBandVal:Z

    .line 242
    const-wide/16 v0, 0x25

    add-long/2addr v0, p3

    .line 243
    .restart local v0    # "_hidl_array_offset_0":J
    iget-object v2, p0, Landroid/hardware/wifi/V1_0/NanDebugConfig;->useBeaconsInBandVal:[Z

    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/os/HwBlob;->copyToBoolArray(J[ZI)V

    .line 244
    nop

    .line 246
    .end local v0    # "_hidl_array_offset_0":J
    const-wide/16 v0, 0x27

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v0

    iput-boolean v0, p0, Landroid/hardware/wifi/V1_0/NanDebugConfig;->validUseSdfInBandVal:Z

    .line 248
    const-wide/16 v0, 0x28

    add-long/2addr v0, p3

    .line 249
    .restart local v0    # "_hidl_array_offset_0":J
    iget-object v2, p0, Landroid/hardware/wifi/V1_0/NanDebugConfig;->useSdfInBandVal:[Z

    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/os/HwBlob;->copyToBoolArray(J[ZI)V

    .line 250
    nop

    .line 252
    .end local v0    # "_hidl_array_offset_0":J
    return-void
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 192
    const-wide/16 v0, 0x2c

    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 193
    .local v0, "blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/hardware/wifi/V1_0/NanDebugConfig;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 194
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 152
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    const-string v1, ".validClusterIdVals = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    iget-boolean v1, p0, Landroid/hardware/wifi/V1_0/NanDebugConfig;->validClusterIdVals:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 155
    const-string v1, ", .clusterIdBottomRangeVal = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    iget-short v1, p0, Landroid/hardware/wifi/V1_0/NanDebugConfig;->clusterIdBottomRangeVal:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 157
    const-string v1, ", .clusterIdTopRangeVal = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    iget-short v1, p0, Landroid/hardware/wifi/V1_0/NanDebugConfig;->clusterIdTopRangeVal:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 159
    const-string v1, ", .validIntfAddrVal = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    iget-boolean v1, p0, Landroid/hardware/wifi/V1_0/NanDebugConfig;->validIntfAddrVal:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 161
    const-string v1, ", .intfAddrVal = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    iget-object v1, p0, Landroid/hardware/wifi/V1_0/NanDebugConfig;->intfAddrVal:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    const-string v1, ", .validOuiVal = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    iget-boolean v1, p0, Landroid/hardware/wifi/V1_0/NanDebugConfig;->validOuiVal:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 165
    const-string v1, ", .ouiVal = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    iget v1, p0, Landroid/hardware/wifi/V1_0/NanDebugConfig;->ouiVal:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 167
    const-string v1, ", .validRandomFactorForceVal = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    iget-boolean v1, p0, Landroid/hardware/wifi/V1_0/NanDebugConfig;->validRandomFactorForceVal:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 169
    const-string v1, ", .randomFactorForceVal = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    iget-byte v1, p0, Landroid/hardware/wifi/V1_0/NanDebugConfig;->randomFactorForceVal:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 171
    const-string v1, ", .validHopCountForceVal = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    iget-boolean v1, p0, Landroid/hardware/wifi/V1_0/NanDebugConfig;->validHopCountForceVal:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 173
    const-string v1, ", .hopCountForceVal = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    iget-byte v1, p0, Landroid/hardware/wifi/V1_0/NanDebugConfig;->hopCountForceVal:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 175
    const-string v1, ", .validDiscoveryChannelVal = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    iget-boolean v1, p0, Landroid/hardware/wifi/V1_0/NanDebugConfig;->validDiscoveryChannelVal:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 177
    const-string v1, ", .discoveryChannelMhzVal = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    iget-object v1, p0, Landroid/hardware/wifi/V1_0/NanDebugConfig;->discoveryChannelMhzVal:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    const-string v1, ", .validUseBeaconsInBandVal = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    iget-boolean v1, p0, Landroid/hardware/wifi/V1_0/NanDebugConfig;->validUseBeaconsInBandVal:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 181
    const-string v1, ", .useBeaconsInBandVal = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    iget-object v1, p0, Landroid/hardware/wifi/V1_0/NanDebugConfig;->useBeaconsInBandVal:[Z

    invoke-static {v1}, Ljava/util/Arrays;->toString([Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    const-string v1, ", .validUseSdfInBandVal = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    iget-boolean v1, p0, Landroid/hardware/wifi/V1_0/NanDebugConfig;->validUseSdfInBandVal:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 185
    const-string v1, ", .useSdfInBandVal = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    iget-object v1, p0, Landroid/hardware/wifi/V1_0/NanDebugConfig;->useSdfInBandVal:[Z

    invoke-static {v1}, Ljava/util/Arrays;->toString([Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .locals 3
    .param p1, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p2, "_hidl_offset"    # J

    .line 279
    const-wide/16 v0, 0x0

    add-long/2addr v0, p2

    iget-boolean v2, p0, Landroid/hardware/wifi/V1_0/NanDebugConfig;->validClusterIdVals:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 280
    const-wide/16 v0, 0x2

    add-long/2addr v0, p2

    iget-short v2, p0, Landroid/hardware/wifi/V1_0/NanDebugConfig;->clusterIdBottomRangeVal:S

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt16(JS)V

    .line 281
    const-wide/16 v0, 0x4

    add-long/2addr v0, p2

    iget-short v2, p0, Landroid/hardware/wifi/V1_0/NanDebugConfig;->clusterIdTopRangeVal:S

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt16(JS)V

    .line 282
    const-wide/16 v0, 0x6

    add-long/2addr v0, p2

    iget-boolean v2, p0, Landroid/hardware/wifi/V1_0/NanDebugConfig;->validIntfAddrVal:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 284
    const-wide/16 v0, 0x7

    add-long/2addr v0, p2

    .line 285
    .local v0, "_hidl_array_offset_0":J
    iget-object v2, p0, Landroid/hardware/wifi/V1_0/NanDebugConfig;->intfAddrVal:[B

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 286
    nop

    .line 288
    .end local v0    # "_hidl_array_offset_0":J
    const-wide/16 v0, 0xd

    add-long/2addr v0, p2

    iget-boolean v2, p0, Landroid/hardware/wifi/V1_0/NanDebugConfig;->validOuiVal:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 289
    const-wide/16 v0, 0x10

    add-long/2addr v0, p2

    iget v2, p0, Landroid/hardware/wifi/V1_0/NanDebugConfig;->ouiVal:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 290
    const-wide/16 v0, 0x14

    add-long/2addr v0, p2

    iget-boolean v2, p0, Landroid/hardware/wifi/V1_0/NanDebugConfig;->validRandomFactorForceVal:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 291
    const-wide/16 v0, 0x15

    add-long/2addr v0, p2

    iget-byte v2, p0, Landroid/hardware/wifi/V1_0/NanDebugConfig;->randomFactorForceVal:B

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt8(JB)V

    .line 292
    const-wide/16 v0, 0x16

    add-long/2addr v0, p2

    iget-boolean v2, p0, Landroid/hardware/wifi/V1_0/NanDebugConfig;->validHopCountForceVal:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 293
    const-wide/16 v0, 0x17

    add-long/2addr v0, p2

    iget-byte v2, p0, Landroid/hardware/wifi/V1_0/NanDebugConfig;->hopCountForceVal:B

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt8(JB)V

    .line 294
    const-wide/16 v0, 0x18

    add-long/2addr v0, p2

    iget-boolean v2, p0, Landroid/hardware/wifi/V1_0/NanDebugConfig;->validDiscoveryChannelVal:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 296
    const-wide/16 v0, 0x1c

    add-long/2addr v0, p2

    .line 297
    .restart local v0    # "_hidl_array_offset_0":J
    iget-object v2, p0, Landroid/hardware/wifi/V1_0/NanDebugConfig;->discoveryChannelMhzVal:[I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32Array(J[I)V

    .line 298
    nop

    .line 300
    .end local v0    # "_hidl_array_offset_0":J
    const-wide/16 v0, 0x24

    add-long/2addr v0, p2

    iget-boolean v2, p0, Landroid/hardware/wifi/V1_0/NanDebugConfig;->validUseBeaconsInBandVal:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 302
    const-wide/16 v0, 0x25

    add-long/2addr v0, p2

    .line 303
    .restart local v0    # "_hidl_array_offset_0":J
    iget-object v2, p0, Landroid/hardware/wifi/V1_0/NanDebugConfig;->useBeaconsInBandVal:[Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putBoolArray(J[Z)V

    .line 304
    nop

    .line 306
    .end local v0    # "_hidl_array_offset_0":J
    const-wide/16 v0, 0x27

    add-long/2addr v0, p2

    iget-boolean v2, p0, Landroid/hardware/wifi/V1_0/NanDebugConfig;->validUseSdfInBandVal:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 308
    const-wide/16 v0, 0x28

    add-long/2addr v0, p2

    .line 309
    .restart local v0    # "_hidl_array_offset_0":J
    iget-object v2, p0, Landroid/hardware/wifi/V1_0/NanDebugConfig;->useSdfInBandVal:[Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putBoolArray(J[Z)V

    .line 310
    nop

    .line 312
    .end local v0    # "_hidl_array_offset_0":J
    return-void
.end method

.method public final writeToParcel(Landroid/os/HwParcel;)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 255
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x2c

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 256
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/wifi/V1_0/NanDebugConfig;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 257
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 258
    return-void
.end method
