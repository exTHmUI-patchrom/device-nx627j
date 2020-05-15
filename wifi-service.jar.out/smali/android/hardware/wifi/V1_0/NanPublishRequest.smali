.class public final Landroid/hardware/wifi/V1_0/NanPublishRequest;
.super Ljava/lang/Object;
.source "NanPublishRequest.java"


# instance fields
.field public autoAcceptDataPathRequests:Z

.field public final baseConfigs:Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;

.field public publishType:I

.field public txType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;

    invoke-direct {v0}, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;-><init>()V

    iput-object v0, p0, Landroid/hardware/wifi/V1_0/NanPublishRequest;->baseConfigs:Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;

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
            "Landroid/hardware/wifi/V1_0/NanPublishRequest;",
            ">;"
        }
    .end annotation

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 86
    .local v0, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/wifi/V1_0/NanPublishRequest;>;"
    const-wide/16 v1, 0x10

    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    .line 89
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v2, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    .line 90
    .local v2, "_hidl_vec_size":I
    mul-int/lit16 v3, v2, 0xc0

    int-to-long v5, v3

    .line 91
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    .line 90
    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v3

    .line 94
    .local v3, "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 95
    const/4 v4, 0x0

    .local v4, "_hidl_index_0":I
    :goto_0
    if-ge v4, v2, :cond_0

    .line 96
    new-instance v5, Landroid/hardware/wifi/V1_0/NanPublishRequest;

    invoke-direct {v5}, Landroid/hardware/wifi/V1_0/NanPublishRequest;-><init>()V

    .line 97
    .local v5, "_hidl_vec_element":Landroid/hardware/wifi/V1_0/NanPublishRequest;
    mul-int/lit16 v6, v4, 0xc0

    int-to-long v6, v6

    invoke-virtual {v5, p0, v3, v6, v7}, Landroid/hardware/wifi/V1_0/NanPublishRequest;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 98
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    .end local v5    # "_hidl_vec_element":Landroid/hardware/wifi/V1_0/NanPublishRequest;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 102
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
            "Landroid/hardware/wifi/V1_0/NanPublishRequest;",
            ">;)V"
        }
    .end annotation

    .line 121
    .local p1, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/wifi/V1_0/NanPublishRequest;>;"
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 123
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 124
    .local v1, "_hidl_vec_size":I
    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 125
    const/4 v2, 0x0

    const-wide/16 v3, 0xc

    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 126
    new-instance v3, Landroid/os/HwBlob;

    mul-int/lit16 v4, v1, 0xc0

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 127
    .local v3, "childBlob":Landroid/os/HwBlob;
    nop

    .local v2, "_hidl_index_0":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 128
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/wifi/V1_0/NanPublishRequest;

    mul-int/lit16 v5, v2, 0xc0

    int-to-long v5, v5

    invoke-virtual {v4, v3, v5, v6}, Landroid/hardware/wifi/V1_0/NanPublishRequest;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 127
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 130
    .end local v2    # "_hidl_index_0":I
    :cond_0
    const-wide/16 v4, 0x0

    invoke-virtual {v0, v4, v5, v3}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 133
    .end local v1    # "_hidl_vec_size":I
    .end local v3    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 134
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "otherObject"    # Ljava/lang/Object;

    .line 29
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 30
    return v0

    .line 32
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 33
    return v1

    .line 35
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/hardware/wifi/V1_0/NanPublishRequest;

    if-eq v2, v3, :cond_2

    .line 36
    return v1

    .line 38
    :cond_2
    move-object v2, p1

    check-cast v2, Landroid/hardware/wifi/V1_0/NanPublishRequest;

    .line 39
    .local v2, "other":Landroid/hardware/wifi/V1_0/NanPublishRequest;
    iget-object v3, p0, Landroid/hardware/wifi/V1_0/NanPublishRequest;->baseConfigs:Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;

    iget-object v4, v2, Landroid/hardware/wifi/V1_0/NanPublishRequest;->baseConfigs:Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 40
    return v1

    .line 42
    :cond_3
    iget v3, p0, Landroid/hardware/wifi/V1_0/NanPublishRequest;->publishType:I

    iget v4, v2, Landroid/hardware/wifi/V1_0/NanPublishRequest;->publishType:I

    if-eq v3, v4, :cond_4

    .line 43
    return v1

    .line 45
    :cond_4
    iget v3, p0, Landroid/hardware/wifi/V1_0/NanPublishRequest;->txType:I

    iget v4, v2, Landroid/hardware/wifi/V1_0/NanPublishRequest;->txType:I

    if-eq v3, v4, :cond_5

    .line 46
    return v1

    .line 48
    :cond_5
    iget-boolean v3, p0, Landroid/hardware/wifi/V1_0/NanPublishRequest;->autoAcceptDataPathRequests:Z

    iget-boolean v4, v2, Landroid/hardware/wifi/V1_0/NanPublishRequest;->autoAcceptDataPathRequests:Z

    if-eq v3, v4, :cond_6

    .line 49
    return v1

    .line 51
    :cond_6
    return v0
