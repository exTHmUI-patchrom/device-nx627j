.class public final Landroid/hardware/wifi/V1_0/NanInitiateDataPathRequest;
.super Ljava/lang/Object;
.source "NanInitiateDataPathRequest.java"


# instance fields
.field public final appInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field public channel:I

.field public channelRequestType:I

.field public ifaceName:Ljava/lang/String;

.field public final peerDiscMacAddr:[B

.field public peerId:I

.field public final securityConfig:Landroid/hardware/wifi/V1_0/NanDataPathSecurityConfig;

.field public final serviceNameOutOfBand:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x6

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/hardware/wifi/V1_0/NanInitiateDataPathRequest;->peerDiscMacAddr:[B

    .line 28
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Landroid/hardware/wifi/V1_0/NanInitiateDataPathRequest;->ifaceName:Ljava/lang/String;

    .line 32
    new-instance v0, Landroid/hardware/wifi/V1_0/NanDataPathSecurityConfig;

    invoke-direct {v0}, Landroid/hardware/wifi/V1_0/NanDataPathSecurityConfig;-><init>()V

    iput-object v0, p0, Landroid/hardware/wifi/V1_0/NanInitiateDataPathRequest;->securityConfig:Landroid/hardware/wifi/V1_0/NanDataPathSecurityConfig;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/wifi/V1_0/NanInitiateDataPathRequest;->appInfo:Ljava/util/ArrayList;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/wifi/V1_0/NanInitiateDataPathRequest;->serviceNameOutOfBand:Ljava/util/ArrayList;

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
            "Landroid/hardware/wifi/V1_0/NanInitiateDataPathRequest;",
            ">;"
        }
    .end annotation

    .line 132
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 133
    .local v0, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/wifi/V1_0/NanInitiateDataPathRequest;>;"
    const-wide/16 v1, 0x10

    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    .line 136
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v2, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    .line 137
    .local v2, "_hidl_vec_size":I
    mul-int/lit16 v3, v2, 0x80

    int-to-long v5, v3

    .line 138
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    .line 137
    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v3

    .line 141
    .local v3, "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 142
    const/4 v4, 0x0

    .local v4, "_hidl_index_0":I
    :goto_0
    if-ge v4, v2, :cond_0

    .line 143
    new-instance v5, Landroid/hardware/wifi/V1_0/NanInitiateDataPathRequest;

    invoke-direct {v5}, Landroid/hardware/wifi/V1_0/NanInitiateDataPathRequest;-><init>()V

    .line 144
    .local v5, "_hidl_vec_element":Landroid/hardware/wifi/V1_0/NanInitiateDataPathRequest;
    mul-int/lit16 v6, v4, 0x80

    int-to-long v6, v6

    invoke-virtual {v5, p0, v3, v6, v7}, Landroid/hardware/wifi/V1_0/NanInitiateDataPathRequest;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 145
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    .end local v5    # "_hidl_vec_element":Landroid/hardware/wifi/V1_0/NanInitiateDataPathRequest;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 149
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
            "Landroid/hardware/wifi/V1_0/NanInitiateDataPathRequest;",
            ">;)V"
        }
    .end annotation

    .line 206
    .local p1, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/wifi/V1_0/NanInitiateDataPathRequest;>;"
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 208
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 209
    .local v1, "_hidl_vec_size":I
    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 210
    const/4 v2, 0x0

    const-wide/16 v3, 0xc

    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 211
    new-instance v3, Landroid/os/HwBlob;

    mul-int/lit16 v4, v1, 0x80

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 212
    .local v3, "childBlob":Landroid/os/HwBlob;
    nop

    .local v2, "_hidl_index_0":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 213
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/wifi/V1_0/NanInitiateDataPathRequest;

    mul-int/lit16 v5, v2, 0x80

    int-to-long v5, v5

    invoke-virtual {v4, v3, v5, v6}, Landroid/hardware/wifi/V1_0/NanInitiateDataPathRequest;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 212
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 215
    .end local v2    # "_hidl_index_0":I
    :cond_0
    const-wide/16 v4, 0x0

    invoke-virtual {v0, v4, v5, v3}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 218
    .end local v1    # "_hidl_vec_size":I
    .end local v3    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 219
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "otherObject"    # Ljava/lang/Object;

    .line 52
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 53
    return v0

    .line 55
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 56
    return v1

    .line 58
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/hardware/wifi/V1_0/NanInitiateDataPathRequest;

    if-eq v2, v3, :cond_2

    .line 59
    return v1

    .line 61
    :cond_2
    move-object v2, p1

    check-cast v2, Landroid/hardware/wifi/V1_0/NanInitiateDataPathRequest;

    .line 62
    .local v2, "other":Landroid/hardware/wifi/V1_0/NanInitiateDataPathRequest;
    iget v3, p0, Landroid/hardware/wifi/V1_0/NanInitiateDataPathRequest;->peerId:I

    iget v4, v2, Landroid/hardware/wifi/V1_0/NanInitiateDataPathRequest;->peerId:I

    if-eq v3, v4, :cond_3

    .line 63
    return v1

    .line 65
    :cond_3
    iget-object v3, p0, Landroid/hardware/wifi/V1_0/NanInitiateDataPathRequest;->peerDiscMacAddr:[B

    iget-object v4, v2, Landroid/hardware/wifi/V1_0/NanInitiateDataPathRequest;->peerDiscMacAddr:[B

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 66
    return v1

    .line 68
    :cond_4
    iget v3, p0, Landroid/hardware/wifi/V1_0/NanInitiateDataPathRequest;->channelRequestType:I

    iget v4, v2, Landroid/hardware/wifi/V1_0/NanInitiateDataPathRequest;->channelRequestType:I

    if-eq v3, v4, :cond_5

    .line 69
    return v1

    .line 71
    :cond_5
    iget v3, p0, Landroid/hardware/wifi/V1_0/NanInitiateDataPathRequest;->channel:I

    iget v4, v2, Landroid/hardware/wifi/V1_0/NanInitiateDataPathRequest;->channel:I

    if-eq v3, v4, :cond_6

    .line 72
    return v1

    .line 74
    :cond_6
    iget-object v3, p0, Landroid/hardware/wifi/V1_0/NanInitiateDataPathRequest;->ifaceName:Ljava/lang/String;

    iget-object v4, v2, Landroid/hardware/wifi/V1_0/NanInitiateDataPathRequest;->ifaceName:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 75
    return v1

    .line 77
    :cond_7
    iget-object v3, p0, Landroid/hardware/wifi/V1_0/NanInitiateDataPathRequest;->securityConfig:Landroid/hardware/wifi/V1_0/NanDataPathSecurityConfig;

    iget-object v4, v2, Landroid/hardware/wifi/V1_0/NanInitiateDataPathRequest;->securityConfig:Landroid/hardware/wifi/V1_0/NanDataPathSecurityConfig;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 78
    return v1

    .line 80
    :cond_8
    iget-object v3, p0, Landroid/hardware/wifi/V1_0/NanInitiateDataPathRequest;->appInfo:Ljava/util/ArrayList;

    iget-object v4, v2, Landroid/hardware/wifi/V1_0/NanInitiateDataPathRequest;->appInfo:Ljava/util/ArrayList;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 81
    return v1

    .line 83
    :cond_9
    iget-object v3, p0, Landroid/hardware/wifi/V1_0/NanInitiateDataPathRequest;->serviceNameOutOfBand:Ljava/util/ArrayList;

    iget-object v4, v2, Landroid/hardware/wifi/V1_0/NanInitiateDataPathRequest;->serviceNameOutOfBand:Ljava/util/ArrayList;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 84
    return v1

    .line 86
    :cond_a
    return v0
.end method

.method public final hashCode()I
    .locals 3

    .line 91
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/hardware/wifi/V1_0/NanInitiateDataPathRequest;->peerId:I

    .line 92
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/wifi/V1_0/NanInitiateDataPathRequest;->peerDiscMacAddr:[B

    .line 93
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/wifi/V1_0/NanInitiateDataPathRequest;->channelRequestType:I

    .line 94
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/wifi/V1_0/NanInitiateDataPathRequest;->channel:I

    .line 95
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/wifi/V1_0/NanInitiateDataPathRequest;->ifaceName:Ljava/lang/String;

    .line 96
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/wifi/V1_0/NanInitiateDataPathRequest;->securityConfig:Landroid/hardware/wifi/V1_0/NanDataPathSecurityConfig;

    .line 97
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/wifi/V1_0/NanInitiateDataPathRequest;->appInfo:Ljava/util/ArrayList;

    .line 98
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/wifi/V1_0/NanInitiateDataPathRequest;->serviceNameOutOfBand:Ljava/util/ArrayList;

    .line 99
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 91
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .locals 17
    .param p1, "parcel"    # Landroid/os/HwParcel;
    .param p2, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p3, "_hidl_offset"    # J

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 154
    const-wide/16 v2, 0x0

    add-long v4, p3, v2

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    iput v4, v0, Landroid/hardware/wifi/V1_0/NanInitiateDataPathRequest;->peerId:I

    .line 156
    const-wide/16 v4, 0x4

    add-long v4, p3, v4

    .line 157
    .local v4, "_hidl_array_offset_0":J
    iget-object v6, v0, Landroid/hardware/wifi/V1_0/NanInitiateDataPathRequest;->peerDiscMacAddr:[B

    const/4 v7, 0x6

    invoke-virtual {v1, v4, v5, v6, v7}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 158
    nop

    .line 160
    .end local v4    # "_hidl_array_offset_0":J
    const-wide/16 v4, 0xc

    add-long v4, p3, v4

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    iput v4, v0, Landroid/hardware/wifi/V1_0/NanInitiateDataPathRequest;->channelRequestType:I

    .line 161
    const-wide/16 v4, 0x10

    add-long v4, p3, v4

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    iput v4, v0, Landroid/hardware/wifi/V1_0/NanInitiateDataPathRequest;->channel:I

    .line 162
    const-wide/16 v4, 0x18

    add-long v6, p3, v4

    invoke-virtual {v1, v6, v7}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Landroid/hardware/wifi/V1_0/NanInitiateDataPathRequest;->ifaceName:Ljava/lang/String;

    .line 164
    iget-object v6, v0, Landroid/hardware/wifi/V1_0/NanInitiateDataPathRequest;->ifaceName:Ljava/lang/String;

    .line 165
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    array-length v6, v6

    add-int/lit8 v6, v6, 0x1

    int-to-long v8, v6

    .line 166
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v10

    add-long v4, p3, v4

    add-long v12, v4, v2

    .line 164
    const/4 v14, 0x0

    move-object/from16 v7, p1

    invoke-virtual/range {v7 .. v14}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 169
    iget-object v4, v0, Landroid/hardware/wifi/V1_0/NanInitiateDataPathRequest;->securityConfig:Landroid/hardware/wifi/V1_0/NanDataPathSecurityConfig;

    const-wide/16 v5, 0x28

    add-long v5, p3, v5

    move-object/from16 v12, p1

    invoke-virtual {v4, v12, v1, v5, v6}, Landroid/hardware/wifi/V1_0/NanDataPathSecurityConfig;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 171
    const-wide/16 v4, 0x60

    add-long v6, p3, v4

    const-wide/16 v15, 0x8

    add-long/2addr v6, v15

    invoke-virtual {v1, v6, v7}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v6

    .line 172
    .local v6, "_hidl_vec_size":I
    mul-int/lit8 v7, v6, 0x1

    int-to-long v8, v7

    .line 173
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v10

    add-long v4, p3, v4

    add-long/2addr v4, v2

    .line 172
    const/4 v14, 0x1

    move-object v7, v12

    move-wide v12, v4

    invoke-virtual/range {v7 .. v14}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v4

    .line 176
    .local v4, "childBlob":Landroid/os/HwBlob;
    iget-object v5, v0, Landroid/hardware/wifi/V1_0/NanInitiateDataPathRequest;->appInfo:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 177
    const/4 v5, 0x0

    move v7, v5

    .local v7, "_hidl_index_0":I
    :goto_0
    if-ge v7, v6, :cond_0

    .line 179
    mul-int/lit8 v8, v7, 0x1

    int-to-long v8, v8

    invoke-virtual {v4, v8, v9}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v8

    .line 180
    .local v8, "_hidl_vec_element":B
    iget-object v9, v0, Landroid/hardware/wifi/V1_0/NanInitiateDataPathRequest;->appInfo:Ljava/util/ArrayList;

    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 177
    .end local v8    # "_hidl_vec_element":B
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 184
    .end local v4    # "childBlob":Landroid/os/HwBlob;
    .end local v6    # "_hidl_vec_size":I
    .end local v7    # "_hidl_index_0":I
    :cond_0
    const-wide/16 v6, 0x70

    add-long v8, p3, v6

    add-long/2addr v8, v15

    invoke-virtual {v1, v8, v9}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    .line 185
    .local v4, "_hidl_vec_size":I
    mul-int/lit8 v8, v4, 0x1

    int-to-long v8, v8

    .line 186
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v10

    add-long v6, p3, v6

    add-long v12, v6, v2

    const/4 v14, 0x1

    .line 185
    move-object/from16 v7, p1

    invoke-virtual/range {v7 .. v14}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v2

    .line 189
    .local v2, "childBlob":Landroid/os/HwBlob;
    iget-object v3, v0, Landroid/hardware/wifi/V1_0/NanInitiateDataPathRequest;->serviceNameOutOfBand:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 190
    nop

    .local v5, "_hidl_index_0":I
    :goto_1
    move v3, v5

    .end local v5    # "_hidl_index_0":I
    .local v3, "_hidl_index_0":I
    if-ge v3, v4, :cond_1

    .line 192
    mul-int/lit8 v5, v3, 0x1

    int-to-long v5, v5

    invoke-virtual {v2, v5, v6}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v5

    .line 193
    .local v5, "_hidl_vec_element":B
    iget-object v6, v0, Landroid/hardware/wifi/V1_0/NanInitiateDataPathRequest;->serviceNameOutOfBand:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 190
    .end local v5    # "_hidl_vec_element":B
    add-int/lit8 v5, v3, 0x1

    .end local v3    # "_hidl_index_0":I
    .local v5, "_hidl_index_0":I
    goto :goto_1

    .line 196
    .end local v2    # "childBlob":Landroid/os/HwBlob;
    .end local v4    # "_hidl_vec_size":I
    .end local v5    # "_hidl_index_0":I
    :cond_1
    return-void
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 127
    const-wide/16 v0, 0x80

    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 128
    .local v0, "blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/hardware/wifi/V1_0/NanInitiateDataPathRequest;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 129
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 105
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    const-string v1, ".peerId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    iget v1, p0, Landroid/hardware/wifi/V1_0/NanInitiateDataPathRequest;->peerId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 108
    const-string v1, ", .peerDiscMacAddr = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    iget-object v1, p0, Landroid/hardware/wifi/V1_0/NanInitiateDataPathRequest;->peerDiscMacAddr:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    const-string v1, ", .channelRequestType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    iget v1, p0, Landroid/hardware/wifi/V1_0/NanInitiateDataPathRequest;->channelRequestType:I

    invoke-static {v1}, Landroid/hardware/wifi/V1_0/NanDataPathChannelCfg;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    const-string v1, ", .channel = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    iget v1, p0, Landroid/hardware/wifi/V1_0/NanInitiateDataPathRequest;->channel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 114
    const-string v1, ", .ifaceName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    iget-object v1, p0, Landroid/hardware/wifi/V1_0/NanInitiateDataPathRequest;->ifaceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    const-string v1, ", .securityConfig = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    iget-object v1, p0, Landroid/hardware/wifi/V1_0/NanInitiateDataPathRequest;->securityConfig:Landroid/hardware/wifi/V1_0/NanDataPathSecurityConfig;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 118
    const-string v1, ", .appInfo = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    iget-object v1, p0, Landroid/hardware/wifi/V1_0/NanInitiateDataPathRequest;->appInfo:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 120
    const-string v1, ", .serviceNameOutOfBand = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    iget-object v1, p0, Landroid/hardware/wifi/V1_0/NanInitiateDataPathRequest;->serviceNameOutOfBand:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 122
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .locals 15
    .param p1, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p2, "_hidl_offset"    # J

    move-object v0, p0

    move-object/from16 v1, p1

    .line 223
    const-wide/16 v2, 0x0

    add-long v4, p2, v2

    iget v6, v0, Landroid/hardware/wifi/V1_0/NanInitiateDataPathRequest;->peerId:I

    invoke-virtual {v1, v4, v5, v6}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 225
    const-wide/16 v4, 0x4

    add-long v4, p2, v4

    .line 226
    .local v4, "_hidl_array_offset_0":J
    iget-object v6, v0, Landroid/hardware/wifi/V1_0/NanInitiateDataPathRequest;->peerDiscMacAddr:[B

    invoke-virtual {v1, v4, v5, v6}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 227
    nop

    .line 229
    .end local v4    # "_hidl_array_offset_0":J
    const-wide/16 v4, 0xc

    add-long v6, p2, v4

    iget v8, v0, Landroid/hardware/wifi/V1_0/NanInitiateDataPathRequest;->channelRequestType:I

    invoke-virtual {v1, v6, v7, v8}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 230
    const-wide/16 v6, 0x10

    add-long v6, p2, v6

    iget v8, v0, Landroid/hardware/wifi/V1_0/NanInitiateDataPathRequest;->channel:I

    invoke-virtual {v1, v6, v7, v8}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 231
    const-wide/16 v6, 0x18

    add-long v6, p2, v6

    iget-object v8, v0, Landroid/hardware/wifi/V1_0/NanInitiateDataPathRequest;->ifaceName:Ljava/lang/String;

    invoke-virtual {v1, v6, v7, v8}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    .line 232
    iget-object v6, v0, Landroid/hardware/wifi/V1_0/NanInitiateDataPathRequest;->securityConfig:Landroid/hardware/wifi/V1_0/NanDataPathSecurityConfig;

    const-wide/16 v7, 0x28

    add-long v7, p2, v7

    invoke-virtual {v6, v1, v7, v8}, Landroid/hardware/wifi/V1_0/NanDataPathSecurityConfig;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 234
    iget-object v6, v0, Landroid/hardware/wifi/V1_0/NanInitiateDataPathRequest;->appInfo:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 235
    .local v6, "_hidl_vec_size":I
    const-wide/16 v7, 0x60

    add-long v9, p2, v7

    const-wide/16 v11, 0x8

    add-long/2addr v9, v11

    invoke-virtual {v1, v9, v10, v6}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 236
    add-long v9, p2, v7

    add-long/2addr v9, v4

    const/4 v13, 0x0

    invoke-virtual {v1, v9, v10, v13}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 237
    new-instance v9, Landroid/os/HwBlob;

    mul-int/lit8 v10, v6, 0x1

    invoke-direct {v9, v10}, Landroid/os/HwBlob;-><init>(I)V

    .line 238
    .local v9, "childBlob":Landroid/os/HwBlob;
    move v10, v13

    .local v10, "_hidl_index_0":I
    :goto_0
    if-ge v10, v6, :cond_0

    .line 239
    mul-int/lit8 v13, v10, 0x1

    int-to-long v4, v13

    iget-object v13, v0, Landroid/hardware/wifi/V1_0/NanInitiateDataPathRequest;->appInfo:Ljava/util/ArrayList;

    invoke-virtual {v13, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Byte;

    invoke-virtual {v13}, Ljava/lang/Byte;->byteValue()B

    move-result v13

    invoke-virtual {v9, v4, v5, v13}, Landroid/os/HwBlob;->putInt8(JB)V

    .line 238
    add-int/lit8 v10, v10, 0x1

    const-wide/16 v4, 0xc

    const/4 v13, 0x0

    goto :goto_0

    .line 241
    .end local v10    # "_hidl_index_0":I
    :cond_0
    add-long v4, p2, v7

    add-long/2addr v4, v2

    invoke-virtual {v1, v4, v5, v9}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 244
    .end local v6    # "_hidl_vec_size":I
    .end local v9    # "childBlob":Landroid/os/HwBlob;
    iget-object v4, v0, Landroid/hardware/wifi/V1_0/NanInitiateDataPathRequest;->serviceNameOutOfBand:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 245
    .local v4, "_hidl_vec_size":I
    const-wide/16 v5, 0x70

    add-long v7, p2, v5

    add-long/2addr v7, v11

    invoke-virtual {v1, v7, v8, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 246
    add-long v7, p2, v5

    const-wide/16 v9, 0xc

    add-long/2addr v7, v9

    const/4 v9, 0x0

    invoke-virtual {v1, v7, v8, v9}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 247
    new-instance v7, Landroid/os/HwBlob;

    mul-int/lit8 v8, v4, 0x1

    invoke-direct {v7, v8}, Landroid/os/HwBlob;-><init>(I)V

    .line 248
    .local v7, "childBlob":Landroid/os/HwBlob;
    nop

    .local v9, "_hidl_index_0":I
    :goto_1
    move v8, v9

    .end local v9    # "_hidl_index_0":I
    .local v8, "_hidl_index_0":I
    if-ge v8, v4, :cond_1

    .line 249
    mul-int/lit8 v9, v8, 0x1

    int-to-long v9, v9

    iget-object v11, v0, Landroid/hardware/wifi/V1_0/NanInitiateDataPathRequest;->serviceNameOutOfBand:Ljava/util/ArrayList;

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Byte;

    invoke-virtual {v11}, Ljava/lang/Byte;->byteValue()B

    move-result v11

    invoke-virtual {v7, v9, v10, v11}, Landroid/os/HwBlob;->putInt8(JB)V

    .line 248
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "_hidl_index_0":I
    .restart local v9    # "_hidl_index_0":I
    goto :goto_1

    .line 251
    .end local v9    # "_hidl_index_0":I
    :cond_1
    add-long v5, p2, v5

    add-long/2addr v5, v2

    invoke-virtual {v1, v5, v6, v7}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 253
    .end local v4    # "_hidl_vec_size":I
    .end local v7    # "childBlob":Landroid/os/HwBlob;
    return-void
.end method

.method public final writeToParcel(Landroid/os/HwParcel;)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 199
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 200
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/wifi/V1_0/NanInitiateDataPathRequest;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 201
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 202
    return-void
.end method
