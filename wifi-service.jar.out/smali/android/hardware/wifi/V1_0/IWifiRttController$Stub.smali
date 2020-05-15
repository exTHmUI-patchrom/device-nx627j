.class public abstract Landroid/hardware/wifi/V1_0/IWifiRttController$Stub;
.super Landroid/os/HwBinder;
.source "IWifiRttController.java"

# interfaces
.implements Landroid/hardware/wifi/V1_0/IWifiRttController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/wifi/V1_0/IWifiRttController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 664
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .locals 0

    .line 667
    return-object p0
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .locals 3

    .line 709
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 710
    .local v0, "info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 711
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 712
    const/4 v1, 0x0

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    .line 713
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

    .line 685
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
        0x76t
        0x6et
        -0x69t
        0x65t
        -0xbt
        -0x37t
        -0x39t
        0x59t
        -0x4et
        -0x59t
        0x63t
        -0x3et
        0x28t
        -0x7dt
        0x53t
        -0x5t
        0x5dt
        -0x11t
        -0xdt
        0x38t
        -0x64t
        0x2ct
        -0x3et
        -0x71t
        -0x7ft
        -0x29t
        -0x64t
        -0x6dt
        -0x69t
        0x4t
        -0x32t
        -0x75t
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

    .line 672
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "android.hardware.wifi@1.0::IWifiRttController"

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

    .line 679
    const-string v0, "android.hardware.wifi@1.0::IWifiRttController"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 1
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .line 698
    const/4 v0, 0x1

    return v0
.end method

.method public final notifySyspropsChanged()V
    .locals 0

    .line 718
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 719
    return-void
.end method

