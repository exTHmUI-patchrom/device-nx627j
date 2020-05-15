.class public abstract Landroid/hardware/wifi/V1_0/IWifiChip$Stub;
.super Landroid/os/HwBinder;
.source "IWifiChip.java"

# interfaces
.implements Landroid/hardware/wifi/V1_0/IWifiChip;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/wifi/V1_0/IWifiChip;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2264
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .locals 0

    .line 2267
    return-object p0
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .locals 3

    .line 2309
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 2310
    .local v0, "info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 2311
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 2312
    const/4 v1, 0x0

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    .line 2313
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

    .line 2285
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
        -0xdt
        -0x12t
        -0x34t
        0x48t
        -0x63t
        -0x15t
        0x4ct
        0x74t
        -0x77t
        0x2ft
        0x59t
        -0x15t
        0x7at
        -0x25t
        0x76t
        -0x70t
        0x63t
        -0x43t
        0x5ct
        0x35t
        0x4at
        -0x3ft
        0x32t
        -0x4at
        0x26t
        -0x5bt
        -0xct
        0x2bt
        0x36t
        0x3dt
        0x36t
        -0x44t
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

    .line 2272
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "android.hardware.wifi@1.0::IWifiChip"

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

    .line 2279
    const-string v0, "android.hardware.wifi@1.0::IWifiChip"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 1
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .line 2298
    const/4 v0, 0x1

    return v0
.end method

