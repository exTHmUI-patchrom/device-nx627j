.class public final Landroid/hardware/radio/V1_2/SignalStrength;
.super Ljava/lang/Object;
.source "SignalStrength.java"


# instance fields
.field public final cdma:Landroid/hardware/radio/V1_0/CdmaSignalStrength;

.field public final evdo:Landroid/hardware/radio/V1_0/EvdoSignalStrength;

.field public final gsm:Landroid/hardware/radio/V1_0/GsmSignalStrength;

.field public final lte:Landroid/hardware/radio/V1_0/LteSignalStrength;

.field public final tdScdma:Landroid/hardware/radio/V1_0/TdScdmaSignalStrength;

.field public final wcdma:Landroid/hardware/radio/V1_2/WcdmaSignalStrength;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Landroid/hardware/radio/V1_0/GsmSignalStrength;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/GsmSignalStrength;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/V1_2/SignalStrength;->gsm:Landroid/hardware/radio/V1_0/GsmSignalStrength;

    .line 6
    new-instance v0, Landroid/hardware/radio/V1_0/CdmaSignalStrength;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/CdmaSignalStrength;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/V1_2/SignalStrength;->cdma:Landroid/hardware/radio/V1_0/CdmaSignalStrength;

    .line 7
    new-instance v0, Landroid/hardware/radio/V1_0/EvdoSignalStrength;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/EvdoSignalStrength;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/V1_2/SignalStrength;->evdo:Landroid/hardware/radio/V1_0/EvdoSignalStrength;

    .line 8
    new-instance v0, Landroid/hardware/radio/V1_0/LteSignalStrength;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/LteSignalStrength;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/V1_2/SignalStrength;->lte:Landroid/hardware/radio/V1_0/LteSignalStrength;

    .line 9
    new-instance v0, Landroid/hardware/radio/V1_0/TdScdmaSignalStrength;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/TdScdmaSignalStrength;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/V1_2/SignalStrength;->tdScdma:Landroid/hardware/radio/V1_0/TdScdmaSignalStrength;

    .line 10
    new-instance v0, Landroid/hardware/radio/V1_2/WcdmaSignalStrength;

    invoke-direct {v0}, Landroid/hardware/radio/V1_2/WcdmaSignalStrength;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/V1_2/SignalStrength;->wcdma:Landroid/hardware/radio/V1_2/WcdmaSignalStrength;

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
            "Landroid/hardware/radio/V1_2/SignalStrength;",
            ">;"
        }
    .end annotation

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 83
    .local v0, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_2/SignalStrength;>;"
    const-wide/16 v1, 0x10

    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    .line 86
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v2, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    .line 87
    .local v2, "_hidl_vec_size":I
    mul-int/lit8 v3, v2, 0x4c

    int-to-long v5, v3

    .line 88
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    .line 87
    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v3

    .line 91
    .local v3, "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 92
    const/4 v4, 0x0

    .local v4, "_hidl_index_0":I
    :goto_0
    if-ge v4, v2, :cond_0

    .line 93
    new-instance v5, Landroid/hardware/radio/V1_2/SignalStrength;

    invoke-direct {v5}, Landroid/hardware/radio/V1_2/SignalStrength;-><init>()V

    .line 94
    .local v5, "_hidl_vec_element":Landroid/hardware/radio/V1_2/SignalStrength;
    mul-int/lit8 v6, v4, 0x4c

    int-to-long v6, v6

    invoke-virtual {v5, p0, v3, v6, v7}, Landroid/hardware/radio/V1_2/SignalStrength;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 95
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    .end local v5    # "_hidl_vec_element":Landroid/hardware/radio/V1_2/SignalStrength;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 99
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
            "Landroid/hardware/radio/V1_2/SignalStrength;",
            ">;)V"
        }
    .end annotation

    .line 120
    .local p1, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_2/SignalStrength;>;"
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 122
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 123
    .local v1, "_hidl_vec_size":I
    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 124
    const/4 v2, 0x0

    const-wide/16 v3, 0xc

    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 125
    new-instance v3, Landroid/os/HwBlob;

    mul-int/lit8 v4, v1, 0x4c

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 126
    .local v3, "childBlob":Landroid/os/HwBlob;
    nop

    .local v2, "_hidl_index_0":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 127
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/radio/V1_2/SignalStrength;

    mul-int/lit8 v5, v2, 0x4c

    int-to-long v5, v5

    invoke-virtual {v4, v3, v5, v6}, Landroid/hardware/radio/V1_2/SignalStrength;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 126
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 129
    .end local v2    # "_hidl_index_0":I
    :cond_0
    const-wide/16 v4, 0x0

    invoke-virtual {v0, v4, v5, v3}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 132
    .end local v1    # "_hidl_vec_size":I
    .end local v3    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 133
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "otherObject"    # Ljava/lang/Object;

    .line 14
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 15
    return v0

    .line 17
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 18
    return v1

    .line 20
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/hardware/radio/V1_2/SignalStrength;

    if-eq v2, v3, :cond_2

    .line 21
    return v1

    .line 23
    :cond_2
    move-object v2, p1

    check-cast v2, Landroid/hardware/radio/V1_2/SignalStrength;

    .line 24
    .local v2, "other":Landroid/hardware/radio/V1_2/SignalStrength;
    iget-object v3, p0, Landroid/hardware/radio/V1_2/SignalStrength;->gsm:Landroid/hardware/radio/V1_0/GsmSignalStrength;

    iget-object v4, v2, Landroid/hardware/radio/V1_2/SignalStrength;->gsm:Landroid/hardware/radio/V1_0/GsmSignalStrength;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 25
    return v1

    .line 27
    :cond_3
    iget-object v3, p0, Landroid/hardware/radio/V1_2/SignalStrength;->cdma:Landroid/hardware/radio/V1_0/CdmaSignalStrength;

    iget-object v4, v2, Landroid/hardware/radio/V1_2/SignalStrength;->cdma:Landroid/hardware/radio/V1_0/CdmaSignalStrength;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 28
    return v1

    .line 30
    :cond_4
    iget-object v3, p0, Landroid/hardware/radio/V1_2/SignalStrength;->evdo:Landroid/hardware/radio/V1_0/EvdoSignalStrength;

    iget-object v4, v2, Landroid/hardware/radio/V1_2/SignalStrength;->evdo:Landroid/hardware/radio/V1_0/EvdoSignalStrength;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 31
    return v1

    .line 33
    :cond_5
    iget-object v3, p0, Landroid/hardware/radio/V1_2/SignalStrength;->lte:Landroid/hardware/radio/V1_0/LteSignalStrength;

    iget-object v4, v2, Landroid/hardware/radio/V1_2/SignalStrength;->lte:Landroid/hardware/radio/V1_0/LteSignalStrength;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 34
    return v1

    .line 36
    :cond_6
    iget-object v3, p0, Landroid/hardware/radio/V1_2/SignalStrength;->tdScdma:Landroid/hardware/radio/V1_0/TdScdmaSignalStrength;

    iget-object v4, v2, Landroid/hardware/radio/V1_2/SignalStrength;->tdScdma:Landroid/hardware/radio/V1_0/TdScdmaSignalStrength;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 37
    return v1

    .line 39
    :cond_7
    iget-object v3, p0, Landroid/hardware/radio/V1_2/SignalStrength;->wcdma:Landroid/hardware/radio/V1_2/WcdmaSignalStrength;

    iget-object v4, v2, Landroid/hardware/radio/V1_2/SignalStrength;->wcdma:Landroid/hardware/radio/V1_2/WcdmaSignalStrength;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 40
    return v1

    .line 42
    :cond_8
    return v0
