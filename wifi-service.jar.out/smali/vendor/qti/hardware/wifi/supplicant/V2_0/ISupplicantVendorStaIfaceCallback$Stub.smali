.class public abstract Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIfaceCallback$Stub;
.super Landroid/os/HwBinder;
.source "ISupplicantVendorStaIfaceCallback.java"

# interfaces
.implements Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIfaceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIfaceCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 593
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .locals 0

    .line 596
    return-object p0
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .locals 3

    .line 638
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 639
    .local v0, "info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 640
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 641
    const/4 v1, 0x0

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    .line 642
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

    .line 614
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
        0x29t
        0x69t
        0x6ct
        0x53t
        0x24t
        -0x64t
        -0x1ft
        -0x11t
        -0x7bt
        0x10t
        -0x9t
        -0x28t
        -0x5t
        0x49t
        0x19t
        -0x55t
        0x7t
        -0x21t
        0x13t
        -0x71t
        0x1ft
        -0x70t
        -0x68t
        0x44t
        -0x4ct
        -0x31t
        0x30t
        0x9t
        -0x15t
        0x27t
        0x41t
        -0x34t
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

    .line 601
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "vendor.qti.hardware.wifi.supplicant@2.0::ISupplicantVendorStaIfaceCallback"

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

    .line 608
    const-string v0, "vendor.qti.hardware.wifi.supplicant@2.0::ISupplicantVendorStaIfaceCallback"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 1
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .line 627
    const/4 v0, 0x1

    return v0
.end method

.method public final notifySyspropsChanged()V
    .locals 0

    .line 647
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 648
    return-void
.end method

