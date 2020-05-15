.class public abstract Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback$Stub;
.super Landroid/os/HwBinder;
.source "ISupplicantP2pIfaceCallback.java"

# interfaces
.implements Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1122
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .locals 0

    .line 1125
    return-object p0
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .locals 3

    .line 1167
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 1168
    .local v0, "info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 1169
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 1170
    const/4 v1, 0x0

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    .line 1171
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

    .line 1143
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
        -0x75t
        0x63t
        -0xbt
        -0x11t
        -0x5et
        -0x1dt
        -0x42t
        0x3at
        0x7ct
        -0x48t
        -0x5ct
        0x28t
        0x76t
        0xdt
        -0x7et
        0x28t
        0x5at
        0x4at
        -0x49t
        -0x65t
        -0x35t
        -0x22t
        -0x5at
        -0x11t
        -0x70t
        -0x56t
        0x54t
        0x75t
        0x55t
        -0x1bt
        -0x7et
        -0x2ct
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

    .line 1130
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIfaceCallback"

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

    .line 1137
    const-string v0, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIfaceCallback"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 1
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .line 1156
    const/4 v0, 0x1

    return v0
.end method

.method public final notifySyspropsChanged()V
    .locals 0

    .line 1176
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 1177
    return-void
.end method

.method public onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .locals 22
    .param p1, "_hidl_code"    # I
    .param p2, "_hidl_request"    # Landroid/os/HwParcel;
    .param p3, "_hidl_reply"    # Landroid/os/HwParcel;
    .param p4, "_hidl_flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v9, p0

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    .line 1205
    const-wide/16 v0, 0x8

    const-wide/16 v2, 0x6

    const/high16 v4, -0x80000000

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v7, 0x1

    packed-switch p1, :pswitch_data_0

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_7

    .line 1763
    :sswitch_0
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_0

    move v6, v7

    nop

    :cond_0
    move v0, v6

    .line 1764
    .local v0, "_hidl_is_oneway":Z
    if-eqz v0, :cond_35

    .line 1765
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1766
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1767
    goto/16 :goto_7

    .line 1750
    .end local v0    # "_hidl_is_oneway":Z
    :sswitch_1
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1

    move v6, v7

    nop

    :cond_1
    move v0, v6

    .line 1751
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_2

    .line 1752
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1753
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1754
    goto/16 :goto_7

    .line 1755
    :cond_2
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v10, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1757
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback$Stub;->notifySyspropsChanged()V

    .line 1758
    goto/16 :goto_7

    .line 1734
    .end local v0    # "_hidl_is_oneway":Z
    :sswitch_2
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    move v7, v6

    :goto_0
    move v0, v7

    .line 1735
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_4

    .line 1736
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1737
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1738
    goto/16 :goto_7

    .line 1739
    :cond_4
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v10, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1741
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object v1

    .line 1742
    .local v1, "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1743
    invoke-virtual {v1, v11}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1744
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1745
    goto/16 :goto_7

    .line 1719
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    :sswitch_3
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_5

    goto :goto_1

    :cond_5
    move v7, v6

    :goto_1
    move v0, v7

    .line 1720
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_6

    .line 1721
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1722
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1723
    goto/16 :goto_7

    .line 1724
    :cond_6
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v10, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1726
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback$Stub;->ping()V

    .line 1727
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1728
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1729
    goto/16 :goto_7

    .line 1709
    .end local v0    # "_hidl_is_oneway":Z
    :sswitch_4
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_7

    move v6, v7

    nop

    :cond_7
    move v0, v6

    .line 1710
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_35

    .line 1711
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1712
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1713
    goto/16 :goto_7

    .line 1696
    .end local v0    # "_hidl_is_oneway":Z
    :sswitch_5
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_8

    move v6, v7

    nop

    :cond_8
    move v0, v6

    .line 1697
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_9

    .line 1698
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1699
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1700
    goto/16 :goto_7

    .line 1701
    :cond_9
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v10, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1703
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback$Stub;->setHALInstrumentation()V

    .line 1704
    goto/16 :goto_7

    .line 1663
    .end local v0    # "_hidl_is_oneway":Z
    :sswitch_6
    and-int/lit8 v2, p4, 0x1

    if-eqz v2, :cond_a

    goto :goto_2

    :cond_a
    move v7, v6

    :goto_2
    move v2, v7

    .line 1664
    .local v2, "_hidl_is_oneway":Z
    if-eqz v2, :cond_b

    .line 1665
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1666
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1667
    goto/16 :goto_7

    .line 1668
    :cond_b
    const-string v3, "android.hidl.base@1.0::IBase"

    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1670
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v3

    .line 1671
    .local v3, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1673
    new-instance v4, Landroid/os/HwBlob;

    const/16 v5, 0x10

    invoke-direct {v4, v5}, Landroid/os/HwBlob;-><init>(I)V

    .line 1675
    .local v4, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 1676
    .local v5, "_hidl_vec_size":I
    invoke-virtual {v4, v0, v1, v5}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 1677
    const-wide/16 v0, 0xc

    invoke-virtual {v4, v0, v1, v6}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 1678
    new-instance v0, Landroid/os/HwBlob;

    mul-int/lit8 v1, v5, 0x20

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 1679
    .local v0, "childBlob":Landroid/os/HwBlob;
    nop

    .local v6, "_hidl_index_0":I
    :goto_3
    move v1, v6

    .end local v6    # "_hidl_index_0":I
    .local v1, "_hidl_index_0":I
    if-ge v1, v5, :cond_c

    .line 1681
    mul-int/lit8 v6, v1, 0x20

    int-to-long v6, v6

    .line 1682
    .local v6, "_hidl_array_offset_1":J
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    invoke-virtual {v0, v6, v7, v8}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 1683
    nop

    .line 1679
    .end local v6    # "_hidl_array_offset_1":J
    add-int/lit8 v6, v1, 0x1

    .end local v1    # "_hidl_index_0":I
    .local v6, "_hidl_index_0":I
    goto :goto_3

    .line 1686
    .end local v6    # "_hidl_index_0":I
    :cond_c
    const-wide/16 v6, 0x0

    invoke-virtual {v4, v6, v7, v0}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 1688
    .end local v0    # "childBlob":Landroid/os/HwBlob;
    .end local v5    # "_hidl_vec_size":I
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 1690
    .end local v4    # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1691
    goto/16 :goto_7

    .line 1647
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :sswitch_7
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_d

    goto :goto_4

    :cond_d
    move v7, v6

    :goto_4
    move v0, v7

    .line 1648
    .local v0, "_hidl_is_oneway":Z
    if-eqz v0, :cond_e

    .line 1649
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1650
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1651
    goto/16 :goto_7

    .line 1652
    :cond_e
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v10, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1654
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v1

    .line 1655
    .local v1, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1656
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1657
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1658
    goto/16 :goto_7

    .line 1633
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "_hidl_out_descriptor":Ljava/lang/String;
    :sswitch_8
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_f

    goto :goto_5

    :cond_f
    move v7, v6

    :goto_5
    move v0, v7

    .line 1634
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_10

    .line 1635
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1636
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1637
    goto/16 :goto_7

    .line 1638
    :cond_10
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v10, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1640
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1641
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1642
    goto/16 :goto_7

    .line 1617
    .end local v0    # "_hidl_is_oneway":Z
    :sswitch_9
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_11

    goto :goto_6

    :cond_11
    move v7, v6

    :goto_6
    move v0, v7

    .line 1618
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_12

    .line 1619
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1620
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1621
    goto/16 :goto_7

    .line 1622
    :cond_12
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v10, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1624
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v1

    .line 1625
    .local v1, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1626
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 1627
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1628
    goto/16 :goto_7

    .line 1586
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :pswitch_0
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_13

    move v6, v7

    nop

    :cond_13
    move v0, v6

    .line 1587
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_14

    .line 1588
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1589
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1590
    goto/16 :goto_7

    .line 1591
    :cond_14
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIfaceCallback"

    invoke-virtual {v10, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1593
    new-array v1, v5, [B

    .line 1595
    .local v1, "srcAddress":[B
    invoke-virtual {v10, v2, v3}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v4

    .line 1597
    .restart local v4    # "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v6, 0x0

    .line 1598
    .local v6, "_hidl_array_offset_0":J
    invoke-virtual {v4, v6, v7, v1, v5}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 1599
    nop

    .line 1602
    .end local v4    # "_hidl_blob":Landroid/os/HwBlob;
    .end local v6    # "_hidl_array_offset_0":J
    new-array v4, v5, [B

    .line 1604
    .local v4, "p2pDeviceAddress":[B
    invoke-virtual {v10, v2, v3}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v2

    .line 1606
    .local v2, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v6, 0x0

    .line 1607
    .restart local v6    # "_hidl_array_offset_0":J
    invoke-virtual {v2, v6, v7, v4, v5}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 1608
    nop

    .line 1611
    .end local v2    # "_hidl_blob":Landroid/os/HwBlob;
    .end local v6    # "_hidl_array_offset_0":J
    invoke-virtual {v9, v1, v4}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback$Stub;->onStaDeauthorized([B[B)V

    .line 1612
    goto/16 :goto_7

    .line 1555
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "srcAddress":[B
    .end local v4    # "p2pDeviceAddress":[B
    :pswitch_1
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_15

    move v6, v7

    nop

    :cond_15
    move v0, v6

    .line 1556
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_16

    .line 1557
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1558
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1559
    goto/16 :goto_7

    .line 1560
    :cond_16
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIfaceCallback"

    invoke-virtual {v10, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1562
    new-array v1, v5, [B

    .line 1564
    .restart local v1    # "srcAddress":[B
    invoke-virtual {v10, v2, v3}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v4

    .line 1566
    .local v4, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v6, 0x0

    .line 1567
    .restart local v6    # "_hidl_array_offset_0":J
    invoke-virtual {v4, v6, v7, v1, v5}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 1568
    nop

    .line 1571
    .end local v4    # "_hidl_blob":Landroid/os/HwBlob;
    .end local v6    # "_hidl_array_offset_0":J
    new-array v4, v5, [B

    .line 1573
    .local v4, "p2pDeviceAddress":[B
    invoke-virtual {v10, v2, v3}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v2

    .line 1575
    .restart local v2    # "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v6, 0x0

    .line 1576
    .restart local v6    # "_hidl_array_offset_0":J
    invoke-virtual {v2, v6, v7, v4, v5}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 1577
    nop

    .line 1580
    .end local v2    # "_hidl_blob":Landroid/os/HwBlob;
    .end local v6    # "_hidl_array_offset_0":J
    invoke-virtual {v9, v1, v4}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback$Stub;->onStaAuthorized([B[B)V

    .line 1581
    goto/16 :goto_7

    .line 1531
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "srcAddress":[B
    .end local v4    # "p2pDeviceAddress":[B
    :pswitch_2
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_17

    move v6, v7

    nop

    :cond_17
    move v0, v6

    .line 1532
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_18

    .line 1533
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1534
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1535
    goto/16 :goto_7

    .line 1536
    :cond_18
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIfaceCallback"

    invoke-virtual {v10, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1538
    new-array v1, v5, [B

    .line 1540
    .restart local v1    # "srcAddress":[B
    invoke-virtual {v10, v2, v3}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v2

    .line 1542
    .restart local v2    # "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v3, 0x0

    .line 1543
    .local v3, "_hidl_array_offset_0":J
    invoke-virtual {v2, v3, v4, v1, v5}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 1544
    nop

    .line 1547
    .end local v2    # "_hidl_blob":Landroid/os/HwBlob;
    .end local v3    # "_hidl_array_offset_0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt16()S

    move-result v2

    .line 1548
    .local v2, "updateIndicator":S
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v3

    .line 1549
    .local v3, "tlvs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {v9, v1, v2, v3}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback$Stub;->onServiceDiscoveryResponse([BSLjava/util/ArrayList;)V

    .line 1550
    goto/16 :goto_7

    .line 1505
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "srcAddress":[B
    .end local v2    # "updateIndicator":S
    .end local v3    # "tlvs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :pswitch_3
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_19

    move v6, v7

    nop

    .line 1506
    .local v6, "_hidl_is_oneway":Z
    :cond_19
    if-eq v6, v7, :cond_1a

    .line 1507
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1508
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1509
    goto/16 :goto_7

    .line 1510
    :cond_1a
    const-string v0, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIfaceCallback"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1512
    new-array v7, v5, [B

    .line 1514
    .local v7, "p2pDeviceAddress":[B
    invoke-virtual {v10, v2, v3}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 1516
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    .line 1517
    .local v1, "_hidl_array_offset_0":J
    invoke-virtual {v0, v1, v2, v7, v5}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 1518
    nop

    .line 1521
    .end local v0    # "_hidl_blob":Landroid/os/HwBlob;
    .end local v1    # "_hidl_array_offset_0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v8

    .line 1522
    .local v8, "isRequest":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8()B

    move-result v12

    .line 1523
    .local v12, "status":B
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt16()S

    move-result v13

    .line 1524
    .local v13, "configMethods":S
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 1525
    .local v14, "generatedPin":Ljava/lang/String;
    move-object v0, v9

    move-object v1, v7

    move v2, v8

    move v3, v12

    move v4, v13

    move-object v5, v14

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback$Stub;->onProvisionDiscoveryCompleted([BZBSLjava/lang/String;)V

    .line 1526
    goto/16 :goto_7

    .line 1482
    .end local v6    # "_hidl_is_oneway":Z
    .end local v7    # "p2pDeviceAddress":[B
    .end local v8    # "isRequest":Z
    .end local v12    # "status":B
    .end local v13    # "configMethods":S
    .end local v14    # "generatedPin":Ljava/lang/String;
    :pswitch_4
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1b

    move v6, v7

    nop

    :cond_1b
    move v0, v6

    .line 1483
    .local v0, "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_1c

    .line 1484
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1485
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1486
    goto/16 :goto_7

    .line 1487
    :cond_1c
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIfaceCallback"

    invoke-virtual {v10, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1489
    new-array v1, v5, [B

    .line 1491
    .local v1, "bssid":[B
    invoke-virtual {v10, v2, v3}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v2

    .line 1493
    .local v2, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v3, 0x0

    .line 1494
    .local v3, "_hidl_array_offset_0":J
    invoke-virtual {v2, v3, v4, v1, v5}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 1495
    nop

    .line 1498
    .end local v2    # "_hidl_blob":Landroid/os/HwBlob;
    .end local v3    # "_hidl_array_offset_0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1499
    .local v2, "status":I
    invoke-virtual {v9, v1, v2}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback$Stub;->onInvitationResult([BI)V

    .line 1500
    goto/16 :goto_7

    .line 1440
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "bssid":[B
    .end local v2    # "status":I
    :pswitch_5
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1d

    move v6, v7

    nop

    .line 1441
    .restart local v6    # "_hidl_is_oneway":Z
    :cond_1d
    if-eq v6, v7, :cond_1e

    .line 1442
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1443
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1444
    goto/16 :goto_7

    .line 1445
    :cond_1e
    const-string v0, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIfaceCallback"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1447
    new-array v7, v5, [B

    .line 1449
    .local v7, "srcAddress":[B
    invoke-virtual {v10, v2, v3}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 1451
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v12, 0x0

    .line 1452
    .local v12, "_hidl_array_offset_0":J
    invoke-virtual {v0, v12, v13, v7, v5}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 1453
    nop

    .line 1456
    .end local v0    # "_hidl_blob":Landroid/os/HwBlob;
    .end local v12    # "_hidl_array_offset_0":J
    new-array v8, v5, [B

    .line 1458
    .local v8, "goDeviceAddress":[B
    invoke-virtual {v10, v2, v3}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 1460
    .restart local v0    # "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v12, 0x0

    .line 1461
    .restart local v12    # "_hidl_array_offset_0":J
    invoke-virtual {v0, v12, v13, v8, v5}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 1462
    nop

    .line 1465
    .end local v0    # "_hidl_blob":Landroid/os/HwBlob;
    .end local v12    # "_hidl_array_offset_0":J
    new-array v12, v5, [B

    .line 1467
    .local v12, "bssid":[B
    invoke-virtual {v10, v2, v3}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 1469
    .restart local v0    # "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    .line 1470
    .local v1, "_hidl_array_offset_0":J
    invoke-virtual {v0, v1, v2, v12, v5}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 1471
    nop

    .line 1474
    .end local v0    # "_hidl_blob":Landroid/os/HwBlob;
    .end local v1    # "_hidl_array_offset_0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v13

    .line 1475
    .local v13, "persistentNetworkId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v14

    .line 1476
    .local v14, "operatingFrequency":I
    move-object v0, v9

    move-object v1, v7

    move-object v2, v8

    move-object v3, v12

    move v4, v13

    move v5, v14

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback$Stub;->onInvitationReceived([B[B[BII)V

    .line 1477
    goto/16 :goto_7

    .line 1425
    .end local v6    # "_hidl_is_oneway":Z
    .end local v7    # "srcAddress":[B
    .end local v8    # "goDeviceAddress":[B
    .end local v12    # "bssid":[B
    .end local v13    # "persistentNetworkId":I
    .end local v14    # "operatingFrequency":I
    :pswitch_6
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1f

    move v6, v7

    nop

    :cond_1f
    move v0, v6

    .line 1426
    .local v0, "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_20

    .line 1427
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1428
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1429
    goto/16 :goto_7

    .line 1430
    :cond_20
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIfaceCallback"

    invoke-virtual {v10, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1432
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1433
    .local v1, "groupIfname":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 1434
    .local v2, "isGo":Z
    invoke-virtual {v9, v1, v2}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback$Stub;->onGroupRemoved(Ljava/lang/String;Z)V

    .line 1435
    goto/16 :goto_7

    .line 1388
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "groupIfname":Ljava/lang/String;
    .end local v2    # "isGo":Z
    :pswitch_7
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_21

    move v6, v7

    nop

    :cond_21
    move v12, v6

    .line 1389
    .local v12, "_hidl_is_oneway":Z
    if-eq v12, v7, :cond_22

    .line 1390
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1391
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1392
    goto/16 :goto_7

    .line 1393
    :cond_22
    const-string v0, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIfaceCallback"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1395
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 1396
    .local v13, "groupIfname":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v14

    .line 1397
    .local v14, "isGo":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v15

    .line 1398
    .local v15, "ssid":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v16

    .line 1399
    .local v16, "frequency":I
    const/16 v0, 0x20

    new-array v8, v0, [B

    .line 1401
    .local v8, "psk":[B
    const-wide/16 v6, 0x20

    invoke-virtual {v10, v6, v7}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    .line 1403
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v6, 0x0

    .line 1404
    .local v6, "_hidl_array_offset_0":J
    invoke-virtual {v1, v6, v7, v8, v0}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 1405
    nop

    .line 1408
    .end local v1    # "_hidl_blob":Landroid/os/HwBlob;
    .end local v6    # "_hidl_array_offset_0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 1409
    .local v17, "passphrase":Ljava/lang/String;
    new-array v7, v5, [B

    .line 1411
    .local v7, "goDeviceAddress":[B
    invoke-virtual {v10, v2, v3}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 1413
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    .line 1414
    .local v1, "_hidl_array_offset_0":J
    invoke-virtual {v0, v1, v2, v7, v5}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 1415
    nop

    .line 1418
    .end local v0    # "_hidl_blob":Landroid/os/HwBlob;
    .end local v1    # "_hidl_array_offset_0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v18

    .line 1419
    .local v18, "isPersistent":Z
    move-object v0, v9

    move-object v1, v13

    move v2, v14

    move-object v3, v15

    move/from16 v4, v16

    move-object v5, v8

    move-object/from16 v6, v17

    move-object/from16 v19, v7

    .end local v7    # "goDeviceAddress":[B
    .local v19, "goDeviceAddress":[B
    move-object/from16 v20, v8

    move/from16 v8, v18

    .end local v8    # "psk":[B
    .local v20, "psk":[B
    invoke-virtual/range {v0 .. v8}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback$Stub;->onGroupStarted(Ljava/lang/String;ZLjava/util/ArrayList;I[BLjava/lang/String;[BZ)V

    .line 1420
    goto/16 :goto_7

    .line 1374
    .end local v12    # "_hidl_is_oneway":Z
    .end local v13    # "groupIfname":Ljava/lang/String;
    .end local v14    # "isGo":Z
    .end local v15    # "ssid":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    .end local v16    # "frequency":I
    .end local v17    # "passphrase":Ljava/lang/String;
    .end local v18    # "isPersistent":Z
    .end local v19    # "goDeviceAddress":[B
    .end local v20    # "psk":[B
    :pswitch_8
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_23

    move v6, v7

    nop

    :cond_23
    move v0, v6

    .line 1375
    .local v0, "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_24

    .line 1376
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1377
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1378
    goto/16 :goto_7

    .line 1379
    :cond_24
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIfaceCallback"

    invoke-virtual {v10, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1381
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1382
    .local v1, "failureReason":Ljava/lang/String;
    invoke-virtual {v9, v1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback$Stub;->onGroupFormationFailure(Ljava/lang/String;)V

    .line 1383
    goto/16 :goto_7

    .line 1361
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "failureReason":Ljava/lang/String;
    :pswitch_9
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_25

    move v6, v7

    nop

    :cond_25
    move v0, v6

    .line 1362
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_26

    .line 1363
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1364
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1365
    goto/16 :goto_7

    .line 1366
    :cond_26
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIfaceCallback"

    invoke-virtual {v10, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1368
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback$Stub;->onGroupFormationSuccess()V

    .line 1369
    goto/16 :goto_7

    .line 1347
    .end local v0    # "_hidl_is_oneway":Z
    :pswitch_a
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_27

    move v6, v7

    nop

    :cond_27
    move v0, v6

    .line 1348
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_28

    .line 1349
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1350
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1351
    goto/16 :goto_7

    .line 1352
    :cond_28
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIfaceCallback"

    invoke-virtual {v10, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1354
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1355
    .local v1, "status":I
    invoke-virtual {v9, v1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback$Stub;->onGoNegotiationCompleted(I)V

    .line 1356
    goto/16 :goto_7

    .line 1324
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "status":I
    :pswitch_b
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_29

    move v6, v7

    nop

    :cond_29
    move v0, v6

    .line 1325
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_2a

    .line 1326
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1327
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1328
    goto/16 :goto_7

    .line 1329
    :cond_2a
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIfaceCallback"

    invoke-virtual {v10, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1331
    new-array v1, v5, [B

    .line 1333
    .local v1, "srcAddress":[B
    invoke-virtual {v10, v2, v3}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v2

    .line 1335
    .local v2, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v3, 0x0

    .line 1336
    .restart local v3    # "_hidl_array_offset_0":J
    invoke-virtual {v2, v3, v4, v1, v5}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 1337
    nop

    .line 1340
    .end local v2    # "_hidl_blob":Landroid/os/HwBlob;
    .end local v3    # "_hidl_array_offset_0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt16()S

    move-result v2

    .line 1341
    .local v2, "passwordId":S
    invoke-virtual {v9, v1, v2}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback$Stub;->onGoNegotiationRequest([BS)V

    .line 1342
    goto/16 :goto_7

    .line 1311
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "srcAddress":[B
    .end local v2    # "passwordId":S
    :pswitch_c
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_2b

    move v6, v7

    nop

    :cond_2b
    move v0, v6

    .line 1312
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_2c

    .line 1313
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1314
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1315
    goto/16 :goto_7

    .line 1316
    :cond_2c
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIfaceCallback"

    invoke-virtual {v10, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1318
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback$Stub;->onFindStopped()V

    .line 1319
    goto/16 :goto_7

    .line 1289
    .end local v0    # "_hidl_is_oneway":Z
    :pswitch_d
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_2d

    move v6, v7

    nop

    :cond_2d
    move v0, v6

    .line 1290
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_2e

    .line 1291
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1292
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1293
    goto/16 :goto_7

    .line 1294
    :cond_2e
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIfaceCallback"

    invoke-virtual {v10, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1296
    new-array v1, v5, [B

    .line 1298
    .local v1, "p2pDeviceAddress":[B
    invoke-virtual {v10, v2, v3}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v2

    .line 1300
    .local v2, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v3, 0x0

    .line 1301
    .restart local v3    # "_hidl_array_offset_0":J
    invoke-virtual {v2, v3, v4, v1, v5}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 1302
    nop

    .line 1305
    .end local v2    # "_hidl_blob":Landroid/os/HwBlob;
    .end local v3    # "_hidl_array_offset_0":J
    invoke-virtual {v9, v1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback$Stub;->onDeviceLost([B)V

    .line 1306
    goto/16 :goto_7

    .line 1236
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "p2pDeviceAddress":[B
    :pswitch_e
    and-int/lit8 v8, p4, 0x1

    if-eqz v8, :cond_2f

    move v6, v7

    nop

    :cond_2f
    move v12, v6

    .line 1237
    .restart local v12    # "_hidl_is_oneway":Z
    if-eq v12, v7, :cond_30

    .line 1238
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1239
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1240
    goto/16 :goto_7

    .line 1241
    :cond_30
    const-string v4, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIfaceCallback"

    invoke-virtual {v10, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1243
    new-array v13, v5, [B

    .line 1245
    .local v13, "srcAddress":[B
    invoke-virtual {v10, v2, v3}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v4

    .line 1247
    .local v4, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v6, 0x0

    .line 1248
    .restart local v6    # "_hidl_array_offset_0":J
    invoke-virtual {v4, v6, v7, v13, v5}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 1249
    nop

    .line 1252
    .end local v4    # "_hidl_blob":Landroid/os/HwBlob;
    .end local v6    # "_hidl_array_offset_0":J
    new-array v8, v5, [B

    .line 1254
    .local v8, "p2pDeviceAddress":[B
    invoke-virtual {v10, v2, v3}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v4

    .line 1256
    .restart local v4    # "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v6, 0x0

    .line 1257
    .restart local v6    # "_hidl_array_offset_0":J
    invoke-virtual {v4, v6, v7, v8, v5}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 1258
    nop

    .line 1261
    .end local v4    # "_hidl_blob":Landroid/os/HwBlob;
    .end local v6    # "_hidl_array_offset_0":J
    const/16 v4, 0x8

    new-array v7, v4, [B

    .line 1263
    .local v7, "primaryDeviceType":[B
    invoke-virtual {v10, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 1265
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v2, 0x0

    .line 1266
    .local v2, "_hidl_array_offset_0":J
    invoke-virtual {v0, v2, v3, v7, v4}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 1267
    nop

    .line 1270
    .end local v0    # "_hidl_blob":Landroid/os/HwBlob;
    .end local v2    # "_hidl_array_offset_0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 1271
    .local v14, "deviceName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt16()S

    move-result v15

    .line 1272
    .local v15, "configMethods":S
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8()B

    move-result v16

    .line 1273
    .local v16, "deviceCapabilities":B
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v17

    .line 1274
    .local v17, "groupCapabilities":I
    new-array v6, v5, [B

    .line 1276
    .local v6, "wfdDeviceInfo":[B
    const-wide/16 v0, 0x6

    invoke-virtual {v10, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 1278
    .restart local v0    # "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    .line 1279
    .local v1, "_hidl_array_offset_0":J
    invoke-virtual {v0, v1, v2, v6, v5}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 1280
    nop

    .line 1283
    .end local v0    # "_hidl_blob":Landroid/os/HwBlob;
    .end local v1    # "_hidl_array_offset_0":J
    move-object v0, v9

    move-object v1, v13

    move-object v2, v8

    move-object v3, v7

    move-object v4, v14

    move v5, v15

    move-object/from16 v18, v6

    move/from16 v6, v16

    .end local v6    # "wfdDeviceInfo":[B
    .local v18, "wfdDeviceInfo":[B
    move-object/from16 v19, v7

    move/from16 v7, v17

    .end local v7    # "primaryDeviceType":[B
    .local v19, "primaryDeviceType":[B
    move-object/from16 v20, v8

    move-object/from16 v8, v18

    .end local v8    # "p2pDeviceAddress":[B
    .local v20, "p2pDeviceAddress":[B
    invoke-virtual/range {v0 .. v8}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback$Stub;->onDeviceFound([B[B[BLjava/lang/String;SBI[B)V

    .line 1284
    goto :goto_7

    .line 1222
    .end local v12    # "_hidl_is_oneway":Z
    .end local v13    # "srcAddress":[B
    .end local v14    # "deviceName":Ljava/lang/String;
    .end local v15    # "configMethods":S
    .end local v16    # "deviceCapabilities":B
    .end local v17    # "groupCapabilities":I
    .end local v18    # "wfdDeviceInfo":[B
    .end local v19    # "primaryDeviceType":[B
    .end local v20    # "p2pDeviceAddress":[B
    :pswitch_f
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_31

    move v6, v7

    nop

    :cond_31
    move v0, v6

    .line 1223
    .local v0, "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_32

    .line 1224
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1225
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1226
    goto :goto_7

    .line 1227
    :cond_32
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIfaceCallback"

    invoke-virtual {v10, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1229
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1230
    .local v1, "id":I
    invoke-virtual {v9, v1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback$Stub;->onNetworkRemoved(I)V

    .line 1231
    goto :goto_7

    .line 1208
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "id":I
    :pswitch_10
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_33

    move v6, v7

    nop

    :cond_33
    move v0, v6

    .line 1209
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_34

    .line 1210
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1211
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1212
    goto :goto_7

    .line 1213
    :cond_34
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIfaceCallback"

    invoke-virtual {v10, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1215
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1216
    .restart local v1    # "id":I
    invoke-virtual {v9, v1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback$Stub;->onNetworkAdded(I)V

    .line 1217
    nop

    .line 1772
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "id":I
    :cond_35
    :goto_7
    return-void

    nop

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

    .line 1161
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 1
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 1187
    const-string v0, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIfaceCallback"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1188
    return-object p0

    .line 1190
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

    .line 1194
    invoke-virtual {p0, p1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback$Stub;->registerService(Ljava/lang/String;)V

    .line 1195
    return-void
.end method

.method public final setHALInstrumentation()V
    .locals 0

    .line 1152
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1199
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 1181
    const/4 v0, 0x1

    return v0
.end method