.method public onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .locals 20
    .param p1, "_hidl_code"    # I
    .param p2, "_hidl_request"    # Landroid/os/HwParcel;
    .param p3, "_hidl_reply"    # Landroid/os/HwParcel;
    .param p4, "_hidl_flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    .line 747
    const-wide/16 v2, 0x8

    const/high16 v4, -0x80000000

    const/4 v12, 0x0

    const/4 v5, 0x1

    packed-switch p1, :pswitch_data_0

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_10

    .line 1106
    :sswitch_0
    and-int/lit8 v2, p4, 0x1

    if-eqz v2, :cond_0

    move v12, v5

    nop

    :cond_0
    move v2, v12

    .line 1107
    .local v2, "_hidl_is_oneway":Z
    if-eqz v2, :cond_28

    .line 1108
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1109
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1110
    goto/16 :goto_10

    .line 1093
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_1
    and-int/lit8 v2, p4, 0x1

    if-eqz v2, :cond_1

    move v12, v5

    nop

    :cond_1
    move v2, v12

    .line 1094
    .restart local v2    # "_hidl_is_oneway":Z
    if-eq v2, v5, :cond_2

    .line 1095
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1096
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1097
    goto/16 :goto_10

    .line 1098
    :cond_2
    const-string v3, "android.hidl.base@1.0::IBase"

    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1100
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/wifi/V1_0/IWifiRttController$Stub;->notifySyspropsChanged()V

    .line 1101
    goto/16 :goto_10

    .line 1077
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_2
    and-int/lit8 v2, p4, 0x1

    if-eqz v2, :cond_3

    goto :goto_0

    :cond_3
    move v5, v12

    :goto_0
    move v2, v5

    .line 1078
    .restart local v2    # "_hidl_is_oneway":Z
    if-eqz v2, :cond_4

    .line 1079
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1080
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1081
    goto/16 :goto_10

    .line 1082
    :cond_4
    const-string v3, "android.hidl.base@1.0::IBase"

    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1084
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/wifi/V1_0/IWifiRttController$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object v3

    .line 1085
    .local v3, "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-virtual {v11, v12}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1086
    invoke-virtual {v3, v11}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1087
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1088
    goto/16 :goto_10

    .line 1062
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    :sswitch_3
    and-int/lit8 v2, p4, 0x1

    if-eqz v2, :cond_5

    goto :goto_1

    :cond_5
    move v5, v12

    :goto_1
    move v2, v5

    .line 1063
    .restart local v2    # "_hidl_is_oneway":Z
    if-eqz v2, :cond_6

    .line 1064
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1065
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1066
    goto/16 :goto_10

    .line 1067
    :cond_6
    const-string v3, "android.hidl.base@1.0::IBase"

    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1069
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/wifi/V1_0/IWifiRttController$Stub;->ping()V

    .line 1070
    invoke-virtual {v11, v12}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1071
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1072
    goto/16 :goto_10

    .line 1052
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_4
    and-int/lit8 v2, p4, 0x1

    if-eqz v2, :cond_7

    move v12, v5

    nop

    :cond_7
    move v2, v12

    .line 1053
    .restart local v2    # "_hidl_is_oneway":Z
    if-eqz v2, :cond_28

    .line 1054
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1055
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1056
    goto/16 :goto_10

    .line 1039
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_5
    and-int/lit8 v2, p4, 0x1

    if-eqz v2, :cond_8

    move v12, v5

    nop

    :cond_8
    move v2, v12

    .line 1040
    .restart local v2    # "_hidl_is_oneway":Z
    if-eq v2, v5, :cond_9

    .line 1041
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1042
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1043
    goto/16 :goto_10

    .line 1044
    :cond_9
    const-string v3, "android.hidl.base@1.0::IBase"

    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1046
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/wifi/V1_0/IWifiRttController$Stub;->setHALInstrumentation()V

    .line 1047
    goto/16 :goto_10

    .line 1006
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_6
    and-int/lit8 v6, p4, 0x1

    if-eqz v6, :cond_a

    goto :goto_2

    :cond_a
    move v5, v12

    .line 1007
    .local v5, "_hidl_is_oneway":Z
    :goto_2
    if-eqz v5, :cond_b

    .line 1008
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1009
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1010
    goto/16 :goto_10

    .line 1011
    :cond_b
    const-string v4, "android.hidl.base@1.0::IBase"

    invoke-virtual {v10, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1013
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/wifi/V1_0/IWifiRttController$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v4

    .line 1014
    .local v4, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {v11, v12}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1016
    new-instance v6, Landroid/os/HwBlob;

    const/16 v7, 0x10

    invoke-direct {v6, v7}, Landroid/os/HwBlob;-><init>(I)V

    .line 1018
    .local v6, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 1019
    .local v7, "_hidl_vec_size":I
    invoke-virtual {v6, v2, v3, v7}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 1020
    const-wide/16 v2, 0xc

    invoke-virtual {v6, v2, v3, v12}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 1021
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v7, 0x20

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 1022
    .local v2, "childBlob":Landroid/os/HwBlob;
    nop

    .local v12, "_hidl_index_0":I
    :goto_3
    move v3, v12

    .end local v12    # "_hidl_index_0":I
    .local v3, "_hidl_index_0":I
    if-ge v3, v7, :cond_c

    .line 1024
    mul-int/lit8 v8, v3, 0x20

    int-to-long v8, v8

    .line 1025
    .local v8, "_hidl_array_offset_1":J
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [B

    invoke-virtual {v2, v8, v9, v12}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 1026
    nop

    .line 1022
    .end local v8    # "_hidl_array_offset_1":J
    add-int/lit8 v12, v3, 0x1

    .end local v3    # "_hidl_index_0":I
    .restart local v12    # "_hidl_index_0":I
    goto :goto_3

    .line 1029
    .end local v12    # "_hidl_index_0":I
    :cond_c
    const-wide/16 v8, 0x0

    invoke-virtual {v6, v8, v9, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 1031
    .end local v2    # "childBlob":Landroid/os/HwBlob;
    .end local v7    # "_hidl_vec_size":I
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 1033
    .end local v6    # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1034
    goto/16 :goto_10

    .line 990
    .end local v4    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v5    # "_hidl_is_oneway":Z
    :sswitch_7
    and-int/lit8 v2, p4, 0x1

    if-eqz v2, :cond_d

    goto :goto_4

    :cond_d
    move v5, v12

    :goto_4
    move v2, v5

    .line 991
    .local v2, "_hidl_is_oneway":Z
    if-eqz v2, :cond_e

    .line 992
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 993
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 994
    goto/16 :goto_10

    .line 995
    :cond_e
    const-string v3, "android.hidl.base@1.0::IBase"

    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 997
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/wifi/V1_0/IWifiRttController$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v3

    .line 998
    .local v3, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {v11, v12}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 999
    invoke-virtual {v11, v3}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1000
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1001
    goto/16 :goto_10

    .line 976
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "_hidl_out_descriptor":Ljava/lang/String;
    :sswitch_8
    and-int/lit8 v2, p4, 0x1

    if-eqz v2, :cond_f

    goto :goto_5

    :cond_f
    move v5, v12

    :goto_5
    move v2, v5

    .line 977
    .restart local v2    # "_hidl_is_oneway":Z
    if-eqz v2, :cond_10

    .line 978
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 979
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 980
    goto/16 :goto_10

    .line 981
    :cond_10
    const-string v3, "android.hidl.base@1.0::IBase"

    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 983
    invoke-virtual {v11, v12}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 984
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 985
    goto/16 :goto_10

    .line 960
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_9
    and-int/lit8 v2, p4, 0x1

    if-eqz v2, :cond_11

    goto :goto_6

    :cond_11
    move v5, v12

    :goto_6
    move v2, v5

    .line 961
    .restart local v2    # "_hidl_is_oneway":Z
    if-eqz v2, :cond_12

    .line 962
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 963
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 964
    goto/16 :goto_10

    .line 965
    :cond_12
    const-string v3, "android.hidl.base@1.0::IBase"

    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 967
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/wifi/V1_0/IWifiRttController$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v3

    .line 968
    .local v3, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v11, v12}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 969
    invoke-virtual {v11, v3}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 970
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 971
    goto/16 :goto_10

    .line 943
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :pswitch_0
    and-int/lit8 v2, p4, 0x1

    if-eqz v2, :cond_13

    goto :goto_7

    :cond_13
    move v5, v12

    :goto_7
    move v2, v5

    .line 944
    .restart local v2    # "_hidl_is_oneway":Z
    if-eqz v2, :cond_14

    .line 945
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 946
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 947
    goto/16 :goto_10

    .line 948
    :cond_14
    const-string v3, "android.hardware.wifi@1.0::IWifiRttController"

    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 950
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 951
    .local v3, "cmdId":I
    invoke-virtual {v0, v3}, Landroid/hardware/wifi/V1_0/IWifiRttController$Stub;->disableResponder(I)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v4

    .line 952
    .local v4, "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    invoke-virtual {v11, v12}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 953
    invoke-virtual {v4, v11}, Landroid/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 954
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 955
    goto/16 :goto_10

    .line 921
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "cmdId":I
    .end local v4    # "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    :pswitch_1
    and-int/lit8 v2, p4, 0x1

    if-eqz v2, :cond_15

    goto :goto_8

    :cond_15
    move v5, v12

    :goto_8
    move v2, v5

    .line 922
    .restart local v2    # "_hidl_is_oneway":Z
    if-eqz v2, :cond_16

    .line 923
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 924
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 925
    goto/16 :goto_10

    .line 926
    :cond_16
    const-string v3, "android.hardware.wifi@1.0::IWifiRttController"

    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 928
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 929
    .restart local v3    # "cmdId":I
    new-instance v4, Landroid/hardware/wifi/V1_0/WifiChannelInfo;

    invoke-direct {v4}, Landroid/hardware/wifi/V1_0/WifiChannelInfo;-><init>()V

    .line 930
    .local v4, "channelHint":Landroid/hardware/wifi/V1_0/WifiChannelInfo;
    invoke-virtual {v4, v10}, Landroid/hardware/wifi/V1_0/WifiChannelInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 931
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 932
    .local v5, "maxDurationSeconds":I
    new-instance v6, Landroid/hardware/wifi/V1_0/RttResponder;

    invoke-direct {v6}, Landroid/hardware/wifi/V1_0/RttResponder;-><init>()V

    .line 933
    .local v6, "info":Landroid/hardware/wifi/V1_0/RttResponder;
    invoke-virtual {v6, v10}, Landroid/hardware/wifi/V1_0/RttResponder;->readFromParcel(Landroid/os/HwParcel;)V

    .line 934
    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/hardware/wifi/V1_0/IWifiRttController$Stub;->enableResponder(ILandroid/hardware/wifi/V1_0/WifiChannelInfo;ILandroid/hardware/wifi/V1_0/RttResponder;)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v7

    .line 935
    .local v7, "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    invoke-virtual {v11, v12}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 936
    invoke-virtual {v7, v11}, Landroid/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 937
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 938
    goto/16 :goto_10

    .line 901
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "cmdId":I
    .end local v4    # "channelHint":Landroid/hardware/wifi/V1_0/WifiChannelInfo;
    .end local v5    # "maxDurationSeconds":I
    .end local v6    # "info":Landroid/hardware/wifi/V1_0/RttResponder;
    .end local v7    # "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    :pswitch_2
    and-int/lit8 v2, p4, 0x1

    if-eqz v2, :cond_17

    move v12, v5

    nop

    :cond_17
    move v2, v12

    .line 902
    .restart local v2    # "_hidl_is_oneway":Z
    if-eqz v2, :cond_18

    .line 903
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 904
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 905
    goto/16 :goto_10

    .line 906
    :cond_18
    const-string v3, "android.hardware.wifi@1.0::IWifiRttController"

    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 908
    new-instance v3, Landroid/hardware/wifi/V1_0/IWifiRttController$Stub$3;

    invoke-direct {v3, v0, v11}, Landroid/hardware/wifi/V1_0/IWifiRttController$Stub$3;-><init>(Landroid/hardware/wifi/V1_0/IWifiRttController$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {v0, v3}, Landroid/hardware/wifi/V1_0/IWifiRttController$Stub;->getResponderInfo(Landroid/hardware/wifi/V1_0/IWifiRttController$getResponderInfoCallback;)V

    .line 916
    goto/16 :goto_10

    .line 882
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_3
    and-int/lit8 v2, p4, 0x1

    if-eqz v2, :cond_19

    goto :goto_9

    :cond_19
    move v5, v12

    :goto_9
    move v2, v5

    .line 883
    .restart local v2    # "_hidl_is_oneway":Z
    if-eqz v2, :cond_1a

    .line 884
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 885
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 886
    goto/16 :goto_10

    .line 887
    :cond_1a
    const-string v3, "android.hardware.wifi@1.0::IWifiRttController"

    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 889
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 890
    .restart local v3    # "cmdId":I
    new-instance v4, Landroid/hardware/wifi/V1_0/RttLcrInformation;

    invoke-direct {v4}, Landroid/hardware/wifi/V1_0/RttLcrInformation;-><init>()V

    .line 891
    .local v4, "lcr":Landroid/hardware/wifi/V1_0/RttLcrInformation;
    invoke-virtual {v4, v10}, Landroid/hardware/wifi/V1_0/RttLcrInformation;->readFromParcel(Landroid/os/HwParcel;)V

    .line 892
    invoke-virtual {v0, v3, v4}, Landroid/hardware/wifi/V1_0/IWifiRttController$Stub;->setLcr(ILandroid/hardware/wifi/V1_0/RttLcrInformation;)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v5

    .line 893
    .local v5, "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    invoke-virtual {v11, v12}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 894
    invoke-virtual {v5, v11}, Landroid/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 895
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 896
    goto/16 :goto_10

    .line 863
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "cmdId":I
    .end local v4    # "lcr":Landroid/hardware/wifi/V1_0/RttLcrInformation;
    .end local v5    # "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    :pswitch_4
    and-int/lit8 v2, p4, 0x1

    if-eqz v2, :cond_1b

    goto :goto_a

    :cond_1b
    move v5, v12

    :goto_a
    move v2, v5

    .line 864
    .restart local v2    # "_hidl_is_oneway":Z
    if-eqz v2, :cond_1c

    .line 865
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 866
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 867
    goto/16 :goto_10

    .line 868
    :cond_1c
    const-string v3, "android.hardware.wifi@1.0::IWifiRttController"

    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 870
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 871
    .restart local v3    # "cmdId":I
    new-instance v4, Landroid/hardware/wifi/V1_0/RttLciInformation;

    invoke-direct {v4}, Landroid/hardware/wifi/V1_0/RttLciInformation;-><init>()V

    .line 872
    .local v4, "lci":Landroid/hardware/wifi/V1_0/RttLciInformation;
    invoke-virtual {v4, v10}, Landroid/hardware/wifi/V1_0/RttLciInformation;->readFromParcel(Landroid/os/HwParcel;)V

    .line 873
    invoke-virtual {v0, v3, v4}, Landroid/hardware/wifi/V1_0/IWifiRttController$Stub;->setLci(ILandroid/hardware/wifi/V1_0/RttLciInformation;)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v5

    .line 874
    .restart local v5    # "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    invoke-virtual {v11, v12}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 875
    invoke-virtual {v5, v11}, Landroid/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 876
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 877
    goto/16 :goto_10

    .line 843
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "cmdId":I
    .end local v4    # "lci":Landroid/hardware/wifi/V1_0/RttLciInformation;
    .end local v5    # "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    :pswitch_5
    and-int/lit8 v2, p4, 0x1

    if-eqz v2, :cond_1d

    move v12, v5

    nop

    :cond_1d
    move v2, v12

    .line 844
    .restart local v2    # "_hidl_is_oneway":Z
    if-eqz v2, :cond_1e

    .line 845
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 846
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 847
    goto/16 :goto_10

    .line 848
    :cond_1e
    const-string v3, "android.hardware.wifi@1.0::IWifiRttController"

    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 850
    new-instance v3, Landroid/hardware/wifi/V1_0/IWifiRttController$Stub$2;

    invoke-direct {v3, v0, v11}, Landroid/hardware/wifi/V1_0/IWifiRttController$Stub$2;-><init>(Landroid/hardware/wifi/V1_0/IWifiRttController$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {v0, v3}, Landroid/hardware/wifi/V1_0/IWifiRttController$Stub;->getCapabilities(Landroid/hardware/wifi/V1_0/IWifiRttController$getCapabilitiesCallback;)V

    .line 858
    goto/16 :goto_10

    .line 805
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_6
    and-int/lit8 v6, p4, 0x1

    if-eqz v6, :cond_1f

    goto :goto_b

    :cond_1f
    move v5, v12

    :goto_b
    move v13, v5

    .line 806
    .local v13, "_hidl_is_oneway":Z
    if-eqz v13, :cond_20

    .line 807
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 808
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 809
    goto/16 :goto_10

    .line 810
    :cond_20
    const-string v4, "android.hardware.wifi@1.0::IWifiRttController"

    invoke-virtual {v10, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 812
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v14

    .line 813
    .local v14, "cmdId":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v9, v4

    .line 815
    .local v9, "addrs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    const-wide/16 v4, 0x10

    invoke-virtual {v10, v4, v5}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v7

    .line 817
    .local v7, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v7, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v8

    .line 818
    .local v8, "_hidl_vec_size":I
    mul-int/lit8 v2, v8, 0x6

    int-to-long v3, v2

    .line 819
    invoke-virtual {v7}, Landroid/os/HwBlob;->handle()J

    move-result-wide v5

    const-wide/16 v15, 0x0

    const/16 v17, 0x1

    .line 818
    move-object v2, v10

    move-object/from16 v18, v7

    move v12, v8

    move-wide v7, v15

    .end local v7    # "_hidl_blob":Landroid/os/HwBlob;
    .end local v8    # "_hidl_vec_size":I
    .local v12, "_hidl_vec_size":I
    .local v18, "_hidl_blob":Landroid/os/HwBlob;
    move-object v1, v9

    move/from16 v9, v17

    .end local v9    # "addrs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .local v1, "addrs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual/range {v2 .. v9}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v2

    .line 822
    .local v2, "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 823
    const/4 v3, 0x0

    .local v3, "_hidl_index_0":I
    :goto_c
    if-ge v3, v12, :cond_21

    .line 824
    const/4 v4, 0x6

    new-array v5, v4, [B

    .line 826
    .local v5, "_hidl_vec_element":[B
    mul-int/lit8 v6, v3, 0x6

    int-to-long v6, v6

    .line 827
    .local v6, "_hidl_array_offset_1":J
    invoke-virtual {v2, v6, v7, v5, v4}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 828
    nop

    .line 830
    .end local v6    # "_hidl_array_offset_1":J
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 823
    .end local v5    # "_hidl_vec_element":[B
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 834
    .end local v2    # "childBlob":Landroid/os/HwBlob;
    .end local v3    # "_hidl_index_0":I
    .end local v12    # "_hidl_vec_size":I
    .end local v18    # "_hidl_blob":Landroid/os/HwBlob;
    :cond_21
    invoke-virtual {v0, v14, v1}, Landroid/hardware/wifi/V1_0/IWifiRttController$Stub;->rangeCancel(ILjava/util/ArrayList;)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v2

    .line 835
    .local v2, "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    const/4 v3, 0x0

    invoke-virtual {v11, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 836
    invoke-virtual {v2, v11}, Landroid/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 837
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 838
    goto/16 :goto_10

    .line 787
    .end local v1    # "addrs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    .end local v13    # "_hidl_is_oneway":Z
    .end local v14    # "cmdId":I
    :pswitch_7
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_22

    goto :goto_d

    :cond_22
    const/4 v5, 0x0

    :goto_d
    move v1, v5

    .line 788
    .local v1, "_hidl_is_oneway":Z
    if-eqz v1, :cond_23

    .line 789
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 790
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 791
    goto/16 :goto_10

    .line 792
    :cond_23
    const-string v2, "android.hardware.wifi@1.0::IWifiRttController"

    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 794
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 795
    .local v2, "cmdId":I
    invoke-static/range {p2 .. p2}, Landroid/hardware/wifi/V1_0/RttConfig;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v3

    .line 796
    .local v3, "rttConfigs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/wifi/V1_0/RttConfig;>;"
    invoke-virtual {v0, v2, v3}, Landroid/hardware/wifi/V1_0/IWifiRttController$Stub;->rangeRequest(ILjava/util/ArrayList;)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v4

    .line 797
    .local v4, "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    const/4 v5, 0x0

    invoke-virtual {v11, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 798
    invoke-virtual {v4, v11}, Landroid/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 799
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 800
    goto :goto_10

    .line 770
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "cmdId":I
    .end local v3    # "rttConfigs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/wifi/V1_0/RttConfig;>;"
    .end local v4    # "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    :pswitch_8
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_24

    goto :goto_e

    :cond_24
    const/4 v5, 0x0

    :goto_e
    move v1, v5

    .line 771
    .restart local v1    # "_hidl_is_oneway":Z
    if-eqz v1, :cond_25

    .line 772
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 773
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 774
    goto :goto_10

    .line 775
    :cond_25
    const-string v2, "android.hardware.wifi@1.0::IWifiRttController"

    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 777
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/wifi/V1_0/IWifiRttControllerEventCallback;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/wifi/V1_0/IWifiRttControllerEventCallback;

    move-result-object v2

    .line 778
    .local v2, "callback":Landroid/hardware/wifi/V1_0/IWifiRttControllerEventCallback;
    invoke-virtual {v0, v2}, Landroid/hardware/wifi/V1_0/IWifiRttController$Stub;->registerEventCallback(Landroid/hardware/wifi/V1_0/IWifiRttControllerEventCallback;)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v3

    .line 779
    .local v3, "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    const/4 v6, 0x0

    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 780
    invoke-virtual {v3, v11}, Landroid/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 781
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 782
    goto :goto_10

    .line 750
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "callback":Landroid/hardware/wifi/V1_0/IWifiRttControllerEventCallback;
    .end local v3    # "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    :pswitch_9
    move v6, v12

    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_26

    goto :goto_f

    :cond_26
    move v5, v6

    :goto_f
    move v1, v5

    .line 751
    .restart local v1    # "_hidl_is_oneway":Z
    if-eqz v1, :cond_27

    .line 752
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 753
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 754
    goto :goto_10

    .line 755
    :cond_27
    const-string v2, "android.hardware.wifi@1.0::IWifiRttController"

    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 757
    new-instance v2, Landroid/hardware/wifi/V1_0/IWifiRttController$Stub$1;

    invoke-direct {v2, v0, v11}, Landroid/hardware/wifi/V1_0/IWifiRttController$Stub$1;-><init>(Landroid/hardware/wifi/V1_0/IWifiRttController$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {v0, v2}, Landroid/hardware/wifi/V1_0/IWifiRttController$Stub;->getBoundIface(Landroid/hardware/wifi/V1_0/IWifiRttController$getBoundIfaceCallback;)V

    .line 765
    nop

    .line 1115
    .end local v1    # "_hidl_is_oneway":Z
    :cond_28
    :goto_10
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 703
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 1
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 729
    const-string v0, "android.hardware.wifi@1.0::IWifiRttController"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 730
    return-object p0

    .line 732
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

    .line 736
    invoke-virtual {p0, p1}, Landroid/hardware/wifi/V1_0/IWifiRttController$Stub;->registerService(Ljava/lang/String;)V

    .line 737
    return-void
.end method

.method public final setHALInstrumentation()V
    .locals 0

    .line 694
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 741
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/wifi/V1_0/IWifiRttController$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 723
    const/4 v0, 0x1

    return v0
.end method
