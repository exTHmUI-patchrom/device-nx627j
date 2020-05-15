.class public final Landroid/bluetooth/le/ScanRecord;
.super Ljava/lang/Object;
.source "ScanRecord.java"


# static fields
.field private static final DATA_TYPE_FLAGS:I = 0x1

.field private static final DATA_TYPE_LOCAL_NAME_COMPLETE:I = 0x9

.field private static final DATA_TYPE_LOCAL_NAME_SHORT:I = 0x8

.field private static final DATA_TYPE_MANUFACTURER_SPECIFIC_DATA:I = 0xff

.field private static final DATA_TYPE_SERVICE_DATA_128_BIT:I = 0x21

.field private static final DATA_TYPE_SERVICE_DATA_16_BIT:I = 0x16

.field private static final DATA_TYPE_SERVICE_DATA_32_BIT:I = 0x20

.field private static final DATA_TYPE_SERVICE_SOLICITATION_UUIDS_128_BIT:I = 0x15

.field private static final DATA_TYPE_SERVICE_SOLICITATION_UUIDS_16_BIT:I = 0x14

.field private static final DATA_TYPE_SERVICE_SOLICITATION_UUIDS_32_BIT:I = 0x1f

.field private static final DATA_TYPE_SERVICE_UUIDS_128_BIT_COMPLETE:I = 0x7

.field private static final DATA_TYPE_SERVICE_UUIDS_128_BIT_PARTIAL:I = 0x6

.field private static final DATA_TYPE_SERVICE_UUIDS_16_BIT_COMPLETE:I = 0x3

.field private static final DATA_TYPE_SERVICE_UUIDS_16_BIT_PARTIAL:I = 0x2

.field private static final DATA_TYPE_SERVICE_UUIDS_32_BIT_COMPLETE:I = 0x5

.field private static final DATA_TYPE_SERVICE_UUIDS_32_BIT_PARTIAL:I = 0x4

.field private static final DATA_TYPE_TX_POWER_LEVEL:I = 0xa

.field private static final TAG:Ljava/lang/String; = "ScanRecord"


# instance fields
.field private final mAdvertiseFlags:I

.field private final mBytes:[B

.field private final mDeviceName:Ljava/lang/String;

.field private final mManufacturerSpecificData:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "[B>;"
        }
    .end annotation
.end field

.field private final mServiceData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/os/ParcelUuid;",
            "[B>;"
        }
    .end annotation
.end field

.field private final mServiceSolicitationUuids:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/os/ParcelUuid;",
            ">;"
        }
    .end annotation
.end field

.field private final mServiceUuids:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/os/ParcelUuid;",
            ">;"
        }
    .end annotation
.end field

.field private final mTxPowerLevel:I