.end method

.method public final hashCode()I
    .locals 3

    .line 56
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/hardware/wifi/V1_0/NanPublishRequest;->baseConfigs:Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;

    .line 57
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/wifi/V1_0/NanPublishRequest;->publishType:I

    .line 58
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/wifi/V1_0/NanPublishRequest;->txType:I

    .line 59
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/hardware/wifi/V1_0/NanPublishRequest;->autoAcceptDataPathRequests:Z

    .line 60
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 56
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/HwParcel;
    .param p2, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p3, "_hidl_offset"    # J

    .line 107
    iget-object v0, p0, Landroid/hardware/wifi/V1_0/NanPublishRequest;->baseConfigs:Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;

    const-wide/16 v1, 0x0

    add-long/2addr v1, p3

    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 108
    const-wide/16 v0, 0xb0

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v0

    iput v0, p0, Landroid/hardware/wifi/V1_0/NanPublishRequest;->publishType:I

    .line 109
    const-wide/16 v0, 0xb4

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v0

    iput v0, p0, Landroid/hardware/wifi/V1_0/NanPublishRequest;->txType:I

    .line 110
    const-wide/16 v0, 0xb8

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v0

    iput-boolean v0, p0, Landroid/hardware/wifi/V1_0/NanPublishRequest;->autoAcceptDataPathRequests:Z

    .line 111
    return-void
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 80
    const-wide/16 v0, 0xc0

    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 81
    .local v0, "blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/hardware/wifi/V1_0/NanPublishRequest;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 82
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 66
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    const-string v1, ".baseConfigs = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    iget-object v1, p0, Landroid/hardware/wifi/V1_0/NanPublishRequest;->baseConfigs:Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 69
    const-string v1, ", .publishType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    iget v1, p0, Landroid/hardware/wifi/V1_0/NanPublishRequest;->publishType:I

    invoke-static {v1}, Landroid/hardware/wifi/V1_0/NanPublishType;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    const-string v1, ", .txType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    iget v1, p0, Landroid/hardware/wifi/V1_0/NanPublishRequest;->txType:I

    invoke-static {v1}, Landroid/hardware/wifi/V1_0/NanTxType;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    const-string v1, ", .autoAcceptDataPathRequests = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    iget-boolean v1, p0, Landroid/hardware/wifi/V1_0/NanPublishRequest;->autoAcceptDataPathRequests:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 75
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .locals 3
    .param p1, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p2, "_hidl_offset"    # J

    .line 138
    iget-object v0, p0, Landroid/hardware/wifi/V1_0/NanPublishRequest;->baseConfigs:Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;

    const-wide/16 v1, 0x0

    add-long/2addr v1, p2

    invoke-virtual {v0, p1, v1, v2}, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 139
    const-wide/16 v0, 0xb0

    add-long/2addr v0, p2

    iget v2, p0, Landroid/hardware/wifi/V1_0/NanPublishRequest;->publishType:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 140
    const-wide/16 v0, 0xb4

    add-long/2addr v0, p2

    iget v2, p0, Landroid/hardware/wifi/V1_0/NanPublishRequest;->txType:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 141
    const-wide/16 v0, 0xb8

    add-long/2addr v0, p2

    iget-boolean v2, p0, Landroid/hardware/wifi/V1_0/NanPublishRequest;->autoAcceptDataPathRequests:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 142
    return-void
.end method

.method public final writeToParcel(Landroid/os/HwParcel;)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 114
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0xc0

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 115
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/wifi/V1_0/NanPublishRequest;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 116
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 117
    return-void
.end method
