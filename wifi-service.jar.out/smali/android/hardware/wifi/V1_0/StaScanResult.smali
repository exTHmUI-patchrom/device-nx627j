.class public final Landroid/hardware/wifi/V1_0/StaScanResult;
.super Ljava/lang/Object;
.source "StaScanResult.java"


# instance fields
.field public beaconPeriodInMs:S

.field public final bssid:[B

.field public capability:S

.field public frequency:I

.field public final informationElements:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/hardware/wifi/V1_0/WifiInformationElement;",
            ">;"
        }
    .end annotation
.end field

.field public rssi:I

.field public final ssid:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field public timeStampInUs:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/wifi/V1_0/StaScanResult;->ssid:Ljava/util/ArrayList;

    .line 7
    const/4 v0, 0x6

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/hardware/wifi/V1_0/StaScanResult;->bssid:[B

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/wifi/V1_0/StaScanResult;->informationElements:Ljava/util/ArrayList;

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
            "Landroid/hardware/wifi/V1_0/StaScanResult;",
            ">;"
        }
    .end annotation

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 97
    .local v0, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/wifi/V1_0/StaScanResult;>;"
    const-wide/16 v1, 0x10

    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    .line 100
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v2, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    .line 101
    .local v2, "_hidl_vec_size":I
    mul-int/lit8 v3, v2, 0x40

    int-to-long v5, v3

    .line 102
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    .line 101
    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v3

    .line 105
    .local v3, "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 106
    const/4 v4, 0x0

    .local v4, "_hidl_index_0":I
    :goto_0
    if-ge v4, v2, :cond_0

    .line 107
    new-instance v5, Landroid/hardware/wifi/V1_0/StaScanResult;

    invoke-direct {v5}, Landroid/hardware/wifi/V1_0/StaScanResult;-><init>()V

    .line 108
    .local v5, "_hidl_vec_element":Landroid/hardware/wifi/V1_0/StaScanResult;
    mul-int/lit8 v6, v4, 0x40

    int-to-long v6, v6

    invoke-virtual {v5, p0, v3, v6, v7}, Landroid/hardware/wifi/V1_0/StaScanResult;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 109
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    .end local v5    # "_hidl_vec_element":Landroid/hardware/wifi/V1_0/StaScanResult;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 113
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
            "Landroid/hardware/wifi/V1_0/StaScanResult;",
            ">;)V"
        }
    .end annotation

    .line 164
    .local p1, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/wifi/V1_0/StaScanResult;>;"
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 166
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 167
    .local v1, "_hidl_vec_size":I
    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 168
    const/4 v2, 0x0

    const-wide/16 v3, 0xc

    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 169
    new-instance v3, Landroid/os/HwBlob;

    mul-int/lit8 v4, v1, 0x40

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 170
    .local v3, "childBlob":Landroid/os/HwBlob;
    nop

    .local v2, "_hidl_index_0":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 171
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/wifi/V1_0/StaScanResult;

    mul-int/lit8 v5, v2, 0x40

    int-to-long v5, v5

    invoke-virtual {v4, v3, v5, v6}, Landroid/hardware/wifi/V1_0/StaScanResult;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 170
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 173
    .end local v2    # "_hidl_index_0":I
    :cond_0
    const-wide/16 v4, 0x0

    invoke-virtual {v0, v4, v5, v3}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 176
    .end local v1    # "_hidl_vec_size":I
    .end local v3    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 177
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

    const-class v3, Landroid/hardware/wifi/V1_0/StaScanResult;

    if-eq v2, v3, :cond_2

    .line 23
    return v1

    .line 25
    :cond_2
    move-object v2, p1

    check-cast v2, Landroid/hardware/wifi/V1_0/StaScanResult;

    .line 26
    .local v2, "other":Landroid/hardware/wifi/V1_0/StaScanResult;
    iget-wide v3, p0, Landroid/hardware/wifi/V1_0/StaScanResult;->timeStampInUs:J

    iget-wide v5, v2, Landroid/hardware/wifi/V1_0/StaScanResult;->timeStampInUs:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_3

    .line 27
    return v1

    .line 29
    :cond_3
    iget-object v3, p0, Landroid/hardware/wifi/V1_0/StaScanResult;->ssid:Ljava/util/ArrayList;

    iget-object v4, v2, Landroid/hardware/wifi/V1_0/StaScanResult;->ssid:Ljava/util/ArrayList;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 30
    return v1

    .line 32
    :cond_4
    iget-object v3, p0, Landroid/hardware/wifi/V1_0/StaScanResult;->bssid:[B

    iget-object v4, v2, Landroid/hardware/wifi/V1_0/StaScanResult;->bssid:[B

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 33
    return v1

    .line 35
    :cond_5
    iget v3, p0, Landroid/hardware/wifi/V1_0/StaScanResult;->rssi:I

    iget v4, v2, Landroid/hardware/wifi/V1_0/StaScanResult;->rssi:I

    if-eq v3, v4, :cond_6

    .line 36
    return v1

    .line 38
    :cond_6
    iget v3, p0, Landroid/hardware/wifi/V1_0/StaScanResult;->frequency:I

    iget v4, v2, Landroid/hardware/wifi/V1_0/StaScanResult;->frequency:I

    if-eq v3, v4, :cond_7

    .line 39
    return v1

    .line 41
    :cond_7
    iget-short v3, p0, Landroid/hardware/wifi/V1_0/StaScanResult;->beaconPeriodInMs:S

    iget-short v4, v2, Landroid/hardware/wifi/V1_0/StaScanResult;->beaconPeriodInMs:S

    if-eq v3, v4, :cond_8

    .line 42
    return v1

    .line 44
    :cond_8
    iget-short v3, p0, Landroid/hardware/wifi/V1_0/StaScanResult;->capability:S

    iget-short v4, v2, Landroid/hardware/wifi/V1_0/StaScanResult;->capability:S

    if-eq v3, v4, :cond_9

    .line 45
    return v1

    .line 47
    :cond_9
    iget-object v3, p0, Landroid/hardware/wifi/V1_0/StaScanResult;->informationElements:Ljava/util/ArrayList;

    iget-object v4, v2, Landroid/hardware/wifi/V1_0/StaScanResult;->informationElements:Ljava/util/ArrayList;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 48
    return v1

    .line 50
    :cond_a
    return v0
.end method

.method public final hashCode()I
    .locals 3

    .line 55
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Object;

    iget-wide v1, p0, Landroid/hardware/wifi/V1_0/StaScanResult;->timeStampInUs:J

    .line 56
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/wifi/V1_0/StaScanResult;->ssid:Ljava/util/ArrayList;

    .line 57
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/wifi/V1_0/StaScanResult;->bssid:[B

    .line 58
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/wifi/V1_0/StaScanResult;->rssi:I

    .line 59
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/wifi/V1_0/StaScanResult;->frequency:I

    .line 60
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-short v1, p0, Landroid/hardware/wifi/V1_0/StaScanResult;->beaconPeriodInMs:S

    .line 61
    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-short v1, p0, Landroid/hardware/wifi/V1_0/StaScanResult;->capability:S

    .line 62
    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/wifi/V1_0/StaScanResult;->informationElements:Ljava/util/ArrayList;

    .line 63
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 55
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

    .line 118
    const-wide/16 v2, 0x0

    add-long v4, p3, v2

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt64(J)J

    move-result-wide v4

    iput-wide v4, v0, Landroid/hardware/wifi/V1_0/StaScanResult;->timeStampInUs:J

    .line 120
    const-wide/16 v4, 0x8

    add-long v6, p3, v4

    add-long/2addr v6, v4

    invoke-virtual {v1, v6, v7}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v6

    .line 121
    .local v6, "_hidl_vec_size":I
    mul-int/lit8 v7, v6, 0x1

    int-to-long v9, v7

    .line 122
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v11

    add-long v7, p3, v4

    add-long v13, v7, v2

    .line 121
    const/4 v15, 0x1

    move-object/from16 v8, p1

    invoke-virtual/range {v8 .. v15}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v7

    .line 125
    .local v7, "childBlob":Landroid/os/HwBlob;
    iget-object v8, v0, Landroid/hardware/wifi/V1_0/StaScanResult;->ssid:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 126
    const/4 v8, 0x0

    move v9, v8

    .local v9, "_hidl_index_0":I
    :goto_0
    if-ge v9, v6, :cond_0

    .line 128
    mul-int/lit8 v10, v9, 0x1

    int-to-long v10, v10

    invoke-virtual {v7, v10, v11}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v10

    .line 129
    .local v10, "_hidl_vec_element":B
    iget-object v11, v0, Landroid/hardware/wifi/V1_0/StaScanResult;->ssid:Ljava/util/ArrayList;

    invoke-static {v10}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    .end local v10    # "_hidl_vec_element":B
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 133
    .end local v6    # "_hidl_vec_size":I
    .end local v7    # "childBlob":Landroid/os/HwBlob;
    .end local v9    # "_hidl_index_0":I
    :cond_0
    const-wide/16 v6, 0x18

    add-long v6, p3, v6

    .line 134
    .local v6, "_hidl_array_offset_0":J
    iget-object v9, v0, Landroid/hardware/wifi/V1_0/StaScanResult;->bssid:[B

    const/4 v10, 0x6

    invoke-virtual {v1, v6, v7, v9, v10}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 135
    nop

    .line 137
    .end local v6    # "_hidl_array_offset_0":J
    const-wide/16 v6, 0x20

    add-long v6, p3, v6

    invoke-virtual {v1, v6, v7}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v6

    iput v6, v0, Landroid/hardware/wifi/V1_0/StaScanResult;->rssi:I

    .line 138
    const-wide/16 v6, 0x24

    add-long v6, p3, v6

    invoke-virtual {v1, v6, v7}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v6

    iput v6, v0, Landroid/hardware/wifi/V1_0/StaScanResult;->frequency:I

    .line 139
    const-wide/16 v6, 0x28

    add-long v6, p3, v6

    invoke-virtual {v1, v6, v7}, Landroid/os/HwBlob;->getInt16(J)S

    move-result v6

    iput-short v6, v0, Landroid/hardware/wifi/V1_0/StaScanResult;->beaconPeriodInMs:S

    .line 140
    const-wide/16 v6, 0x2a

    add-long v6, p3, v6

    invoke-virtual {v1, v6, v7}, Landroid/os/HwBlob;->getInt16(J)S

    move-result v6

    iput-short v6, v0, Landroid/hardware/wifi/V1_0/StaScanResult;->capability:S

    .line 142
    const-wide/16 v6, 0x30

    add-long v9, p3, v6

    add-long/2addr v9, v4

    invoke-virtual {v1, v9, v10}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    .line 143
    .local v4, "_hidl_vec_size":I
    mul-int/lit8 v5, v4, 0x18

    int-to-long v10, v5

    .line 144
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v12

    add-long v5, p3, v6

    add-long v14, v5, v2

    const/16 v16, 0x1

    .line 143
    move-object/from16 v9, p1

    invoke-virtual/range {v9 .. v16}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v2

    .line 147
    .local v2, "childBlob":Landroid/os/HwBlob;
    iget-object v3, v0, Landroid/hardware/wifi/V1_0/StaScanResult;->informationElements:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 148
    nop

    .local v8, "_hidl_index_0":I
    :goto_1
    move v3, v8

    .end local v8    # "_hidl_index_0":I
    .local v3, "_hidl_index_0":I
    if-ge v3, v4, :cond_1

    .line 149
    new-instance v5, Landroid/hardware/wifi/V1_0/WifiInformationElement;

    invoke-direct {v5}, Landroid/hardware/wifi/V1_0/WifiInformationElement;-><init>()V

    .line 150
    .local v5, "_hidl_vec_element":Landroid/hardware/wifi/V1_0/WifiInformationElement;
    mul-int/lit8 v6, v3, 0x18

    int-to-long v6, v6

    move-object/from16 v8, p1

    invoke-virtual {v5, v8, v2, v6, v7}, Landroid/hardware/wifi/V1_0/WifiInformationElement;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 151
    iget-object v6, v0, Landroid/hardware/wifi/V1_0/StaScanResult;->informationElements:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    .end local v5    # "_hidl_vec_element":Landroid/hardware/wifi/V1_0/WifiInformationElement;
    add-int/lit8 v3, v3, 0x1

    move v8, v3

    goto :goto_1

    .line 154
    .end local v2    # "childBlob":Landroid/os/HwBlob;
    .end local v3    # "_hidl_index_0":I
    .end local v4    # "_hidl_vec_size":I
    :cond_1
    move-object/from16 v8, p1

    return-void
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 91
    const-wide/16 v0, 0x40

    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 92
    .local v0, "blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/hardware/wifi/V1_0/StaScanResult;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 93
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 69
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    const-string v1, ".timeStampInUs = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    iget-wide v1, p0, Landroid/hardware/wifi/V1_0/StaScanResult;->timeStampInUs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 72
    const-string v1, ", .ssid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    iget-object v1, p0, Landroid/hardware/wifi/V1_0/StaScanResult;->ssid:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 74
    const-string v1, ", .bssid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    iget-object v1, p0, Landroid/hardware/wifi/V1_0/StaScanResult;->bssid:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    const-string v1, ", .rssi = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    iget v1, p0, Landroid/hardware/wifi/V1_0/StaScanResult;->rssi:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 78
    const-string v1, ", .frequency = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    iget v1, p0, Landroid/hardware/wifi/V1_0/StaScanResult;->frequency:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 80
    const-string v1, ", .beaconPeriodInMs = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    iget-short v1, p0, Landroid/hardware/wifi/V1_0/StaScanResult;->beaconPeriodInMs:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 82
    const-string v1, ", .capability = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    iget-short v1, p0, Landroid/hardware/wifi/V1_0/StaScanResult;->capability:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 84
    const-string v1, ", .informationElements = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    iget-object v1, p0, Landroid/hardware/wifi/V1_0/StaScanResult;->informationElements:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 86
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
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

    .line 181
    const-wide/16 v2, 0x0

    add-long v4, p2, v2

    iget-wide v6, v0, Landroid/hardware/wifi/V1_0/StaScanResult;->timeStampInUs:J

    invoke-virtual {v1, v4, v5, v6, v7}, Landroid/os/HwBlob;->putInt64(JJ)V

    .line 183
    iget-object v4, v0, Landroid/hardware/wifi/V1_0/StaScanResult;->ssid:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 184
    .local v4, "_hidl_vec_size":I
    const-wide/16 v5, 0x8

    add-long v7, p2, v5

    add-long/2addr v7, v5

    invoke-virtual {v1, v7, v8, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 185
    add-long v7, p2, v5

    const-wide/16 v9, 0xc

    add-long/2addr v7, v9

    const/4 v11, 0x0

    invoke-virtual {v1, v7, v8, v11}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 186
    new-instance v7, Landroid/os/HwBlob;

    mul-int/lit8 v8, v4, 0x1

    invoke-direct {v7, v8}, Landroid/os/HwBlob;-><init>(I)V

    .line 187
    .local v7, "childBlob":Landroid/os/HwBlob;
    move v8, v11

    .local v8, "_hidl_index_0":I
    :goto_0
    if-ge v8, v4, :cond_0

    .line 188
    mul-int/lit8 v12, v8, 0x1

    int-to-long v12, v12

    iget-object v11, v0, Landroid/hardware/wifi/V1_0/StaScanResult;->ssid:Ljava/util/ArrayList;

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Byte;

    invoke-virtual {v11}, Ljava/lang/Byte;->byteValue()B

    move-result v11

    invoke-virtual {v7, v12, v13, v11}, Landroid/os/HwBlob;->putInt8(JB)V

    .line 187
    add-int/lit8 v8, v8, 0x1

    const/4 v11, 0x0

    goto :goto_0

    .line 190
    .end local v8    # "_hidl_index_0":I
    :cond_0
    add-long v11, p2, v5

    add-long/2addr v11, v2

    invoke-virtual {v1, v11, v12, v7}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 193
    .end local v4    # "_hidl_vec_size":I
    .end local v7    # "childBlob":Landroid/os/HwBlob;
    const-wide/16 v7, 0x18

    add-long v7, p2, v7

    .line 194
    .local v7, "_hidl_array_offset_0":J
    iget-object v4, v0, Landroid/hardware/wifi/V1_0/StaScanResult;->bssid:[B

    invoke-virtual {v1, v7, v8, v4}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 195
    nop

    .line 197
    .end local v7    # "_hidl_array_offset_0":J
    const-wide/16 v7, 0x20

    add-long v7, p2, v7

    iget v4, v0, Landroid/hardware/wifi/V1_0/StaScanResult;->rssi:I

    invoke-virtual {v1, v7, v8, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 198
    const-wide/16 v7, 0x24

    add-long v7, p2, v7

    iget v4, v0, Landroid/hardware/wifi/V1_0/StaScanResult;->frequency:I

    invoke-virtual {v1, v7, v8, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 199
    const-wide/16 v7, 0x28

    add-long v7, p2, v7

    iget-short v4, v0, Landroid/hardware/wifi/V1_0/StaScanResult;->beaconPeriodInMs:S

    invoke-virtual {v1, v7, v8, v4}, Landroid/os/HwBlob;->putInt16(JS)V

    .line 200
    const-wide/16 v7, 0x2a

    add-long v7, p2, v7

    iget-short v4, v0, Landroid/hardware/wifi/V1_0/StaScanResult;->capability:S

    invoke-virtual {v1, v7, v8, v4}, Landroid/os/HwBlob;->putInt16(JS)V

    .line 202
    iget-object v4, v0, Landroid/hardware/wifi/V1_0/StaScanResult;->informationElements:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 203
    .restart local v4    # "_hidl_vec_size":I
    const-wide/16 v7, 0x30

    add-long v11, p2, v7

    add-long/2addr v11, v5

    invoke-virtual {v1, v11, v12, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 204
    add-long v5, p2, v7

    add-long/2addr v5, v9

    const/4 v9, 0x0

    invoke-virtual {v1, v5, v6, v9}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 205
    new-instance v5, Landroid/os/HwBlob;

    mul-int/lit8 v6, v4, 0x18

    invoke-direct {v5, v6}, Landroid/os/HwBlob;-><init>(I)V

    .line 206
    .local v5, "childBlob":Landroid/os/HwBlob;
    nop

    .local v9, "_hidl_index_0":I
    :goto_1
    move v6, v9

    .end local v9    # "_hidl_index_0":I
    .local v6, "_hidl_index_0":I
    if-ge v6, v4, :cond_1

    .line 207
    iget-object v9, v0, Landroid/hardware/wifi/V1_0/StaScanResult;->informationElements:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/hardware/wifi/V1_0/WifiInformationElement;

    mul-int/lit8 v10, v6, 0x18

    int-to-long v10, v10

    invoke-virtual {v9, v5, v10, v11}, Landroid/hardware/wifi/V1_0/WifiInformationElement;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 206
    add-int/lit8 v9, v6, 0x1

    .end local v6    # "_hidl_index_0":I
    .restart local v9    # "_hidl_index_0":I
    goto :goto_1

    .line 209
    .end local v9    # "_hidl_index_0":I
    :cond_1
    add-long v6, p2, v7

    add-long/2addr v6, v2

    invoke-virtual {v1, v6, v7, v5}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 211
    .end local v4    # "_hidl_vec_size":I
    .end local v5    # "childBlob":Landroid/os/HwBlob;
    return-void
.end method

.method public final writeToParcel(Landroid/os/HwParcel;)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 157
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 158
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/wifi/V1_0/StaScanResult;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 159
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 160
    return-void
.end method