.method public onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .locals 21
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

    .line 676
    const/high16 v0, -0x80000000

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_7

    .line 956
    :sswitch_0
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_0

    move v1, v2

    nop

    .line 957
    .local v1, "_hidl_is_oneway":Z
    :cond_0
    if-eqz v1, :cond_23

    .line 958
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 959
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 960
    goto/16 :goto_7

    .line 943
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_1
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1

    move v1, v2

    nop

    .line 944
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1
    if-eq v1, v2, :cond_2

    .line 945
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 946
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 947
    goto/16 :goto_7

    .line 948
    :cond_2
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 950
    invoke-virtual/range {p0 .. p0}, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIfaceCallback$Stub;->notifySyspropsChanged()V

    .line 951
    goto/16 :goto_7

    .line 927
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_2
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_3
    move v2, v1

    .line 928
    .local v2, "_hidl_is_oneway":Z
    :goto_0
    if-eqz v2, :cond_4

    .line 929
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 930
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 931
    goto/16 :goto_7

    .line 932
    :cond_4
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 934
    invoke-virtual/range {p0 .. p0}, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIfaceCallback$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    .line 935
    .local v0, "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 936
    invoke-virtual {v0, v11}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 937
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 938
    goto/16 :goto_7

    .line 912
    .end local v0    # "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_3
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_5

    goto :goto_1

    :cond_5
    move v2, v1

    .line 913
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_1
    if-eqz v2, :cond_6

    .line 914
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 915
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 916
    goto/16 :goto_7

    .line 917
    :cond_6
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 919
    invoke-virtual/range {p0 .. p0}, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIfaceCallback$Stub;->ping()V

    .line 920
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 921
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 922
    goto/16 :goto_7

    .line 902
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_4
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_7

    move v1, v2

    nop

    .line 903
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_7
    if-eqz v1, :cond_23

    .line 904
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 905
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 906
    goto/16 :goto_7

    .line 889
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_5
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_8

    move v1, v2

    nop

    .line 890
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_8
    if-eq v1, v2, :cond_9

    .line 891
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 892
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 893
    goto/16 :goto_7

    .line 894
    :cond_9
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 896
    invoke-virtual/range {p0 .. p0}, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIfaceCallback$Stub;->setHALInstrumentation()V

    .line 897
    goto/16 :goto_7

    .line 856
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_6
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_a

    goto :goto_2

    :cond_a
    move v2, v1

    .line 857
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_2
    if-eqz v2, :cond_b

    .line 858
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 859
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 860
    goto/16 :goto_7

    .line 861
    :cond_b
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 863
    invoke-virtual/range {p0 .. p0}, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIfaceCallback$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 864
    .local v0, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 866
    new-instance v3, Landroid/os/HwBlob;

    const/16 v4, 0x10

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 868
    .local v3, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 869
    .local v4, "_hidl_vec_size":I
    const-wide/16 v5, 0x8

    invoke-virtual {v3, v5, v6, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 870
    const-wide/16 v5, 0xc

    invoke-virtual {v3, v5, v6, v1}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 871
    new-instance v5, Landroid/os/HwBlob;

    mul-int/lit8 v6, v4, 0x20

    invoke-direct {v5, v6}, Landroid/os/HwBlob;-><init>(I)V

    .line 872
    .local v5, "childBlob":Landroid/os/HwBlob;
    nop

    .local v1, "_hidl_index_0":I
    :goto_3
    if-ge v1, v4, :cond_c

    .line 874
    mul-int/lit8 v6, v1, 0x20

    int-to-long v6, v6

    .line 875
    .local v6, "_hidl_array_offset_1":J
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 876
    nop

    .line 872
    .end local v6    # "_hidl_array_offset_1":J
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 879
    .end local v1    # "_hidl_index_0":I
    :cond_c
    const-wide/16 v6, 0x0

    invoke-virtual {v3, v6, v7, v5}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 881
    .end local v4    # "_hidl_vec_size":I
    .end local v5    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v11, v3}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 883
    .end local v3    # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 884
    goto/16 :goto_7

    .line 840
    .end local v0    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_7
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_d

    goto :goto_4

    :cond_d
    move v2, v1

    .line 841
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_4
    if-eqz v2, :cond_e

    .line 842
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 843
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 844
    goto/16 :goto_7

    .line 845
    :cond_e
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 847
    invoke-virtual/range {p0 .. p0}, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIfaceCallback$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 848
    .local v0, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 849
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 850
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 851
    goto/16 :goto_7

    .line 826
    .end local v0    # "_hidl_out_descriptor":Ljava/lang/String;
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_8
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_f

    goto :goto_5

    :cond_f
    move v2, v1

    .line 827
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_5
    if-eqz v2, :cond_10

    .line 828
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 829
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 830
    goto/16 :goto_7

    .line 831
    :cond_10
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 833
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 834
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 835
    goto/16 :goto_7

    .line 810
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_9
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_11

    goto :goto_6

    :cond_11
    move v2, v1

    .line 811
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_6
    if-eqz v2, :cond_12

    .line 812
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 813
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 814
    goto/16 :goto_7

    .line 815
    :cond_12
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 817
    invoke-virtual/range {p0 .. p0}, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIfaceCallback$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 818
    .local v0, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 819
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 820
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 821
    goto/16 :goto_7

    .line 796
    .end local v0    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_0
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_13

    move v1, v2

    nop

    .line 797
    .local v1, "_hidl_is_oneway":Z
    :cond_13
    if-eq v1, v2, :cond_14

    .line 798
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 799
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 800
    goto/16 :goto_7

    .line 801
    :cond_14
    const-string v0, "vendor.qti.hardware.wifi.supplicant@2.0::ISupplicantVendorStaIfaceCallback"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 803
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 804
    .local v0, "id":I
    invoke-virtual {v9, v0}, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIfaceCallback$Stub;->onDppNetworkId(I)V

    .line 805
    goto/16 :goto_7

    .line 782
    .end local v0    # "id":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_1
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_15

    move v1, v2

    nop

    .line 783
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_15
    if-eq v1, v2, :cond_16

    .line 784
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 785
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 786
    goto/16 :goto_7

    .line 787
    :cond_16
    const-string v0, "vendor.qti.hardware.wifi.supplicant@2.0::ISupplicantVendorStaIfaceCallback"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 789
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8()B

    move-result v0

    .line 790
    .local v0, "auth":B
    invoke-virtual {v9, v0}, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIfaceCallback$Stub;->onDppMissingAuth(B)V

    .line 791
    goto/16 :goto_7

    .line 761
    .end local v0    # "auth":B
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_2
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_17

    move v1, v2

    nop

    :cond_17
    move v12, v1

    .line 762
    .local v12, "_hidl_is_oneway":Z
    if-eq v12, v2, :cond_18

    .line 763
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 764
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 765
    goto/16 :goto_7

    .line 766
    :cond_18
    const-string v0, "vendor.qti.hardware.wifi.supplicant@2.0::ISupplicantVendorStaIfaceCallback"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 768
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8()B

    move-result v13

    .line 769
    .local v13, "type":B
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v14

    .line 770
    .local v14, "ssid":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 771
    .local v15, "connector":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v16

    .line 772
    .local v16, "c_sign":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v17

    .line 773
    .local v17, "net_access":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v18

    .line 774
    .local v18, "net_access_expiry":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 775
    .local v19, "passphrase":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v20

    .line 776
    .local v20, "psk":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    move-object v0, v9

    move v1, v13

    move-object v2, v14

    move-object v3, v15

    move-object/from16 v4, v16

    move-object/from16 v5, v17

    move/from16 v6, v18

    move-object/from16 v7, v19

    move-object/from16 v8, v20

    invoke-virtual/range {v0 .. v8}, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIfaceCallback$Stub;->onDppConf(BLjava/util/ArrayList;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;ILjava/lang/String;Ljava/util/ArrayList;)V

    .line 777
    goto/16 :goto_7

    .line 747
    .end local v12    # "_hidl_is_oneway":Z
    .end local v13    # "type":B
    .end local v14    # "ssid":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    .end local v15    # "connector":Ljava/lang/String;
    .end local v16    # "c_sign":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    .end local v17    # "net_access":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    .end local v18    # "net_access_expiry":I
    .end local v19    # "passphrase":Ljava/lang/String;
    .end local v20    # "psk":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :pswitch_3
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_19

    move v1, v2

    nop

    .line 748
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_19
    if-eq v1, v2, :cond_1a

    .line 749
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 750
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 751
    goto/16 :goto_7

    .line 752
    :cond_1a
    const-string v0, "vendor.qti.hardware.wifi.supplicant@2.0::ISupplicantVendorStaIfaceCallback"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 754
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v0

    .line 755
    .local v0, "bootstrapData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {v9, v0}, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIfaceCallback$Stub;->onDppScanPeerQrCode(Ljava/util/ArrayList;)V

    .line 756
    goto/16 :goto_7

    .line 734
    .end local v0    # "bootstrapData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_4
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1b

    move v1, v2

    nop

    .line 735
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1b
    if-eq v1, v2, :cond_1c

    .line 736
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 737
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 738
    goto/16 :goto_7

    .line 739
    :cond_1c
    const-string v0, "vendor.qti.hardware.wifi.supplicant@2.0::ISupplicantVendorStaIfaceCallback"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 741
    invoke-virtual/range {p0 .. p0}, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIfaceCallback$Stub;->onDppResponsePending()V

    .line 742
    goto/16 :goto_7

    .line 719
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_5
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1d

    move v1, v2

    nop

    .line 720
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1d
    if-eq v1, v2, :cond_1e

    .line 721
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 722
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 723
    goto/16 :goto_7

    .line 724
    :cond_1e
    const-string v0, "vendor.qti.hardware.wifi.supplicant@2.0::ISupplicantVendorStaIfaceCallback"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 726
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8()B

    move-result v0

    .line 727
    .local v0, "capab":B
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 728
    .local v2, "initiator":Z
    invoke-virtual {v9, v0, v2}, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIfaceCallback$Stub;->onDppNotCompatible(BZ)V

    .line 729
    goto :goto_7

    .line 705
    .end local v0    # "capab":B
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "initiator":Z
    :pswitch_6
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1f

    move v1, v2

    nop

    .line 706
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1f
    if-eq v1, v2, :cond_20

    .line 707
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 708
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 709
    goto :goto_7

    .line 710
    :cond_20
    const-string v0, "vendor.qti.hardware.wifi.supplicant@2.0::ISupplicantVendorStaIfaceCallback"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 712
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v0

    .line 713
    .local v0, "initiator":Z
    invoke-virtual {v9, v0}, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIfaceCallback$Stub;->onDppAuthSuccess(Z)V

    .line 714
    goto :goto_7

    .line 679
    .end local v0    # "initiator":Z
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_7
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_21

    move v1, v2

    nop

    :cond_21
    move v6, v1

    .line 680
    .local v6, "_hidl_is_oneway":Z
    if-eq v6, v2, :cond_22

    .line 681
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 682
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 683
    goto :goto_7

    .line 684
    :cond_22
    const-string v0, "vendor.qti.hardware.wifi.supplicant@2.0::ISupplicantVendorStaIfaceCallback"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 686
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v7

    .line 687
    .local v7, "newState":I
    const/4 v0, 0x6

    new-array v8, v0, [B

    .line 689
    .local v8, "bssid":[B
    const-wide/16 v1, 0x6

    invoke-virtual {v10, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    .line 691
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v2, 0x0

    .line 692
    .local v2, "_hidl_array_offset_0":J
    invoke-virtual {v1, v2, v3, v8, v0}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 693
    nop

    .line 696
    .end local v1    # "_hidl_blob":Landroid/os/HwBlob;
    .end local v2    # "_hidl_array_offset_0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v12

    .line 697
    .local v12, "id":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v13

    .line 698
    .local v13, "ssid":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v14

    .line 699
    .local v14, "filsHlpSent":Z
    move-object v0, v9

    move v1, v7

    move-object v2, v8

    move v3, v12

    move-object v4, v13

    move v5, v14

    invoke-virtual/range {v0 .. v5}, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIfaceCallback$Stub;->onVendorStateChanged(I[BILjava/util/ArrayList;Z)V

    .line 700
    nop

    .line 965
    .end local v6    # "_hidl_is_oneway":Z
    .end local v7    # "newState":I
    .end local v8    # "bssid":[B
    .end local v12    # "id":I
    .end local v13    # "ssid":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    .end local v14    # "filsHlpSent":Z
    :cond_23
    :goto_7
    return-void

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 632
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 1
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 658
    const-string v0, "vendor.qti.hardware.wifi.supplicant@2.0::ISupplicantVendorStaIfaceCallback"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 659
    return-object p0

    .line 661
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

    .line 665
    invoke-virtual {p0, p1}, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIfaceCallback$Stub;->registerService(Ljava/lang/String;)V

    .line 666
    return-void
.end method

.method public final setHALInstrumentation()V
    .locals 0

    .line 623
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 670
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIfaceCallback$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 652
    const/4 v0, 0x1

    return v0
.end method
