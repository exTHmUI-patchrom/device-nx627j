.class public final Landroid/hardware/wifi/V1_0/NanSubscribeRequest;
.super Ljava/lang/Object;
.source "NanSubscribeRequest.java"


# instance fields
.field public final baseConfigs:Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;

.field public final intfAddr:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation
.end field

.field public isSsiRequiredForMatch:Z

.field public shouldUseSrf:Z

.field public srfRespondIfInAddressSet:Z

.field public srfType:I

.field public subscribeType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;

    invoke-direct {v0}, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;-><init>()V

    iput-object v0, p0, Landroid/hardware/wifi/V1_0/NanSubscribeRequest;->baseConfigs:Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/wifi/V1_0/NanSubscribeRequest;->intfAddr:Ljava/util/ArrayList;

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
            "Landroid/hardware/wifi/V1_0/NanSubscribeRequest;",
            ">;"
        }
    .end annotation

    .line 122
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 123
    .local v0, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/wifi/V1_0/NanSubscribeRequest;>;"
    const-wide/16 v1, 0x10

    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    .line 126
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v2, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    .line 127
    .local v2, "_hidl_vec_size":I
    mul-int/lit16 v3, v2, 0xd0

    int-to-long v5, v3

    .line 128
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    .line 127
    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v3

    .line 131
    .local v3, "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 132
    const/4 v4, 0x0

    .local v4, "_hidl_index_0":I
    :goto_0
    if-ge v4, v2, :cond_0

    .line 133
    new-instance v5, Landroid/hardware/wifi/V1_0/NanSubscribeRequest;

    invoke-direct {v5}, Landroid/hardware/wifi/V1_0/NanSubscribeRequest;-><init>()V

    .line 134
    .local v5, "_hidl_vec_element":Landroid/hardware/wifi/V1_0/NanSubscribeRequest;
    mul-int/lit16 v6, v4, 0xd0

    int-to-long v6, v6

    invoke-virtual {v5, p0, v3, v6, v7}, Landroid/hardware/wifi/V1_0/NanSubscribeRequest;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 135
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    .end local v5    # "_hidl_vec_element":Landroid/hardware/wifi/V1_0/NanSubscribeRequest;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 139
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
            "Landroid/hardware/wifi/V1_0/NanSubscribeRequest;",
            ">;)V"
        }
    .end annotation

    .line 177
    .local p1, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/wifi/V1_0/NanSubscribeRequest;>;"
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 179
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 180
    .local v1, "_hidl_vec_size":I
    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 181
    const/4 v2, 0x0

    const-wide/16 v3, 0xc

    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 182
    new-instance v3, Landroid/os/HwBlob;

    mul-int/lit16 v4, v1, 0xd0

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 183
    .local v3, "childBlob":Landroid/os/HwBlob;
    nop

    .local v2, "_hidl_index_0":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 184
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/wifi/V1_0/NanSubscribeRequest;

    mul-int/lit16 v5, v2, 0xd0

    int-to-long v5, v5

    invoke-virtual {v4, v3, v5, v6}, Landroid/hardware/wifi/V1_0/NanSubscribeRequest;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 183
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 186
    .end local v2    # "_hidl_index_0":I
    :cond_0
    const-wide/16 v4, 0x0

    invoke-virtual {v0, v4, v5, v3}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 189
    .end local v1    # "_hidl_vec_size":I
    .end local v3    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 190
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "otherObject"    # Ljava/lang/Object;

    .line 48
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 49
    return v0

    .line 51
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 52
    return v1

    .line 54
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/hardware/wifi/V1_0/NanSubscribeRequest;

    if-eq v2, v3, :cond_2

    .line 55
    return v1

    .line 57
    :cond_2
    move-object v2, p1

    check-cast v2, Landroid/hardware/wifi/V1_0/NanSubscribeRequest;

    .line 58
    .local v2, "other":Landroid/hardware/wifi/V1_0/NanSubscribeRequest;
    iget-object v3, p0, Landroid/hardware/wifi/V1_0/NanSubscribeRequest;->baseConfigs:Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;

    iget-object v4, v2, Landroid/hardware/wifi/V1_0/NanSubscribeRequest;->baseConfigs:Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 59
    return v1

    .line 61
    :cond_3
    iget v3, p0, Landroid/hardware/wifi/V1_0/NanSubscribeRequest;->subscribeType:I

    iget v4, v2, Landroid/hardware/wifi/V1_0/NanSubscribeRequest;->subscribeType:I

    if-eq v3, v4, :cond_4

    .line 62
    return v1

    .line 64
    :cond_4
    iget v3, p0, Landroid/hardware/wifi/V1_0/NanSubscribeRequest;->srfType:I

    iget v4, v2, Landroid/hardware/wifi/V1_0/NanSubscribeRequest;->srfType:I

    if-eq v3, v4, :cond_5

    .line 65
    return v1

    .line 67
    :cond_5
    iget-boolean v3, p0, Landroid/hardware/wifi/V1_0/NanSubscribeRequest;->srfRespondIfInAddressSet:Z

    iget-boolean v4, v2, Landroid/hardware/wifi/V1_0/NanSubscribeRequest;->srfRespondIfInAddressSet:Z

    if-eq v3, v4, :cond_6

    .line 68
    return v1

    .line 70
    :cond_6
    iget-boolean v3, p0, Landroid/hardware/wifi/V1_0/NanSubscribeRequest;->shouldUseSrf:Z

    iget-boolean v4, v2, Landroid/hardware/wifi/V1_0/NanSubscribeRequest;->shouldUseSrf:Z

    if-eq v3, v4, :cond_7

    .line 71
    return v1

    .line 73
    :cond_7
    iget-boolean v3, p0, Landroid/hardware/wifi/V1_0/NanSubscribeRequest;->isSsiRequiredForMatch:Z

    iget-boolean v4, v2, Landroid/hardware/wifi/V1_0/NanSubscribeRequest;->isSsiRequiredForMatch:Z

    if-eq v3, v4, :cond_8

    .line 74
    return v1

    .line 76
    :cond_8
    iget-object v3, p0, Landroid/hardware/wifi/V1_0/NanSubscribeRequest;->intfAddr:Ljava/util/ArrayList;

    iget-object v4, v2, Landroid/hardware/wifi/V1_0/NanSubscribeRequest;->intfAddr:Ljava/util/ArrayList;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 77
    return v1

    .line 79
    :cond_9
    return v0
