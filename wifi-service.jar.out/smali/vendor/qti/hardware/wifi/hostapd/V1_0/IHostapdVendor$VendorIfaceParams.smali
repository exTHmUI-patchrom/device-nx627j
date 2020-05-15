.class public final Lvendor/qti/hardware/wifi/hostapd/V1_0/IHostapdVendor$VendorIfaceParams;
.super Ljava/lang/Object;
.source "IHostapdVendor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/qti/hardware/wifi/hostapd/V1_0/IHostapdVendor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "VendorIfaceParams"
.end annotation


# instance fields
.field public bridgeIfaceName:Ljava/lang/String;

.field public countryCode:Ljava/lang/String;

.field public final ifaceParams:Landroid/hardware/wifi/hostapd/V1_0/IHostapd$IfaceParams;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lvendor/qti/hardware/wifi/hostapd/V1_0/IHostapdVendor$VendorIfaceParams;->countryCode:Ljava/lang/String;

    .line 69
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lvendor/qti/hardware/wifi/hostapd/V1_0/IHostapdVendor$VendorIfaceParams;->bridgeIfaceName:Ljava/lang/String;

    .line 72
    new-instance v0, Landroid/hardware/wifi/hostapd/V1_0/IHostapd$IfaceParams;

    invoke-direct {v0}, Landroid/hardware/wifi/hostapd/V1_0/IHostapd$IfaceParams;-><init>()V

    iput-object v0, p0, Lvendor/qti/hardware/wifi/hostapd/V1_0/IHostapdVendor$VendorIfaceParams;->ifaceParams:Landroid/hardware/wifi/hostapd/V1_0/IHostapd$IfaceParams;

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
            "Lvendor/qti/hardware/wifi/hostapd/V1_0/IHostapdVendor$VendorIfaceParams;",
            ">;"
        }
    .end annotation

    .line 126
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 127
    .local v0, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/hardware/wifi/hostapd/V1_0/IHostapdVendor$VendorIfaceParams;>;"
    const-wide/16 v1, 0x10

    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    .line 130
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v2, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    .line 131
    .local v2, "_hidl_vec_size":I
    mul-int/lit8 v3, v2, 0x40

    int-to-long v5, v3

    .line 132
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    .line 131
    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v3

    .line 135
    .local v3, "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 136
    const/4 v4, 0x0

    .local v4, "_hidl_index_0":I
    :goto_0
    if-ge v4, v2, :cond_0

    .line 137
    new-instance v5, Lvendor/qti/hardware/wifi/hostapd/V1_0/IHostapdVendor$VendorIfaceParams;

    invoke-direct {v5}, Lvendor/qti/hardware/wifi/hostapd/V1_0/IHostapdVendor$VendorIfaceParams;-><init>()V

    .line 138
    .local v5, "_hidl_vec_element":Lvendor/qti/hardware/wifi/hostapd/V1_0/IHostapdVendor$VendorIfaceParams;
    mul-int/lit8 v6, v4, 0x40

    int-to-long v6, v6

    invoke-virtual {v5, p0, v3, v6, v7}, Lvendor/qti/hardware/wifi/hostapd/V1_0/IHostapdVendor$VendorIfaceParams;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 139
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    .end local v5    # "_hidl_vec_element":Lvendor/qti/hardware/wifi/hostapd/V1_0/IHostapdVendor$VendorIfaceParams;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 143
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
            "Lvendor/qti/hardware/wifi/hostapd/V1_0/IHostapdVendor$VendorIfaceParams;",
            ">;)V"
        }
    .end annotation

    .line 173
    .local p1, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/hardware/wifi/hostapd/V1_0/IHostapdVendor$VendorIfaceParams;>;"
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 175
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 176
    .local v1, "_hidl_vec_size":I
    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 177
    const/4 v2, 0x0

    const-wide/16 v3, 0xc

    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 178
    new-instance v3, Landroid/os/HwBlob;

    mul-int/lit8 v4, v1, 0x40

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 179
    .local v3, "childBlob":Landroid/os/HwBlob;
    nop

    .local v2, "_hidl_index_0":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 180
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lvendor/qti/hardware/wifi/hostapd/V1_0/IHostapdVendor$VendorIfaceParams;

    mul-int/lit8 v5, v2, 0x40

    int-to-long v5, v5

    invoke-virtual {v4, v3, v5, v6}, Lvendor/qti/hardware/wifi/hostapd/V1_0/IHostapdVendor$VendorIfaceParams;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 179
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 182
    .end local v2    # "_hidl_index_0":I
    :cond_0
    const-wide/16 v4, 0x0

    invoke-virtual {v0, v4, v5, v3}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 185
    .end local v1    # "_hidl_vec_size":I
    .end local v3    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 186
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "otherObject"    # Ljava/lang/Object;

    .line 76
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 77
    return v0

    .line 79
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 80
    return v1

    .line 82
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lvendor/qti/hardware/wifi/hostapd/V1_0/IHostapdVendor$VendorIfaceParams;

    if-eq v2, v3, :cond_2

    .line 83
    return v1

    .line 85
    :cond_2
    move-object v2, p1

    check-cast v2, Lvendor/qti/hardware/wifi/hostapd/V1_0/IHostapdVendor$VendorIfaceParams;

    .line 86
    .local v2, "other":Lvendor/qti/hardware/wifi/hostapd/V1_0/IHostapdVendor$VendorIfaceParams;
    iget-object v3, p0, Lvendor/qti/hardware/wifi/hostapd/V1_0/IHostapdVendor$VendorIfaceParams;->countryCode:Ljava/lang/String;

    iget-object v4, v2, Lvendor/qti/hardware/wifi/hostapd/V1_0/IHostapdVendor$VendorIfaceParams;->countryCode:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 87
    return v1

    .line 89
    :cond_3
    iget-object v3, p0, Lvendor/qti/hardware/wifi/hostapd/V1_0/IHostapdVendor$VendorIfaceParams;->bridgeIfaceName:Ljava/lang/String;

    iget-object v4, v2, Lvendor/qti/hardware/wifi/hostapd/V1_0/IHostapdVendor$VendorIfaceParams;->bridgeIfaceName:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 90
    return v1

    .line 92
    :cond_4
    iget-object v3, p0, Lvendor/qti/hardware/wifi/hostapd/V1_0/IHostapdVendor$VendorIfaceParams;->ifaceParams:Landroid/hardware/wifi/hostapd/V1_0/IHostapd$IfaceParams;

    iget-object v4, v2, Lvendor/qti/hardware/wifi/hostapd/V1_0/IHostapdVendor$VendorIfaceParams;->ifaceParams:Landroid/hardware/wifi/hostapd/V1_0/IHostapd$IfaceParams;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 93
    return v1

    .line 95
    :cond_5
    return v0
