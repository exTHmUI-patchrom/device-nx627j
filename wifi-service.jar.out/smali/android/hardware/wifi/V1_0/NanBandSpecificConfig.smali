.class public final Landroid/hardware/wifi/V1_0/NanBandSpecificConfig;
.super Ljava/lang/Object;
.source "NanBandSpecificConfig.java"


# instance fields
.field public discoveryWindowIntervalVal:B

.field public dwellTimeMs:B

.field public rssiClose:B

.field public rssiCloseProximity:B

.field public rssiMiddle:B

.field public scanPeriodSec:S

.field public validDiscoveryWindowIntervalVal:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
            "Landroid/hardware/wifi/V1_0/NanBandSpecificConfig;",
            ">;"
        }
    .end annotation

    .line 118
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 119
    .local v0, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/wifi/V1_0/NanBandSpecificConfig;>;"
    const-wide/16 v1, 0x10

    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    .line 122
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v2, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    .line 123
    .local v2, "_hidl_vec_size":I
    mul-int/lit8 v3, v2, 0x8

    int-to-long v5, v3

    .line 124
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    .line 123
    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v3

    .line 127
    .local v3, "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 128
    const/4 v4, 0x0

    .local v4, "_hidl_index_0":I
    :goto_0
    if-ge v4, v2, :cond_0

    .line 129
    new-instance v5, Landroid/hardware/wifi/V1_0/NanBandSpecificConfig;

    invoke-direct {v5}, Landroid/hardware/wifi/V1_0/NanBandSpecificConfig;-><init>()V

    .line 130
    .local v5, "_hidl_vec_element":Landroid/hardware/wifi/V1_0/NanBandSpecificConfig;
    mul-int/lit8 v6, v4, 0x8

    int-to-long v6, v6

    invoke-virtual {v5, p0, v3, v6, v7}, Landroid/hardware/wifi/V1_0/NanBandSpecificConfig;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 131
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    .end local v5    # "_hidl_vec_element":Landroid/hardware/wifi/V1_0/NanBandSpecificConfig;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 135
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
            "Landroid/hardware/wifi/V1_0/NanBandSpecificConfig;",
            ">;)V"
        }
    .end annotation

    .line 157
    .local p1, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/wifi/V1_0/NanBandSpecificConfig;>;"
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 159
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 160
    .local v1, "_hidl_vec_size":I
    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 161
    const/4 v2, 0x0

    const-wide/16 v3, 0xc

    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 162
    new-instance v3, Landroid/os/HwBlob;

    mul-int/lit8 v4, v1, 0x8

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 163
    .local v3, "childBlob":Landroid/os/HwBlob;
    nop

    .local v2, "_hidl_index_0":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 164
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/wifi/V1_0/NanBandSpecificConfig;

    mul-int/lit8 v5, v2, 0x8

    int-to-long v5, v5

    invoke-virtual {v4, v3, v5, v6}, Landroid/hardware/wifi/V1_0/NanBandSpecificConfig;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 163
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 166
    .end local v2    # "_hidl_index_0":I
    :cond_0
    const-wide/16 v4, 0x0

    invoke-virtual {v0, v4, v5, v3}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 169
    .end local v1    # "_hidl_vec_size":I
    .end local v3    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 170
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "otherObject"    # Ljava/lang/Object;

    .line 44
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 45
    return v0

    .line 47
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 48
    return v1

    .line 50
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/hardware/wifi/V1_0/NanBandSpecificConfig;

    if-eq v2, v3, :cond_2

    .line 51
    return v1

    .line 53
    :cond_2
    move-object v2, p1

    check-cast v2, Landroid/hardware/wifi/V1_0/NanBandSpecificConfig;

    .line 54
    .local v2, "other":Landroid/hardware/wifi/V1_0/NanBandSpecificConfig;
    iget-byte v3, p0, Landroid/hardware/wifi/V1_0/NanBandSpecificConfig;->rssiClose:B

    iget-byte v4, v2, Landroid/hardware/wifi/V1_0/NanBandSpecificConfig;->rssiClose:B

    if-eq v3, v4, :cond_3

    .line 55
    return v1

    .line 57
    :cond_3
    iget-byte v3, p0, Landroid/hardware/wifi/V1_0/NanBandSpecificConfig;->rssiMiddle:B

    iget-byte v4, v2, Landroid/hardware/wifi/V1_0/NanBandSpecificConfig;->rssiMiddle:B

    if-eq v3, v4, :cond_4

    .line 58
    return v1

    .line 60
    :cond_4
    iget-byte v3, p0, Landroid/hardware/wifi/V1_0/NanBandSpecificConfig;->rssiCloseProximity:B

    iget-byte v4, v2, Landroid/hardware/wifi/V1_0/NanBandSpecificConfig;->rssiCloseProximity:B

    if-eq v3, v4, :cond_5

    .line 61
    return v1

    .line 63
    :cond_5
    iget-byte v3, p0, Landroid/hardware/wifi/V1_0/NanBandSpecificConfig;->dwellTimeMs:B

    iget-byte v4, v2, Landroid/hardware/wifi/V1_0/NanBandSpecificConfig;->dwellTimeMs:B

    if-eq v3, v4, :cond_6

    .line 64
    return v1

    .line 66
    :cond_6
    iget-short v3, p0, Landroid/hardware/wifi/V1_0/NanBandSpecificConfig;->scanPeriodSec:S

    iget-short v4, v2, Landroid/hardware/wifi/V1_0/NanBandSpecificConfig;->scanPeriodSec:S

    if-eq v3, v4, :cond_7

    .line 67
    return v1

    .line 69
    :cond_7
    iget-boolean v3, p0, Landroid/hardware/wifi/V1_0/NanBandSpecificConfig;->validDiscoveryWindowIntervalVal:Z

    iget-boolean v4, v2, Landroid/hardware/wifi/V1_0/NanBandSpecificConfig;->validDiscoveryWindowIntervalVal:Z

    if-eq v3, v4, :cond_8

    .line 70
    return v1

    .line 72
    :cond_8
    iget-byte v3, p0, Landroid/hardware/wifi/V1_0/NanBandSpecificConfig;->discoveryWindowIntervalVal:B

    iget-byte v4, v2, Landroid/hardware/wifi/V1_0/NanBandSpecificConfig;->discoveryWindowIntervalVal:B

    if-eq v3, v4, :cond_9

    .line 73
    return v1

    .line 75
    :cond_9
    return v0
