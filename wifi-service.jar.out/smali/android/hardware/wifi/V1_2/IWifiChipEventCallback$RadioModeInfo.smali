.class public final Landroid/hardware/wifi/V1_2/IWifiChipEventCallback$RadioModeInfo;
.super Ljava/lang/Object;
.source "IWifiChipEventCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/wifi/V1_2/IWifiChipEventCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RadioModeInfo"
.end annotation


# instance fields
.field public bandInfo:I

.field public final ifaceInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/hardware/wifi/V1_2/IWifiChipEventCallback$IfaceInfo;",
            ">;"
        }
    .end annotation
.end field

.field public radioId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 199
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/wifi/V1_2/IWifiChipEventCallback$RadioModeInfo;->ifaceInfos:Ljava/util/ArrayList;

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
            "Landroid/hardware/wifi/V1_2/IWifiChipEventCallback$RadioModeInfo;",
            ">;"
        }
    .end annotation

    .line 253
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 254
    .local v0, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/wifi/V1_2/IWifiChipEventCallback$RadioModeInfo;>;"
    const-wide/16 v1, 0x10

    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    .line 257
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v2, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    .line 258
    .local v2, "_hidl_vec_size":I
    mul-int/lit8 v3, v2, 0x18

    int-to-long v5, v3

    .line 259
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    .line 258
    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v3

    .line 262
    .local v3, "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 263
    const/4 v4, 0x0

    .local v4, "_hidl_index_0":I
    :goto_0
    if-ge v4, v2, :cond_0

    .line 264
    new-instance v5, Landroid/hardware/wifi/V1_2/IWifiChipEventCallback$RadioModeInfo;

    invoke-direct {v5}, Landroid/hardware/wifi/V1_2/IWifiChipEventCallback$RadioModeInfo;-><init>()V

    .line 265
    .local v5, "_hidl_vec_element":Landroid/hardware/wifi/V1_2/IWifiChipEventCallback$RadioModeInfo;
    mul-int/lit8 v6, v4, 0x18

    int-to-long v6, v6

    invoke-virtual {v5, p0, v3, v6, v7}, Landroid/hardware/wifi/V1_2/IWifiChipEventCallback$RadioModeInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 266
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 263
    .end local v5    # "_hidl_vec_element":Landroid/hardware/wifi/V1_2/IWifiChipEventCallback$RadioModeInfo;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 270
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
            "Landroid/hardware/wifi/V1_2/IWifiChipEventCallback$RadioModeInfo;",
            ">;)V"
        }
    .end annotation

    .line 300
    .local p1, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/wifi/V1_2/IWifiChipEventCallback$RadioModeInfo;>;"
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 302
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 303
    .local v1, "_hidl_vec_size":I
    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 304
    const/4 v2, 0x0

    const-wide/16 v3, 0xc

    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 305
    new-instance v3, Landroid/os/HwBlob;

    mul-int/lit8 v4, v1, 0x18

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 306
    .local v3, "childBlob":Landroid/os/HwBlob;
    nop

    .local v2, "_hidl_index_0":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 307
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/wifi/V1_2/IWifiChipEventCallback$RadioModeInfo;

    mul-int/lit8 v5, v2, 0x18

    int-to-long v5, v5

    invoke-virtual {v4, v3, v5, v6}, Landroid/hardware/wifi/V1_2/IWifiChipEventCallback$RadioModeInfo;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 306
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 309
    .end local v2    # "_hidl_index_0":I
    :cond_0
    const-wide/16 v4, 0x0

    invoke-virtual {v0, v4, v5, v3}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 312
    .end local v1    # "_hidl_vec_size":I
    .end local v3    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 313
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "otherObject"    # Ljava/lang/Object;

    .line 203
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 204
    return v0

    .line 206
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 207
    return v1

    .line 209
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/hardware/wifi/V1_2/IWifiChipEventCallback$RadioModeInfo;

    if-eq v2, v3, :cond_2

    .line 210
    return v1

    .line 212
    :cond_2
    move-object v2, p1

    check-cast v2, Landroid/hardware/wifi/V1_2/IWifiChipEventCallback$RadioModeInfo;

    .line 213
    .local v2, "other":Landroid/hardware/wifi/V1_2/IWifiChipEventCallback$RadioModeInfo;
    iget v3, p0, Landroid/hardware/wifi/V1_2/IWifiChipEventCallback$RadioModeInfo;->radioId:I

    iget v4, v2, Landroid/hardware/wifi/V1_2/IWifiChipEventCallback$RadioModeInfo;->radioId:I

    if-eq v3, v4, :cond_3

    .line 214
    return v1

    .line 216
    :cond_3
    iget v3, p0, Landroid/hardware/wifi/V1_2/IWifiChipEventCallback$RadioModeInfo;->bandInfo:I

    iget v4, v2, Landroid/hardware/wifi/V1_2/IWifiChipEventCallback$RadioModeInfo;->bandInfo:I

    if-eq v3, v4, :cond_4

    .line 217
    return v1

    .line 219
    :cond_4
    iget-object v3, p0, Landroid/hardware/wifi/V1_2/IWifiChipEventCallback$RadioModeInfo;->ifaceInfos:Ljava/util/ArrayList;

    iget-object v4, v2, Landroid/hardware/wifi/V1_2/IWifiChipEventCallback$RadioModeInfo;->ifaceInfos:Ljava/util/ArrayList;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 220
    return v1

    .line 222
    :cond_5
    return v0