.end method

.method public final hashCode()I
    .locals 3

    .line 100
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lvendor/qti/hardware/wifi/hostapd/V1_0/IHostapdVendor$VendorIfaceParams;->countryCode:Ljava/lang/String;

    .line 101
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lvendor/qti/hardware/wifi/hostapd/V1_0/IHostapdVendor$VendorIfaceParams;->bridgeIfaceName:Ljava/lang/String;

    .line 102
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lvendor/qti/hardware/wifi/hostapd/V1_0/IHostapdVendor$VendorIfaceParams;->ifaceParams:Landroid/hardware/wifi/hostapd/V1_0/IHostapd$IfaceParams;

    .line 103
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 100
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

    .line 148
    const-wide/16 v2, 0x0

    add-long v4, p3, v2

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lvendor/qti/hardware/wifi/hostapd/V1_0/IHostapdVendor$VendorIfaceParams;->countryCode:Ljava/lang/String;

    .line 150
    iget-object v4, v0, Lvendor/qti/hardware/wifi/hostapd/V1_0/IHostapdVendor$VendorIfaceParams;->countryCode:Ljava/lang/String;

    .line 151
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    array-length v4, v4

    add-int/lit8 v4, v4, 0x1

    int-to-long v6, v4

    .line 152
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v8

    add-long v4, p3, v2

    add-long v10, v4, v2

    .line 150
    const/4 v12, 0x0

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v12}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 155
    const-wide/16 v4, 0x10

    add-long v6, p3, v4

    invoke-virtual {v1, v6, v7}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lvendor/qti/hardware/wifi/hostapd/V1_0/IHostapdVendor$VendorIfaceParams;->bridgeIfaceName:Ljava/lang/String;

    .line 157
    iget-object v6, v0, Lvendor/qti/hardware/wifi/hostapd/V1_0/IHostapdVendor$VendorIfaceParams;->bridgeIfaceName:Ljava/lang/String;

    .line 158
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    array-length v6, v6

    add-int/lit8 v6, v6, 0x1

    int-to-long v8, v6

    .line 159
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v10

    add-long v4, p3, v4

    add-long v12, v4, v2

    .line 157
    const/4 v14, 0x0

    move-object/from16 v7, p1

    invoke-virtual/range {v7 .. v14}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 162
    iget-object v2, v0, Lvendor/qti/hardware/wifi/hostapd/V1_0/IHostapdVendor$VendorIfaceParams;->ifaceParams:Landroid/hardware/wifi/hostapd/V1_0/IHostapd$IfaceParams;

    const-wide/16 v3, 0x20

    add-long v3, p3, v3

    move-object/from16 v5, p1

    invoke-virtual {v2, v5, v1, v3, v4}, Landroid/hardware/wifi/hostapd/V1_0/IHostapd$IfaceParams;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 163
    return-void
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 121
    const-wide/16 v0, 0x40

    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 122
    .local v0, "blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lvendor/qti/hardware/wifi/hostapd/V1_0/IHostapdVendor$VendorIfaceParams;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 123
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 109
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    const-string v1, ".countryCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    iget-object v1, p0, Lvendor/qti/hardware/wifi/hostapd/V1_0/IHostapdVendor$VendorIfaceParams;->countryCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    const-string v1, ", .bridgeIfaceName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    iget-object v1, p0, Lvendor/qti/hardware/wifi/hostapd/V1_0/IHostapdVendor$VendorIfaceParams;->bridgeIfaceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    const-string v1, ", .ifaceParams = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    iget-object v1, p0, Lvendor/qti/hardware/wifi/hostapd/V1_0/IHostapdVendor$VendorIfaceParams;->ifaceParams:Landroid/hardware/wifi/hostapd/V1_0/IHostapd$IfaceParams;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 116
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .locals 3
    .param p1, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p2, "_hidl_offset"    # J

    .line 190
    const-wide/16 v0, 0x0

    add-long/2addr v0, p2

    iget-object v2, p0, Lvendor/qti/hardware/wifi/hostapd/V1_0/IHostapdVendor$VendorIfaceParams;->countryCode:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    .line 191
    const-wide/16 v0, 0x10

    add-long/2addr v0, p2

    iget-object v2, p0, Lvendor/qti/hardware/wifi/hostapd/V1_0/IHostapdVendor$VendorIfaceParams;->bridgeIfaceName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    .line 192
    iget-object v0, p0, Lvendor/qti/hardware/wifi/hostapd/V1_0/IHostapdVendor$VendorIfaceParams;->ifaceParams:Landroid/hardware/wifi/hostapd/V1_0/IHostapd$IfaceParams;

    const-wide/16 v1, 0x20

    add-long/2addr v1, p2

    invoke-virtual {v0, p1, v1, v2}, Landroid/hardware/wifi/hostapd/V1_0/IHostapd$IfaceParams;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 193
    return-void
.end method

.method public final writeToParcel(Landroid/os/HwParcel;)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 166
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 167
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lvendor/qti/hardware/wifi/hostapd/V1_0/IHostapdVendor$VendorIfaceParams;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 168
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 169
    return-void
.end method
