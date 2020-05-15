.class public abstract Lvendor/qti/hardware/wifi/V1_0/IWifiVendorStaIface$Stub;
.super Landroid/os/HwBinder;
.source "IWifiVendorStaIface.java"

# interfaces
.implements Lvendor/qti/hardware/wifi/V1_0/IWifiVendorStaIface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/qti/hardware/wifi/V1_0/IWifiVendorStaIface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 912
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .locals 0

    .line 915
    return-object p0
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .locals 3

    .line 963
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 964
    .local v0, "info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 965
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 966
    const/4 v1, 0x0

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    .line 967
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

    .line 936
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

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

    new-array v3, v2, [B

    fill-array-data v3, :array_2

    const/4 v4, 0x2

    aput-object v3, v1, v4

    new-array v3, v2, [B

    fill-array-data v3, :array_3

    const/4 v4, 0x3

    aput-object v3, v1, v4

    new-array v2, v2, [B

    fill-array-data v2, :array_4

    const/4 v3, 0x4

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_1
    .array-data 1
        -0xbt
        0x68t
        0x2dt
        -0x41t
        0x19t
        -0x9t
        0x12t
        -0x42t
        -0x7t
        -0x34t
        0x3ft
        -0x56t
        0x5ft
        -0x1dt
        -0x24t
        0x67t
        0xbt
        0x6ft
        -0x5t
        -0x35t
        0x62t
        -0x5ft
        0x47t
        -0x5ft
        -0x28t
        0x6bt
        -0x63t
        0x43t
        0x57t
        0x4ct
        -0x28t
        0x3ft
    .end array-data

    :array_2
    .array-data 1
        0x3bt
        -0x80t
        -0x6dt
        -0x2dt
        -0x62t
        -0xft
        -0x1ft
        0xet
        0x43t
        -0x3bt
        0x53t
        -0x76t
        -0x5t
        -0xbt
        -0x1t
        0x6et
        0x39t
        -0x48t
        -0x28t
        0x16t
        -0x72t
        -0x45t
        -0x1ft
        -0x67t
        -0x73t
        -0x67t
        0x3et
        -0x77t
        -0x1et
        0x5ft
        0x14t
        -0x5bt
    .end array-data

    :array_3
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

    :array_4
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
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 920
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "vendor.qti.hardware.wifi@1.0::IWifiVendorStaIface"

    const-string v2, "android.hardware.wifi@1.2::IWifiStaIface"

    const-string v3, "android.hardware.wifi@1.0::IWifiStaIface"

    const-string v4, "android.hardware.wifi@1.0::IWifiIface"

    const-string v5, "android.hidl.base@1.0::IBase"

    filled-new-array {v1, v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final interfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 930
    const-string v0, "vendor.qti.hardware.wifi@1.0::IWifiVendorStaIface"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 1
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .line 952
    const/4 v0, 0x1

    return v0
.end method

.method public final notifySyspropsChanged()V
    .locals 0

    .line 972
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 973
    return-void
.end method

.method public onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .locals 18
    .param p1, "_hidl_code"    # I
    .param p2, "_hidl_request"    # Landroid/os/HwParcel;
    .param p3, "_hidl_reply"    # Landroid/os/HwParcel;
    .param p4, "_hidl_flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    .line 1001
    const-wide/16 v0, 0x6

    const/4 v2, 0x6

    const/high16 v3, -0x80000000

    const/4 v10, 0x0

    const/4 v4, 0x1

    packed-switch p1, :pswitch_data_0

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_18

    .line 1701
    :sswitch_0
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_0

    move v10, v4

    nop

    :cond_0
    move v0, v10

    .line 1702
    .local v0, "_hidl_is_oneway":Z
    if-eqz v0, :cond_4b

    .line 1703
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1704
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1705
    goto/16 :goto_18

    .line 1688
    .end local v0    # "_hidl_is_oneway":Z
    :sswitch_1
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1

    move v10, v4

    nop

    :cond_1
    move v0, v10

    .line 1689
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v4, :cond_2

    .line 1690
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1691
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1692
    goto/16 :goto_18

    .line 1693
    :cond_2
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1695
    invoke-virtual/range {p0 .. p0}, Lvendor/qti/hardware/wifi/V1_0/IWifiVendorStaIface$Stub;->notifySyspropsChanged()V

    .line 1696
    goto/16 :goto_18

    .line 1672
    .end local v0    # "_hidl_is_oneway":Z
    :sswitch_2
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    move v4, v10

    :goto_0
    move v0, v4

    .line 1673
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_4

    .line 1674
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1675
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1676
    goto/16 :goto_18

    .line 1677
    :cond_4
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1679
    invoke-virtual/range {p0 .. p0}, Lvendor/qti/hardware/wifi/V1_0/IWifiVendorStaIface$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object v1

    .line 1680
    .local v1, "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-virtual {v9, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1681
    invoke-virtual {v1, v9}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1682
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1683
    goto/16 :goto_18

    .line 1657
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    :sswitch_3
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_5

    goto :goto_1

    :cond_5
    move v4, v10

    :goto_1
    move v0, v4

    .line 1658
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_6

    .line 1659
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1660
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1661
    goto/16 :goto_18

    .line 1662
    :cond_6
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1664
    invoke-virtual/range {p0 .. p0}, Lvendor/qti/hardware/wifi/V1_0/IWifiVendorStaIface$Stub;->ping()V

    .line 1665
    invoke-virtual {v9, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1666
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1667
    goto/16 :goto_18

    .line 1647
    .end local v0    # "_hidl_is_oneway":Z
    :sswitch_4
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_7

    move v10, v4

    nop

    :cond_7
    move v0, v10

    .line 1648
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_4b

    .line 1649
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1650
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1651
    goto/16 :goto_18

    .line 1634
    .end local v0    # "_hidl_is_oneway":Z
    :sswitch_5
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_8

    move v10, v4

    nop

    :cond_8
    move v0, v10

    .line 1635
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v4, :cond_9

    .line 1636
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1637
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1638
    goto/16 :goto_18

    .line 1639
    :cond_9
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1641
    invoke-virtual/range {p0 .. p0}, Lvendor/qti/hardware/wifi/V1_0/IWifiVendorStaIface$Stub;->setHALInstrumentation()V

    .line 1642
    goto/16 :goto_18

    .line 1601
    .end local v0    # "_hidl_is_oneway":Z
    :sswitch_6
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_a

    goto :goto_2

    :cond_a
    move v4, v10

    :goto_2
    move v0, v4

    .line 1602
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_b

    .line 1603
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1604
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1605
    goto/16 :goto_18

    .line 1606
    :cond_b
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1608
    invoke-virtual/range {p0 .. p0}, Lvendor/qti/hardware/wifi/V1_0/IWifiVendorStaIface$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v1

    .line 1609
    .local v1, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {v9, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1611
    new-instance v2, Landroid/os/HwBlob;

    const/16 v3, 0x10

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 1613
    .local v2, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1614
    .local v3, "_hidl_vec_size":I
    const-wide/16 v4, 0x8

    invoke-virtual {v2, v4, v5, v3}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 1615
    const-wide/16 v4, 0xc

    invoke-virtual {v2, v4, v5, v10}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 1616
    new-instance v4, Landroid/os/HwBlob;

    mul-int/lit8 v5, v3, 0x20

    invoke-direct {v4, v5}, Landroid/os/HwBlob;-><init>(I)V

    .line 1617
    .local v4, "childBlob":Landroid/os/HwBlob;
    nop

    .local v10, "_hidl_index_0":I
    :goto_3
    move v5, v10

    .end local v10    # "_hidl_index_0":I
    .local v5, "_hidl_index_0":I
    if-ge v5, v3, :cond_c

    .line 1619
    mul-int/lit8 v6, v5, 0x20

    int-to-long v10, v6

    .line 1620
    .local v10, "_hidl_array_offset_1":J
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    invoke-virtual {v4, v10, v11, v6}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 1621
    nop

    .line 1617
    .end local v10    # "_hidl_array_offset_1":J
    add-int/lit8 v10, v5, 0x1

    .end local v5    # "_hidl_index_0":I
    .local v10, "_hidl_index_0":I
    goto :goto_3

    .line 1624
    .end local v10    # "_hidl_index_0":I
    :cond_c
    const-wide/16 v5, 0x0

    invoke-virtual {v2, v5, v6, v4}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 1626
    .end local v3    # "_hidl_vec_size":I
    .end local v4    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v9, v2}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 1628
    .end local v2    # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1629
    goto/16 :goto_18

    .line 1585
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :sswitch_7
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_d

    goto :goto_4

    :cond_d
    move v4, v10

    :goto_4
    move v0, v4

    .line 1586
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_e

    .line 1587
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1588
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1589
    goto/16 :goto_18

    .line 1590
    :cond_e
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1592
    invoke-virtual/range {p0 .. p0}, Lvendor/qti/hardware/wifi/V1_0/IWifiVendorStaIface$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v1

    .line 1593
    .local v1, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {v9, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1594
    invoke-virtual {v9, v1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1595
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1596
    goto/16 :goto_18

    .line 1571
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "_hidl_out_descriptor":Ljava/lang/String;
    :sswitch_8
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_f

    goto :goto_5

    :cond_f
    move v4, v10

    :goto_5
    move v0, v4

    .line 1572
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_10

    .line 1573
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1574
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1575
    goto/16 :goto_18

    .line 1576
    :cond_10
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1578
    invoke-virtual {v9, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1579
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1580
    goto/16 :goto_18

    .line 1555
    .end local v0    # "_hidl_is_oneway":Z
    :sswitch_9
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_11

    goto :goto_6

    :cond_11
    move v4, v10

    :goto_6
    move v0, v4

    .line 1556
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_12

    .line 1557
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1558
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1559
    goto/16 :goto_18

    .line 1560
    :cond_12
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1562
    invoke-virtual/range {p0 .. p0}, Lvendor/qti/hardware/wifi/V1_0/IWifiVendorStaIface$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v1

    .line 1563
    .local v1, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v9, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1564
    invoke-virtual {v9, v1}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 1565
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1566
    goto/16 :goto_18

    .line 1538
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :pswitch_0
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_13

    goto :goto_7

    :cond_13
    move v4, v10

    :goto_7
    move v0, v4

    .line 1539
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_14

    .line 1540
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1541
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1542
    goto/16 :goto_18

    .line 1543
    :cond_14
    const-string v1, "vendor.qti.hardware.wifi@1.0::IWifiVendorStaIface"

    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1545
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1546
    .local v1, "level":I
    invoke-virtual {v7, v1}, Lvendor/qti/hardware/wifi/V1_0/IWifiVendorStaIface$Stub;->setLatencyLevel(I)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v2

    .line 1547
    .local v2, "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    invoke-virtual {v9, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1548
    invoke-virtual {v2, v9}, Landroid/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1549
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1550
    goto/16 :goto_18

    .line 1513
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "level":I
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    :pswitch_1
    and-int/lit8 v5, p4, 0x1

    if-eqz v5, :cond_15

    goto :goto_8

    :cond_15
    move v4, v10

    .line 1514
    .local v4, "_hidl_is_oneway":Z
    :goto_8
    if-eqz v4, :cond_16

    .line 1515
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1516
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1517
    goto/16 :goto_18

    .line 1518
    :cond_16
    const-string v3, "android.hardware.wifi@1.2::IWifiStaIface"

    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1520
    new-array v3, v2, [B

    .line 1522
    .local v3, "mac":[B
    invoke-virtual {v8, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 1524
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v5, 0x0

    .line 1525
    .local v5, "_hidl_array_offset_0":J
    invoke-virtual {v0, v5, v6, v3, v2}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 1526
    nop

    .line 1529
    .end local v0    # "_hidl_blob":Landroid/os/HwBlob;
    .end local v5    # "_hidl_array_offset_0":J
    invoke-virtual {v7, v3}, Lvendor/qti/hardware/wifi/V1_0/IWifiVendorStaIface$Stub;->setMacAddress([B)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v0

    .line 1530
    .local v0, "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    invoke-virtual {v9, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1531
    invoke-virtual {v0, v9}, Landroid/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1532
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1533
    goto/16 :goto_18

    .line 1493
    .end local v0    # "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    .end local v3    # "mac":[B
    .end local v4    # "_hidl_is_oneway":Z
    :pswitch_2
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_17

    move v10, v4

    nop

    :cond_17
    move v0, v10

    .line 1494
    .local v0, "_hidl_is_oneway":Z
    if-eqz v0, :cond_18

    .line 1495
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1496
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1497
    goto/16 :goto_18

    .line 1498
    :cond_18
    const-string v1, "android.hardware.wifi@1.2::IWifiStaIface"

    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1500
    new-instance v1, Lvendor/qti/hardware/wifi/V1_0/IWifiVendorStaIface$Stub$11;

    invoke-direct {v1, v7, v9}, Lvendor/qti/hardware/wifi/V1_0/IWifiVendorStaIface$Stub$11;-><init>(Lvendor/qti/hardware/wifi/V1_0/IWifiVendorStaIface$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {v7, v1}, Lvendor/qti/hardware/wifi/V1_0/IWifiVendorStaIface$Stub;->readApfPacketFilterData(Landroid/hardware/wifi/V1_2/IWifiStaIface$readApfPacketFilterDataCallback;)V

    .line 1508
    goto/16 :goto_18

    .line 1473
    .end local v0    # "_hidl_is_oneway":Z
    :pswitch_3
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_19

    move v10, v4

    nop

    :cond_19
    move v0, v10

    .line 1474
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_1a

    .line 1475
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1476
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1477
    goto/16 :goto_18

    .line 1478
    :cond_1a
    const-string v1, "android.hardware.wifi@1.0::IWifiStaIface"

    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1480
    new-instance v1, Lvendor/qti/hardware/wifi/V1_0/IWifiVendorStaIface$Stub$10;

    invoke-direct {v1, v7, v9}, Lvendor/qti/hardware/wifi/V1_0/IWifiVendorStaIface$Stub$10;-><init>(Lvendor/qti/hardware/wifi/V1_0/IWifiVendorStaIface$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {v7, v1}, Lvendor/qti/hardware/wifi/V1_0/IWifiVendorStaIface$Stub;->getDebugRxPacketFates(Landroid/hardware/wifi/V1_0/IWifiStaIface$getDebugRxPacketFatesCallback;)V

    .line 1488
    goto/16 :goto_18

    .line 1453
    .end local v0    # "_hidl_is_oneway":Z
    :pswitch_4
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1b

    move v10, v4

    nop

    :cond_1b
    move v0, v10

    .line 1454
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_1c

    .line 1455
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1456
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1457
    goto/16 :goto_18

    .line 1458
    :cond_1c
    const-string v1, "android.hardware.wifi@1.0::IWifiStaIface"

    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1460
    new-instance v1, Lvendor/qti/hardware/wifi/V1_0/IWifiVendorStaIface$Stub$9;

    invoke-direct {v1, v7, v9}, Lvendor/qti/hardware/wifi/V1_0/IWifiVendorStaIface$Stub$9;-><init>(Lvendor/qti/hardware/wifi/V1_0/IWifiVendorStaIface$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {v7, v1}, Lvendor/qti/hardware/wifi/V1_0/IWifiVendorStaIface$Stub;->getDebugTxPacketFates(Landroid/hardware/wifi/V1_0/IWifiStaIface$getDebugTxPacketFatesCallback;)V

    .line 1468
    goto/16 :goto_18

    .line 1437
    .end local v0    # "_hidl_is_oneway":Z
    :pswitch_5
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1d

    goto :goto_9

    :cond_1d
    move v4, v10

    :goto_9
    move v0, v4

    .line 1438
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_1e

    .line 1439
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1440
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1441
    goto/16 :goto_18

    .line 1442
    :cond_1e
    const-string v1, "android.hardware.wifi@1.0::IWifiStaIface"

    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1444
    invoke-virtual/range {p0 .. p0}, Lvendor/qti/hardware/wifi/V1_0/IWifiVendorStaIface$Stub;->startDebugPacketFateMonitoring()Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v1

    .line 1445
    .local v1, "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    invoke-virtual {v9, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1446
    invoke-virtual {v1, v9}, Landroid/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1447
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1448
    goto/16 :goto_18

    .line 1412
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    :pswitch_6
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1f

    goto :goto_a

    :cond_1f
    move v4, v10

    :goto_a
    move v0, v4

    .line 1413
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_20

    .line 1414
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1415
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1416
    goto/16 :goto_18

    .line 1417
    :cond_20
    const-string v1, "android.hardware.wifi@1.0::IWifiStaIface"

    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1419
    const/4 v1, 0x3

    new-array v2, v1, [B

    .line 1421
    .local v2, "oui":[B
    const-wide/16 v3, 0x3

    invoke-virtual {v8, v3, v4}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v3

    .line 1423
    .local v3, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v4, 0x0

    .line 1424
    .local v4, "_hidl_array_offset_0":J
    invoke-virtual {v3, v4, v5, v2, v1}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 1425
    nop

    .line 1428
    .end local v3    # "_hidl_blob":Landroid/os/HwBlob;
    .end local v4    # "_hidl_array_offset_0":J
    invoke-virtual {v7, v2}, Lvendor/qti/hardware/wifi/V1_0/IWifiVendorStaIface$Stub;->setScanningMacOui([B)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v1

    .line 1429
    .restart local v1    # "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    invoke-virtual {v9, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1430
    invoke-virtual {v1, v9}, Landroid/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1431
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1432
    goto/16 :goto_18

    .line 1395
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    .end local v2    # "oui":[B
    :pswitch_7
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_21

    goto :goto_b

    :cond_21
    move v4, v10

    :goto_b
    move v0, v4

    .line 1396
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_22

    .line 1397
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1398
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1399
    goto/16 :goto_18

    .line 1400
    :cond_22
    const-string v1, "android.hardware.wifi@1.0::IWifiStaIface"

    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1402
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1403
    .local v1, "cmdId":I
    invoke-virtual {v7, v1}, Lvendor/qti/hardware/wifi/V1_0/IWifiVendorStaIface$Stub;->stopSendingKeepAlivePackets(I)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v2

    .line 1404
    .local v2, "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    invoke-virtual {v9, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1405
    invoke-virtual {v2, v9}, Landroid/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1406
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1407
    goto/16 :goto_18

    .line 1357
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "cmdId":I
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    :pswitch_8
    and-int/lit8 v5, p4, 0x1

    if-eqz v5, :cond_23

    goto :goto_c

    :cond_23
    move v4, v10

    :goto_c
    move v11, v4

    .line 1358
    .local v11, "_hidl_is_oneway":Z
    if-eqz v11, :cond_24

    .line 1359
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1360
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1361
    goto/16 :goto_18

    .line 1362
    :cond_24
    const-string v3, "android.hardware.wifi@1.0::IWifiStaIface"

    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1364
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v12

    .line 1365
    .local v12, "cmdId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v13

    .line 1366
    .local v13, "ipPacketData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt16()S

    move-result v14

    .line 1367
    .local v14, "etherType":S
    new-array v6, v2, [B

    .line 1369
    .local v6, "srcAddress":[B
    invoke-virtual {v8, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v3

    .line 1371
    .restart local v3    # "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v4, 0x0

    .line 1372
    .restart local v4    # "_hidl_array_offset_0":J
    invoke-virtual {v3, v4, v5, v6, v2}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 1373
    nop

    .line 1376
    .end local v3    # "_hidl_blob":Landroid/os/HwBlob;
    .end local v4    # "_hidl_array_offset_0":J
    new-array v5, v2, [B

    .line 1378
    .local v5, "dstAddress":[B
    invoke-virtual {v8, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 1380
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v3, 0x0

    .line 1381
    .local v3, "_hidl_array_offset_0":J
    invoke-virtual {v0, v3, v4, v5, v2}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 1382
    nop

    .line 1385
    .end local v0    # "_hidl_blob":Landroid/os/HwBlob;
    .end local v3    # "_hidl_array_offset_0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v15

    .line 1386
    .local v15, "periodInMs":I
    move-object v0, v7

    move v1, v12

    move-object v2, v13

    move v3, v14

    move-object v4, v6

    move-object/from16 v16, v5

    .end local v5    # "dstAddress":[B
    .local v16, "dstAddress":[B
    move-object/from16 v17, v6

    move v6, v15

    .end local v6    # "srcAddress":[B
    .local v17, "srcAddress":[B
    invoke-virtual/range {v0 .. v6}, Lvendor/qti/hardware/wifi/V1_0/IWifiVendorStaIface$Stub;->startSendingKeepAlivePackets(ILjava/util/ArrayList;S[B[BI)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v0

    .line 1387
    .local v0, "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    invoke-virtual {v9, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1388
    invoke-virtual {v0, v9}, Landroid/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1389
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1390
    goto/16 :goto_18

    .line 1340
    .end local v0    # "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    .end local v11    # "_hidl_is_oneway":Z
    .end local v12    # "cmdId":I
    .end local v13    # "ipPacketData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    .end local v14    # "etherType":S
    .end local v15    # "periodInMs":I
    .end local v16    # "dstAddress":[B
    .end local v17    # "srcAddress":[B
    :pswitch_9
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_25

    goto :goto_d

    :cond_25
    move v4, v10

    :goto_d
    move v0, v4

    .line 1341
    .local v0, "_hidl_is_oneway":Z
    if-eqz v0, :cond_26

    .line 1342
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1343
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1344
    goto/16 :goto_18

    .line 1345
    :cond_26
    const-string v1, "android.hardware.wifi@1.0::IWifiStaIface"

    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1347
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 1348
    .local v1, "enable":Z
    invoke-virtual {v7, v1}, Lvendor/qti/hardware/wifi/V1_0/IWifiVendorStaIface$Stub;->enableNdOffload(Z)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v2

    .line 1349
    .restart local v2    # "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    invoke-virtual {v9, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1350
    invoke-virtual {v2, v9}, Landroid/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1351
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1352
    goto/16 :goto_18

    .line 1323
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "enable":Z
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    :pswitch_a
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_27

    goto :goto_e

    :cond_27
    move v4, v10

    :goto_e
    move v0, v4

    .line 1324
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_28

    .line 1325
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1326
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1327
    goto/16 :goto_18

    .line 1328
    :cond_28
    const-string v1, "android.hardware.wifi@1.0::IWifiStaIface"

    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1330
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8()B

    move-result v1

    .line 1331
    .local v1, "state":B
    invoke-virtual {v7, v1}, Lvendor/qti/hardware/wifi/V1_0/IWifiVendorStaIface$Stub;->setRoamingState(B)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v2

    .line 1332
    .restart local v2    # "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    invoke-virtual {v9, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1333
    invoke-virtual {v2, v9}, Landroid/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1334
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1335
    goto/16 :goto_18

    .line 1305
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "state":B
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    :pswitch_b
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_29

    goto :goto_f

    :cond_29
    move v4, v10

    :goto_f
    move v0, v4

    .line 1306
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_2a

    .line 1307
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1308
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1309
    goto/16 :goto_18

    .line 1310
    :cond_2a
    const-string v1, "android.hardware.wifi@1.0::IWifiStaIface"

    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1312
    new-instance v1, Landroid/hardware/wifi/V1_0/StaRoamingConfig;

    invoke-direct {v1}, Landroid/hardware/wifi/V1_0/StaRoamingConfig;-><init>()V

    .line 1313
    .local v1, "config":Landroid/hardware/wifi/V1_0/StaRoamingConfig;
    invoke-virtual {v1, v8}, Landroid/hardware/wifi/V1_0/StaRoamingConfig;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1314
    invoke-virtual {v7, v1}, Lvendor/qti/hardware/wifi/V1_0/IWifiVendorStaIface$Stub;->configureRoaming(Landroid/hardware/wifi/V1_0/StaRoamingConfig;)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v2

    .line 1315
    .restart local v2    # "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    invoke-virtual {v9, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1316
    invoke-virtual {v2, v9}, Landroid/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1317
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1318
    goto/16 :goto_18

    .line 1285
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "config":Landroid/hardware/wifi/V1_0/StaRoamingConfig;
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    :pswitch_c
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_2b

    move v10, v4

    nop

    :cond_2b
    move v0, v10

    .line 1286
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_2c

    .line 1287
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1288
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1289
    goto/16 :goto_18

    .line 1290
    :cond_2c
    const-string v1, "android.hardware.wifi@1.0::IWifiStaIface"

    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1292
    new-instance v1, Lvendor/qti/hardware/wifi/V1_0/IWifiVendorStaIface$Stub$8;

    invoke-direct {v1, v7, v9}, Lvendor/qti/hardware/wifi/V1_0/IWifiVendorStaIface$Stub$8;-><init>(Lvendor/qti/hardware/wifi/V1_0/IWifiVendorStaIface$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {v7, v1}, Lvendor/qti/hardware/wifi/V1_0/IWifiVendorStaIface$Stub;->getRoamingCapabilities(Landroid/hardware/wifi/V1_0/IWifiStaIface$getRoamingCapabilitiesCallback;)V

    .line 1300
    goto/16 :goto_18

    .line 1268
    .end local v0    # "_hidl_is_oneway":Z
    :pswitch_d
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_2d

    goto :goto_10

    :cond_2d
    move v4, v10

    :goto_10
    move v0, v4

    .line 1269
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_2e

    .line 1270
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1271
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1272
    goto/16 :goto_18

    .line 1273
    :cond_2e
    const-string v1, "android.hardware.wifi@1.0::IWifiStaIface"

    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1275
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1276
    .local v1, "cmdId":I
    invoke-virtual {v7, v1}, Lvendor/qti/hardware/wifi/V1_0/IWifiVendorStaIface$Stub;->stopRssiMonitoring(I)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v2

    .line 1277
    .restart local v2    # "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    invoke-virtual {v9, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1278
    invoke-virtual {v2, v9}, Landroid/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1279
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1280
    goto/16 :goto_18

    .line 1249
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "cmdId":I
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    :pswitch_e
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_2f

    goto :goto_11

    :cond_2f
    move v4, v10

    :goto_11
    move v0, v4

    .line 1250
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_30

    .line 1251
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1252
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1253
    goto/16 :goto_18

    .line 1254
    :cond_30
    const-string v1, "android.hardware.wifi@1.0::IWifiStaIface"

    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1256
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1257
    .restart local v1    # "cmdId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1258
    .local v2, "maxRssi":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 1259
    .local v3, "minRssi":I
    invoke-virtual {v7, v1, v2, v3}, Lvendor/qti/hardware/wifi/V1_0/IWifiVendorStaIface$Stub;->startRssiMonitoring(III)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v4

    .line 1260
    .local v4, "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    invoke-virtual {v9, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1261
    invoke-virtual {v4, v9}, Landroid/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1262
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1263
    goto/16 :goto_18

    .line 1229
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "cmdId":I
    .end local v2    # "maxRssi":I
    .end local v3    # "minRssi":I
    .end local v4    # "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    :pswitch_f
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_31

    move v10, v4

    nop

    :cond_31
    move v0, v10

    .line 1230
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_32

    .line 1231
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1232
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1233
    goto/16 :goto_18

    .line 1234
    :cond_32
    const-string v1, "android.hardware.wifi@1.0::IWifiStaIface"

    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1236
    new-instance v1, Lvendor/qti/hardware/wifi/V1_0/IWifiVendorStaIface$Stub$7;

    invoke-direct {v1, v7, v9}, Lvendor/qti/hardware/wifi/V1_0/IWifiVendorStaIface$Stub$7;-><init>(Lvendor/qti/hardware/wifi/V1_0/IWifiVendorStaIface$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {v7, v1}, Lvendor/qti/hardware/wifi/V1_0/IWifiVendorStaIface$Stub;->getLinkLayerStats(Landroid/hardware/wifi/V1_0/IWifiStaIface$getLinkLayerStatsCallback;)V

    .line 1244
    goto/16 :goto_18

    .line 1213
    .end local v0    # "_hidl_is_oneway":Z
    :pswitch_10
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_33

    goto :goto_12

    :cond_33
    move v4, v10

    :goto_12
    move v0, v4

    .line 1214
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_34

    .line 1215
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1216
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1217
    goto/16 :goto_18

    .line 1218
    :cond_34
    const-string v1, "android.hardware.wifi@1.0::IWifiStaIface"

    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1220
    invoke-virtual/range {p0 .. p0}, Lvendor/qti/hardware/wifi/V1_0/IWifiVendorStaIface$Stub;->disableLinkLayerStatsCollection()Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v1

    .line 1221
    .local v1, "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    invoke-virtual {v9, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1222
    invoke-virtual {v1, v9}, Landroid/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1223
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1224
    goto/16 :goto_18

    .line 1196
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    :pswitch_11
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_35

    goto :goto_13

    :cond_35
    move v4, v10

    :goto_13
    move v0, v4

    .line 1197
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_36

    .line 1198
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1199
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1200
    goto/16 :goto_18

    .line 1201
    :cond_36
    const-string v1, "android.hardware.wifi@1.0::IWifiStaIface"

    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1203
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 1204
    .local v1, "debug":Z
    invoke-virtual {v7, v1}, Lvendor/qti/hardware/wifi/V1_0/IWifiVendorStaIface$Stub;->enableLinkLayerStatsCollection(Z)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v2

    .line 1205
    .local v2, "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    invoke-virtual {v9, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1206
    invoke-virtual {v2, v9}, Landroid/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1207
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1208
    goto/16 :goto_18

    .line 1179
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "debug":Z
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    :pswitch_12
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_37

    goto :goto_14

    :cond_37
    move v4, v10

    :goto_14
    move v0, v4

    .line 1180
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_38

    .line 1181
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1182
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1183
    goto/16 :goto_18

    .line 1184
    :cond_38
    const-string v1, "android.hardware.wifi@1.0::IWifiStaIface"

    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1186
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1187
    .local v1, "cmdId":I
    invoke-virtual {v7, v1}, Lvendor/qti/hardware/wifi/V1_0/IWifiVendorStaIface$Stub;->stopBackgroundScan(I)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v2

    .line 1188
    .restart local v2    # "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    invoke-virtual {v9, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1189
    invoke-virtual {v2, v9}, Landroid/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1190
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1191
    goto/16 :goto_18

    .line 1160
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "cmdId":I
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    :pswitch_13
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_39

    goto :goto_15

    :cond_39
    move v4, v10

    :goto_15
    move v0, v4

    .line 1161
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_3a

    .line 1162
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1163
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1164
    goto/16 :goto_18

    .line 1165
    :cond_3a
    const-string v1, "android.hardware.wifi@1.0::IWifiStaIface"

    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1167
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1168
    .restart local v1    # "cmdId":I
    new-instance v2, Landroid/hardware/wifi/V1_0/StaBackgroundScanParameters;

    invoke-direct {v2}, Landroid/hardware/wifi/V1_0/StaBackgroundScanParameters;-><init>()V

    .line 1169
    .local v2, "params":Landroid/hardware/wifi/V1_0/StaBackgroundScanParameters;
    invoke-virtual {v2, v8}, Landroid/hardware/wifi/V1_0/StaBackgroundScanParameters;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1170
    invoke-virtual {v7, v1, v2}, Lvendor/qti/hardware/wifi/V1_0/IWifiVendorStaIface$Stub;->startBackgroundScan(ILandroid/hardware/wifi/V1_0/StaBackgroundScanParameters;)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v3

    .line 1171
    .local v3, "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    invoke-virtual {v9, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1172
    invoke-virtual {v3, v9}, Landroid/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1173
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1174
    goto/16 :goto_18

    .line 1139
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "cmdId":I
    .end local v2    # "params":Landroid/hardware/wifi/V1_0/StaBackgroundScanParameters;
    .end local v3    # "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    :pswitch_14
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_3b

    move v10, v4

    nop

    :cond_3b
    move v0, v10

    .line 1140
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_3c

    .line 1141
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1142
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1143
    goto/16 :goto_18

    .line 1144
    :cond_3c
    const-string v1, "android.hardware.wifi@1.0::IWifiStaIface"

    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1146
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1147
    .local v1, "band":I
    new-instance v2, Lvendor/qti/hardware/wifi/V1_0/IWifiVendorStaIface$Stub$6;

    invoke-direct {v2, v7, v9}, Lvendor/qti/hardware/wifi/V1_0/IWifiVendorStaIface$Stub$6;-><init>(Lvendor/qti/hardware/wifi/V1_0/IWifiVendorStaIface$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {v7, v1, v2}, Lvendor/qti/hardware/wifi/V1_0/IWifiVendorStaIface$Stub;->getValidFrequenciesForBand(ILandroid/hardware/wifi/V1_0/IWifiStaIface$getValidFrequenciesForBandCallback;)V

    .line 1155
    goto/16 :goto_18

    .line 1119
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "band":I
    :pswitch_15
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_3d

    move v10, v4

    nop

    :cond_3d
    move v0, v10

    .line 1120
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_3e

    .line 1121
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1122
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1123
    goto/16 :goto_18

    .line 1124
    :cond_3e
    const-string v1, "android.hardware.wifi@1.0::IWifiStaIface"

    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1126
    new-instance v1, Lvendor/qti/hardware/wifi/V1_0/IWifiVendorStaIface$Stub$5;

    invoke-direct {v1, v7, v9}, Lvendor/qti/hardware/wifi/V1_0/IWifiVendorStaIface$Stub$5;-><init>(Lvendor/qti/hardware/wifi/V1_0/IWifiVendorStaIface$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {v7, v1}, Lvendor/qti/hardware/wifi/V1_0/IWifiVendorStaIface$Stub;->getBackgroundScanCapabilities(Landroid/hardware/wifi/V1_0/IWifiStaIface$getBackgroundScanCapabilitiesCallback;)V

    .line 1134
    goto/16 :goto_18

    .line 1101
    .end local v0    # "_hidl_is_oneway":Z
    :pswitch_16
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_3f

    goto :goto_16

    :cond_3f
    move v4, v10

    :goto_16
    move v0, v4

    .line 1102
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_40

    .line 1103
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1104
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1105
    goto/16 :goto_18

    .line 1106
    :cond_40
    const-string v1, "android.hardware.wifi@1.0::IWifiStaIface"

    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1108
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1109
    .local v1, "cmdId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 1110
    .local v2, "program":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {v7, v1, v2}, Lvendor/qti/hardware/wifi/V1_0/IWifiVendorStaIface$Stub;->installApfPacketFilter(ILjava/util/ArrayList;)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v3

    .line 1111
    .restart local v3    # "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    invoke-virtual {v9, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1112
    invoke-virtual {v3, v9}, Landroid/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1113
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1114
    goto/16 :goto_18

    .line 1081
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "cmdId":I
    .end local v2    # "program":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    .end local v3    # "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    :pswitch_17
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_41

    move v10, v4

    nop

    :cond_41
    move v0, v10

    .line 1082
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_42

    .line 1083
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1084
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1085
    goto/16 :goto_18

    .line 1086
    :cond_42
    const-string v1, "android.hardware.wifi@1.0::IWifiStaIface"

    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1088
    new-instance v1, Lvendor/qti/hardware/wifi/V1_0/IWifiVendorStaIface$Stub$4;

    invoke-direct {v1, v7, v9}, Lvendor/qti/hardware/wifi/V1_0/IWifiVendorStaIface$Stub$4;-><init>(Lvendor/qti/hardware/wifi/V1_0/IWifiVendorStaIface$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {v7, v1}, Lvendor/qti/hardware/wifi/V1_0/IWifiVendorStaIface$Stub;->getApfPacketFilterCapabilities(Landroid/hardware/wifi/V1_0/IWifiStaIface$getApfPacketFilterCapabilitiesCallback;)V

    .line 1096
    goto/16 :goto_18

    .line 1061
    .end local v0    # "_hidl_is_oneway":Z
    :pswitch_18
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_43

    move v10, v4

    nop

    :cond_43
    move v0, v10

    .line 1062
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_44

    .line 1063
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1064
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1065
    goto/16 :goto_18

    .line 1066
    :cond_44
    const-string v1, "android.hardware.wifi@1.0::IWifiStaIface"

    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1068
    new-instance v1, Lvendor/qti/hardware/wifi/V1_0/IWifiVendorStaIface$Stub$3;

    invoke-direct {v1, v7, v9}, Lvendor/qti/hardware/wifi/V1_0/IWifiVendorStaIface$Stub$3;-><init>(Lvendor/qti/hardware/wifi/V1_0/IWifiVendorStaIface$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {v7, v1}, Lvendor/qti/hardware/wifi/V1_0/IWifiVendorStaIface$Stub;->getCapabilities(Landroid/hardware/wifi/V1_0/IWifiStaIface$getCapabilitiesCallback;)V

    .line 1076
    goto/16 :goto_18

    .line 1044
    .end local v0    # "_hidl_is_oneway":Z
    :pswitch_19
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_45

    goto :goto_17

    :cond_45
    move v4, v10

    :goto_17
    move v0, v4

    .line 1045
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_46

    .line 1046
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1047
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1048
    goto :goto_18

    .line 1049
    :cond_46
    const-string v1, "android.hardware.wifi@1.0::IWifiStaIface"

    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1051
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/wifi/V1_0/IWifiStaIfaceEventCallback;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/wifi/V1_0/IWifiStaIfaceEventCallback;

    move-result-object v1

    .line 1052
    .local v1, "callback":Landroid/hardware/wifi/V1_0/IWifiStaIfaceEventCallback;
    invoke-virtual {v7, v1}, Lvendor/qti/hardware/wifi/V1_0/IWifiVendorStaIface$Stub;->registerEventCallback(Landroid/hardware/wifi/V1_0/IWifiStaIfaceEventCallback;)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v2

    .line 1053
    .local v2, "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    invoke-virtual {v9, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1054
    invoke-virtual {v2, v9}, Landroid/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1055
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1056
    goto :goto_18

    .line 1024
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "callback":Landroid/hardware/wifi/V1_0/IWifiStaIfaceEventCallback;
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    :pswitch_1a
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_47

    move v10, v4

    nop

    :cond_47
    move v0, v10

    .line 1025
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_48

    .line 1026
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1027
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1028
    goto :goto_18

    .line 1029
    :cond_48
    const-string v1, "android.hardware.wifi@1.0::IWifiIface"

    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1031
    new-instance v1, Lvendor/qti/hardware/wifi/V1_0/IWifiVendorStaIface$Stub$2;

    invoke-direct {v1, v7, v9}, Lvendor/qti/hardware/wifi/V1_0/IWifiVendorStaIface$Stub$2;-><init>(Lvendor/qti/hardware/wifi/V1_0/IWifiVendorStaIface$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {v7, v1}, Lvendor/qti/hardware/wifi/V1_0/IWifiVendorStaIface$Stub;->getName(Landroid/hardware/wifi/V1_0/IWifiIface$getNameCallback;)V

    .line 1039
    goto :goto_18

    .line 1004
    .end local v0    # "_hidl_is_oneway":Z
    :pswitch_1b
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_49

    move v10, v4

    nop

    :cond_49
    move v0, v10

    .line 1005
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_4a

    .line 1006
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1007
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1008
    goto :goto_18

    .line 1009
    :cond_4a
    const-string v1, "android.hardware.wifi@1.0::IWifiIface"

    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1011
    new-instance v1, Lvendor/qti/hardware/wifi/V1_0/IWifiVendorStaIface$Stub$1;

    invoke-direct {v1, v7, v9}, Lvendor/qti/hardware/wifi/V1_0/IWifiVendorStaIface$Stub$1;-><init>(Lvendor/qti/hardware/wifi/V1_0/IWifiVendorStaIface$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {v7, v1}, Lvendor/qti/hardware/wifi/V1_0/IWifiVendorStaIface$Stub;->getType(Landroid/hardware/wifi/V1_0/IWifiIface$getTypeCallback;)V

    .line 1019
    nop

    .line 1710
    .end local v0    # "_hidl_is_oneway":Z
    :cond_4b
    :goto_18
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1b
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

    .line 957
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 1
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 983
    const-string v0, "vendor.qti.hardware.wifi@1.0::IWifiVendorStaIface"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 984
    return-object p0

    .line 986
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

    .line 990
    invoke-virtual {p0, p1}, Lvendor/qti/hardware/wifi/V1_0/IWifiVendorStaIface$Stub;->registerService(Ljava/lang/String;)V

    .line 991
    return-void
.end method

.method public final setHALInstrumentation()V
    .locals 0

    .line 948
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 995
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lvendor/qti/hardware/wifi/V1_0/IWifiVendorStaIface$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 977
    const/4 v0, 0x1

    return v0
.end method
