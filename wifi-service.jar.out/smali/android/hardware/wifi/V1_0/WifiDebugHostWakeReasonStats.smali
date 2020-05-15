.class public final Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonStats;
.super Ljava/lang/Object;
.source "WifiDebugHostWakeReasonStats.java"


# instance fields
.field public final cmdEventWakeCntPerType:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final driverFwLocalWakeCntPerType:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final rxIcmpPkWakeDetails:Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonRxIcmpPacketDetails;

.field public final rxMulticastPkWakeDetails:Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonRxMulticastPacketDetails;

.field public final rxPktWakeDetails:Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonRxPacketDetails;

.field public totalCmdEventWakeCnt:I

.field public totalDriverFwLocalWakeCnt:I

.field public totalRxPacketWakeCnt:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonStats;->cmdEventWakeCntPerType:Ljava/util/ArrayList;

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonStats;->driverFwLocalWakeCntPerType:Ljava/util/ArrayList;

    .line 34
    new-instance v0, Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonRxPacketDetails;

    invoke-direct {v0}, Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonRxPacketDetails;-><init>()V

    iput-object v0, p0, Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonStats;->rxPktWakeDetails:Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonRxPacketDetails;

    .line 35
    new-instance v0, Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonRxMulticastPacketDetails;

    invoke-direct {v0}, Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonRxMulticastPacketDetails;-><init>()V

    iput-object v0, p0, Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonStats;->rxMulticastPkWakeDetails:Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonRxMulticastPacketDetails;

    .line 36
    new-instance v0, Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonRxIcmpPacketDetails;

    invoke-direct {v0}, Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonRxIcmpPacketDetails;-><init>()V

    iput-object v0, p0, Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonStats;->rxIcmpPkWakeDetails:Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonRxIcmpPacketDetails;

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
            "Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonStats;",
            ">;"
        }
    .end annotation

    .line 120
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 121
    .local v0, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonStats;>;"
    const-wide/16 v1, 0x10

    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    .line 124
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v2, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    .line 125
    .local v2, "_hidl_vec_size":I
    mul-int/lit8 v3, v2, 0x60

    int-to-long v5, v3

    .line 126
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    .line 125
    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v3

    .line 129
    .local v3, "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 130
    const/4 v4, 0x0

    .local v4, "_hidl_index_0":I
    :goto_0
    if-ge v4, v2, :cond_0

    .line 131
    new-instance v5, Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonStats;

    invoke-direct {v5}, Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonStats;-><init>()V

    .line 132
    .local v5, "_hidl_vec_element":Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonStats;
    mul-int/lit8 v6, v4, 0x60

    int-to-long v6, v6

    invoke-virtual {v5, p0, v3, v6, v7}, Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonStats;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 133
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    .end local v5    # "_hidl_vec_element":Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonStats;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 137
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
            "Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonStats;",
            ">;)V"
        }
    .end annotation

    .line 184
    .local p1, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonStats;>;"
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 186
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 187
    .local v1, "_hidl_vec_size":I
    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 188
    const/4 v2, 0x0

    const-wide/16 v3, 0xc

    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 189
    new-instance v3, Landroid/os/HwBlob;

    mul-int/lit8 v4, v1, 0x60

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 190
    .local v3, "childBlob":Landroid/os/HwBlob;
    nop

    .local v2, "_hidl_index_0":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 191
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonStats;

    mul-int/lit8 v5, v2, 0x60

    int-to-long v5, v5

    invoke-virtual {v4, v3, v5, v6}, Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonStats;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 190
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 193
    .end local v2    # "_hidl_index_0":I
    :cond_0
    const-wide/16 v4, 0x0

    invoke-virtual {v0, v4, v5, v3}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 196
    .end local v1    # "_hidl_vec_size":I
    .end local v3    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 197
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "otherObject"    # Ljava/lang/Object;

    .line 40
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 41
    return v0

    .line 43
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 44
    return v1

    .line 46
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonStats;

    if-eq v2, v3, :cond_2

    .line 47
    return v1

    .line 49
    :cond_2
    move-object v2, p1

    check-cast v2, Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonStats;

    .line 50
    .local v2, "other":Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonStats;
    iget v3, p0, Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonStats;->totalCmdEventWakeCnt:I

    iget v4, v2, Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonStats;->totalCmdEventWakeCnt:I

    if-eq v3, v4, :cond_3

    .line 51
    return v1

    .line 53
    :cond_3
    iget-object v3, p0, Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonStats;->cmdEventWakeCntPerType:Ljava/util/ArrayList;

    iget-object v4, v2, Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonStats;->cmdEventWakeCntPerType:Ljava/util/ArrayList;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 54
    return v1

    .line 56
    :cond_4
    iget v3, p0, Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonStats;->totalDriverFwLocalWakeCnt:I

    iget v4, v2, Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonStats;->totalDriverFwLocalWakeCnt:I

    if-eq v3, v4, :cond_5

    .line 57
    return v1

    .line 59
    :cond_5
    iget-object v3, p0, Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonStats;->driverFwLocalWakeCntPerType:Ljava/util/ArrayList;

    iget-object v4, v2, Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonStats;->driverFwLocalWakeCntPerType:Ljava/util/ArrayList;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 60
    return v1

    .line 62
    :cond_6
    iget v3, p0, Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonStats;->totalRxPacketWakeCnt:I

    iget v4, v2, Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonStats;->totalRxPacketWakeCnt:I

    if-eq v3, v4, :cond_7

    .line 63
    return v1

    .line 65
    :cond_7
    iget-object v3, p0, Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonStats;->rxPktWakeDetails:Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonRxPacketDetails;

    iget-object v4, v2, Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonStats;->rxPktWakeDetails:Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonRxPacketDetails;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 66
    return v1

    .line 68
    :cond_8
    iget-object v3, p0, Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonStats;->rxMulticastPkWakeDetails:Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonRxMulticastPacketDetails;

    iget-object v4, v2, Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonStats;->rxMulticastPkWakeDetails:Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonRxMulticastPacketDetails;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 69
    return v1

    .line 71
    :cond_9
    iget-object v3, p0, Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonStats;->rxIcmpPkWakeDetails:Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonRxIcmpPacketDetails;

    iget-object v4, v2, Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonStats;->rxIcmpPkWakeDetails:Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonRxIcmpPacketDetails;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 72
    return v1

    .line 74
    :cond_a
    return v0
