.class public final Landroid/hardware/wifi/V1_0/StaLinkLayerStats;
.super Ljava/lang/Object;
.source "StaLinkLayerStats.java"


# instance fields
.field public final iface:Landroid/hardware/wifi/V1_0/StaLinkLayerIfaceStats;

.field public final radios:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/hardware/wifi/V1_0/StaLinkLayerRadioStats;",
            ">;"
        }
    .end annotation
.end field

.field public timeStampInMs:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Landroid/hardware/wifi/V1_0/StaLinkLayerIfaceStats;

    invoke-direct {v0}, Landroid/hardware/wifi/V1_0/StaLinkLayerIfaceStats;-><init>()V

    iput-object v0, p0, Landroid/hardware/wifi/V1_0/StaLinkLayerStats;->iface:Landroid/hardware/wifi/V1_0/StaLinkLayerIfaceStats;

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/wifi/V1_0/StaLinkLayerStats;->radios:Ljava/util/ArrayList;

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
            "Landroid/hardware/wifi/V1_0/StaLinkLayerStats;",
            ">;"
        }
    .end annotation

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 67
    .local v0, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/wifi/V1_0/StaLinkLayerStats;>;"
    const-wide/16 v1, 0x10

    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    .line 70
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v2, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    .line 71
    .local v2, "_hidl_vec_size":I
    mul-int/lit16 v3, v2, 0xa0

    int-to-long v5, v3

    .line 72
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    .line 71
    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v3

    .line 75
    .local v3, "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 76
    const/4 v4, 0x0

    .local v4, "_hidl_index_0":I
    :goto_0
    if-ge v4, v2, :cond_0

    .line 77
    new-instance v5, Landroid/hardware/wifi/V1_0/StaLinkLayerStats;

    invoke-direct {v5}, Landroid/hardware/wifi/V1_0/StaLinkLayerStats;-><init>()V

    .line 78
    .local v5, "_hidl_vec_element":Landroid/hardware/wifi/V1_0/StaLinkLayerStats;
    mul-int/lit16 v6, v4, 0xa0

    int-to-long v6, v6

    invoke-virtual {v5, p0, v3, v6, v7}, Landroid/hardware/wifi/V1_0/StaLinkLayerStats;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 79
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    .end local v5    # "_hidl_vec_element":Landroid/hardware/wifi/V1_0/StaLinkLayerStats;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 83
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
            "Landroid/hardware/wifi/V1_0/StaLinkLayerStats;",
            ">;)V"
        }
    .end annotation

    .line 113
    .local p1, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/wifi/V1_0/StaLinkLayerStats;>;"
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 115
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 116
    .local v1, "_hidl_vec_size":I
    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 117
    const/4 v2, 0x0

    const-wide/16 v3, 0xc

    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 118
    new-instance v3, Landroid/os/HwBlob;

    mul-int/lit16 v4, v1, 0xa0

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 119
    .local v3, "childBlob":Landroid/os/HwBlob;
    nop

    .local v2, "_hidl_index_0":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 120
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/wifi/V1_0/StaLinkLayerStats;

    mul-int/lit16 v5, v2, 0xa0

    int-to-long v5, v5

    invoke-virtual {v4, v3, v5, v6}, Landroid/hardware/wifi/V1_0/StaLinkLayerStats;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 119
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 122
    .end local v2    # "_hidl_index_0":I
    :cond_0
    const-wide/16 v4, 0x0

    invoke-virtual {v0, v4, v5, v3}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 125
    .end local v1    # "_hidl_vec_size":I
    .end local v3    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 126
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "otherObject"    # Ljava/lang/Object;

    .line 16
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 17
    return v0

    .line 19
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 20
    return v1

    .line 22
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/hardware/wifi/V1_0/StaLinkLayerStats;

    if-eq v2, v3, :cond_2

    .line 23
    return v1

    .line 25
    :cond_2
    move-object v2, p1

    check-cast v2, Landroid/hardware/wifi/V1_0/StaLinkLayerStats;

    .line 26
    .local v2, "other":Landroid/hardware/wifi/V1_0/StaLinkLayerStats;
    iget-object v3, p0, Landroid/hardware/wifi/V1_0/StaLinkLayerStats;->iface:Landroid/hardware/wifi/V1_0/StaLinkLayerIfaceStats;

    iget-object v4, v2, Landroid/hardware/wifi/V1_0/StaLinkLayerStats;->iface:Landroid/hardware/wifi/V1_0/StaLinkLayerIfaceStats;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 27
    return v1

    .line 29
    :cond_3
    iget-object v3, p0, Landroid/hardware/wifi/V1_0/StaLinkLayerStats;->radios:Ljava/util/ArrayList;

    iget-object v4, v2, Landroid/hardware/wifi/V1_0/StaLinkLayerStats;->radios:Ljava/util/ArrayList;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 30
    return v1

    .line 32
    :cond_4
    iget-wide v3, p0, Landroid/hardware/wifi/V1_0/StaLinkLayerStats;->timeStampInMs:J

    iget-wide v5, v2, Landroid/hardware/wifi/V1_0/StaLinkLayerStats;->timeStampInMs:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_5

    .line 33
    return v1

    .line 35
    :cond_5
    return v0
