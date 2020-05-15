.class public abstract Landroid/hardware/wifi/V1_0/IWifiNanIfaceEventCallback$Stub;
.super Landroid/os/HwBinder;
.source "IWifiNanIfaceEventCallback.java"

# interfaces
.implements Landroid/hardware/wifi/V1_0/IWifiNanIfaceEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/wifi/V1_0/IWifiNanIfaceEventCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 976
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .locals 0

    .line 979
    return-object p0
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .locals 3

    .line 1021
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 1022
    .local v0, "info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 1023
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 1024
    const/4 v1, 0x0

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    .line 1025
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

    .line 997
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    new-array v1, v1, [[B

    const/16 v2, 0x20

    new-array v3, v2, [B

    fill-array-data v3, :array_0

    const/4 v4, 0x0

    aput-object v3, v1, v4

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    nop

    :array_0
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

    :array_1
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
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 984
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "android.hardware.wifi@1.0::IWifiNanIfaceEventCallback"

    const-string v2, "android.hidl.base@1.0::IBase"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final interfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 991
    const-string v0, "android.hardware.wifi@1.0::IWifiNanIfaceEventCallback"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 1
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .line 1010
    const/4 v0, 0x1

    return v0
.end method

.method public final notifySyspropsChanged()V
    .locals 0

    .line 1030
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 1031
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

    .line 1059
    const/high16 v0, -0x80000000

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_7

    .line 1604
    :sswitch_0
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_0

    move v1, v2

    nop

    .line 1605
    .local v1, "_hidl_is_oneway":Z
    :cond_0
    if-eqz v1, :cond_45

    .line 1606
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1607
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1608
    goto/16 :goto_7

    .line 1591
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_1
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1

    move v1, v2

    nop

    .line 1592
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1
    if-eq v1, v2, :cond_2

    .line 1593
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1594
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1595
    goto/16 :goto_7

    .line 1596
    :cond_2
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1598
    invoke-virtual {p0}, Landroid/hardware/wifi/V1_0/IWifiNanIfaceEventCallback$Stub;->notifySyspropsChanged()V

    .line 1599
    goto/16 :goto_7

    .line 1575
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_2
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_3
    move v2, v1

    .line 1576
    .local v2, "_hidl_is_oneway":Z
    :goto_0
    if-eqz v2, :cond_4

    .line 1577
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1578
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1579
    goto/16 :goto_7

    .line 1580
    :cond_4
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1582
    invoke-virtual {p0}, Landroid/hardware/wifi/V1_0/IWifiNanIfaceEventCallback$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    .line 1583
    .local v0, "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1584
    invoke-virtual {v0, p3}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1585
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1586
    goto/16 :goto_7

    .line 1560
    .end local v0    # "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_3
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_5

    goto :goto_1

    :cond_5
    move v2, v1

    .line 1561
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_1
    if-eqz v2, :cond_6

    .line 1562
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1563
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1564
    goto/16 :goto_7

    .line 1565
    :cond_6
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1567
    invoke-virtual {p0}, Landroid/hardware/wifi/V1_0/IWifiNanIfaceEventCallback$Stub;->ping()V

    .line 1568
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1569
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1570
    goto/16 :goto_7

    .line 1550
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_4
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_7

    move v1, v2

    nop

    .line 1551
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_7
    if-eqz v1, :cond_45

    .line 1552
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1553
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1554
    goto/16 :goto_7

    .line 1537
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_5
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_8

    move v1, v2

    nop

    .line 1538
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_8
    if-eq v1, v2, :cond_9

    .line 1539
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1540
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1541
    goto/16 :goto_7

    .line 1542
    :cond_9
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1544
    invoke-virtual {p0}, Landroid/hardware/wifi/V1_0/IWifiNanIfaceEventCallback$Stub;->setHALInstrumentation()V

    .line 1545
    goto/16 :goto_7

    .line 1504
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_6
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_a

    goto :goto_2

    :cond_a
    move v2, v1

    .line 1505
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_2
    if-eqz v2, :cond_b

    .line 1506
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1507
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1508
    goto/16 :goto_7

    .line 1509
    :cond_b
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1511
    invoke-virtual {p0}, Landroid/hardware/wifi/V1_0/IWifiNanIfaceEventCallback$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 1512
    .local v0, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1514
    new-instance v3, Landroid/os/HwBlob;

    const/16 v4, 0x10

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 1516
    .local v3, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1517
    .local v4, "_hidl_vec_size":I
    const-wide/16 v5, 0x8

    invoke-virtual {v3, v5, v6, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 1518
    const-wide/16 v5, 0xc

    invoke-virtual {v3, v5, v6, v1}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 1519
    new-instance v5, Landroid/os/HwBlob;

    mul-int/lit8 v6, v4, 0x20

    invoke-direct {v5, v6}, Landroid/os/HwBlob;-><init>(I)V

    .line 1520
    .local v5, "childBlob":Landroid/os/HwBlob;
    nop

    .local v1, "_hidl_index_0":I
    :goto_3
    if-ge v1, v4, :cond_c

    .line 1522
    mul-int/lit8 v6, v1, 0x20

    int-to-long v6, v6

    .line 1523
    .local v6, "_hidl_array_offset_1":J
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 1524
    nop

    .line 1520
    .end local v6    # "_hidl_array_offset_1":J
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1527
    .end local v1    # "_hidl_index_0":I
    :cond_c
    const-wide/16 v6, 0x0

    invoke-virtual {v3, v6, v7, v5}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 1529
    .end local v4    # "_hidl_vec_size":I
    .end local v5    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 1531
    .end local v3    # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1532
    goto/16 :goto_7

    .line 1488
    .end local v0    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_7
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_d

    goto :goto_4

    :cond_d
    move v2, v1

    .line 1489
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_4
    if-eqz v2, :cond_e

    .line 1490
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1491
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1492
    goto/16 :goto_7

    .line 1493
    :cond_e
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1495
    invoke-virtual {p0}, Landroid/hardware/wifi/V1_0/IWifiNanIfaceEventCallback$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 1496
    .local v0, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1497
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1498
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1499
    goto/16 :goto_7

    .line 1474
    .end local v0    # "_hidl_out_descriptor":Ljava/lang/String;
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_8
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_f

    goto :goto_5

    :cond_f
    move v2, v1

    .line 1475
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_5
    if-eqz v2, :cond_10

    .line 1476
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1477
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1478
    goto/16 :goto_7

    .line 1479
    :cond_10
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1481
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1482
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1483
    goto/16 :goto_7

    .line 1458
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_9
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_11

    goto :goto_6

    :cond_11
    move v2, v1

    .line 1459
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_6
    if-eqz v2, :cond_12

    .line 1460
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1461
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1462
    goto/16 :goto_7

    .line 1463
    :cond_12
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1465
    invoke-virtual {p0}, Landroid/hardware/wifi/V1_0/IWifiNanIfaceEventCallback$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 1466
    .local v0, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1467
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 1468
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1469
    goto/16 :goto_7

    .line 1444
    .end local v0    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_0
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_13

    move v1, v2

    nop

    .line 1445
    .local v1, "_hidl_is_oneway":Z
    :cond_13
    if-eq v1, v2, :cond_14

    .line 1446
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1447
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1448
    goto/16 :goto_7

    .line 1449
    :cond_14
    const-string v0, "android.hardware.wifi@1.0::IWifiNanIfaceEventCallback"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1451
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1452
    .local v0, "ndpInstanceId":I
    invoke-virtual {p0, v0}, Landroid/hardware/wifi/V1_0/IWifiNanIfaceEventCallback$Stub;->eventDataPathTerminated(I)V

    .line 1453
    goto/16 :goto_7

    .line 1429
    .end local v0    # "ndpInstanceId":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_1
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_15

    move v1, v2

    nop

    .line 1430
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_15
    if-eq v1, v2, :cond_16

    .line 1431
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1432
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1433
    goto/16 :goto_7

    .line 1434
    :cond_16
    const-string v0, "android.hardware.wifi@1.0::IWifiNanIfaceEventCallback"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1436
    new-instance v0, Landroid/hardware/wifi/V1_0/NanDataPathConfirmInd;

    invoke-direct {v0}, Landroid/hardware/wifi/V1_0/NanDataPathConfirmInd;-><init>()V

    .line 1437
    .local v0, "event":Landroid/hardware/wifi/V1_0/NanDataPathConfirmInd;
    invoke-virtual {v0, p2}, Landroid/hardware/wifi/V1_0/NanDataPathConfirmInd;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1438
    invoke-virtual {p0, v0}, Landroid/hardware/wifi/V1_0/IWifiNanIfaceEventCallback$Stub;->eventDataPathConfirm(Landroid/hardware/wifi/V1_0/NanDataPathConfirmInd;)V

    .line 1439
    goto/16 :goto_7

    .line 1414
    .end local v0    # "event":Landroid/hardware/wifi/V1_0/NanDataPathConfirmInd;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_2
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_17

    move v1, v2

    nop

    .line 1415
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_17
    if-eq v1, v2, :cond_18

    .line 1416
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1417
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1418
    goto/16 :goto_7

    .line 1419
    :cond_18
    const-string v0, "android.hardware.wifi@1.0::IWifiNanIfaceEventCallback"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1421
    new-instance v0, Landroid/hardware/wifi/V1_0/NanDataPathRequestInd;

    invoke-direct {v0}, Landroid/hardware/wifi/V1_0/NanDataPathRequestInd;-><init>()V

    .line 1422
    .local v0, "event":Landroid/hardware/wifi/V1_0/NanDataPathRequestInd;
    invoke-virtual {v0, p2}, Landroid/hardware/wifi/V1_0/NanDataPathRequestInd;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1423
    invoke-virtual {p0, v0}, Landroid/hardware/wifi/V1_0/IWifiNanIfaceEventCallback$Stub;->eventDataPathRequest(Landroid/hardware/wifi/V1_0/NanDataPathRequestInd;)V

    .line 1424
    goto/16 :goto_7

    .line 1398
    .end local v0    # "event":Landroid/hardware/wifi/V1_0/NanDataPathRequestInd;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_3
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_19

    move v1, v2

    nop

    .line 1399
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_19
    if-eq v1, v2, :cond_1a

    .line 1400
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1401
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1402
    goto/16 :goto_7

    .line 1403
    :cond_1a
    const-string v0, "android.hardware.wifi@1.0::IWifiNanIfaceEventCallback"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1405
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    move-result v0

    .line 1406
    .local v0, "id":S
    new-instance v2, Landroid/hardware/wifi/V1_0/WifiNanStatus;

    invoke-direct {v2}, Landroid/hardware/wifi/V1_0/WifiNanStatus;-><init>()V

    .line 1407
    .local v2, "status":Landroid/hardware/wifi/V1_0/WifiNanStatus;
    invoke-virtual {v2, p2}, Landroid/hardware/wifi/V1_0/WifiNanStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1408
    invoke-virtual {p0, v0, v2}, Landroid/hardware/wifi/V1_0/IWifiNanIfaceEventCallback$Stub;->eventTransmitFollowup(SLandroid/hardware/wifi/V1_0/WifiNanStatus;)V

    .line 1409
    goto/16 :goto_7

    .line 1383
    .end local v0    # "id":S
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "status":Landroid/hardware/wifi/V1_0/WifiNanStatus;
    :pswitch_4
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1b

    move v1, v2

    nop

    .line 1384
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1b
    if-eq v1, v2, :cond_1c

    .line 1385
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1386
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1387
    goto/16 :goto_7

    .line 1388
    :cond_1c
    const-string v0, "android.hardware.wifi@1.0::IWifiNanIfaceEventCallback"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1390
    new-instance v0, Landroid/hardware/wifi/V1_0/NanFollowupReceivedInd;

    invoke-direct {v0}, Landroid/hardware/wifi/V1_0/NanFollowupReceivedInd;-><init>()V

    .line 1391
    .local v0, "event":Landroid/hardware/wifi/V1_0/NanFollowupReceivedInd;
    invoke-virtual {v0, p2}, Landroid/hardware/wifi/V1_0/NanFollowupReceivedInd;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1392
    invoke-virtual {p0, v0}, Landroid/hardware/wifi/V1_0/IWifiNanIfaceEventCallback$Stub;->eventFollowupReceived(Landroid/hardware/wifi/V1_0/NanFollowupReceivedInd;)V

    .line 1393
    goto/16 :goto_7

    .line 1368
    .end local v0    # "event":Landroid/hardware/wifi/V1_0/NanFollowupReceivedInd;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_5
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1d

    move v1, v2

    nop

    .line 1369
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1d
    if-eq v1, v2, :cond_1e

    .line 1370
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1371
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1372
    goto/16 :goto_7

    .line 1373
    :cond_1e
    const-string v0, "android.hardware.wifi@1.0::IWifiNanIfaceEventCallback"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1375
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8()B

    move-result v0

    .line 1376
    .local v0, "discoverySessionId":B
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1377
    .local v2, "peerId":I
    invoke-virtual {p0, v0, v2}, Landroid/hardware/wifi/V1_0/IWifiNanIfaceEventCallback$Stub;->eventMatchExpired(BI)V

    .line 1378
    goto/16 :goto_7

    .line 1353
    .end local v0    # "discoverySessionId":B
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "peerId":I
    :pswitch_6
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1f

    move v1, v2

    nop

    .line 1354
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1f
    if-eq v1, v2, :cond_20

    .line 1355
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1356
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1357
    goto/16 :goto_7

    .line 1358
    :cond_20
    const-string v0, "android.hardware.wifi@1.0::IWifiNanIfaceEventCallback"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1360
    new-instance v0, Landroid/hardware/wifi/V1_0/NanMatchInd;

    invoke-direct {v0}, Landroid/hardware/wifi/V1_0/NanMatchInd;-><init>()V

    .line 1361
    .local v0, "event":Landroid/hardware/wifi/V1_0/NanMatchInd;
    invoke-virtual {v0, p2}, Landroid/hardware/wifi/V1_0/NanMatchInd;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1362
    invoke-virtual {p0, v0}, Landroid/hardware/wifi/V1_0/IWifiNanIfaceEventCallback$Stub;->eventMatch(Landroid/hardware/wifi/V1_0/NanMatchInd;)V

    .line 1363
    goto/16 :goto_7

    .line 1337
    .end local v0    # "event":Landroid/hardware/wifi/V1_0/NanMatchInd;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_7
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_21

    move v1, v2

    nop

    .line 1338
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_21
    if-eq v1, v2, :cond_22

    .line 1339
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1340
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1341
    goto/16 :goto_7

    .line 1342
    :cond_22
    const-string v0, "android.hardware.wifi@1.0::IWifiNanIfaceEventCallback"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1344
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8()B

    move-result v0

    .line 1345
    .local v0, "sessionId":B
    new-instance v2, Landroid/hardware/wifi/V1_0/WifiNanStatus;

    invoke-direct {v2}, Landroid/hardware/wifi/V1_0/WifiNanStatus;-><init>()V

    .line 1346
    .local v2, "status":Landroid/hardware/wifi/V1_0/WifiNanStatus;
    invoke-virtual {v2, p2}, Landroid/hardware/wifi/V1_0/WifiNanStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1347
    invoke-virtual {p0, v0, v2}, Landroid/hardware/wifi/V1_0/IWifiNanIfaceEventCallback$Stub;->eventSubscribeTerminated(BLandroid/hardware/wifi/V1_0/WifiNanStatus;)V

    .line 1348
    goto/16 :goto_7

    .line 1321
    .end local v0    # "sessionId":B
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "status":Landroid/hardware/wifi/V1_0/WifiNanStatus;
    :pswitch_8
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_23

    move v1, v2

    nop

    .line 1322
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_23
    if-eq v1, v2, :cond_24

    .line 1323
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1324
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1325
    goto/16 :goto_7

    .line 1326
    :cond_24
    const-string v0, "android.hardware.wifi@1.0::IWifiNanIfaceEventCallback"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1328
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8()B

    move-result v0

    .line 1329
    .restart local v0    # "sessionId":B
    new-instance v2, Landroid/hardware/wifi/V1_0/WifiNanStatus;

    invoke-direct {v2}, Landroid/hardware/wifi/V1_0/WifiNanStatus;-><init>()V

    .line 1330
    .restart local v2    # "status":Landroid/hardware/wifi/V1_0/WifiNanStatus;
    invoke-virtual {v2, p2}, Landroid/hardware/wifi/V1_0/WifiNanStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1331
    invoke-virtual {p0, v0, v2}, Landroid/hardware/wifi/V1_0/IWifiNanIfaceEventCallback$Stub;->eventPublishTerminated(BLandroid/hardware/wifi/V1_0/WifiNanStatus;)V

    .line 1332
    goto/16 :goto_7

    .line 1306
    .end local v0    # "sessionId":B
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "status":Landroid/hardware/wifi/V1_0/WifiNanStatus;
    :pswitch_9
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_25

    move v1, v2

    nop

    .line 1307
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_25
    if-eq v1, v2, :cond_26

    .line 1308
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1309
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1310
    goto/16 :goto_7

    .line 1311
    :cond_26
    const-string v0, "android.hardware.wifi@1.0::IWifiNanIfaceEventCallback"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1313
    new-instance v0, Landroid/hardware/wifi/V1_0/WifiNanStatus;

    invoke-direct {v0}, Landroid/hardware/wifi/V1_0/WifiNanStatus;-><init>()V

    .line 1314
    .local v0, "status":Landroid/hardware/wifi/V1_0/WifiNanStatus;
    invoke-virtual {v0, p2}, Landroid/hardware/wifi/V1_0/WifiNanStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1315
    invoke-virtual {p0, v0}, Landroid/hardware/wifi/V1_0/IWifiNanIfaceEventCallback$Stub;->eventDisabled(Landroid/hardware/wifi/V1_0/WifiNanStatus;)V

    .line 1316
    goto/16 :goto_7

    .line 1291
    .end local v0    # "status":Landroid/hardware/wifi/V1_0/WifiNanStatus;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_a
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_27

    move v1, v2

    nop

    .line 1292
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_27
    if-eq v1, v2, :cond_28

    .line 1293
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1294
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1295
    goto/16 :goto_7

    .line 1296
    :cond_28
    const-string v0, "android.hardware.wifi@1.0::IWifiNanIfaceEventCallback"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1298
    new-instance v0, Landroid/hardware/wifi/V1_0/NanClusterEventInd;

    invoke-direct {v0}, Landroid/hardware/wifi/V1_0/NanClusterEventInd;-><init>()V

    .line 1299
    .local v0, "event":Landroid/hardware/wifi/V1_0/NanClusterEventInd;
    invoke-virtual {v0, p2}, Landroid/hardware/wifi/V1_0/NanClusterEventInd;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1300
    invoke-virtual {p0, v0}, Landroid/hardware/wifi/V1_0/IWifiNanIfaceEventCallback$Stub;->eventClusterEvent(Landroid/hardware/wifi/V1_0/NanClusterEventInd;)V

    .line 1301
    goto/16 :goto_7

    .line 1275
    .end local v0    # "event":Landroid/hardware/wifi/V1_0/NanClusterEventInd;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_b
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_29

    move v1, v2

    nop

    .line 1276
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_29
    if-eq v1, v2, :cond_2a

    .line 1277
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1278
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1279
    goto/16 :goto_7

    .line 1280
    :cond_2a
    const-string v0, "android.hardware.wifi@1.0::IWifiNanIfaceEventCallback"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1282
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    move-result v0

    .line 1283
    .local v0, "id":S
    new-instance v2, Landroid/hardware/wifi/V1_0/WifiNanStatus;

    invoke-direct {v2}, Landroid/hardware/wifi/V1_0/WifiNanStatus;-><init>()V

    .line 1284
    .restart local v2    # "status":Landroid/hardware/wifi/V1_0/WifiNanStatus;
    invoke-virtual {v2, p2}, Landroid/hardware/wifi/V1_0/WifiNanStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1285
    invoke-virtual {p0, v0, v2}, Landroid/hardware/wifi/V1_0/IWifiNanIfaceEventCallback$Stub;->notifyTerminateDataPathResponse(SLandroid/hardware/wifi/V1_0/WifiNanStatus;)V

    .line 1286
    goto/16 :goto_7

    .line 1259
    .end local v0    # "id":S
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "status":Landroid/hardware/wifi/V1_0/WifiNanStatus;
    :pswitch_c
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_2b

    move v1, v2

    nop

    .line 1260
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_2b
    if-eq v1, v2, :cond_2c

    .line 1261
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1262
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1263
    goto/16 :goto_7

    .line 1264
    :cond_2c
    const-string v0, "android.hardware.wifi@1.0::IWifiNanIfaceEventCallback"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1266
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    move-result v0

    .line 1267
    .restart local v0    # "id":S
    new-instance v2, Landroid/hardware/wifi/V1_0/WifiNanStatus;

    invoke-direct {v2}, Landroid/hardware/wifi/V1_0/WifiNanStatus;-><init>()V

    .line 1268
    .restart local v2    # "status":Landroid/hardware/wifi/V1_0/WifiNanStatus;
    invoke-virtual {v2, p2}, Landroid/hardware/wifi/V1_0/WifiNanStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1269
    invoke-virtual {p0, v0, v2}, Landroid/hardware/wifi/V1_0/IWifiNanIfaceEventCallback$Stub;->notifyRespondToDataPathIndicationResponse(SLandroid/hardware/wifi/V1_0/WifiNanStatus;)V

    .line 1270
    goto/16 :goto_7

    .line 1242
    .end local v0    # "id":S
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "status":Landroid/hardware/wifi/V1_0/WifiNanStatus;
    :pswitch_d
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_2d

    move v1, v2

    nop

    .line 1243
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_2d
    if-eq v1, v2, :cond_2e

    .line 1244
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1245
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1246
    goto/16 :goto_7

    .line 1247
    :cond_2e
    const-string v0, "android.hardware.wifi@1.0::IWifiNanIfaceEventCallback"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1249
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    move-result v0

    .line 1250
    .restart local v0    # "id":S
    new-instance v2, Landroid/hardware/wifi/V1_0/WifiNanStatus;

    invoke-direct {v2}, Landroid/hardware/wifi/V1_0/WifiNanStatus;-><init>()V

    .line 1251
    .restart local v2    # "status":Landroid/hardware/wifi/V1_0/WifiNanStatus;
    invoke-virtual {v2, p2}, Landroid/hardware/wifi/V1_0/WifiNanStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1252
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 1253
    .local v3, "ndpInstanceId":I
    invoke-virtual {p0, v0, v2, v3}, Landroid/hardware/wifi/V1_0/IWifiNanIfaceEventCallback$Stub;->notifyInitiateDataPathResponse(SLandroid/hardware/wifi/V1_0/WifiNanStatus;I)V

    .line 1254
    goto/16 :goto_7

    .line 1226
    .end local v0    # "id":S
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "status":Landroid/hardware/wifi/V1_0/WifiNanStatus;
    .end local v3    # "ndpInstanceId":I
    :pswitch_e
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_2f

    move v1, v2

    nop

    .line 1227
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_2f
    if-eq v1, v2, :cond_30

    .line 1228
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1229
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1230
    goto/16 :goto_7

    .line 1231
    :cond_30
    const-string v0, "android.hardware.wifi@1.0::IWifiNanIfaceEventCallback"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1233
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    move-result v0

    .line 1234
    .restart local v0    # "id":S
    new-instance v2, Landroid/hardware/wifi/V1_0/WifiNanStatus;

    invoke-direct {v2}, Landroid/hardware/wifi/V1_0/WifiNanStatus;-><init>()V

    .line 1235
    .restart local v2    # "status":Landroid/hardware/wifi/V1_0/WifiNanStatus;
    invoke-virtual {v2, p2}, Landroid/hardware/wifi/V1_0/WifiNanStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1236
    invoke-virtual {p0, v0, v2}, Landroid/hardware/wifi/V1_0/IWifiNanIfaceEventCallback$Stub;->notifyDeleteDataInterfaceResponse(SLandroid/hardware/wifi/V1_0/WifiNanStatus;)V

    .line 1237
    goto/16 :goto_7

    .line 1210
    .end local v0    # "id":S
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "status":Landroid/hardware/wifi/V1_0/WifiNanStatus;
    :pswitch_f
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_31

    move v1, v2

    nop

    .line 1211
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_31
    if-eq v1, v2, :cond_32

    .line 1212
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1213
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1214
    goto/16 :goto_7

    .line 1215
    :cond_32
    const-string v0, "android.hardware.wifi@1.0::IWifiNanIfaceEventCallback"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1217
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    move-result v0

    .line 1218
    .restart local v0    # "id":S
    new-instance v2, Landroid/hardware/wifi/V1_0/WifiNanStatus;

    invoke-direct {v2}, Landroid/hardware/wifi/V1_0/WifiNanStatus;-><init>()V

    .line 1219
    .restart local v2    # "status":Landroid/hardware/wifi/V1_0/WifiNanStatus;
    invoke-virtual {v2, p2}, Landroid/hardware/wifi/V1_0/WifiNanStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1220
    invoke-virtual {p0, v0, v2}, Landroid/hardware/wifi/V1_0/IWifiNanIfaceEventCallback$Stub;->notifyCreateDataInterfaceResponse(SLandroid/hardware/wifi/V1_0/WifiNanStatus;)V

    .line 1221
    goto/16 :goto_7

    .line 1194
    .end local v0    # "id":S
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "status":Landroid/hardware/wifi/V1_0/WifiNanStatus;
    :pswitch_10
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_33

    move v1, v2

    nop

    .line 1195
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_33
    if-eq v1, v2, :cond_34

    .line 1196
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1197
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1198
    goto/16 :goto_7

    .line 1199
    :cond_34
    const-string v0, "android.hardware.wifi@1.0::IWifiNanIfaceEventCallback"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1201
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    move-result v0

    .line 1202
    .restart local v0    # "id":S
    new-instance v2, Landroid/hardware/wifi/V1_0/WifiNanStatus;

    invoke-direct {v2}, Landroid/hardware/wifi/V1_0/WifiNanStatus;-><init>()V

    .line 1203
    .restart local v2    # "status":Landroid/hardware/wifi/V1_0/WifiNanStatus;
    invoke-virtual {v2, p2}, Landroid/hardware/wifi/V1_0/WifiNanStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1204
    invoke-virtual {p0, v0, v2}, Landroid/hardware/wifi/V1_0/IWifiNanIfaceEventCallback$Stub;->notifyTransmitFollowupResponse(SLandroid/hardware/wifi/V1_0/WifiNanStatus;)V

    .line 1205
    goto/16 :goto_7

    .line 1178
    .end local v0    # "id":S
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "status":Landroid/hardware/wifi/V1_0/WifiNanStatus;
    :pswitch_11
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_35

    move v1, v2

    nop

    .line 1179
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_35
    if-eq v1, v2, :cond_36

    .line 1180
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1181
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1182
    goto/16 :goto_7

    .line 1183
    :cond_36
    const-string v0, "android.hardware.wifi@1.0::IWifiNanIfaceEventCallback"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1185
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    move-result v0

    .line 1186
    .restart local v0    # "id":S
    new-instance v2, Landroid/hardware/wifi/V1_0/WifiNanStatus;

    invoke-direct {v2}, Landroid/hardware/wifi/V1_0/WifiNanStatus;-><init>()V

    .line 1187
    .restart local v2    # "status":Landroid/hardware/wifi/V1_0/WifiNanStatus;
    invoke-virtual {v2, p2}, Landroid/hardware/wifi/V1_0/WifiNanStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1188
    invoke-virtual {p0, v0, v2}, Landroid/hardware/wifi/V1_0/IWifiNanIfaceEventCallback$Stub;->notifyStopSubscribeResponse(SLandroid/hardware/wifi/V1_0/WifiNanStatus;)V

    .line 1189
    goto/16 :goto_7

    .line 1161
    .end local v0    # "id":S
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "status":Landroid/hardware/wifi/V1_0/WifiNanStatus;
    :pswitch_12
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_37

    move v1, v2

    nop

    .line 1162
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_37
    if-eq v1, v2, :cond_38

    .line 1163
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1164
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1165
    goto/16 :goto_7

    .line 1166
    :cond_38
    const-string v0, "android.hardware.wifi@1.0::IWifiNanIfaceEventCallback"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1168
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    move-result v0

    .line 1169
    .restart local v0    # "id":S
    new-instance v2, Landroid/hardware/wifi/V1_0/WifiNanStatus;

    invoke-direct {v2}, Landroid/hardware/wifi/V1_0/WifiNanStatus;-><init>()V

    .line 1170
    .restart local v2    # "status":Landroid/hardware/wifi/V1_0/WifiNanStatus;
    invoke-virtual {v2, p2}, Landroid/hardware/wifi/V1_0/WifiNanStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1171
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8()B

    move-result v3

    .line 1172
    .local v3, "sessionId":B
    invoke-virtual {p0, v0, v2, v3}, Landroid/hardware/wifi/V1_0/IWifiNanIfaceEventCallback$Stub;->notifyStartSubscribeResponse(SLandroid/hardware/wifi/V1_0/WifiNanStatus;B)V

    .line 1173
    goto/16 :goto_7

    .line 1145
    .end local v0    # "id":S
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "status":Landroid/hardware/wifi/V1_0/WifiNanStatus;
    .end local v3    # "sessionId":B
    :pswitch_13
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_39

    move v1, v2

    nop

    .line 1146
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_39
    if-eq v1, v2, :cond_3a

    .line 1147
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1148
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1149
    goto/16 :goto_7

    .line 1150
    :cond_3a
    const-string v0, "android.hardware.wifi@1.0::IWifiNanIfaceEventCallback"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1152
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    move-result v0

    .line 1153
    .restart local v0    # "id":S
    new-instance v2, Landroid/hardware/wifi/V1_0/WifiNanStatus;

    invoke-direct {v2}, Landroid/hardware/wifi/V1_0/WifiNanStatus;-><init>()V

    .line 1154
    .restart local v2    # "status":Landroid/hardware/wifi/V1_0/WifiNanStatus;
    invoke-virtual {v2, p2}, Landroid/hardware/wifi/V1_0/WifiNanStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1155
    invoke-virtual {p0, v0, v2}, Landroid/hardware/wifi/V1_0/IWifiNanIfaceEventCallback$Stub;->notifyStopPublishResponse(SLandroid/hardware/wifi/V1_0/WifiNanStatus;)V

    .line 1156
    goto/16 :goto_7

    .line 1128
    .end local v0    # "id":S
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "status":Landroid/hardware/wifi/V1_0/WifiNanStatus;
    :pswitch_14
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_3b

    move v1, v2

    nop

    .line 1129
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_3b
    if-eq v1, v2, :cond_3c

    .line 1130
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1131
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1132
    goto/16 :goto_7

    .line 1133
    :cond_3c
    const-string v0, "android.hardware.wifi@1.0::IWifiNanIfaceEventCallback"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1135
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    move-result v0

    .line 1136
    .restart local v0    # "id":S
    new-instance v2, Landroid/hardware/wifi/V1_0/WifiNanStatus;

    invoke-direct {v2}, Landroid/hardware/wifi/V1_0/WifiNanStatus;-><init>()V

    .line 1137
    .restart local v2    # "status":Landroid/hardware/wifi/V1_0/WifiNanStatus;
    invoke-virtual {v2, p2}, Landroid/hardware/wifi/V1_0/WifiNanStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1138
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8()B

    move-result v3

    .line 1139
    .restart local v3    # "sessionId":B
    invoke-virtual {p0, v0, v2, v3}, Landroid/hardware/wifi/V1_0/IWifiNanIfaceEventCallback$Stub;->notifyStartPublishResponse(SLandroid/hardware/wifi/V1_0/WifiNanStatus;B)V

    .line 1140
    goto/16 :goto_7

    .line 1112
    .end local v0    # "id":S
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "status":Landroid/hardware/wifi/V1_0/WifiNanStatus;
    .end local v3    # "sessionId":B
    :pswitch_15
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_3d

    move v1, v2

    nop

    .line 1113
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_3d
    if-eq v1, v2, :cond_3e

    .line 1114
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1115
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1116
    goto/16 :goto_7

    .line 1117
    :cond_3e
    const-string v0, "android.hardware.wifi@1.0::IWifiNanIfaceEventCallback"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1119
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    move-result v0

    .line 1120
    .restart local v0    # "id":S
    new-instance v2, Landroid/hardware/wifi/V1_0/WifiNanStatus;

    invoke-direct {v2}, Landroid/hardware/wifi/V1_0/WifiNanStatus;-><init>()V

    .line 1121
    .restart local v2    # "status":Landroid/hardware/wifi/V1_0/WifiNanStatus;
    invoke-virtual {v2, p2}, Landroid/hardware/wifi/V1_0/WifiNanStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1122
    invoke-virtual {p0, v0, v2}, Landroid/hardware/wifi/V1_0/IWifiNanIfaceEventCallback$Stub;->notifyDisableResponse(SLandroid/hardware/wifi/V1_0/WifiNanStatus;)V

    .line 1123
    goto/16 :goto_7

    .line 1096
    .end local v0    # "id":S
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "status":Landroid/hardware/wifi/V1_0/WifiNanStatus;
    :pswitch_16
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_3f

    move v1, v2

    nop

    .line 1097
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_3f
    if-eq v1, v2, :cond_40

    .line 1098
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1099
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1100
    goto :goto_7

    .line 1101
    :cond_40
    const-string v0, "android.hardware.wifi@1.0::IWifiNanIfaceEventCallback"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1103
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    move-result v0

    .line 1104
    .restart local v0    # "id":S
    new-instance v2, Landroid/hardware/wifi/V1_0/WifiNanStatus;

    invoke-direct {v2}, Landroid/hardware/wifi/V1_0/WifiNanStatus;-><init>()V

    .line 1105
    .restart local v2    # "status":Landroid/hardware/wifi/V1_0/WifiNanStatus;
    invoke-virtual {v2, p2}, Landroid/hardware/wifi/V1_0/WifiNanStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1106
    invoke-virtual {p0, v0, v2}, Landroid/hardware/wifi/V1_0/IWifiNanIfaceEventCallback$Stub;->notifyConfigResponse(SLandroid/hardware/wifi/V1_0/WifiNanStatus;)V

    .line 1107
    goto :goto_7

    .line 1080
    .end local v0    # "id":S
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "status":Landroid/hardware/wifi/V1_0/WifiNanStatus;
    :pswitch_17
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_41

    move v1, v2

    nop

    .line 1081
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_41
    if-eq v1, v2, :cond_42

    .line 1082
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1083
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1084
    goto :goto_7

    .line 1085
    :cond_42
    const-string v0, "android.hardware.wifi@1.0::IWifiNanIfaceEventCallback"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1087
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    move-result v0

    .line 1088
    .restart local v0    # "id":S
    new-instance v2, Landroid/hardware/wifi/V1_0/WifiNanStatus;

    invoke-direct {v2}, Landroid/hardware/wifi/V1_0/WifiNanStatus;-><init>()V

    .line 1089
    .restart local v2    # "status":Landroid/hardware/wifi/V1_0/WifiNanStatus;
    invoke-virtual {v2, p2}, Landroid/hardware/wifi/V1_0/WifiNanStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1090
    invoke-virtual {p0, v0, v2}, Landroid/hardware/wifi/V1_0/IWifiNanIfaceEventCallback$Stub;->notifyEnableResponse(SLandroid/hardware/wifi/V1_0/WifiNanStatus;)V

    .line 1091
    goto :goto_7

    .line 1062
    .end local v0    # "id":S
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "status":Landroid/hardware/wifi/V1_0/WifiNanStatus;
    :pswitch_18
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_43

    move v1, v2

    nop

    .line 1063
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_43
    if-eq v1, v2, :cond_44

    .line 1064
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1065
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1066
    goto :goto_7

    .line 1067
    :cond_44
    const-string v0, "android.hardware.wifi@1.0::IWifiNanIfaceEventCallback"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1069
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    move-result v0

    .line 1070
    .restart local v0    # "id":S
    new-instance v2, Landroid/hardware/wifi/V1_0/WifiNanStatus;

    invoke-direct {v2}, Landroid/hardware/wifi/V1_0/WifiNanStatus;-><init>()V

    .line 1071
    .restart local v2    # "status":Landroid/hardware/wifi/V1_0/WifiNanStatus;
    invoke-virtual {v2, p2}, Landroid/hardware/wifi/V1_0/WifiNanStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1072
    new-instance v3, Landroid/hardware/wifi/V1_0/NanCapabilities;

    invoke-direct {v3}, Landroid/hardware/wifi/V1_0/NanCapabilities;-><init>()V

    .line 1073
    .local v3, "capabilities":Landroid/hardware/wifi/V1_0/NanCapabilities;
    invoke-virtual {v3, p2}, Landroid/hardware/wifi/V1_0/NanCapabilities;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1074
    invoke-virtual {p0, v0, v2, v3}, Landroid/hardware/wifi/V1_0/IWifiNanIfaceEventCallback$Stub;->notifyCapabilitiesResponse(SLandroid/hardware/wifi/V1_0/WifiNanStatus;Landroid/hardware/wifi/V1_0/NanCapabilities;)V

    .line 1075
    nop

    .line 1613
    .end local v0    # "id":S
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "status":Landroid/hardware/wifi/V1_0/WifiNanStatus;
    .end local v3    # "capabilities":Landroid/hardware/wifi/V1_0/NanCapabilities;
    :cond_45
    :goto_7
    return-void

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 1015
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 1
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 1041
    const-string v0, "android.hardware.wifi@1.0::IWifiNanIfaceEventCallback"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1042
    return-object p0

    .line 1044
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

    .line 1048
    invoke-virtual {p0, p1}, Landroid/hardware/wifi/V1_0/IWifiNanIfaceEventCallback$Stub;->registerService(Ljava/lang/String;)V

    .line 1049
    return-void
.end method

.method public final setHALInstrumentation()V
    .locals 0

    .line 1006
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1053
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/wifi/V1_0/IWifiNanIfaceEventCallback$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 1035
    const/4 v0, 0x1

    return v0
.end method
