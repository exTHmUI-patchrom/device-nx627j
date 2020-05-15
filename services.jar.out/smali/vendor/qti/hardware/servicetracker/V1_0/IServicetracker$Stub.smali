.class public abstract Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker$Stub;
.super Landroid/os/HwBinder;
.source "IServicetracker.java"

# interfaces
.implements Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 644
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .locals 0

    .line 647
    return-object p0
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .locals 3

    .line 689
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 690
    .local v0, "info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 691
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 692
    const/4 v1, 0x0

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    .line 693
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

    .line 665
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
        -0x45t
        -0x59t
        0x35t
        -0x7t
        0x59t
        -0x2bt
        -0x39t
        -0x5dt
        0x61t
        -0x6at
        -0x22t
        0x65t
        0x48t
        -0x5bt
        -0x9t
        0x40t
        -0x70t
        0x51t
        0x2bt
        -0x3ct
        -0x17t
        -0x27t
        0x2at
        -0x3et
        -0x6et
        0x79t
        -0x4et
        -0x23t
        0x78t
        0x6et
        -0x45t
        -0x76t
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

    .line 652
    new-instance v0, Ljava/util/ArrayList;

    const-string/jumbo v1, "vendor.qti.hardware.servicetracker@1.0::IServicetracker"

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

    .line 659
    const-string/jumbo v0, "vendor.qti.hardware.servicetracker@1.0::IServicetracker"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 1
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .line 678
    const/4 v0, 0x1

    return v0
.end method