.end method

.method public final hashCode()I
    .locals 3

    .line 79
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonStats;->totalCmdEventWakeCnt:I

    .line 80
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonStats;->cmdEventWakeCntPerType:Ljava/util/ArrayList;

    .line 81
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonStats;->totalDriverFwLocalWakeCnt:I

    .line 82
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonStats;->driverFwLocalWakeCntPerType:Ljava/util/ArrayList;

    .line 83
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonStats;->totalRxPacketWakeCnt:I

    .line 84
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonStats;->rxPktWakeDetails:Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonRxPacketDetails;

    .line 85
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonStats;->rxMulticastPkWakeDetails:Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonRxMulticastPacketDetails;

    .line 86
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonStats;->rxIcmpPkWakeDetails:Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonRxIcmpPacketDetails;

    .line 87
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 79
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

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    .line 142
    const-wide/16 v11, 0x0

    add-long v1, p3, v11

    invoke-virtual {v10, v1, v2}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v1

    iput v1, v0, Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonStats;->totalCmdEventWakeCnt:I

    .line 144
    const-wide/16 v13, 0x8

    add-long v1, p3, v13

    add-long/2addr v1, v13

    invoke-virtual {v10, v1, v2}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v8

    .line 145
    .local v8, "_hidl_vec_size":I
    mul-int/lit8 v1, v8, 0x4

    int-to-long v2, v1

    .line 146
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v4

    add-long v6, p3, v13

    add-long/2addr v6, v11

    .line 145
    const/4 v15, 0x1

    move-object v1, v9

    move v11, v8

    move v8, v15

    .end local v8    # "_hidl_vec_size":I
    .local v11, "_hidl_vec_size":I
    invoke-virtual/range {v1 .. v8}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v1

    .line 149
    .local v1, "childBlob":Landroid/os/HwBlob;
    iget-object v2, v0, Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonStats;->cmdEventWakeCntPerType:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 150
    const/4 v12, 0x0

    move v2, v12

    .local v2, "_hidl_index_0":I
    :goto_0
    if-ge v2, v11, :cond_0

    .line 152
    mul-int/lit8 v3, v2, 0x4

    int-to-long v3, v3

    invoke-virtual {v1, v3, v4}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v3

    .line 153
    .local v3, "_hidl_vec_element":I
    iget-object v4, v0, Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonStats;->cmdEventWakeCntPerType:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 150
    .end local v3    # "_hidl_vec_element":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 156
    .end local v1    # "childBlob":Landroid/os/HwBlob;
    .end local v2    # "_hidl_index_0":I
    .end local v11    # "_hidl_vec_size":I
    :cond_0
    const-wide/16 v1, 0x18

    add-long v1, p3, v1

    invoke-virtual {v10, v1, v2}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v1

    iput v1, v0, Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonStats;->totalDriverFwLocalWakeCnt:I

    .line 158
    const-wide/16 v1, 0x20

    add-long v3, p3, v1

    add-long/2addr v3, v13

    invoke-virtual {v10, v3, v4}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v11

    .line 159
    .restart local v11    # "_hidl_vec_size":I
    mul-int/lit8 v3, v11, 0x4

    int-to-long v3, v3

    .line 160
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v5

    add-long v1, p3, v1

    const-wide/16 v7, 0x0

    add-long/2addr v7, v1

    const/4 v13, 0x1

    .line 159
    move-object v1, v9

    move-wide v2, v3

    move-wide v4, v5

    move-wide v6, v7

    move v8, v13

    invoke-virtual/range {v1 .. v8}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v1

    .line 163
    .restart local v1    # "childBlob":Landroid/os/HwBlob;
    iget-object v2, v0, Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonStats;->driverFwLocalWakeCntPerType:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 164
    nop

    .local v12, "_hidl_index_0":I
    :goto_1
    move v2, v12

    .end local v12    # "_hidl_index_0":I
    .restart local v2    # "_hidl_index_0":I
    if-ge v2, v11, :cond_1

    .line 166
    mul-int/lit8 v3, v2, 0x4

    int-to-long v3, v3

    invoke-virtual {v1, v3, v4}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v3

    .line 167
    .restart local v3    # "_hidl_vec_element":I
    iget-object v4, v0, Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonStats;->driverFwLocalWakeCntPerType:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 164
    .end local v3    # "_hidl_vec_element":I
    add-int/lit8 v12, v2, 0x1

    .end local v2    # "_hidl_index_0":I
    .restart local v12    # "_hidl_index_0":I
    goto :goto_1

    .line 170
    .end local v1    # "childBlob":Landroid/os/HwBlob;
    .end local v11    # "_hidl_vec_size":I
    .end local v12    # "_hidl_index_0":I
    :cond_1
    const-wide/16 v1, 0x30

    add-long v1, p3, v1

    invoke-virtual {v10, v1, v2}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v1

    iput v1, v0, Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonStats;->totalRxPacketWakeCnt:I

    .line 171
    iget-object v1, v0, Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonStats;->rxPktWakeDetails:Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonRxPacketDetails;

    const-wide/16 v2, 0x34

    add-long v2, p3, v2

    invoke-virtual {v1, v9, v10, v2, v3}, Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonRxPacketDetails;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 172
    iget-object v1, v0, Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonStats;->rxMulticastPkWakeDetails:Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonRxMulticastPacketDetails;

    const-wide/16 v2, 0x40

    add-long v2, p3, v2

    invoke-virtual {v1, v9, v10, v2, v3}, Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonRxMulticastPacketDetails;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 173
    iget-object v1, v0, Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonStats;->rxIcmpPkWakeDetails:Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonRxIcmpPacketDetails;

    const-wide/16 v2, 0x4c

    add-long v2, p3, v2

    invoke-virtual {v1, v9, v10, v2, v3}, Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonRxIcmpPacketDetails;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 174
    return-void
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 115
    const-wide/16 v0, 0x60

    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 116
    .local v0, "blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonStats;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 117
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 93
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    const-string v1, ".totalCmdEventWakeCnt = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    iget v1, p0, Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonStats;->totalCmdEventWakeCnt:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 96
    const-string v1, ", .cmdEventWakeCntPerType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    iget-object v1, p0, Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonStats;->cmdEventWakeCntPerType:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 98
    const-string v1, ", .totalDriverFwLocalWakeCnt = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    iget v1, p0, Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonStats;->totalDriverFwLocalWakeCnt:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 100
    const-string v1, ", .driverFwLocalWakeCntPerType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    iget-object v1, p0, Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonStats;->driverFwLocalWakeCntPerType:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 102
    const-string v1, ", .totalRxPacketWakeCnt = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    iget v1, p0, Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonStats;->totalRxPacketWakeCnt:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 104
    const-string v1, ", .rxPktWakeDetails = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    iget-object v1, p0, Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonStats;->rxPktWakeDetails:Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonRxPacketDetails;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 106
    const-string v1, ", .rxMulticastPkWakeDetails = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    iget-object v1, p0, Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonStats;->rxMulticastPkWakeDetails:Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonRxMulticastPacketDetails;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 108
    const-string v1, ", .rxIcmpPkWakeDetails = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    iget-object v1, p0, Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonStats;->rxIcmpPkWakeDetails:Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonRxIcmpPacketDetails;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 110
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
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

    .line 201
    const-wide/16 v2, 0x0

    add-long v4, p2, v2

    iget v6, v0, Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonStats;->totalCmdEventWakeCnt:I

    invoke-virtual {v1, v4, v5, v6}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 203
    iget-object v4, v0, Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonStats;->cmdEventWakeCntPerType:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 204
    .local v4, "_hidl_vec_size":I
    const-wide/16 v5, 0x8

    add-long v7, p2, v5

    add-long/2addr v7, v5

    invoke-virtual {v1, v7, v8, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 205
    add-long v7, p2, v5

    const-wide/16 v9, 0xc

    add-long/2addr v7, v9

    const/4 v11, 0x0

    invoke-virtual {v1, v7, v8, v11}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 206
    new-instance v7, Landroid/os/HwBlob;

    mul-int/lit8 v8, v4, 0x4

    invoke-direct {v7, v8}, Landroid/os/HwBlob;-><init>(I)V

    .line 207
    .local v7, "childBlob":Landroid/os/HwBlob;
    move v8, v11

    .local v8, "_hidl_index_0":I
    :goto_0
    if-ge v8, v4, :cond_0

    .line 208
    mul-int/lit8 v12, v8, 0x4

    int-to-long v12, v12

    iget-object v11, v0, Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonStats;->cmdEventWakeCntPerType:Ljava/util/ArrayList;

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {v7, v12, v13, v11}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 207
    add-int/lit8 v8, v8, 0x1

    const/4 v11, 0x0

    goto :goto_0

    .line 210
    .end local v8    # "_hidl_index_0":I
    :cond_0
    add-long v11, p2, v5

    add-long/2addr v11, v2

    invoke-virtual {v1, v11, v12, v7}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 212
    .end local v4    # "_hidl_vec_size":I
    .end local v7    # "childBlob":Landroid/os/HwBlob;
    const-wide/16 v7, 0x18

    add-long v7, p2, v7

    iget v4, v0, Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonStats;->totalDriverFwLocalWakeCnt:I

    invoke-virtual {v1, v7, v8, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 214
    iget-object v4, v0, Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonStats;->driverFwLocalWakeCntPerType:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 215
    .restart local v4    # "_hidl_vec_size":I
    const-wide/16 v7, 0x20

    add-long v11, p2, v7

    add-long/2addr v11, v5

    invoke-virtual {v1, v11, v12, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 216
    add-long v5, p2, v7

    add-long/2addr v5, v9

    const/4 v9, 0x0

    invoke-virtual {v1, v5, v6, v9}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 217
    new-instance v5, Landroid/os/HwBlob;

    mul-int/lit8 v6, v4, 0x4

    invoke-direct {v5, v6}, Landroid/os/HwBlob;-><init>(I)V

    .line 218
    .local v5, "childBlob":Landroid/os/HwBlob;
    nop

    .local v9, "_hidl_index_0":I
    :goto_1
    move v6, v9

    .end local v9    # "_hidl_index_0":I
    .local v6, "_hidl_index_0":I
    if-ge v6, v4, :cond_1

    .line 219
    mul-int/lit8 v9, v6, 0x4

    int-to-long v9, v9

    iget-object v11, v0, Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonStats;->driverFwLocalWakeCntPerType:Ljava/util/ArrayList;

    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {v5, v9, v10, v11}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 218
    add-int/lit8 v9, v6, 0x1

    .end local v6    # "_hidl_index_0":I
    .restart local v9    # "_hidl_index_0":I
    goto :goto_1

    .line 221
    .end local v9    # "_hidl_index_0":I
    :cond_1
    add-long v6, p2, v7

    add-long/2addr v6, v2

    invoke-virtual {v1, v6, v7, v5}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 223
    .end local v4    # "_hidl_vec_size":I
    .end local v5    # "childBlob":Landroid/os/HwBlob;
    const-wide/16 v2, 0x30

    add-long v2, p2, v2

    iget v4, v0, Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonStats;->totalRxPacketWakeCnt:I

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 224
    iget-object v2, v0, Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonStats;->rxPktWakeDetails:Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonRxPacketDetails;

    const-wide/16 v3, 0x34

    add-long v3, p2, v3

    invoke-virtual {v2, v1, v3, v4}, Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonRxPacketDetails;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 225
    iget-object v2, v0, Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonStats;->rxMulticastPkWakeDetails:Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonRxMulticastPacketDetails;

    const-wide/16 v3, 0x40

    add-long v3, p2, v3

    invoke-virtual {v2, v1, v3, v4}, Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonRxMulticastPacketDetails;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 226
    iget-object v2, v0, Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonStats;->rxIcmpPkWakeDetails:Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonRxIcmpPacketDetails;

    const-wide/16 v3, 0x4c

    add-long v3, p2, v3

    invoke-virtual {v2, v1, v3, v4}, Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonRxIcmpPacketDetails;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 227
    return-void
.end method

.method public final writeToParcel(Landroid/os/HwParcel;)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 177
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x60

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 178
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonStats;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 179
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 180
    return-void
.end method
