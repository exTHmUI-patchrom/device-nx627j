.class public final Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$AnqpData;
.super Ljava/lang/Object;
.source "ISupplicantStaIfaceCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AnqpData"
.end annotation


# instance fields
.field public final anqp3gppCellularNetwork:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field public final domainName:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field public final ipAddrTypeAvailability:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field public final naiRealm:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field public final roamingConsortium:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field public final venueName:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 260
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 261
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$AnqpData;->venueName:Ljava/util/ArrayList;

    .line 262
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$AnqpData;->roamingConsortium:Ljava/util/ArrayList;

    .line 263
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$AnqpData;->ipAddrTypeAvailability:Ljava/util/ArrayList;

    .line 264
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$AnqpData;->naiRealm:Ljava/util/ArrayList;

    .line 265
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$AnqpData;->anqp3gppCellularNetwork:Ljava/util/ArrayList;

    .line 266
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$AnqpData;->domainName:Ljava/util/ArrayList;

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
            "Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$AnqpData;",
            ">;"
        }
    .end annotation

    .line 338
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 339
    .local v0, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$AnqpData;>;"
    const-wide/16 v1, 0x10

    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    .line 342
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v2, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    .line 343
    .local v2, "_hidl_vec_size":I
    mul-int/lit8 v3, v2, 0x60

    int-to-long v5, v3

    .line 344
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    .line 343
    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v3

    .line 347
    .local v3, "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 348
    const/4 v4, 0x0

    .local v4, "_hidl_index_0":I
    :goto_0
    if-ge v4, v2, :cond_0

    .line 349
    new-instance v5, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$AnqpData;

    invoke-direct {v5}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$AnqpData;-><init>()V

    .line 350
    .local v5, "_hidl_vec_element":Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$AnqpData;
    mul-int/lit8 v6, v4, 0x60

    int-to-long v6, v6

    invoke-virtual {v5, p0, v3, v6, v7}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$AnqpData;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 351
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 348
    .end local v5    # "_hidl_vec_element":Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$AnqpData;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 355
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
            "Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$AnqpData;",
            ">;)V"
        }
    .end annotation

    .line 448
    .local p1, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$AnqpData;>;"
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 450
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 451
    .local v1, "_hidl_vec_size":I
    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 452
    const/4 v2, 0x0

    const-wide/16 v3, 0xc

    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 453
    new-instance v3, Landroid/os/HwBlob;

    mul-int/lit8 v4, v1, 0x60

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 454
    .local v3, "childBlob":Landroid/os/HwBlob;
    nop

    .local v2, "_hidl_index_0":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 455
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$AnqpData;

    mul-int/lit8 v5, v2, 0x60

    int-to-long v5, v5

    invoke-virtual {v4, v3, v5, v6}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$AnqpData;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 454
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 457
    .end local v2    # "_hidl_index_0":I
    :cond_0
    const-wide/16 v4, 0x0

    invoke-virtual {v0, v4, v5, v3}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 460
    .end local v1    # "_hidl_vec_size":I
    .end local v3    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 461
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "otherObject"    # Ljava/lang/Object;

    .line 270
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 271
    return v0

    .line 273
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 274
    return v1

    .line 276
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$AnqpData;

    if-eq v2, v3, :cond_2

    .line 277
    return v1

    .line 279
    :cond_2
    move-object v2, p1

    check-cast v2, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$AnqpData;

    .line 280
    .local v2, "other":Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$AnqpData;
    iget-object v3, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$AnqpData;->venueName:Ljava/util/ArrayList;

    iget-object v4, v2, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$AnqpData;->venueName:Ljava/util/ArrayList;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 281
    return v1

    .line 283
    :cond_3
    iget-object v3, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$AnqpData;->roamingConsortium:Ljava/util/ArrayList;

    iget-object v4, v2, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$AnqpData;->roamingConsortium:Ljava/util/ArrayList;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 284
    return v1

    .line 286
    :cond_4
    iget-object v3, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$AnqpData;->ipAddrTypeAvailability:Ljava/util/ArrayList;

    iget-object v4, v2, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$AnqpData;->ipAddrTypeAvailability:Ljava/util/ArrayList;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 287
    return v1

    .line 289
    :cond_5
    iget-object v3, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$AnqpData;->naiRealm:Ljava/util/ArrayList;

    iget-object v4, v2, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$AnqpData;->naiRealm:Ljava/util/ArrayList;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 290
    return v1

    .line 292
    :cond_6
    iget-object v3, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$AnqpData;->anqp3gppCellularNetwork:Ljava/util/ArrayList;

    iget-object v4, v2, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$AnqpData;->anqp3gppCellularNetwork:Ljava/util/ArrayList;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 293
    return v1

    .line 295
    :cond_7
    iget-object v3, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$AnqpData;->domainName:Ljava/util/ArrayList;

    iget-object v4, v2, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$AnqpData;->domainName:Ljava/util/ArrayList;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 296
    return v1

    .line 298
    :cond_8
    return v0
