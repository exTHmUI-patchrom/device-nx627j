.class public abstract Landroid/hardware/wifi/V1_2/IWifiChip$Stub;
.super Landroid/os/HwBinder;
.source "IWifiChip.java"

# interfaces
.implements Landroid/hardware/wifi/V1_2/IWifiChip;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/wifi/V1_2/IWifiChip;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1280
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .locals 0

    .line 1283
    return-object p0
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .locals 3

    .line 1329
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 1330
    .local v0, "info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 1331
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 1332
    const/4 v1, 0x0

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    .line 1333
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

    .line 1303
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
        0x78t
        0xct
        0x16t
        -0x3t
        -0x13t
        -0x5ft
        0x3bt
        0x77t
        -0x63t
        -0x67t
        0x39t
        0x53t
        -0x5at
        0x7ft
        0x7ct
        -0x5bt
        0x78t
        -0x37t
        0x38t
        -0x5ft
        0x72t
        -0x57t
        0x42t
        0x4ct
        0x1ct
        0x71t
        0x5at
        -0x18t
        0x1bt
        -0x3ct
        0xft
        -0x29t
    .end array-data

    :array_1
    .array-data 1
        -0x50t
        0x56t
        -0x1ft
        -0x22t
        -0x6t
        -0x4ct
        0x7t
        0x15t
        -0x7ct
        0x21t
        0x45t
        -0x7ct
        0x5t
        0x7dt
        0xbt
        -0x39t
        0x3at
        0x61t
        0x30t
        -0x7ft
        -0x41t
        0x11t
        0x52t
        0x59t
        0x5t
        0x49t
        0x64t
        -0x63t
        0x45t
        -0x7et
        -0x3ft
        0x3ct
    .end array-data

    :array_2
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

    .line 1288
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "android.hardware.wifi@1.2::IWifiChip"

    const-string v2, "android.hardware.wifi@1.1::IWifiChip"

    const-string v3, "android.hardware.wifi@1.0::IWifiChip"

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

    .line 1297
    const-string v0, "android.hardware.wifi@1.2::IWifiChip"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 1
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .line 1318
    const/4 v0, 0x1

    return v0
.end method

