.class public abstract Landroid/hardware/wifi/V1_2/IWifiNanIfaceEventCallback$Stub;
.super Landroid/os/HwBinder;
.source "IWifiNanIfaceEventCallback.java"

# interfaces
.implements Landroid/hardware/wifi/V1_2/IWifiNanIfaceEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/wifi/V1_2/IWifiNanIfaceEventCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 743
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .locals 0

    .line 746
    return-object p0
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .locals 3

    .line 790
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 791
    .local v0, "info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 792
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 793
    const/4 v1, 0x0

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    .line 794
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

    .line 765
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
        0x1et
        0x60t
        0x74t
        -0x11t
        -0x53t
        -0x63t
        -0x5dt
        0x33t
        -0x80t
        0x3ft
        -0x49t
        -0x3ft
        -0x54t
        -0x25t
        0x71t
        -0x63t
        0x51t
        -0x3dt
        0xbt
        0x2et
        0x1et
        -0x6et
        0x8t
        0x7bt
        0x4t
        0x20t
        0x34t
        0x16t
        0x31t
        -0x3dt
        0xbt
        0x60t
    .end array-data

    :array_1
    .array-data 1
        0x32t
        0x5ct
        -0x6ct
        -0xdt
        -0x1ft
        -0x5bt
        0x65t
        -0x4bt
        0x6bt
        -0x44t
        0x74t
        -0x6t
        -0x23t
        -0x43t
        0xbt
        -0x59t
        -0x35t
        -0x7et
        0x4ft
        0x26t
        0x3dt
        -0x34t
        -0x7t
        -0x21t
        -0x1t
        0x2dt
        -0x51t
        0x62t
        -0x48t
        0x6et
        -0x29t
        0x74t
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

    .line 751
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "android.hardware.wifi@1.2::IWifiNanIfaceEventCallback"

    const-string v2, "android.hardware.wifi@1.0::IWifiNanIfaceEventCallback"

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

    .line 759
    const-string v0, "android.hardware.wifi@1.2::IWifiNanIfaceEventCallback"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 1
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .line 779
    const/4 v0, 0x1

    return v0
.end method

.method public final notifySyspropsChanged()V
    .locals 0

    .line 799
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 800
    return-void
.end method

