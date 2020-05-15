.class public final Landroid/hardware/wifi/V1_0/StaLinkLayerIfaceStats;
.super Ljava/lang/Object;
.source "StaLinkLayerIfaceStats.java"


# instance fields
.field public avgRssiMgmt:I

.field public beaconRx:I

.field public final wmeBePktStats:Landroid/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;

.field public final wmeBkPktStats:Landroid/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;

.field public final wmeViPktStats:Landroid/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;

.field public final wmeVoPktStats:Landroid/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Landroid/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;

    invoke-direct {v0}, Landroid/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;-><init>()V

    iput-object v0, p0, Landroid/hardware/wifi/V1_0/StaLinkLayerIfaceStats;->wmeBePktStats:Landroid/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;

    .line 20
    new-instance v0, Landroid/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;

    invoke-direct {v0}, Landroid/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;-><init>()V

    iput-object v0, p0, Landroid/hardware/wifi/V1_0/StaLinkLayerIfaceStats;->wmeBkPktStats:Landroid/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;

    .line 24
    new-instance v0, Landroid/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;

    invoke-direct {v0}, Landroid/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;-><init>()V

    iput-object v0, p0, Landroid/hardware/wifi/V1_0/StaLinkLayerIfaceStats;->wmeViPktStats:Landroid/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;

    .line 28
    new-instance v0, Landroid/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;

    invoke-direct {v0}, Landroid/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;-><init>()V

    iput-object v0, p0, Landroid/hardware/wifi/V1_0/StaLinkLayerIfaceStats;->wmeVoPktStats:Landroid/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;

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
            "Landroid/hardware/wifi/V1_0/StaLinkLayerIfaceStats;",
            ">;"
        }
    .end annotation

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 101
    .local v0, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/wifi/V1_0/StaLinkLayerIfaceStats;>;"
    const-wide/16 v1, 0x10

    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    .line 104
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v2, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    .line 105
    .local v2, "_hidl_vec_size":I
    mul-int/lit16 v3, v2, 0x88

    int-to-long v5, v3

    .line 106
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    .line 105
    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v3

    .line 109
    .local v3, "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 110
    const/4 v4, 0x0

    .local v4, "_hidl_index_0":I
    :goto_0
    if-ge v4, v2, :cond_0

    .line 111
    new-instance v5, Landroid/hardware/wifi/V1_0/StaLinkLayerIfaceStats;

    invoke-direct {v5}, Landroid/hardware/wifi/V1_0/StaLinkLayerIfaceStats;-><init>()V

    .line 112
    .local v5, "_hidl_vec_element":Landroid/hardware/wifi/V1_0/StaLinkLayerIfaceStats;
    mul-int/lit16 v6, v4, 0x88

    int-to-long v6, v6

    invoke-virtual {v5, p0, v3, v6, v7}, Landroid/hardware/wifi/V1_0/StaLinkLayerIfaceStats;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 113
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    .end local v5    # "_hidl_vec_element":Landroid/hardware/wifi/V1_0/StaLinkLayerIfaceStats;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 117
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
            "Landroid/hardware/wifi/V1_0/StaLinkLayerIfaceStats;",
            ">;)V"
        }
    .end annotation

    .line 138
    .local p1, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/wifi/V1_0/StaLinkLayerIfaceStats;>;"
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 140
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 141
    .local v1, "_hidl_vec_size":I
    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 142
    const/4 v2, 0x0

    const-wide/16 v3, 0xc

    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 143
    new-instance v3, Landroid/os/HwBlob;

    mul-int/lit16 v4, v1, 0x88

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 144
    .local v3, "childBlob":Landroid/os/HwBlob;
    nop

    .local v2, "_hidl_index_0":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 145
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/wifi/V1_0/StaLinkLayerIfaceStats;

    mul-int/lit16 v5, v2, 0x88

    int-to-long v5, v5

    invoke-virtual {v4, v3, v5, v6}, Landroid/hardware/wifi/V1_0/StaLinkLayerIfaceStats;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 144
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 147
    .end local v2    # "_hidl_index_0":I
    :cond_0
    const-wide/16 v4, 0x0

    invoke-virtual {v0, v4, v5, v3}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 150
    .end local v1    # "_hidl_vec_size":I
    .end local v3    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 151
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "otherObject"    # Ljava/lang/Object;

    .line 32
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 33
    return v0

    .line 35
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 36
    return v1

    .line 38
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/hardware/wifi/V1_0/StaLinkLayerIfaceStats;

    if-eq v2, v3, :cond_2

    .line 39
    return v1

    .line 41
    :cond_2
    move-object v2, p1

    check-cast v2, Landroid/hardware/wifi/V1_0/StaLinkLayerIfaceStats;

    .line 42
    .local v2, "other":Landroid/hardware/wifi/V1_0/StaLinkLayerIfaceStats;
    iget v3, p0, Landroid/hardware/wifi/V1_0/StaLinkLayerIfaceStats;->beaconRx:I

    iget v4, v2, Landroid/hardware/wifi/V1_0/StaLinkLayerIfaceStats;->beaconRx:I

    if-eq v3, v4, :cond_3

    .line 43
    return v1

    .line 45
    :cond_3
    iget v3, p0, Landroid/hardware/wifi/V1_0/StaLinkLayerIfaceStats;->avgRssiMgmt:I

    iget v4, v2, Landroid/hardware/wifi/V1_0/StaLinkLayerIfaceStats;->avgRssiMgmt:I

    if-eq v3, v4, :cond_4

    .line 46
    return v1

    .line 48
    :cond_4
    iget-object v3, p0, Landroid/hardware/wifi/V1_0/StaLinkLayerIfaceStats;->wmeBePktStats:Landroid/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;

    iget-object v4, v2, Landroid/hardware/wifi/V1_0/StaLinkLayerIfaceStats;->wmeBePktStats:Landroid/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 49
    return v1

    .line 51
    :cond_5
    iget-object v3, p0, Landroid/hardware/wifi/V1_0/StaLinkLayerIfaceStats;->wmeBkPktStats:Landroid/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;

    iget-object v4, v2, Landroid/hardware/wifi/V1_0/StaLinkLayerIfaceStats;->wmeBkPktStats:Landroid/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 52
    return v1

    .line 54
    :cond_6
    iget-object v3, p0, Landroid/hardware/wifi/V1_0/StaLinkLayerIfaceStats;->wmeViPktStats:Landroid/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;

    iget-object v4, v2, Landroid/hardware/wifi/V1_0/StaLinkLayerIfaceStats;->wmeViPktStats:Landroid/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 55
    return v1

    .line 57
    :cond_7
    iget-object v3, p0, Landroid/hardware/wifi/V1_0/StaLinkLayerIfaceStats;->wmeVoPktStats:Landroid/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;

    iget-object v4, v2, Landroid/hardware/wifi/V1_0/StaLinkLayerIfaceStats;->wmeVoPktStats:Landroid/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 58
    return v1

    .line 60
    :cond_8
    return v0