.end method

.method public final hashCode()I
    .locals 3

    .line 40
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/hardware/wifi/V1_0/StaLinkLayerStats;->iface:Landroid/hardware/wifi/V1_0/StaLinkLayerIfaceStats;

    .line 41
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/wifi/V1_0/StaLinkLayerStats;->radios:Ljava/util/ArrayList;

    .line 42
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-wide v1, p0, Landroid/hardware/wifi/V1_0/StaLinkLayerStats;->timeStampInMs:J

    .line 43
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 40
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .locals 16
    .param p1, "parcel"    # Landroid/os/HwParcel;
    .param p2, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p3, "_hidl_offset"    # J

    move-object/from16 v0, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    .line 88
    iget-object v1, v0, Landroid/hardware/wifi/V1_0/StaLinkLayerStats;->iface:Landroid/hardware/wifi/V1_0/StaLinkLayerIfaceStats;

    const-wide/16 v2, 0x0

    add-long v4, p3, v2

    invoke-virtual {v1, v9, v10, v4, v5}, Landroid/hardware/wifi/V1_0/StaLinkLayerIfaceStats;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 90
    const-wide/16 v4, 0x88

    add-long v6, p3, v4

    const-wide/16 v11, 0x8

    add-long/2addr v6, v11

    invoke-virtual {v10, v6, v7}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v11

    .line 91
    .local v11, "_hidl_vec_size":I
    mul-int/lit8 v1, v11, 0x20

    int-to-long v6, v1

    .line 92
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v12

    add-long v4, p3, v4

    add-long v14, v4, v2

    .line 91
    const/4 v8, 0x1

    move-object v1, v9

    move-wide v2, v6

    move-wide v4, v12

    move-wide v6, v14

    invoke-virtual/range {v1 .. v8}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v1

    .line 95
    .local v1, "childBlob":Landroid/os/HwBlob;
    iget-object v2, v0, Landroid/hardware/wifi/V1_0/StaLinkLayerStats;->radios:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 96
    const/4 v2, 0x0

    .local v2, "_hidl_index_0":I
    :goto_0
    if-ge v2, v11, :cond_0

    .line 97
    new-instance v3, Landroid/hardware/wifi/V1_0/StaLinkLayerRadioStats;

    invoke-direct {v3}, Landroid/hardware/wifi/V1_0/StaLinkLayerRadioStats;-><init>()V

    .line 98
    .local v3, "_hidl_vec_element":Landroid/hardware/wifi/V1_0/StaLinkLayerRadioStats;
    mul-int/lit8 v4, v2, 0x20

    int-to-long v4, v4

    invoke-virtual {v3, v9, v1, v4, v5}, Landroid/hardware/wifi/V1_0/StaLinkLayerRadioStats;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 99
    iget-object v4, v0, Landroid/hardware/wifi/V1_0/StaLinkLayerStats;->radios:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    .end local v3    # "_hidl_vec_element":Landroid/hardware/wifi/V1_0/StaLinkLayerRadioStats;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 102
    .end local v1    # "childBlob":Landroid/os/HwBlob;
    .end local v2    # "_hidl_index_0":I
    .end local v11    # "_hidl_vec_size":I
    :cond_0
    const-wide/16 v1, 0x98

    add-long v1, p3, v1

    invoke-virtual {v10, v1, v2}, Landroid/os/HwBlob;->getInt64(J)J

    move-result-wide v1

    iput-wide v1, v0, Landroid/hardware/wifi/V1_0/StaLinkLayerStats;->timeStampInMs:J

    .line 103
    return-void
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 61
    const-wide/16 v0, 0xa0

    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 62
    .local v0, "blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/hardware/wifi/V1_0/StaLinkLayerStats;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 63
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    const-string v1, ".iface = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    iget-object v1, p0, Landroid/hardware/wifi/V1_0/StaLinkLayerStats;->iface:Landroid/hardware/wifi/V1_0/StaLinkLayerIfaceStats;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 52
    const-string v1, ", .radios = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    iget-object v1, p0, Landroid/hardware/wifi/V1_0/StaLinkLayerStats;->radios:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 54
    const-string v1, ", .timeStampInMs = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    iget-wide v1, p0, Landroid/hardware/wifi/V1_0/StaLinkLayerStats;->timeStampInMs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 56
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .locals 10
    .param p1, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p2, "_hidl_offset"    # J

    .line 130
    iget-object v0, p0, Landroid/hardware/wifi/V1_0/StaLinkLayerStats;->iface:Landroid/hardware/wifi/V1_0/StaLinkLayerIfaceStats;

    const-wide/16 v1, 0x0

    add-long v3, p2, v1

    invoke-virtual {v0, p1, v3, v4}, Landroid/hardware/wifi/V1_0/StaLinkLayerIfaceStats;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 132
    iget-object v0, p0, Landroid/hardware/wifi/V1_0/StaLinkLayerStats;->radios:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 133
    .local v0, "_hidl_vec_size":I
    const-wide/16 v3, 0x88

    add-long v5, p2, v3

    const-wide/16 v7, 0x8

    add-long/2addr v5, v7

    invoke-virtual {p1, v5, v6, v0}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 134
    add-long v5, p2, v3

    const-wide/16 v7, 0xc

    add-long/2addr v5, v7

    const/4 v7, 0x0

    invoke-virtual {p1, v5, v6, v7}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 135
    new-instance v5, Landroid/os/HwBlob;

    mul-int/lit8 v6, v0, 0x20

    invoke-direct {v5, v6}, Landroid/os/HwBlob;-><init>(I)V

    .line 136
    .local v5, "childBlob":Landroid/os/HwBlob;
    nop

    .local v7, "_hidl_index_0":I
    :goto_0
    move v6, v7

    .end local v7    # "_hidl_index_0":I
    .local v6, "_hidl_index_0":I
    if-ge v6, v0, :cond_0

    .line 137
    iget-object v7, p0, Landroid/hardware/wifi/V1_0/StaLinkLayerStats;->radios:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/wifi/V1_0/StaLinkLayerRadioStats;

    mul-int/lit8 v8, v6, 0x20

    int-to-long v8, v8

    invoke-virtual {v7, v5, v8, v9}, Landroid/hardware/wifi/V1_0/StaLinkLayerRadioStats;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 136
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "_hidl_index_0":I
    .restart local v7    # "_hidl_index_0":I
    goto :goto_0

    .line 139
    .end local v7    # "_hidl_index_0":I
    :cond_0
    add-long/2addr v3, p2

    add-long/2addr v3, v1

    invoke-virtual {p1, v3, v4, v5}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 141
    .end local v0    # "_hidl_vec_size":I
    .end local v5    # "childBlob":Landroid/os/HwBlob;
    const-wide/16 v0, 0x98

    add-long/2addr v0, p2

    iget-wide v2, p0, Landroid/hardware/wifi/V1_0/StaLinkLayerStats;->timeStampInMs:J

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/os/HwBlob;->putInt64(JJ)V

    .line 142
    return-void
.end method

.method public final writeToParcel(Landroid/os/HwParcel;)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 106
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0xa0

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 107
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/wifi/V1_0/StaLinkLayerStats;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 108
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 109
    return-void
.end method