.method public final notifySyspropsChanged()V
    .locals 0

    .line 1338
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 1339
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

    .line 1367
    const/high16 v0, -0x80000000

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_15

    .line 2200
    :sswitch_0
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_0

    move v1, v2

    nop

    .line 2201
    .local v1, "_hidl_is_oneway":Z
    :cond_0
    if-eqz v1, :cond_5b

    .line 2202
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2203
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2204
    goto/16 :goto_15

    .line 2187
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_1
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1

    move v1, v2

    nop

    .line 2188
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1
    if-eq v1, v2, :cond_2

    .line 2189
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2190
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2191
    goto/16 :goto_15

    .line 2192
    :cond_2
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2194
    invoke-virtual {p0}, Landroid/hardware/wifi/V1_2/IWifiChip$Stub;->notifySyspropsChanged()V

    .line 2195
    goto/16 :goto_15

    .line 2171
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_2
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_3
    move v2, v1

    .line 2172
    .local v2, "_hidl_is_oneway":Z
    :goto_0
    if-eqz v2, :cond_4

    .line 2173
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2174
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2175
    goto/16 :goto_15

    .line 2176
    :cond_4
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2178
    invoke-virtual {p0}, Landroid/hardware/wifi/V1_2/IWifiChip$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    .line 2179
    .local v0, "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2180
    invoke-virtual {v0, p3}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2181
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2182
    goto/16 :goto_15

    .line 2156
    .end local v0    # "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_3
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_5

    goto :goto_1

    :cond_5
    move v2, v1

    .line 2157
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_1
    if-eqz v2, :cond_6

    .line 2158
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2159
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2160
    goto/16 :goto_15

    .line 2161
    :cond_6
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2163
    invoke-virtual {p0}, Landroid/hardware/wifi/V1_2/IWifiChip$Stub;->ping()V

    .line 2164
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2165
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2166
    goto/16 :goto_15

    .line 2146
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_4
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_7

    move v1, v2

    nop

    .line 2147
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_7
    if-eqz v1, :cond_5b

    .line 2148
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2149
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2150
    goto/16 :goto_15

    .line 2133
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_5
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_8

    move v1, v2

    nop

    .line 2134
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_8
    if-eq v1, v2, :cond_9

    .line 2135
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2136
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2137
    goto/16 :goto_15

    .line 2138
    :cond_9
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2140
    invoke-virtual {p0}, Landroid/hardware/wifi/V1_2/IWifiChip$Stub;->setHALInstrumentation()V

    .line 2141
    goto/16 :goto_15

    .line 2100
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_6
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_a

    goto :goto_2

    :cond_a
    move v2, v1

    .line 2101
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_2
    if-eqz v2, :cond_b

    .line 2102
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2103
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2104
    goto/16 :goto_15

    .line 2105
    :cond_b
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2107
    invoke-virtual {p0}, Landroid/hardware/wifi/V1_2/IWifiChip$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 2108
    .local v0, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2110
    new-instance v3, Landroid/os/HwBlob;

    const/16 v4, 0x10

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 2112
    .local v3, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 2113
    .local v4, "_hidl_vec_size":I
    const-wide/16 v5, 0x8

    invoke-virtual {v3, v5, v6, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 2114
    const-wide/16 v5, 0xc

    invoke-virtual {v3, v5, v6, v1}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 2115
    new-instance v5, Landroid/os/HwBlob;

    mul-int/lit8 v6, v4, 0x20

    invoke-direct {v5, v6}, Landroid/os/HwBlob;-><init>(I)V

    .line 2116
    .local v5, "childBlob":Landroid/os/HwBlob;
    nop

    .local v1, "_hidl_index_0":I
    :goto_3
    if-ge v1, v4, :cond_c

    .line 2118
    mul-int/lit8 v6, v1, 0x20

    int-to-long v6, v6

    .line 2119
    .local v6, "_hidl_array_offset_1":J
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 2120
    nop

    .line 2116
    .end local v6    # "_hidl_array_offset_1":J
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 2123
    .end local v1    # "_hidl_index_0":I
    :cond_c
    const-wide/16 v6, 0x0

    invoke-virtual {v3, v6, v7, v5}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 2125
    .end local v4    # "_hidl_vec_size":I
    .end local v5    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 2127
    .end local v3    # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2128
    goto/16 :goto_15

    .line 2084
    .end local v0    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_7
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_d

    goto :goto_4

    :cond_d
    move v2, v1

    .line 2085
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_4
    if-eqz v2, :cond_e

    .line 2086
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2087
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2088
    goto/16 :goto_15

    .line 2089
    :cond_e
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2091
    invoke-virtual {p0}, Landroid/hardware/wifi/V1_2/IWifiChip$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 2092
    .local v0, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2093
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 2094
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2095
    goto/16 :goto_15

    .line 2070
    .end local v0    # "_hidl_out_descriptor":Ljava/lang/String;
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_8
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_f

    goto :goto_5

    :cond_f
    move v2, v1

    .line 2071
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_5
    if-eqz v2, :cond_10

    .line 2072
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2073
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2074
    goto/16 :goto_15

    .line 2075
    :cond_10
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2077
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2078
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2079
    goto/16 :goto_15

    .line 2054
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_9
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_11

    goto :goto_6

    :cond_11
    move v2, v1

    .line 2055
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_6
    if-eqz v2, :cond_12

    .line 2056
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2057
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2058
    goto/16 :goto_15

    .line 2059
    :cond_12
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2061
    invoke-virtual {p0}, Landroid/hardware/wifi/V1_2/IWifiChip$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 2062
    .local v0, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2063
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 2064
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2065
    goto/16 :goto_15

    .line 2037
    .end local v0    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_0
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_13

    goto :goto_7

    :cond_13
    move v2, v1

    .line 2038
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_7
    if-eqz v2, :cond_14

    .line 2039
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2040
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2041
    goto/16 :goto_15

    .line 2042
    :cond_14
    const-string v0, "android.hardware.wifi@1.2::IWifiChip"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2044
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/wifi/V1_2/IWifiChipEventCallback;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/wifi/V1_2/IWifiChipEventCallback;

    move-result-object v0

    .line 2045
    .local v0, "callback":Landroid/hardware/wifi/V1_2/IWifiChipEventCallback;
    invoke-virtual {p0, v0}, Landroid/hardware/wifi/V1_2/IWifiChip$Stub;->registerEventCallback_1_2(Landroid/hardware/wifi/V1_2/IWifiChipEventCallback;)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v3

    .line 2046
    .local v3, "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2047
    invoke-virtual {v3, p3}, Landroid/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2048
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2049
    goto/16 :goto_15

    .line 2020
    .end local v0    # "callback":Landroid/hardware/wifi/V1_2/IWifiChipEventCallback;
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    :pswitch_1
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_15

    goto :goto_8

    :cond_15
    move v2, v1

    .line 2021
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_8
    if-eqz v2, :cond_16

    .line 2022
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2023
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2024
    goto/16 :goto_15

    .line 2025
    :cond_16
    const-string v0, "android.hardware.wifi@1.2::IWifiChip"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2027
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2028
    .local v0, "scenario":I
    invoke-virtual {p0, v0}, Landroid/hardware/wifi/V1_2/IWifiChip$Stub;->selectTxPowerScenario_1_2(I)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v3

    .line 2029
    .restart local v3    # "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2030
    invoke-virtual {v3, p3}, Landroid/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2031
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2032
    goto/16 :goto_15

    .line 2004
    .end local v0    # "scenario":I
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    :pswitch_2
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_17

    goto :goto_9

    :cond_17
    move v2, v1

    .line 2005
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_9
    if-eqz v2, :cond_18

    .line 2006
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2007
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2008
    goto/16 :goto_15

    .line 2009
    :cond_18
    const-string v0, "android.hardware.wifi@1.1::IWifiChip"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2011
    invoke-virtual {p0}, Landroid/hardware/wifi/V1_2/IWifiChip$Stub;->resetTxPowerScenario()Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v0

    .line 2012
    .local v0, "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2013
    invoke-virtual {v0, p3}, Landroid/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2014
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2015
    goto/16 :goto_15

    .line 1987
    .end local v0    # "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_3
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_19

    goto :goto_a

    :cond_19
    move v2, v1

    .line 1988
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_a
    if-eqz v2, :cond_1a

    .line 1989
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1990
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1991
    goto/16 :goto_15

    .line 1992
    :cond_1a
    const-string v0, "android.hardware.wifi@1.1::IWifiChip"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1994
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1995
    .local v0, "scenario":I
    invoke-virtual {p0, v0}, Landroid/hardware/wifi/V1_2/IWifiChip$Stub;->selectTxPowerScenario(I)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v3

    .line 1996
    .restart local v3    # "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1997
    invoke-virtual {v3, p3}, Landroid/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1998
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1999
    goto/16 :goto_15

    .line 1970
    .end local v0    # "scenario":I
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    :pswitch_4
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1b

    goto :goto_b

    :cond_1b
    move v2, v1

    .line 1971
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_b
    if-eqz v2, :cond_1c

    .line 1972
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1973
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1974
    goto/16 :goto_15

    .line 1975
    :cond_1c
    const-string v0, "android.hardware.wifi@1.0::IWifiChip"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1977
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v0

    .line 1978
    .local v0, "enable":Z
    invoke-virtual {p0, v0}, Landroid/hardware/wifi/V1_2/IWifiChip$Stub;->enableDebugErrorAlerts(Z)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v3

    .line 1979
    .restart local v3    # "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1980
    invoke-virtual {v3, p3}, Landroid/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1981
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1982
    goto/16 :goto_15

    .line 1950
    .end local v0    # "enable":Z
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    :pswitch_5
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1d

    move v1, v2

    nop

    .line 1951
    .local v1, "_hidl_is_oneway":Z
    :cond_1d
    if-eqz v1, :cond_1e

    .line 1952
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1953
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1954
    goto/16 :goto_15

    .line 1955
    :cond_1e
    const-string v0, "android.hardware.wifi@1.0::IWifiChip"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1957
    new-instance v0, Landroid/hardware/wifi/V1_2/IWifiChip$Stub$22;

    invoke-direct {v0, p0, p3}, Landroid/hardware/wifi/V1_2/IWifiChip$Stub$22;-><init>(Landroid/hardware/wifi/V1_2/IWifiChip$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0}, Landroid/hardware/wifi/V1_2/IWifiChip$Stub;->getDebugHostWakeReasonStats(Landroid/hardware/wifi/V1_0/IWifiChip$getDebugHostWakeReasonStatsCallback;)V

    .line 1965
    goto/16 :goto_15

    .line 1934
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_6
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1f

    goto :goto_c

    :cond_1f
    move v2, v1

    .line 1935
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_c
    if-eqz v2, :cond_20

    .line 1936
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1937
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1938
    goto/16 :goto_15

    .line 1939
    :cond_20
    const-string v0, "android.hardware.wifi@1.0::IWifiChip"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1941
    invoke-virtual {p0}, Landroid/hardware/wifi/V1_2/IWifiChip$Stub;->stopLoggingToDebugRingBuffer()Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v0

    .line 1942
    .local v0, "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1943
    invoke-virtual {v0, p3}, Landroid/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1944
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1945
    goto/16 :goto_15

    .line 1917
    .end local v0    # "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_7
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_21

    goto :goto_d

    :cond_21
    move v2, v1

    .line 1918
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_d
    if-eqz v2, :cond_22

    .line 1919
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1920
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1921
    goto/16 :goto_15

    .line 1922
    :cond_22
    const-string v0, "android.hardware.wifi@1.0::IWifiChip"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1924
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1925
    .local v0, "ringName":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/hardware/wifi/V1_2/IWifiChip$Stub;->forceDumpToDebugRingBuffer(Ljava/lang/String;)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v3

    .line 1926
    .restart local v3    # "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1927
    invoke-virtual {v3, p3}, Landroid/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1928
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1929
    goto/16 :goto_15

    .line 1897
    .end local v0    # "ringName":Ljava/lang/String;
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    :pswitch_8
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_23

    goto :goto_e

    :cond_23
    move v2, v1

    .line 1898
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_e
    if-eqz v2, :cond_24

    .line 1899
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1900
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1901
    goto/16 :goto_15

    .line 1902
    :cond_24
    const-string v0, "android.hardware.wifi@1.0::IWifiChip"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1904
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1905
    .restart local v0    # "ringName":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 1906
    .local v3, "verboseLevel":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 1907
    .local v4, "maxIntervalInSec":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 1908
    .local v5, "minDataSizeInBytes":I
    invoke-virtual {p0, v0, v3, v4, v5}, Landroid/hardware/wifi/V1_2/IWifiChip$Stub;->startLoggingToDebugRingBuffer(Ljava/lang/String;III)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v6

    .line 1909
    .local v6, "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1910
    invoke-virtual {v6, p3}, Landroid/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1911
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1912
    goto/16 :goto_15

    .line 1877
    .end local v0    # "ringName":Ljava/lang/String;
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "verboseLevel":I
    .end local v4    # "maxIntervalInSec":I
    .end local v5    # "minDataSizeInBytes":I
    .end local v6    # "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    :pswitch_9
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_25

    move v1, v2

    nop

    .line 1878
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_25
    if-eqz v1, :cond_26

    .line 1879
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1880
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1881
    goto/16 :goto_15

    .line 1882
    :cond_26
    const-string v0, "android.hardware.wifi@1.0::IWifiChip"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1884
    new-instance v0, Landroid/hardware/wifi/V1_2/IWifiChip$Stub$21;

    invoke-direct {v0, p0, p3}, Landroid/hardware/wifi/V1_2/IWifiChip$Stub$21;-><init>(Landroid/hardware/wifi/V1_2/IWifiChip$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0}, Landroid/hardware/wifi/V1_2/IWifiChip$Stub;->getDebugRingBuffersStatus(Landroid/hardware/wifi/V1_0/IWifiChip$getDebugRingBuffersStatusCallback;)V

    .line 1892
    goto/16 :goto_15

    .line 1856
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_a
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_27

    move v1, v2

    nop

    .line 1857
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_27
    if-eqz v1, :cond_28

    .line 1858
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1859
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1860
    goto/16 :goto_15

    .line 1861
    :cond_28
    const-string v0, "android.hardware.wifi@1.0::IWifiChip"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1863
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/wifi/V1_0/IWifiIface;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/wifi/V1_0/IWifiIface;

    move-result-object v0

    .line 1864
    .local v0, "boundIface":Landroid/hardware/wifi/V1_0/IWifiIface;
    new-instance v2, Landroid/hardware/wifi/V1_2/IWifiChip$Stub$20;

    invoke-direct {v2, p0, p3}, Landroid/hardware/wifi/V1_2/IWifiChip$Stub$20;-><init>(Landroid/hardware/wifi/V1_2/IWifiChip$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0, v2}, Landroid/hardware/wifi/V1_2/IWifiChip$Stub;->createRttController(Landroid/hardware/wifi/V1_0/IWifiIface;Landroid/hardware/wifi/V1_0/IWifiChip$createRttControllerCallback;)V

    .line 1872
    goto/16 :goto_15

    .line 1839
    .end local v0    # "boundIface":Landroid/hardware/wifi/V1_0/IWifiIface;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_b
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_29

    goto :goto_f

    :cond_29
    move v2, v1

    .line 1840
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_f
    if-eqz v2, :cond_2a

    .line 1841
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1842
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1843
    goto/16 :goto_15

    .line 1844
    :cond_2a
    const-string v0, "android.hardware.wifi@1.0::IWifiChip"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1846
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1847
    .local v0, "ifname":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/hardware/wifi/V1_2/IWifiChip$Stub;->removeStaIface(Ljava/lang/String;)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v3

    .line 1848
    .local v3, "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1849
    invoke-virtual {v3, p3}, Landroid/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1850
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1851
    goto/16 :goto_15

    .line 1818
    .end local v0    # "ifname":Ljava/lang/String;
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    :pswitch_c
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_2b

    move v1, v2

    nop

    .line 1819
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_2b
    if-eqz v1, :cond_2c

    .line 1820
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1821
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1822
    goto/16 :goto_15

    .line 1823
    :cond_2c
    const-string v0, "android.hardware.wifi@1.0::IWifiChip"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1825
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1826
    .restart local v0    # "ifname":Ljava/lang/String;
    new-instance v2, Landroid/hardware/wifi/V1_2/IWifiChip$Stub$19;

    invoke-direct {v2, p0, p3}, Landroid/hardware/wifi/V1_2/IWifiChip$Stub$19;-><init>(Landroid/hardware/wifi/V1_2/IWifiChip$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0, v2}, Landroid/hardware/wifi/V1_2/IWifiChip$Stub;->getStaIface(Ljava/lang/String;Landroid/hardware/wifi/V1_0/IWifiChip$getStaIfaceCallback;)V

    .line 1834
    goto/16 :goto_15

    .line 1798
    .end local v0    # "ifname":Ljava/lang/String;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_d
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_2d

    move v1, v2

    nop

    .line 1799
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_2d
    if-eqz v1, :cond_2e

    .line 1800
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1801
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1802
    goto/16 :goto_15

    .line 1803
    :cond_2e
    const-string v0, "android.hardware.wifi@1.0::IWifiChip"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1805
    new-instance v0, Landroid/hardware/wifi/V1_2/IWifiChip$Stub$18;

    invoke-direct {v0, p0, p3}, Landroid/hardware/wifi/V1_2/IWifiChip$Stub$18;-><init>(Landroid/hardware/wifi/V1_2/IWifiChip$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0}, Landroid/hardware/wifi/V1_2/IWifiChip$Stub;->getStaIfaceNames(Landroid/hardware/wifi/V1_0/IWifiChip$getStaIfaceNamesCallback;)V

    .line 1813
    goto/16 :goto_15

    .line 1778
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_e
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_2f

    move v1, v2

    nop

    .line 1779
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_2f
    if-eqz v1, :cond_30

    .line 1780
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1781
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1782
    goto/16 :goto_15

    .line 1783
    :cond_30
    const-string v0, "android.hardware.wifi@1.0::IWifiChip"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1785
    new-instance v0, Landroid/hardware/wifi/V1_2/IWifiChip$Stub$17;

    invoke-direct {v0, p0, p3}, Landroid/hardware/wifi/V1_2/IWifiChip$Stub$17;-><init>(Landroid/hardware/wifi/V1_2/IWifiChip$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0}, Landroid/hardware/wifi/V1_2/IWifiChip$Stub;->createStaIface(Landroid/hardware/wifi/V1_0/IWifiChip$createStaIfaceCallback;)V

    .line 1793
    goto/16 :goto_15

    .line 1761
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_f
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_31

    goto :goto_10

    :cond_31
    move v2, v1

    .line 1762
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_10
    if-eqz v2, :cond_32

    .line 1763
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1764
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1765
    goto/16 :goto_15

    .line 1766
    :cond_32
    const-string v0, "android.hardware.wifi@1.0::IWifiChip"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1768
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1769
    .restart local v0    # "ifname":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/hardware/wifi/V1_2/IWifiChip$Stub;->removeP2pIface(Ljava/lang/String;)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v3

    .line 1770
    .restart local v3    # "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1771
    invoke-virtual {v3, p3}, Landroid/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1772
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1773
    goto/16 :goto_15

    .line 1740
    .end local v0    # "ifname":Ljava/lang/String;
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    :pswitch_10
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_33

    move v1, v2

    nop

    .line 1741
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_33
    if-eqz v1, :cond_34

    .line 1742
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1743
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1744
    goto/16 :goto_15

    .line 1745
    :cond_34
    const-string v0, "android.hardware.wifi@1.0::IWifiChip"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1747
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1748
    .restart local v0    # "ifname":Ljava/lang/String;
    new-instance v2, Landroid/hardware/wifi/V1_2/IWifiChip$Stub$16;

    invoke-direct {v2, p0, p3}, Landroid/hardware/wifi/V1_2/IWifiChip$Stub$16;-><init>(Landroid/hardware/wifi/V1_2/IWifiChip$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0, v2}, Landroid/hardware/wifi/V1_2/IWifiChip$Stub;->getP2pIface(Ljava/lang/String;Landroid/hardware/wifi/V1_0/IWifiChip$getP2pIfaceCallback;)V

    .line 1756
    goto/16 :goto_15

    .line 1720
    .end local v0    # "ifname":Ljava/lang/String;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_11
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_35

    move v1, v2

    nop

    .line 1721
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_35
    if-eqz v1, :cond_36

    .line 1722
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1723
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1724
    goto/16 :goto_15

    .line 1725
    :cond_36
    const-string v0, "android.hardware.wifi@1.0::IWifiChip"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1727
    new-instance v0, Landroid/hardware/wifi/V1_2/IWifiChip$Stub$15;

    invoke-direct {v0, p0, p3}, Landroid/hardware/wifi/V1_2/IWifiChip$Stub$15;-><init>(Landroid/hardware/wifi/V1_2/IWifiChip$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0}, Landroid/hardware/wifi/V1_2/IWifiChip$Stub;->getP2pIfaceNames(Landroid/hardware/wifi/V1_0/IWifiChip$getP2pIfaceNamesCallback;)V

    .line 1735
    goto/16 :goto_15

    .line 1700
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_12
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_37

    move v1, v2

    nop

    .line 1701
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_37
    if-eqz v1, :cond_38

    .line 1702
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1703
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1704
    goto/16 :goto_15

    .line 1705
    :cond_38
    const-string v0, "android.hardware.wifi@1.0::IWifiChip"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1707
    new-instance v0, Landroid/hardware/wifi/V1_2/IWifiChip$Stub$14;

    invoke-direct {v0, p0, p3}, Landroid/hardware/wifi/V1_2/IWifiChip$Stub$14;-><init>(Landroid/hardware/wifi/V1_2/IWifiChip$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0}, Landroid/hardware/wifi/V1_2/IWifiChip$Stub;->createP2pIface(Landroid/hardware/wifi/V1_0/IWifiChip$createP2pIfaceCallback;)V

    .line 1715
    goto/16 :goto_15

    .line 1683
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_13
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_39

    goto :goto_11

    :cond_39
    move v2, v1

    .line 1684
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_11
    if-eqz v2, :cond_3a

    .line 1685
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1686
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1687
    goto/16 :goto_15

    .line 1688
    :cond_3a
    const-string v0, "android.hardware.wifi@1.0::IWifiChip"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1690
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1691
    .restart local v0    # "ifname":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/hardware/wifi/V1_2/IWifiChip$Stub;->removeNanIface(Ljava/lang/String;)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v3

    .line 1692
    .restart local v3    # "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1693
    invoke-virtual {v3, p3}, Landroid/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1694
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1695
    goto/16 :goto_15

    .line 1662
    .end local v0    # "ifname":Ljava/lang/String;
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    :pswitch_14
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_3b

    move v1, v2

    nop

    .line 1663
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_3b
    if-eqz v1, :cond_3c

    .line 1664
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1665
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1666
    goto/16 :goto_15

    .line 1667
    :cond_3c
    const-string v0, "android.hardware.wifi@1.0::IWifiChip"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1669
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1670
    .restart local v0    # "ifname":Ljava/lang/String;
    new-instance v2, Landroid/hardware/wifi/V1_2/IWifiChip$Stub$13;

    invoke-direct {v2, p0, p3}, Landroid/hardware/wifi/V1_2/IWifiChip$Stub$13;-><init>(Landroid/hardware/wifi/V1_2/IWifiChip$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0, v2}, Landroid/hardware/wifi/V1_2/IWifiChip$Stub;->getNanIface(Ljava/lang/String;Landroid/hardware/wifi/V1_0/IWifiChip$getNanIfaceCallback;)V

    .line 1678
    goto/16 :goto_15

    .line 1642
    .end local v0    # "ifname":Ljava/lang/String;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_15
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_3d

    move v1, v2

    nop

    .line 1643
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_3d
    if-eqz v1, :cond_3e

    .line 1644
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1645
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1646
    goto/16 :goto_15

    .line 1647
    :cond_3e
    const-string v0, "android.hardware.wifi@1.0::IWifiChip"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1649
    new-instance v0, Landroid/hardware/wifi/V1_2/IWifiChip$Stub$12;

    invoke-direct {v0, p0, p3}, Landroid/hardware/wifi/V1_2/IWifiChip$Stub$12;-><init>(Landroid/hardware/wifi/V1_2/IWifiChip$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0}, Landroid/hardware/wifi/V1_2/IWifiChip$Stub;->getNanIfaceNames(Landroid/hardware/wifi/V1_0/IWifiChip$getNanIfaceNamesCallback;)V

    .line 1657
    goto/16 :goto_15

    .line 1622
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_16
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_3f

    move v1, v2

    nop

    .line 1623
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_3f
    if-eqz v1, :cond_40

    .line 1624
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1625
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1626
    goto/16 :goto_15

    .line 1627
    :cond_40
    const-string v0, "android.hardware.wifi@1.0::IWifiChip"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1629
    new-instance v0, Landroid/hardware/wifi/V1_2/IWifiChip$Stub$11;

    invoke-direct {v0, p0, p3}, Landroid/hardware/wifi/V1_2/IWifiChip$Stub$11;-><init>(Landroid/hardware/wifi/V1_2/IWifiChip$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0}, Landroid/hardware/wifi/V1_2/IWifiChip$Stub;->createNanIface(Landroid/hardware/wifi/V1_0/IWifiChip$createNanIfaceCallback;)V

    .line 1637
    goto/16 :goto_15

    .line 1605
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_17
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_41

    goto :goto_12

    :cond_41
    move v2, v1

    .line 1606
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_12
    if-eqz v2, :cond_42

    .line 1607
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1608
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1609
    goto/16 :goto_15

    .line 1610
    :cond_42
    const-string v0, "android.hardware.wifi@1.0::IWifiChip"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1612
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1613
    .restart local v0    # "ifname":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/hardware/wifi/V1_2/IWifiChip$Stub;->removeApIface(Ljava/lang/String;)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v3

    .line 1614
    .restart local v3    # "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1615
    invoke-virtual {v3, p3}, Landroid/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1616
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1617
    goto/16 :goto_15

    .line 1584
    .end local v0    # "ifname":Ljava/lang/String;
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    :pswitch_18
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_43

    move v1, v2

    nop

    .line 1585
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_43
    if-eqz v1, :cond_44

    .line 1586
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1587
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1588
    goto/16 :goto_15

    .line 1589
    :cond_44
    const-string v0, "android.hardware.wifi@1.0::IWifiChip"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1591
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1592
    .restart local v0    # "ifname":Ljava/lang/String;
    new-instance v2, Landroid/hardware/wifi/V1_2/IWifiChip$Stub$10;

    invoke-direct {v2, p0, p3}, Landroid/hardware/wifi/V1_2/IWifiChip$Stub$10;-><init>(Landroid/hardware/wifi/V1_2/IWifiChip$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0, v2}, Landroid/hardware/wifi/V1_2/IWifiChip$Stub;->getApIface(Ljava/lang/String;Landroid/hardware/wifi/V1_0/IWifiChip$getApIfaceCallback;)V

    .line 1600
    goto/16 :goto_15

    .line 1564
    .end local v0    # "ifname":Ljava/lang/String;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_19
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_45

    move v1, v2

    nop

    .line 1565
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_45
    if-eqz v1, :cond_46

    .line 1566
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1567
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1568
    goto/16 :goto_15

    .line 1569
    :cond_46
    const-string v0, "android.hardware.wifi@1.0::IWifiChip"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1571
    new-instance v0, Landroid/hardware/wifi/V1_2/IWifiChip$Stub$9;

    invoke-direct {v0, p0, p3}, Landroid/hardware/wifi/V1_2/IWifiChip$Stub$9;-><init>(Landroid/hardware/wifi/V1_2/IWifiChip$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0}, Landroid/hardware/wifi/V1_2/IWifiChip$Stub;->getApIfaceNames(Landroid/hardware/wifi/V1_0/IWifiChip$getApIfaceNamesCallback;)V

    .line 1579
    goto/16 :goto_15

    .line 1544
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_1a
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_47

    move v1, v2

    nop

    .line 1545
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_47
    if-eqz v1, :cond_48

    .line 1546
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1547
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1548
    goto/16 :goto_15

    .line 1549
    :cond_48
    const-string v0, "android.hardware.wifi@1.0::IWifiChip"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1551
    new-instance v0, Landroid/hardware/wifi/V1_2/IWifiChip$Stub$8;

    invoke-direct {v0, p0, p3}, Landroid/hardware/wifi/V1_2/IWifiChip$Stub$8;-><init>(Landroid/hardware/wifi/V1_2/IWifiChip$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0}, Landroid/hardware/wifi/V1_2/IWifiChip$Stub;->createApIface(Landroid/hardware/wifi/V1_0/IWifiChip$createApIfaceCallback;)V

    .line 1559
    goto/16 :goto_15

    .line 1524
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_1b
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_49

    move v1, v2

    nop

    .line 1525
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_49
    if-eqz v1, :cond_4a

    .line 1526
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1527
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1528
    goto/16 :goto_15

    .line 1529
    :cond_4a
    const-string v0, "android.hardware.wifi@1.0::IWifiChip"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1531
    new-instance v0, Landroid/hardware/wifi/V1_2/IWifiChip$Stub$7;

    invoke-direct {v0, p0, p3}, Landroid/hardware/wifi/V1_2/IWifiChip$Stub$7;-><init>(Landroid/hardware/wifi/V1_2/IWifiChip$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0}, Landroid/hardware/wifi/V1_2/IWifiChip$Stub;->requestFirmwareDebugDump(Landroid/hardware/wifi/V1_0/IWifiChip$requestFirmwareDebugDumpCallback;)V

    .line 1539
    goto/16 :goto_15

    .line 1504
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_1c
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_4b

    move v1, v2

    nop

    .line 1505
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_4b
    if-eqz v1, :cond_4c

    .line 1506
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1507
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1508
    goto/16 :goto_15

    .line 1509
    :cond_4c
    const-string v0, "android.hardware.wifi@1.0::IWifiChip"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1511
    new-instance v0, Landroid/hardware/wifi/V1_2/IWifiChip$Stub$6;

    invoke-direct {v0, p0, p3}, Landroid/hardware/wifi/V1_2/IWifiChip$Stub$6;-><init>(Landroid/hardware/wifi/V1_2/IWifiChip$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0}, Landroid/hardware/wifi/V1_2/IWifiChip$Stub;->requestDriverDebugDump(Landroid/hardware/wifi/V1_0/IWifiChip$requestDriverDebugDumpCallback;)V

    .line 1519
    goto/16 :goto_15

    .line 1484
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_1d
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_4d

    move v1, v2

    nop

    .line 1485
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_4d
    if-eqz v1, :cond_4e

    .line 1486
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1487
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1488
    goto/16 :goto_15

    .line 1489
    :cond_4e
    const-string v0, "android.hardware.wifi@1.0::IWifiChip"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1491
    new-instance v0, Landroid/hardware/wifi/V1_2/IWifiChip$Stub$5;

    invoke-direct {v0, p0, p3}, Landroid/hardware/wifi/V1_2/IWifiChip$Stub$5;-><init>(Landroid/hardware/wifi/V1_2/IWifiChip$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0}, Landroid/hardware/wifi/V1_2/IWifiChip$Stub;->requestChipDebugInfo(Landroid/hardware/wifi/V1_0/IWifiChip$requestChipDebugInfoCallback;)V

    .line 1499
    goto/16 :goto_15

    .line 1464
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_1e
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_4f

    move v1, v2

    nop

    .line 1465
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_4f
    if-eqz v1, :cond_50

    .line 1466
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1467
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1468
    goto/16 :goto_15

    .line 1469
    :cond_50
    const-string v0, "android.hardware.wifi@1.0::IWifiChip"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1471
    new-instance v0, Landroid/hardware/wifi/V1_2/IWifiChip$Stub$4;

    invoke-direct {v0, p0, p3}, Landroid/hardware/wifi/V1_2/IWifiChip$Stub$4;-><init>(Landroid/hardware/wifi/V1_2/IWifiChip$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0}, Landroid/hardware/wifi/V1_2/IWifiChip$Stub;->getMode(Landroid/hardware/wifi/V1_0/IWifiChip$getModeCallback;)V

    .line 1479
    goto/16 :goto_15

    .line 1447
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_1f
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_51

    goto :goto_13

    :cond_51
    move v2, v1

    .line 1448
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_13
    if-eqz v2, :cond_52

    .line 1449
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1450
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1451
    goto/16 :goto_15

    .line 1452
    :cond_52
    const-string v0, "android.hardware.wifi@1.0::IWifiChip"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1454
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1455
    .local v0, "modeId":I
    invoke-virtual {p0, v0}, Landroid/hardware/wifi/V1_2/IWifiChip$Stub;->configureChip(I)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v3

    .line 1456
    .restart local v3    # "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1457
    invoke-virtual {v3, p3}, Landroid/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1458
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1459
    goto/16 :goto_15

    .line 1427
    .end local v0    # "modeId":I
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    :pswitch_20
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_53

    move v1, v2

    nop

    .line 1428
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_53
    if-eqz v1, :cond_54

    .line 1429
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1430
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1431
    goto/16 :goto_15

    .line 1432
    :cond_54
    const-string v0, "android.hardware.wifi@1.0::IWifiChip"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1434
    new-instance v0, Landroid/hardware/wifi/V1_2/IWifiChip$Stub$3;

    invoke-direct {v0, p0, p3}, Landroid/hardware/wifi/V1_2/IWifiChip$Stub$3;-><init>(Landroid/hardware/wifi/V1_2/IWifiChip$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0}, Landroid/hardware/wifi/V1_2/IWifiChip$Stub;->getAvailableModes(Landroid/hardware/wifi/V1_0/IWifiChip$getAvailableModesCallback;)V

    .line 1442
    goto/16 :goto_15

    .line 1407
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_21
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_55

    move v1, v2

    nop

    .line 1408
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_55
    if-eqz v1, :cond_56

    .line 1409
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1410
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1411
    goto :goto_15

    .line 1412
    :cond_56
    const-string v0, "android.hardware.wifi@1.0::IWifiChip"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1414
    new-instance v0, Landroid/hardware/wifi/V1_2/IWifiChip$Stub$2;

    invoke-direct {v0, p0, p3}, Landroid/hardware/wifi/V1_2/IWifiChip$Stub$2;-><init>(Landroid/hardware/wifi/V1_2/IWifiChip$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0}, Landroid/hardware/wifi/V1_2/IWifiChip$Stub;->getCapabilities(Landroid/hardware/wifi/V1_0/IWifiChip$getCapabilitiesCallback;)V

    .line 1422
    goto :goto_15

    .line 1390
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_22
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_57

    goto :goto_14

    :cond_57
    move v2, v1

    .line 1391
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_14
    if-eqz v2, :cond_58

    .line 1392
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1393
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1394
    goto :goto_15

    .line 1395
    :cond_58
    const-string v0, "android.hardware.wifi@1.0::IWifiChip"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1397
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/wifi/V1_0/IWifiChipEventCallback;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/wifi/V1_0/IWifiChipEventCallback;

    move-result-object v0

    .line 1398
    .local v0, "callback":Landroid/hardware/wifi/V1_0/IWifiChipEventCallback;
    invoke-virtual {p0, v0}, Landroid/hardware/wifi/V1_2/IWifiChip$Stub;->registerEventCallback(Landroid/hardware/wifi/V1_0/IWifiChipEventCallback;)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v3

    .line 1399
    .restart local v3    # "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1400
    invoke-virtual {v3, p3}, Landroid/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1401
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1402
    goto :goto_15

    .line 1370
    .end local v0    # "callback":Landroid/hardware/wifi/V1_0/IWifiChipEventCallback;
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    :pswitch_23
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_59

    move v1, v2

    nop

    .line 1371
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_59
    if-eqz v1, :cond_5a

    .line 1372
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1373
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1374
    goto :goto_15

    .line 1375
    :cond_5a
    const-string v0, "android.hardware.wifi@1.0::IWifiChip"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1377
    new-instance v0, Landroid/hardware/wifi/V1_2/IWifiChip$Stub$1;

    invoke-direct {v0, p0, p3}, Landroid/hardware/wifi/V1_2/IWifiChip$Stub$1;-><init>(Landroid/hardware/wifi/V1_2/IWifiChip$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0}, Landroid/hardware/wifi/V1_2/IWifiChip$Stub;->getId(Landroid/hardware/wifi/V1_0/IWifiChip$getIdCallback;)V

    .line 1385
    nop

    .line 2209
    .end local v1    # "_hidl_is_oneway":Z
    :cond_5b
    :goto_15
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
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

    .line 1323
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 1
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 1349
    const-string v0, "android.hardware.wifi@1.2::IWifiChip"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1350
    return-object p0

    .line 1352
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

    .line 1356
    invoke-virtual {p0, p1}, Landroid/hardware/wifi/V1_2/IWifiChip$Stub;->registerService(Ljava/lang/String;)V

    .line 1357
    return-void
.end method

.method public final setHALInstrumentation()V
    .locals 0

    .line 1314
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1361
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/wifi/V1_2/IWifiChip$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 1343
    const/4 v0, 0x1

    return v0
.end method
