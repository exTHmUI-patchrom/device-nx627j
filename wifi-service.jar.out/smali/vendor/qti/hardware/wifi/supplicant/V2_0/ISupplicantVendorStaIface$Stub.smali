.class public abstract Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface$Stub;
.super Landroid/os/HwBinder;
.source "ISupplicantVendorStaIface.java"

# interfaces
.implements Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 871
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .locals 0

    .line 874
    return-object p0
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .locals 3

    .line 918
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 919
    .local v0, "info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 920
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 921
    const/4 v1, 0x0

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    .line 922
    return-object v0
.end method

.method public final getHashChain()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation

    .line 893
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    new-array v1, v1, [[B

    const/16 v2, 0x20

    new-array v3, v2, [B

    fill-array-data v3, :array_0

    const/4 v4, 0x0

    aput-object v3, v1, v4

    new-array v3, v2, [B

    fill-array-data v3, :array_1

    const/4 v4, 0x1

    aput-object v3, v1, v4

    new-array v2, v2, [B

    fill-array-data v2, :array_2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    nop

    :array_0
    .array-data 1
        0x4t
        0x5ft
        0xct
        0x17t
        0x33t
        -0x2dt
        0x36t
        0x28t
        0x7ft
        -0x19t
        -0x8t
        0x33t
        -0x59t
        0x7at
        0x5et
        0x52t
        -0x5ct
        -0x3ft
        0x4ft
        -0x4ct
        0x6at
        -0x5ct
        -0x57t
        0x11t
        -0x21t
        0x64t
        0x3bt
        -0x2ft
        -0x2bt
        0x42t
        0x25t
        0x33t
    .end array-data

    :array_1
    .array-data 1
        0x77t
        0x61t
        0x50t
        0x21t
        0x6bt
        -0x16t
        0x5ft
        0x18t
        0x30t
        0x11t
        -0x2bt
        0x79t
        -0x5at
        0x15t
        -0x36t
        -0x32t
        0x13t
        0x41t
        0x50t
        0xdt
        0x64t
        -0x45t
        0x5bt
        0x4ft
        0xet
        0x56t
        -0x4t
        0x49t
        -0x77t
        0x14t
        0x3ct
        -0x3ct
    .end array-data

    :array_2
    .array-data 1
        -0x43t
        -0x26t
        -0x4at
        0x18t
        0x4dt
        0x7at
        0x34t
        0x6dt
        -0x5at
        -0x60t
        0x7dt
        -0x40t
        -0x7et
        -0x74t
        -0xft
        -0x66t
        0x69t
        0x6ft
        0x4ct
        -0x56t
        0x36t
        0x11t
        -0x3bt
        0x1ft
        0x2et
        0x14t
        0x56t
        0x5at
        0x14t
        -0x4ct
        0xft
        -0x27t
    .end array-data
.end method

.method public final interfaceChain()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 879
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "vendor.qti.hardware.wifi.supplicant@2.0::ISupplicantVendorStaIface"

    const-string v2, "vendor.qti.hardware.wifi.supplicant@2.0::ISupplicantVendorIface"

    const-string v3, "android.hidl.base@1.0::IBase"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final interfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 887
    const-string v0, "vendor.qti.hardware.wifi.supplicant@2.0::ISupplicantVendorStaIface"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 1
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .line 907
    const/4 v0, 0x1

    return v0
.end method

.method public final notifySyspropsChanged()V
    .locals 0

    .line 927
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 928
    return-void
.end method

.method public onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .locals 24
    .param p1, "_hidl_code"    # I
    .param p2, "_hidl_request"    # Landroid/os/HwParcel;
    .param p3, "_hidl_reply"    # Landroid/os/HwParcel;
    .param p4, "_hidl_flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v11, p0

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    .line 956
    const-wide/16 v0, 0x6

    const/4 v2, 0x6

    const/high16 v3, -0x80000000

    const/4 v4, 0x0

    const/4 v5, 0x1

    packed-switch p1, :pswitch_data_0

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_b

    .line 1437
    :sswitch_0
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_0

    move v4, v5

    nop

    :cond_0
    move v0, v4

    .line 1438
    .local v0, "_hidl_is_oneway":Z
    if-eqz v0, :cond_31

    .line 1439
    invoke-virtual {v13, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1440
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1441
    goto/16 :goto_b

    .line 1424
    .end local v0    # "_hidl_is_oneway":Z
    :sswitch_1
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1

    move v4, v5

    nop

    :cond_1
    move v0, v4

    .line 1425
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_2

    .line 1426
    invoke-virtual {v13, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1427
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1428
    goto/16 :goto_b

    .line 1429
    :cond_2
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v12, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1431
    invoke-virtual/range {p0 .. p0}, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface$Stub;->notifySyspropsChanged()V

    .line 1432
    goto/16 :goto_b

    .line 1408
    .end local v0    # "_hidl_is_oneway":Z
    :sswitch_2
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    move v5, v4

    :goto_0
    move v0, v5

    .line 1409
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_4

    .line 1410
    invoke-virtual {v13, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1411
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1412
    goto/16 :goto_b

    .line 1413
    :cond_4
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v12, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1415
    invoke-virtual/range {p0 .. p0}, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object v1

    .line 1416
    .local v1, "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-virtual {v13, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1417
    invoke-virtual {v1, v13}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1418
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1419
    goto/16 :goto_b

    .line 1393
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    :sswitch_3
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_5

    goto :goto_1

    :cond_5
    move v5, v4

    :goto_1
    move v0, v5

    .line 1394
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_6

    .line 1395
    invoke-virtual {v13, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1396
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1397
    goto/16 :goto_b

    .line 1398
    :cond_6
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v12, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1400
    invoke-virtual/range {p0 .. p0}, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface$Stub;->ping()V

    .line 1401
    invoke-virtual {v13, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1402
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1403
    goto/16 :goto_b

    .line 1383
    .end local v0    # "_hidl_is_oneway":Z
    :sswitch_4
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_7

    move v4, v5

    nop

    :cond_7
    move v0, v4

    .line 1384
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_31

    .line 1385
    invoke-virtual {v13, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1386
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1387
    goto/16 :goto_b

    .line 1370
    .end local v0    # "_hidl_is_oneway":Z
    :sswitch_5
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_8

    move v4, v5

    nop

    :cond_8
    move v0, v4

    .line 1371
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_9

    .line 1372
    invoke-virtual {v13, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1373
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1374
    goto/16 :goto_b

    .line 1375
    :cond_9
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v12, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1377
    invoke-virtual/range {p0 .. p0}, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface$Stub;->setHALInstrumentation()V

    .line 1378
    goto/16 :goto_b

    .line 1337
    .end local v0    # "_hidl_is_oneway":Z
    :sswitch_6
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_a

    goto :goto_2

    :cond_a
    move v5, v4

    :goto_2
    move v0, v5

    .line 1338
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_b

    .line 1339
    invoke-virtual {v13, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1340
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1341
    goto/16 :goto_b

    .line 1342
    :cond_b
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v12, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1344
    invoke-virtual/range {p0 .. p0}, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v1

    .line 1345
    .local v1, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {v13, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1347
    new-instance v2, Landroid/os/HwBlob;

    const/16 v3, 0x10

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 1349
    .local v2, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1350
    .local v3, "_hidl_vec_size":I
    const-wide/16 v5, 0x8

    invoke-virtual {v2, v5, v6, v3}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 1351
    const-wide/16 v5, 0xc

    invoke-virtual {v2, v5, v6, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 1352
    new-instance v5, Landroid/os/HwBlob;

    mul-int/lit8 v6, v3, 0x20

    invoke-direct {v5, v6}, Landroid/os/HwBlob;-><init>(I)V

    .line 1353
    .local v5, "childBlob":Landroid/os/HwBlob;
    nop

    .local v4, "_hidl_index_0":I
    :goto_3
    if-ge v4, v3, :cond_c

    .line 1355
    mul-int/lit8 v6, v4, 0x20

    int-to-long v6, v6

    .line 1356
    .local v6, "_hidl_array_offset_1":J
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 1357
    nop

    .line 1353
    .end local v6    # "_hidl_array_offset_1":J
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 1360
    .end local v4    # "_hidl_index_0":I
    :cond_c
    const-wide/16 v6, 0x0

    invoke-virtual {v2, v6, v7, v5}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 1362
    .end local v3    # "_hidl_vec_size":I
    .end local v5    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v13, v2}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 1364
    .end local v2    # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1365
    goto/16 :goto_b

    .line 1321
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :sswitch_7
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_d

    goto :goto_4

    :cond_d
    move v5, v4

    :goto_4
    move v0, v5

    .line 1322
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_e

    .line 1323
    invoke-virtual {v13, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1324
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1325
    goto/16 :goto_b

    .line 1326
    :cond_e
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v12, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1328
    invoke-virtual/range {p0 .. p0}, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v1

    .line 1329
    .local v1, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {v13, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1330
    invoke-virtual {v13, v1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1331
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1332
    goto/16 :goto_b

    .line 1307
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "_hidl_out_descriptor":Ljava/lang/String;
    :sswitch_8
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_f

    goto :goto_5

    :cond_f
    move v5, v4

    :goto_5
    move v0, v5

    .line 1308
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_10

    .line 1309
    invoke-virtual {v13, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1310
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1311
    goto/16 :goto_b

    .line 1312
    :cond_10
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v12, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1314
    invoke-virtual {v13, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1315
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1316
    goto/16 :goto_b

    .line 1291
    .end local v0    # "_hidl_is_oneway":Z
    :sswitch_9
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_11

    goto :goto_6

    :cond_11
    move v5, v4

    :goto_6
    move v0, v5

    .line 1292
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_12

    .line 1293
    invoke-virtual {v13, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1294
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1295
    goto/16 :goto_b

    .line 1296
    :cond_12
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v12, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1298
    invoke-virtual/range {p0 .. p0}, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v1

    .line 1299
    .local v1, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v13, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1300
    invoke-virtual {v13, v1}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 1301
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1302
    goto/16 :goto_b

    .line 1270
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :pswitch_0
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_13

    move v4, v5

    nop

    :cond_13
    move v0, v4

    .line 1271
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_14

    .line 1272
    invoke-virtual {v13, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1273
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1274
    goto/16 :goto_b

    .line 1275
    :cond_14
    const-string v1, "vendor.qti.hardware.wifi.supplicant@2.0::ISupplicantVendorStaIface"

    invoke-virtual {v12, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1277
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1278
    .local v1, "id":I
    new-instance v2, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface$Stub$11;

    invoke-direct {v2, v11, v13}, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface$Stub$11;-><init>(Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {v11, v1, v2}, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface$Stub;->dppConfiguratorGetKey(ILvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface$dppConfiguratorGetKeyCallback;)V

    .line 1286
    goto/16 :goto_b

    .line 1241
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "id":I
    :pswitch_1
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_15

    move v4, v5

    nop

    :cond_15
    move v14, v4

    .line 1242
    .local v14, "_hidl_is_oneway":Z
    if-eqz v14, :cond_16

    .line 1243
    invoke-virtual {v13, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1244
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1245
    goto/16 :goto_b

    .line 1246
    :cond_16
    const-string v0, "vendor.qti.hardware.wifi.supplicant@2.0::ISupplicantVendorStaIface"

    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1248
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v15

    .line 1249
    .local v15, "peer_bootstrap_id":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v16

    .line 1250
    .local v16, "own_bootstrap_id":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v17

    .line 1251
    .local v17, "dpp_role":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 1252
    .local v18, "ssid":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 1253
    .local v19, "password":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v20

    .line 1254
    .local v20, "isAp":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v21

    .line 1255
    .local v21, "isDpp":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v22

    .line 1256
    .local v22, "conf_id":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v23

    .line 1257
    .local v23, "expiry":I
    new-instance v10, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface$Stub$10;

    invoke-direct {v10, v11, v13}, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface$Stub$10;-><init>(Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface$Stub;Landroid/os/HwParcel;)V

    move-object v0, v11

    move v1, v15

    move/from16 v2, v16

    move/from16 v3, v17

    move-object/from16 v4, v18

    move-object/from16 v5, v19

    move/from16 v6, v20

    move/from16 v7, v21

    move/from16 v8, v22

    move/from16 v9, v23

    invoke-virtual/range {v0 .. v10}, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface$Stub;->dppStartAuth(IIILjava/lang/String;Ljava/lang/String;ZZIILvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface$dppStartAuthCallback;)V

    .line 1265
    goto/16 :goto_b

    .line 1220
    .end local v14    # "_hidl_is_oneway":Z
    .end local v15    # "peer_bootstrap_id":I
    .end local v16    # "own_bootstrap_id":I
    .end local v17    # "dpp_role":I
    .end local v18    # "ssid":Ljava/lang/String;
    .end local v19    # "password":Ljava/lang/String;
    .end local v20    # "isAp":Z
    .end local v21    # "isDpp":Z
    .end local v22    # "conf_id":I
    .end local v23    # "expiry":I
    :pswitch_2
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_17

    move v4, v5

    nop

    :cond_17
    move v0, v4

    .line 1221
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_18

    .line 1222
    invoke-virtual {v13, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1223
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1224
    goto/16 :goto_b

    .line 1225
    :cond_18
    const-string v1, "vendor.qti.hardware.wifi.supplicant@2.0::ISupplicantVendorStaIface"

    invoke-virtual {v12, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1227
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1228
    .restart local v1    # "id":I
    new-instance v2, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface$Stub$9;

    invoke-direct {v2, v11, v13}, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface$Stub$9;-><init>(Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {v11, v1, v2}, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface$Stub;->dppConfiguratorRemove(ILvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface$dppConfiguratorRemoveCallback;)V

    .line 1236
    goto/16 :goto_b

    .line 1197
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "id":I
    :pswitch_3
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_19

    move v4, v5

    nop

    :cond_19
    move v0, v4

    .line 1198
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_1a

    .line 1199
    invoke-virtual {v13, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1200
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1201
    goto/16 :goto_b

    .line 1202
    :cond_1a
    const-string v1, "vendor.qti.hardware.wifi.supplicant@2.0::ISupplicantVendorStaIface"

    invoke-virtual {v12, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1204
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1205
    .local v1, "curve":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1206
    .local v2, "key":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 1207
    .local v3, "expiry":I
    new-instance v4, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface$Stub$8;

    invoke-direct {v4, v11, v13}, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface$Stub$8;-><init>(Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {v11, v1, v2, v3, v4}, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface$Stub;->dppConfiguratorAdd(Ljava/lang/String;Ljava/lang/String;ILvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface$dppConfiguratorAddCallback;)V

    .line 1215
    goto/16 :goto_b

    .line 1181
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "curve":Ljava/lang/String;
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "expiry":I
    :pswitch_4
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1b

    goto :goto_7

    :cond_1b
    move v5, v4

    :goto_7
    move v0, v5

    .line 1182
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_1c

    .line 1183
    invoke-virtual {v13, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1184
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1185
    goto/16 :goto_b

    .line 1186
    :cond_1c
    const-string v1, "vendor.qti.hardware.wifi.supplicant@2.0::ISupplicantVendorStaIface"

    invoke-virtual {v12, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1188
    invoke-virtual/range {p0 .. p0}, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface$Stub;->dppStopListen()Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v1

    .line 1189
    .local v1, "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {v13, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1190
    invoke-virtual {v1, v13}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1191
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1192
    goto/16 :goto_b

    .line 1157
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :pswitch_5
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1d

    move v4, v5

    nop

    :cond_1d
    move v6, v4

    .line 1158
    .local v6, "_hidl_is_oneway":Z
    if-eqz v6, :cond_1e

    .line 1159
    invoke-virtual {v13, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1160
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1161
    goto/16 :goto_b

    .line 1162
    :cond_1e
    const-string v0, "vendor.qti.hardware.wifi.supplicant@2.0::ISupplicantVendorStaIface"

    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1164
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1165
    .local v7, "frequency":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    .line 1166
    .local v8, "dpp_role":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v9

    .line 1167
    .local v9, "qr_mutual":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v10

    .line 1168
    .local v10, "netrole_ap":Z
    new-instance v5, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface$Stub$7;

    invoke-direct {v5, v11, v13}, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface$Stub$7;-><init>(Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface$Stub;Landroid/os/HwParcel;)V

    move-object v0, v11

    move-object v1, v7

    move v2, v8

    move v3, v9

    move v4, v10

    invoke-virtual/range {v0 .. v5}, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface$Stub;->dppStartListen(Ljava/lang/String;IZZLvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface$dppStartListenCallback;)V

    .line 1176
    goto/16 :goto_b

    .line 1136
    .end local v6    # "_hidl_is_oneway":Z
    .end local v7    # "frequency":Ljava/lang/String;
    .end local v8    # "dpp_role":I
    .end local v9    # "qr_mutual":Z
    .end local v10    # "netrole_ap":Z
    :pswitch_6
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1f

    move v4, v5

    nop

    :cond_1f
    move v0, v4

    .line 1137
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_20

    .line 1138
    invoke-virtual {v13, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1139
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1140
    goto/16 :goto_b

    .line 1141
    :cond_20
    const-string v1, "vendor.qti.hardware.wifi.supplicant@2.0::ISupplicantVendorStaIface"

    invoke-virtual {v12, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1143
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1144
    .local v1, "id":I
    new-instance v2, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface$Stub$6;

    invoke-direct {v2, v11, v13}, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface$Stub$6;-><init>(Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {v11, v1, v2}, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface$Stub;->dppGetUri(ILvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface$dppGetUriCallback;)V

    .line 1152
    goto/16 :goto_b

    .line 1115
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "id":I
    :pswitch_7
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_21

    move v4, v5

    nop

    :cond_21
    move v0, v4

    .line 1116
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_22

    .line 1117
    invoke-virtual {v13, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1118
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1119
    goto/16 :goto_b

    .line 1120
    :cond_22
    const-string v1, "vendor.qti.hardware.wifi.supplicant@2.0::ISupplicantVendorStaIface"

    invoke-virtual {v12, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1122
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1123
    .restart local v1    # "id":I
    new-instance v2, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface$Stub$5;

    invoke-direct {v2, v11, v13}, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface$Stub$5;-><init>(Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {v11, v1, v2}, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface$Stub;->dppBootstrapRemove(ILvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface$dppBootstrapRemoveCallback;)V

    .line 1131
    goto/16 :goto_b

    .line 1081
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "id":I
    :pswitch_8
    and-int/lit8 v6, p4, 0x1

    if-eqz v6, :cond_23

    move v4, v5

    nop

    :cond_23
    move v8, v4

    .line 1082
    .local v8, "_hidl_is_oneway":Z
    if-eqz v8, :cond_24

    .line 1083
    invoke-virtual {v13, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1084
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1085
    goto/16 :goto_b

    .line 1086
    :cond_24
    const-string v3, "vendor.qti.hardware.wifi.supplicant@2.0::ISupplicantVendorStaIface"

    invoke-virtual {v12, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1088
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    .line 1089
    .local v9, "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 1090
    .local v10, "chan_list":Ljava/lang/String;
    new-array v7, v2, [B

    .line 1092
    .local v7, "mac_addr":[B
    invoke-virtual {v12, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 1094
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v3, 0x0

    .line 1095
    .local v3, "_hidl_array_offset_0":J
    invoke-virtual {v0, v3, v4, v7, v2}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 1096
    nop

    .line 1099
    .end local v0    # "_hidl_blob":Landroid/os/HwBlob;
    .end local v3    # "_hidl_array_offset_0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 1100
    .local v14, "info":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 1101
    .local v15, "curve":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 1102
    .local v16, "key":Ljava/lang/String;
    new-instance v6, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface$Stub$4;

    invoke-direct {v6, v11, v13}, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface$Stub$4;-><init>(Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface$Stub;Landroid/os/HwParcel;)V

    move-object v0, v11

    move v1, v9

    move-object v2, v10

    move-object v3, v7

    move-object v4, v14

    move-object v5, v15

    move-object/from16 v17, v6

    move-object/from16 v6, v16

    move-object/from16 v18, v7

    move-object/from16 v7, v17

    .end local v7    # "mac_addr":[B
    .local v18, "mac_addr":[B
    invoke-virtual/range {v0 .. v7}, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface$Stub;->dppBootstrapGenerate(ILjava/lang/String;[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface$dppBootstrapGenerateCallback;)V

    .line 1110
    goto/16 :goto_b

    .line 1060
    .end local v8    # "_hidl_is_oneway":Z
    .end local v9    # "type":I
    .end local v10    # "chan_list":Ljava/lang/String;
    .end local v14    # "info":Ljava/lang/String;
    .end local v15    # "curve":Ljava/lang/String;
    .end local v16    # "key":Ljava/lang/String;
    .end local v18    # "mac_addr":[B
    :pswitch_9
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_25

    move v4, v5

    nop

    :cond_25
    move v0, v4

    .line 1061
    .local v0, "_hidl_is_oneway":Z
    if-eqz v0, :cond_26

    .line 1062
    invoke-virtual {v13, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1063
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1064
    goto/16 :goto_b

    .line 1065
    :cond_26
    const-string v1, "vendor.qti.hardware.wifi.supplicant@2.0::ISupplicantVendorStaIface"

    invoke-virtual {v12, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1067
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1068
    .local v1, "uri":Ljava/lang/String;
    new-instance v2, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface$Stub$3;

    invoke-direct {v2, v11, v13}, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface$Stub$3;-><init>(Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {v11, v1, v2}, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface$Stub;->dppAddBootstrapQrcode(Ljava/lang/String;Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface$dppAddBootstrapQrcodeCallback;)V

    .line 1076
    goto/16 :goto_b

    .line 1039
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "uri":Ljava/lang/String;
    :pswitch_a
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_27

    move v4, v5

    nop

    :cond_27
    move v0, v4

    .line 1040
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_28

    .line 1041
    invoke-virtual {v13, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1042
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1043
    goto/16 :goto_b

    .line 1044
    :cond_28
    const-string v1, "vendor.qti.hardware.wifi.supplicant@2.0::ISupplicantVendorStaIface"

    invoke-virtual {v12, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1046
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1047
    .local v1, "capaType":Ljava/lang/String;
    new-instance v2, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface$Stub$2;

    invoke-direct {v2, v11, v13}, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface$Stub$2;-><init>(Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {v11, v1, v2}, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface$Stub;->getCapabilities(Ljava/lang/String;Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface$getCapabilitiesCallback;)V

    .line 1055
    goto/16 :goto_b

    .line 1013
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "capaType":Ljava/lang/String;
    :pswitch_b
    and-int/lit8 v6, p4, 0x1

    if-eqz v6, :cond_29

    goto :goto_8

    :cond_29
    move v5, v4

    .line 1014
    .local v5, "_hidl_is_oneway":Z
    :goto_8
    if-eqz v5, :cond_2a

    .line 1015
    invoke-virtual {v13, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1016
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1017
    goto/16 :goto_b

    .line 1018
    :cond_2a
    const-string v3, "vendor.qti.hardware.wifi.supplicant@2.0::ISupplicantVendorStaIface"

    invoke-virtual {v12, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1020
    new-array v3, v2, [B

    .line 1022
    .local v3, "dst_mac":[B
    invoke-virtual {v12, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 1024
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v6, 0x0

    .line 1025
    .local v6, "_hidl_array_offset_0":J
    invoke-virtual {v0, v6, v7, v3, v2}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 1026
    nop

    .line 1029
    .end local v0    # "_hidl_blob":Landroid/os/HwBlob;
    .end local v6    # "_hidl_array_offset_0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v0

    .line 1030
    .local v0, "pkt":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {v11, v3, v0}, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface$Stub;->filsHlpAddRequest([BLjava/util/ArrayList;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v1

    .line 1031
    .local v1, "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {v13, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1032
    invoke-virtual {v1, v13}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1033
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1034
    goto/16 :goto_b

    .line 997
    .end local v0    # "pkt":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    .end local v1    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .end local v3    # "dst_mac":[B
    .end local v5    # "_hidl_is_oneway":Z
    :pswitch_c
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_2b

    goto :goto_9

    :cond_2b
    move v5, v4

    :goto_9
    move v0, v5

    .line 998
    .local v0, "_hidl_is_oneway":Z
    if-eqz v0, :cond_2c

    .line 999
    invoke-virtual {v13, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1000
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1001
    goto :goto_b

    .line 1002
    :cond_2c
    const-string v1, "vendor.qti.hardware.wifi.supplicant@2.0::ISupplicantVendorStaIface"

    invoke-virtual {v12, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1004
    invoke-virtual/range {p0 .. p0}, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface$Stub;->filsHlpFlushRequest()Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v1

    .line 1005
    .restart local v1    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {v13, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1006
    invoke-virtual {v1, v13}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1007
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1008
    goto :goto_b

    .line 980
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :pswitch_d
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_2d

    goto :goto_a

    :cond_2d
    move v5, v4

    :goto_a
    move v0, v5

    .line 981
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_2e

    .line 982
    invoke-virtual {v13, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 983
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 984
    goto :goto_b

    .line 985
    :cond_2e
    const-string v1, "vendor.qti.hardware.wifi.supplicant@2.0::ISupplicantVendorStaIface"

    invoke-virtual {v12, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 987
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v1

    invoke-static {v1}, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIfaceCallback;->asInterface(Landroid/os/IHwBinder;)Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIfaceCallback;

    move-result-object v1

    .line 988
    .local v1, "callback":Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIfaceCallback;
    invoke-virtual {v11, v1}, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface$Stub;->registerVendorCallback(Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIfaceCallback;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    .line 989
    .local v2, "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {v13, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 990
    invoke-virtual {v2, v13}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 991
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 992
    goto :goto_b

    .line 959
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "callback":Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIfaceCallback;
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :pswitch_e
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_2f

    move v4, v5

    nop

    :cond_2f
    move v0, v4

    .line 960
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_30

    .line 961
    invoke-virtual {v13, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 962
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 963
    goto :goto_b

    .line 964
    :cond_30
    const-string v1, "vendor.qti.hardware.wifi.supplicant@2.0::ISupplicantVendorIface"

    invoke-virtual {v12, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 966
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 967
    .local v1, "id":I
    new-instance v2, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface$Stub$1;

    invoke-direct {v2, v11, v13}, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface$Stub$1;-><init>(Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {v11, v1, v2}, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface$Stub;->getVendorNetwork(ILvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorIface$getVendorNetworkCallback;)V

    .line 975
    nop

    .line 1446
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "id":I
    :cond_31
    :goto_b
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0xf43484e -> :sswitch_9
        0xf444247 -> :sswitch_8
        0xf445343 -> :sswitch_7
        0xf485348 -> :sswitch_6
        0xf494e54 -> :sswitch_5
        0xf4c5444 -> :sswitch_4
        0xf504e47 -> :sswitch_3
        0xf524546 -> :sswitch_2
        0xf535953 -> :sswitch_1
        0xf555444 -> :sswitch_0
    .end sparse-switch
.end method

.method public final ping()V
    .locals 0

    .line 912
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 1
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 938
    const-string v0, "vendor.qti.hardware.wifi.supplicant@2.0::ISupplicantVendorStaIface"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 939
    return-object p0

    .line 941
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public registerAsService(Ljava/lang/String;)V
    .locals 0
    .param p1, "serviceName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 945
    invoke-virtual {p0, p1}, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface$Stub;->registerService(Ljava/lang/String;)V

    .line 946
    return-void
.end method

.method public final setHALInstrumentation()V
    .locals 0

    .line 903
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 950
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "@Stub"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z
    .locals 1
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;

    .line 932
    const/4 v0, 0x1

    return v0
.end method