.method public onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .locals 9
    .param p1, "_hidl_code"    # I
    .param p2, "_hidl_request"    # Landroid/os/HwParcel;
    .param p3, "_hidl_reply"    # Landroid/os/HwParcel;
    .param p4, "_hidl_flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 828
    const/high16 v0, -0x80000000

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_7

    .line 1403
    :sswitch_0
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_0

    move v1, v2

    nop

    .line 1404
    .local v1, "_hidl_is_oneway":Z
    :cond_0
    if-eqz v1, :cond_49

    .line 1405
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1406
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1407
    goto/16 :goto_7

    .line 1390
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_1
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1

    move v1, v2

    nop

    .line 1391
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1
    if-eq v1, v2, :cond_2

    .line 1392
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1393
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1394
    goto/16 :goto_7

    .line 1395
    :cond_2
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1397
    invoke-virtual {p0}, Landroid/hardware/wifi/V1_2/IWifiNanIfaceEventCallback$Stub;->notifySyspropsChanged()V

    .line 1398
    goto/16 :goto_7

    .line 1374
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_2
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_3
    move v2, v1

    .line 1375
    .local v2, "_hidl_is_oneway":Z
    :goto_0
    if-eqz v2, :cond_4

    .line 1376
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1377
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1378
    goto/16 :goto_7

    .line 1379
    :cond_4
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1381
    invoke-virtual {p0}, Landroid/hardware/wifi/V1_2/IWifiNanIfaceEventCallback$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    .line 1382
    .local v0, "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1383
    invoke-virtual {v0, p3}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1384
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1385
    goto/16 :goto_7

    .line 1359
    .end local v0    # "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_3
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_5

    goto :goto_1

    :cond_5
    move v2, v1

    .line 1360
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_1
    if-eqz v2, :cond_6

    .line 1361
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1362
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1363
    goto/16 :goto_7

    .line 1364
    :cond_6
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1366
    invoke-virtual {p0}, Landroid/hardware/wifi/V1_2/IWifiNanIfaceEventCallback$Stub;->ping()V

    .line 1367
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1368
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1369
    goto/16 :goto_7

    .line 1349
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_4
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_7

    move v1, v2

    nop

    .line 1350
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_7
    if-eqz v1, :cond_49

    .line 1351
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1352
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1353
    goto/16 :goto_7

    .line 1336
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_5
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_8

    move v1, v2

    nop

    .line 1337
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_8
    if-eq v1, v2, :cond_9

    .line 1338
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1339
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1340
    goto/16 :goto_7

    .line 1341
    :cond_9
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1343
    invoke-virtual {p0}, Landroid/hardware/wifi/V1_2/IWifiNanIfaceEventCallback$Stub;->setHALInstrumentation()V

    .line 1344
    goto/16 :goto_7

    .line 1303
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_6
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_a

    goto :goto_2

    :cond_a
    move v2, v1

    .line 1304
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_2
    if-eqz v2, :cond_b

    .line 1305
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1306
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1307
    goto/16 :goto_7

    .line 1308
    :cond_b
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1310
    invoke-virtual {p0}, Landroid/hardware/wifi/V1_2/IWifiNanIfaceEventCallback$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 1311
    .local v0, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1313
    new-instance v3, Landroid/os/HwBlob;

    const/16 v4, 0x10

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 1315
    .local v3, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1316
    .local v4, "_hidl_vec_size":I
    const-wide/16 v5, 0x8

    invoke-virtual {v3, v5, v6, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 1317
    const-wide/16 v5, 0xc

    invoke-virtual {v3, v5, v6, v1}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 1318
    new-instance v5, Landroid/os/HwBlob;

    mul-int/lit8 v6, v4, 0x20

    invoke-direct {v5, v6}, Landroid/os/HwBlob;-><init>(I)V

    .line 1319
    .local v5, "childBlob":Landroid/os/HwBlob;
    nop

    .local v1, "_hidl_index_0":I
    :goto_3
    if-ge v1, v4, :cond_c

    .line 1321
    mul-int/lit8 v6, v1, 0x20

    int-to-long v6, v6

    .line 1322
    .local v6, "_hidl_array_offset_1":J
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 1323
    nop

    .line 1319
    .end local v6    # "_hidl_array_offset_1":J
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1326
    .end local v1    # "_hidl_index_0":I
    :cond_c
    const-wide/16 v6, 0x0

    invoke-virtual {v3, v6, v7, v5}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 1328
    .end local v4    # "_hidl_vec_size":I
    .end local v5    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 1330
    .end local v3    # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1331
    goto/16 :goto_7

    .line 1287
    .end local v0    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_7
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_d

    goto :goto_4

    :cond_d
    move v2, v1

    .line 1288
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_4
    if-eqz v2, :cond_e

    .line 1289
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1290
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1291
    goto/16 :goto_7

    .line 1292
    :cond_e
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1294
    invoke-virtual {p0}, Landroid/hardware/wifi/V1_2/IWifiNanIfaceEventCallback$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 1295
    .local v0, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1296
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1297
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1298
    goto/16 :goto_7

    .line 1273
    .end local v0    # "_hidl_out_descriptor":Ljava/lang/String;
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_8
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_f

    goto :goto_5

    :cond_f
    move v2, v1

    .line 1274
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_5
    if-eqz v2, :cond_10

    .line 1275
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1276
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1277
    goto/16 :goto_7

    .line 1278
    :cond_10
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1280
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1281
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1282
    goto/16 :goto_7

    .line 1257
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_9
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_11

    goto :goto_6

    :cond_11
    move v2, v1

    .line 1258
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_6
    if-eqz v2, :cond_12

    .line 1259
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1260
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1261
    goto/16 :goto_7

    .line 1262
    :cond_12
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1264
    invoke-virtual {p0}, Landroid/hardware/wifi/V1_2/IWifiNanIfaceEventCallback$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 1265
    .local v0, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1266
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 1267
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1268
    goto/16 :goto_7

    .line 1242
    .end local v0    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_0
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_13

    move v1, v2

    nop

    .line 1243
    .local v1, "_hidl_is_oneway":Z
    :cond_13
    if-eq v1, v2, :cond_14

    .line 1244
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1245
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1246
    goto/16 :goto_7

    .line 1247
    :cond_14
    const-string v0, "android.hardware.wifi@1.2::IWifiNanIfaceEventCallback"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1249
    new-instance v0, Landroid/hardware/wifi/V1_2/NanDataPathScheduleUpdateInd;

    invoke-direct {v0}, Landroid/hardware/wifi/V1_2/NanDataPathScheduleUpdateInd;-><init>()V

    .line 1250
    .local v0, "event":Landroid/hardware/wifi/V1_2/NanDataPathScheduleUpdateInd;
    invoke-virtual {v0, p2}, Landroid/hardware/wifi/V1_2/NanDataPathScheduleUpdateInd;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1251
    invoke-virtual {p0, v0}, Landroid/hardware/wifi/V1_2/IWifiNanIfaceEventCallback$Stub;->eventDataPathScheduleUpdate(Landroid/hardware/wifi/V1_2/NanDataPathScheduleUpdateInd;)V

    .line 1252
    goto/16 :goto_7

    .line 1227
    .end local v0    # "event":Landroid/hardware/wifi/V1_2/NanDataPathScheduleUpdateInd;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_1
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_15

    move v1, v2

    nop

    .line 1228
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_15
    if-eq v1, v2, :cond_16

    .line 1229
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1230
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1231
    goto/16 :goto_7

    .line 1232
    :cond_16
    const-string v0, "android.hardware.wifi@1.2::IWifiNanIfaceEventCallback"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1234
    new-instance v0, Landroid/hardware/wifi/V1_2/NanDataPathConfirmInd;

    invoke-direct {v0}, Landroid/hardware/wifi/V1_2/NanDataPathConfirmInd;-><init>()V

    .line 1235
    .local v0, "event":Landroid/hardware/wifi/V1_2/NanDataPathConfirmInd;
    invoke-virtual {v0, p2}, Landroid/hardware/wifi/V1_2/NanDataPathConfirmInd;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1236
    invoke-virtual {p0, v0}, Landroid/hardware/wifi/V1_2/IWifiNanIfaceEventCallback$Stub;->eventDataPathConfirm_1_2(Landroid/hardware/wifi/V1_2/NanDataPathConfirmInd;)V

    .line 1237
    goto/16 :goto_7

    .line 1213
    .end local v0    # "event":Landroid/hardware/wifi/V1_2/NanDataPathConfirmInd;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_2
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_17

    move v1, v2

    nop

    .line 1214
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_17
    if-eq v1, v2, :cond_18

    .line 1215
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1216
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1217
    goto/16 :goto_7

    .line 1218
    :cond_18
    const-string v0, "android.hardware.wifi@1.0::IWifiNanIfaceEventCallback"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1220
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1221
    .local v0, "ndpInstanceId":I
    invoke-virtual {p0, v0}, Landroid/hardware/wifi/V1_2/IWifiNanIfaceEventCallback$Stub;->eventDataPathTerminated(I)V

    .line 1222
    goto/16 :goto_7

    .line 1198
    .end local v0    # "ndpInstanceId":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_3
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_19

    move v1, v2

    nop

    .line 1199
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_19
    if-eq v1, v2, :cond_1a

    .line 1200
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1201
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1202
    goto/16 :goto_7

    .line 1203
    :cond_1a
    const-string v0, "android.hardware.wifi@1.0::IWifiNanIfaceEventCallback"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1205
    new-instance v0, Landroid/hardware/wifi/V1_0/NanDataPathConfirmInd;

    invoke-direct {v0}, Landroid/hardware/wifi/V1_0/NanDataPathConfirmInd;-><init>()V

    .line 1206
    .local v0, "event":Landroid/hardware/wifi/V1_0/NanDataPathConfirmInd;
    invoke-virtual {v0, p2}, Landroid/hardware/wifi/V1_0/NanDataPathConfirmInd;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1207
    invoke-virtual {p0, v0}, Landroid/hardware/wifi/V1_2/IWifiNanIfaceEventCallback$Stub;->eventDataPathConfirm(Landroid/hardware/wifi/V1_0/NanDataPathConfirmInd;)V

    .line 1208
    goto/16 :goto_7

    .line 1183
    .end local v0    # "event":Landroid/hardware/wifi/V1_0/NanDataPathConfirmInd;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_4
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1b

    move v1, v2

    nop

    .line 1184
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1b
    if-eq v1, v2, :cond_1c

    .line 1185
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1186
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1187
    goto/16 :goto_7

    .line 1188
    :cond_1c
    const-string v0, "android.hardware.wifi@1.0::IWifiNanIfaceEventCallback"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1190
    new-instance v0, Landroid/hardware/wifi/V1_0/NanDataPathRequestInd;

    invoke-direct {v0}, Landroid/hardware/wifi/V1_0/NanDataPathRequestInd;-><init>()V

    .line 1191
    .local v0, "event":Landroid/hardware/wifi/V1_0/NanDataPathRequestInd;
    invoke-virtual {v0, p2}, Landroid/hardware/wifi/V1_0/NanDataPathRequestInd;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1192
    invoke-virtual {p0, v0}, Landroid/hardware/wifi/V1_2/IWifiNanIfaceEventCallback$Stub;->eventDataPathRequest(Landroid/hardware/wifi/V1_0/NanDataPathRequestInd;)V

    .line 1193
    goto/16 :goto_7

    .line 1167
    .end local v0    # "event":Landroid/hardware/wifi/V1_0/NanDataPathRequestInd;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_5
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1d

    move v1, v2

    nop

    .line 1168
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1d
    if-eq v1, v2, :cond_1e

    .line 1169
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1170
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1171
    goto/16 :goto_7

    .line 1172
    :cond_1e
    const-string v0, "android.hardware.wifi@1.0::IWifiNanIfaceEventCallback"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1174
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    move-result v0

    .line 1175
    .local v0, "id":S
    new-instance v2, Landroid/hardware/wifi/V1_0/WifiNanStatus;

    invoke-direct {v2}, Landroid/hardware/wifi/V1_0/WifiNanStatus;-><init>()V

    .line 1176
    .local v2, "status":Landroid/hardware/wifi/V1_0/WifiNanStatus;
    invoke-virtual {v2, p2}, Landroid/hardware/wifi/V1_0/WifiNanStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1177
    invoke-virtual {p0, v0, v2}, Landroid/hardware/wifi/V1_2/IWifiNanIfaceEventCallback$Stub;->eventTransmitFollowup(SLandroid/hardware/wifi/V1_0/WifiNanStatus;)V

    .line 1178
    goto/16 :goto_7

    .line 1152
    .end local v0    # "id":S
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "status":Landroid/hardware/wifi/V1_0/WifiNanStatus;
    :pswitch_6
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1f

    move v1, v2

    nop

    .line 1153
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1f
    if-eq v1, v2, :cond_20

    .line 1154
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1155
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1156
    goto/16 :goto_7

    .line 1157
    :cond_20
    const-string v0, "android.hardware.wifi@1.0::IWifiNanIfaceEventCallback"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1159
    new-instance v0, Landroid/hardware/wifi/V1_0/NanFollowupReceivedInd;

    invoke-direct {v0}, Landroid/hardware/wifi/V1_0/NanFollowupReceivedInd;-><init>()V

    .line 1160
    .local v0, "event":Landroid/hardware/wifi/V1_0/NanFollowupReceivedInd;
    invoke-virtual {v0, p2}, Landroid/hardware/wifi/V1_0/NanFollowupReceivedInd;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1161
    invoke-virtual {p0, v0}, Landroid/hardware/wifi/V1_2/IWifiNanIfaceEventCallback$Stub;->eventFollowupReceived(Landroid/hardware/wifi/V1_0/NanFollowupReceivedInd;)V

    .line 1162
    goto/16 :goto_7

    .line 1137
    .end local v0    # "event":Landroid/hardware/wifi/V1_0/NanFollowupReceivedInd;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_7
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_21

    move v1, v2

    nop

    .line 1138
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_21
    if-eq v1, v2, :cond_22

    .line 1139
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1140
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1141
    goto/16 :goto_7

    .line 1142
    :cond_22
    const-string v0, "android.hardware.wifi@1.0::IWifiNanIfaceEventCallback"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1144
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8()B

    move-result v0

    .line 1145
    .local v0, "discoverySessionId":B
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1146
    .local v2, "peerId":I
    invoke-virtual {p0, v0, v2}, Landroid/hardware/wifi/V1_2/IWifiNanIfaceEventCallback$Stub;->eventMatchExpired(BI)V

    .line 1147
    goto/16 :goto_7

    .line 1122
    .end local v0    # "discoverySessionId":B
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "peerId":I
    :pswitch_8
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_23

    move v1, v2

    nop

    .line 1123
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_23
    if-eq v1, v2, :cond_24

    .line 1124
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1125
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1126
    goto/16 :goto_7

    .line 1127
    :cond_24
    const-string v0, "android.hardware.wifi@1.0::IWifiNanIfaceEventCallback"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1129
    new-instance v0, Landroid/hardware/wifi/V1_0/NanMatchInd;

    invoke-direct {v0}, Landroid/hardware/wifi/V1_0/NanMatchInd;-><init>()V

    .line 1130
    .local v0, "event":Landroid/hardware/wifi/V1_0/NanMatchInd;
    invoke-virtual {v0, p2}, Landroid/hardware/wifi/V1_0/NanMatchInd;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1131
    invoke-virtual {p0, v0}, Landroid/hardware/wifi/V1_2/IWifiNanIfaceEventCallback$Stub;->eventMatch(Landroid/hardware/wifi/V1_0/NanMatchInd;)V

    .line 1132
    goto/16 :goto_7

    .line 1106
    .end local v0    # "event":Landroid/hardware/wifi/V1_0/NanMatchInd;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_9
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_25

    move v1, v2

    nop

    .line 1107
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_25
    if-eq v1, v2, :cond_26

    .line 1108
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1109
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1110
    goto/16 :goto_7

    .line 1111
    :cond_26
    const-string v0, "android.hardware.wifi@1.0::IWifiNanIfaceEventCallback"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1113
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8()B

    move-result v0

    .line 1114
    .local v0, "sessionId":B
    new-instance v2, Landroid/hardware/wifi/V1_0/WifiNanStatus;

    invoke-direct {v2}, Landroid/hardware/wifi/V1_0/WifiNanStatus;-><init>()V

    .line 1115
    .local v2, "status":Landroid/hardware/wifi/V1_0/WifiNanStatus;
    invoke-virtual {v2, p2}, Landroid/hardware/wifi/V1_0/WifiNanStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1116
    invoke-virtual {p0, v0, v2}, Landroid/hardware/wifi/V1_2/IWifiNanIfaceEventCallback$Stub;->eventSubscribeTerminated(BLandroid/hardware/wifi/V1_0/WifiNanStatus;)V

    .line 1117
    goto/16 :goto_7

    .line 1090
    .end local v0    # "sessionId":B
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "status":Landroid/hardware/wifi/V1_0/WifiNanStatus;
    :pswitch_a
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_27

    move v1, v2

    nop

    .line 1091
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_27
    if-eq v1, v2, :cond_28

    .line 1092
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1093
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1094
    goto/16 :goto_7

    .line 1095
    :cond_28
    const-string v0, "android.hardware.wifi@1.0::IWifiNanIfaceEventCallback"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1097
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8()B

    move-result v0

    .line 1098
    .restart local v0    # "sessionId":B
    new-instance v2, Landroid/hardware/wifi/V1_0/WifiNanStatus;

    invoke-direct {v2}, Landroid/hardware/wifi/V1_0/WifiNanStatus;-><init>()V

    .line 1099
    .restart local v2    # "status":Landroid/hardware/wifi/V1_0/WifiNanStatus;
    invoke-virtual {v2, p2}, Landroid/hardware/wifi/V1_0/WifiNanStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1100
    invoke-virtual {p0, v0, v2}, Landroid/hardware/wifi/V1_2/IWifiNanIfaceEventCallback$Stub;->eventPublishTerminated(BLandroid/hardware/wifi/V1_0/WifiNanStatus;)V

    .line 1101
    goto/16 :goto_7

    .line 1075
    .end local v0    # "sessionId":B
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "status":Landroid/hardware/wifi/V1_0/WifiNanStatus;
    :pswitch_b
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_29

    move v1, v2

    nop

    .line 1076
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_29
    if-eq v1, v2, :cond_2a

    .line 1077
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1078
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1079
    goto/16 :goto_7

    .line 1080
    :cond_2a
    const-string v0, "android.hardware.wifi@1.0::IWifiNanIfaceEventCallback"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1082
    new-instance v0, Landroid/hardware/wifi/V1_0/WifiNanStatus;

    invoke-direct {v0}, Landroid/hardware/wifi/V1_0/WifiNanStatus;-><init>()V

    .line 1083
    .local v0, "status":Landroid/hardware/wifi/V1_0/WifiNanStatus;
    invoke-virtual {v0, p2}, Landroid/hardware/wifi/V1_0/WifiNanStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1084
    invoke-virtual {p0, v0}, Landroid/hardware/wifi/V1_2/IWifiNanIfaceEventCallback$Stub;->eventDisabled(Landroid/hardware/wifi/V1_0/WifiNanStatus;)V

    .line 1085
    goto/16 :goto_7

    .line 1060
    .end local v0    # "status":Landroid/hardware/wifi/V1_0/WifiNanStatus;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_c
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_2b

    move v1, v2

    nop

    .line 1061
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_2b
    if-eq v1, v2, :cond_2c

    .line 1062
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1063
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1064
    goto/16 :goto_7

    .line 1065
    :cond_2c
    const-string v0, "android.hardware.wifi@1.0::IWifiNanIfaceEventCallback"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1067
    new-instance v0, Landroid/hardware/wifi/V1_0/NanClusterEventInd;

    invoke-direct {v0}, Landroid/hardware/wifi/V1_0/NanClusterEventInd;-><init>()V

    .line 1068
    .local v0, "event":Landroid/hardware/wifi/V1_0/NanClusterEventInd;
    invoke-virtual {v0, p2}, Landroid/hardware/wifi/V1_0/NanClusterEventInd;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1069
    invoke-virtual {p0, v0}, Landroid/hardware/wifi/V1_2/IWifiNanIfaceEventCallback$Stub;->eventClusterEvent(Landroid/hardware/wifi/V1_0/NanClusterEventInd;)V

    .line 1070
    goto/16 :goto_7

    .line 1044
    .end local v0    # "event":Landroid/hardware/wifi/V1_0/NanClusterEventInd;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_d
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_2d

    move v1, v2

    nop

    .line 1045
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_2d
    if-eq v1, v2, :cond_2e

    .line 1046
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1047
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1048
    goto/16 :goto_7

    .line 1049
    :cond_2e
    const-string v0, "android.hardware.wifi@1.0::IWifiNanIfaceEventCallback"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1051
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    move-result v0

    .line 1052
    .local v0, "id":S
    new-instance v2, Landroid/hardware/wifi/V1_0/WifiNanStatus;

    invoke-direct {v2}, Landroid/hardware/wifi/V1_0/WifiNanStatus;-><init>()V

    .line 1053
    .restart local v2    # "status":Landroid/hardware/wifi/V1_0/WifiNanStatus;
    invoke-virtual {v2, p2}, Landroid/hardware/wifi/V1_0/WifiNanStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1054
    invoke-virtual {p0, v0, v2}, Landroid/hardware/wifi/V1_2/IWifiNanIfaceEventCallback$Stub;->notifyTerminateDataPathResponse(SLandroid/hardware/wifi/V1_0/WifiNanStatus;)V

    .line 1055
    goto/16 :goto_7

    .line 1028
    .end local v0    # "id":S
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "status":Landroid/hardware/wifi/V1_0/WifiNanStatus;
    :pswitch_e
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_2f

    move v1, v2

    nop

    .line 1029
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_2f
    if-eq v1, v2, :cond_30

    .line 1030
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1031
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1032
    goto/16 :goto_7

    .line 1033
    :cond_30
    const-string v0, "android.hardware.wifi@1.0::IWifiNanIfaceEventCallback"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1035
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    move-result v0

    .line 1036
    .restart local v0    # "id":S
    new-instance v2, Landroid/hardware/wifi/V1_0/WifiNanStatus;

    invoke-direct {v2}, Landroid/hardware/wifi/V1_0/WifiNanStatus;-><init>()V

    .line 1037
    .restart local v2    # "status":Landroid/hardware/wifi/V1_0/WifiNanStatus;
    invoke-virtual {v2, p2}, Landroid/hardware/wifi/V1_0/WifiNanStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1038
    invoke-virtual {p0, v0, v2}, Landroid/hardware/wifi/V1_2/IWifiNanIfaceEventCallback$Stub;->notifyRespondToDataPathIndicationResponse(SLandroid/hardware/wifi/V1_0/WifiNanStatus;)V

    .line 1039
    goto/16 :goto_7

    .line 1011
    .end local v0    # "id":S
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "status":Landroid/hardware/wifi/V1_0/WifiNanStatus;
    :pswitch_f
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_31

    move v1, v2

    nop

    .line 1012
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_31
    if-eq v1, v2, :cond_32

    .line 1013
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1014
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1015
    goto/16 :goto_7

    .line 1016
    :cond_32
    const-string v0, "android.hardware.wifi@1.0::IWifiNanIfaceEventCallback"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1018
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    move-result v0

    .line 1019
    .restart local v0    # "id":S
    new-instance v2, Landroid/hardware/wifi/V1_0/WifiNanStatus;

    invoke-direct {v2}, Landroid/hardware/wifi/V1_0/WifiNanStatus;-><init>()V

    .line 1020
    .restart local v2    # "status":Landroid/hardware/wifi/V1_0/WifiNanStatus;
    invoke-virtual {v2, p2}, Landroid/hardware/wifi/V1_0/WifiNanStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1021
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 1022
    .local v3, "ndpInstanceId":I
    invoke-virtual {p0, v0, v2, v3}, Landroid/hardware/wifi/V1_2/IWifiNanIfaceEventCallback$Stub;->notifyInitiateDataPathResponse(SLandroid/hardware/wifi/V1_0/WifiNanStatus;I)V

    .line 1023
    goto/16 :goto_7

    .line 995
    .end local v0    # "id":S
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "status":Landroid/hardware/wifi/V1_0/WifiNanStatus;
    .end local v3    # "ndpInstanceId":I
    :pswitch_10
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_33

    move v1, v2

    nop

    .line 996
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_33
    if-eq v1, v2, :cond_34

    .line 997
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 998
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 999
    goto/16 :goto_7

    .line 1000
    :cond_34
    const-string v0, "android.hardware.wifi@1.0::IWifiNanIfaceEventCallback"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1002
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    move-result v0

    .line 1003
    .restart local v0    # "id":S
    new-instance v2, Landroid/hardware/wifi/V1_0/WifiNanStatus;

    invoke-direct {v2}, Landroid/hardware/wifi/V1_0/WifiNanStatus;-><init>()V

    .line 1004
    .restart local v2    # "status":Landroid/hardware/wifi/V1_0/WifiNanStatus;
    invoke-virtual {v2, p2}, Landroid/hardware/wifi/V1_0/WifiNanStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1005
    invoke-virtual {p0, v0, v2}, Landroid/hardware/wifi/V1_2/IWifiNanIfaceEventCallback$Stub;->notifyDeleteDataInterfaceResponse(SLandroid/hardware/wifi/V1_0/WifiNanStatus;)V

    .line 1006
    goto/16 :goto_7

    .line 979
    .end local v0    # "id":S
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "status":Landroid/hardware/wifi/V1_0/WifiNanStatus;
    :pswitch_11
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_35

    move v1, v2

    nop

    .line 980
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_35
    if-eq v1, v2, :cond_36

    .line 981
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 982
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 983
    goto/16 :goto_7

    .line 984
    :cond_36
    const-string v0, "android.hardware.wifi@1.0::IWifiNanIfaceEventCallback"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 986
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    move-result v0

    .line 987
    .restart local v0    # "id":S
    new-instance v2, Landroid/hardware/wifi/V1_0/WifiNanStatus;

    invoke-direct {v2}, Landroid/hardware/wifi/V1_0/WifiNanStatus;-><init>()V

    .line 988
    .restart local v2    # "status":Landroid/hardware/wifi/V1_0/WifiNanStatus;
    invoke-virtual {v2, p2}, Landroid/hardware/wifi/V1_0/WifiNanStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 989
    invoke-virtual {p0, v0, v2}, Landroid/hardware/wifi/V1_2/IWifiNanIfaceEventCallback$Stub;->notifyCreateDataInterfaceResponse(SLandroid/hardware/wifi/V1_0/WifiNanStatus;)V

    .line 990
    goto/16 :goto_7

    .line 963
    .end local v0    # "id":S
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "status":Landroid/hardware/wifi/V1_0/WifiNanStatus;
    :pswitch_12
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_37

    move v1, v2

    nop

    .line 964
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_37
    if-eq v1, v2, :cond_38

    .line 965
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 966
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 967
    goto/16 :goto_7

    .line 968
    :cond_38
    const-string v0, "android.hardware.wifi@1.0::IWifiNanIfaceEventCallback"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 970
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    move-result v0

    .line 971
    .restart local v0    # "id":S
    new-instance v2, Landroid/hardware/wifi/V1_0/WifiNanStatus;

    invoke-direct {v2}, Landroid/hardware/wifi/V1_0/WifiNanStatus;-><init>()V

    .line 972
    .restart local v2    # "status":Landroid/hardware/wifi/V1_0/WifiNanStatus;
    invoke-virtual {v2, p2}, Landroid/hardware/wifi/V1_0/WifiNanStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 973
    invoke-virtual {p0, v0, v2}, Landroid/hardware/wifi/V1_2/IWifiNanIfaceEventCallback$Stub;->notifyTransmitFollowupResponse(SLandroid/hardware/wifi/V1_0/WifiNanStatus;)V

    .line 974
    goto/16 :goto_7

    .line 947
    .end local v0    # "id":S
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "status":Landroid/hardware/wifi/V1_0/WifiNanStatus;
    :pswitch_13
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_39

    move v1, v2

    nop

    .line 948
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_39
    if-eq v1, v2, :cond_3a

    .line 949
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 950
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 951
    goto/16 :goto_7

    .line 952
    :cond_3a
    const-string v0, "android.hardware.wifi@1.0::IWifiNanIfaceEventCallback"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 954
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    move-result v0

    .line 955
    .restart local v0    # "id":S
    new-instance v2, Landroid/hardware/wifi/V1_0/WifiNanStatus;

    invoke-direct {v2}, Landroid/hardware/wifi/V1_0/WifiNanStatus;-><init>()V

    .line 956
    .restart local v2    # "status":Landroid/hardware/wifi/V1_0/WifiNanStatus;
    invoke-virtual {v2, p2}, Landroid/hardware/wifi/V1_0/WifiNanStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 957
    invoke-virtual {p0, v0, v2}, Landroid/hardware/wifi/V1_2/IWifiNanIfaceEventCallback$Stub;->notifyStopSubscribeResponse(SLandroid/hardware/wifi/V1_0/WifiNanStatus;)V

    .line 958
    goto/16 :goto_7

    .line 930
    .end local v0    # "id":S
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "status":Landroid/hardware/wifi/V1_0/WifiNanStatus;
    :pswitch_14
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_3b

    move v1, v2

    nop

    .line 931
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_3b
    if-eq v1, v2, :cond_3c

    .line 932
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 933
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 934
    goto/16 :goto_7

    .line 935
    :cond_3c
    const-string v0, "android.hardware.wifi@1.0::IWifiNanIfaceEventCallback"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 937
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    move-result v0

    .line 938
    .restart local v0    # "id":S
    new-instance v2, Landroid/hardware/wifi/V1_0/WifiNanStatus;

    invoke-direct {v2}, Landroid/hardware/wifi/V1_0/WifiNanStatus;-><init>()V

    .line 939
    .restart local v2    # "status":Landroid/hardware/wifi/V1_0/WifiNanStatus;
    invoke-virtual {v2, p2}, Landroid/hardware/wifi/V1_0/WifiNanStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 940
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8()B

    move-result v3

    .line 941
    .local v3, "sessionId":B
    invoke-virtual {p0, v0, v2, v3}, Landroid/hardware/wifi/V1_2/IWifiNanIfaceEventCallback$Stub;->notifyStartSubscribeResponse(SLandroid/hardware/wifi/V1_0/WifiNanStatus;B)V

    .line 942
    goto/16 :goto_7

    .line 914
    .end local v0    # "id":S
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "status":Landroid/hardware/wifi/V1_0/WifiNanStatus;
    .end local v3    # "sessionId":B
    :pswitch_15
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_3d

    move v1, v2

    nop

    .line 915
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_3d
    if-eq v1, v2, :cond_3e

    .line 916
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 917
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 918
    goto/16 :goto_7

    .line 919
    :cond_3e
    const-string v0, "android.hardware.wifi@1.0::IWifiNanIfaceEventCallback"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 921
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    move-result v0

    .line 922
    .restart local v0    # "id":S
    new-instance v2, Landroid/hardware/wifi/V1_0/WifiNanStatus;

    invoke-direct {v2}, Landroid/hardware/wifi/V1_0/WifiNanStatus;-><init>()V

    .line 923
    .restart local v2    # "status":Landroid/hardware/wifi/V1_0/WifiNanStatus;
    invoke-virtual {v2, p2}, Landroid/hardware/wifi/V1_0/WifiNanStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 924
    invoke-virtual {p0, v0, v2}, Landroid/hardware/wifi/V1_2/IWifiNanIfaceEventCallback$Stub;->notifyStopPublishResponse(SLandroid/hardware/wifi/V1_0/WifiNanStatus;)V

    .line 925
    goto/16 :goto_7

    .line 897
    .end local v0    # "id":S
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "status":Landroid/hardware/wifi/V1_0/WifiNanStatus;
    :pswitch_16
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_3f

    move v1, v2

    nop

    .line 898
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_3f
    if-eq v1, v2, :cond_40

    .line 899
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 900
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 901
    goto/16 :goto_7

    .line 902
    :cond_40
    const-string v0, "android.hardware.wifi@1.0::IWifiNanIfaceEventCallback"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 904
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    move-result v0

    .line 905
    .restart local v0    # "id":S
    new-instance v2, Landroid/hardware/wifi/V1_0/WifiNanStatus;

    invoke-direct {v2}, Landroid/hardware/wifi/V1_0/WifiNanStatus;-><init>()V

    .line 906
    .restart local v2    # "status":Landroid/hardware/wifi/V1_0/WifiNanStatus;
    invoke-virtual {v2, p2}, Landroid/hardware/wifi/V1_0/WifiNanStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 907
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8()B

    move-result v3

    .line 908
    .restart local v3    # "sessionId":B
    invoke-virtual {p0, v0, v2, v3}, Landroid/hardware/wifi/V1_2/IWifiNanIfaceEventCallback$Stub;->notifyStartPublishResponse(SLandroid/hardware/wifi/V1_0/WifiNanStatus;B)V

    .line 909
    goto/16 :goto_7

    .line 881
    .end local v0    # "id":S
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "status":Landroid/hardware/wifi/V1_0/WifiNanStatus;
    .end local v3    # "sessionId":B
    :pswitch_17
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_41

    move v1, v2

    nop

    .line 882
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_41
    if-eq v1, v2, :cond_42

    .line 883
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 884
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 885
    goto/16 :goto_7

    .line 886
    :cond_42
    const-string v0, "android.hardware.wifi@1.0::IWifiNanIfaceEventCallback"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 888
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    move-result v0

    .line 889
    .restart local v0    # "id":S
    new-instance v2, Landroid/hardware/wifi/V1_0/WifiNanStatus;

    invoke-direct {v2}, Landroid/hardware/wifi/V1_0/WifiNanStatus;-><init>()V

    .line 890
    .restart local v2    # "status":Landroid/hardware/wifi/V1_0/WifiNanStatus;
    invoke-virtual {v2, p2}, Landroid/hardware/wifi/V1_0/WifiNanStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 891
    invoke-virtual {p0, v0, v2}, Landroid/hardware/wifi/V1_2/IWifiNanIfaceEventCallback$Stub;->notifyDisableResponse(SLandroid/hardware/wifi/V1_0/WifiNanStatus;)V

    .line 892
    goto/16 :goto_7

    .line 865
    .end local v0    # "id":S
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "status":Landroid/hardware/wifi/V1_0/WifiNanStatus;
    :pswitch_18
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_43

    move v1, v2

    nop

    .line 866
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_43
    if-eq v1, v2, :cond_44

    .line 867
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 868
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 869
    goto :goto_7

    .line 870
    :cond_44
    const-string v0, "android.hardware.wifi@1.0::IWifiNanIfaceEventCallback"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 872
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    move-result v0

    .line 873
    .restart local v0    # "id":S
    new-instance v2, Landroid/hardware/wifi/V1_0/WifiNanStatus;

    invoke-direct {v2}, Landroid/hardware/wifi/V1_0/WifiNanStatus;-><init>()V

    .line 874
    .restart local v2    # "status":Landroid/hardware/wifi/V1_0/WifiNanStatus;
    invoke-virtual {v2, p2}, Landroid/hardware/wifi/V1_0/WifiNanStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 875
    invoke-virtual {p0, v0, v2}, Landroid/hardware/wifi/V1_2/IWifiNanIfaceEventCallback$Stub;->notifyConfigResponse(SLandroid/hardware/wifi/V1_0/WifiNanStatus;)V

    .line 876
    goto :goto_7

    .line 849
    .end local v0    # "id":S
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "status":Landroid/hardware/wifi/V1_0/WifiNanStatus;
    :pswitch_19
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_45

    move v1, v2

    nop

    .line 850
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_45
    if-eq v1, v2, :cond_46

    .line 851
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 852
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 853
    goto :goto_7

    .line 854
    :cond_46
    const-string v0, "android.hardware.wifi@1.0::IWifiNanIfaceEventCallback"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 856
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    move-result v0

    .line 857
    .restart local v0    # "id":S
    new-instance v2, Landroid/hardware/wifi/V1_0/WifiNanStatus;

    invoke-direct {v2}, Landroid/hardware/wifi/V1_0/WifiNanStatus;-><init>()V

    .line 858
    .restart local v2    # "status":Landroid/hardware/wifi/V1_0/WifiNanStatus;
    invoke-virtual {v2, p2}, Landroid/hardware/wifi/V1_0/WifiNanStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 859
    invoke-virtual {p0, v0, v2}, Landroid/hardware/wifi/V1_2/IWifiNanIfaceEventCallback$Stub;->notifyEnableResponse(SLandroid/hardware/wifi/V1_0/WifiNanStatus;)V

    .line 860
    goto :goto_7

    .line 831
    .end local v0    # "id":S
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "status":Landroid/hardware/wifi/V1_0/WifiNanStatus;
    :pswitch_1a
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_47

    move v1, v2

    nop

    .line 832
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_47
    if-eq v1, v2, :cond_48

    .line 833
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 834
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 835
    goto :goto_7

    .line 836
    :cond_48
    const-string v0, "android.hardware.wifi@1.0::IWifiNanIfaceEventCallback"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 838
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    move-result v0

    .line 839
    .restart local v0    # "id":S
    new-instance v2, Landroid/hardware/wifi/V1_0/WifiNanStatus;

    invoke-direct {v2}, Landroid/hardware/wifi/V1_0/WifiNanStatus;-><init>()V

    .line 840
    .restart local v2    # "status":Landroid/hardware/wifi/V1_0/WifiNanStatus;
    invoke-virtual {v2, p2}, Landroid/hardware/wifi/V1_0/WifiNanStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 841
    new-instance v3, Landroid/hardware/wifi/V1_0/NanCapabilities;

    invoke-direct {v3}, Landroid/hardware/wifi/V1_0/NanCapabilities;-><init>()V

    .line 842
    .local v3, "capabilities":Landroid/hardware/wifi/V1_0/NanCapabilities;
    invoke-virtual {v3, p2}, Landroid/hardware/wifi/V1_0/NanCapabilities;->readFromParcel(Landroid/os/HwParcel;)V

    .line 843
    invoke-virtual {p0, v0, v2, v3}, Landroid/hardware/wifi/V1_2/IWifiNanIfaceEventCallback$Stub;->notifyCapabilitiesResponse(SLandroid/hardware/wifi/V1_0/WifiNanStatus;Landroid/hardware/wifi/V1_0/NanCapabilities;)V

    .line 844
    nop

    .line 1412
    .end local v0    # "id":S
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "status":Landroid/hardware/wifi/V1_0/WifiNanStatus;
    .end local v3    # "capabilities":Landroid/hardware/wifi/V1_0/NanCapabilities;
    :cond_49
    :goto_7
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
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

    .line 784
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 1
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 810
    const-string v0, "android.hardware.wifi@1.2::IWifiNanIfaceEventCallback"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 811
    return-object p0

    .line 813
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

    .line 817
    invoke-virtual {p0, p1}, Landroid/hardware/wifi/V1_2/IWifiNanIfaceEventCallback$Stub;->registerService(Ljava/lang/String;)V

    .line 818
    return-void
.end method

.method public final setHALInstrumentation()V
    .locals 0

    .line 775
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 822
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/wifi/V1_2/IWifiNanIfaceEventCallback$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 804
    const/4 v0, 0x1

    return v0
.end method