.end method

.method public final hashCode()I
    .locals 3

    .line 303
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$AnqpData;->venueName:Ljava/util/ArrayList;

    .line 304
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$AnqpData;->roamingConsortium:Ljava/util/ArrayList;

    .line 305
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$AnqpData;->ipAddrTypeAvailability:Ljava/util/ArrayList;

    .line 306
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$AnqpData;->naiRealm:Ljava/util/ArrayList;

    .line 307
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$AnqpData;->anqp3gppCellularNetwork:Ljava/util/ArrayList;

    .line 308
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$AnqpData;->domainName:Ljava/util/ArrayList;

    .line 309
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 303
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .locals 19
    .param p1, "parcel"    # Landroid/os/HwParcel;
    .param p2, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p3, "_hidl_offset"    # J

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 361
    const-wide/16 v2, 0x0

    add-long v4, p3, v2

    const-wide/16 v6, 0x8

    add-long/2addr v4, v6

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    .line 362
    .local v4, "_hidl_vec_size":I
    mul-int/lit8 v5, v4, 0x1

    int-to-long v9, v5

    .line 363
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v11

    add-long v13, p3, v2

    add-long/2addr v13, v2

    .line 362
    const/4 v15, 0x1

    move-object/from16 v8, p1

    invoke-virtual/range {v8 .. v15}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v5

    .line 366
    .local v5, "childBlob":Landroid/os/HwBlob;
    iget-object v8, v0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$AnqpData;->venueName:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 367
    const/4 v8, 0x0

    move v9, v8

    .local v9, "_hidl_index_0":I
    :goto_0
    if-ge v9, v4, :cond_0

    .line 369
    mul-int/lit8 v10, v9, 0x1

    int-to-long v10, v10

    invoke-virtual {v5, v10, v11}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v10

    .line 370
    .local v10, "_hidl_vec_element":B
    iget-object v11, v0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$AnqpData;->venueName:Ljava/util/ArrayList;

    invoke-static {v10}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 367
    .end local v10    # "_hidl_vec_element":B
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 374
    .end local v4    # "_hidl_vec_size":I
    .end local v5    # "childBlob":Landroid/os/HwBlob;
    .end local v9    # "_hidl_index_0":I
    :cond_0
    const-wide/16 v4, 0x10

    add-long v9, p3, v4

    add-long/2addr v9, v6

    invoke-virtual {v1, v9, v10}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v9

    .line 375
    .local v9, "_hidl_vec_size":I
    mul-int/lit8 v10, v9, 0x1

    int-to-long v12, v10

    .line 376
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v14

    add-long v4, p3, v4

    add-long v16, v4, v2

    const/16 v18, 0x1

    .line 375
    move-object/from16 v11, p1

    invoke-virtual/range {v11 .. v18}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v4

    .line 379
    .local v4, "childBlob":Landroid/os/HwBlob;
    iget-object v5, v0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$AnqpData;->roamingConsortium:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 380
    move v5, v8

    .local v5, "_hidl_index_0":I
    :goto_1
    if-ge v5, v9, :cond_1

    .line 382
    mul-int/lit8 v10, v5, 0x1

    int-to-long v10, v10

    invoke-virtual {v4, v10, v11}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v10

    .line 383
    .restart local v10    # "_hidl_vec_element":B
    iget-object v11, v0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$AnqpData;->roamingConsortium:Ljava/util/ArrayList;

    invoke-static {v10}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 380
    .end local v10    # "_hidl_vec_element":B
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 387
    .end local v4    # "childBlob":Landroid/os/HwBlob;
    .end local v5    # "_hidl_index_0":I
    .end local v9    # "_hidl_vec_size":I
    :cond_1
    const-wide/16 v4, 0x20

    add-long v9, p3, v4

    add-long/2addr v9, v6

    invoke-virtual {v1, v9, v10}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v9

    .line 388
    .restart local v9    # "_hidl_vec_size":I
    mul-int/lit8 v10, v9, 0x1

    int-to-long v12, v10

    .line 389
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v14

    add-long v4, p3, v4

    add-long v16, v4, v2

    const/16 v18, 0x1

    .line 388
    move-object/from16 v11, p1

    invoke-virtual/range {v11 .. v18}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v4

    .line 392
    .restart local v4    # "childBlob":Landroid/os/HwBlob;
    iget-object v5, v0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$AnqpData;->ipAddrTypeAvailability:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 393
    move v5, v8

    .restart local v5    # "_hidl_index_0":I
    :goto_2
    if-ge v5, v9, :cond_2

    .line 395
    mul-int/lit8 v10, v5, 0x1

    int-to-long v10, v10

    invoke-virtual {v4, v10, v11}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v10

    .line 396
    .restart local v10    # "_hidl_vec_element":B
    iget-object v11, v0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$AnqpData;->ipAddrTypeAvailability:Ljava/util/ArrayList;

    invoke-static {v10}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 393
    .end local v10    # "_hidl_vec_element":B
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 400
    .end local v4    # "childBlob":Landroid/os/HwBlob;
    .end local v5    # "_hidl_index_0":I
    .end local v9    # "_hidl_vec_size":I
    :cond_2
    const-wide/16 v4, 0x30

    add-long v9, p3, v4

    add-long/2addr v9, v6

    invoke-virtual {v1, v9, v10}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v9

    .line 401
    .restart local v9    # "_hidl_vec_size":I
    mul-int/lit8 v10, v9, 0x1

    int-to-long v12, v10

    .line 402
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v14

    add-long v4, p3, v4

    add-long v16, v4, v2

    const/16 v18, 0x1

    .line 401
    move-object/from16 v11, p1

    invoke-virtual/range {v11 .. v18}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v4

    .line 405
    .restart local v4    # "childBlob":Landroid/os/HwBlob;
    iget-object v5, v0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$AnqpData;->naiRealm:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 406
    move v5, v8

    .restart local v5    # "_hidl_index_0":I
    :goto_3
    if-ge v5, v9, :cond_3

    .line 408
    mul-int/lit8 v10, v5, 0x1

    int-to-long v10, v10

    invoke-virtual {v4, v10, v11}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v10

    .line 409
    .restart local v10    # "_hidl_vec_element":B
    iget-object v11, v0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$AnqpData;->naiRealm:Ljava/util/ArrayList;

    invoke-static {v10}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 406
    .end local v10    # "_hidl_vec_element":B
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 413
    .end local v4    # "childBlob":Landroid/os/HwBlob;
    .end local v5    # "_hidl_index_0":I
    .end local v9    # "_hidl_vec_size":I
    :cond_3
    const-wide/16 v4, 0x40

    add-long v9, p3, v4

    add-long/2addr v9, v6

    invoke-virtual {v1, v9, v10}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v9

    .line 414
    .restart local v9    # "_hidl_vec_size":I
    mul-int/lit8 v10, v9, 0x1

    int-to-long v12, v10

    .line 415
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v14

    add-long v4, p3, v4

    add-long v16, v4, v2

    const/16 v18, 0x1

    .line 414
    move-object/from16 v11, p1

    invoke-virtual/range {v11 .. v18}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v4

    .line 418
    .restart local v4    # "childBlob":Landroid/os/HwBlob;
    iget-object v5, v0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$AnqpData;->anqp3gppCellularNetwork:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 419
    move v5, v8

    .restart local v5    # "_hidl_index_0":I
    :goto_4
    if-ge v5, v9, :cond_4

    .line 421
    mul-int/lit8 v10, v5, 0x1

    int-to-long v10, v10

    invoke-virtual {v4, v10, v11}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v10

    .line 422
    .restart local v10    # "_hidl_vec_element":B
    iget-object v11, v0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$AnqpData;->anqp3gppCellularNetwork:Ljava/util/ArrayList;

    invoke-static {v10}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 419
    .end local v10    # "_hidl_vec_element":B
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 426
    .end local v4    # "childBlob":Landroid/os/HwBlob;
    .end local v5    # "_hidl_index_0":I
    .end local v9    # "_hidl_vec_size":I
    :cond_4
    const-wide/16 v4, 0x50

    add-long v9, p3, v4

    add-long/2addr v9, v6

    invoke-virtual {v1, v9, v10}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v6

    .line 427
    .local v6, "_hidl_vec_size":I
    mul-int/lit8 v7, v6, 0x1

    int-to-long v10, v7

    .line 428
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v12

    add-long v4, p3, v4

    add-long v14, v4, v2

    const/16 v16, 0x1

    .line 427
    move-object/from16 v9, p1

    invoke-virtual/range {v9 .. v16}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v2

    .line 431
    .local v2, "childBlob":Landroid/os/HwBlob;
    iget-object v3, v0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$AnqpData;->domainName:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 432
    nop

    .local v8, "_hidl_index_0":I
    :goto_5
    move v3, v8

    .end local v8    # "_hidl_index_0":I
    .local v3, "_hidl_index_0":I
    if-ge v3, v6, :cond_5

    .line 434
    mul-int/lit8 v4, v3, 0x1

    int-to-long v4, v4

    invoke-virtual {v2, v4, v5}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v4

    .line 435
    .local v4, "_hidl_vec_element":B
    iget-object v5, v0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$AnqpData;->domainName:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 432
    .end local v4    # "_hidl_vec_element":B
    add-int/lit8 v8, v3, 0x1

    .end local v3    # "_hidl_index_0":I
    .restart local v8    # "_hidl_index_0":I
    goto :goto_5

    .line 438
    .end local v2    # "childBlob":Landroid/os/HwBlob;
    .end local v6    # "_hidl_vec_size":I
    .end local v8    # "_hidl_index_0":I
    :cond_5
    return-void
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 333
    const-wide/16 v0, 0x60

    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 334
    .local v0, "blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$AnqpData;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 335
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 314
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 315
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    const-string v1, ".venueName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    iget-object v1, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$AnqpData;->venueName:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 318
    const-string v1, ", .roamingConsortium = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    iget-object v1, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$AnqpData;->roamingConsortium:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 320
    const-string v1, ", .ipAddrTypeAvailability = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    iget-object v1, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$AnqpData;->ipAddrTypeAvailability:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 322
    const-string v1, ", .naiRealm = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    iget-object v1, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$AnqpData;->naiRealm:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 324
    const-string v1, ", .anqp3gppCellularNetwork = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    iget-object v1, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$AnqpData;->anqp3gppCellularNetwork:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 326
    const-string v1, ", .domainName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    iget-object v1, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$AnqpData;->domainName:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 328
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
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

    .line 466
    iget-object v2, v0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$AnqpData;->venueName:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 467
    .local v2, "_hidl_vec_size":I
    const-wide/16 v3, 0x0

    add-long v5, p2, v3

    const-wide/16 v7, 0x8

    add-long/2addr v5, v7

    invoke-virtual {v1, v5, v6, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 468
    add-long v5, p2, v3

    const-wide/16 v9, 0xc

    add-long/2addr v5, v9

    const/4 v11, 0x0

    invoke-virtual {v1, v5, v6, v11}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 469
    new-instance v5, Landroid/os/HwBlob;

    mul-int/lit8 v6, v2, 0x1

    invoke-direct {v5, v6}, Landroid/os/HwBlob;-><init>(I)V

    .line 470
    .local v5, "childBlob":Landroid/os/HwBlob;
    move v6, v11

    .local v6, "_hidl_index_0":I
    :goto_0
    if-ge v6, v2, :cond_0

    .line 471
    mul-int/lit8 v12, v6, 0x1

    int-to-long v12, v12

    iget-object v11, v0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$AnqpData;->venueName:Ljava/util/ArrayList;

    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Byte;

    invoke-virtual {v11}, Ljava/lang/Byte;->byteValue()B

    move-result v11

    invoke-virtual {v5, v12, v13, v11}, Landroid/os/HwBlob;->putInt8(JB)V

    .line 470
    add-int/lit8 v6, v6, 0x1

    const/4 v11, 0x0

    goto :goto_0

    .line 473
    .end local v6    # "_hidl_index_0":I
    :cond_0
    add-long v11, p2, v3

    add-long/2addr v11, v3

    invoke-virtual {v1, v11, v12, v5}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 476
    .end local v2    # "_hidl_vec_size":I
    .end local v5    # "childBlob":Landroid/os/HwBlob;
    iget-object v2, v0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$AnqpData;->roamingConsortium:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 477
    .restart local v2    # "_hidl_vec_size":I
    const-wide/16 v5, 0x10

    add-long v11, p2, v5

    add-long/2addr v11, v7

    invoke-virtual {v1, v11, v12, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 478
    add-long v11, p2, v5

    add-long/2addr v11, v9

    const/4 v13, 0x0

    invoke-virtual {v1, v11, v12, v13}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 479
    new-instance v11, Landroid/os/HwBlob;

    mul-int/lit8 v12, v2, 0x1

    invoke-direct {v11, v12}, Landroid/os/HwBlob;-><init>(I)V

    .line 480
    .local v11, "childBlob":Landroid/os/HwBlob;
    const/4 v12, 0x0

    .local v12, "_hidl_index_0":I
    :goto_1
    if-ge v12, v2, :cond_1

    .line 481
    mul-int/lit8 v13, v12, 0x1

    int-to-long v9, v13

    iget-object v13, v0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$AnqpData;->roamingConsortium:Ljava/util/ArrayList;

    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Byte;

    invoke-virtual {v13}, Ljava/lang/Byte;->byteValue()B

    move-result v13

    invoke-virtual {v11, v9, v10, v13}, Landroid/os/HwBlob;->putInt8(JB)V

    .line 480
    add-int/lit8 v12, v12, 0x1

    const-wide/16 v9, 0xc

    goto :goto_1

    .line 483
    .end local v12    # "_hidl_index_0":I
    :cond_1
    add-long v5, p2, v5

    add-long/2addr v5, v3

    invoke-virtual {v1, v5, v6, v11}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 486
    .end local v2    # "_hidl_vec_size":I
    .end local v11    # "childBlob":Landroid/os/HwBlob;
    iget-object v2, v0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$AnqpData;->ipAddrTypeAvailability:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 487
    .restart local v2    # "_hidl_vec_size":I
    const-wide/16 v5, 0x20

    add-long v9, p2, v5

    add-long/2addr v9, v7

    invoke-virtual {v1, v9, v10, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 488
    add-long v9, p2, v5

    const-wide/16 v11, 0xc

    add-long/2addr v9, v11

    const/4 v11, 0x0

    invoke-virtual {v1, v9, v10, v11}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 489
    new-instance v9, Landroid/os/HwBlob;

    mul-int/lit8 v10, v2, 0x1

    invoke-direct {v9, v10}, Landroid/os/HwBlob;-><init>(I)V

    .line 490
    .local v9, "childBlob":Landroid/os/HwBlob;
    const/4 v10, 0x0

    .local v10, "_hidl_index_0":I
    :goto_2
    if-ge v10, v2, :cond_2

    .line 491
    mul-int/lit8 v11, v10, 0x1

    int-to-long v11, v11

    iget-object v13, v0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$AnqpData;->ipAddrTypeAvailability:Ljava/util/ArrayList;

    invoke-virtual {v13, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Byte;

    invoke-virtual {v13}, Ljava/lang/Byte;->byteValue()B

    move-result v13

    invoke-virtual {v9, v11, v12, v13}, Landroid/os/HwBlob;->putInt8(JB)V

    .line 490
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 493
    .end local v10    # "_hidl_index_0":I
    :cond_2
    add-long v5, p2, v5

    add-long/2addr v5, v3

    invoke-virtual {v1, v5, v6, v9}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 496
    .end local v2    # "_hidl_vec_size":I
    .end local v9    # "childBlob":Landroid/os/HwBlob;
    iget-object v2, v0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$AnqpData;->naiRealm:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 497
    .restart local v2    # "_hidl_vec_size":I
    const-wide/16 v5, 0x30

    add-long v9, p2, v5

    add-long/2addr v9, v7

    invoke-virtual {v1, v9, v10, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 498
    add-long v9, p2, v5

    const-wide/16 v11, 0xc

    add-long/2addr v9, v11

    const/4 v11, 0x0

    invoke-virtual {v1, v9, v10, v11}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 499
    new-instance v9, Landroid/os/HwBlob;

    mul-int/lit8 v10, v2, 0x1

    invoke-direct {v9, v10}, Landroid/os/HwBlob;-><init>(I)V

    .line 500
    .restart local v9    # "childBlob":Landroid/os/HwBlob;
    const/4 v10, 0x0

    .restart local v10    # "_hidl_index_0":I
    :goto_3
    if-ge v10, v2, :cond_3

    .line 501
    mul-int/lit8 v11, v10, 0x1

    int-to-long v11, v11

    iget-object v13, v0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$AnqpData;->naiRealm:Ljava/util/ArrayList;

    invoke-virtual {v13, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Byte;

    invoke-virtual {v13}, Ljava/lang/Byte;->byteValue()B

    move-result v13

    invoke-virtual {v9, v11, v12, v13}, Landroid/os/HwBlob;->putInt8(JB)V

    .line 500
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 503
    .end local v10    # "_hidl_index_0":I
    :cond_3
    add-long v5, p2, v5

    add-long/2addr v5, v3

    invoke-virtual {v1, v5, v6, v9}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 506
    .end local v2    # "_hidl_vec_size":I
    .end local v9    # "childBlob":Landroid/os/HwBlob;
    iget-object v2, v0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$AnqpData;->anqp3gppCellularNetwork:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 507
    .restart local v2    # "_hidl_vec_size":I
    const-wide/16 v5, 0x40

    add-long v9, p2, v5

    add-long/2addr v9, v7

    invoke-virtual {v1, v9, v10, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 508
    add-long v9, p2, v5

    const-wide/16 v11, 0xc

    add-long/2addr v9, v11

    const/4 v11, 0x0

    invoke-virtual {v1, v9, v10, v11}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 509
    new-instance v9, Landroid/os/HwBlob;

    mul-int/lit8 v10, v2, 0x1

    invoke-direct {v9, v10}, Landroid/os/HwBlob;-><init>(I)V

    .line 510
    .restart local v9    # "childBlob":Landroid/os/HwBlob;
    const/4 v10, 0x0

    .restart local v10    # "_hidl_index_0":I
    :goto_4
    if-ge v10, v2, :cond_4

    .line 511
    mul-int/lit8 v11, v10, 0x1

    int-to-long v11, v11

    iget-object v13, v0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$AnqpData;->anqp3gppCellularNetwork:Ljava/util/ArrayList;

    invoke-virtual {v13, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Byte;

    invoke-virtual {v13}, Ljava/lang/Byte;->byteValue()B

    move-result v13

    invoke-virtual {v9, v11, v12, v13}, Landroid/os/HwBlob;->putInt8(JB)V

    .line 510
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 513
    .end local v10    # "_hidl_index_0":I
    :cond_4
    add-long v5, p2, v5

    add-long/2addr v5, v3

    invoke-virtual {v1, v5, v6, v9}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 516
    .end local v2    # "_hidl_vec_size":I
    .end local v9    # "childBlob":Landroid/os/HwBlob;
    iget-object v2, v0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$AnqpData;->domainName:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 517
    .restart local v2    # "_hidl_vec_size":I
    const-wide/16 v5, 0x50

    add-long v9, p2, v5

    add-long/2addr v9, v7

    invoke-virtual {v1, v9, v10, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 518
    add-long v7, p2, v5

    const-wide/16 v9, 0xc

    add-long/2addr v7, v9

    const/4 v13, 0x0

    invoke-virtual {v1, v7, v8, v13}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 519
    new-instance v7, Landroid/os/HwBlob;

    mul-int/lit8 v8, v2, 0x1

    invoke-direct {v7, v8}, Landroid/os/HwBlob;-><init>(I)V

    .line 520
    .local v7, "childBlob":Landroid/os/HwBlob;
    nop

    .local v13, "_hidl_index_0":I
    :goto_5
    move v8, v13

    .end local v13    # "_hidl_index_0":I
    .local v8, "_hidl_index_0":I
    if-ge v8, v2, :cond_5

    .line 521
    mul-int/lit8 v9, v8, 0x1

    int-to-long v9, v9

    iget-object v11, v0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$AnqpData;->domainName:Ljava/util/ArrayList;

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Byte;

    invoke-virtual {v11}, Ljava/lang/Byte;->byteValue()B

    move-result v11

    invoke-virtual {v7, v9, v10, v11}, Landroid/os/HwBlob;->putInt8(JB)V

    .line 520
    add-int/lit8 v13, v8, 0x1

    .end local v8    # "_hidl_index_0":I
    .restart local v13    # "_hidl_index_0":I
    goto :goto_5

    .line 523
    .end local v13    # "_hidl_index_0":I
    :cond_5
    add-long v5, p2, v5

    add-long/2addr v5, v3

    invoke-virtual {v1, v5, v6, v7}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 525
    .end local v2    # "_hidl_vec_size":I
    .end local v7    # "childBlob":Landroid/os/HwBlob;
    return-void
.end method

.method public final writeToParcel(Landroid/os/HwParcel;)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 441
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x60

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 442
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$AnqpData;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 443
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 444
    return-void
.end method