.method public final notifySyspropsChanged()V
    .locals 0

    .line 698
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 699
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

    .line 727
    const/high16 v0, -0x80000000

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_7

    .line 1122
    :sswitch_0
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_0

    move v1, v2

    nop

    .line 1123
    .local v1, "_hidl_is_oneway":Z
    :cond_0
    if-eqz v1, :cond_2d

    .line 1124
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1125
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1126
    goto/16 :goto_7

    .line 1109
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_1
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1

    move v1, v2

    nop

    .line 1110
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1
    if-eq v1, v2, :cond_2

    .line 1111
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1112
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1113
    goto/16 :goto_7

    .line 1114
    :cond_2
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1116
    invoke-virtual {p0}, Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker$Stub;->notifySyspropsChanged()V

    .line 1117
    goto/16 :goto_7

    .line 1093
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_2
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_3
    move v2, v1

    .line 1094
    .local v2, "_hidl_is_oneway":Z
    :goto_0
    if-eqz v2, :cond_4

    .line 1095
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1096
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1097
    goto/16 :goto_7

    .line 1098
    :cond_4
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1100
    invoke-virtual {p0}, Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    .line 1101
    .local v0, "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1102
    invoke-virtual {v0, p3}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1103
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1104
    goto/16 :goto_7

    .line 1078
    .end local v0    # "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_3
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_5

    goto :goto_1

    :cond_5
    move v2, v1

    .line 1079
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_1
    if-eqz v2, :cond_6

    .line 1080
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1081
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1082
    goto/16 :goto_7

    .line 1083
    :cond_6
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1085
    invoke-virtual {p0}, Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker$Stub;->ping()V

    .line 1086
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1087
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1088
    goto/16 :goto_7

    .line 1068
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_4
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_7

    move v1, v2

    nop

    .line 1069
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_7
    if-eqz v1, :cond_2d

    .line 1070
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1071
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1072
    goto/16 :goto_7

    .line 1055
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_5
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_8

    move v1, v2

    nop

    .line 1056
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_8
    if-eq v1, v2, :cond_9

    .line 1057
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1058
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1059
    goto/16 :goto_7

    .line 1060
    :cond_9
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1062
    invoke-virtual {p0}, Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker$Stub;->setHALInstrumentation()V

    .line 1063
    goto/16 :goto_7

    .line 1022
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_6
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_a

    goto :goto_2

    :cond_a
    move v2, v1

    .line 1023
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_2
    if-eqz v2, :cond_b

    .line 1024
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1025
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1026
    goto/16 :goto_7

    .line 1027
    :cond_b
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1029
    invoke-virtual {p0}, Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 1030
    .local v0, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1032
    new-instance v3, Landroid/os/HwBlob;

    const/16 v4, 0x10

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 1034
    .local v3, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1035
    .local v4, "_hidl_vec_size":I
    const-wide/16 v5, 0x8

    invoke-virtual {v3, v5, v6, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 1036
    const-wide/16 v5, 0xc

    invoke-virtual {v3, v5, v6, v1}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 1037
    new-instance v5, Landroid/os/HwBlob;

    mul-int/lit8 v6, v4, 0x20

    invoke-direct {v5, v6}, Landroid/os/HwBlob;-><init>(I)V

    .line 1038
    .local v5, "childBlob":Landroid/os/HwBlob;
    nop

    .line 1038
    .local v1, "_hidl_index_0":I
    :goto_3
    if-ge v1, v4, :cond_c

    .line 1040
    mul-int/lit8 v6, v1, 0x20

    int-to-long v6, v6

    .line 1041
    .local v6, "_hidl_array_offset_1":J
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 1042
    nop

    .line 1038
    .end local v6    # "_hidl_array_offset_1":J
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1045
    .end local v1    # "_hidl_index_0":I
    :cond_c
    const-wide/16 v6, 0x0

    invoke-virtual {v3, v6, v7, v5}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 1047
    .end local v4    # "_hidl_vec_size":I
    .end local v5    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 1049
    .end local v3    # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1050
    goto/16 :goto_7

    .line 1006
    .end local v0    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_7
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_d

    goto :goto_4

    :cond_d
    move v2, v1

    .line 1007
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_4
    if-eqz v2, :cond_e

    .line 1008
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1009
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1010
    goto/16 :goto_7

    .line 1011
    :cond_e
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1013
    invoke-virtual {p0}, Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 1014
    .local v0, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1015
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1016
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1017
    goto/16 :goto_7

    .line 992
    .end local v0    # "_hidl_out_descriptor":Ljava/lang/String;
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_8
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_f

    goto :goto_5

    :cond_f
    move v2, v1

    .line 993
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_5
    if-eqz v2, :cond_10

    .line 994
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 995
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 996
    goto/16 :goto_7

    .line 997
    :cond_10
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 999
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1000
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1001
    goto/16 :goto_7

    .line 976
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_9
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_11

    goto :goto_6

    :cond_11
    move v2, v1

    .line 977
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_6
    if-eqz v2, :cond_12

    .line 978
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 979
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 980
    goto/16 :goto_7

    .line 981
    :cond_12
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 983
    invoke-virtual {p0}, Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 984
    .local v0, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 985
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 986
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 987
    goto/16 :goto_7

    .line 955
    .end local v0    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_0
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_13

    move v1, v2

    nop

    .line 956
    .local v1, "_hidl_is_oneway":Z
    :cond_13
    if-eqz v1, :cond_14

    .line 957
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 958
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 959
    goto/16 :goto_7

    .line 960
    :cond_14
    const-string/jumbo v0, "vendor.qti.hardware.servicetracker@1.0::IServicetracker"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 962
    new-instance v0, Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker$Stub$8;

    invoke-direct {v0, p0, p3}, Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker$Stub$8;-><init>(Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0}, Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker$Stub;->getServiceBCount(Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker$getServiceBCountCallback;)V

    .line 971
    goto/16 :goto_7

    .line 934
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_1
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_15

    move v1, v2

    nop

    .line 935
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_15
    if-eqz v1, :cond_16

    .line 936
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 937
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 938
    goto/16 :goto_7

    .line 939
    :cond_16
    const-string/jumbo v0, "vendor.qti.hardware.servicetracker@1.0::IServicetracker"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 941
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 942
    .local v0, "serviceName":Ljava/lang/String;
    new-instance v2, Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker$Stub$7;

    invoke-direct {v2, p0, p3}, Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker$Stub$7;-><init>(Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0, v2}, Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker$Stub;->isServiceB(Ljava/lang/String;Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker$isServiceBCallback;)V

    .line 950
    goto/16 :goto_7

    .line 913
    .end local v0    # "serviceName":Ljava/lang/String;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_2
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_17

    move v1, v2

    nop

    .line 914
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_17
    if-eqz v1, :cond_18

    .line 915
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 916
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 917
    goto/16 :goto_7

    .line 918
    :cond_18
    const-string/jumbo v0, "vendor.qti.hardware.servicetracker@1.0::IServicetracker"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 920
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v0

    .line 921
    .local v0, "serviceList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v2, Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker$Stub$6;

    invoke-direct {v2, p0, p3}, Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker$Stub$6;-><init>(Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0, v2}, Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker$Stub;->getPids(Ljava/util/ArrayList;Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker$getPidsCallback;)V

    .line 929
    goto/16 :goto_7

    .line 892
    .end local v0    # "serviceList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_3
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_19

    move v1, v2

    nop

    .line 893
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_19
    if-eqz v1, :cond_1a

    .line 894
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 895
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 896
    goto/16 :goto_7

    .line 897
    :cond_1a
    const-string/jumbo v0, "vendor.qti.hardware.servicetracker@1.0::IServicetracker"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 899
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 900
    .local v0, "processName":Ljava/lang/String;
    new-instance v2, Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker$Stub$5;

    invoke-direct {v2, p0, p3}, Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker$Stub$5;-><init>(Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0, v2}, Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker$Stub;->getPid(Ljava/lang/String;Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker$getPidCallback;)V

    .line 908
    goto/16 :goto_7

    .line 871
    .end local v0    # "processName":Ljava/lang/String;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_4
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1b

    move v1, v2

    nop

    .line 872
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1b
    if-eqz v1, :cond_1c

    .line 873
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 874
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 875
    goto/16 :goto_7

    .line 876
    :cond_1c
    const-string/jumbo v0, "vendor.qti.hardware.servicetracker@1.0::IServicetracker"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 878
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 879
    .local v0, "clientName":Ljava/lang/String;
    new-instance v2, Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker$Stub$4;

    invoke-direct {v2, p0, p3}, Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker$Stub$4;-><init>(Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0, v2}, Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker$Stub;->getClientConnections(Ljava/lang/String;Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker$getClientConnectionsCallback;)V

    .line 887
    goto/16 :goto_7

    .line 850
    .end local v0    # "clientName":Ljava/lang/String;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_5
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1d

    move v1, v2

    nop

    .line 851
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1d
    if-eqz v1, :cond_1e

    .line 852
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 853
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 854
    goto/16 :goto_7

    .line 855
    :cond_1e
    const-string/jumbo v0, "vendor.qti.hardware.servicetracker@1.0::IServicetracker"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 857
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 858
    .local v0, "serviceName":Ljava/lang/String;
    new-instance v2, Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker$Stub$3;

    invoke-direct {v2, p0, p3}, Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker$Stub$3;-><init>(Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0, v2}, Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker$Stub;->getServiceConnections(Ljava/lang/String;Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker$getServiceConnectionsCallback;)V

    .line 866
    goto/16 :goto_7

    .line 829
    .end local v0    # "serviceName":Ljava/lang/String;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_6
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1f

    move v1, v2

    nop

    .line 830
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1f
    if-eqz v1, :cond_20

    .line 831
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 832
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 833
    goto/16 :goto_7

    .line 834
    :cond_20
    const-string/jumbo v0, "vendor.qti.hardware.servicetracker@1.0::IServicetracker"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 836
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 837
    .restart local v0    # "serviceName":Ljava/lang/String;
    new-instance v2, Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker$Stub$2;

    invoke-direct {v2, p0, p3}, Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker$Stub$2;-><init>(Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0, v2}, Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker$Stub;->getserviceInfo(Ljava/lang/String;Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker$getserviceInfoCallback;)V

    .line 845
    goto/16 :goto_7

    .line 808
    .end local v0    # "serviceName":Ljava/lang/String;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_7
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_21

    move v1, v2

    nop

    .line 809
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_21
    if-eqz v1, :cond_22

    .line 810
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 811
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 812
    goto/16 :goto_7

    .line 813
    :cond_22
    const-string/jumbo v0, "vendor.qti.hardware.servicetracker@1.0::IServicetracker"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 815
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 816
    .local v0, "clientName":Ljava/lang/String;
    new-instance v2, Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker$Stub$1;

    invoke-direct {v2, p0, p3}, Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker$Stub$1;-><init>(Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0, v2}, Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker$Stub;->getclientInfo(Ljava/lang/String;Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker$getclientInfoCallback;)V

    .line 824
    goto/16 :goto_7

    .line 794
    .end local v0    # "clientName":Ljava/lang/String;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_8
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_23

    move v1, v2

    nop

    .line 795
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_23
    if-eq v1, v2, :cond_24

    .line 796
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 797
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 798
    goto/16 :goto_7

    .line 799
    :cond_24
    const-string/jumbo v0, "vendor.qti.hardware.servicetracker@1.0::IServicetracker"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 801
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 802
    .local v0, "pid":I
    invoke-virtual {p0, v0}, Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker$Stub;->killProcess(I)V

    .line 803
    goto/16 :goto_7

    .line 779
    .end local v0    # "pid":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_9
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_25

    move v1, v2

    nop

    .line 780
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_25
    if-eq v1, v2, :cond_26

    .line 781
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 782
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 783
    goto/16 :goto_7

    .line 784
    :cond_26
    const-string/jumbo v0, "vendor.qti.hardware.servicetracker@1.0::IServicetracker"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 786
    new-instance v0, Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;

    invoke-direct {v0}, Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;-><init>()V

    .line 787
    .local v0, "serviceData":Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;
    invoke-virtual {v0, p2}, Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;->readFromParcel(Landroid/os/HwParcel;)V

    .line 788
    invoke-virtual {p0, v0}, Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker$Stub;->destroyService(Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;)V

    .line 789
    goto/16 :goto_7

    .line 762
    .end local v0    # "serviceData":Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_a
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_27

    move v1, v2

    nop

    .line 763
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_27
    if-eq v1, v2, :cond_28

    .line 764
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 765
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 766
    goto :goto_7

    .line 767
    :cond_28
    const-string/jumbo v0, "vendor.qti.hardware.servicetracker@1.0::IServicetracker"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 769
    new-instance v0, Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;

    invoke-direct {v0}, Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;-><init>()V

    .line 770
    .restart local v0    # "serviceData":Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;
    invoke-virtual {v0, p2}, Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;->readFromParcel(Landroid/os/HwParcel;)V

    .line 771
    new-instance v2, Lvendor/qti/hardware/servicetracker/V1_0/ClientData;

    invoke-direct {v2}, Lvendor/qti/hardware/servicetracker/V1_0/ClientData;-><init>()V

    .line 772
    .local v2, "clientData":Lvendor/qti/hardware/servicetracker/V1_0/ClientData;
    invoke-virtual {v2, p2}, Lvendor/qti/hardware/servicetracker/V1_0/ClientData;->readFromParcel(Landroid/os/HwParcel;)V

    .line 773
    invoke-virtual {p0, v0, v2}, Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker$Stub;->unbindService(Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;Lvendor/qti/hardware/servicetracker/V1_0/ClientData;)V

    .line 774
    goto :goto_7

    .line 745
    .end local v0    # "serviceData":Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "clientData":Lvendor/qti/hardware/servicetracker/V1_0/ClientData;
    :pswitch_b
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_29

    move v1, v2

    nop

    .line 746
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_29
    if-eq v1, v2, :cond_2a

    .line 747
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 748
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 749
    goto :goto_7

    .line 750
    :cond_2a
    const-string/jumbo v0, "vendor.qti.hardware.servicetracker@1.0::IServicetracker"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 752
    new-instance v0, Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;

    invoke-direct {v0}, Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;-><init>()V

    .line 753
    .restart local v0    # "serviceData":Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;
    invoke-virtual {v0, p2}, Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;->readFromParcel(Landroid/os/HwParcel;)V

    .line 754
    new-instance v2, Lvendor/qti/hardware/servicetracker/V1_0/ClientData;

    invoke-direct {v2}, Lvendor/qti/hardware/servicetracker/V1_0/ClientData;-><init>()V

    .line 755
    .restart local v2    # "clientData":Lvendor/qti/hardware/servicetracker/V1_0/ClientData;
    invoke-virtual {v2, p2}, Lvendor/qti/hardware/servicetracker/V1_0/ClientData;->readFromParcel(Landroid/os/HwParcel;)V

    .line 756
    invoke-virtual {p0, v0, v2}, Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker$Stub;->bindService(Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;Lvendor/qti/hardware/servicetracker/V1_0/ClientData;)V

    .line 757
    goto :goto_7

    .line 730
    .end local v0    # "serviceData":Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "clientData":Lvendor/qti/hardware/servicetracker/V1_0/ClientData;
    :pswitch_c
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_2b

    move v1, v2

    nop

    .line 731
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_2b
    if-eq v1, v2, :cond_2c

    .line 732
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 733
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 734
    goto :goto_7

    .line 735
    :cond_2c
    const-string/jumbo v0, "vendor.qti.hardware.servicetracker@1.0::IServicetracker"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 737
    new-instance v0, Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;

    invoke-direct {v0}, Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;-><init>()V

    .line 738
    .restart local v0    # "serviceData":Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;
    invoke-virtual {v0, p2}, Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;->readFromParcel(Landroid/os/HwParcel;)V

    .line 739
    invoke-virtual {p0, v0}, Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker$Stub;->startService(Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;)V

    .line 740
    nop

    .line 1131
    .end local v0    # "serviceData":Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;
    .end local v1    # "_hidl_is_oneway":Z
    :cond_2d
    :goto_7
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 683
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 1
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 709
    const-string/jumbo v0, "vendor.qti.hardware.servicetracker@1.0::IServicetracker"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 710
    return-object p0

    .line 712
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

    .line 716
    invoke-virtual {p0, p1}, Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker$Stub;->registerService(Ljava/lang/String;)V

    .line 717
    return-void
.end method

.method public final setHALInstrumentation()V
    .locals 0

    .line 674
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 721
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 703
    const/4 v0, 0x1

    return v0
.end method
