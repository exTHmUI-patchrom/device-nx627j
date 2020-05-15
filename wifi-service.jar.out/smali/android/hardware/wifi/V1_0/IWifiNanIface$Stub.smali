.class public abstract Landroid/hardware/wifi/V1_0/IWifiNanIface$Stub;
.super Landroid/os/HwBinder;
.source "IWifiNanIface.java"

# interfaces
.implements Landroid/hardware/wifi/V1_0/IWifiNanIface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/wifi/V1_0/IWifiNanIface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 858
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .locals 0

    .line 861
    return-object p0
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .locals 3

    .line 905
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 906
    .local v0, "info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 907
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 908
    const/4 v1, 0x0

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    .line 909
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

    .line 880
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
        -0x46t
        0x5at
        -0x59t
        0x4ft
        0x1bt
        -0x59t
        0x14t
        -0x10t
        0x9t
        0x38t
        0x64t
        0x22t
        0x79t
        0x23t
        0x49t
        0x28t
        0x8t
        0x79t
        0x5bt
        -0x26t
        0x61t
        -0x67t
        -0x3ct
        -0x16t
        0x8t
        -0x6ft
        0x32t
        0x2dt
        0x27t
        -0x8t
        -0x37t
        0x31t
    .end array-data

    :array_1
    .array-data 1
        0x6bt
        -0x66t
        -0x2ct
        0x3at
        0x5et
        -0x5t
        -0x1at
        -0x36t
        0x21t
        0x4ft
        0x75t
        0x1et
        0x22t
        -0x32t
        0x43t
        -0x31t
        0x5ct
        -0x2ct
        -0x2bt
        -0x2bt
        -0xet
        -0x35t
        -0x58t
        0xft
        0x24t
        -0x34t
        -0x2dt
        0x75t
        0x5at
        0x72t
        0x40t
        0x1ct
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

    .line 866
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "android.hardware.wifi@1.0::IWifiNanIface"

    const-string v2, "android.hardware.wifi@1.0::IWifiIface"

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

    .line 874
    const-string v0, "android.hardware.wifi@1.0::IWifiNanIface"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 1
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .line 894
    const/4 v0, 0x1

    return v0
.end method

