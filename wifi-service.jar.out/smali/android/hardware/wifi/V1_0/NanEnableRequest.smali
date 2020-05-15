.class public final Landroid/hardware/wifi/V1_0/NanEnableRequest;
.super Ljava/lang/Object;
.source "NanEnableRequest.java"


# instance fields
.field public final configParams:Landroid/hardware/wifi/V1_0/NanConfigRequest;

.field public final debugConfigs:Landroid/hardware/wifi/V1_0/NanDebugConfig;

.field public hopCountMax:B

.field public final operateInBand:[Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/4 v0, 0x2

    new-array v0, v0, [Z

    iput-object v0, p0, Landroid/hardware/wifi/V1_0/NanEnableRequest;->operateInBand:[Z

    .line 17
    new-instance v0, Landroid/hardware/wifi/V1_0/NanConfigRequest;

    invoke-direct {v0}, Landroid/hardware/wifi/V1_0/NanConfigRequest;-><init>()V

    iput-object v0, p0, Landroid/hardware/wifi/V1_0/NanEnableRequest;->configParams:Landroid/hardware/wifi/V1_0/NanConfigRequest;

    .line 21
    new-instance v0, Landroid/hardware/wifi/V1_0/NanDebugConfig;

    invoke-direct {v0}, Landroid/hardware/wifi/V1_0/NanDebugConfig;-><init>()V

    iput-object v0, p0, Landroid/hardware/wifi/V1_0/NanEnableRequest;->debugConfigs:Landroid/hardware/wifi/V1_0/NanDebugConfig;

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
            "Landroid/hardware/wifi/V1_0/NanEnableRequest;",
            ">;"
        }
    .end annotation

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 82
    .local v0, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/wifi/V1_0/NanEnableRequest;>;"
    const-wide/16 v1, 0x10

    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    .line 85
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v2, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    .line 86
    .local v2, "_hidl_vec_size":I
    mul-int/lit8 v3, v2, 0x50

    int-to-long v5, v3

    .line 87
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    .line 86
    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v3

    .line 90
    .local v3, "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 91
    const/4 v4, 0x0

    .local v4, "_hidl_index_0":I
    :goto_0
    if-ge v4, v2, :cond_0

    .line 92
    new-instance v5, Landroid/hardware/wifi/V1_0/NanEnableRequest;

    invoke-direct {v5}, Landroid/hardware/wifi/V1_0/NanEnableRequest;-><init>()V

    .line 93
    .local v5, "_hidl_vec_element":Landroid/hardware/wifi/V1_0/NanEnableRequest;
    mul-int/lit8 v6, v4, 0x50

    int-to-long v6, v6

    invoke-virtual {v5, p0, v3, v6, v7}, Landroid/hardware/wifi/V1_0/NanEnableRequest;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 94
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    .end local v5    # "_hidl_vec_element":Landroid/hardware/wifi/V1_0/NanEnableRequest;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 98
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
            "Landroid/hardware/wifi/V1_0/NanEnableRequest;",
            ">;)V"
        }
    .end annotation

    .line 121
    .local p1, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/wifi/V1_0/NanEnableRequest;>;"
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

    mul-int/lit8 v4, v1, 0x50

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

    check-cast v4, Landroid/hardware/wifi/V1_0/NanEnableRequest;

    mul-int/lit8 v5, v2, 0x50

    int-to-long v5, v5

    invoke-virtual {v4, v3, v5, v6}, Landroid/hardware/wifi/V1_0/NanEnableRequest;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

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

    .line 25
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 26
    return v0

    .line 28
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 29
    return v1

    .line 31
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/hardware/wifi/V1_0/NanEnableRequest;

    if-eq v2, v3, :cond_2

    .line 32
    return v1

    .line 34
    :cond_2
    move-object v2, p1

    check-cast v2, Landroid/hardware/wifi/V1_0/NanEnableRequest;

    .line 35
    .local v2, "other":Landroid/hardware/wifi/V1_0/NanEnableRequest;
    iget-object v3, p0, Landroid/hardware/wifi/V1_0/NanEnableRequest;->operateInBand:[Z

    iget-object v4, v2, Landroid/hardware/wifi/V1_0/NanEnableRequest;->operateInBand:[Z

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 36
    return v1

    .line 38
    :cond_3
    iget-byte v3, p0, Landroid/hardware/wifi/V1_0/NanEnableRequest;->hopCountMax:B

    iget-byte v4, v2, Landroid/hardware/wifi/V1_0/NanEnableRequest;->hopCountMax:B

    if-eq v3, v4, :cond_4

    .line 39
    return v1

    .line 41
    :cond_4
    iget-object v3, p0, Landroid/hardware/wifi/V1_0/NanEnableRequest;->configParams:Landroid/hardware/wifi/V1_0/NanConfigRequest;

    iget-object v4, v2, Landroid/hardware/wifi/V1_0/NanEnableRequest;->configParams:Landroid/hardware/wifi/V1_0/NanConfigRequest;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 42
    return v1

    .line 44
    :cond_5
    iget-object v3, p0, Landroid/hardware/wifi/V1_0/NanEnableRequest;->debugConfigs:Landroid/hardware/wifi/V1_0/NanDebugConfig;

    iget-object v4, v2, Landroid/hardware/wifi/V1_0/NanEnableRequest;->debugConfigs:Landroid/hardware/wifi/V1_0/NanDebugConfig;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 45
    return v1

    .line 47
    :cond_6
    return v0
.end method

.method public final hashCode()I
    .locals 3

    .line 52
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/hardware/wifi/V1_0/NanEnableRequest;->operateInBand:[Z

    .line 53
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-byte v1, p0, Landroid/hardware/wifi/V1_0/NanEnableRequest;->hopCountMax:B

    .line 54
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/wifi/V1_0/NanEnableRequest;->configParams:Landroid/hardware/wifi/V1_0/NanConfigRequest;

    .line 55
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/wifi/V1_0/NanEnableRequest;->debugConfigs:Landroid/hardware/wifi/V1_0/NanDebugConfig;

    .line 56
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 52
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .locals 4
    .param p1, "parcel"    # Landroid/os/HwParcel;
    .param p2, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p3, "_hidl_offset"    # J

    .line 104
    const-wide/16 v0, 0x0

    add-long/2addr v0, p3

    .line 105
    .local v0, "_hidl_array_offset_0":J
    iget-object v2, p0, Landroid/hardware/wifi/V1_0/NanEnableRequest;->operateInBand:[Z

    const/4 v3, 0x2

    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/os/HwBlob;->copyToBoolArray(J[ZI)V

    .line 106
    nop

    .line 108
    .end local v0    # "_hidl_array_offset_0":J
    const-wide/16 v0, 0x2

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v0

    iput-byte v0, p0, Landroid/hardware/wifi/V1_0/NanEnableRequest;->hopCountMax:B

    .line 109
    iget-object v0, p0, Landroid/hardware/wifi/V1_0/NanEnableRequest;->configParams:Landroid/hardware/wifi/V1_0/NanConfigRequest;

    const-wide/16 v1, 0x4

    add-long/2addr v1, p3

    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/hardware/wifi/V1_0/NanConfigRequest;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 110
    iget-object v0, p0, Landroid/hardware/wifi/V1_0/NanEnableRequest;->debugConfigs:Landroid/hardware/wifi/V1_0/NanDebugConfig;

    const-wide/16 v1, 0x24

    add-long/2addr v1, p3

    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/hardware/wifi/V1_0/NanDebugConfig;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 111
    return-void
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 76
    const-wide/16 v0, 0x50

    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 77
    .local v0, "blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/hardware/wifi/V1_0/NanEnableRequest;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 78
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 62
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    const-string v1, ".operateInBand = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    iget-object v1, p0, Landroid/hardware/wifi/V1_0/NanEnableRequest;->operateInBand:[Z

    invoke-static {v1}, Ljava/util/Arrays;->toString([Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    const-string v1, ", .hopCountMax = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    iget-byte v1, p0, Landroid/hardware/wifi/V1_0/NanEnableRequest;->hopCountMax:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 67
    const-string v1, ", .configParams = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    iget-object v1, p0, Landroid/hardware/wifi/V1_0/NanEnableRequest;->configParams:Landroid/hardware/wifi/V1_0/NanConfigRequest;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 69
    const-string v1, ", .debugConfigs = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    iget-object v1, p0, Landroid/hardware/wifi/V1_0/NanEnableRequest;->debugConfigs:Landroid/hardware/wifi/V1_0/NanDebugConfig;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 71
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .locals 3
    .param p1, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p2, "_hidl_offset"    # J

    .line 139
    const-wide/16 v0, 0x0

    add-long/2addr v0, p2

    .line 140
    .local v0, "_hidl_array_offset_0":J
    iget-object v2, p0, Landroid/hardware/wifi/V1_0/NanEnableRequest;->operateInBand:[Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putBoolArray(J[Z)V

    .line 141
    nop

    .line 143
    .end local v0    # "_hidl_array_offset_0":J
    const-wide/16 v0, 0x2

    add-long/2addr v0, p2

    iget-byte v2, p0, Landroid/hardware/wifi/V1_0/NanEnableRequest;->hopCountMax:B

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt8(JB)V

    .line 144
    iget-object v0, p0, Landroid/hardware/wifi/V1_0/NanEnableRequest;->configParams:Landroid/hardware/wifi/V1_0/NanConfigRequest;

    const-wide/16 v1, 0x4

    add-long/2addr v1, p2

    invoke-virtual {v0, p1, v1, v2}, Landroid/hardware/wifi/V1_0/NanConfigRequest;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 145
    iget-object v0, p0, Landroid/hardware/wifi/V1_0/NanEnableRequest;->debugConfigs:Landroid/hardware/wifi/V1_0/NanDebugConfig;

    const-wide/16 v1, 0x24

    add-long/2addr v1, p2

    invoke-virtual {v0, p1, v1, v2}, Landroid/hardware/wifi/V1_0/NanDebugConfig;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 146
    return-void
.end method

.method public final writeToParcel(Landroid/os/HwParcel;)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 114
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 115
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/wifi/V1_0/NanEnableRequest;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 116
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 117
    return-void
.end method