.end method

.method public final hashCode()I
    .locals 3

    .line 65
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/hardware/wifi/V1_0/StaLinkLayerIfaceStats;->beaconRx:I

    .line 66
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/wifi/V1_0/StaLinkLayerIfaceStats;->avgRssiMgmt:I

    .line 67
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/wifi/V1_0/StaLinkLayerIfaceStats;->wmeBePktStats:Landroid/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;

    .line 68
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/wifi/V1_0/StaLinkLayerIfaceStats;->wmeBkPktStats:Landroid/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;

    .line 69
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/wifi/V1_0/StaLinkLayerIfaceStats;->wmeViPktStats:Landroid/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;

    .line 70
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/wifi/V1_0/StaLinkLayerIfaceStats;->wmeVoPktStats:Landroid/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;

    .line 71
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 65
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/HwParcel;
    .param p2, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p3, "_hidl_offset"    # J

    .line 122
    const-wide/16 v0, 0x0

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v0

    iput v0, p0, Landroid/hardware/wifi/V1_0/StaLinkLayerIfaceStats;->beaconRx:I

    .line 123
    const-wide/16 v0, 0x4

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v0

    iput v0, p0, Landroid/hardware/wifi/V1_0/StaLinkLayerIfaceStats;->avgRssiMgmt:I

    .line 124
    iget-object v0, p0, Landroid/hardware/wifi/V1_0/StaLinkLayerIfaceStats;->wmeBePktStats:Landroid/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;

    const-wide/16 v1, 0x8

    add-long/2addr v1, p3

    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 125
    iget-object v0, p0, Landroid/hardware/wifi/V1_0/StaLinkLayerIfaceStats;->wmeBkPktStats:Landroid/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;

    const-wide/16 v1, 0x28

    add-long/2addr v1, p3

    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 126
    iget-object v0, p0, Landroid/hardware/wifi/V1_0/StaLinkLayerIfaceStats;->wmeViPktStats:Landroid/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;

    const-wide/16 v1, 0x48

    add-long/2addr v1, p3

    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 127
    iget-object v0, p0, Landroid/hardware/wifi/V1_0/StaLinkLayerIfaceStats;->wmeVoPktStats:Landroid/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;

    const-wide/16 v1, 0x68

    add-long/2addr v1, p3

    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 128
    return-void
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 95
    const-wide/16 v0, 0x88

    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 96
    .local v0, "blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/hardware/wifi/V1_0/StaLinkLayerIfaceStats;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 97
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 77
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    const-string v1, ".beaconRx = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    iget v1, p0, Landroid/hardware/wifi/V1_0/StaLinkLayerIfaceStats;->beaconRx:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 80
    const-string v1, ", .avgRssiMgmt = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    iget v1, p0, Landroid/hardware/wifi/V1_0/StaLinkLayerIfaceStats;->avgRssiMgmt:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 82
    const-string v1, ", .wmeBePktStats = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    iget-object v1, p0, Landroid/hardware/wifi/V1_0/StaLinkLayerIfaceStats;->wmeBePktStats:Landroid/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 84
    const-string v1, ", .wmeBkPktStats = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    iget-object v1, p0, Landroid/hardware/wifi/V1_0/StaLinkLayerIfaceStats;->wmeBkPktStats:Landroid/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 86
    const-string v1, ", .wmeViPktStats = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    iget-object v1, p0, Landroid/hardware/wifi/V1_0/StaLinkLayerIfaceStats;->wmeViPktStats:Landroid/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 88
    const-string v1, ", .wmeVoPktStats = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    iget-object v1, p0, Landroid/hardware/wifi/V1_0/StaLinkLayerIfaceStats;->wmeVoPktStats:Landroid/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 90
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .locals 3
    .param p1, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p2, "_hidl_offset"    # J

    .line 155
    const-wide/16 v0, 0x0

    add-long/2addr v0, p2

    iget v2, p0, Landroid/hardware/wifi/V1_0/StaLinkLayerIfaceStats;->beaconRx:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 156
    const-wide/16 v0, 0x4

    add-long/2addr v0, p2

    iget v2, p0, Landroid/hardware/wifi/V1_0/StaLinkLayerIfaceStats;->avgRssiMgmt:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 157
    iget-object v0, p0, Landroid/hardware/wifi/V1_0/StaLinkLayerIfaceStats;->wmeBePktStats:Landroid/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;

    const-wide/16 v1, 0x8

    add-long/2addr v1, p2

    invoke-virtual {v0, p1, v1, v2}, Landroid/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 158
    iget-object v0, p0, Landroid/hardware/wifi/V1_0/StaLinkLayerIfaceStats;->wmeBkPktStats:Landroid/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;

    const-wide/16 v1, 0x28

    add-long/2addr v1, p2

    invoke-virtual {v0, p1, v1, v2}, Landroid/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 159
    iget-object v0, p0, Landroid/hardware/wifi/V1_0/StaLinkLayerIfaceStats;->wmeViPktStats:Landroid/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;

    const-wide/16 v1, 0x48

    add-long/2addr v1, p2

    invoke-virtual {v0, p1, v1, v2}, Landroid/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 160
    iget-object v0, p0, Landroid/hardware/wifi/V1_0/StaLinkLayerIfaceStats;->wmeVoPktStats:Landroid/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;

    const-wide/16 v1, 0x68

    add-long/2addr v1, p2

    invoke-virtual {v0, p1, v1, v2}, Landroid/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 161
    return-void
.end method

.method public final writeToParcel(Landroid/os/HwParcel;)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 131
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x88

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 132
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/wifi/V1_0/StaLinkLayerIfaceStats;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 133
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 134
    return-void
.end method
