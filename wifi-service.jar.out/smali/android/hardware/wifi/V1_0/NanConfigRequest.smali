.class public final Landroid/hardware/wifi/V1_0/NanConfigRequest;
.super Ljava/lang/Object;
.source "NanConfigRequest.java"


# instance fields
.field public final bandSpecificConfig:[Landroid/hardware/wifi/V1_0/NanBandSpecificConfig;

.field public disableDiscoveryAddressChangeIndication:Z

.field public disableJoinedClusterIndication:Z

.field public disableStartedClusterIndication:Z

.field public includePublishServiceIdsInBeacon:Z

.field public includeSubscribeServiceIdsInBeacon:Z

.field public macAddressRandomizationIntervalSec:I

.field public masterPref:B

.field public numberOfPublishServiceIdsInBeacon:B

.field public numberOfSubscribeServiceIdsInBeacon:B

.field public rssiWindowSize:S


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/hardware/wifi/V1_0/NanBandSpecificConfig;

    iput-object v0, p0, Landroid/hardware/wifi/V1_0/NanConfigRequest;->bandSpecificConfig:[Landroid/hardware/wifi/V1_0/NanBandSpecificConfig;

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
            "Landroid/hardware/wifi/V1_0/NanConfigRequest;",
            ">;"
        }
    .end annotation

    .line 163
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 164
    .local v0, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/wifi/V1_0/NanConfigRequest;>;"
    const-wide/16 v1, 0x10

    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    .line 167
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v2, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    .line 168
    .local v2, "_hidl_vec_size":I
    mul-int/lit8 v3, v2, 0x20

    int-to-long v5, v3

    .line 169
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    .line 168
    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v3

    .line 172
    .local v3, "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 173
    const/4 v4, 0x0

    .local v4, "_hidl_index_0":I
    :goto_0
    if-ge v4, v2, :cond_0

    .line 174
    new-instance v5, Landroid/hardware/wifi/V1_0/NanConfigRequest;

    invoke-direct {v5}, Landroid/hardware/wifi/V1_0/NanConfigRequest;-><init>()V

    .line 175
    .local v5, "_hidl_vec_element":Landroid/hardware/wifi/V1_0/NanConfigRequest;
    mul-int/lit8 v6, v4, 0x20

    int-to-long v6, v6

    invoke-virtual {v5, p0, v3, v6, v7}, Landroid/hardware/wifi/V1_0/NanConfigRequest;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 176
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 173
    .end local v5    # "_hidl_vec_element":Landroid/hardware/wifi/V1_0/NanConfigRequest;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 180
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
            "Landroid/hardware/wifi/V1_0/NanConfigRequest;",
            ">;)V"
        }
    .end annotation

    .line 213
    .local p1, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/wifi/V1_0/NanConfigRequest;>;"
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 215
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 216
    .local v1, "_hidl_vec_size":I
    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 217
    const/4 v2, 0x0

    const-wide/16 v3, 0xc

    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 218
    new-instance v3, Landroid/os/HwBlob;

    mul-int/lit8 v4, v1, 0x20

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 219
    .local v3, "childBlob":Landroid/os/HwBlob;
    nop

    .local v2, "_hidl_index_0":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 220
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/wifi/V1_0/NanConfigRequest;

    mul-int/lit8 v5, v2, 0x20

    int-to-long v5, v5

    invoke-virtual {v4, v3, v5, v6}, Landroid/hardware/wifi/V1_0/NanConfigRequest;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 219
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 222
    .end local v2    # "_hidl_index_0":I
    :cond_0
    const-wide/16 v4, 0x0

    invoke-virtual {v0, v4, v5, v3}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 225
    .end local v1    # "_hidl_vec_size":I
    .end local v3    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 226
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

    const-class v3, Landroid/hardware/wifi/V1_0/NanConfigRequest;

    if-eq v2, v3, :cond_2

    .line 72
    return v1

    .line 74
    :cond_2
    move-object v2, p1

    check-cast v2, Landroid/hardware/wifi/V1_0/NanConfigRequest;

    .line 75
    .local v2, "other":Landroid/hardware/wifi/V1_0/NanConfigRequest;
    iget-byte v3, p0, Landroid/hardware/wifi/V1_0/NanConfigRequest;->masterPref:B

    iget-byte v4, v2, Landroid/hardware/wifi/V1_0/NanConfigRequest;->masterPref:B

    if-eq v3, v4, :cond_3

    .line 76
    return v1

    .line 78
    :cond_3
    iget-boolean v3, p0, Landroid/hardware/wifi/V1_0/NanConfigRequest;->disableDiscoveryAddressChangeIndication:Z

    iget-boolean v4, v2, Landroid/hardware/wifi/V1_0/NanConfigRequest;->disableDiscoveryAddressChangeIndication:Z

    if-eq v3, v4, :cond_4

    .line 79
    return v1

    .line 81
    :cond_4
    iget-boolean v3, p0, Landroid/hardware/wifi/V1_0/NanConfigRequest;->disableStartedClusterIndication:Z

    iget-boolean v4, v2, Landroid/hardware/wifi/V1_0/NanConfigRequest;->disableStartedClusterIndication:Z

    if-eq v3, v4, :cond_5

    .line 82
    return v1

    .line 84
    :cond_5
    iget-boolean v3, p0, Landroid/hardware/wifi/V1_0/NanConfigRequest;->disableJoinedClusterIndication:Z

    iget-boolean v4, v2, Landroid/hardware/wifi/V1_0/NanConfigRequest;->disableJoinedClusterIndication:Z

    if-eq v3, v4, :cond_6

    .line 85
    return v1

    .line 87
    :cond_6
    iget-boolean v3, p0, Landroid/hardware/wifi/V1_0/NanConfigRequest;->includePublishServiceIdsInBeacon:Z

    iget-boolean v4, v2, Landroid/hardware/wifi/V1_0/NanConfigRequest;->includePublishServiceIdsInBeacon:Z

    if-eq v3, v4, :cond_7

    .line 88
    return v1

    .line 90
    :cond_7
    iget-byte v3, p0, Landroid/hardware/wifi/V1_0/NanConfigRequest;->numberOfPublishServiceIdsInBeacon:B

    iget-byte v4, v2, Landroid/hardware/wifi/V1_0/NanConfigRequest;->numberOfPublishServiceIdsInBeacon:B

    if-eq v3, v4, :cond_8

    .line 91
    return v1

    .line 93
    :cond_8
    iget-boolean v3, p0, Landroid/hardware/wifi/V1_0/NanConfigRequest;->includeSubscribeServiceIdsInBeacon:Z

    iget-boolean v4, v2, Landroid/hardware/wifi/V1_0/NanConfigRequest;->includeSubscribeServiceIdsInBeacon:Z

    if-eq v3, v4, :cond_9

    .line 94
    return v1

    .line 96
    :cond_9
    iget-byte v3, p0, Landroid/hardware/wifi/V1_0/NanConfigRequest;->numberOfSubscribeServiceIdsInBeacon:B

    iget-byte v4, v2, Landroid/hardware/wifi/V1_0/NanConfigRequest;->numberOfSubscribeServiceIdsInBeacon:B

    if-eq v3, v4, :cond_a

    .line 97
    return v1

    .line 99
    :cond_a
    iget-short v3, p0, Landroid/hardware/wifi/V1_0/NanConfigRequest;->rssiWindowSize:S

    iget-short v4, v2, Landroid/hardware/wifi/V1_0/NanConfigRequest;->rssiWindowSize:S

    if-eq v3, v4, :cond_b

    .line 100
    return v1

    .line 102
    :cond_b
    iget v3, p0, Landroid/hardware/wifi/V1_0/NanConfigRequest;->macAddressRandomizationIntervalSec:I

    iget v4, v2, Landroid/hardware/wifi/V1_0/NanConfigRequest;->macAddressRandomizationIntervalSec:I

    if-eq v3, v4, :cond_c

    .line 103
    return v1

    .line 105
    :cond_c
    iget-object v3, p0, Landroid/hardware/wifi/V1_0/NanConfigRequest;->bandSpecificConfig:[Landroid/hardware/wifi/V1_0/NanBandSpecificConfig;

    iget-object v4, v2, Landroid/hardware/wifi/V1_0/NanConfigRequest;->bandSpecificConfig:[Landroid/hardware/wifi/V1_0/NanBandSpecificConfig;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    .line 106
    return v1

    .line 108
    :cond_d
    return v0
.end method

.method public final hashCode()I
    .locals 3

    .line 113
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/Object;

    iget-byte v1, p0, Landroid/hardware/wifi/V1_0/NanConfigRequest;->masterPref:B

    .line 114
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/hardware/wifi/V1_0/NanConfigRequest;->disableDiscoveryAddressChangeIndication:Z

    .line 115
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/hardware/wifi/V1_0/NanConfigRequest;->disableStartedClusterIndication:Z

    .line 116
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/hardware/wifi/V1_0/NanConfigRequest;->disableJoinedClusterIndication:Z

    .line 117
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/hardware/wifi/V1_0/NanConfigRequest;->includePublishServiceIdsInBeacon:Z

    .line 118
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-byte v1, p0, Landroid/hardware/wifi/V1_0/NanConfigRequest;->numberOfPublishServiceIdsInBeacon:B

    .line 119
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/hardware/wifi/V1_0/NanConfigRequest;->includeSubscribeServiceIdsInBeacon:Z

    .line 120
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-byte v1, p0, Landroid/hardware/wifi/V1_0/NanConfigRequest;->numberOfSubscribeServiceIdsInBeacon:B

    .line 121
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget-short v1, p0, Landroid/hardware/wifi/V1_0/NanConfigRequest;->rssiWindowSize:S

    .line 122
    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/wifi/V1_0/NanConfigRequest;->macAddressRandomizationIntervalSec:I

    .line 123
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/wifi/V1_0/NanConfigRequest;->bandSpecificConfig:[Landroid/hardware/wifi/V1_0/NanBandSpecificConfig;

    .line 124
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 113
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .locals 7
    .param p1, "parcel"    # Landroid/os/HwParcel;
    .param p2, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p3, "_hidl_offset"    # J

    .line 185
    const-wide/16 v0, 0x0

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v0

    iput-byte v0, p0, Landroid/hardware/wifi/V1_0/NanConfigRequest;->masterPref:B

    .line 186
    const-wide/16 v0, 0x1

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v0

    iput-boolean v0, p0, Landroid/hardware/wifi/V1_0/NanConfigRequest;->disableDiscoveryAddressChangeIndication:Z

    .line 187
    const-wide/16 v0, 0x2

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v0

    iput-boolean v0, p0, Landroid/hardware/wifi/V1_0/NanConfigRequest;->disableStartedClusterIndication:Z

    .line 188
    const-wide/16 v0, 0x3

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v0

    iput-boolean v0, p0, Landroid/hardware/wifi/V1_0/NanConfigRequest;->disableJoinedClusterIndication:Z

    .line 189
    const-wide/16 v0, 0x4

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v0

    iput-boolean v0, p0, Landroid/hardware/wifi/V1_0/NanConfigRequest;->includePublishServiceIdsInBeacon:Z

    .line 190
    const-wide/16 v0, 0x5

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v0

    iput-byte v0, p0, Landroid/hardware/wifi/V1_0/NanConfigRequest;->numberOfPublishServiceIdsInBeacon:B

    .line 191
    const-wide/16 v0, 0x6

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v0

    iput-boolean v0, p0, Landroid/hardware/wifi/V1_0/NanConfigRequest;->includeSubscribeServiceIdsInBeacon:Z

    .line 192
    const-wide/16 v0, 0x7

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v0

    iput-byte v0, p0, Landroid/hardware/wifi/V1_0/NanConfigRequest;->numberOfSubscribeServiceIdsInBeacon:B

    .line 193
    const-wide/16 v0, 0x8

    add-long v2, p3, v0

    invoke-virtual {p2, v2, v3}, Landroid/os/HwBlob;->getInt16(J)S

    move-result v2

    iput-short v2, p0, Landroid/hardware/wifi/V1_0/NanConfigRequest;->rssiWindowSize:S

    .line 194
    const-wide/16 v2, 0xc

    add-long/2addr v2, p3

    invoke-virtual {p2, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    iput v2, p0, Landroid/hardware/wifi/V1_0/NanConfigRequest;->macAddressRandomizationIntervalSec:I

    .line 196
    const-wide/16 v2, 0x10

    add-long/2addr v2, p3

    .line 197
    .local v2, "_hidl_array_offset_0":J
    const/4 v4, 0x0

    .local v4, "_hidl_index_0_0":I
    :goto_0
    const/4 v5, 0x2

    if-ge v4, v5, :cond_0

    .line 198
    iget-object v5, p0, Landroid/hardware/wifi/V1_0/NanConfigRequest;->bandSpecificConfig:[Landroid/hardware/wifi/V1_0/NanBandSpecificConfig;

    new-instance v6, Landroid/hardware/wifi/V1_0/NanBandSpecificConfig;

    invoke-direct {v6}, Landroid/hardware/wifi/V1_0/NanBandSpecificConfig;-><init>()V

    aput-object v6, v5, v4

    .line 199
    iget-object v5, p0, Landroid/hardware/wifi/V1_0/NanConfigRequest;->bandSpecificConfig:[Landroid/hardware/wifi/V1_0/NanBandSpecificConfig;

    aget-object v5, v5, v4

    invoke-virtual {v5, p1, p2, v2, v3}, Landroid/hardware/wifi/V1_0/NanBandSpecificConfig;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 200
    add-long/2addr v2, v0

    .line 197
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 203
    .end local v2    # "_hidl_array_offset_0":J
    .end local v4    # "_hidl_index_0_0":I
    :cond_0
    return-void
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 158
    const-wide/16 v0, 0x20

    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 159
    .local v0, "blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/hardware/wifi/V1_0/NanConfigRequest;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 160
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 130
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    const-string v1, ".masterPref = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    iget-byte v1, p0, Landroid/hardware/wifi/V1_0/NanConfigRequest;->masterPref:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 133
    const-string v1, ", .disableDiscoveryAddressChangeIndication = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    iget-boolean v1, p0, Landroid/hardware/wifi/V1_0/NanConfigRequest;->disableDiscoveryAddressChangeIndication:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 135
    const-string v1, ", .disableStartedClusterIndication = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    iget-boolean v1, p0, Landroid/hardware/wifi/V1_0/NanConfigRequest;->disableStartedClusterIndication:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 137
    const-string v1, ", .disableJoinedClusterIndication = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    iget-boolean v1, p0, Landroid/hardware/wifi/V1_0/NanConfigRequest;->disableJoinedClusterIndication:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 139
    const-string v1, ", .includePublishServiceIdsInBeacon = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    iget-boolean v1, p0, Landroid/hardware/wifi/V1_0/NanConfigRequest;->includePublishServiceIdsInBeacon:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 141
    const-string v1, ", .numberOfPublishServiceIdsInBeacon = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    iget-byte v1, p0, Landroid/hardware/wifi/V1_0/NanConfigRequest;->numberOfPublishServiceIdsInBeacon:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 143
    const-string v1, ", .includeSubscribeServiceIdsInBeacon = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    iget-boolean v1, p0, Landroid/hardware/wifi/V1_0/NanConfigRequest;->includeSubscribeServiceIdsInBeacon:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 145
    const-string v1, ", .numberOfSubscribeServiceIdsInBeacon = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    iget-byte v1, p0, Landroid/hardware/wifi/V1_0/NanConfigRequest;->numberOfSubscribeServiceIdsInBeacon:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 147
    const-string v1, ", .rssiWindowSize = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    iget-short v1, p0, Landroid/hardware/wifi/V1_0/NanConfigRequest;->rssiWindowSize:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 149
    const-string v1, ", .macAddressRandomizationIntervalSec = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    iget v1, p0, Landroid/hardware/wifi/V1_0/NanConfigRequest;->macAddressRandomizationIntervalSec:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 151
    const-string v1, ", .bandSpecificConfig = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    iget-object v1, p0, Landroid/hardware/wifi/V1_0/NanConfigRequest;->bandSpecificConfig:[Landroid/hardware/wifi/V1_0/NanBandSpecificConfig;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .locals 6
    .param p1, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p2, "_hidl_offset"    # J

    .line 230
    const-wide/16 v0, 0x0

    add-long/2addr v0, p2

    iget-byte v2, p0, Landroid/hardware/wifi/V1_0/NanConfigRequest;->masterPref:B

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt8(JB)V

    .line 231
    const-wide/16 v0, 0x1

    add-long/2addr v0, p2

    iget-boolean v2, p0, Landroid/hardware/wifi/V1_0/NanConfigRequest;->disableDiscoveryAddressChangeIndication:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 232
    const-wide/16 v0, 0x2

    add-long/2addr v0, p2

    iget-boolean v2, p0, Landroid/hardware/wifi/V1_0/NanConfigRequest;->disableStartedClusterIndication:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 233
    const-wide/16 v0, 0x3

    add-long/2addr v0, p2

    iget-boolean v2, p0, Landroid/hardware/wifi/V1_0/NanConfigRequest;->disableJoinedClusterIndication:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 234
    const-wide/16 v0, 0x4

    add-long/2addr v0, p2

    iget-boolean v2, p0, Landroid/hardware/wifi/V1_0/NanConfigRequest;->includePublishServiceIdsInBeacon:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 235
    const-wide/16 v0, 0x5

    add-long/2addr v0, p2

    iget-byte v2, p0, Landroid/hardware/wifi/V1_0/NanConfigRequest;->numberOfPublishServiceIdsInBeacon:B

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt8(JB)V

    .line 236
    const-wide/16 v0, 0x6

    add-long/2addr v0, p2

    iget-boolean v2, p0, Landroid/hardware/wifi/V1_0/NanConfigRequest;->includeSubscribeServiceIdsInBeacon:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 237
    const-wide/16 v0, 0x7

    add-long/2addr v0, p2

    iget-byte v2, p0, Landroid/hardware/wifi/V1_0/NanConfigRequest;->numberOfSubscribeServiceIdsInBeacon:B

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt8(JB)V

    .line 238
    const-wide/16 v0, 0x8

    add-long v2, p2, v0

    iget-short v4, p0, Landroid/hardware/wifi/V1_0/NanConfigRequest;->rssiWindowSize:S

    invoke-virtual {p1, v2, v3, v4}, Landroid/os/HwBlob;->putInt16(JS)V

    .line 239
    const-wide/16 v2, 0xc

    add-long/2addr v2, p2

    iget v4, p0, Landroid/hardware/wifi/V1_0/NanConfigRequest;->macAddressRandomizationIntervalSec:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 241
    const-wide/16 v2, 0x10

    add-long/2addr v2, p2

    .line 242
    .local v2, "_hidl_array_offset_0":J
    const/4 v4, 0x0

    .local v4, "_hidl_index_0_0":I
    :goto_0
    const/4 v5, 0x2

    if-ge v4, v5, :cond_0

    .line 243
    iget-object v5, p0, Landroid/hardware/wifi/V1_0/NanConfigRequest;->bandSpecificConfig:[Landroid/hardware/wifi/V1_0/NanBandSpecificConfig;

    aget-object v5, v5, v4

    invoke-virtual {v5, p1, v2, v3}, Landroid/hardware/wifi/V1_0/NanBandSpecificConfig;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 244
    add-long/2addr v2, v0

    .line 242
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 247
    .end local v2    # "_hidl_array_offset_0":J
    .end local v4    # "_hidl_index_0_0":I
    :cond_0
    return-void
.end method

.method public final writeToParcel(Landroid/os/HwParcel;)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 206
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 207
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/wifi/V1_0/NanConfigRequest;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 208
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 209
    return-void
.end method
