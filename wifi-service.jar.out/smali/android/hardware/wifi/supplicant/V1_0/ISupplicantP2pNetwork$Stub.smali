.class public abstract Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetwork$Stub;
.super Landroid/os/HwBinder;
.source "ISupplicantP2pNetwork.java"

# interfaces
.implements Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetwork;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetwork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 686
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .locals 0

    .line 689
    return-object p0
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .locals 3

    .line 733
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 734
    .local v0, "info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 735
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 736
    const/4 v1, 0x0

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    .line 737
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

    .line 708
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
        0x56t
        0x12t
        -0x71t
        0x74t
        0x56t
        0x5t
        0x71t
        -0x4at
        0x77t
        0x7dt
        0x59t
        0x45t
        0x3ft
        0x35t
        -0x3at
        -0x4dt
        0x56t
        -0x6dt
        -0x12t
        0x37t
        0x7et
        0x2at
        0x23t
        -0x38t
        0x7t
        0x70t
        -0x77t
        0x6t
        -0x6et
        -0x71t
        0x9t
        -0x22t
    .end array-data

    :array_1
    .array-data 1
        -0x33t
        -0x60t
        0x10t
        0x8t
        -0x40t
        0x69t
        0x22t
        -0x6t
        0x37t
        -0x3ft
        0x21t
        0x3et
        -0x65t
        -0x48t
        0x31t
        -0x5ft
        0x9t
        -0x4dt
        0x17t
        0x45t
        0x32t
        -0x80t
        0x56t
        0x16t
        -0x5t
        0x71t
        0x61t
        -0x13t
        -0x3ct
        0x3t
        -0x7at
        0x6ft
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

    .line 694
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pNetwork"

    const-string v2, "android.hardware.wifi.supplicant@1.0::ISupplicantNetwork"

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

    .line 702
    const-string v0, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pNetwork"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 1
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .line 722
    const/4 v0, 0x1

    return v0
.end method

