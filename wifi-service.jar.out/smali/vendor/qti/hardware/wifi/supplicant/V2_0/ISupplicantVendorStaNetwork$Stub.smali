.class public abstract Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaNetwork$Stub;
.super Landroid/os/HwBinder;
.source "ISupplicantVendorStaNetwork.java"

# interfaces
.implements Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaNetwork;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaNetwork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1486
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .locals 0

    .line 1489
    return-object p0
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .locals 3

    .line 1533
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 1534
    .local v0, "info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 1535
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 1536
    const/4 v1, 0x0

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    .line 1537
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

    .line 1508
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
        0x26t
        -0x4et
        0x4at
        0x10t
        -0xft
        0x74t
        -0x33t
        -0x64t
        0x18t
        -0x35t
        0x75t
        -0x1et
        0x3t
        0x8t
        -0x9t
        0x5bt
        -0x3dt
        -0x1dt
        -0x61t
        -0x7ct
        0x7ct
        0x13t
        0x42t
        -0x15t
        -0x2et
        -0x6ft
        0x1ct
        0x47t
        -0x18t
        -0x4t
        0x5dt
        -0x79t
    .end array-data

    :array_1
    .array-data 1
        0x5dt
        0x4bt
        0x3et
        0x28t
        -0x3ft
        0x62t
        -0x33t
        0x76t
        0xdt
        0x44t
        -0x7et
        -0x2bt
        0x20t
        -0x2dt
        0x3bt
        0x6at
        0x3ft
        0x21t
        0x37t
        -0x3at
        -0x18t
        0x2et
        -0x29t
        -0x1t
        0x27t
        -0x14t
        -0x68t
        -0x4et
        0x50t
        0x52t
        0x54t
        0x5et
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

    .line 1494
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "vendor.qti.hardware.wifi.supplicant@2.0::ISupplicantVendorStaNetwork"

    const-string v2, "vendor.qti.hardware.wifi.supplicant@2.0::ISupplicantVendorNetwork"

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

    .line 1502
    const-string v0, "vendor.qti.hardware.wifi.supplicant@2.0::ISupplicantVendorStaNetwork"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 1
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .line 1522
    const/4 v0, 0x1

    return v0
.end method