.end method

.method public final hashCode()I
    .locals 3

    .line 47
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/hardware/radio/V1_2/SignalStrength;->gsm:Landroid/hardware/radio/V1_0/GsmSignalStrength;

    .line 48
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/radio/V1_2/SignalStrength;->cdma:Landroid/hardware/radio/V1_0/CdmaSignalStrength;

    .line 49
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/radio/V1_2/SignalStrength;->evdo:Landroid/hardware/radio/V1_0/EvdoSignalStrength;

    .line 50
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/radio/V1_2/SignalStrength;->lte:Landroid/hardware/radio/V1_0/LteSignalStrength;

    .line 51
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/radio/V1_2/SignalStrength;->tdScdma:Landroid/hardware/radio/V1_0/TdScdmaSignalStrength;

    .line 52
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/radio/V1_2/SignalStrength;->wcdma:Landroid/hardware/radio/V1_2/WcdmaSignalStrength;

    .line 53
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 47
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/HwParcel;
    .param p2, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p3, "_hidl_offset"    # J

    .line 104
    iget-object v0, p0, Landroid/hardware/radio/V1_2/SignalStrength;->gsm:Landroid/hardware/radio/V1_0/GsmSignalStrength;

    const-wide/16 v1, 0x0

    add-long/2addr v1, p3

    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/hardware/radio/V1_0/GsmSignalStrength;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 105
    iget-object v0, p0, Landroid/hardware/radio/V1_2/SignalStrength;->cdma:Landroid/hardware/radio/V1_0/CdmaSignalStrength;

    const-wide/16 v1, 0xc

    add-long/2addr v1, p3

    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/hardware/radio/V1_0/CdmaSignalStrength;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 106
    iget-object v0, p0, Landroid/hardware/radio/V1_2/SignalStrength;->evdo:Landroid/hardware/radio/V1_0/EvdoSignalStrength;

    const-wide/16 v1, 0x14

    add-long/2addr v1, p3

    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/hardware/radio/V1_0/EvdoSignalStrength;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 107
    iget-object v0, p0, Landroid/hardware/radio/V1_2/SignalStrength;->lte:Landroid/hardware/radio/V1_0/LteSignalStrength;

    const-wide/16 v1, 0x20

    add-long/2addr v1, p3

    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/hardware/radio/V1_0/LteSignalStrength;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 108
    iget-object v0, p0, Landroid/hardware/radio/V1_2/SignalStrength;->tdScdma:Landroid/hardware/radio/V1_0/TdScdmaSignalStrength;

    const-wide/16 v1, 0x38

    add-long/2addr v1, p3

    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/hardware/radio/V1_0/TdScdmaSignalStrength;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 109
    iget-object v0, p0, Landroid/hardware/radio/V1_2/SignalStrength;->wcdma:Landroid/hardware/radio/V1_2/WcdmaSignalStrength;

    const-wide/16 v1, 0x3c

    add-long/2addr v1, p3

    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/hardware/radio/V1_2/WcdmaSignalStrength;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 110
    return-void
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 77
    const-wide/16 v0, 0x4c

    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 78
    .local v0, "blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/hardware/radio/V1_2/SignalStrength;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 79
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    const-string v1, ".gsm = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    iget-object v1, p0, Landroid/hardware/radio/V1_2/SignalStrength;->gsm:Landroid/hardware/radio/V1_0/GsmSignalStrength;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 62
    const-string v1, ", .cdma = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    iget-object v1, p0, Landroid/hardware/radio/V1_2/SignalStrength;->cdma:Landroid/hardware/radio/V1_0/CdmaSignalStrength;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 64
    const-string v1, ", .evdo = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    iget-object v1, p0, Landroid/hardware/radio/V1_2/SignalStrength;->evdo:Landroid/hardware/radio/V1_0/EvdoSignalStrength;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 66
    const-string v1, ", .lte = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    iget-object v1, p0, Landroid/hardware/radio/V1_2/SignalStrength;->lte:Landroid/hardware/radio/V1_0/LteSignalStrength;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 68
    const-string v1, ", .tdScdma = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    iget-object v1, p0, Landroid/hardware/radio/V1_2/SignalStrength;->tdScdma:Landroid/hardware/radio/V1_0/TdScdmaSignalStrength;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 70
    const-string v1, ", .wcdma = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    iget-object v1, p0, Landroid/hardware/radio/V1_2/SignalStrength;->wcdma:Landroid/hardware/radio/V1_2/WcdmaSignalStrength;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 72
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .locals 3
    .param p1, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p2, "_hidl_offset"    # J

    .line 137
    iget-object v0, p0, Landroid/hardware/radio/V1_2/SignalStrength;->gsm:Landroid/hardware/radio/V1_0/GsmSignalStrength;

    const-wide/16 v1, 0x0

    add-long/2addr v1, p2

    invoke-virtual {v0, p1, v1, v2}, Landroid/hardware/radio/V1_0/GsmSignalStrength;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 138
    iget-object v0, p0, Landroid/hardware/radio/V1_2/SignalStrength;->cdma:Landroid/hardware/radio/V1_0/CdmaSignalStrength;

    const-wide/16 v1, 0xc

    add-long/2addr v1, p2

    invoke-virtual {v0, p1, v1, v2}, Landroid/hardware/radio/V1_0/CdmaSignalStrength;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 139
    iget-object v0, p0, Landroid/hardware/radio/V1_2/SignalStrength;->evdo:Landroid/hardware/radio/V1_0/EvdoSignalStrength;

    const-wide/16 v1, 0x14

    add-long/2addr v1, p2

    invoke-virtual {v0, p1, v1, v2}, Landroid/hardware/radio/V1_0/EvdoSignalStrength;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 140
    iget-object v0, p0, Landroid/hardware/radio/V1_2/SignalStrength;->lte:Landroid/hardware/radio/V1_0/LteSignalStrength;

    const-wide/16 v1, 0x20

    add-long/2addr v1, p2

    invoke-virtual {v0, p1, v1, v2}, Landroid/hardware/radio/V1_0/LteSignalStrength;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 141
    iget-object v0, p0, Landroid/hardware/radio/V1_2/SignalStrength;->tdScdma:Landroid/hardware/radio/V1_0/TdScdmaSignalStrength;

    const-wide/16 v1, 0x38

    add-long/2addr v1, p2

    invoke-virtual {v0, p1, v1, v2}, Landroid/hardware/radio/V1_0/TdScdmaSignalStrength;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 142
    iget-object v0, p0, Landroid/hardware/radio/V1_2/SignalStrength;->wcdma:Landroid/hardware/radio/V1_2/WcdmaSignalStrength;

    const-wide/16 v1, 0x3c

    add-long/2addr v1, p2

    invoke-virtual {v0, p1, v1, v2}, Landroid/hardware/radio/V1_2/WcdmaSignalStrength;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 143
    return-void
.end method

.method public final writeToParcel(Landroid/os/HwParcel;)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 113
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x4c

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 114
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/radio/V1_2/SignalStrength;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 115
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 116
    return-void
.end method