.method public final notifySyspropsChanged()V
    .locals 0

    .line 742
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 743
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

    move-object/from16 v0, p0

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    .line 771
    const-wide/16 v1, 0x8

    const/high16 v3, -0x80000000

    const/4 v11, 0x0

    const/4 v4, 0x1

    packed-switch p1, :pswitch_data_0

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_12

    .line 1179
    :sswitch_0
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_0

    move v11, v4

    nop

    :cond_0
    move v1, v11

    .line 1180
    .local v1, "_hidl_is_oneway":Z
    if-eqz v1, :cond_2a

    .line 1181
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1182
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1183
    goto/16 :goto_12

    .line 1166
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_1
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_1

    move v11, v4

    nop

    :cond_1
    move v1, v11

    .line 1167
    .restart local v1    # "_hidl_is_oneway":Z
    if-eq v1, v4, :cond_2

    .line 1168
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1169
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1170
    goto/16 :goto_12

    .line 1171
    :cond_2
    const-string v2, "android.hidl.base@1.0::IBase"

    invoke-virtual {v9, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1173
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetwork$Stub;->notifySyspropsChanged()V

    .line 1174
    goto/16 :goto_12

    .line 1150
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_2
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    move v4, v11

    :goto_0
    move v1, v4

    .line 1151
    .restart local v1    # "_hidl_is_oneway":Z
    if-eqz v1, :cond_4

    .line 1152
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1153
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1154
    goto/16 :goto_12

    .line 1155
    :cond_4
    const-string v2, "android.hidl.base@1.0::IBase"

    invoke-virtual {v9, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1157
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetwork$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object v2

    .line 1158
    .local v2, "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-virtual {v10, v11}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1159
    invoke-virtual {v2, v10}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1160
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1161
    goto/16 :goto_12

    .line 1135
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    :sswitch_3
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_5

    goto :goto_1

    :cond_5
    move v4, v11

    :goto_1
    move v1, v4

    .line 1136
    .restart local v1    # "_hidl_is_oneway":Z
    if-eqz v1, :cond_6

    .line 1137
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1138
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1139
    goto/16 :goto_12

    .line 1140
    :cond_6
    const-string v2, "android.hidl.base@1.0::IBase"

    invoke-virtual {v9, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1142
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetwork$Stub;->ping()V

    .line 1143
    invoke-virtual {v10, v11}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1144
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1145
    goto/16 :goto_12

    .line 1125
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_4
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_7

    move v11, v4

    nop

    :cond_7
    move v1, v11

    .line 1126
    .restart local v1    # "_hidl_is_oneway":Z
    if-eqz v1, :cond_2a

    .line 1127
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1128
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1129
    goto/16 :goto_12

    .line 1112
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_5
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_8

    move v11, v4

    nop

    :cond_8
    move v1, v11

    .line 1113
    .restart local v1    # "_hidl_is_oneway":Z
    if-eq v1, v4, :cond_9

    .line 1114
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1115
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1116
    goto/16 :goto_12

    .line 1117
    :cond_9
    const-string v2, "android.hidl.base@1.0::IBase"

    invoke-virtual {v9, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1119
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetwork$Stub;->setHALInstrumentation()V

    .line 1120
    goto/16 :goto_12

    .line 1079
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_6
    and-int/lit8 v5, p4, 0x1

    if-eqz v5, :cond_a

    goto :goto_2

    :cond_a
    move v4, v11

    .line 1080
    .local v4, "_hidl_is_oneway":Z
    :goto_2
    if-eqz v4, :cond_b

    .line 1081
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1082
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1083
    goto/16 :goto_12

    .line 1084
    :cond_b
    const-string v3, "android.hidl.base@1.0::IBase"

    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1086
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetwork$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v3

    .line 1087
    .local v3, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {v10, v11}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1089
    new-instance v5, Landroid/os/HwBlob;

    const/16 v6, 0x10

    invoke-direct {v5, v6}, Landroid/os/HwBlob;-><init>(I)V

    .line 1091
    .local v5, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 1092
    .local v6, "_hidl_vec_size":I
    invoke-virtual {v5, v1, v2, v6}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 1093
    const-wide/16 v1, 0xc

    invoke-virtual {v5, v1, v2, v11}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 1094
    new-instance v1, Landroid/os/HwBlob;

    mul-int/lit8 v2, v6, 0x20

    invoke-direct {v1, v2}, Landroid/os/HwBlob;-><init>(I)V

    .line 1095
    .local v1, "childBlob":Landroid/os/HwBlob;
    nop

    .local v11, "_hidl_index_0":I
    :goto_3
    move v2, v11

    .end local v11    # "_hidl_index_0":I
    .local v2, "_hidl_index_0":I
    if-ge v2, v6, :cond_c

    .line 1097
    mul-int/lit8 v7, v2, 0x20

    int-to-long v7, v7

    .line 1098
    .local v7, "_hidl_array_offset_1":J
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [B

    invoke-virtual {v1, v7, v8, v11}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 1099
    nop

    .line 1095
    .end local v7    # "_hidl_array_offset_1":J
    add-int/lit8 v11, v2, 0x1

    .end local v2    # "_hidl_index_0":I
    .restart local v11    # "_hidl_index_0":I
    goto :goto_3

    .line 1102
    .end local v11    # "_hidl_index_0":I
    :cond_c
    const-wide/16 v7, 0x0

    invoke-virtual {v5, v7, v8, v1}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 1104
    .end local v1    # "childBlob":Landroid/os/HwBlob;
    .end local v6    # "_hidl_vec_size":I
    invoke-virtual {v10, v5}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 1106
    .end local v5    # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1107
    goto/16 :goto_12

    .line 1063
    .end local v3    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v4    # "_hidl_is_oneway":Z
    :sswitch_7
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_d

    goto :goto_4

    :cond_d
    move v4, v11

    :goto_4
    move v1, v4

    .line 1064
    .local v1, "_hidl_is_oneway":Z
    if-eqz v1, :cond_e

    .line 1065
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1066
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1067
    goto/16 :goto_12

    .line 1068
    :cond_e
    const-string v2, "android.hidl.base@1.0::IBase"

    invoke-virtual {v9, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1070
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetwork$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v2

    .line 1071
    .local v2, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {v10, v11}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1072
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1073
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1074
    goto/16 :goto_12

    .line 1049
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "_hidl_out_descriptor":Ljava/lang/String;
    :sswitch_8
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_f

    goto :goto_5

    :cond_f
    move v4, v11

    :goto_5
    move v1, v4

    .line 1050
    .restart local v1    # "_hidl_is_oneway":Z
    if-eqz v1, :cond_10

    .line 1051
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1052
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1053
    goto/16 :goto_12

    .line 1054
    :cond_10
    const-string v2, "android.hidl.base@1.0::IBase"

    invoke-virtual {v9, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1056
    invoke-virtual {v10, v11}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1057
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1058
    goto/16 :goto_12

    .line 1033
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_9
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_11

    goto :goto_6

    :cond_11
    move v4, v11

    :goto_6
    move v1, v4

    .line 1034
    .restart local v1    # "_hidl_is_oneway":Z
    if-eqz v1, :cond_12

    .line 1035
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1036
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1037
    goto/16 :goto_12

    .line 1038
    :cond_12
    const-string v2, "android.hidl.base@1.0::IBase"

    invoke-virtual {v9, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1040
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetwork$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v2

    .line 1041
    .local v2, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v10, v11}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1042
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 1043
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1044
    goto/16 :goto_12

    .line 996
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :pswitch_0
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_13

    move v11, v4

    nop

    :cond_13
    move v1, v11

    .line 997
    .restart local v1    # "_hidl_is_oneway":Z
    if-eqz v1, :cond_14

    .line 998
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 999
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1000
    goto/16 :goto_12

    .line 1001
    :cond_14
    const-string v2, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pNetwork"

    invoke-virtual {v9, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1003
    new-instance v2, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetwork$Stub$9;

    invoke-direct {v2, v0, v10}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetwork$Stub$9;-><init>(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetwork$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {v0, v2}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetwork$Stub;->getClientList(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetwork$getClientListCallback;)V

    .line 1028
    goto/16 :goto_12

    .line 959
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_1
    and-int/lit8 v5, p4, 0x1

    if-eqz v5, :cond_15

    goto :goto_7

    :cond_15
    move v4, v11

    :goto_7
    move v12, v4

    .line 960
    .local v12, "_hidl_is_oneway":Z
    if-eqz v12, :cond_16

    .line 961
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 962
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 963
    goto/16 :goto_12

    .line 964
    :cond_16
    const-string v3, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pNetwork"

    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 966
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v13, v3

    .line 968
    .local v13, "clients":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    const-wide/16 v3, 0x10

    invoke-virtual {v9, v3, v4}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v8

    .line 970
    .local v8, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v8, v1, v2}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v6

    .line 971
    .restart local v6    # "_hidl_vec_size":I
    mul-int/lit8 v1, v6, 0x6

    int-to-long v2, v1

    .line 972
    invoke-virtual {v8}, Landroid/os/HwBlob;->handle()J

    move-result-wide v4

    const-wide/16 v14, 0x0

    const/16 v16, 0x1

    .line 971
    move-object v1, v9

    move v11, v6

    move-wide v6, v14

    .end local v6    # "_hidl_vec_size":I
    .local v11, "_hidl_vec_size":I
    move-object v14, v8

    move/from16 v8, v16

    .end local v8    # "_hidl_blob":Landroid/os/HwBlob;
    .local v14, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual/range {v1 .. v8}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v1

    .line 975
    .local v1, "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v13}, Ljava/util/ArrayList;->clear()V

    .line 976
    const/4 v2, 0x0

    .local v2, "_hidl_index_0":I
    :goto_8
    if-ge v2, v11, :cond_17

    .line 977
    const/4 v3, 0x6

    new-array v4, v3, [B

    .line 979
    .local v4, "_hidl_vec_element":[B
    mul-int/lit8 v5, v2, 0x6

    int-to-long v5, v5

    .line 980
    .local v5, "_hidl_array_offset_1":J
    invoke-virtual {v1, v5, v6, v4, v3}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 981
    nop

    .line 983
    .end local v5    # "_hidl_array_offset_1":J
    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 976
    .end local v4    # "_hidl_vec_element":[B
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 987
    .end local v1    # "childBlob":Landroid/os/HwBlob;
    .end local v2    # "_hidl_index_0":I
    .end local v11    # "_hidl_vec_size":I
    .end local v14    # "_hidl_blob":Landroid/os/HwBlob;
    :cond_17
    invoke-virtual {v0, v13}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetwork$Stub;->setClientList(Ljava/util/ArrayList;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v1

    .line 988
    .local v1, "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    const/4 v2, 0x0

    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 989
    invoke-virtual {v1, v10}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 990
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 991
    goto/16 :goto_12

    .line 939
    .end local v1    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .end local v12    # "_hidl_is_oneway":Z
    .end local v13    # "clients":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :pswitch_2
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_18

    move/from16 v17, v4

    goto :goto_9

    :cond_18
    const/16 v17, 0x0

    :goto_9
    move/from16 v1, v17

    .line 940
    .local v1, "_hidl_is_oneway":Z
    if-eqz v1, :cond_19

    .line 941
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 942
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 943
    goto/16 :goto_12

    .line 944
    :cond_19
    const-string v2, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pNetwork"

    invoke-virtual {v9, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 946
    new-instance v2, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetwork$Stub$8;

    invoke-direct {v2, v0, v10}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetwork$Stub$8;-><init>(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetwork$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {v0, v2}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetwork$Stub;->isGo(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetwork$isGoCallback;)V

    .line 954
    goto/16 :goto_12

    .line 919
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_3
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_1a

    move/from16 v17, v4

    goto :goto_a

    :cond_1a
    const/16 v17, 0x0

    :goto_a
    move/from16 v1, v17

    .line 920
    .restart local v1    # "_hidl_is_oneway":Z
    if-eqz v1, :cond_1b

    .line 921
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 922
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 923
    goto/16 :goto_12

    .line 924
    :cond_1b
    const-string v2, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pNetwork"

    invoke-virtual {v9, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 926
    new-instance v2, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetwork$Stub$7;

    invoke-direct {v2, v0, v10}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetwork$Stub$7;-><init>(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetwork$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {v0, v2}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetwork$Stub;->isPersistent(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetwork$isPersistentCallback;)V

    .line 934
    goto/16 :goto_12

    .line 899
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_4
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_1c

    move/from16 v17, v4

    goto :goto_b

    :cond_1c
    const/16 v17, 0x0

    :goto_b
    move/from16 v1, v17

    .line 900
    .restart local v1    # "_hidl_is_oneway":Z
    if-eqz v1, :cond_1d

    .line 901
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 902
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 903
    goto/16 :goto_12

    .line 904
    :cond_1d
    const-string v2, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pNetwork"

    invoke-virtual {v9, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 906
    new-instance v2, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetwork$Stub$6;

    invoke-direct {v2, v0, v10}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetwork$Stub$6;-><init>(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetwork$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {v0, v2}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetwork$Stub;->isCurrent(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetwork$isCurrentCallback;)V

    .line 914
    goto/16 :goto_12

    .line 871
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_5
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_1e

    move/from16 v17, v4

    goto :goto_c

    :cond_1e
    const/16 v17, 0x0

    :goto_c
    move/from16 v1, v17

    .line 872
    .restart local v1    # "_hidl_is_oneway":Z
    if-eqz v1, :cond_1f

    .line 873
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 874
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 875
    goto/16 :goto_12

    .line 876
    :cond_1f
    const-string v2, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pNetwork"

    invoke-virtual {v9, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 878
    new-instance v2, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetwork$Stub$5;

    invoke-direct {v2, v0, v10}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetwork$Stub$5;-><init>(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetwork$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {v0, v2}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetwork$Stub;->getBssid(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetwork$getBssidCallback;)V

    .line 894
    goto/16 :goto_12

    .line 851
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_6
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_20

    move/from16 v17, v4

    goto :goto_d

    :cond_20
    const/16 v17, 0x0

    :goto_d
    move/from16 v1, v17

    .line 852
    .restart local v1    # "_hidl_is_oneway":Z
    if-eqz v1, :cond_21

    .line 853
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 854
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 855
    goto/16 :goto_12

    .line 856
    :cond_21
    const-string v2, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pNetwork"

    invoke-virtual {v9, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 858
    new-instance v2, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetwork$Stub$4;

    invoke-direct {v2, v0, v10}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetwork$Stub$4;-><init>(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetwork$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {v0, v2}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetwork$Stub;->getSsid(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetwork$getSsidCallback;)V

    .line 866
    goto/16 :goto_12

    .line 834
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_7
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_22

    goto :goto_e

    :cond_22
    const/4 v4, 0x0

    :goto_e
    move v1, v4

    .line 835
    .restart local v1    # "_hidl_is_oneway":Z
    if-eqz v1, :cond_23

    .line 836
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 837
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 838
    goto/16 :goto_12

    .line 839
    :cond_23
    const-string v2, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pNetwork"

    invoke-virtual {v9, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 841
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetworkCallback;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetworkCallback;

    move-result-object v2

    .line 842
    .local v2, "callback":Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetworkCallback;
    invoke-virtual {v0, v2}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetwork$Stub;->registerCallback(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetworkCallback;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v3

    .line 843
    .local v3, "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    const/4 v5, 0x0

    invoke-virtual {v10, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 844
    invoke-virtual {v3, v10}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 845
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 846
    goto/16 :goto_12

    .line 814
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "callback":Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetworkCallback;
    .end local v3    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :pswitch_8
    move v5, v11

    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_24

    goto :goto_f

    :cond_24
    move v4, v5

    :goto_f
    move v1, v4

    .line 815
    .restart local v1    # "_hidl_is_oneway":Z
    if-eqz v1, :cond_25

    .line 816
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 817
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 818
    goto :goto_12

    .line 819
    :cond_25
    const-string v2, "android.hardware.wifi.supplicant@1.0::ISupplicantNetwork"

    invoke-virtual {v9, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 821
    new-instance v2, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetwork$Stub$3;

    invoke-direct {v2, v0, v10}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetwork$Stub$3;-><init>(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetwork$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {v0, v2}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetwork$Stub;->getType(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantNetwork$getTypeCallback;)V

    .line 829
    goto :goto_12

    .line 794
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_9
    move v5, v11

    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_26

    goto :goto_10

    :cond_26
    move v4, v5

    :goto_10
    move v1, v4

    .line 795
    .restart local v1    # "_hidl_is_oneway":Z
    if-eqz v1, :cond_27

    .line 796
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 797
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 798
    goto :goto_12

    .line 799
    :cond_27
    const-string v2, "android.hardware.wifi.supplicant@1.0::ISupplicantNetwork"

    invoke-virtual {v9, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 801
    new-instance v2, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetwork$Stub$2;

    invoke-direct {v2, v0, v10}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetwork$Stub$2;-><init>(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetwork$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {v0, v2}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetwork$Stub;->getInterfaceName(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantNetwork$getInterfaceNameCallback;)V

    .line 809
    goto :goto_12

    .line 774
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_a
    move v5, v11

    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_28

    goto :goto_11

    :cond_28
    move v4, v5

    :goto_11
    move v1, v4

    .line 775
    .restart local v1    # "_hidl_is_oneway":Z
    if-eqz v1, :cond_29

    .line 776
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 777
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 778
    goto :goto_12

    .line 779
    :cond_29
    const-string v2, "android.hardware.wifi.supplicant@1.0::ISupplicantNetwork"

    invoke-virtual {v9, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 781
    new-instance v2, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetwork$Stub$1;

    invoke-direct {v2, v0, v10}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetwork$Stub$1;-><init>(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetwork$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {v0, v2}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetwork$Stub;->getId(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantNetwork$getIdCallback;)V

    .line 789
    nop

    .line 1188
    .end local v1    # "_hidl_is_oneway":Z
    :cond_2a
    :goto_12
    return-void

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 727
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 1
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 753
    const-string v0, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pNetwork"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 754
    return-object p0

    .line 756
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

    .line 760
    invoke-virtual {p0, p1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetwork$Stub;->registerService(Ljava/lang/String;)V

    .line 761
    return-void
.end method

.method public final setHALInstrumentation()V
    .locals 0

    .line 718
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 765
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetwork$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 747
    const/4 v0, 0x1

    return v0
.end method