.end method

.method public final hashCode()I
    .locals 3

    .line 84
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/hardware/wifi/V1_0/NanSubscribeRequest;->baseConfigs:Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;

    .line 85
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/wifi/V1_0/NanSubscribeRequest;->subscribeType:I

    .line 86
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/wifi/V1_0/NanSubscribeRequest;->srfType:I

    .line 87
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/hardware/wifi/V1_0/NanSubscribeRequest;->srfRespondIfInAddressSet:Z

    .line 88
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/hardware/wifi/V1_0/NanSubscribeRequest;->shouldUseSrf:Z

    .line 89
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/hardware/wifi/V1_0/NanSubscribeRequest;->isSsiRequiredForMatch:Z

    .line 90
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/wifi/V1_0/NanSubscribeRequest;->intfAddr:Ljava/util/ArrayList;

    .line 91
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 84
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .locals 15
    .param p1, "parcel"    # Landroid/os/HwParcel;
    .param p2, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p3, "_hidl_offset"    # J

    move-object v0, p0

    move-object/from16 v1, p2

    .line 144
    iget-object v2, v0, Landroid/hardware/wifi/V1_0/NanSubscribeRequest;->baseConfigs:Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;

    const-wide/16 v3, 0x0

    add-long v5, p3, v3

    move-object/from16 v12, p1

    invoke-virtual {v2, v12, v1, v5, v6}, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 145
    const-wide/16 v5, 0xb0

    add-long v5, p3, v5

    invoke-virtual {v1, v5, v6}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    iput v2, v0, Landroid/hardware/wifi/V1_0/NanSubscribeRequest;->subscribeType:I

    .line 146
    const-wide/16 v5, 0xb4

    add-long v5, p3, v5

    invoke-virtual {v1, v5, v6}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    iput v2, v0, Landroid/hardware/wifi/V1_0/NanSubscribeRequest;->srfType:I

    .line 147
    const-wide/16 v5, 0xb8

    add-long v5, p3, v5

    invoke-virtual {v1, v5, v6}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v2

    iput-boolean v2, v0, Landroid/hardware/wifi/V1_0/NanSubscribeRequest;->srfRespondIfInAddressSet:Z

    .line 148
    const-wide/16 v5, 0xb9

    add-long v5, p3, v5

    invoke-virtual {v1, v5, v6}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v2

    iput-boolean v2, v0, Landroid/hardware/wifi/V1_0/NanSubscribeRequest;->shouldUseSrf:Z

    .line 149
    const-wide/16 v5, 0xba

    add-long v5, p3, v5

    invoke-virtual {v1, v5, v6}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v2

    iput-boolean v2, v0, Landroid/hardware/wifi/V1_0/NanSubscribeRequest;->isSsiRequiredForMatch:Z

    .line 151
    const-wide/16 v5, 0xc0

    add-long v7, p3, v5

    const-wide/16 v9, 0x8

    add-long/2addr v7, v9

    invoke-virtual {v1, v7, v8}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    .line 152
    .local v2, "_hidl_vec_size":I
    mul-int/lit8 v7, v2, 0x6

    int-to-long v8, v7

    .line 153
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v10

    add-long v5, p3, v5

    add-long/2addr v3, v5

    .line 152
    const/4 v14, 0x1

    move-object v7, v12

    move-wide v12, v3

    invoke-virtual/range {v7 .. v14}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v3

    .line 156
    .local v3, "childBlob":Landroid/os/HwBlob;
    iget-object v4, v0, Landroid/hardware/wifi/V1_0/NanSubscribeRequest;->intfAddr:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 157
    const/4 v4, 0x0

    .local v4, "_hidl_index_0":I
    :goto_0
    if-ge v4, v2, :cond_0

    .line 158
    const/4 v5, 0x6

    new-array v6, v5, [B

    .line 160
    .local v6, "_hidl_vec_element":[B
    mul-int/lit8 v7, v4, 0x6

    int-to-long v7, v7

    .line 161
    .local v7, "_hidl_array_offset_1":J
    invoke-virtual {v3, v7, v8, v6, v5}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 162
    nop

    .line 164
    .end local v7    # "_hidl_array_offset_1":J
    iget-object v5, v0, Landroid/hardware/wifi/V1_0/NanSubscribeRequest;->intfAddr:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    .end local v6    # "_hidl_vec_element":[B
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 167
    .end local v2    # "_hidl_vec_size":I
    .end local v3    # "childBlob":Landroid/os/HwBlob;
    .end local v4    # "_hidl_index_0":I
    :cond_0
    return-void
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 117
    const-wide/16 v0, 0xd0

    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 118
    .local v0, "blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/hardware/wifi/V1_0/NanSubscribeRequest;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 119
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 97
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    const-string v1, ".baseConfigs = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    iget-object v1, p0, Landroid/hardware/wifi/V1_0/NanSubscribeRequest;->baseConfigs:Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 100
    const-string v1, ", .subscribeType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    iget v1, p0, Landroid/hardware/wifi/V1_0/NanSubscribeRequest;->subscribeType:I

    invoke-static {v1}, Landroid/hardware/wifi/V1_0/NanSubscribeType;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    const-string v1, ", .srfType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    iget v1, p0, Landroid/hardware/wifi/V1_0/NanSubscribeRequest;->srfType:I

    invoke-static {v1}, Landroid/hardware/wifi/V1_0/NanSrfType;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    const-string v1, ", .srfRespondIfInAddressSet = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    iget-boolean v1, p0, Landroid/hardware/wifi/V1_0/NanSubscribeRequest;->srfRespondIfInAddressSet:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 106
    const-string v1, ", .shouldUseSrf = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    iget-boolean v1, p0, Landroid/hardware/wifi/V1_0/NanSubscribeRequest;->shouldUseSrf:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 108
    const-string v1, ", .isSsiRequiredForMatch = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    iget-boolean v1, p0, Landroid/hardware/wifi/V1_0/NanSubscribeRequest;->isSsiRequiredForMatch:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 110
    const-string v1, ", .intfAddr = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    iget-object v1, p0, Landroid/hardware/wifi/V1_0/NanSubscribeRequest;->intfAddr:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 112
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .locals 10
    .param p1, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p2, "_hidl_offset"    # J

    .line 194
    iget-object v0, p0, Landroid/hardware/wifi/V1_0/NanSubscribeRequest;->baseConfigs:Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;

    const-wide/16 v1, 0x0

    add-long v3, p2, v1

    invoke-virtual {v0, p1, v3, v4}, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 195
    const-wide/16 v3, 0xb0

    add-long/2addr v3, p2

    iget v0, p0, Landroid/hardware/wifi/V1_0/NanSubscribeRequest;->subscribeType:I

    invoke-virtual {p1, v3, v4, v0}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 196
    const-wide/16 v3, 0xb4

    add-long/2addr v3, p2

    iget v0, p0, Landroid/hardware/wifi/V1_0/NanSubscribeRequest;->srfType:I

    invoke-virtual {p1, v3, v4, v0}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 197
    const-wide/16 v3, 0xb8

    add-long/2addr v3, p2

    iget-boolean v0, p0, Landroid/hardware/wifi/V1_0/NanSubscribeRequest;->srfRespondIfInAddressSet:Z

    invoke-virtual {p1, v3, v4, v0}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 198
    const-wide/16 v3, 0xb9

    add-long/2addr v3, p2

    iget-boolean v0, p0, Landroid/hardware/wifi/V1_0/NanSubscribeRequest;->shouldUseSrf:Z

    invoke-virtual {p1, v3, v4, v0}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 199
    const-wide/16 v3, 0xba

    add-long/2addr v3, p2

    iget-boolean v0, p0, Landroid/hardware/wifi/V1_0/NanSubscribeRequest;->isSsiRequiredForMatch:Z

    invoke-virtual {p1, v3, v4, v0}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 201
    iget-object v0, p0, Landroid/hardware/wifi/V1_0/NanSubscribeRequest;->intfAddr:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 202
    .local v0, "_hidl_vec_size":I
    const-wide/16 v3, 0xc0

    add-long v5, p2, v3

    const-wide/16 v7, 0x8

    add-long/2addr v5, v7

    invoke-virtual {p1, v5, v6, v0}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 203
    add-long v5, p2, v3

    const-wide/16 v7, 0xc

    add-long/2addr v5, v7

    const/4 v7, 0x0

    invoke-virtual {p1, v5, v6, v7}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 204
    new-instance v5, Landroid/os/HwBlob;

    mul-int/lit8 v6, v0, 0x6

    invoke-direct {v5, v6}, Landroid/os/HwBlob;-><init>(I)V

    .line 205
    .local v5, "childBlob":Landroid/os/HwBlob;
    nop

    .local v7, "_hidl_index_0":I
    :goto_0
    move v6, v7

    .end local v7    # "_hidl_index_0":I
    .local v6, "_hidl_index_0":I
    if-ge v6, v0, :cond_0

    .line 207
    mul-int/lit8 v7, v6, 0x6

    int-to-long v7, v7

    .line 208
    .local v7, "_hidl_array_offset_1":J
    iget-object v9, p0, Landroid/hardware/wifi/V1_0/NanSubscribeRequest;->intfAddr:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [B

    invoke-virtual {v5, v7, v8, v9}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 209
    nop

    .line 205
    .end local v7    # "_hidl_array_offset_1":J
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "_hidl_index_0":I
    .local v7, "_hidl_index_0":I
    goto :goto_0

    .line 212
    .end local v7    # "_hidl_index_0":I
    :cond_0
    add-long/2addr v3, p2

    add-long/2addr v3, v1

    invoke-virtual {p1, v3, v4, v5}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 214
    .end local v0    # "_hidl_vec_size":I
    .end local v5    # "childBlob":Landroid/os/HwBlob;
    return-void
.end method

.method public final writeToParcel(Landroid/os/HwParcel;)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 170
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0xd0

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 171
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/wifi/V1_0/NanSubscribeRequest;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 172
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 173
    return-void
.end method
