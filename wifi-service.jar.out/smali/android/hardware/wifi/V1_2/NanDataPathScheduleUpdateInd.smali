.class public final Landroid/hardware/wifi/V1_2/NanDataPathScheduleUpdateInd;
.super Ljava/lang/Object;
.source "NanDataPathScheduleUpdateInd.java"


# instance fields
.field public final channelInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/hardware/wifi/V1_2/NanDataPathChannelInfo;",
            ">;"
        }
    .end annotation
.end field

.field public final ndpInstanceIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final peerDiscoveryAddress:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/4 v0, 0x6

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/hardware/wifi/V1_2/NanDataPathScheduleUpdateInd;->peerDiscoveryAddress:[B

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/wifi/V1_2/NanDataPathScheduleUpdateInd;->channelInfo:Ljava/util/ArrayList;

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/wifi/V1_2/NanDataPathScheduleUpdateInd;->ndpInstanceIds:Ljava/util/ArrayList;

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
            "Landroid/hardware/wifi/V1_2/NanDataPathScheduleUpdateInd;",
            ">;"
        }
    .end annotation

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 71
    .local v0, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/wifi/V1_2/NanDataPathScheduleUpdateInd;>;"
    const-wide/16 v1, 0x10

    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    .line 74
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v2, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    .line 75
    .local v2, "_hidl_vec_size":I
    mul-int/lit8 v3, v2, 0x28

    int-to-long v5, v3

    .line 76
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    .line 75
    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v3

    .line 79
    .local v3, "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 80
    const/4 v4, 0x0

    .local v4, "_hidl_index_0":I
    :goto_0
    if-ge v4, v2, :cond_0

    .line 81
    new-instance v5, Landroid/hardware/wifi/V1_2/NanDataPathScheduleUpdateInd;

    invoke-direct {v5}, Landroid/hardware/wifi/V1_2/NanDataPathScheduleUpdateInd;-><init>()V

    .line 82
    .local v5, "_hidl_vec_element":Landroid/hardware/wifi/V1_2/NanDataPathScheduleUpdateInd;
    mul-int/lit8 v6, v4, 0x28

    int-to-long v6, v6

    invoke-virtual {v5, p0, v3, v6, v7}, Landroid/hardware/wifi/V1_2/NanDataPathScheduleUpdateInd;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 83
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    .end local v5    # "_hidl_vec_element":Landroid/hardware/wifi/V1_2/NanDataPathScheduleUpdateInd;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 87
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
            "Landroid/hardware/wifi/V1_2/NanDataPathScheduleUpdateInd;",
            ">;)V"
        }
    .end annotation

    .line 133
    .local p1, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/wifi/V1_2/NanDataPathScheduleUpdateInd;>;"
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 135
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 136
    .local v1, "_hidl_vec_size":I
    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 137
    const/4 v2, 0x0

    const-wide/16 v3, 0xc

    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 138
    new-instance v3, Landroid/os/HwBlob;

    mul-int/lit8 v4, v1, 0x28

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 139
    .local v3, "childBlob":Landroid/os/HwBlob;
    nop

    .local v2, "_hidl_index_0":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 140
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/wifi/V1_2/NanDataPathScheduleUpdateInd;

    mul-int/lit8 v5, v2, 0x28

    int-to-long v5, v5

    invoke-virtual {v4, v3, v5, v6}, Landroid/hardware/wifi/V1_2/NanDataPathScheduleUpdateInd;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 139
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 142
    .end local v2    # "_hidl_index_0":I
    :cond_0
    const-wide/16 v4, 0x0

    invoke-virtual {v0, v4, v5, v3}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 145
    .end local v1    # "_hidl_vec_size":I
    .end local v3    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 146
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "otherObject"    # Ljava/lang/Object;

    .line 20
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 21
    return v0

    .line 23
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 24
    return v1

    .line 26
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/hardware/wifi/V1_2/NanDataPathScheduleUpdateInd;

    if-eq v2, v3, :cond_2

    .line 27
    return v1

    .line 29
    :cond_2
    move-object v2, p1

    check-cast v2, Landroid/hardware/wifi/V1_2/NanDataPathScheduleUpdateInd;

    .line 30
    .local v2, "other":Landroid/hardware/wifi/V1_2/NanDataPathScheduleUpdateInd;
    iget-object v3, p0, Landroid/hardware/wifi/V1_2/NanDataPathScheduleUpdateInd;->peerDiscoveryAddress:[B

    iget-object v4, v2, Landroid/hardware/wifi/V1_2/NanDataPathScheduleUpdateInd;->peerDiscoveryAddress:[B

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 31
    return v1

    .line 33
    :cond_3
    iget-object v3, p0, Landroid/hardware/wifi/V1_2/NanDataPathScheduleUpdateInd;->channelInfo:Ljava/util/ArrayList;

    iget-object v4, v2, Landroid/hardware/wifi/V1_2/NanDataPathScheduleUpdateInd;->channelInfo:Ljava/util/ArrayList;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 34
    return v1

    .line 36
    :cond_4
    iget-object v3, p0, Landroid/hardware/wifi/V1_2/NanDataPathScheduleUpdateInd;->ndpInstanceIds:Ljava/util/ArrayList;

    iget-object v4, v2, Landroid/hardware/wifi/V1_2/NanDataPathScheduleUpdateInd;->ndpInstanceIds:Ljava/util/ArrayList;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 37
    return v1

    .line 39
    :cond_5
    return v0
.end method

.method public final hashCode()I
    .locals 3

    .line 44
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/hardware/wifi/V1_2/NanDataPathScheduleUpdateInd;->peerDiscoveryAddress:[B

    .line 45
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/wifi/V1_2/NanDataPathScheduleUpdateInd;->channelInfo:Ljava/util/ArrayList;

    .line 46
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/wifi/V1_2/NanDataPathScheduleUpdateInd;->ndpInstanceIds:Ljava/util/ArrayList;

    .line 47
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 44
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .locals 21
    .param p1, "parcel"    # Landroid/os/HwParcel;
    .param p2, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p3, "_hidl_offset"    # J

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 93
    const-wide/16 v2, 0x0

    add-long v4, p3, v2

    .line 94
    .local v4, "_hidl_array_offset_0":J
    iget-object v6, v0, Landroid/hardware/wifi/V1_2/NanDataPathScheduleUpdateInd;->peerDiscoveryAddress:[B

    const/4 v7, 0x6

    invoke-virtual {v1, v4, v5, v6, v7}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 95
    nop

    .line 98
    .end local v4    # "_hidl_array_offset_0":J
    const-wide/16 v4, 0x8

    add-long v6, p3, v4

    add-long/2addr v6, v4

    invoke-virtual {v1, v6, v7}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v6

    .line 99
    .local v6, "_hidl_vec_size":I
    mul-int/lit8 v7, v6, 0xc

    int-to-long v9, v7

    .line 100
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v11

    add-long v7, p3, v4

    add-long v13, v7, v2

    .line 99
    const/4 v15, 0x1

    move-object/from16 v8, p1

    invoke-virtual/range {v8 .. v15}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v7

    .line 103
    .local v7, "childBlob":Landroid/os/HwBlob;
    iget-object v8, v0, Landroid/hardware/wifi/V1_2/NanDataPathScheduleUpdateInd;->channelInfo:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 104
    const/4 v8, 0x0

    move v9, v8

    .local v9, "_hidl_index_0":I
    :goto_0
    if-ge v9, v6, :cond_0

    .line 105
    new-instance v10, Landroid/hardware/wifi/V1_2/NanDataPathChannelInfo;

    invoke-direct {v10}, Landroid/hardware/wifi/V1_2/NanDataPathChannelInfo;-><init>()V

    .line 106
    .local v10, "_hidl_vec_element":Landroid/hardware/wifi/V1_2/NanDataPathChannelInfo;
    mul-int/lit8 v11, v9, 0xc

    int-to-long v11, v11

    move-object/from16 v13, p1

    invoke-virtual {v10, v13, v7, v11, v12}, Landroid/hardware/wifi/V1_2/NanDataPathChannelInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 107
    iget-object v11, v0, Landroid/hardware/wifi/V1_2/NanDataPathScheduleUpdateInd;->channelInfo:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    .end local v10    # "_hidl_vec_element":Landroid/hardware/wifi/V1_2/NanDataPathChannelInfo;
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 111
    .end local v6    # "_hidl_vec_size":I
    .end local v7    # "childBlob":Landroid/os/HwBlob;
    .end local v9    # "_hidl_index_0":I
    :cond_0
    move-object/from16 v13, p1

    const-wide/16 v6, 0x18

    add-long v9, p3, v6

    add-long/2addr v9, v4

    invoke-virtual {v1, v9, v10}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    .line 112
    .local v4, "_hidl_vec_size":I
    mul-int/lit8 v5, v4, 0x4

    int-to-long v9, v5

    .line 113
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v16

    add-long v5, p3, v6

    add-long v18, v5, v2

    const/16 v20, 0x1

    .line 112
    move-wide v14, v9

    invoke-virtual/range {v13 .. v20}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v2

    .line 116
    .local v2, "childBlob":Landroid/os/HwBlob;
    iget-object v3, v0, Landroid/hardware/wifi/V1_2/NanDataPathScheduleUpdateInd;->ndpInstanceIds:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 117
    nop

    .local v8, "_hidl_index_0":I
    :goto_1
    move v3, v8

    .end local v8    # "_hidl_index_0":I
    .local v3, "_hidl_index_0":I
    if-ge v3, v4, :cond_1

    .line 119
    mul-int/lit8 v5, v3, 0x4

    int-to-long v5, v5

    invoke-virtual {v2, v5, v6}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v5

    .line 120
    .local v5, "_hidl_vec_element":I
    iget-object v6, v0, Landroid/hardware/wifi/V1_2/NanDataPathScheduleUpdateInd;->ndpInstanceIds:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    .end local v5    # "_hidl_vec_element":I
    add-int/lit8 v8, v3, 0x1

    .end local v3    # "_hidl_index_0":I
    .restart local v8    # "_hidl_index_0":I
    goto :goto_1

    .line 123
    .end local v2    # "childBlob":Landroid/os/HwBlob;
    .end local v4    # "_hidl_vec_size":I
    .end local v8    # "_hidl_index_0":I
    :cond_1
    return-void
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 65
    const-wide/16 v0, 0x28

    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 66
    .local v0, "blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/hardware/wifi/V1_2/NanDataPathScheduleUpdateInd;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 67
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    const-string v1, ".peerDiscoveryAddress = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    iget-object v1, p0, Landroid/hardware/wifi/V1_2/NanDataPathScheduleUpdateInd;->peerDiscoveryAddress:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    const-string v1, ", .channelInfo = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    iget-object v1, p0, Landroid/hardware/wifi/V1_2/NanDataPathScheduleUpdateInd;->channelInfo:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 58
    const-string v1, ", .ndpInstanceIds = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    iget-object v1, p0, Landroid/hardware/wifi/V1_2/NanDataPathScheduleUpdateInd;->ndpInstanceIds:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 60
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
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

    .line 151
    const-wide/16 v2, 0x0

    add-long v4, p2, v2

    .line 152
    .local v4, "_hidl_array_offset_0":J
    iget-object v6, v0, Landroid/hardware/wifi/V1_2/NanDataPathScheduleUpdateInd;->peerDiscoveryAddress:[B

    invoke-virtual {v1, v4, v5, v6}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 153
    nop

    .line 156
    .end local v4    # "_hidl_array_offset_0":J
    iget-object v4, v0, Landroid/hardware/wifi/V1_2/NanDataPathScheduleUpdateInd;->channelInfo:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 157
    .local v4, "_hidl_vec_size":I
    const-wide/16 v5, 0x8

    add-long v7, p2, v5

    add-long/2addr v7, v5

    invoke-virtual {v1, v7, v8, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 158
    add-long v7, p2, v5

    const-wide/16 v9, 0xc

    add-long/2addr v7, v9

    const/4 v11, 0x0

    invoke-virtual {v1, v7, v8, v11}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 159
    new-instance v7, Landroid/os/HwBlob;

    mul-int/lit8 v8, v4, 0xc

    invoke-direct {v7, v8}, Landroid/os/HwBlob;-><init>(I)V

    .line 160
    .local v7, "childBlob":Landroid/os/HwBlob;
    move v8, v11

    .local v8, "_hidl_index_0":I
    :goto_0
    if-ge v8, v4, :cond_0

    .line 161
    iget-object v12, v0, Landroid/hardware/wifi/V1_2/NanDataPathScheduleUpdateInd;->channelInfo:Ljava/util/ArrayList;

    invoke-virtual {v12, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/hardware/wifi/V1_2/NanDataPathChannelInfo;

    mul-int/lit8 v13, v8, 0xc

    int-to-long v9, v13

    invoke-virtual {v12, v7, v9, v10}, Landroid/hardware/wifi/V1_2/NanDataPathChannelInfo;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 160
    add-int/lit8 v8, v8, 0x1

    const-wide/16 v9, 0xc

    goto :goto_0

    .line 163
    .end local v8    # "_hidl_index_0":I
    :cond_0
    add-long v8, p2, v5

    add-long/2addr v8, v2

    invoke-virtual {v1, v8, v9, v7}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 166
    .end local v4    # "_hidl_vec_size":I
    .end local v7    # "childBlob":Landroid/os/HwBlob;
    iget-object v4, v0, Landroid/hardware/wifi/V1_2/NanDataPathScheduleUpdateInd;->ndpInstanceIds:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 167
    .restart local v4    # "_hidl_vec_size":I
    const-wide/16 v7, 0x18

    add-long v9, p2, v7

    add-long/2addr v9, v5

    invoke-virtual {v1, v9, v10, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 168
    add-long v5, p2, v7

    const-wide/16 v9, 0xc

    add-long/2addr v5, v9

    invoke-virtual {v1, v5, v6, v11}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 169
    new-instance v5, Landroid/os/HwBlob;

    mul-int/lit8 v6, v4, 0x4

    invoke-direct {v5, v6}, Landroid/os/HwBlob;-><init>(I)V

    .line 170
    .local v5, "childBlob":Landroid/os/HwBlob;
    nop

    .local v11, "_hidl_index_0":I
    :goto_1
    move v6, v11

    .end local v11    # "_hidl_index_0":I
    .local v6, "_hidl_index_0":I
    if-ge v6, v4, :cond_1

    .line 171
    mul-int/lit8 v9, v6, 0x4

    int-to-long v9, v9

    iget-object v11, v0, Landroid/hardware/wifi/V1_2/NanDataPathScheduleUpdateInd;->ndpInstanceIds:Ljava/util/ArrayList;

    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {v5, v9, v10, v11}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 170
    add-int/lit8 v11, v6, 0x1

    .end local v6    # "_hidl_index_0":I
    .restart local v11    # "_hidl_index_0":I
    goto :goto_1

    .line 173
    .end local v11    # "_hidl_index_0":I
    :cond_1
    add-long v6, p2, v7

    add-long/2addr v6, v2

    invoke-virtual {v1, v6, v7, v5}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 175
    .end local v4    # "_hidl_vec_size":I
    .end local v5    # "childBlob":Landroid/os/HwBlob;
    return-void
.end method

.method public final writeToParcel(Landroid/os/HwParcel;)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 126
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 127
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/wifi/V1_2/NanDataPathScheduleUpdateInd;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 128
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 129
    return-void
.end method