.end method

.method public final hashCode()I
    .locals 3

    .line 227
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/hardware/wifi/V1_2/IWifiChipEventCallback$RadioModeInfo;->radioId:I

    .line 228
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/wifi/V1_2/IWifiChipEventCallback$RadioModeInfo;->bandInfo:I

    .line 229
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/wifi/V1_2/IWifiChipEventCallback$RadioModeInfo;->ifaceInfos:Ljava/util/ArrayList;

    .line 230
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 227
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

    move-object/from16 v1, p2

    .line 275
    const-wide/16 v2, 0x0

    add-long v4, p3, v2

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    iput v4, v0, Landroid/hardware/wifi/V1_2/IWifiChipEventCallback$RadioModeInfo;->radioId:I

    .line 276
    const-wide/16 v4, 0x4

    add-long v4, p3, v4

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    iput v4, v0, Landroid/hardware/wifi/V1_2/IWifiChipEventCallback$RadioModeInfo;->bandInfo:I

    .line 278
    const-wide/16 v4, 0x8

    add-long v6, p3, v4

    add-long/2addr v6, v4

    invoke-virtual {v1, v6, v7}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v6

    .line 279
    .local v6, "_hidl_vec_size":I
    mul-int/lit8 v7, v6, 0x18

    int-to-long v9, v7

    .line 280
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v11

    add-long v4, p3, v4

    add-long v13, v4, v2

    .line 279
    const/4 v15, 0x1

    move-object/from16 v8, p1

    invoke-virtual/range {v8 .. v15}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v2

    .line 283
    .local v2, "childBlob":Landroid/os/HwBlob;
    iget-object v3, v0, Landroid/hardware/wifi/V1_2/IWifiChipEventCallback$RadioModeInfo;->ifaceInfos:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 284
    const/4 v3, 0x0

    .local v3, "_hidl_index_0":I
    :goto_0
    if-ge v3, v6, :cond_0

    .line 285
    new-instance v4, Landroid/hardware/wifi/V1_2/IWifiChipEventCallback$IfaceInfo;

    invoke-direct {v4}, Landroid/hardware/wifi/V1_2/IWifiChipEventCallback$IfaceInfo;-><init>()V

    .line 286
    .local v4, "_hidl_vec_element":Landroid/hardware/wifi/V1_2/IWifiChipEventCallback$IfaceInfo;
    mul-int/lit8 v5, v3, 0x18

    int-to-long v7, v5

    move-object/from16 v5, p1

    invoke-virtual {v4, v5, v2, v7, v8}, Landroid/hardware/wifi/V1_2/IWifiChipEventCallback$IfaceInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 287
    iget-object v7, v0, Landroid/hardware/wifi/V1_2/IWifiChipEventCallback$RadioModeInfo;->ifaceInfos:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 284
    .end local v4    # "_hidl_vec_element":Landroid/hardware/wifi/V1_2/IWifiChipEventCallback$IfaceInfo;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 290
    .end local v2    # "childBlob":Landroid/os/HwBlob;
    .end local v3    # "_hidl_index_0":I
    .end local v6    # "_hidl_vec_size":I
    :cond_0
    move-object/from16 v5, p1

    return-void
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 248
    const-wide/16 v0, 0x18

    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 249
    .local v0, "blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/hardware/wifi/V1_2/IWifiChipEventCallback$RadioModeInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 250
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 235
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 236
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    const-string v1, ".radioId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    iget v1, p0, Landroid/hardware/wifi/V1_2/IWifiChipEventCallback$RadioModeInfo;->radioId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 239
    const-string v1, ", .bandInfo = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    iget v1, p0, Landroid/hardware/wifi/V1_2/IWifiChipEventCallback$RadioModeInfo;->bandInfo:I

    invoke-static {v1}, Landroid/hardware/wifi/V1_0/WifiBand;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    const-string v1, ", .ifaceInfos = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    iget-object v1, p0, Landroid/hardware/wifi/V1_2/IWifiChipEventCallback$RadioModeInfo;->ifaceInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 243
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .locals 10
    .param p1, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p2, "_hidl_offset"    # J

    .line 317
    const-wide/16 v0, 0x0

    add-long v2, p2, v0

    iget v4, p0, Landroid/hardware/wifi/V1_2/IWifiChipEventCallback$RadioModeInfo;->radioId:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 318
    const-wide/16 v2, 0x4

    add-long/2addr v2, p2

    iget v4, p0, Landroid/hardware/wifi/V1_2/IWifiChipEventCallback$RadioModeInfo;->bandInfo:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 320
    iget-object v2, p0, Landroid/hardware/wifi/V1_2/IWifiChipEventCallback$RadioModeInfo;->ifaceInfos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 321
    .local v2, "_hidl_vec_size":I
    const-wide/16 v3, 0x8

    add-long v5, p2, v3

    add-long/2addr v5, v3

    invoke-virtual {p1, v5, v6, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 322
    add-long v5, p2, v3

    const-wide/16 v7, 0xc

    add-long/2addr v5, v7

    const/4 v7, 0x0

    invoke-virtual {p1, v5, v6, v7}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 323
    new-instance v5, Landroid/os/HwBlob;

    mul-int/lit8 v6, v2, 0x18

    invoke-direct {v5, v6}, Landroid/os/HwBlob;-><init>(I)V

    .line 324
    .local v5, "childBlob":Landroid/os/HwBlob;
    nop

    .local v7, "_hidl_index_0":I
    :goto_0
    move v6, v7

    .end local v7    # "_hidl_index_0":I
    .local v6, "_hidl_index_0":I
    if-ge v6, v2, :cond_0

    .line 325
    iget-object v7, p0, Landroid/hardware/wifi/V1_2/IWifiChipEventCallback$RadioModeInfo;->ifaceInfos:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/wifi/V1_2/IWifiChipEventCallback$IfaceInfo;

    mul-int/lit8 v8, v6, 0x18

    int-to-long v8, v8

    invoke-virtual {v7, v5, v8, v9}, Landroid/hardware/wifi/V1_2/IWifiChipEventCallback$IfaceInfo;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 324
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "_hidl_index_0":I
    .restart local v7    # "_hidl_index_0":I
    goto :goto_0

    .line 327
    .end local v7    # "_hidl_index_0":I
    :cond_0
    add-long/2addr v3, p2

    add-long/2addr v3, v0

    invoke-virtual {p1, v3, v4, v5}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 329
    .end local v2    # "_hidl_vec_size":I
    .end local v5    # "childBlob":Landroid/os/HwBlob;
    return-void
.end method

.method public final writeToParcel(Landroid/os/HwParcel;)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 293
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x18

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 294
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/wifi/V1_2/IWifiChipEventCallback$RadioModeInfo;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 295
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 296
    return-void
.end method