.method public final notifySyspropsChanged()V
    .locals 0

    .line 914
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 915
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

    .line 943
    const/high16 v0, -0x80000000

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_16

    .line 1406
    :sswitch_0
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_0

    move v1, v2

    nop

    .line 1407
    .local v1, "_hidl_is_oneway":Z
    :cond_0
    if-eqz v1, :cond_35

    .line 1408
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1409
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1410
    goto/16 :goto_16

    .line 1393
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_1
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1

    move v1, v2

    nop

    .line 1394
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1
    if-eq v1, v2, :cond_2

    .line 1395
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1396
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1397
    goto/16 :goto_16

    .line 1398
    :cond_2
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1400
    invoke-virtual {p0}, Landroid/hardware/wifi/V1_0/IWifiNanIface$Stub;->notifySyspropsChanged()V

    .line 1401
    goto/16 :goto_16

    .line 1377
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_2
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_3
    move v2, v1

    .line 1378
    .local v2, "_hidl_is_oneway":Z
    :goto_0
    if-eqz v2, :cond_4

    .line 1379
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1380
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1381
    goto/16 :goto_16

    .line 1382
    :cond_4
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1384
    invoke-virtual {p0}, Landroid/hardware/wifi/V1_0/IWifiNanIface$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    .line 1385
    .local v0, "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1386
    invoke-virtual {v0, p3}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1387
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1388
    goto/16 :goto_16

    .line 1362
    .end local v0    # "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_3
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_5

    goto :goto_1

    :cond_5
    move v2, v1

    .line 1363
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_1
    if-eqz v2, :cond_6

    .line 1364
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1365
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1366
    goto/16 :goto_16

    .line 1367
    :cond_6
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1369
    invoke-virtual {p0}, Landroid/hardware/wifi/V1_0/IWifiNanIface$Stub;->ping()V

    .line 1370
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1371
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1372
    goto/16 :goto_16

    .line 1352
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_4
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_7

    move v1, v2

    nop

    .line 1353
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_7
    if-eqz v1, :cond_35

    .line 1354
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1355
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1356
    goto/16 :goto_16

    .line 1339
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_5
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_8

    move v1, v2

    nop

    .line 1340
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_8
    if-eq v1, v2, :cond_9

    .line 1341
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1342
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1343
    goto/16 :goto_16

    .line 1344
    :cond_9
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1346
    invoke-virtual {p0}, Landroid/hardware/wifi/V1_0/IWifiNanIface$Stub;->setHALInstrumentation()V

    .line 1347
    goto/16 :goto_16

    .line 1306
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_6
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_a

    goto :goto_2

    :cond_a
    move v2, v1

    .line 1307
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_2
    if-eqz v2, :cond_b

    .line 1308
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1309
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1310
    goto/16 :goto_16

    .line 1311
    :cond_b
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1313
    invoke-virtual {p0}, Landroid/hardware/wifi/V1_0/IWifiNanIface$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 1314
    .local v0, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1316
    new-instance v3, Landroid/os/HwBlob;

    const/16 v4, 0x10

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 1318
    .local v3, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1319
    .local v4, "_hidl_vec_size":I
    const-wide/16 v5, 0x8

    invoke-virtual {v3, v5, v6, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 1320
    const-wide/16 v5, 0xc

    invoke-virtual {v3, v5, v6, v1}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 1321
    new-instance v5, Landroid/os/HwBlob;

    mul-int/lit8 v6, v4, 0x20

    invoke-direct {v5, v6}, Landroid/os/HwBlob;-><init>(I)V

    .line 1322
    .local v5, "childBlob":Landroid/os/HwBlob;
    nop

    .local v1, "_hidl_index_0":I
    :goto_3
    if-ge v1, v4, :cond_c

    .line 1324
    mul-int/lit8 v6, v1, 0x20

    int-to-long v6, v6

    .line 1325
    .local v6, "_hidl_array_offset_1":J
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 1326
    nop

    .line 1322
    .end local v6    # "_hidl_array_offset_1":J
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1329
    .end local v1    # "_hidl_index_0":I
    :cond_c
    const-wide/16 v6, 0x0

    invoke-virtual {v3, v6, v7, v5}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 1331
    .end local v4    # "_hidl_vec_size":I
    .end local v5    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 1333
    .end local v3    # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1334
    goto/16 :goto_16

    .line 1290
    .end local v0    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_7
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_d

    goto :goto_4

    :cond_d
    move v2, v1

    .line 1291
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_4
    if-eqz v2, :cond_e

    .line 1292
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1293
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1294
    goto/16 :goto_16

    .line 1295
    :cond_e
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1297
    invoke-virtual {p0}, Landroid/hardware/wifi/V1_0/IWifiNanIface$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 1298
    .local v0, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1299
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1300
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1301
    goto/16 :goto_16

    .line 1276
    .end local v0    # "_hidl_out_descriptor":Ljava/lang/String;
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_8
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_f

    goto :goto_5

    :cond_f
    move v2, v1

    .line 1277
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_5
    if-eqz v2, :cond_10

    .line 1278
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1279
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1280
    goto/16 :goto_16

    .line 1281
    :cond_10
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1283
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1284
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1285
    goto/16 :goto_16

    .line 1260
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_9
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_11

    goto :goto_6

    :cond_11
    move v2, v1

    .line 1261
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_6
    if-eqz v2, :cond_12

    .line 1262
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1263
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1264
    goto/16 :goto_16

    .line 1265
    :cond_12
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1267
    invoke-virtual {p0}, Landroid/hardware/wifi/V1_0/IWifiNanIface$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 1268
    .local v0, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1269
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 1270
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1271
    goto/16 :goto_16

    .line 1242
    .end local v0    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_0
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_13

    goto :goto_7

    :cond_13
    move v2, v1

    .line 1243
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_7
    if-eqz v2, :cond_14

    .line 1244
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1245
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1246
    goto/16 :goto_16

    .line 1247
    :cond_14
    const-string v0, "android.hardware.wifi@1.0::IWifiNanIface"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1249
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    move-result v0

    .line 1250
    .local v0, "cmdId":S
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 1251
    .local v3, "ndpInstanceId":I
    invoke-virtual {p0, v0, v3}, Landroid/hardware/wifi/V1_0/IWifiNanIface$Stub;->terminateDataPathRequest(SI)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v4

    .line 1252
    .local v4, "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1253
    invoke-virtual {v4, p3}, Landroid/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1254
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1255
    goto/16 :goto_16

    .line 1223
    .end local v0    # "cmdId":S
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "ndpInstanceId":I
    .end local v4    # "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    :pswitch_1
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_15

    goto :goto_8

    :cond_15
    move v2, v1

    .line 1224
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_8
    if-eqz v2, :cond_16

    .line 1225
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1226
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1227
    goto/16 :goto_16

    .line 1228
    :cond_16
    const-string v0, "android.hardware.wifi@1.0::IWifiNanIface"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1230
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    move-result v0

    .line 1231
    .restart local v0    # "cmdId":S
    new-instance v3, Landroid/hardware/wifi/V1_0/NanRespondToDataPathIndicationRequest;

    invoke-direct {v3}, Landroid/hardware/wifi/V1_0/NanRespondToDataPathIndicationRequest;-><init>()V

    .line 1232
    .local v3, "msg":Landroid/hardware/wifi/V1_0/NanRespondToDataPathIndicationRequest;
    invoke-virtual {v3, p2}, Landroid/hardware/wifi/V1_0/NanRespondToDataPathIndicationRequest;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1233
    invoke-virtual {p0, v0, v3}, Landroid/hardware/wifi/V1_0/IWifiNanIface$Stub;->respondToDataPathIndicationRequest(SLandroid/hardware/wifi/V1_0/NanRespondToDataPathIndicationRequest;)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v4

    .line 1234
    .restart local v4    # "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1235
    invoke-virtual {v4, p3}, Landroid/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1236
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1237
    goto/16 :goto_16

    .line 1204
    .end local v0    # "cmdId":S
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "msg":Landroid/hardware/wifi/V1_0/NanRespondToDataPathIndicationRequest;
    .end local v4    # "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    :pswitch_2
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_17

    goto :goto_9

    :cond_17
    move v2, v1

    .line 1205
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_9
    if-eqz v2, :cond_18

    .line 1206
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1207
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1208
    goto/16 :goto_16

    .line 1209
    :cond_18
    const-string v0, "android.hardware.wifi@1.0::IWifiNanIface"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1211
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    move-result v0

    .line 1212
    .restart local v0    # "cmdId":S
    new-instance v3, Landroid/hardware/wifi/V1_0/NanInitiateDataPathRequest;

    invoke-direct {v3}, Landroid/hardware/wifi/V1_0/NanInitiateDataPathRequest;-><init>()V

    .line 1213
    .local v3, "msg":Landroid/hardware/wifi/V1_0/NanInitiateDataPathRequest;
    invoke-virtual {v3, p2}, Landroid/hardware/wifi/V1_0/NanInitiateDataPathRequest;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1214
    invoke-virtual {p0, v0, v3}, Landroid/hardware/wifi/V1_0/IWifiNanIface$Stub;->initiateDataPathRequest(SLandroid/hardware/wifi/V1_0/NanInitiateDataPathRequest;)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v4

    .line 1215
    .restart local v4    # "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1216
    invoke-virtual {v4, p3}, Landroid/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1217
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1218
    goto/16 :goto_16

    .line 1186
    .end local v0    # "cmdId":S
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "msg":Landroid/hardware/wifi/V1_0/NanInitiateDataPathRequest;
    .end local v4    # "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    :pswitch_3
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_19

    goto :goto_a

    :cond_19
    move v2, v1

    .line 1187
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_a
    if-eqz v2, :cond_1a

    .line 1188
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1189
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1190
    goto/16 :goto_16

    .line 1191
    :cond_1a
    const-string v0, "android.hardware.wifi@1.0::IWifiNanIface"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1193
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    move-result v0

    .line 1194
    .restart local v0    # "cmdId":S
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1195
    .local v3, "ifaceName":Ljava/lang/String;
    invoke-virtual {p0, v0, v3}, Landroid/hardware/wifi/V1_0/IWifiNanIface$Stub;->deleteDataInterfaceRequest(SLjava/lang/String;)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v4

    .line 1196
    .restart local v4    # "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1197
    invoke-virtual {v4, p3}, Landroid/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1198
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1199
    goto/16 :goto_16

    .line 1168
    .end local v0    # "cmdId":S
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "ifaceName":Ljava/lang/String;
    .end local v4    # "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    :pswitch_4
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1b

    goto :goto_b

    :cond_1b
    move v2, v1

    .line 1169
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_b
    if-eqz v2, :cond_1c

    .line 1170
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1171
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1172
    goto/16 :goto_16

    .line 1173
    :cond_1c
    const-string v0, "android.hardware.wifi@1.0::IWifiNanIface"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1175
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    move-result v0

    .line 1176
    .restart local v0    # "cmdId":S
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1177
    .restart local v3    # "ifaceName":Ljava/lang/String;
    invoke-virtual {p0, v0, v3}, Landroid/hardware/wifi/V1_0/IWifiNanIface$Stub;->createDataInterfaceRequest(SLjava/lang/String;)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v4

    .line 1178
    .restart local v4    # "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1179
    invoke-virtual {v4, p3}, Landroid/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1180
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1181
    goto/16 :goto_16

    .line 1149
    .end local v0    # "cmdId":S
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "ifaceName":Ljava/lang/String;
    .end local v4    # "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    :pswitch_5
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1d

    goto :goto_c

    :cond_1d
    move v2, v1

    .line 1150
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_c
    if-eqz v2, :cond_1e

    .line 1151
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1152
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1153
    goto/16 :goto_16

    .line 1154
    :cond_1e
    const-string v0, "android.hardware.wifi@1.0::IWifiNanIface"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1156
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    move-result v0

    .line 1157
    .restart local v0    # "cmdId":S
    new-instance v3, Landroid/hardware/wifi/V1_0/NanTransmitFollowupRequest;

    invoke-direct {v3}, Landroid/hardware/wifi/V1_0/NanTransmitFollowupRequest;-><init>()V

    .line 1158
    .local v3, "msg":Landroid/hardware/wifi/V1_0/NanTransmitFollowupRequest;
    invoke-virtual {v3, p2}, Landroid/hardware/wifi/V1_0/NanTransmitFollowupRequest;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1159
    invoke-virtual {p0, v0, v3}, Landroid/hardware/wifi/V1_0/IWifiNanIface$Stub;->transmitFollowupRequest(SLandroid/hardware/wifi/V1_0/NanTransmitFollowupRequest;)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v4

    .line 1160
    .restart local v4    # "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1161
    invoke-virtual {v4, p3}, Landroid/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1162
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1163
    goto/16 :goto_16

    .line 1131
    .end local v0    # "cmdId":S
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "msg":Landroid/hardware/wifi/V1_0/NanTransmitFollowupRequest;
    .end local v4    # "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    :pswitch_6
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1f

    goto :goto_d

    :cond_1f
    move v2, v1

    .line 1132
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_d
    if-eqz v2, :cond_20

    .line 1133
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1134
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1135
    goto/16 :goto_16

    .line 1136
    :cond_20
    const-string v0, "android.hardware.wifi@1.0::IWifiNanIface"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1138
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    move-result v0

    .line 1139
    .restart local v0    # "cmdId":S
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8()B

    move-result v3

    .line 1140
    .local v3, "sessionId":B
    invoke-virtual {p0, v0, v3}, Landroid/hardware/wifi/V1_0/IWifiNanIface$Stub;->stopSubscribeRequest(SB)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v4

    .line 1141
    .restart local v4    # "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1142
    invoke-virtual {v4, p3}, Landroid/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1143
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1144
    goto/16 :goto_16

    .line 1112
    .end local v0    # "cmdId":S
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "sessionId":B
    .end local v4    # "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    :pswitch_7
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_21

    goto :goto_e

    :cond_21
    move v2, v1

    .line 1113
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_e
    if-eqz v2, :cond_22

    .line 1114
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1115
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1116
    goto/16 :goto_16

    .line 1117
    :cond_22
    const-string v0, "android.hardware.wifi@1.0::IWifiNanIface"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1119
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    move-result v0

    .line 1120
    .restart local v0    # "cmdId":S
    new-instance v3, Landroid/hardware/wifi/V1_0/NanSubscribeRequest;

    invoke-direct {v3}, Landroid/hardware/wifi/V1_0/NanSubscribeRequest;-><init>()V

    .line 1121
    .local v3, "msg":Landroid/hardware/wifi/V1_0/NanSubscribeRequest;
    invoke-virtual {v3, p2}, Landroid/hardware/wifi/V1_0/NanSubscribeRequest;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1122
    invoke-virtual {p0, v0, v3}, Landroid/hardware/wifi/V1_0/IWifiNanIface$Stub;->startSubscribeRequest(SLandroid/hardware/wifi/V1_0/NanSubscribeRequest;)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v4

    .line 1123
    .restart local v4    # "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1124
    invoke-virtual {v4, p3}, Landroid/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1125
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1126
    goto/16 :goto_16

    .line 1094
    .end local v0    # "cmdId":S
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "msg":Landroid/hardware/wifi/V1_0/NanSubscribeRequest;
    .end local v4    # "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    :pswitch_8
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_23

    goto :goto_f

    :cond_23
    move v2, v1

    .line 1095
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_f
    if-eqz v2, :cond_24

    .line 1096
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1097
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1098
    goto/16 :goto_16

    .line 1099
    :cond_24
    const-string v0, "android.hardware.wifi@1.0::IWifiNanIface"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1101
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    move-result v0

    .line 1102
    .restart local v0    # "cmdId":S
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8()B

    move-result v3

    .line 1103
    .local v3, "sessionId":B
    invoke-virtual {p0, v0, v3}, Landroid/hardware/wifi/V1_0/IWifiNanIface$Stub;->stopPublishRequest(SB)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v4

    .line 1104
    .restart local v4    # "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1105
    invoke-virtual {v4, p3}, Landroid/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1106
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1107
    goto/16 :goto_16

    .line 1075
    .end local v0    # "cmdId":S
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "sessionId":B
    .end local v4    # "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    :pswitch_9
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_25

    goto :goto_10

    :cond_25
    move v2, v1

    .line 1076
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_10
    if-eqz v2, :cond_26

    .line 1077
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1078
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1079
    goto/16 :goto_16

    .line 1080
    :cond_26
    const-string v0, "android.hardware.wifi@1.0::IWifiNanIface"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1082
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    move-result v0

    .line 1083
    .restart local v0    # "cmdId":S
    new-instance v3, Landroid/hardware/wifi/V1_0/NanPublishRequest;

    invoke-direct {v3}, Landroid/hardware/wifi/V1_0/NanPublishRequest;-><init>()V

    .line 1084
    .local v3, "msg":Landroid/hardware/wifi/V1_0/NanPublishRequest;
    invoke-virtual {v3, p2}, Landroid/hardware/wifi/V1_0/NanPublishRequest;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1085
    invoke-virtual {p0, v0, v3}, Landroid/hardware/wifi/V1_0/IWifiNanIface$Stub;->startPublishRequest(SLandroid/hardware/wifi/V1_0/NanPublishRequest;)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v4

    .line 1086
    .restart local v4    # "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1087
    invoke-virtual {v4, p3}, Landroid/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1088
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1089
    goto/16 :goto_16

    .line 1058
    .end local v0    # "cmdId":S
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "msg":Landroid/hardware/wifi/V1_0/NanPublishRequest;
    .end local v4    # "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    :pswitch_a
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_27

    goto :goto_11

    :cond_27
    move v2, v1

    .line 1059
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_11
    if-eqz v2, :cond_28

    .line 1060
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1061
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1062
    goto/16 :goto_16

    .line 1063
    :cond_28
    const-string v0, "android.hardware.wifi@1.0::IWifiNanIface"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1065
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    move-result v0

    .line 1066
    .restart local v0    # "cmdId":S
    invoke-virtual {p0, v0}, Landroid/hardware/wifi/V1_0/IWifiNanIface$Stub;->disableRequest(S)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v3

    .line 1067
    .local v3, "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1068
    invoke-virtual {v3, p3}, Landroid/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1069
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1070
    goto/16 :goto_16

    .line 1039
    .end local v0    # "cmdId":S
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    :pswitch_b
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_29

    goto :goto_12

    :cond_29
    move v2, v1

    .line 1040
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_12
    if-eqz v2, :cond_2a

    .line 1041
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1042
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1043
    goto/16 :goto_16

    .line 1044
    :cond_2a
    const-string v0, "android.hardware.wifi@1.0::IWifiNanIface"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1046
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    move-result v0

    .line 1047
    .restart local v0    # "cmdId":S
    new-instance v3, Landroid/hardware/wifi/V1_0/NanConfigRequest;

    invoke-direct {v3}, Landroid/hardware/wifi/V1_0/NanConfigRequest;-><init>()V

    .line 1048
    .local v3, "msg":Landroid/hardware/wifi/V1_0/NanConfigRequest;
    invoke-virtual {v3, p2}, Landroid/hardware/wifi/V1_0/NanConfigRequest;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1049
    invoke-virtual {p0, v0, v3}, Landroid/hardware/wifi/V1_0/IWifiNanIface$Stub;->configRequest(SLandroid/hardware/wifi/V1_0/NanConfigRequest;)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v4

    .line 1050
    .restart local v4    # "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1051
    invoke-virtual {v4, p3}, Landroid/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1052
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1053
    goto/16 :goto_16

    .line 1020
    .end local v0    # "cmdId":S
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "msg":Landroid/hardware/wifi/V1_0/NanConfigRequest;
    .end local v4    # "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    :pswitch_c
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_2b

    goto :goto_13

    :cond_2b
    move v2, v1

    .line 1021
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_13
    if-eqz v2, :cond_2c

    .line 1022
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1023
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1024
    goto/16 :goto_16

    .line 1025
    :cond_2c
    const-string v0, "android.hardware.wifi@1.0::IWifiNanIface"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1027
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    move-result v0

    .line 1028
    .restart local v0    # "cmdId":S
    new-instance v3, Landroid/hardware/wifi/V1_0/NanEnableRequest;

    invoke-direct {v3}, Landroid/hardware/wifi/V1_0/NanEnableRequest;-><init>()V

    .line 1029
    .local v3, "msg":Landroid/hardware/wifi/V1_0/NanEnableRequest;
    invoke-virtual {v3, p2}, Landroid/hardware/wifi/V1_0/NanEnableRequest;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1030
    invoke-virtual {p0, v0, v3}, Landroid/hardware/wifi/V1_0/IWifiNanIface$Stub;->enableRequest(SLandroid/hardware/wifi/V1_0/NanEnableRequest;)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v4

    .line 1031
    .restart local v4    # "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1032
    invoke-virtual {v4, p3}, Landroid/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1033
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1034
    goto/16 :goto_16

    .line 1003
    .end local v0    # "cmdId":S
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "msg":Landroid/hardware/wifi/V1_0/NanEnableRequest;
    .end local v4    # "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    :pswitch_d
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_2d

    goto :goto_14

    :cond_2d
    move v2, v1

    .line 1004
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_14
    if-eqz v2, :cond_2e

    .line 1005
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1006
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1007
    goto/16 :goto_16

    .line 1008
    :cond_2e
    const-string v0, "android.hardware.wifi@1.0::IWifiNanIface"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1010
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    move-result v0

    .line 1011
    .restart local v0    # "cmdId":S
    invoke-virtual {p0, v0}, Landroid/hardware/wifi/V1_0/IWifiNanIface$Stub;->getCapabilitiesRequest(S)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v3

    .line 1012
    .local v3, "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1013
    invoke-virtual {v3, p3}, Landroid/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1014
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1015
    goto/16 :goto_16

    .line 986
    .end local v0    # "cmdId":S
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    :pswitch_e
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_2f

    goto :goto_15

    :cond_2f
    move v2, v1

    .line 987
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_15
    if-eqz v2, :cond_30

    .line 988
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 989
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 990
    goto :goto_16

    .line 991
    :cond_30
    const-string v0, "android.hardware.wifi@1.0::IWifiNanIface"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 993
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/wifi/V1_0/IWifiNanIfaceEventCallback;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/wifi/V1_0/IWifiNanIfaceEventCallback;

    move-result-object v0

    .line 994
    .local v0, "callback":Landroid/hardware/wifi/V1_0/IWifiNanIfaceEventCallback;
    invoke-virtual {p0, v0}, Landroid/hardware/wifi/V1_0/IWifiNanIface$Stub;->registerEventCallback(Landroid/hardware/wifi/V1_0/IWifiNanIfaceEventCallback;)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v3

    .line 995
    .restart local v3    # "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 996
    invoke-virtual {v3, p3}, Landroid/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 997
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 998
    goto :goto_16

    .line 966
    .end local v0    # "callback":Landroid/hardware/wifi/V1_0/IWifiNanIfaceEventCallback;
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    :pswitch_f
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_31

    move v1, v2

    nop

    .line 967
    .local v1, "_hidl_is_oneway":Z
    :cond_31
    if-eqz v1, :cond_32

    .line 968
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 969
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 970
    goto :goto_16

    .line 971
    :cond_32
    const-string v0, "android.hardware.wifi@1.0::IWifiIface"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 973
    new-instance v0, Landroid/hardware/wifi/V1_0/IWifiNanIface$Stub$2;

    invoke-direct {v0, p0, p3}, Landroid/hardware/wifi/V1_0/IWifiNanIface$Stub$2;-><init>(Landroid/hardware/wifi/V1_0/IWifiNanIface$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0}, Landroid/hardware/wifi/V1_0/IWifiNanIface$Stub;->getName(Landroid/hardware/wifi/V1_0/IWifiIface$getNameCallback;)V

    .line 981
    goto :goto_16

    .line 946
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_10
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_33

    move v1, v2

    nop

    .line 947
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_33
    if-eqz v1, :cond_34

    .line 948
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 949
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 950
    goto :goto_16

    .line 951
    :cond_34
    const-string v0, "android.hardware.wifi@1.0::IWifiIface"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 953
    new-instance v0, Landroid/hardware/wifi/V1_0/IWifiNanIface$Stub$1;

    invoke-direct {v0, p0, p3}, Landroid/hardware/wifi/V1_0/IWifiNanIface$Stub$1;-><init>(Landroid/hardware/wifi/V1_0/IWifiNanIface$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0}, Landroid/hardware/wifi/V1_0/IWifiNanIface$Stub;->getType(Landroid/hardware/wifi/V1_0/IWifiIface$getTypeCallback;)V

    .line 961
    nop

    .line 1415
    .end local v1    # "_hidl_is_oneway":Z
    :cond_35
    :goto_16
    return-void

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 899
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 1
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 925
    const-string v0, "android.hardware.wifi@1.0::IWifiNanIface"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 926
    return-object p0

    .line 928
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

    .line 932
    invoke-virtual {p0, p1}, Landroid/hardware/wifi/V1_0/IWifiNanIface$Stub;->registerService(Ljava/lang/String;)V

    .line 933
    return-void
.end method

.method public final setHALInstrumentation()V
    .locals 0

    .line 890
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 937
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/wifi/V1_0/IWifiNanIface$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 919
    const/4 v0, 0x1

    return v0
.end method