# direct methods
.method private constructor <init>(Ljava/util/List;Ljava/util/List;Landroid/util/SparseArray;Ljava/util/Map;IILjava/lang/String;[B)V
    .locals 0
    .param p5, "advertiseFlags"    # I
    .param p6, "txPowerLevel"    # I
    .param p7, "localName"    # Ljava/lang/String;
    .param p8, "bytes"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/ParcelUuid;",
            ">;",
            "Ljava/util/List<",
            "Landroid/os/ParcelUuid;",
            ">;",
            "Landroid/util/SparseArray<",
            "[B>;",
            "Ljava/util/Map<",
            "Landroid/os/ParcelUuid;",
            "[B>;II",
            "Ljava/lang/String;",
            "[B)V"
        }
    .end annotation

    .line 171
    .local p1, "serviceUuids":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelUuid;>;"
    .local p2, "serviceSolicitationUuids":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelUuid;>;"
    .local p3, "manufacturerData":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[B>;"
    .local p4, "serviceData":Ljava/util/Map;, "Ljava/util/Map<Landroid/os/ParcelUuid;[B>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    iput-object p2, p0, Landroid/bluetooth/le/ScanRecord;->mServiceSolicitationUuids:Ljava/util/List;

    .line 173
    iput-object p1, p0, Landroid/bluetooth/le/ScanRecord;->mServiceUuids:Ljava/util/List;

    .line 174
    iput-object p3, p0, Landroid/bluetooth/le/ScanRecord;->mManufacturerSpecificData:Landroid/util/SparseArray;

    .line 175
    iput-object p4, p0, Landroid/bluetooth/le/ScanRecord;->mServiceData:Ljava/util/Map;

    .line 176
    iput-object p7, p0, Landroid/bluetooth/le/ScanRecord;->mDeviceName:Ljava/lang/String;

    .line 177
    iput p5, p0, Landroid/bluetooth/le/ScanRecord;->mAdvertiseFlags:I

    .line 178
    iput p6, p0, Landroid/bluetooth/le/ScanRecord;->mTxPowerLevel:I

    .line 179
    iput-object p8, p0, Landroid/bluetooth/le/ScanRecord;->mBytes:[B

    .line 180
    return-void
.end method

.method private static extractBytes([BII)[B
    .locals 2
    .param p0, "scanRecord"    # [B
    .param p1, "start"    # I
    .param p2, "length"    # I

    .line 348
    new-array v0, p2, [B

    .line 349
    .local v0, "bytes":[B
    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 350
    return-object v0
.end method

.method public static parseFromBytes([B)Landroid/bluetooth/le/ScanRecord;
    .locals 20
    .param p0, "scanRecord"    # [B

    .line 194
    move-object/from16 v10, p0

    if-nez v10, :cond_0

    .line 195
    const/4 v0, 0x0

    return-object v0

    .line 198
    :cond_0
    const/4 v0, 0x0

    .line 199
    .local v0, "currentPos":I
    const/4 v1, -0x1

    .line 200
    .local v1, "advertiseFlag":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 201
    .local v2, "serviceUuids":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelUuid;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 202
    .local v3, "serviceSolicitationUuids":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelUuid;>;"
    const/4 v4, 0x0

    .line 203
    .local v4, "localName":Ljava/lang/String;
    const/high16 v5, -0x80000000

    .line 205
    .local v5, "txPowerLevel":I
    new-instance v6, Landroid/util/SparseArray;

    invoke-direct {v6}, Landroid/util/SparseArray;-><init>()V

    move-object v11, v6

    .line 206
    .local v11, "manufacturerData":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[B>;"
    new-instance v6, Landroid/util/ArrayMap;

    invoke-direct {v6}, Landroid/util/ArrayMap;-><init>()V

    move v12, v1

    move-object v14, v4

    move v13, v5

    move v1, v0

    .line 206
    .end local v0    # "currentPos":I
    .end local v4    # "localName":Ljava/lang/String;
    .end local v5    # "txPowerLevel":I
    .local v1, "currentPos":I
    .local v6, "serviceData":Ljava/util/Map;, "Ljava/util/Map<Landroid/os/ParcelUuid;[B>;"
    .local v12, "advertiseFlag":I
    .local v13, "txPowerLevel":I
    .local v14, "localName":Ljava/lang/String;
    :goto_0
    move-object v15, v6

    .line 209
    .end local v6    # "serviceData":Ljava/util/Map;, "Ljava/util/Map<Landroid/os/ParcelUuid;[B>;"
    .local v15, "serviceData":Ljava/util/Map;, "Ljava/util/Map<Landroid/os/ParcelUuid;[B>;"
    :try_start_0
    array-length v0, v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    if-ge v1, v0, :cond_5

    .line 211
    add-int/lit8 v4, v1, 0x1

    .line 211
    .local v4, "currentPos":I
    :try_start_1
    aget-byte v0, v10, v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 211
    .end local v1    # "currentPos":I
    const/16 v1, 0xff

    and-int/2addr v0, v1

    .line 212
    .local v0, "length":I
    if-nez v0, :cond_1

    .line 213
    nop

    .line 292
    move/from16 v16, v4

    goto/16 :goto_4

    .line 216
    :cond_1
    add-int/lit8 v5, v0, -0x1

    .line 218
    .local v5, "dataLength":I
    add-int/lit8 v6, v4, 0x1

    .line 218
    .local v6, "currentPos":I
    :try_start_2
    aget-byte v4, v10, v4

    .line 218
    .end local v4    # "currentPos":I
    and-int/2addr v4, v1

    .line 219
    .local v4, "fieldType":I
    if-eq v4, v1, :cond_4

    const/16 v7, 0x10

    const/4 v8, 0x4

    const/4 v9, 0x2

    packed-switch v4, :pswitch_data_0

    packed-switch v4, :pswitch_data_1

    packed-switch v4, :pswitch_data_2

    .line 289
    .end local v0    # "length":I
    .local v16, "length":I
    :goto_1
    move/from16 v16, v0

    goto/16 :goto_3

    .line 243
    .end local v16    # "length":I
    .restart local v0    # "length":I
    :pswitch_0
    invoke-static {v10, v6, v5, v8, v3}, Landroid/bluetooth/le/ScanRecord;->parseServiceSolicitationUuid([BIIILjava/util/List;)I

    .line 245
    goto :goto_1

    .line 261
    :pswitch_1
    const/4 v1, 0x2

    .line 262
    .local v1, "serviceUuidLength":I
    const/16 v7, 0x20

    if-ne v4, v7, :cond_2

    .line 263
    const/4 v1, 0x4

    goto :goto_2

    .line 264
    :cond_2
    const/16 v7, 0x21

    if-ne v4, v7, :cond_3

    .line 265
    const/16 v1, 0x10

    .line 268
    :cond_3
    :goto_2
    invoke-static {v10, v6, v1}, Landroid/bluetooth/le/ScanRecord;->extractBytes([BII)[B

    move-result-object v7

    .line 270
    .local v7, "serviceDataUuidBytes":[B
    invoke-static {v7}, Landroid/bluetooth/BluetoothUuid;->parseUuidFrom([B)Landroid/os/ParcelUuid;

    move-result-object v8

    .line 272
    .local v8, "serviceDataUuid":Landroid/os/ParcelUuid;
    add-int v9, v6, v1

    move/from16 v16, v0

    sub-int v0, v5, v1

    .line 272
    .end local v0    # "length":I
    .restart local v16    # "length":I
    invoke-static {v10, v9, v0}, Landroid/bluetooth/le/ScanRecord;->extractBytes([BII)[B

    move-result-object v0

    .line 274
    .local v0, "serviceDataArray":[B
    invoke-interface {v15, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    goto :goto_3

    .line 247
    .end local v1    # "serviceUuidLength":I
    .end local v7    # "serviceDataUuidBytes":[B
    .end local v8    # "serviceDataUuid":Landroid/os/ParcelUuid;
    .end local v16    # "length":I
    .local v0, "length":I
    :pswitch_2
    move/from16 v16, v0

    .line 247
    .end local v0    # "length":I
    .restart local v16    # "length":I
    invoke-static {v10, v6, v5, v7, v3}, Landroid/bluetooth/le/ScanRecord;->parseServiceSolicitationUuid([BIIILjava/util/List;)I

    .line 249
    goto :goto_3

    .line 239
    .end local v16    # "length":I
    .restart local v0    # "length":I
    :pswitch_3
    move/from16 v16, v0

    .line 239
    .end local v0    # "length":I
    .restart local v16    # "length":I
    invoke-static {v10, v6, v5, v9, v3}, Landroid/bluetooth/le/ScanRecord;->parseServiceSolicitationUuid([BIIILjava/util/List;)I

    .line 241
    goto :goto_3

    .line 256
    .end local v16    # "length":I
    .restart local v0    # "length":I
    :pswitch_4
    move/from16 v16, v0

    .line 256
    .end local v0    # "length":I
    .restart local v16    # "length":I
    aget-byte v0, v10, v6

    move v13, v0

    .line 257
    goto :goto_3

    .line 252
    .end local v16    # "length":I
    .restart local v0    # "length":I
    :pswitch_5
    move/from16 v16, v0

    .line 252
    .end local v0    # "length":I
    .restart local v16    # "length":I
    new-instance v0, Ljava/lang/String;

    .line 253
    invoke-static {v10, v6, v5}, Landroid/bluetooth/le/ScanRecord;->extractBytes([BII)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    move-object v14, v0

    .line 254
    goto :goto_3

    .line 235
    .end local v16    # "length":I
    .restart local v0    # "length":I
    :pswitch_6
    move/from16 v16, v0

    .line 235
    .end local v0    # "length":I
    .restart local v16    # "length":I
    invoke-static {v10, v6, v5, v7, v2}, Landroid/bluetooth/le/ScanRecord;->parseServiceUuid([BIIILjava/util/List;)I

    .line 237
    goto :goto_3

    .line 230
    .end local v16    # "length":I
    .restart local v0    # "length":I
    :pswitch_7
    move/from16 v16, v0

    .line 230
    .end local v0    # "length":I
    .restart local v16    # "length":I
    invoke-static {v10, v6, v5, v8, v2}, Landroid/bluetooth/le/ScanRecord;->parseServiceUuid([BIIILjava/util/List;)I

    .line 232
    goto :goto_3

    .line 225
    .end local v16    # "length":I
    .restart local v0    # "length":I
    :pswitch_8
    move/from16 v16, v0

    .line 225
    .end local v0    # "length":I
    .restart local v16    # "length":I
    invoke-static {v10, v6, v5, v9, v2}, Landroid/bluetooth/le/ScanRecord;->parseServiceUuid([BIIILjava/util/List;)I

    .line 227
    goto :goto_3

    .line 221
    .end local v16    # "length":I
    .restart local v0    # "length":I
    :pswitch_9
    move/from16 v16, v0

    .line 221
    .end local v0    # "length":I
    .restart local v16    # "length":I
    aget-byte v0, v10, v6

    and-int/lit16 v12, v0, 0xff

    .line 222
    goto :goto_3

    .line 279
    .end local v16    # "length":I
    .restart local v0    # "length":I
    :cond_4
    move/from16 v16, v0

    .line 279
    .end local v0    # "length":I
    .restart local v16    # "length":I
    add-int/lit8 v0, v6, 0x1

    aget-byte v0, v10, v0

    and-int/2addr v0, v1

    shl-int/lit8 v0, v0, 0x8

    aget-byte v7, v10, v6

    and-int/2addr v1, v7

    add-int/2addr v0, v1

    .line 281
    .local v0, "manufacturerId":I
    add-int/lit8 v1, v6, 0x2

    add-int/lit8 v7, v5, -0x2

    invoke-static {v10, v1, v7}, Landroid/bluetooth/le/ScanRecord;->extractBytes([BII)[B

    move-result-object v1

    .line 283
    .local v1, "manufacturerDataBytes":[B
    invoke-virtual {v11, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 284
    nop

    .line 289
    .end local v0    # "manufacturerId":I
    .end local v1    # "manufacturerDataBytes":[B
    :goto_3
    add-int v1, v6, v5

    .line 290
    .end local v4    # "fieldType":I
    .end local v5    # "dataLength":I
    .end local v6    # "currentPos":I
    .end local v16    # "length":I
    .local v1, "currentPos":I
    nop

    .line 206
    move-object v6, v15

    goto/16 :goto_0

    .line 300
    .end local v1    # "currentPos":I
    .restart local v6    # "currentPos":I
    :catch_0
    move-exception v0

    move-object/from16 v17, v2

    move-object/from16 v18, v3

    move/from16 v16, v6

    goto :goto_9

    .line 300
    .end local v6    # "currentPos":I
    .local v4, "currentPos":I
    :catch_1
    move-exception v0

    move-object/from16 v17, v2

    move-object/from16 v18, v3

    move/from16 v16, v4

    goto :goto_9

    .line 292
    .end local v4    # "currentPos":I
    .restart local v1    # "currentPos":I
    :cond_5
    move/from16 v16, v1

    .line 292
    .end local v1    # "currentPos":I
    .local v16, "currentPos":I
    :goto_4
    :try_start_3
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    if-eqz v0, :cond_6

    .line 293
    const/4 v0, 0x0

    .line 295
    .end local v2    # "serviceUuids":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelUuid;>;"
    .local v0, "serviceUuids":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelUuid;>;"
    move-object/from16 v17, v0

    goto :goto_5

    .line 295
    .end local v0    # "serviceUuids":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelUuid;>;"
    .restart local v2    # "serviceUuids":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelUuid;>;"
    :cond_6
    move-object/from16 v17, v2

    .line 295
    .end local v2    # "serviceUuids":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelUuid;>;"
    .local v17, "serviceUuids":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelUuid;>;"
    :goto_5
    :try_start_4
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    if-eqz v0, :cond_7

    .line 296
    const/4 v0, 0x0

    .line 298
    .end local v3    # "serviceSolicitationUuids":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelUuid;>;"
    .local v0, "serviceSolicitationUuids":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelUuid;>;"
    move-object/from16 v18, v0

    goto :goto_6

    .line 298
    .end local v0    # "serviceSolicitationUuids":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelUuid;>;"
    .restart local v3    # "serviceSolicitationUuids":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelUuid;>;"
    :cond_7
    move-object/from16 v18, v3

    .line 298
    .end local v3    # "serviceSolicitationUuids":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelUuid;>;"
    .local v18, "serviceSolicitationUuids":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelUuid;>;"
    :goto_6
    :try_start_5
    new-instance v0, Landroid/bluetooth/le/ScanRecord;

    move-object v1, v0

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    move-object v4, v11

    move-object v5, v15

    move v6, v12

    move v7, v13

    move-object v8, v14

    move-object v9, v10

    invoke-direct/range {v1 .. v9}, Landroid/bluetooth/le/ScanRecord;-><init>(Ljava/util/List;Ljava/util/List;Landroid/util/SparseArray;Ljava/util/Map;IILjava/lang/String;[B)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    return-object v0

    .line 300
    :catch_2
    move-exception v0

    goto :goto_9

    .line 300
    .end local v18    # "serviceSolicitationUuids":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelUuid;>;"
    .restart local v3    # "serviceSolicitationUuids":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelUuid;>;"
    :catch_3
    move-exception v0

    goto :goto_8

    .line 300
    .end local v17    # "serviceUuids":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelUuid;>;"
    .restart local v2    # "serviceUuids":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelUuid;>;"
    :catch_4
    move-exception v0

    goto :goto_7

    .line 300
    .end local v16    # "currentPos":I
    .restart local v1    # "currentPos":I
    :catch_5
    move-exception v0

    move/from16 v16, v1

    .line 300
    .end local v1    # "currentPos":I
    .end local v2    # "serviceUuids":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelUuid;>;"
    .end local v3    # "serviceSolicitationUuids":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelUuid;>;"
    .restart local v16    # "currentPos":I
    .restart local v17    # "serviceUuids":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelUuid;>;"
    .restart local v18    # "serviceSolicitationUuids":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelUuid;>;"
    :goto_7
    move-object/from16 v17, v2

    :goto_8
    move-object/from16 v18, v3

    .line 301
    .local v0, "e":Ljava/lang/Exception;
    :goto_9
    const-string v1, "ScanRecord"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unable to parse scan record: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p0 .. p0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    new-instance v19, Landroid/bluetooth/le/ScanRecord;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/high16 v7, -0x80000000

    const/4 v8, 0x0

    move-object/from16 v1, v19

    move-object v9, v10

    invoke-direct/range {v1 .. v9}, Landroid/bluetooth/le/ScanRecord;-><init>(Ljava/util/List;Ljava/util/List;Landroid/util/SparseArray;Ljava/util/Map;IILjava/lang/String;[B)V

    return-object v19

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x14
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1f
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private static parseServiceSolicitationUuid([BIIILjava/util/List;)I
    .locals 2
    .param p0, "scanRecord"    # [B
    .param p1, "currentPos"    # I
    .param p2, "dataLength"    # I
    .param p3, "uuidLength"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BIII",
            "Ljava/util/List<",
            "Landroid/os/ParcelUuid;",
            ">;)I"
        }
    .end annotation

    .line 337
    .local p4, "serviceSolicitationUuids":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelUuid;>;"
    :goto_0
    if-lez p2, :cond_0

    .line 338
    invoke-static {p0, p1, p3}, Landroid/bluetooth/le/ScanRecord;->extractBytes([BII)[B

    move-result-object v0

    .line 339
    .local v0, "uuidBytes":[B
    invoke-static {v0}, Landroid/bluetooth/BluetoothUuid;->parseUuidFrom([B)Landroid/os/ParcelUuid;

    move-result-object v1

    invoke-interface {p4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 340
    sub-int/2addr p2, p3

    .line 341
    add-int/2addr p1, p3

    .line 342
    .end local v0    # "uuidBytes":[B
    goto :goto_0

    .line 343
    :cond_0
    return p1
.end method

.method private static parseServiceUuid([BIIILjava/util/List;)I
    .locals 2
    .param p0, "scanRecord"    # [B
    .param p1, "currentPos"    # I
    .param p2, "dataLength"    # I
    .param p3, "uuidLength"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BIII",
            "Ljava/util/List<",
            "Landroid/os/ParcelUuid;",
            ">;)I"
        }
    .end annotation

    .line 321
    .local p4, "serviceUuids":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelUuid;>;"
    :goto_0
    if-lez p2, :cond_0

    .line 322
    invoke-static {p0, p1, p3}, Landroid/bluetooth/le/ScanRecord;->extractBytes([BII)[B

    move-result-object v0

    .line 324
    .local v0, "uuidBytes":[B
    invoke-static {v0}, Landroid/bluetooth/BluetoothUuid;->parseUuidFrom([B)Landroid/os/ParcelUuid;

    move-result-object v1

    invoke-interface {p4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 325
    sub-int/2addr p2, p3

    .line 326
    add-int/2addr p1, p3

    .line 327
    .end local v0    # "uuidBytes":[B
    goto :goto_0

    .line 328
    :cond_0
    return p1
.end method


# virtual methods
.method public getAdvertiseFlags()I
    .locals 1

    .line 84
    iget v0, p0, Landroid/bluetooth/le/ScanRecord;->mAdvertiseFlags:I

    return v0
.end method

.method public getBytes()[B
    .locals 1

    .line 163
    iget-object v0, p0, Landroid/bluetooth/le/ScanRecord;->mBytes:[B

    return-object v0
.end method

.method public getDeviceName()Ljava/lang/String;
    .locals 1

    .line 156
    iget-object v0, p0, Landroid/bluetooth/le/ScanRecord;->mDeviceName:Ljava/lang/String;

    return-object v0
.end method

.method public getManufacturerSpecificData()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "[B>;"
        }
    .end annotation

    .line 109
    iget-object v0, p0, Landroid/bluetooth/le/ScanRecord;->mManufacturerSpecificData:Landroid/util/SparseArray;

    return-object v0
.end method

.method public getManufacturerSpecificData(I)[B
    .locals 1
    .param p1, "manufacturerId"    # I

    .line 118
    iget-object v0, p0, Landroid/bluetooth/le/ScanRecord;->mManufacturerSpecificData:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public getServiceData()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Landroid/os/ParcelUuid;",
            "[B>;"
        }
    .end annotation

    .line 125
    iget-object v0, p0, Landroid/bluetooth/le/ScanRecord;->mServiceData:Ljava/util/Map;

    return-object v0
.end method

.method public getServiceData(Landroid/os/ParcelUuid;)[B
    .locals 1
    .param p1, "serviceDataUuid"    # Landroid/os/ParcelUuid;

    .line 134
    if-nez p1, :cond_0

    .line 135
    const/4 v0, 0x0

    return-object v0

    .line 137
    :cond_0
    iget-object v0, p0, Landroid/bluetooth/le/ScanRecord;->mServiceData:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public getServiceSolicitationUuids()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/os/ParcelUuid;",
            ">;"
        }
    .end annotation

    .line 101
    iget-object v0, p0, Landroid/bluetooth/le/ScanRecord;->mServiceSolicitationUuids:Ljava/util/List;

    return-object v0
.end method

.method public getServiceUuids()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/os/ParcelUuid;",
            ">;"
        }
    .end annotation

    .line 92
    iget-object v0, p0, Landroid/bluetooth/le/ScanRecord;->mServiceUuids:Ljava/util/List;

    return-object v0
.end method

.method public getTxPowerLevel()I
    .locals 1

    .line 148
    iget v0, p0, Landroid/bluetooth/le/ScanRecord;->mTxPowerLevel:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 310
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ScanRecord [mAdvertiseFlags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/bluetooth/le/ScanRecord;->mAdvertiseFlags:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mServiceUuids="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/bluetooth/le/ScanRecord;->mServiceUuids:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mServiceSolicitationUuids="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/bluetooth/le/ScanRecord;->mServiceSolicitationUuids:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mManufacturerSpecificData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/bluetooth/le/ScanRecord;->mManufacturerSpecificData:Landroid/util/SparseArray;

    .line 312
    invoke-static {v1}, Landroid/bluetooth/le/BluetoothLeUtils;->toString(Landroid/util/SparseArray;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mServiceData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/bluetooth/le/ScanRecord;->mServiceData:Ljava/util/Map;

    .line 314
    invoke-static {v1}, Landroid/bluetooth/le/BluetoothLeUtils;->toString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mTxPowerLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/bluetooth/le/ScanRecord;->mTxPowerLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mDeviceName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/bluetooth/le/ScanRecord;->mDeviceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 310
    return-object v0
.end method
