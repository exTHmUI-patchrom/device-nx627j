.class public abstract Landroid/hardware/wifi/V1_2/IWifiStaIface$Stub;
.super Landroid/os/HwBinder;
.source "IWifiStaIface.java"

# interfaces
.implements Landroid/hardware/wifi/V1_2/IWifiStaIface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/wifi/V1_2/IWifiStaIface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 927
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .locals 0

    .line 930
    return-object p0
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .locals 3

    .line 976
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 977
    .local v0, "info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 978
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 979
    const/4 v1, 0x0

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    .line 980
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

    .line 950
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

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

    new-array v2, v2, [B

    fill-array-data v2, :array_3

    const/4 v3, 0x3

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    nop

    :array_0
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

    :array_1
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

    :array_2
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

    :array_3
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
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 935
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "android.hardware.wifi@1.2::IWifiStaIface"

    const-string v2, "android.hardware.wifi@1.0::IWifiStaIface"

    const-string v3, "android.hardware.wifi@1.0::IWifiIface"

    const-string v4, "android.hidl.base@1.0::IBase"

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final interfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 944
    const-string v0, "android.hardware.wifi@1.2::IWifiStaIface"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 1
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .line 965
    const/4 v0, 0x1

    return v0
.end method

.method public final notifySyspropsChanged()V
    .locals 0

    .line 985
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 986
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

    .line 1014
    const-wide/16 v0, 0x6

    const/4 v2, 0x6

    const/high16 v3, -0x80000000

    const/4 v10, 0x0

    const/4 v4, 0x1

    packed-switch p1, :pswitch_data_0

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_17

    .line 1697
    :sswitch_0
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_0

    move v10, v4

    nop

    :cond_0
    move v0, v10

    .line 1698
    .local v0, "_hidl_is_oneway":Z
    if-eqz v0, :cond_49

    .line 1699
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1700
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1701
    goto/16 :goto_17

    .line 1684
    .end local v0    # "_hidl_is_oneway":Z
    :sswitch_1
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1

    move v10, v4

    nop

    :cond_1
    move v0, v10

    .line 1685
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v4, :cond_2

    .line 1686
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1687
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1688
    goto/16 :goto_17

    .line 1689
    :cond_2
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1691
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/wifi/V1_2/IWifiStaIface$Stub;->notifySyspropsChanged()V

    .line 1692
    goto/16 :goto_17

    .line 1668
    .end local v0    # "_hidl_is_oneway":Z
    :sswitch_2
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    move v4, v10

    :goto_0
    move v0, v4

    .line 1669
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_4

    .line 1670
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1671
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1672
    goto/16 :goto_17

    .line 1673
    :cond_4
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1675
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/wifi/V1_2/IWifiStaIface$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object v1

    .line 1676
    .local v1, "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-virtual {v9, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1677
    invoke-virtual {v1, v9}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1678
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1679
    goto/16 :goto_17

    .line 1653
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

    .line 1654
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_6

    .line 1655
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1656
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1657
    goto/16 :goto_17

    .line 1658
    :cond_6
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1660
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/wifi/V1_2/IWifiStaIface$Stub;->ping()V

    .line 1661
    invoke-virtual {v9, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1662
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1663
    goto/16 :goto_17

    .line 1643
    .end local v0    # "_hidl_is_oneway":Z
    :sswitch_4
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_7

    move v10, v4

    nop

    :cond_7
    move v0, v10

    .line 1644
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_49

    .line 1645
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1646
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1647
    goto/16 :goto_17

    .line 1630
    .end local v0    # "_hidl_is_oneway":Z
    :sswitch_5
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_8

    move v10, v4

    nop

    :cond_8
    move v0, v10

    .line 1631
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v4, :cond_9

    .line 1632
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1633
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1634
    goto/16 :goto_17

    .line 1635
    :cond_9
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1637
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/wifi/V1_2/IWifiStaIface$Stub;->setHALInstrumentation()V

    .line 1638
    goto/16 :goto_17

    .line 1597
    .end local v0    # "_hidl_is_oneway":Z
    :sswitch_6
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_a

    goto :goto_2

    :cond_a
    move v4, v10

    :goto_2
    move v0, v4

    .line 1598
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_b

    .line 1599
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1600
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1601
    goto/16 :goto_17

    .line 1602
    :cond_b
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1604
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/wifi/V1_2/IWifiStaIface$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v1

    .line 1605
    .local v1, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {v9, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1607
    new-instance v2, Landroid/os/HwBlob;

    const/16 v3, 0x10

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 1609
    .local v2, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1610
    .local v3, "_hidl_vec_size":I
    const-wide/16 v4, 0x8

    invoke-virtual {v2, v4, v5, v3}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 1611
    const-wide/16 v4, 0xc

    invoke-virtual {v2, v4, v5, v10}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 1612
    new-instance v4, Landroid/os/HwBlob;

    mul-int/lit8 v5, v3, 0x20

    invoke-direct {v4, v5}, Landroid/os/HwBlob;-><init>(I)V

    .line 1613
    .local v4, "childBlob":Landroid/os/HwBlob;
    nop

    .local v10, "_hidl_index_0":I
    :goto_3
    move v5, v10

    .end local v10    # "_hidl_index_0":I
    .local v5, "_hidl_index_0":I
    if-ge v5, v3, :cond_c

    .line 1615
    mul-int/lit8 v6, v5, 0x20

    int-to-long v10, v6

    .line 1616
    .local v10, "_hidl_array_offset_1":J
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    invoke-virtual {v4, v10, v11, v6}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 1617
    nop

    .line 1613
    .end local v10    # "_hidl_array_offset_1":J
    add-int/lit8 v10, v5, 0x1

    .end local v5    # "_hidl_index_0":I
    .local v10, "_hidl_index_0":I
    goto :goto_3

    .line 1620
    .end local v10    # "_hidl_index_0":I
    :cond_c
    const-wide/16 v5, 0x0

    invoke-virtual {v2, v5, v6, v4}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 1622
    .end local v3    # "_hidl_vec_size":I
    .end local v4    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v9, v2}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 1624
    .end local v2    # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1625
    goto/16 :goto_17

    .line 1581
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

    .line 1582
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_e

    .line 1583
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1584
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1585
    goto/16 :goto_17

    .line 1586
    :cond_e
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1588
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/wifi/V1_2/IWifiStaIface$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v1

    .line 1589
    .local v1, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {v9, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1590
    invoke-virtual {v9, v1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1591
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1592
    goto/16 :goto_17

    .line 1567
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

    .line 1568
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_10

    .line 1569
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1570
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1571
    goto/16 :goto_17

    .line 1572
    :cond_10
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1574
    invoke-virtual {v9, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1575
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1576
    goto/16 :goto_17

    .line 1551
    .end local v0    # "_hidl_is_oneway":Z
    :sswitch_9
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_11

    goto :goto_6

    :cond_11
    move v4, v10

    :goto_6
    move v0, v4

    .line 1552
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_12

    .line 1553
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1554
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1555
    goto/16 :goto_17

    .line 1556
    :cond_12
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1558
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/wifi/V1_2/IWifiStaIface$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v1

    .line 1559
    .local v1, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v9, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1560
    invoke-virtual {v9, v1}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 1561
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1562
    goto/16 :goto_17

    .line 1526
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :pswitch_0
    and-int/lit8 v5, p4, 0x1

    if-eqz v5, :cond_13

    goto :goto_7

    :cond_13
    move v4, v10

    .line 1527
    .local v4, "_hidl_is_oneway":Z
    :goto_7
    if-eqz v4, :cond_14

    .line 1528
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1529
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1530
    goto/16 :goto_17

    .line 1531
    :cond_14
    const-string v3, "android.hardware.wifi@1.2::IWifiStaIface"

    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1533
    new-array v3, v2, [B

    .line 1535
    .local v3, "mac":[B
    invoke-virtual {v8, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 1537
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v5, 0x0

    .line 1538
    .local v5, "_hidl_array_offset_0":J
    invoke-virtual {v0, v5, v6, v3, v2}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 1539
    nop

    .line 1542
    .end local v0    # "_hidl_blob":Landroid/os/HwBlob;
    .end local v5    # "_hidl_array_offset_0":J
    invoke-virtual {v7, v3}, Landroid/hardware/wifi/V1_2/IWifiStaIface$Stub;->setMacAddress([B)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v0

    .line 1543
    .local v0, "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    invoke-virtual {v9, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1544
    invoke-virtual {v0, v9}, Landroid/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1545
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1546
    goto/16 :goto_17

    .line 1506
    .end local v0    # "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    .end local v3    # "mac":[B
    .end local v4    # "_hidl_is_oneway":Z
    :pswitch_1
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_15

    move v10, v4

    nop

    :cond_15
    move v0, v10

    .line 1507
    .local v0, "_hidl_is_oneway":Z
    if-eqz v0, :cond_16

    .line 1508
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1509
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1510
    goto/16 :goto_17

    .line 1511
    :cond_16
    const-string v1, "android.hardware.wifi@1.2::IWifiStaIface"

    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1513
    new-instance v1, Landroid/hardware/wifi/V1_2/IWifiStaIface$Stub$11;

    invoke-direct {v1, v7, v9}, Landroid/hardware/wifi/V1_2/IWifiStaIface$Stub$11;-><init>(Landroid/hardware/wifi/V1_2/IWifiStaIface$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {v7, v1}, Landroid/hardware/wifi/V1_2/IWifiStaIface$Stub;->readApfPacketFilterData(Landroid/hardware/wifi/V1_2/IWifiStaIface$readApfPacketFilterDataCallback;)V

    .line 1521
    goto/16 :goto_17

    .line 1486
    .end local v0    # "_hidl_is_oneway":Z
    :pswitch_2
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_17

    move v10, v4

    nop

    :cond_17
    move v0, v10

    .line 1487
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_18

    .line 1488
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1489
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1490
    goto/16 :goto_17

    .line 1491
    :cond_18
    const-string v1, "android.hardware.wifi@1.0::IWifiStaIface"

    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1493
    new-instance v1, Landroid/hardware/wifi/V1_2/IWifiStaIface$Stub$10;

    invoke-direct {v1, v7, v9}, Landroid/hardware/wifi/V1_2/IWifiStaIface$Stub$10;-><init>(Landroid/hardware/wifi/V1_2/IWifiStaIface$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {v7, v1}, Landroid/hardware/wifi/V1_2/IWifiStaIface$Stub;->getDebugRxPacketFates(Landroid/hardware/wifi/V1_0/IWifiStaIface$getDebugRxPacketFatesCallback;)V

    .line 1501
    goto/16 :goto_17

    .line 1466
    .end local v0    # "_hidl_is_oneway":Z
    :pswitch_3
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_19

    move v10, v4

    nop

    :cond_19
    move v0, v10

    .line 1467
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_1a

    .line 1468
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1469
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1470
    goto/16 :goto_17

    .line 1471
    :cond_1a
    const-string v1, "android.hardware.wifi@1.0::IWifiStaIface"

    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1473
    new-instance v1, Landroid/hardware/wifi/V1_2/IWifiStaIface$Stub$9;

    invoke-direct {v1, v7, v9}, Landroid/hardware/wifi/V1_2/IWifiStaIface$Stub$9;-><init>(Landroid/hardware/wifi/V1_2/IWifiStaIface$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {v7, v1}, Landroid/hardware/wifi/V1_2/IWifiStaIface$Stub;->getDebugTxPacketFates(Landroid/hardware/wifi/V1_0/IWifiStaIface$getDebugTxPacketFatesCallback;)V

    .line 1481
    goto/16 :goto_17

    .line 1450
    .end local v0    # "_hidl_is_oneway":Z
    :pswitch_4
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1b

    goto :goto_8

    :cond_1b
    move v4, v10

    :goto_8
    move v0, v4

    .line 1451
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_1c

    .line 1452
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1453
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1454
    goto/16 :goto_17

    .line 1455
    :cond_1c
    const-string v1, "android.hardware.wifi@1.0::IWifiStaIface"

    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1457
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/wifi/V1_2/IWifiStaIface$Stub;->startDebugPacketFateMonitoring()Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v1

    .line 1458
    .local v1, "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    invoke-virtual {v9, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1459
    invoke-virtual {v1, v9}, Landroid/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1460
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1461
    goto/16 :goto_17

    .line 1425
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    :pswitch_5
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1d

    goto :goto_9

    :cond_1d
    move v4, v10

    :goto_9
    move v0, v4

    .line 1426
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_1e

    .line 1427
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1428
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1429
    goto/16 :goto_17

    .line 1430
    :cond_1e
    const-string v1, "android.hardware.wifi@1.0::IWifiStaIface"

    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1432
    const/4 v1, 0x3

    new-array v2, v1, [B

    .line 1434
    .local v2, "oui":[B
    const-wide/16 v3, 0x3

    invoke-virtual {v8, v3, v4}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v3

    .line 1436
    .local v3, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v4, 0x0

    .line 1437
    .local v4, "_hidl_array_offset_0":J
    invoke-virtual {v3, v4, v5, v2, v1}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 1438
    nop

    .line 1441
    .end local v3    # "_hidl_blob":Landroid/os/HwBlob;
    .end local v4    # "_hidl_array_offset_0":J
    invoke-virtual {v7, v2}, Landroid/hardware/wifi/V1_2/IWifiStaIface$Stub;->setScanningMacOui([B)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v1

    .line 1442
    .restart local v1    # "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    invoke-virtual {v9, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1443
    invoke-virtual {v1, v9}, Landroid/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1444
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1445
    goto/16 :goto_17

    .line 1408
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    .end local v2    # "oui":[B
    :pswitch_6
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1f

    goto :goto_a

    :cond_1f
    move v4, v10

    :goto_a
    move v0, v4

    .line 1409
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_20

    .line 1410
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1411
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1412
    goto/16 :goto_17

    .line 1413
    :cond_20
    const-string v1, "android.hardware.wifi@1.0::IWifiStaIface"

    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1415
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1416
    .local v1, "cmdId":I
    invoke-virtual {v7, v1}, Landroid/hardware/wifi/V1_2/IWifiStaIface$Stub;->stopSendingKeepAlivePackets(I)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v2

    .line 1417
    .local v2, "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    invoke-virtual {v9, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1418
    invoke-virtual {v2, v9}, Landroid/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1419
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1420
    goto/16 :goto_17

    .line 1370
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "cmdId":I
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    :pswitch_7
    and-int/lit8 v5, p4, 0x1

    if-eqz v5, :cond_21

    goto :goto_b

    :cond_21
    move v4, v10

    :goto_b
    move v11, v4

    .line 1371
    .local v11, "_hidl_is_oneway":Z
    if-eqz v11, :cond_22

    .line 1372
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1373
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1374
    goto/16 :goto_17

    .line 1375
    :cond_22
    const-string v3, "android.hardware.wifi@1.0::IWifiStaIface"

    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1377
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v12

    .line 1378
    .local v12, "cmdId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v13

    .line 1379
    .local v13, "ipPacketData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt16()S

    move-result v14

    .line 1380
    .local v14, "etherType":S
    new-array v6, v2, [B

    .line 1382
    .local v6, "srcAddress":[B
    invoke-virtual {v8, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v3

    .line 1384
    .restart local v3    # "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v4, 0x0

    .line 1385
    .restart local v4    # "_hidl_array_offset_0":J
    invoke-virtual {v3, v4, v5, v6, v2}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 1386
    nop

    .line 1389
    .end local v3    # "_hidl_blob":Landroid/os/HwBlob;
    .end local v4    # "_hidl_array_offset_0":J
    new-array v5, v2, [B

    .line 1391
    .local v5, "dstAddress":[B
    invoke-virtual {v8, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 1393
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v3, 0x0

    .line 1394
    .local v3, "_hidl_array_offset_0":J
    invoke-virtual {v0, v3, v4, v5, v2}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 1395
    nop

    .line 1398
    .end local v0    # "_hidl_blob":Landroid/os/HwBlob;
    .end local v3    # "_hidl_array_offset_0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v15

    .line 1399
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
    invoke-virtual/range {v0 .. v6}, Landroid/hardware/wifi/V1_2/IWifiStaIface$Stub;->startSendingKeepAlivePackets(ILjava/util/ArrayList;S[B[BI)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v0

    .line 1400
    .local v0, "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    invoke-virtual {v9, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1401
    invoke-virtual {v0, v9}, Landroid/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1402
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1403
    goto/16 :goto_17

    .line 1353
    .end local v0    # "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    .end local v11    # "_hidl_is_oneway":Z
    .end local v12    # "cmdId":I
    .end local v13    # "ipPacketData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    .end local v14    # "etherType":S
    .end local v15    # "periodInMs":I
    .end local v16    # "dstAddress":[B
    .end local v17    # "srcAddress":[B
    :pswitch_8
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_23

    goto :goto_c

    :cond_23
    move v4, v10

    :goto_c
    move v0, v4

    .line 1354
    .local v0, "_hidl_is_oneway":Z
    if-eqz v0, :cond_24

    .line 1355
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1356
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1357
    goto/16 :goto_17

    .line 1358
    :cond_24
    const-string v1, "android.hardware.wifi@1.0::IWifiStaIface"

    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1360
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 1361
    .local v1, "enable":Z
    invoke-virtual {v7, v1}, Landroid/hardware/wifi/V1_2/IWifiStaIface$Stub;->enableNdOffload(Z)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v2

    .line 1362
    .restart local v2    # "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    invoke-virtual {v9, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1363
    invoke-virtual {v2, v9}, Landroid/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1364
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1365
    goto/16 :goto_17

    .line 1336
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "enable":Z
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    :pswitch_9
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_25

    goto :goto_d

    :cond_25
    move v4, v10

    :goto_d
    move v0, v4

    .line 1337
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_26

    .line 1338
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1339
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1340
    goto/16 :goto_17

    .line 1341
    :cond_26
    const-string v1, "android.hardware.wifi@1.0::IWifiStaIface"

    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1343
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8()B

    move-result v1

    .line 1344
    .local v1, "state":B
    invoke-virtual {v7, v1}, Landroid/hardware/wifi/V1_2/IWifiStaIface$Stub;->setRoamingState(B)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v2

    .line 1345
    .restart local v2    # "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    invoke-virtual {v9, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1346
    invoke-virtual {v2, v9}, Landroid/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1347
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1348
    goto/16 :goto_17

    .line 1318
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "state":B
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    :pswitch_a
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_27

    goto :goto_e

    :cond_27
    move v4, v10

    :goto_e
    move v0, v4

    .line 1319
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_28

    .line 1320
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1321
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1322
    goto/16 :goto_17

    .line 1323
    :cond_28
    const-string v1, "android.hardware.wifi@1.0::IWifiStaIface"

    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1325
    new-instance v1, Landroid/hardware/wifi/V1_0/StaRoamingConfig;

    invoke-direct {v1}, Landroid/hardware/wifi/V1_0/StaRoamingConfig;-><init>()V

    .line 1326
    .local v1, "config":Landroid/hardware/wifi/V1_0/StaRoamingConfig;
    invoke-virtual {v1, v8}, Landroid/hardware/wifi/V1_0/StaRoamingConfig;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1327
    invoke-virtual {v7, v1}, Landroid/hardware/wifi/V1_2/IWifiStaIface$Stub;->configureRoaming(Landroid/hardware/wifi/V1_0/StaRoamingConfig;)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v2

    .line 1328
    .restart local v2    # "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    invoke-virtual {v9, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1329
    invoke-virtual {v2, v9}, Landroid/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1330
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1331
    goto/16 :goto_17

    .line 1298
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "config":Landroid/hardware/wifi/V1_0/StaRoamingConfig;
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    :pswitch_b
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_29

    move v10, v4

    nop

    :cond_29
    move v0, v10

    .line 1299
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_2a

    .line 1300
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1301
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1302
    goto/16 :goto_17

    .line 1303
    :cond_2a
    const-string v1, "android.hardware.wifi@1.0::IWifiStaIface"

    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1305
    new-instance v1, Landroid/hardware/wifi/V1_2/IWifiStaIface$Stub$8;

    invoke-direct {v1, v7, v9}, Landroid/hardware/wifi/V1_2/IWifiStaIface$Stub$8;-><init>(Landroid/hardware/wifi/V1_2/IWifiStaIface$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {v7, v1}, Landroid/hardware/wifi/V1_2/IWifiStaIface$Stub;->getRoamingCapabilities(Landroid/hardware/wifi/V1_0/IWifiStaIface$getRoamingCapabilitiesCallback;)V

    .line 1313
    goto/16 :goto_17

    .line 1281
    .end local v0    # "_hidl_is_oneway":Z
    :pswitch_c
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_2b

    goto :goto_f

    :cond_2b
    move v4, v10

    :goto_f
    move v0, v4

    .line 1282
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_2c

    .line 1283
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1284
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1285
    goto/16 :goto_17

    .line 1286
    :cond_2c
    const-string v1, "android.hardware.wifi@1.0::IWifiStaIface"

    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1288
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1289
    .local v1, "cmdId":I
    invoke-virtual {v7, v1}, Landroid/hardware/wifi/V1_2/IWifiStaIface$Stub;->stopRssiMonitoring(I)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v2

    .line 1290
    .restart local v2    # "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    invoke-virtual {v9, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1291
    invoke-virtual {v2, v9}, Landroid/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1292
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1293
    goto/16 :goto_17

    .line 1262
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "cmdId":I
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    :pswitch_d
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_2d

    goto :goto_10

    :cond_2d
    move v4, v10

    :goto_10
    move v0, v4

    .line 1263
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_2e

    .line 1264
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1265
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1266
    goto/16 :goto_17

    .line 1267
    :cond_2e
    const-string v1, "android.hardware.wifi@1.0::IWifiStaIface"

    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1269
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1270
    .restart local v1    # "cmdId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1271
    .local v2, "maxRssi":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 1272
    .local v3, "minRssi":I
    invoke-virtual {v7, v1, v2, v3}, Landroid/hardware/wifi/V1_2/IWifiStaIface$Stub;->startRssiMonitoring(III)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v4

    .line 1273
    .local v4, "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    invoke-virtual {v9, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1274
    invoke-virtual {v4, v9}, Landroid/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1275
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1276
    goto/16 :goto_17

    .line 1242
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "cmdId":I
    .end local v2    # "maxRssi":I
    .end local v3    # "minRssi":I
    .end local v4    # "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    :pswitch_e
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_2f

    move v10, v4

    nop

    :cond_2f
    move v0, v10

    .line 1243
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_30

    .line 1244
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1245
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1246
    goto/16 :goto_17

    .line 1247
    :cond_30
    const-string v1, "android.hardware.wifi@1.0::IWifiStaIface"

    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1249
    new-instance v1, Landroid/hardware/wifi/V1_2/IWifiStaIface$Stub$7;

    invoke-direct {v1, v7, v9}, Landroid/hardware/wifi/V1_2/IWifiStaIface$Stub$7;-><init>(Landroid/hardware/wifi/V1_2/IWifiStaIface$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {v7, v1}, Landroid/hardware/wifi/V1_2/IWifiStaIface$Stub;->getLinkLayerStats(Landroid/hardware/wifi/V1_0/IWifiStaIface$getLinkLayerStatsCallback;)V

    .line 1257
    goto/16 :goto_17

    .line 1226
    .end local v0    # "_hidl_is_oneway":Z
    :pswitch_f
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_31

    goto :goto_11

    :cond_31
    move v4, v10

    :goto_11
    move v0, v4

    .line 1227
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_32

    .line 1228
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1229
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1230
    goto/16 :goto_17

    .line 1231
    :cond_32
    const-string v1, "android.hardware.wifi@1.0::IWifiStaIface"

    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1233
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/wifi/V1_2/IWifiStaIface$Stub;->disableLinkLayerStatsCollection()Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v1

    .line 1234
    .local v1, "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    invoke-virtual {v9, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1235
    invoke-virtual {v1, v9}, Landroid/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1236
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1237
    goto/16 :goto_17

    .line 1209
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    :pswitch_10
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_33

    goto :goto_12

    :cond_33
    move v4, v10

    :goto_12
    move v0, v4

    .line 1210
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_34

    .line 1211
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1212
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1213
    goto/16 :goto_17

    .line 1214
    :cond_34
    const-string v1, "android.hardware.wifi@1.0::IWifiStaIface"

    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1216
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 1217
    .local v1, "debug":Z
    invoke-virtual {v7, v1}, Landroid/hardware/wifi/V1_2/IWifiStaIface$Stub;->enableLinkLayerStatsCollection(Z)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v2

    .line 1218
    .local v2, "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    invoke-virtual {v9, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1219
    invoke-virtual {v2, v9}, Landroid/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1220
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1221
    goto/16 :goto_17

    .line 1192
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "debug":Z
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    :pswitch_11
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_35

    goto :goto_13

    :cond_35
    move v4, v10

    :goto_13
    move v0, v4

    .line 1193
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_36

    .line 1194
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1195
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1196
    goto/16 :goto_17

    .line 1197
    :cond_36
    const-string v1, "android.hardware.wifi@1.0::IWifiStaIface"

    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1199
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1200
    .local v1, "cmdId":I
    invoke-virtual {v7, v1}, Landroid/hardware/wifi/V1_2/IWifiStaIface$Stub;->stopBackgroundScan(I)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v2

    .line 1201
    .restart local v2    # "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    invoke-virtual {v9, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1202
    invoke-virtual {v2, v9}, Landroid/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1203
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1204
    goto/16 :goto_17

    .line 1173
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "cmdId":I
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    :pswitch_12
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_37

    goto :goto_14

    :cond_37
    move v4, v10

    :goto_14
    move v0, v4

    .line 1174
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_38

    .line 1175
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1176
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1177
    goto/16 :goto_17

    .line 1178
    :cond_38
    const-string v1, "android.hardware.wifi@1.0::IWifiStaIface"

    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1180
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1181
    .restart local v1    # "cmdId":I
    new-instance v2, Landroid/hardware/wifi/V1_0/StaBackgroundScanParameters;

    invoke-direct {v2}, Landroid/hardware/wifi/V1_0/StaBackgroundScanParameters;-><init>()V

    .line 1182
    .local v2, "params":Landroid/hardware/wifi/V1_0/StaBackgroundScanParameters;
    invoke-virtual {v2, v8}, Landroid/hardware/wifi/V1_0/StaBackgroundScanParameters;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1183
    invoke-virtual {v7, v1, v2}, Landroid/hardware/wifi/V1_2/IWifiStaIface$Stub;->startBackgroundScan(ILandroid/hardware/wifi/V1_0/StaBackgroundScanParameters;)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v3

    .line 1184
    .local v3, "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    invoke-virtual {v9, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1185
    invoke-virtual {v3, v9}, Landroid/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1186
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1187
    goto/16 :goto_17

    .line 1152
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "cmdId":I
    .end local v2    # "params":Landroid/hardware/wifi/V1_0/StaBackgroundScanParameters;
    .end local v3    # "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    :pswitch_13
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_39

    move v10, v4

    nop

    :cond_39
    move v0, v10

    .line 1153
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_3a

    .line 1154
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1155
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1156
    goto/16 :goto_17

    .line 1157
    :cond_3a
    const-string v1, "android.hardware.wifi@1.0::IWifiStaIface"

    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1159
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1160
    .local v1, "band":I
    new-instance v2, Landroid/hardware/wifi/V1_2/IWifiStaIface$Stub$6;

    invoke-direct {v2, v7, v9}, Landroid/hardware/wifi/V1_2/IWifiStaIface$Stub$6;-><init>(Landroid/hardware/wifi/V1_2/IWifiStaIface$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {v7, v1, v2}, Landroid/hardware/wifi/V1_2/IWifiStaIface$Stub;->getValidFrequenciesForBand(ILandroid/hardware/wifi/V1_0/IWifiStaIface$getValidFrequenciesForBandCallback;)V

    .line 1168
    goto/16 :goto_17

    .line 1132
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "band":I
    :pswitch_14
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_3b

    move v10, v4

    nop

    :cond_3b
    move v0, v10

    .line 1133
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_3c

    .line 1134
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1135
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1136
    goto/16 :goto_17

    .line 1137
    :cond_3c
    const-string v1, "android.hardware.wifi@1.0::IWifiStaIface"

    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1139
    new-instance v1, Landroid/hardware/wifi/V1_2/IWifiStaIface$Stub$5;

    invoke-direct {v1, v7, v9}, Landroid/hardware/wifi/V1_2/IWifiStaIface$Stub$5;-><init>(Landroid/hardware/wifi/V1_2/IWifiStaIface$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {v7, v1}, Landroid/hardware/wifi/V1_2/IWifiStaIface$Stub;->getBackgroundScanCapabilities(Landroid/hardware/wifi/V1_0/IWifiStaIface$getBackgroundScanCapabilitiesCallback;)V

    .line 1147
    goto/16 :goto_17

    .line 1114
    .end local v0    # "_hidl_is_oneway":Z
    :pswitch_15
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_3d

    goto :goto_15

    :cond_3d
    move v4, v10

    :goto_15
    move v0, v4

    .line 1115
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_3e

    .line 1116
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1117
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1118
    goto/16 :goto_17

    .line 1119
    :cond_3e
    const-string v1, "android.hardware.wifi@1.0::IWifiStaIface"

    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1121
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1122
    .local v1, "cmdId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 1123
    .local v2, "program":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {v7, v1, v2}, Landroid/hardware/wifi/V1_2/IWifiStaIface$Stub;->installApfPacketFilter(ILjava/util/ArrayList;)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v3

    .line 1124
    .restart local v3    # "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    invoke-virtual {v9, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1125
    invoke-virtual {v3, v9}, Landroid/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1126
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1127
    goto/16 :goto_17

    .line 1094
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "cmdId":I
    .end local v2    # "program":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    .end local v3    # "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    :pswitch_16
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_3f

    move v10, v4

    nop

    :cond_3f
    move v0, v10

    .line 1095
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_40

    .line 1096
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1097
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1098
    goto/16 :goto_17

    .line 1099
    :cond_40
    const-string v1, "android.hardware.wifi@1.0::IWifiStaIface"

    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1101
    new-instance v1, Landroid/hardware/wifi/V1_2/IWifiStaIface$Stub$4;

    invoke-direct {v1, v7, v9}, Landroid/hardware/wifi/V1_2/IWifiStaIface$Stub$4;-><init>(Landroid/hardware/wifi/V1_2/IWifiStaIface$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {v7, v1}, Landroid/hardware/wifi/V1_2/IWifiStaIface$Stub;->getApfPacketFilterCapabilities(Landroid/hardware/wifi/V1_0/IWifiStaIface$getApfPacketFilterCapabilitiesCallback;)V

    .line 1109
    goto/16 :goto_17

    .line 1074
    .end local v0    # "_hidl_is_oneway":Z
    :pswitch_17
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_41

    move v10, v4

    nop

    :cond_41
    move v0, v10

    .line 1075
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_42

    .line 1076
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1077
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1078
    goto/16 :goto_17

    .line 1079
    :cond_42
    const-string v1, "android.hardware.wifi@1.0::IWifiStaIface"

    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1081
    new-instance v1, Landroid/hardware/wifi/V1_2/IWifiStaIface$Stub$3;

    invoke-direct {v1, v7, v9}, Landroid/hardware/wifi/V1_2/IWifiStaIface$Stub$3;-><init>(Landroid/hardware/wifi/V1_2/IWifiStaIface$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {v7, v1}, Landroid/hardware/wifi/V1_2/IWifiStaIface$Stub;->getCapabilities(Landroid/hardware/wifi/V1_0/IWifiStaIface$getCapabilitiesCallback;)V

    .line 1089
    goto/16 :goto_17

    .line 1057
    .end local v0    # "_hidl_is_oneway":Z
    :pswitch_18
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_43

    goto :goto_16

    :cond_43
    move v4, v10

    :goto_16
    move v0, v4

    .line 1058
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_44

    .line 1059
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1060
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1061
    goto :goto_17

    .line 1062
    :cond_44
    const-string v1, "android.hardware.wifi@1.0::IWifiStaIface"

    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1064
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/wifi/V1_0/IWifiStaIfaceEventCallback;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/wifi/V1_0/IWifiStaIfaceEventCallback;

    move-result-object v1

    .line 1065
    .local v1, "callback":Landroid/hardware/wifi/V1_0/IWifiStaIfaceEventCallback;
    invoke-virtual {v7, v1}, Landroid/hardware/wifi/V1_2/IWifiStaIface$Stub;->registerEventCallback(Landroid/hardware/wifi/V1_0/IWifiStaIfaceEventCallback;)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v2

    .line 1066
    .local v2, "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    invoke-virtual {v9, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1067
    invoke-virtual {v2, v9}, Landroid/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1068
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1069
    goto :goto_17

    .line 1037
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "callback":Landroid/hardware/wifi/V1_0/IWifiStaIfaceEventCallback;
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    :pswitch_19
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_45

    move v10, v4

    nop

    :cond_45
    move v0, v10

    .line 1038
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_46

    .line 1039
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1040
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1041
    goto :goto_17

    .line 1042
    :cond_46
    const-string v1, "android.hardware.wifi@1.0::IWifiIface"

    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1044
    new-instance v1, Landroid/hardware/wifi/V1_2/IWifiStaIface$Stub$2;

    invoke-direct {v1, v7, v9}, Landroid/hardware/wifi/V1_2/IWifiStaIface$Stub$2;-><init>(Landroid/hardware/wifi/V1_2/IWifiStaIface$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {v7, v1}, Landroid/hardware/wifi/V1_2/IWifiStaIface$Stub;->getName(Landroid/hardware/wifi/V1_0/IWifiIface$getNameCallback;)V

    .line 1052
    goto :goto_17

    .line 1017
    .end local v0    # "_hidl_is_oneway":Z
    :pswitch_1a
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_47

    move v10, v4

    nop

    :cond_47
    move v0, v10

    .line 1018
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_48

    .line 1019
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1020
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1021
    goto :goto_17

    .line 1022
    :cond_48
    const-string v1, "android.hardware.wifi@1.0::IWifiIface"

    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1024
    new-instance v1, Landroid/hardware/wifi/V1_2/IWifiStaIface$Stub$1;

    invoke-direct {v1, v7, v9}, Landroid/hardware/wifi/V1_2/IWifiStaIface$Stub$1;-><init>(Landroid/hardware/wifi/V1_2/IWifiStaIface$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {v7, v1}, Landroid/hardware/wifi/V1_2/IWifiStaIface$Stub;->getType(Landroid/hardware/wifi/V1_0/IWifiIface$getTypeCallback;)V

    .line 1032
    nop

    .line 1706
    .end local v0    # "_hidl_is_oneway":Z
    :cond_49
    :goto_17
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

    .line 970
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 1
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 996
    const-string v0, "android.hardware.wifi@1.2::IWifiStaIface"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 997
    return-object p0

    .line 999
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

    .line 1003
    invoke-virtual {p0, p1}, Landroid/hardware/wifi/V1_2/IWifiStaIface$Stub;->registerService(Ljava/lang/String;)V

    .line 1004
    return-void
.end method

.method public final setHALInstrumentation()V
    .locals 0

    .line 961
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1008
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/wifi/V1_2/IWifiStaIface$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 990
    const/4 v0, 0x1

    return v0
.end method