.method public final notifySyspropsChanged()V
    .locals 0

    .line 1542
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 1543
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

    .line 1571
    const/high16 v0, -0x80000000

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_19

    .line 2206
    :sswitch_0
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_0

    move v1, v2

    nop

    .line 2207
    .local v1, "_hidl_is_oneway":Z
    :cond_0
    if-eqz v1, :cond_49

    .line 2208
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2209
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2210
    goto/16 :goto_19

    .line 2193
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_1
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1

    move v1, v2

    nop

    .line 2194
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1
    if-eq v1, v2, :cond_2

    .line 2195
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2196
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2197
    goto/16 :goto_19

    .line 2198
    :cond_2
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2200
    invoke-virtual {p0}, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaNetwork$Stub;->notifySyspropsChanged()V

    .line 2201
    goto/16 :goto_19

    .line 2177
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_2
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_3
    move v2, v1

    .line 2178
    .local v2, "_hidl_is_oneway":Z
    :goto_0
    if-eqz v2, :cond_4

    .line 2179
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2180
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2181
    goto/16 :goto_19

    .line 2182
    :cond_4
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2184
    invoke-virtual {p0}, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaNetwork$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    .line 2185
    .local v0, "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2186
    invoke-virtual {v0, p3}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2187
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2188
    goto/16 :goto_19

    .line 2162
    .end local v0    # "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_3
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_5

    goto :goto_1

    :cond_5
    move v2, v1

    .line 2163
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_1
    if-eqz v2, :cond_6

    .line 2164
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2165
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2166
    goto/16 :goto_19

    .line 2167
    :cond_6
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2169
    invoke-virtual {p0}, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaNetwork$Stub;->ping()V

    .line 2170
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2171
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2172
    goto/16 :goto_19

    .line 2152
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_4
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_7

    move v1, v2

    nop

    .line 2153
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_7
    if-eqz v1, :cond_49

    .line 2154
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2155
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2156
    goto/16 :goto_19

    .line 2139
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_5
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_8

    move v1, v2

    nop

    .line 2140
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_8
    if-eq v1, v2, :cond_9

    .line 2141
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2142
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2143
    goto/16 :goto_19

    .line 2144
    :cond_9
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2146
    invoke-virtual {p0}, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaNetwork$Stub;->setHALInstrumentation()V

    .line 2147
    goto/16 :goto_19

    .line 2106
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_6
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_a

    goto :goto_2

    :cond_a
    move v2, v1

    .line 2107
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_2
    if-eqz v2, :cond_b

    .line 2108
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2109
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2110
    goto/16 :goto_19

    .line 2111
    :cond_b
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2113
    invoke-virtual {p0}, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaNetwork$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 2114
    .local v0, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2116
    new-instance v3, Landroid/os/HwBlob;

    const/16 v4, 0x10

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 2118
    .local v3, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 2119
    .local v4, "_hidl_vec_size":I
    const-wide/16 v5, 0x8

    invoke-virtual {v3, v5, v6, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 2120
    const-wide/16 v5, 0xc

    invoke-virtual {v3, v5, v6, v1}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 2121
    new-instance v5, Landroid/os/HwBlob;

    mul-int/lit8 v6, v4, 0x20

    invoke-direct {v5, v6}, Landroid/os/HwBlob;-><init>(I)V

    .line 2122
    .local v5, "childBlob":Landroid/os/HwBlob;
    nop

    .local v1, "_hidl_index_0":I
    :goto_3
    if-ge v1, v4, :cond_c

    .line 2124
    mul-int/lit8 v6, v1, 0x20

    int-to-long v6, v6

    .line 2125
    .local v6, "_hidl_array_offset_1":J
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 2126
    nop

    .line 2122
    .end local v6    # "_hidl_array_offset_1":J
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 2129
    .end local v1    # "_hidl_index_0":I
    :cond_c
    const-wide/16 v6, 0x0

    invoke-virtual {v3, v6, v7, v5}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 2131
    .end local v4    # "_hidl_vec_size":I
    .end local v5    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 2133
    .end local v3    # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2134
    goto/16 :goto_19

    .line 2090
    .end local v0    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_7
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_d

    goto :goto_4

    :cond_d
    move v2, v1

    .line 2091
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_4
    if-eqz v2, :cond_e

    .line 2092
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2093
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2094
    goto/16 :goto_19

    .line 2095
    :cond_e
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2097
    invoke-virtual {p0}, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaNetwork$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 2098
    .local v0, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2099
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 2100
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2101
    goto/16 :goto_19

    .line 2076
    .end local v0    # "_hidl_out_descriptor":Ljava/lang/String;
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_8
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_f

    goto :goto_5

    :cond_f
    move v2, v1

    .line 2077
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_5
    if-eqz v2, :cond_10

    .line 2078
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2079
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2080
    goto/16 :goto_19

    .line 2081
    :cond_10
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2083
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2084
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2085
    goto/16 :goto_19

    .line 2060
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_9
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_11

    goto :goto_6

    :cond_11
    move v2, v1

    .line 2061
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_6
    if-eqz v2, :cond_12

    .line 2062
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2063
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2064
    goto/16 :goto_19

    .line 2065
    :cond_12
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2067
    invoke-virtual {p0}, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaNetwork$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 2068
    .local v0, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2069
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 2070
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2071
    goto/16 :goto_19

    .line 2043
    .end local v0    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_0
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_13

    goto :goto_7

    :cond_13
    move v2, v1

    .line 2044
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_7
    if-eqz v2, :cond_14

    .line 2045
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2046
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2047
    goto/16 :goto_19

    .line 2048
    :cond_14
    const-string v0, "vendor.qti.hardware.wifi.supplicant@2.0::ISupplicantVendorStaNetwork"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2050
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2051
    .local v0, "sim_num":I
    invoke-virtual {p0, v0}, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaNetwork$Stub;->setVendorSimNumber(I)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v3

    .line 2052
    .local v3, "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2053
    invoke-virtual {v3, p3}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2054
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2055
    goto/16 :goto_19

    .line 2023
    .end local v0    # "sim_num":I
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :pswitch_1
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_15

    move v1, v2

    nop

    .line 2024
    .local v1, "_hidl_is_oneway":Z
    :cond_15
    if-eqz v1, :cond_16

    .line 2025
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2026
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2027
    goto/16 :goto_19

    .line 2028
    :cond_16
    const-string v0, "vendor.qti.hardware.wifi.supplicant@2.0::ISupplicantVendorStaNetwork"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2030
    new-instance v0, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaNetwork$Stub$9;

    invoke-direct {v0, p0, p3}, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaNetwork$Stub$9;-><init>(Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaNetwork$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0}, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaNetwork$Stub;->getWapiCertSel(Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaNetwork$getWapiCertSelCallback;)V

    .line 2038
    goto/16 :goto_19

    .line 2003
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_2
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_17

    move v1, v2

    nop

    .line 2004
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_17
    if-eqz v1, :cond_18

    .line 2005
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2006
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2007
    goto/16 :goto_19

    .line 2008
    :cond_18
    const-string v0, "vendor.qti.hardware.wifi.supplicant@2.0::ISupplicantVendorStaNetwork"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2010
    new-instance v0, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaNetwork$Stub$8;

    invoke-direct {v0, p0, p3}, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaNetwork$Stub$8;-><init>(Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaNetwork$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0}, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaNetwork$Stub;->getWapiCertSelMode(Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaNetwork$getWapiCertSelModeCallback;)V

    .line 2018
    goto/16 :goto_19

    .line 1983
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_3
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_19

    move v1, v2

    nop

    .line 1984
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_19
    if-eqz v1, :cond_1a

    .line 1985
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1986
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1987
    goto/16 :goto_19

    .line 1988
    :cond_1a
    const-string v0, "vendor.qti.hardware.wifi.supplicant@2.0::ISupplicantVendorStaNetwork"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1990
    new-instance v0, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaNetwork$Stub$7;

    invoke-direct {v0, p0, p3}, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaNetwork$Stub$7;-><init>(Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaNetwork$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0}, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaNetwork$Stub;->getWapiPsk(Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaNetwork$getWapiPskCallback;)V

    .line 1998
    goto/16 :goto_19

    .line 1963
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_4
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1b

    move v1, v2

    nop

    .line 1964
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1b
    if-eqz v1, :cond_1c

    .line 1965
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1966
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1967
    goto/16 :goto_19

    .line 1968
    :cond_1c
    const-string v0, "vendor.qti.hardware.wifi.supplicant@2.0::ISupplicantVendorStaNetwork"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1970
    new-instance v0, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaNetwork$Stub$6;

    invoke-direct {v0, p0, p3}, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaNetwork$Stub$6;-><init>(Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaNetwork$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0}, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaNetwork$Stub;->getWapiPskType(Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaNetwork$getWapiPskTypeCallback;)V

    .line 1978
    goto/16 :goto_19

    .line 1946
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_5
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1d

    goto :goto_8

    :cond_1d
    move v2, v1

    .line 1947
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_8
    if-eqz v2, :cond_1e

    .line 1948
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1949
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1950
    goto/16 :goto_19

    .line 1951
    :cond_1e
    const-string v0, "vendor.qti.hardware.wifi.supplicant@2.0::ISupplicantVendorStaNetwork"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1953
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1954
    .local v0, "name":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaNetwork$Stub;->setWapiCertSel(Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v3

    .line 1955
    .restart local v3    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1956
    invoke-virtual {v3, p3}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1957
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1958
    goto/16 :goto_19

    .line 1929
    .end local v0    # "name":Ljava/lang/String;
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :pswitch_6
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1f

    goto :goto_9

    :cond_1f
    move v2, v1

    .line 1930
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_9
    if-eqz v2, :cond_20

    .line 1931
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1932
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1933
    goto/16 :goto_19

    .line 1934
    :cond_20
    const-string v0, "vendor.qti.hardware.wifi.supplicant@2.0::ISupplicantVendorStaNetwork"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1936
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1937
    .local v0, "mode":I
    invoke-virtual {p0, v0}, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaNetwork$Stub;->setWapiCertSelMode(I)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v3

    .line 1938
    .restart local v3    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1939
    invoke-virtual {v3, p3}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1940
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1941
    goto/16 :goto_19

    .line 1912
    .end local v0    # "mode":I
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :pswitch_7
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_21

    goto :goto_a

    :cond_21
    move v2, v1

    .line 1913
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_a
    if-eqz v2, :cond_22

    .line 1914
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1915
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1916
    goto/16 :goto_19

    .line 1917
    :cond_22
    const-string v0, "vendor.qti.hardware.wifi.supplicant@2.0::ISupplicantVendorStaNetwork"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1919
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1920
    .local v0, "psk":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaNetwork$Stub;->setWapiPsk(Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v3

    .line 1921
    .restart local v3    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1922
    invoke-virtual {v3, p3}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1923
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1924
    goto/16 :goto_19

    .line 1895
    .end local v0    # "psk":Ljava/lang/String;
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :pswitch_8
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_23

    goto :goto_b

    :cond_23
    move v2, v1

    .line 1896
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_b
    if-eqz v2, :cond_24

    .line 1897
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1898
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1899
    goto/16 :goto_19

    .line 1900
    :cond_24
    const-string v0, "vendor.qti.hardware.wifi.supplicant@2.0::ISupplicantVendorStaNetwork"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1902
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1903
    .local v0, "type":I
    invoke-virtual {p0, v0}, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaNetwork$Stub;->setWapiPskType(I)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v3

    .line 1904
    .restart local v3    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1905
    invoke-virtual {v3, p3}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1906
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1907
    goto/16 :goto_19

    .line 1878
    .end local v0    # "type":I
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :pswitch_9
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_25

    goto :goto_c

    :cond_25
    move v2, v1

    .line 1879
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_c
    if-eqz v2, :cond_26

    .line 1880
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1881
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1882
    goto/16 :goto_19

    .line 1883
    :cond_26
    const-string v0, "vendor.qti.hardware.wifi.supplicant@2.0::ISupplicantVendorStaNetwork"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1885
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v0

    .line 1886
    .local v0, "csign":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {p0, v0}, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaNetwork$Stub;->setDppCsign(Ljava/util/ArrayList;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v3

    .line 1887
    .restart local v3    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1888
    invoke-virtual {v3, p3}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1889
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1890
    goto/16 :goto_19

    .line 1861
    .end local v0    # "csign":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :pswitch_a
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_27

    goto :goto_d

    :cond_27
    move v2, v1

    .line 1862
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_d
    if-eqz v2, :cond_28

    .line 1863
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1864
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1865
    goto/16 :goto_19

    .line 1866
    :cond_28
    const-string v0, "vendor.qti.hardware.wifi.supplicant@2.0::ISupplicantVendorStaNetwork"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1868
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1869
    .local v0, "netAccessKeyExpiry":I
    invoke-virtual {p0, v0}, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaNetwork$Stub;->setDppNetAccessKeyExpiry(I)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v3

    .line 1870
    .restart local v3    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1871
    invoke-virtual {v3, p3}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1872
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1873
    goto/16 :goto_19

    .line 1844
    .end local v0    # "netAccessKeyExpiry":I
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :pswitch_b
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_29

    goto :goto_e

    :cond_29
    move v2, v1

    .line 1845
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_e
    if-eqz v2, :cond_2a

    .line 1846
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1847
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1848
    goto/16 :goto_19

    .line 1849
    :cond_2a
    const-string v0, "vendor.qti.hardware.wifi.supplicant@2.0::ISupplicantVendorStaNetwork"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1851
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v0

    .line 1852
    .local v0, "netAccessKey":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {p0, v0}, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaNetwork$Stub;->setDppNetAccessKey(Ljava/util/ArrayList;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v3

    .line 1853
    .restart local v3    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1854
    invoke-virtual {v3, p3}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1855
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1856
    goto/16 :goto_19

    .line 1827
    .end local v0    # "netAccessKey":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :pswitch_c
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_2b

    goto :goto_f

    :cond_2b
    move v2, v1

    .line 1828
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_f
    if-eqz v2, :cond_2c

    .line 1829
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1830
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1831
    goto/16 :goto_19

    .line 1832
    :cond_2c
    const-string v0, "vendor.qti.hardware.wifi.supplicant@2.0::ISupplicantVendorStaNetwork"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1834
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1835
    .local v0, "connector":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaNetwork$Stub;->setDppConnector(Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v3

    .line 1836
    .restart local v3    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1837
    invoke-virtual {v3, p3}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1838
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1839
    goto/16 :goto_19

    .line 1810
    .end local v0    # "connector":Ljava/lang/String;
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :pswitch_d
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_2d

    goto :goto_10

    :cond_2d
    move v2, v1

    .line 1811
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_10
    if-eqz v2, :cond_2e

    .line 1812
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1813
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1814
    goto/16 :goto_19

    .line 1815
    :cond_2e
    const-string v0, "vendor.qti.hardware.wifi.supplicant@2.0::ISupplicantVendorStaNetwork"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1817
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1818
    .local v0, "Ciphers":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaNetwork$Stub;->setEapOpensslCiphers(Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v3

    .line 1819
    .restart local v3    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1820
    invoke-virtual {v3, p3}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1821
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1822
    goto/16 :goto_19

    .line 1793
    .end local v0    # "Ciphers":Ljava/lang/String;
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :pswitch_e
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_2f

    goto :goto_11

    :cond_2f
    move v2, v1

    .line 1794
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_11
    if-eqz v2, :cond_30

    .line 1795
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1796
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1797
    goto/16 :goto_19

    .line 1798
    :cond_30
    const-string v0, "vendor.qti.hardware.wifi.supplicant@2.0::ISupplicantVendorStaNetwork"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1800
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1801
    .local v0, "params":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaNetwork$Stub;->setEapPhase1Params(Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v3

    .line 1802
    .restart local v3    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1803
    invoke-virtual {v3, p3}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1804
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1805
    goto/16 :goto_19

    .line 1776
    .end local v0    # "params":Ljava/lang/String;
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :pswitch_f
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_31

    goto :goto_12

    :cond_31
    move v2, v1

    .line 1777
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_12
    if-eqz v2, :cond_32

    .line 1778
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1779
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1780
    goto/16 :goto_19

    .line 1781
    :cond_32
    const-string v0, "vendor.qti.hardware.wifi.supplicant@2.0::ISupplicantVendorStaNetwork"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1783
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1784
    .local v0, "group_mgmt_cipher":I
    invoke-virtual {p0, v0}, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaNetwork$Stub;->setGroupMgmtCipher(I)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v3

    .line 1785
    .restart local v3    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1786
    invoke-virtual {v3, p3}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1787
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1788
    goto/16 :goto_19

    .line 1759
    .end local v0    # "group_mgmt_cipher":I
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :pswitch_10
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_33

    goto :goto_13

    :cond_33
    move v2, v1

    .line 1760
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_13
    if-eqz v2, :cond_34

    .line 1761
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1762
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1763
    goto/16 :goto_19

    .line 1764
    :cond_34
    const-string v0, "vendor.qti.hardware.wifi.supplicant@2.0::ISupplicantVendorStaNetwork"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1766
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v0

    .line 1767
    .local v0, "enable":Z
    invoke-virtual {p0, v0}, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaNetwork$Stub;->setEapErp(Z)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v3

    .line 1768
    .restart local v3    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1769
    invoke-virtual {v3, p3}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1770
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1771
    goto/16 :goto_19

    .line 1739
    .end local v0    # "enable":Z
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :pswitch_11
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_35

    move v1, v2

    nop

    .line 1740
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_35
    if-eqz v1, :cond_36

    .line 1741
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1742
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1743
    goto/16 :goto_19

    .line 1744
    :cond_36
    const-string v0, "vendor.qti.hardware.wifi.supplicant@2.0::ISupplicantVendorStaNetwork"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1746
    new-instance v0, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaNetwork$Stub$5;

    invoke-direct {v0, p0, p3}, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaNetwork$Stub$5;-><init>(Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaNetwork$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0}, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaNetwork$Stub;->getVendorPairwiseCipher(Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaNetwork$getVendorPairwiseCipherCallback;)V

    .line 1754
    goto/16 :goto_19

    .line 1719
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_12
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_37

    move v1, v2

    nop

    .line 1720
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_37
    if-eqz v1, :cond_38

    .line 1721
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1722
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1723
    goto/16 :goto_19

    .line 1724
    :cond_38
    const-string v0, "vendor.qti.hardware.wifi.supplicant@2.0::ISupplicantVendorStaNetwork"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1726
    new-instance v0, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaNetwork$Stub$4;

    invoke-direct {v0, p0, p3}, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaNetwork$Stub$4;-><init>(Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaNetwork$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0}, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaNetwork$Stub;->getVendorGroupCipher(Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaNetwork$getVendorGroupCipherCallback;)V

    .line 1734
    goto/16 :goto_19

    .line 1699
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_13
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_39

    move v1, v2

    nop

    .line 1700
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_39
    if-eqz v1, :cond_3a

    .line 1701
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1702
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1703
    goto/16 :goto_19

    .line 1704
    :cond_3a
    const-string v0, "vendor.qti.hardware.wifi.supplicant@2.0::ISupplicantVendorStaNetwork"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1706
    new-instance v0, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaNetwork$Stub$3;

    invoke-direct {v0, p0, p3}, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaNetwork$Stub$3;-><init>(Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaNetwork$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0}, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaNetwork$Stub;->getVendorAuthAlg(Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaNetwork$getVendorAuthAlgCallback;)V

    .line 1714
    goto/16 :goto_19

    .line 1679
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_14
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_3b

    move v1, v2

    nop

    .line 1680
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_3b
    if-eqz v1, :cond_3c

    .line 1681
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1682
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1683
    goto/16 :goto_19

    .line 1684
    :cond_3c
    const-string v0, "vendor.qti.hardware.wifi.supplicant@2.0::ISupplicantVendorStaNetwork"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1686
    new-instance v0, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaNetwork$Stub$2;

    invoke-direct {v0, p0, p3}, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaNetwork$Stub$2;-><init>(Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaNetwork$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0}, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaNetwork$Stub;->getVendorProto(Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaNetwork$getVendorProtoCallback;)V

    .line 1694
    goto/16 :goto_19

    .line 1659
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_15
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_3d

    move v1, v2

    nop

    .line 1660
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_3d
    if-eqz v1, :cond_3e

    .line 1661
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1662
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1663
    goto/16 :goto_19

    .line 1664
    :cond_3e
    const-string v0, "vendor.qti.hardware.wifi.supplicant@2.0::ISupplicantVendorStaNetwork"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1666
    new-instance v0, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaNetwork$Stub$1;

    invoke-direct {v0, p0, p3}, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaNetwork$Stub$1;-><init>(Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaNetwork$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0}, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaNetwork$Stub;->getVendorKeyMgmt(Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaNetwork$getVendorKeyMgmtCallback;)V

    .line 1674
    goto/16 :goto_19

    .line 1642
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_16
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_3f

    goto :goto_14

    :cond_3f
    move v2, v1

    .line 1643
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_14
    if-eqz v2, :cond_40

    .line 1644
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1645
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1646
    goto/16 :goto_19

    .line 1647
    :cond_40
    const-string v0, "vendor.qti.hardware.wifi.supplicant@2.0::ISupplicantVendorStaNetwork"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1649
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1650
    .local v0, "pairwiseCipherMask":I
    invoke-virtual {p0, v0}, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaNetwork$Stub;->setVendorPairwiseCipher(I)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v3

    .line 1651
    .restart local v3    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1652
    invoke-virtual {v3, p3}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1653
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1654
    goto/16 :goto_19

    .line 1625
    .end local v0    # "pairwiseCipherMask":I
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :pswitch_17
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_41

    goto :goto_15

    :cond_41
    move v2, v1

    .line 1626
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_15
    if-eqz v2, :cond_42

    .line 1627
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1628
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1629
    goto/16 :goto_19

    .line 1630
    :cond_42
    const-string v0, "vendor.qti.hardware.wifi.supplicant@2.0::ISupplicantVendorStaNetwork"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1632
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1633
    .local v0, "groupCipherMask":I
    invoke-virtual {p0, v0}, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaNetwork$Stub;->setVendorGroupCipher(I)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v3

    .line 1634
    .restart local v3    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1635
    invoke-virtual {v3, p3}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1636
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1637
    goto/16 :goto_19

    .line 1608
    .end local v0    # "groupCipherMask":I
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :pswitch_18
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_43

    goto :goto_16

    :cond_43
    move v2, v1

    .line 1609
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_16
    if-eqz v2, :cond_44

    .line 1610
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1611
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1612
    goto :goto_19

    .line 1613
    :cond_44
    const-string v0, "vendor.qti.hardware.wifi.supplicant@2.0::ISupplicantVendorStaNetwork"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1615
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1616
    .local v0, "authAlgMask":I
    invoke-virtual {p0, v0}, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaNetwork$Stub;->setVendorAuthAlg(I)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v3

    .line 1617
    .restart local v3    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1618
    invoke-virtual {v3, p3}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1619
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1620
    goto :goto_19

    .line 1591
    .end local v0    # "authAlgMask":I
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :pswitch_19
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_45

    goto :goto_17

    :cond_45
    move v2, v1

    .line 1592
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_17
    if-eqz v2, :cond_46

    .line 1593
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1594
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1595
    goto :goto_19

    .line 1596
    :cond_46
    const-string v0, "vendor.qti.hardware.wifi.supplicant@2.0::ISupplicantVendorStaNetwork"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1598
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1599
    .local v0, "ProtoMask":I
    invoke-virtual {p0, v0}, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaNetwork$Stub;->setVendorProto(I)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v3

    .line 1600
    .restart local v3    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1601
    invoke-virtual {v3, p3}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1602
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1603
    goto :goto_19

    .line 1574
    .end local v0    # "ProtoMask":I
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :pswitch_1a
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_47

    goto :goto_18

    :cond_47
    move v2, v1

    .line 1575
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_18
    if-eqz v2, :cond_48

    .line 1576
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1577
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1578
    goto :goto_19

    .line 1579
    :cond_48
    const-string v0, "vendor.qti.hardware.wifi.supplicant@2.0::ISupplicantVendorStaNetwork"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1581
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1582
    .local v0, "keyMgmtMask":I
    invoke-virtual {p0, v0}, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaNetwork$Stub;->setVendorKeyMgmt(I)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v3

    .line 1583
    .restart local v3    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1584
    invoke-virtual {v3, p3}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1585
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1586
    nop

    .line 2215
    .end local v0    # "keyMgmtMask":I
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :cond_49
    :goto_19
    return-void

    nop

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

    .line 1527
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 1
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 1553
    const-string v0, "vendor.qti.hardware.wifi.supplicant@2.0::ISupplicantVendorStaNetwork"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1554
    return-object p0

    .line 1556
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

    .line 1560
    invoke-virtual {p0, p1}, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaNetwork$Stub;->registerService(Ljava/lang/String;)V

    .line 1561
    return-void
.end method

.method public final setHALInstrumentation()V
    .locals 0

    .line 1518
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1565
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaNetwork$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 1547
    const/4 v0, 0x1

    return v0
.end method