.method public final notifySyspropsChanged()V
    .locals 0

    .line 2318
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 2319
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

    .line 2347
    const/high16 v0, -0x80000000

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_11

    .line 3113
    :sswitch_0
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_0

    move v1, v2

    nop

    .line 3114
    .local v1, "_hidl_is_oneway":Z
    :cond_0
    if-eqz v1, :cond_53

    .line 3115
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3116
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3117
    goto/16 :goto_11

    .line 3100
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_1
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1

    move v1, v2

    nop

    .line 3101
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1
    if-eq v1, v2, :cond_2

    .line 3102
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3103
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3104
    goto/16 :goto_11

    .line 3105
    :cond_2
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3107
    invoke-virtual {p0}, Landroid/hardware/wifi/V1_0/IWifiChip$Stub;->notifySyspropsChanged()V

    .line 3108
    goto/16 :goto_11

    .line 3084
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_2
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_3
    move v2, v1

    .line 3085
    .local v2, "_hidl_is_oneway":Z
    :goto_0
    if-eqz v2, :cond_4

    .line 3086
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3087
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3088
    goto/16 :goto_11

    .line 3089
    :cond_4
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3091
    invoke-virtual {p0}, Landroid/hardware/wifi/V1_0/IWifiChip$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    .line 3092
    .local v0, "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3093
    invoke-virtual {v0, p3}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3094
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3095
    goto/16 :goto_11

    .line 3069
    .end local v0    # "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_3
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_5

    goto :goto_1

    :cond_5
    move v2, v1

    .line 3070
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_1
    if-eqz v2, :cond_6

    .line 3071
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3072
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3073
    goto/16 :goto_11

    .line 3074
    :cond_6
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3076
    invoke-virtual {p0}, Landroid/hardware/wifi/V1_0/IWifiChip$Stub;->ping()V

    .line 3077
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3078
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3079
    goto/16 :goto_11

    .line 3059
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_4
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_7

    move v1, v2

    nop

    .line 3060
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_7
    if-eqz v1, :cond_53

    .line 3061
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3062
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3063
    goto/16 :goto_11

    .line 3046
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_5
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_8

    move v1, v2

    nop

    .line 3047
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_8
    if-eq v1, v2, :cond_9

    .line 3048
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3049
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3050
    goto/16 :goto_11

    .line 3051
    :cond_9
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3053
    invoke-virtual {p0}, Landroid/hardware/wifi/V1_0/IWifiChip$Stub;->setHALInstrumentation()V

    .line 3054
    goto/16 :goto_11

    .line 3013
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_6
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_a

    goto :goto_2

    :cond_a
    move v2, v1

    .line 3014
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_2
    if-eqz v2, :cond_b

    .line 3015
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3016
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3017
    goto/16 :goto_11

    .line 3018
    :cond_b
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3020
    invoke-virtual {p0}, Landroid/hardware/wifi/V1_0/IWifiChip$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 3021
    .local v0, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3023
    new-instance v3, Landroid/os/HwBlob;

    const/16 v4, 0x10

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 3025
    .local v3, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 3026
    .local v4, "_hidl_vec_size":I
    const-wide/16 v5, 0x8

    invoke-virtual {v3, v5, v6, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 3027
    const-wide/16 v5, 0xc

    invoke-virtual {v3, v5, v6, v1}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 3028
    new-instance v5, Landroid/os/HwBlob;

    mul-int/lit8 v6, v4, 0x20

    invoke-direct {v5, v6}, Landroid/os/HwBlob;-><init>(I)V

    .line 3029
    .local v5, "childBlob":Landroid/os/HwBlob;
    nop

    .local v1, "_hidl_index_0":I
    :goto_3
    if-ge v1, v4, :cond_c

    .line 3031
    mul-int/lit8 v6, v1, 0x20

    int-to-long v6, v6

    .line 3032
    .local v6, "_hidl_array_offset_1":J
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 3033
    nop

    .line 3029
    .end local v6    # "_hidl_array_offset_1":J
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 3036
    .end local v1    # "_hidl_index_0":I
    :cond_c
    const-wide/16 v6, 0x0

    invoke-virtual {v3, v6, v7, v5}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 3038
    .end local v4    # "_hidl_vec_size":I
    .end local v5    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 3040
    .end local v3    # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3041
    goto/16 :goto_11

    .line 2997
    .end local v0    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_7
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_d

    goto :goto_4

    :cond_d
    move v2, v1

    .line 2998
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_4
    if-eqz v2, :cond_e

    .line 2999
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3000
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3001
    goto/16 :goto_11

    .line 3002
    :cond_e
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3004
    invoke-virtual {p0}, Landroid/hardware/wifi/V1_0/IWifiChip$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 3005
    .local v0, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3006
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 3007
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3008
    goto/16 :goto_11

    .line 2983
    .end local v0    # "_hidl_out_descriptor":Ljava/lang/String;
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_8
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_f

    goto :goto_5

    :cond_f
    move v2, v1

    .line 2984
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_5
    if-eqz v2, :cond_10

    .line 2985
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2986
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2987
    goto/16 :goto_11

    .line 2988
    :cond_10
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2990
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2991
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2992
    goto/16 :goto_11

    .line 2967
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_9
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_11

    goto :goto_6

    :cond_11
    move v2, v1

    .line 2968
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_6
    if-eqz v2, :cond_12

    .line 2969
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2970
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2971
    goto/16 :goto_11

    .line 2972
    :cond_12
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2974
    invoke-virtual {p0}, Landroid/hardware/wifi/V1_0/IWifiChip$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 2975
    .local v0, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2976
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 2977
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2978
    goto/16 :goto_11

    .line 2950
    .end local v0    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_0
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_13

    goto :goto_7

    :cond_13
    move v2, v1

    .line 2951
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_7
    if-eqz v2, :cond_14

    .line 2952
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2953
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2954
    goto/16 :goto_11

    .line 2955
    :cond_14
    const-string v0, "android.hardware.wifi@1.0::IWifiChip"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2957
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v0

    .line 2958
    .local v0, "enable":Z
    invoke-virtual {p0, v0}, Landroid/hardware/wifi/V1_0/IWifiChip$Stub;->enableDebugErrorAlerts(Z)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v3

    .line 2959
    .local v3, "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2960
    invoke-virtual {v3, p3}, Landroid/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2961
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2962
    goto/16 :goto_11

    .line 2930
    .end local v0    # "enable":Z
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    :pswitch_1
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_15

    move v1, v2

    nop

    .line 2931
    .local v1, "_hidl_is_oneway":Z
    :cond_15
    if-eqz v1, :cond_16

    .line 2932
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2933
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2934
    goto/16 :goto_11

    .line 2935
    :cond_16
    const-string v0, "android.hardware.wifi@1.0::IWifiChip"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2937
    new-instance v0, Landroid/hardware/wifi/V1_0/IWifiChip$Stub$22;

    invoke-direct {v0, p0, p3}, Landroid/hardware/wifi/V1_0/IWifiChip$Stub$22;-><init>(Landroid/hardware/wifi/V1_0/IWifiChip$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0}, Landroid/hardware/wifi/V1_0/IWifiChip$Stub;->getDebugHostWakeReasonStats(Landroid/hardware/wifi/V1_0/IWifiChip$getDebugHostWakeReasonStatsCallback;)V

    .line 2945
    goto/16 :goto_11

    .line 2914
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_2
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_17

    goto :goto_8

    :cond_17
    move v2, v1

    .line 2915
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_8
    if-eqz v2, :cond_18

    .line 2916
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2917
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2918
    goto/16 :goto_11

    .line 2919
    :cond_18
    const-string v0, "android.hardware.wifi@1.0::IWifiChip"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2921
    invoke-virtual {p0}, Landroid/hardware/wifi/V1_0/IWifiChip$Stub;->stopLoggingToDebugRingBuffer()Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v0

    .line 2922
    .local v0, "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2923
    invoke-virtual {v0, p3}, Landroid/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2924
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2925
    goto/16 :goto_11

    .line 2897
    .end local v0    # "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_3
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_19

    goto :goto_9

    :cond_19
    move v2, v1

    .line 2898
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_9
    if-eqz v2, :cond_1a

    .line 2899
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2900
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2901
    goto/16 :goto_11

    .line 2902
    :cond_1a
    const-string v0, "android.hardware.wifi@1.0::IWifiChip"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2904
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2905
    .local v0, "ringName":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/hardware/wifi/V1_0/IWifiChip$Stub;->forceDumpToDebugRingBuffer(Ljava/lang/String;)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v3

    .line 2906
    .restart local v3    # "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2907
    invoke-virtual {v3, p3}, Landroid/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2908
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2909
    goto/16 :goto_11

    .line 2877
    .end local v0    # "ringName":Ljava/lang/String;
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    :pswitch_4
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1b

    goto :goto_a

    :cond_1b
    move v2, v1

    .line 2878
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_a
    if-eqz v2, :cond_1c

    .line 2879
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2880
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2881
    goto/16 :goto_11

    .line 2882
    :cond_1c
    const-string v0, "android.hardware.wifi@1.0::IWifiChip"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2884
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2885
    .restart local v0    # "ringName":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 2886
    .local v3, "verboseLevel":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 2887
    .local v4, "maxIntervalInSec":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 2888
    .local v5, "minDataSizeInBytes":I
    invoke-virtual {p0, v0, v3, v4, v5}, Landroid/hardware/wifi/V1_0/IWifiChip$Stub;->startLoggingToDebugRingBuffer(Ljava/lang/String;III)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v6

    .line 2889
    .local v6, "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2890
    invoke-virtual {v6, p3}, Landroid/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2891
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2892
    goto/16 :goto_11

    .line 2857
    .end local v0    # "ringName":Ljava/lang/String;
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "verboseLevel":I
    .end local v4    # "maxIntervalInSec":I
    .end local v5    # "minDataSizeInBytes":I
    .end local v6    # "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    :pswitch_5
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1d

    move v1, v2

    nop

    .line 2858
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1d
    if-eqz v1, :cond_1e

    .line 2859
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2860
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2861
    goto/16 :goto_11

    .line 2862
    :cond_1e
    const-string v0, "android.hardware.wifi@1.0::IWifiChip"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2864
    new-instance v0, Landroid/hardware/wifi/V1_0/IWifiChip$Stub$21;

    invoke-direct {v0, p0, p3}, Landroid/hardware/wifi/V1_0/IWifiChip$Stub$21;-><init>(Landroid/hardware/wifi/V1_0/IWifiChip$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0}, Landroid/hardware/wifi/V1_0/IWifiChip$Stub;->getDebugRingBuffersStatus(Landroid/hardware/wifi/V1_0/IWifiChip$getDebugRingBuffersStatusCallback;)V

    .line 2872
    goto/16 :goto_11

    .line 2836
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_6
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1f

    move v1, v2

    nop

    .line 2837
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1f
    if-eqz v1, :cond_20

    .line 2838
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2839
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2840
    goto/16 :goto_11

    .line 2841
    :cond_20
    const-string v0, "android.hardware.wifi@1.0::IWifiChip"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2843
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/wifi/V1_0/IWifiIface;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/wifi/V1_0/IWifiIface;

    move-result-object v0

    .line 2844
    .local v0, "boundIface":Landroid/hardware/wifi/V1_0/IWifiIface;
    new-instance v2, Landroid/hardware/wifi/V1_0/IWifiChip$Stub$20;

    invoke-direct {v2, p0, p3}, Landroid/hardware/wifi/V1_0/IWifiChip$Stub$20;-><init>(Landroid/hardware/wifi/V1_0/IWifiChip$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0, v2}, Landroid/hardware/wifi/V1_0/IWifiChip$Stub;->createRttController(Landroid/hardware/wifi/V1_0/IWifiIface;Landroid/hardware/wifi/V1_0/IWifiChip$createRttControllerCallback;)V

    .line 2852
    goto/16 :goto_11

    .line 2819
    .end local v0    # "boundIface":Landroid/hardware/wifi/V1_0/IWifiIface;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_7
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_21

    goto :goto_b

    :cond_21
    move v2, v1

    .line 2820
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_b
    if-eqz v2, :cond_22

    .line 2821
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2822
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2823
    goto/16 :goto_11

    .line 2824
    :cond_22
    const-string v0, "android.hardware.wifi@1.0::IWifiChip"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2826
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2827
    .local v0, "ifname":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/hardware/wifi/V1_0/IWifiChip$Stub;->removeStaIface(Ljava/lang/String;)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v3

    .line 2828
    .local v3, "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2829
    invoke-virtual {v3, p3}, Landroid/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2830
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2831
    goto/16 :goto_11

    .line 2798
    .end local v0    # "ifname":Ljava/lang/String;
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    :pswitch_8
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_23

    move v1, v2

    nop

    .line 2799
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_23
    if-eqz v1, :cond_24

    .line 2800
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2801
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2802
    goto/16 :goto_11

    .line 2803
    :cond_24
    const-string v0, "android.hardware.wifi@1.0::IWifiChip"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2805
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2806
    .restart local v0    # "ifname":Ljava/lang/String;
    new-instance v2, Landroid/hardware/wifi/V1_0/IWifiChip$Stub$19;

    invoke-direct {v2, p0, p3}, Landroid/hardware/wifi/V1_0/IWifiChip$Stub$19;-><init>(Landroid/hardware/wifi/V1_0/IWifiChip$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0, v2}, Landroid/hardware/wifi/V1_0/IWifiChip$Stub;->getStaIface(Ljava/lang/String;Landroid/hardware/wifi/V1_0/IWifiChip$getStaIfaceCallback;)V

    .line 2814
    goto/16 :goto_11

    .line 2778
    .end local v0    # "ifname":Ljava/lang/String;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_9
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_25

    move v1, v2

    nop

    .line 2779
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_25
    if-eqz v1, :cond_26

    .line 2780
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2781
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2782
    goto/16 :goto_11

    .line 2783
    :cond_26
    const-string v0, "android.hardware.wifi@1.0::IWifiChip"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2785
    new-instance v0, Landroid/hardware/wifi/V1_0/IWifiChip$Stub$18;

    invoke-direct {v0, p0, p3}, Landroid/hardware/wifi/V1_0/IWifiChip$Stub$18;-><init>(Landroid/hardware/wifi/V1_0/IWifiChip$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0}, Landroid/hardware/wifi/V1_0/IWifiChip$Stub;->getStaIfaceNames(Landroid/hardware/wifi/V1_0/IWifiChip$getStaIfaceNamesCallback;)V

    .line 2793
    goto/16 :goto_11

    .line 2758
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_a
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_27

    move v1, v2

    nop

    .line 2759
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_27
    if-eqz v1, :cond_28

    .line 2760
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2761
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2762
    goto/16 :goto_11

    .line 2763
    :cond_28
    const-string v0, "android.hardware.wifi@1.0::IWifiChip"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2765
    new-instance v0, Landroid/hardware/wifi/V1_0/IWifiChip$Stub$17;

    invoke-direct {v0, p0, p3}, Landroid/hardware/wifi/V1_0/IWifiChip$Stub$17;-><init>(Landroid/hardware/wifi/V1_0/IWifiChip$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0}, Landroid/hardware/wifi/V1_0/IWifiChip$Stub;->createStaIface(Landroid/hardware/wifi/V1_0/IWifiChip$createStaIfaceCallback;)V

    .line 2773
    goto/16 :goto_11

    .line 2741
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_b
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_29

    goto :goto_c

    :cond_29
    move v2, v1

    .line 2742
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_c
    if-eqz v2, :cond_2a

    .line 2743
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2744
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2745
    goto/16 :goto_11

    .line 2746
    :cond_2a
    const-string v0, "android.hardware.wifi@1.0::IWifiChip"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2748
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2749
    .restart local v0    # "ifname":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/hardware/wifi/V1_0/IWifiChip$Stub;->removeP2pIface(Ljava/lang/String;)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v3

    .line 2750
    .restart local v3    # "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2751
    invoke-virtual {v3, p3}, Landroid/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2752
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2753
    goto/16 :goto_11

    .line 2720
    .end local v0    # "ifname":Ljava/lang/String;
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    :pswitch_c
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_2b

    move v1, v2

    nop

    .line 2721
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_2b
    if-eqz v1, :cond_2c

    .line 2722
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2723
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2724
    goto/16 :goto_11

    .line 2725
    :cond_2c
    const-string v0, "android.hardware.wifi@1.0::IWifiChip"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2727
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2728
    .restart local v0    # "ifname":Ljava/lang/String;
    new-instance v2, Landroid/hardware/wifi/V1_0/IWifiChip$Stub$16;

    invoke-direct {v2, p0, p3}, Landroid/hardware/wifi/V1_0/IWifiChip$Stub$16;-><init>(Landroid/hardware/wifi/V1_0/IWifiChip$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0, v2}, Landroid/hardware/wifi/V1_0/IWifiChip$Stub;->getP2pIface(Ljava/lang/String;Landroid/hardware/wifi/V1_0/IWifiChip$getP2pIfaceCallback;)V

    .line 2736
    goto/16 :goto_11

    .line 2700
    .end local v0    # "ifname":Ljava/lang/String;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_d
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_2d

    move v1, v2

    nop

    .line 2701
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_2d
    if-eqz v1, :cond_2e

    .line 2702
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2703
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2704
    goto/16 :goto_11

    .line 2705
    :cond_2e
    const-string v0, "android.hardware.wifi@1.0::IWifiChip"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2707
    new-instance v0, Landroid/hardware/wifi/V1_0/IWifiChip$Stub$15;

    invoke-direct {v0, p0, p3}, Landroid/hardware/wifi/V1_0/IWifiChip$Stub$15;-><init>(Landroid/hardware/wifi/V1_0/IWifiChip$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0}, Landroid/hardware/wifi/V1_0/IWifiChip$Stub;->getP2pIfaceNames(Landroid/hardware/wifi/V1_0/IWifiChip$getP2pIfaceNamesCallback;)V

    .line 2715
    goto/16 :goto_11

    .line 2680
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_e
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_2f

    move v1, v2

    nop

    .line 2681
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_2f
    if-eqz v1, :cond_30

    .line 2682
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2683
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2684
    goto/16 :goto_11

    .line 2685
    :cond_30
    const-string v0, "android.hardware.wifi@1.0::IWifiChip"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2687
    new-instance v0, Landroid/hardware/wifi/V1_0/IWifiChip$Stub$14;

    invoke-direct {v0, p0, p3}, Landroid/hardware/wifi/V1_0/IWifiChip$Stub$14;-><init>(Landroid/hardware/wifi/V1_0/IWifiChip$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0}, Landroid/hardware/wifi/V1_0/IWifiChip$Stub;->createP2pIface(Landroid/hardware/wifi/V1_0/IWifiChip$createP2pIfaceCallback;)V

    .line 2695
    goto/16 :goto_11

    .line 2663
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_f
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_31

    goto :goto_d

    :cond_31
    move v2, v1

    .line 2664
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_d
    if-eqz v2, :cond_32

    .line 2665
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2666
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2667
    goto/16 :goto_11

    .line 2668
    :cond_32
    const-string v0, "android.hardware.wifi@1.0::IWifiChip"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2670
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2671
    .restart local v0    # "ifname":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/hardware/wifi/V1_0/IWifiChip$Stub;->removeNanIface(Ljava/lang/String;)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v3

    .line 2672
    .restart local v3    # "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2673
    invoke-virtual {v3, p3}, Landroid/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2674
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2675
    goto/16 :goto_11

    .line 2642
    .end local v0    # "ifname":Ljava/lang/String;
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    :pswitch_10
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_33

    move v1, v2

    nop

    .line 2643
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_33
    if-eqz v1, :cond_34

    .line 2644
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2645
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2646
    goto/16 :goto_11

    .line 2647
    :cond_34
    const-string v0, "android.hardware.wifi@1.0::IWifiChip"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2649
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2650
    .restart local v0    # "ifname":Ljava/lang/String;
    new-instance v2, Landroid/hardware/wifi/V1_0/IWifiChip$Stub$13;

    invoke-direct {v2, p0, p3}, Landroid/hardware/wifi/V1_0/IWifiChip$Stub$13;-><init>(Landroid/hardware/wifi/V1_0/IWifiChip$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0, v2}, Landroid/hardware/wifi/V1_0/IWifiChip$Stub;->getNanIface(Ljava/lang/String;Landroid/hardware/wifi/V1_0/IWifiChip$getNanIfaceCallback;)V

    .line 2658
    goto/16 :goto_11

    .line 2622
    .end local v0    # "ifname":Ljava/lang/String;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_11
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_35

    move v1, v2

    nop

    .line 2623
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_35
    if-eqz v1, :cond_36

    .line 2624
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2625
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2626
    goto/16 :goto_11

    .line 2627
    :cond_36
    const-string v0, "android.hardware.wifi@1.0::IWifiChip"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2629
    new-instance v0, Landroid/hardware/wifi/V1_0/IWifiChip$Stub$12;

    invoke-direct {v0, p0, p3}, Landroid/hardware/wifi/V1_0/IWifiChip$Stub$12;-><init>(Landroid/hardware/wifi/V1_0/IWifiChip$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0}, Landroid/hardware/wifi/V1_0/IWifiChip$Stub;->getNanIfaceNames(Landroid/hardware/wifi/V1_0/IWifiChip$getNanIfaceNamesCallback;)V

    .line 2637
    goto/16 :goto_11

    .line 2602
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_12
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_37

    move v1, v2

    nop

    .line 2603
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_37
    if-eqz v1, :cond_38

    .line 2604
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2605
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2606
    goto/16 :goto_11

    .line 2607
    :cond_38
    const-string v0, "android.hardware.wifi@1.0::IWifiChip"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2609
    new-instance v0, Landroid/hardware/wifi/V1_0/IWifiChip$Stub$11;

    invoke-direct {v0, p0, p3}, Landroid/hardware/wifi/V1_0/IWifiChip$Stub$11;-><init>(Landroid/hardware/wifi/V1_0/IWifiChip$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0}, Landroid/hardware/wifi/V1_0/IWifiChip$Stub;->createNanIface(Landroid/hardware/wifi/V1_0/IWifiChip$createNanIfaceCallback;)V

    .line 2617
    goto/16 :goto_11

    .line 2585
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_13
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_39

    goto :goto_e

    :cond_39
    move v2, v1

    .line 2586
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_e
    if-eqz v2, :cond_3a

    .line 2587
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2588
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2589
    goto/16 :goto_11

    .line 2590
    :cond_3a
    const-string v0, "android.hardware.wifi@1.0::IWifiChip"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2592
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2593
    .restart local v0    # "ifname":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/hardware/wifi/V1_0/IWifiChip$Stub;->removeApIface(Ljava/lang/String;)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v3

    .line 2594
    .restart local v3    # "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2595
    invoke-virtual {v3, p3}, Landroid/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2596
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2597
    goto/16 :goto_11

    .line 2564
    .end local v0    # "ifname":Ljava/lang/String;
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    :pswitch_14
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_3b

    move v1, v2

    nop

    .line 2565
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_3b
    if-eqz v1, :cond_3c

    .line 2566
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2567
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2568
    goto/16 :goto_11

    .line 2569
    :cond_3c
    const-string v0, "android.hardware.wifi@1.0::IWifiChip"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2571
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2572
    .restart local v0    # "ifname":Ljava/lang/String;
    new-instance v2, Landroid/hardware/wifi/V1_0/IWifiChip$Stub$10;

    invoke-direct {v2, p0, p3}, Landroid/hardware/wifi/V1_0/IWifiChip$Stub$10;-><init>(Landroid/hardware/wifi/V1_0/IWifiChip$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0, v2}, Landroid/hardware/wifi/V1_0/IWifiChip$Stub;->getApIface(Ljava/lang/String;Landroid/hardware/wifi/V1_0/IWifiChip$getApIfaceCallback;)V

    .line 2580
    goto/16 :goto_11

    .line 2544
    .end local v0    # "ifname":Ljava/lang/String;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_15
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_3d

    move v1, v2

    nop

    .line 2545
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_3d
    if-eqz v1, :cond_3e

    .line 2546
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2547
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2548
    goto/16 :goto_11

    .line 2549
    :cond_3e
    const-string v0, "android.hardware.wifi@1.0::IWifiChip"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2551
    new-instance v0, Landroid/hardware/wifi/V1_0/IWifiChip$Stub$9;

    invoke-direct {v0, p0, p3}, Landroid/hardware/wifi/V1_0/IWifiChip$Stub$9;-><init>(Landroid/hardware/wifi/V1_0/IWifiChip$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0}, Landroid/hardware/wifi/V1_0/IWifiChip$Stub;->getApIfaceNames(Landroid/hardware/wifi/V1_0/IWifiChip$getApIfaceNamesCallback;)V

    .line 2559
    goto/16 :goto_11

    .line 2524
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_16
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_3f

    move v1, v2

    nop

    .line 2525
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_3f
    if-eqz v1, :cond_40

    .line 2526
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2527
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2528
    goto/16 :goto_11

    .line 2529
    :cond_40
    const-string v0, "android.hardware.wifi@1.0::IWifiChip"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2531
    new-instance v0, Landroid/hardware/wifi/V1_0/IWifiChip$Stub$8;

    invoke-direct {v0, p0, p3}, Landroid/hardware/wifi/V1_0/IWifiChip$Stub$8;-><init>(Landroid/hardware/wifi/V1_0/IWifiChip$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0}, Landroid/hardware/wifi/V1_0/IWifiChip$Stub;->createApIface(Landroid/hardware/wifi/V1_0/IWifiChip$createApIfaceCallback;)V

    .line 2539
    goto/16 :goto_11

    .line 2504
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_17
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_41

    move v1, v2

    nop

    .line 2505
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_41
    if-eqz v1, :cond_42

    .line 2506
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2507
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2508
    goto/16 :goto_11

    .line 2509
    :cond_42
    const-string v0, "android.hardware.wifi@1.0::IWifiChip"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2511
    new-instance v0, Landroid/hardware/wifi/V1_0/IWifiChip$Stub$7;

    invoke-direct {v0, p0, p3}, Landroid/hardware/wifi/V1_0/IWifiChip$Stub$7;-><init>(Landroid/hardware/wifi/V1_0/IWifiChip$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0}, Landroid/hardware/wifi/V1_0/IWifiChip$Stub;->requestFirmwareDebugDump(Landroid/hardware/wifi/V1_0/IWifiChip$requestFirmwareDebugDumpCallback;)V

    .line 2519
    goto/16 :goto_11

    .line 2484
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_18
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_43

    move v1, v2

    nop

    .line 2485
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_43
    if-eqz v1, :cond_44

    .line 2486
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2487
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2488
    goto/16 :goto_11

    .line 2489
    :cond_44
    const-string v0, "android.hardware.wifi@1.0::IWifiChip"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2491
    new-instance v0, Landroid/hardware/wifi/V1_0/IWifiChip$Stub$6;

    invoke-direct {v0, p0, p3}, Landroid/hardware/wifi/V1_0/IWifiChip$Stub$6;-><init>(Landroid/hardware/wifi/V1_0/IWifiChip$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0}, Landroid/hardware/wifi/V1_0/IWifiChip$Stub;->requestDriverDebugDump(Landroid/hardware/wifi/V1_0/IWifiChip$requestDriverDebugDumpCallback;)V

    .line 2499
    goto/16 :goto_11

    .line 2464
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_19
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_45

    move v1, v2

    nop

    .line 2465
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_45
    if-eqz v1, :cond_46

    .line 2466
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2467
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2468
    goto/16 :goto_11

    .line 2469
    :cond_46
    const-string v0, "android.hardware.wifi@1.0::IWifiChip"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2471
    new-instance v0, Landroid/hardware/wifi/V1_0/IWifiChip$Stub$5;

    invoke-direct {v0, p0, p3}, Landroid/hardware/wifi/V1_0/IWifiChip$Stub$5;-><init>(Landroid/hardware/wifi/V1_0/IWifiChip$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0}, Landroid/hardware/wifi/V1_0/IWifiChip$Stub;->requestChipDebugInfo(Landroid/hardware/wifi/V1_0/IWifiChip$requestChipDebugInfoCallback;)V

    .line 2479
    goto/16 :goto_11

    .line 2444
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_1a
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_47

    move v1, v2

    nop

    .line 2445
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_47
    if-eqz v1, :cond_48

    .line 2446
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2447
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2448
    goto/16 :goto_11

    .line 2449
    :cond_48
    const-string v0, "android.hardware.wifi@1.0::IWifiChip"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2451
    new-instance v0, Landroid/hardware/wifi/V1_0/IWifiChip$Stub$4;

    invoke-direct {v0, p0, p3}, Landroid/hardware/wifi/V1_0/IWifiChip$Stub$4;-><init>(Landroid/hardware/wifi/V1_0/IWifiChip$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0}, Landroid/hardware/wifi/V1_0/IWifiChip$Stub;->getMode(Landroid/hardware/wifi/V1_0/IWifiChip$getModeCallback;)V

    .line 2459
    goto/16 :goto_11

    .line 2427
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_1b
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_49

    goto :goto_f

    :cond_49
    move v2, v1

    .line 2428
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_f
    if-eqz v2, :cond_4a

    .line 2429
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2430
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2431
    goto/16 :goto_11

    .line 2432
    :cond_4a
    const-string v0, "android.hardware.wifi@1.0::IWifiChip"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2434
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2435
    .local v0, "modeId":I
    invoke-virtual {p0, v0}, Landroid/hardware/wifi/V1_0/IWifiChip$Stub;->configureChip(I)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v3

    .line 2436
    .restart local v3    # "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2437
    invoke-virtual {v3, p3}, Landroid/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2438
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2439
    goto/16 :goto_11

    .line 2407
    .end local v0    # "modeId":I
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    :pswitch_1c
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_4b

    move v1, v2

    nop

    .line 2408
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_4b
    if-eqz v1, :cond_4c

    .line 2409
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2410
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2411
    goto/16 :goto_11

    .line 2412
    :cond_4c
    const-string v0, "android.hardware.wifi@1.0::IWifiChip"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2414
    new-instance v0, Landroid/hardware/wifi/V1_0/IWifiChip$Stub$3;

    invoke-direct {v0, p0, p3}, Landroid/hardware/wifi/V1_0/IWifiChip$Stub$3;-><init>(Landroid/hardware/wifi/V1_0/IWifiChip$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0}, Landroid/hardware/wifi/V1_0/IWifiChip$Stub;->getAvailableModes(Landroid/hardware/wifi/V1_0/IWifiChip$getAvailableModesCallback;)V

    .line 2422
    goto/16 :goto_11

    .line 2387
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_1d
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_4d

    move v1, v2

    nop

    .line 2388
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_4d
    if-eqz v1, :cond_4e

    .line 2389
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2390
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2391
    goto :goto_11

    .line 2392
    :cond_4e
    const-string v0, "android.hardware.wifi@1.0::IWifiChip"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2394
    new-instance v0, Landroid/hardware/wifi/V1_0/IWifiChip$Stub$2;

    invoke-direct {v0, p0, p3}, Landroid/hardware/wifi/V1_0/IWifiChip$Stub$2;-><init>(Landroid/hardware/wifi/V1_0/IWifiChip$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0}, Landroid/hardware/wifi/V1_0/IWifiChip$Stub;->getCapabilities(Landroid/hardware/wifi/V1_0/IWifiChip$getCapabilitiesCallback;)V

    .line 2402
    goto :goto_11

    .line 2370
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_1e
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_4f

    goto :goto_10

    :cond_4f
    move v2, v1

    .line 2371
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_10
    if-eqz v2, :cond_50

    .line 2372
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2373
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2374
    goto :goto_11

    .line 2375
    :cond_50
    const-string v0, "android.hardware.wifi@1.0::IWifiChip"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2377
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/wifi/V1_0/IWifiChipEventCallback;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/wifi/V1_0/IWifiChipEventCallback;

    move-result-object v0

    .line 2378
    .local v0, "callback":Landroid/hardware/wifi/V1_0/IWifiChipEventCallback;
    invoke-virtual {p0, v0}, Landroid/hardware/wifi/V1_0/IWifiChip$Stub;->registerEventCallback(Landroid/hardware/wifi/V1_0/IWifiChipEventCallback;)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v3

    .line 2379
    .restart local v3    # "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2380
    invoke-virtual {v3, p3}, Landroid/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2381
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2382
    goto :goto_11

    .line 2350
    .end local v0    # "callback":Landroid/hardware/wifi/V1_0/IWifiChipEventCallback;
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    :pswitch_1f
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_51

    move v1, v2

    nop

    .line 2351
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_51
    if-eqz v1, :cond_52

    .line 2352
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2353
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2354
    goto :goto_11

    .line 2355
    :cond_52
    const-string v0, "android.hardware.wifi@1.0::IWifiChip"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2357
    new-instance v0, Landroid/hardware/wifi/V1_0/IWifiChip$Stub$1;

    invoke-direct {v0, p0, p3}, Landroid/hardware/wifi/V1_0/IWifiChip$Stub$1;-><init>(Landroid/hardware/wifi/V1_0/IWifiChip$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0}, Landroid/hardware/wifi/V1_0/IWifiChip$Stub;->getId(Landroid/hardware/wifi/V1_0/IWifiChip$getIdCallback;)V

    .line 2365
    nop

    .line 3122
    .end local v1    # "_hidl_is_oneway":Z
    :cond_53
    :goto_11
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
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

    .line 2303
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 1
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 2329
    const-string v0, "android.hardware.wifi@1.0::IWifiChip"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2330
    return-object p0

    .line 2332
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

    .line 2336
    invoke-virtual {p0, p1}, Landroid/hardware/wifi/V1_0/IWifiChip$Stub;->registerService(Ljava/lang/String;)V

    .line 2337
    return-void
.end method

.method public final setHALInstrumentation()V
    .locals 0

    .line 2294
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 2341
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/wifi/V1_0/IWifiChip$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 2323
    const/4 v0, 0x1

    return v0
.end method