.end method

.method public final hashCode()I
    .locals 3

    .line 80
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    iget-byte v1, p0, Landroid/hardware/wifi/V1_0/NanBandSpecificConfig;->rssiClose:B

    .line 81
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-byte v1, p0, Landroid/hardware/wifi/V1_0/NanBandSpecificConfig;->rssiMiddle:B

    .line 82
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-byte v1, p0, Landroid/hardware/wifi/V1_0/NanBandSpecificConfig;->rssiCloseProximity:B

    .line 83
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-byte v1, p0, Landroid/hardware/wifi/V1_0/NanBandSpecificConfig;->dwellTimeMs:B

    .line 84
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-short v1, p0, Landroid/hardware/wifi/V1_0/NanBandSpecificConfig;->scanPeriodSec:S

    .line 85
    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/hardware/wifi/V1_0/NanBandSpecificConfig;->validDiscoveryWindowIntervalVal:Z

    .line 86
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-byte v1, p0, Landroid/hardware/wifi/V1_0/NanBandSpecificConfig;->discoveryWindowIntervalVal:B

    .line 87
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 80
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .locals 2
    .param p1, "parcel"    # Landroid/os/HwParcel;
    .param p2, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p3, "_hidl_offset"    # J

    .line 140
    const-wide/16 v0, 0x0

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v0

    iput-byte v0, p0, Landroid/hardware/wifi/V1_0/NanBandSpecificConfig;->rssiClose:B

    .line 141
    const-wide/16 v0, 0x1

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v0

    iput-byte v0, p0, Landroid/hardware/wifi/V1_0/NanBandSpecificConfig;->rssiMiddle:B

    .line 142
    const-wide/16 v0, 0x2

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v0

    iput-byte v0, p0, Landroid/hardware/wifi/V1_0/NanBandSpecificConfig;->rssiCloseProximity:B

    .line 143
    const-wide/16 v0, 0x3

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v0

    iput-byte v0, p0, Landroid/hardware/wifi/V1_0/NanBandSpecificConfig;->dwellTimeMs:B

    .line 144
    const-wide/16 v0, 0x4

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt16(J)S

    move-result v0

    iput-short v0, p0, Landroid/hardware/wifi/V1_0/NanBandSpecificConfig;->scanPeriodSec:S

    .line 145
    const-wide/16 v0, 0x6

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v0

    iput-boolean v0, p0, Landroid/hardware/wifi/V1_0/NanBandSpecificConfig;->validDiscoveryWindowIntervalVal:Z

    .line 146
    const-wide/16 v0, 0x7

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v0

    iput-byte v0, p0, Landroid/hardware/wifi/V1_0/NanBandSpecificConfig;->discoveryWindowIntervalVal:B

    .line 147
    return-void
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 113
    const-wide/16 v0, 0x8

    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 114
    .local v0, "blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/hardware/wifi/V1_0/NanBandSpecificConfig;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 115
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
    const-string v1, ".rssiClose = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    iget-byte v1, p0, Landroid/hardware/wifi/V1_0/NanBandSpecificConfig;->rssiClose:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 96
    const-string v1, ", .rssiMiddle = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    iget-byte v1, p0, Landroid/hardware/wifi/V1_0/NanBandSpecificConfig;->rssiMiddle:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 98
    const-string v1, ", .rssiCloseProximity = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    iget-byte v1, p0, Landroid/hardware/wifi/V1_0/NanBandSpecificConfig;->rssiCloseProximity:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 100
    const-string v1, ", .dwellTimeMs = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    iget-byte v1, p0, Landroid/hardware/wifi/V1_0/NanBandSpecificConfig;->dwellTimeMs:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 102
    const-string v1, ", .scanPeriodSec = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    iget-short v1, p0, Landroid/hardware/wifi/V1_0/NanBandSpecificConfig;->scanPeriodSec:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 104
    const-string v1, ", .validDiscoveryWindowIntervalVal = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    iget-boolean v1, p0, Landroid/hardware/wifi/V1_0/NanBandSpecificConfig;->validDiscoveryWindowIntervalVal:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 106
    const-string v1, ", .discoveryWindowIntervalVal = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    iget-byte v1, p0, Landroid/hardware/wifi/V1_0/NanBandSpecificConfig;->discoveryWindowIntervalVal:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 108
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .locals 3
    .param p1, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p2, "_hidl_offset"    # J

    .line 174
    const-wide/16 v0, 0x0

    add-long/2addr v0, p2

    iget-byte v2, p0, Landroid/hardware/wifi/V1_0/NanBandSpecificConfig;->rssiClose:B

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt8(JB)V

    .line 175
    const-wide/16 v0, 0x1

    add-long/2addr v0, p2

    iget-byte v2, p0, Landroid/hardware/wifi/V1_0/NanBandSpecificConfig;->rssiMiddle:B

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt8(JB)V

    .line 176
    const-wide/16 v0, 0x2

    add-long/2addr v0, p2

    iget-byte v2, p0, Landroid/hardware/wifi/V1_0/NanBandSpecificConfig;->rssiCloseProximity:B

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt8(JB)V

    .line 177
    const-wide/16 v0, 0x3

    add-long/2addr v0, p2

    iget-byte v2, p0, Landroid/hardware/wifi/V1_0/NanBandSpecificConfig;->dwellTimeMs:B

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt8(JB)V

    .line 178
    const-wide/16 v0, 0x4

    add-long/2addr v0, p2

    iget-short v2, p0, Landroid/hardware/wifi/V1_0/NanBandSpecificConfig;->scanPeriodSec:S

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt16(JS)V

    .line 179
    const-wide/16 v0, 0x6

    add-long/2addr v0, p2

    iget-boolean v2, p0, Landroid/hardware/wifi/V1_0/NanBandSpecificConfig;->validDiscoveryWindowIntervalVal:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 180
    const-wide/16 v0, 0x7

    add-long/2addr v0, p2

    iget-byte v2, p0, Landroid/hardware/wifi/V1_0/NanBandSpecificConfig;->discoveryWindowIntervalVal:B

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt8(JB)V

    .line 181
    return-void
.end method

.method public final writeToParcel(Landroid/os/HwParcel;)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 150
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 151
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/wifi/V1_0/NanBandSpecificConfig;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 152
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 153
    return-void
.end method
