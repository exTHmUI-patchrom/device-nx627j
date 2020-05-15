.class public abstract Landroid/hardware/wifi/V1_0/IWifiStaIface$Stub;
.super Landroid/os/HwBinder;
.source "IWifiStaIface.java"

# interfaces
.implements Landroid/hardware/wifi/V1_0/IWifiStaIface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/wifi/V1_0/IWifiStaIface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1503
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .locals 0

    .line 1506
    return-object p0
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .locals 3

    .line 1550
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 1551
    .local v0, "info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 1552
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 1553
    const/4 v1, 0x0

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    .line 1554
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

    .line 1525
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

    :array_1
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

    .line 1511
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "android.hardware.wifi@1.0::IWifiStaIface"

    const-string v2, "android.hardware.wifi@1.0::IWifiIface"

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

    .line 1519
    const-string v0, "android.hardware.wifi@1.0::IWifiStaIface"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 1
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .line 1539
    const/4 v0, 0x1

    return v0
.end method

.method public final notifySyspropsChanged()V
    .locals 0

    .line 1559
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 1560
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

    .line 1588
    const/high16 v0, -0x80000000

    const/4 v10, 0x0

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_16

    .line 2226
    :sswitch_0
    and-int/lit8 v2, p4, 0x1

    if-eqz v2, :cond_0

    move v10, v1

    nop

    :cond_0
    move v1, v10

    .line 2227
    .local v1, "_hidl_is_oneway":Z
    if-eqz v1, :cond_45

    .line 2228
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2229
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2230
    goto/16 :goto_16

    .line 2213
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_1
    and-int/lit8 v2, p4, 0x1

    if-eqz v2, :cond_1

    move v10, v1

    nop

    :cond_1
    move v2, v10

    .line 2214
    .local v2, "_hidl_is_oneway":Z
    if-eq v2, v1, :cond_2

    .line 2215
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2216
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2217
    goto/16 :goto_16

    .line 2218
    :cond_2
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2220
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/wifi/V1_0/IWifiStaIface$Stub;->notifySyspropsChanged()V

    .line 2221
    goto/16 :goto_16

    .line 2197
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_2
    and-int/lit8 v2, p4, 0x1

    if-eqz v2, :cond_3

    goto :goto_0

    :cond_3
    move v1, v10

    .line 2198
    .restart local v1    # "_hidl_is_oneway":Z
    :goto_0
    if-eqz v1, :cond_4

    .line 2199
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2200
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2201
    goto/16 :goto_16

    .line 2202
    :cond_4
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2204
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/wifi/V1_0/IWifiStaIface$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    .line 2205
    .local v0, "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-virtual {v9, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2206
    invoke-virtual {v0, v9}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2207
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2208
    goto/16 :goto_16

    .line 2182
    .end local v0    # "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_3
    and-int/lit8 v2, p4, 0x1

    if-eqz v2, :cond_5

    goto :goto_1

    :cond_5
    move v1, v10

    .line 2183
    .restart local v1    # "_hidl_is_oneway":Z
    :goto_1
    if-eqz v1, :cond_6

    .line 2184
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2185
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2186
    goto/16 :goto_16

    .line 2187
    :cond_6
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2189
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/wifi/V1_0/IWifiStaIface$Stub;->ping()V

    .line 2190
    invoke-virtual {v9, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2191
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2192
    goto/16 :goto_16

    .line 2172
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_4
    and-int/lit8 v2, p4, 0x1

    if-eqz v2, :cond_7

    move v10, v1

    nop

    :cond_7
    move v1, v10

    .line 2173
    .restart local v1    # "_hidl_is_oneway":Z
    if-eqz v1, :cond_45

    .line 2174
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2175
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2176
    goto/16 :goto_16

    .line 2159
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_5
    and-int/lit8 v2, p4, 0x1

    if-eqz v2, :cond_8

    move v10, v1

    nop

    :cond_8
    move v2, v10

    .line 2160
    .restart local v2    # "_hidl_is_oneway":Z
    if-eq v2, v1, :cond_9

    .line 2161
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2162
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2163
    goto/16 :goto_16

    .line 2164
    :cond_9
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2166
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/wifi/V1_0/IWifiStaIface$Stub;->setHALInstrumentation()V

    .line 2167
    goto/16 :goto_16

    .line 2126
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_6
    and-int/lit8 v2, p4, 0x1

    if-eqz v2, :cond_a

    goto :goto_2

    :cond_a
    move v1, v10

    .line 2127
    .restart local v1    # "_hidl_is_oneway":Z
    :goto_2
    if-eqz v1, :cond_b

    .line 2128
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2129
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2130
    goto/16 :goto_16

    .line 2131
    :cond_b
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2133
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/wifi/V1_0/IWifiStaIface$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 2134
    .local v0, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {v9, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2136
    new-instance v2, Landroid/os/HwBlob;

    const/16 v3, 0x10

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 2138
    .local v2, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 2139
    .local v3, "_hidl_vec_size":I
    const-wide/16 v4, 0x8

    invoke-virtual {v2, v4, v5, v3}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 2140
    const-wide/16 v4, 0xc

    invoke-virtual {v2, v4, v5, v10}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 2141
    new-instance v4, Landroid/os/HwBlob;

    mul-int/lit8 v5, v3, 0x20

    invoke-direct {v4, v5}, Landroid/os/HwBlob;-><init>(I)V

    .line 2142
    .local v4, "childBlob":Landroid/os/HwBlob;
    nop

    .local v10, "_hidl_index_0":I
    :goto_3
    move v5, v10

    .end local v10    # "_hidl_index_0":I
    .local v5, "_hidl_index_0":I
    if-ge v5, v3, :cond_c

    .line 2144
    mul-int/lit8 v6, v5, 0x20

    int-to-long v10, v6

    .line 2145
    .local v10, "_hidl_array_offset_1":J
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    invoke-virtual {v4, v10, v11, v6}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 2146
    nop

    .line 2142
    .end local v10    # "_hidl_array_offset_1":J
    add-int/lit8 v10, v5, 0x1

    .end local v5    # "_hidl_index_0":I
    .local v10, "_hidl_index_0":I
    goto :goto_3

    .line 2149
    .end local v10    # "_hidl_index_0":I
    :cond_c
    const-wide/16 v5, 0x0

    invoke-virtual {v2, v5, v6, v4}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 2151
    .end local v3    # "_hidl_vec_size":I
    .end local v4    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v9, v2}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 2153
    .end local v2    # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2154
    goto/16 :goto_16

    .line 2110
    .end local v0    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_7
    and-int/lit8 v2, p4, 0x1

    if-eqz v2, :cond_d

    goto :goto_4

    :cond_d
    move v1, v10

    .line 2111
    .restart local v1    # "_hidl_is_oneway":Z
    :goto_4
    if-eqz v1, :cond_e

    .line 2112
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2113
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2114
    goto/16 :goto_16

    .line 2115
    :cond_e
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2117
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/wifi/V1_0/IWifiStaIface$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 2118
    .local v0, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {v9, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2119
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 2120
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2121
    goto/16 :goto_16

    .line 2096
    .end local v0    # "_hidl_out_descriptor":Ljava/lang/String;
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_8
    and-int/lit8 v2, p4, 0x1

    if-eqz v2, :cond_f

    goto :goto_5

    :cond_f
    move v1, v10

    .line 2097
    .restart local v1    # "_hidl_is_oneway":Z
    :goto_5
    if-eqz v1, :cond_10

    .line 2098
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2099
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2100
    goto/16 :goto_16

    .line 2101
    :cond_10
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2103
    invoke-virtual {v9, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2104
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2105
    goto/16 :goto_16

    .line 2080
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_9
    and-int/lit8 v2, p4, 0x1

    if-eqz v2, :cond_11

    goto :goto_6

    :cond_11
    move v1, v10

    .line 2081
    .restart local v1    # "_hidl_is_oneway":Z
    :goto_6
    if-eqz v1, :cond_12

    .line 2082
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2083
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2084
    goto/16 :goto_16

    .line 2085
    :cond_12
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2087
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/wifi/V1_0/IWifiStaIface$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 2088
    .local v0, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v9, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2089
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 2090
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2091
    goto/16 :goto_16

    .line 2060
    .end local v0    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_0
    and-int/lit8 v2, p4, 0x1

    if-eqz v2, :cond_13

    move v10, v1

    nop

    :cond_13
    move v1, v10

    .line 2061
    .restart local v1    # "_hidl_is_oneway":Z
    if-eqz v1, :cond_14

    .line 2062
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2063
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2064
    goto/16 :goto_16

    .line 2065
    :cond_14
    const-string v0, "android.hardware.wifi@1.0::IWifiStaIface"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2067
    new-instance v0, Landroid/hardware/wifi/V1_0/IWifiStaIface$Stub$10;

    invoke-direct {v0, v7, v9}, Landroid/hardware/wifi/V1_0/IWifiStaIface$Stub$10;-><init>(Landroid/hardware/wifi/V1_0/IWifiStaIface$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {v7, v0}, Landroid/hardware/wifi/V1_0/IWifiStaIface$Stub;->getDebugRxPacketFates(Landroid/hardware/wifi/V1_0/IWifiStaIface$getDebugRxPacketFatesCallback;)V

    .line 2075
    goto/16 :goto_16

    .line 2040
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_1
    and-int/lit8 v2, p4, 0x1

    if-eqz v2, :cond_15

    move v10, v1

    nop

    :cond_15
    move v1, v10

    .line 2041
    .restart local v1    # "_hidl_is_oneway":Z
    if-eqz v1, :cond_16

    .line 2042
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2043
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2044
    goto/16 :goto_16

    .line 2045
    :cond_16
    const-string v0, "android.hardware.wifi@1.0::IWifiStaIface"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2047
    new-instance v0, Landroid/hardware/wifi/V1_0/IWifiStaIface$Stub$9;

    invoke-direct {v0, v7, v9}, Landroid/hardware/wifi/V1_0/IWifiStaIface$Stub$9;-><init>(Landroid/hardware/wifi/V1_0/IWifiStaIface$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {v7, v0}, Landroid/hardware/wifi/V1_0/IWifiStaIface$Stub;->getDebugTxPacketFates(Landroid/hardware/wifi/V1_0/IWifiStaIface$getDebugTxPacketFatesCallback;)V

    .line 2055
    goto/16 :goto_16

    .line 2024
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_2
    and-int/lit8 v2, p4, 0x1

    if-eqz v2, :cond_17

    goto :goto_7

    :cond_17
    move v1, v10

    .line 2025
    .restart local v1    # "_hidl_is_oneway":Z
    :goto_7
    if-eqz v1, :cond_18

    .line 2026
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2027
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2028
    goto/16 :goto_16

    .line 2029
    :cond_18
    const-string v0, "android.hardware.wifi@1.0::IWifiStaIface"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2031
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/wifi/V1_0/IWifiStaIface$Stub;->startDebugPacketFateMonitoring()Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v0

    .line 2032
    .local v0, "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    invoke-virtual {v9, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2033
    invoke-virtual {v0, v9}, Landroid/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2034
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2035
    goto/16 :goto_16

    .line 1999
    .end local v0    # "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_3
    and-int/lit8 v2, p4, 0x1

    if-eqz v2, :cond_19

    goto :goto_8

    :cond_19
    move v1, v10

    .line 2000
    .restart local v1    # "_hidl_is_oneway":Z
    :goto_8
    if-eqz v1, :cond_1a

    .line 2001
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2002
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2003
    goto/16 :goto_16

    .line 2004
    :cond_1a
    const-string v0, "android.hardware.wifi@1.0::IWifiStaIface"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2006
    const/4 v0, 0x3

    new-array v2, v0, [B

    .line 2008
    .local v2, "oui":[B
    const-wide/16 v3, 0x3

    invoke-virtual {v8, v3, v4}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v3

    .line 2010
    .local v3, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v4, 0x0

    .line 2011
    .local v4, "_hidl_array_offset_0":J
    invoke-virtual {v3, v4, v5, v2, v0}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 2012
    nop

    .line 2015
    .end local v3    # "_hidl_blob":Landroid/os/HwBlob;
    .end local v4    # "_hidl_array_offset_0":J
    invoke-virtual {v7, v2}, Landroid/hardware/wifi/V1_0/IWifiStaIface$Stub;->setScanningMacOui([B)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v0

    .line 2016
    .restart local v0    # "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    invoke-virtual {v9, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2017
    invoke-virtual {v0, v9}, Landroid/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2018
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2019
    goto/16 :goto_16

    .line 1982
    .end local v0    # "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "oui":[B
    :pswitch_4
    and-int/lit8 v2, p4, 0x1

    if-eqz v2, :cond_1b

    goto :goto_9

    :cond_1b
    move v1, v10

    .line 1983
    .restart local v1    # "_hidl_is_oneway":Z
    :goto_9
    if-eqz v1, :cond_1c

    .line 1984
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1985
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1986
    goto/16 :goto_16

    .line 1987
    :cond_1c
    const-string v0, "android.hardware.wifi@1.0::IWifiStaIface"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1989
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1990
    .local v0, "cmdId":I
    invoke-virtual {v7, v0}, Landroid/hardware/wifi/V1_0/IWifiStaIface$Stub;->stopSendingKeepAlivePackets(I)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v2

    .line 1991
    .local v2, "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    invoke-virtual {v9, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1992
    invoke-virtual {v2, v9}, Landroid/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1993
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1994
    goto/16 :goto_16

    .line 1944
    .end local v0    # "cmdId":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    :pswitch_5
    and-int/lit8 v2, p4, 0x1

    if-eqz v2, :cond_1d

    goto :goto_a

    :cond_1d
    move v1, v10

    :goto_a
    move v11, v1

    .line 1945
    .local v11, "_hidl_is_oneway":Z
    if-eqz v11, :cond_1e

    .line 1946
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1947
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1948
    goto/16 :goto_16

    .line 1949
    :cond_1e
    const-string v0, "android.hardware.wifi@1.0::IWifiStaIface"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1951
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v12

    .line 1952
    .local v12, "cmdId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v13

    .line 1953
    .local v13, "ipPacketData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt16()S

    move-result v14

    .line 1954
    .local v14, "etherType":S
    const/4 v0, 0x6

    new-array v6, v0, [B

    .line 1956
    .local v6, "srcAddress":[B
    const-wide/16 v1, 0x6

    invoke-virtual {v8, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v3

    .line 1958
    .restart local v3    # "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v4, 0x0

    .line 1959
    .restart local v4    # "_hidl_array_offset_0":J
    invoke-virtual {v3, v4, v5, v6, v0}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 1960
    nop

    .line 1963
    .end local v3    # "_hidl_blob":Landroid/os/HwBlob;
    .end local v4    # "_hidl_array_offset_0":J
    new-array v5, v0, [B

    .line 1965
    .local v5, "dstAddress":[B
    invoke-virtual {v8, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    .line 1967
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v2, 0x0

    .line 1968
    .local v2, "_hidl_array_offset_0":J
    invoke-virtual {v1, v2, v3, v5, v0}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 1969
    nop

    .line 1972
    .end local v1    # "_hidl_blob":Landroid/os/HwBlob;
    .end local v2    # "_hidl_array_offset_0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v15

    .line 1973
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
    invoke-virtual/range {v0 .. v6}, Landroid/hardware/wifi/V1_0/IWifiStaIface$Stub;->startSendingKeepAlivePackets(ILjava/util/ArrayList;S[B[BI)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v0

    .line 1974
    .local v0, "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    invoke-virtual {v9, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1975
    invoke-virtual {v0, v9}, Landroid/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1976
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1977
    goto/16 :goto_16

    .line 1927
    .end local v0    # "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    .end local v11    # "_hidl_is_oneway":Z
    .end local v12    # "cmdId":I
    .end local v13    # "ipPacketData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    .end local v14    # "etherType":S
    .end local v15    # "periodInMs":I
    .end local v16    # "dstAddress":[B
    .end local v17    # "srcAddress":[B
    :pswitch_6
    and-int/lit8 v2, p4, 0x1

    if-eqz v2, :cond_1f

    goto :goto_b

    :cond_1f
    move v1, v10

    .line 1928
    .local v1, "_hidl_is_oneway":Z
    :goto_b
    if-eqz v1, :cond_20

    .line 1929
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1930
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1931
    goto/16 :goto_16

    .line 1932
    :cond_20
    const-string v0, "android.hardware.wifi@1.0::IWifiStaIface"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1934
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v0

    .line 1935
    .local v0, "enable":Z
    invoke-virtual {v7, v0}, Landroid/hardware/wifi/V1_0/IWifiStaIface$Stub;->enableNdOffload(Z)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v2

    .line 1936
    .local v2, "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    invoke-virtual {v9, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1937
    invoke-virtual {v2, v9}, Landroid/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1938
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1939
    goto/16 :goto_16

    .line 1910
    .end local v0    # "enable":Z
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    :pswitch_7
    and-int/lit8 v2, p4, 0x1

    if-eqz v2, :cond_21

    goto :goto_c

    :cond_21
    move v1, v10

    .line 1911
    .restart local v1    # "_hidl_is_oneway":Z
    :goto_c
    if-eqz v1, :cond_22

    .line 1912
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1913
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1914
    goto/16 :goto_16

    .line 1915
    :cond_22
    const-string v0, "android.hardware.wifi@1.0::IWifiStaIface"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1917
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8()B

    move-result v0

    .line 1918
    .local v0, "state":B
    invoke-virtual {v7, v0}, Landroid/hardware/wifi/V1_0/IWifiStaIface$Stub;->setRoamingState(B)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v2

    .line 1919
    .restart local v2    # "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    invoke-virtual {v9, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1920
    invoke-virtual {v2, v9}, Landroid/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1921
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1922
    goto/16 :goto_16

    .line 1892
    .end local v0    # "state":B
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    :pswitch_8
    and-int/lit8 v2, p4, 0x1

    if-eqz v2, :cond_23

    goto :goto_d

    :cond_23
    move v1, v10

    .line 1893
    .restart local v1    # "_hidl_is_oneway":Z
    :goto_d
    if-eqz v1, :cond_24

    .line 1894
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1895
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1896
    goto/16 :goto_16

    .line 1897
    :cond_24
    const-string v0, "android.hardware.wifi@1.0::IWifiStaIface"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1899
    new-instance v0, Landroid/hardware/wifi/V1_0/StaRoamingConfig;

    invoke-direct {v0}, Landroid/hardware/wifi/V1_0/StaRoamingConfig;-><init>()V

    .line 1900
    .local v0, "config":Landroid/hardware/wifi/V1_0/StaRoamingConfig;
    invoke-virtual {v0, v8}, Landroid/hardware/wifi/V1_0/StaRoamingConfig;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1901
    invoke-virtual {v7, v0}, Landroid/hardware/wifi/V1_0/IWifiStaIface$Stub;->configureRoaming(Landroid/hardware/wifi/V1_0/StaRoamingConfig;)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v2

    .line 1902
    .restart local v2    # "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    invoke-virtual {v9, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1903
    invoke-virtual {v2, v9}, Landroid/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1904
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1905
    goto/16 :goto_16

    .line 1872
    .end local v0    # "config":Landroid/hardware/wifi/V1_0/StaRoamingConfig;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    :pswitch_9
    and-int/lit8 v2, p4, 0x1

    if-eqz v2, :cond_25

    move v10, v1

    nop

    :cond_25
    move v1, v10

    .line 1873
    .restart local v1    # "_hidl_is_oneway":Z
    if-eqz v1, :cond_26

    .line 1874
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1875
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1876
    goto/16 :goto_16

    .line 1877
    :cond_26
    const-string v0, "android.hardware.wifi@1.0::IWifiStaIface"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1879
    new-instance v0, Landroid/hardware/wifi/V1_0/IWifiStaIface$Stub$8;

    invoke-direct {v0, v7, v9}, Landroid/hardware/wifi/V1_0/IWifiStaIface$Stub$8;-><init>(Landroid/hardware/wifi/V1_0/IWifiStaIface$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {v7, v0}, Landroid/hardware/wifi/V1_0/IWifiStaIface$Stub;->getRoamingCapabilities(Landroid/hardware/wifi/V1_0/IWifiStaIface$getRoamingCapabilitiesCallback;)V

    .line 1887
    goto/16 :goto_16

    .line 1855
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_a
    and-int/lit8 v2, p4, 0x1

    if-eqz v2, :cond_27

    goto :goto_e

    :cond_27
    move v1, v10

    .line 1856
    .restart local v1    # "_hidl_is_oneway":Z
    :goto_e
    if-eqz v1, :cond_28

    .line 1857
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1858
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1859
    goto/16 :goto_16

    .line 1860
    :cond_28
    const-string v0, "android.hardware.wifi@1.0::IWifiStaIface"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1862
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1863
    .local v0, "cmdId":I
    invoke-virtual {v7, v0}, Landroid/hardware/wifi/V1_0/IWifiStaIface$Stub;->stopRssiMonitoring(I)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v2

    .line 1864
    .restart local v2    # "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    invoke-virtual {v9, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1865
    invoke-virtual {v2, v9}, Landroid/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1866
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1867
    goto/16 :goto_16

    .line 1836
    .end local v0    # "cmdId":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    :pswitch_b
    and-int/lit8 v2, p4, 0x1

    if-eqz v2, :cond_29

    goto :goto_f

    :cond_29
    move v1, v10

    .line 1837
    .restart local v1    # "_hidl_is_oneway":Z
    :goto_f
    if-eqz v1, :cond_2a

    .line 1838
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1839
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1840
    goto/16 :goto_16

    .line 1841
    :cond_2a
    const-string v0, "android.hardware.wifi@1.0::IWifiStaIface"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1843
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1844
    .restart local v0    # "cmdId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1845
    .local v2, "maxRssi":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 1846
    .local v3, "minRssi":I
    invoke-virtual {v7, v0, v2, v3}, Landroid/hardware/wifi/V1_0/IWifiStaIface$Stub;->startRssiMonitoring(III)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v4

    .line 1847
    .local v4, "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    invoke-virtual {v9, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1848
    invoke-virtual {v4, v9}, Landroid/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1849
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1850
    goto/16 :goto_16

    .line 1816
    .end local v0    # "cmdId":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "maxRssi":I
    .end local v3    # "minRssi":I
    .end local v4    # "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    :pswitch_c
    and-int/lit8 v2, p4, 0x1

    if-eqz v2, :cond_2b

    move v10, v1

    nop

    :cond_2b
    move v1, v10

    .line 1817
    .restart local v1    # "_hidl_is_oneway":Z
    if-eqz v1, :cond_2c

    .line 1818
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1819
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1820
    goto/16 :goto_16

    .line 1821
    :cond_2c
    const-string v0, "android.hardware.wifi@1.0::IWifiStaIface"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1823
    new-instance v0, Landroid/hardware/wifi/V1_0/IWifiStaIface$Stub$7;

    invoke-direct {v0, v7, v9}, Landroid/hardware/wifi/V1_0/IWifiStaIface$Stub$7;-><init>(Landroid/hardware/wifi/V1_0/IWifiStaIface$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {v7, v0}, Landroid/hardware/wifi/V1_0/IWifiStaIface$Stub;->getLinkLayerStats(Landroid/hardware/wifi/V1_0/IWifiStaIface$getLinkLayerStatsCallback;)V

    .line 1831
    goto/16 :goto_16

    .line 1800
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_d
    and-int/lit8 v2, p4, 0x1

    if-eqz v2, :cond_2d

    goto :goto_10

    :cond_2d
    move v1, v10

    .line 1801
    .restart local v1    # "_hidl_is_oneway":Z
    :goto_10
    if-eqz v1, :cond_2e

    .line 1802
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1803
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1804
    goto/16 :goto_16

    .line 1805
    :cond_2e
    const-string v0, "android.hardware.wifi@1.0::IWifiStaIface"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1807
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/wifi/V1_0/IWifiStaIface$Stub;->disableLinkLayerStatsCollection()Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v0

    .line 1808
    .local v0, "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    invoke-virtual {v9, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1809
    invoke-virtual {v0, v9}, Landroid/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1810
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1811
    goto/16 :goto_16

    .line 1783
    .end local v0    # "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_e
    and-int/lit8 v2, p4, 0x1

    if-eqz v2, :cond_2f

    goto :goto_11

    :cond_2f
    move v1, v10

    .line 1784
    .restart local v1    # "_hidl_is_oneway":Z
    :goto_11
    if-eqz v1, :cond_30

    .line 1785
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1786
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1787
    goto/16 :goto_16

    .line 1788
    :cond_30
    const-string v0, "android.hardware.wifi@1.0::IWifiStaIface"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1790
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v0

    .line 1791
    .local v0, "debug":Z
    invoke-virtual {v7, v0}, Landroid/hardware/wifi/V1_0/IWifiStaIface$Stub;->enableLinkLayerStatsCollection(Z)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v2

    .line 1792
    .local v2, "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    invoke-virtual {v9, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1793
    invoke-virtual {v2, v9}, Landroid/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1794
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1795
    goto/16 :goto_16

    .line 1766
    .end local v0    # "debug":Z
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    :pswitch_f
    and-int/lit8 v2, p4, 0x1

    if-eqz v2, :cond_31

    goto :goto_12

    :cond_31
    move v1, v10

    .line 1767
    .restart local v1    # "_hidl_is_oneway":Z
    :goto_12
    if-eqz v1, :cond_32

    .line 1768
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1769
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1770
    goto/16 :goto_16

    .line 1771
    :cond_32
    const-string v0, "android.hardware.wifi@1.0::IWifiStaIface"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1773
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1774
    .local v0, "cmdId":I
    invoke-virtual {v7, v0}, Landroid/hardware/wifi/V1_0/IWifiStaIface$Stub;->stopBackgroundScan(I)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v2

    .line 1775
    .restart local v2    # "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    invoke-virtual {v9, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1776
    invoke-virtual {v2, v9}, Landroid/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1777
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1778
    goto/16 :goto_16

    .line 1747
    .end local v0    # "cmdId":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    :pswitch_10
    and-int/lit8 v2, p4, 0x1

    if-eqz v2, :cond_33

    goto :goto_13

    :cond_33
    move v1, v10

    .line 1748
    .restart local v1    # "_hidl_is_oneway":Z
    :goto_13
    if-eqz v1, :cond_34

    .line 1749
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1750
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1751
    goto/16 :goto_16

    .line 1752
    :cond_34
    const-string v0, "android.hardware.wifi@1.0::IWifiStaIface"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1754
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1755
    .restart local v0    # "cmdId":I
    new-instance v2, Landroid/hardware/wifi/V1_0/StaBackgroundScanParameters;

    invoke-direct {v2}, Landroid/hardware/wifi/V1_0/StaBackgroundScanParameters;-><init>()V

    .line 1756
    .local v2, "params":Landroid/hardware/wifi/V1_0/StaBackgroundScanParameters;
    invoke-virtual {v2, v8}, Landroid/hardware/wifi/V1_0/StaBackgroundScanParameters;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1757
    invoke-virtual {v7, v0, v2}, Landroid/hardware/wifi/V1_0/IWifiStaIface$Stub;->startBackgroundScan(ILandroid/hardware/wifi/V1_0/StaBackgroundScanParameters;)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v3

    .line 1758
    .local v3, "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    invoke-virtual {v9, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1759
    invoke-virtual {v3, v9}, Landroid/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1760
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1761
    goto/16 :goto_16

    .line 1726
    .end local v0    # "cmdId":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "params":Landroid/hardware/wifi/V1_0/StaBackgroundScanParameters;
    .end local v3    # "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    :pswitch_11
    and-int/lit8 v2, p4, 0x1

    if-eqz v2, :cond_35

    move v10, v1

    nop

    :cond_35
    move v1, v10

    .line 1727
    .restart local v1    # "_hidl_is_oneway":Z
    if-eqz v1, :cond_36

    .line 1728
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1729
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1730
    goto/16 :goto_16

    .line 1731
    :cond_36
    const-string v0, "android.hardware.wifi@1.0::IWifiStaIface"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1733
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1734
    .local v0, "band":I
    new-instance v2, Landroid/hardware/wifi/V1_0/IWifiStaIface$Stub$6;

    invoke-direct {v2, v7, v9}, Landroid/hardware/wifi/V1_0/IWifiStaIface$Stub$6;-><init>(Landroid/hardware/wifi/V1_0/IWifiStaIface$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {v7, v0, v2}, Landroid/hardware/wifi/V1_0/IWifiStaIface$Stub;->getValidFrequenciesForBand(ILandroid/hardware/wifi/V1_0/IWifiStaIface$getValidFrequenciesForBandCallback;)V

    .line 1742
    goto/16 :goto_16

    .line 1706
    .end local v0    # "band":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_12
    and-int/lit8 v2, p4, 0x1

    if-eqz v2, :cond_37

    move v10, v1

    nop

    :cond_37
    move v1, v10

    .line 1707
    .restart local v1    # "_hidl_is_oneway":Z
    if-eqz v1, :cond_38

    .line 1708
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1709
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1710
    goto/16 :goto_16

    .line 1711
    :cond_38
    const-string v0, "android.hardware.wifi@1.0::IWifiStaIface"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1713
    new-instance v0, Landroid/hardware/wifi/V1_0/IWifiStaIface$Stub$5;

    invoke-direct {v0, v7, v9}, Landroid/hardware/wifi/V1_0/IWifiStaIface$Stub$5;-><init>(Landroid/hardware/wifi/V1_0/IWifiStaIface$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {v7, v0}, Landroid/hardware/wifi/V1_0/IWifiStaIface$Stub;->getBackgroundScanCapabilities(Landroid/hardware/wifi/V1_0/IWifiStaIface$getBackgroundScanCapabilitiesCallback;)V

    .line 1721
    goto/16 :goto_16

    .line 1688
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_13
    and-int/lit8 v2, p4, 0x1

    if-eqz v2, :cond_39

    goto :goto_14

    :cond_39
    move v1, v10

    .line 1689
    .restart local v1    # "_hidl_is_oneway":Z
    :goto_14
    if-eqz v1, :cond_3a

    .line 1690
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1691
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1692
    goto/16 :goto_16

    .line 1693
    :cond_3a
    const-string v0, "android.hardware.wifi@1.0::IWifiStaIface"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1695
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1696
    .local v0, "cmdId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 1697
    .local v2, "program":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {v7, v0, v2}, Landroid/hardware/wifi/V1_0/IWifiStaIface$Stub;->installApfPacketFilter(ILjava/util/ArrayList;)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v3

    .line 1698
    .restart local v3    # "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    invoke-virtual {v9, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1699
    invoke-virtual {v3, v9}, Landroid/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1700
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1701
    goto/16 :goto_16

    .line 1668
    .end local v0    # "cmdId":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "program":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    .end local v3    # "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    :pswitch_14
    and-int/lit8 v2, p4, 0x1

    if-eqz v2, :cond_3b

    move v10, v1

    nop

    :cond_3b
    move v1, v10

    .line 1669
    .restart local v1    # "_hidl_is_oneway":Z
    if-eqz v1, :cond_3c

    .line 1670
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1671
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1672
    goto/16 :goto_16

    .line 1673
    :cond_3c
    const-string v0, "android.hardware.wifi@1.0::IWifiStaIface"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1675
    new-instance v0, Landroid/hardware/wifi/V1_0/IWifiStaIface$Stub$4;

    invoke-direct {v0, v7, v9}, Landroid/hardware/wifi/V1_0/IWifiStaIface$Stub$4;-><init>(Landroid/hardware/wifi/V1_0/IWifiStaIface$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {v7, v0}, Landroid/hardware/wifi/V1_0/IWifiStaIface$Stub;->getApfPacketFilterCapabilities(Landroid/hardware/wifi/V1_0/IWifiStaIface$getApfPacketFilterCapabilitiesCallback;)V

    .line 1683
    goto/16 :goto_16

    .line 1648
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_15
    and-int/lit8 v2, p4, 0x1

    if-eqz v2, :cond_3d

    move v10, v1

    nop

    :cond_3d
    move v1, v10

    .line 1649
    .restart local v1    # "_hidl_is_oneway":Z
    if-eqz v1, :cond_3e

    .line 1650
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1651
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1652
    goto/16 :goto_16

    .line 1653
    :cond_3e
    const-string v0, "android.hardware.wifi@1.0::IWifiStaIface"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1655
    new-instance v0, Landroid/hardware/wifi/V1_0/IWifiStaIface$Stub$3;

    invoke-direct {v0, v7, v9}, Landroid/hardware/wifi/V1_0/IWifiStaIface$Stub$3;-><init>(Landroid/hardware/wifi/V1_0/IWifiStaIface$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {v7, v0}, Landroid/hardware/wifi/V1_0/IWifiStaIface$Stub;->getCapabilities(Landroid/hardware/wifi/V1_0/IWifiStaIface$getCapabilitiesCallback;)V

    .line 1663
    goto/16 :goto_16

    .line 1631
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_16
    and-int/lit8 v2, p4, 0x1

    if-eqz v2, :cond_3f

    goto :goto_15

    :cond_3f
    move v1, v10

    .line 1632
    .restart local v1    # "_hidl_is_oneway":Z
    :goto_15
    if-eqz v1, :cond_40

    .line 1633
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1634
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1635
    goto :goto_16

    .line 1636
    :cond_40
    const-string v0, "android.hardware.wifi@1.0::IWifiStaIface"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1638
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/wifi/V1_0/IWifiStaIfaceEventCallback;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/wifi/V1_0/IWifiStaIfaceEventCallback;

    move-result-object v0

    .line 1639
    .local v0, "callback":Landroid/hardware/wifi/V1_0/IWifiStaIfaceEventCallback;
    invoke-virtual {v7, v0}, Landroid/hardware/wifi/V1_0/IWifiStaIface$Stub;->registerEventCallback(Landroid/hardware/wifi/V1_0/IWifiStaIfaceEventCallback;)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v2

    .line 1640
    .local v2, "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    invoke-virtual {v9, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1641
    invoke-virtual {v2, v9}, Landroid/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1642
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1643
    goto :goto_16

    .line 1611
    .end local v0    # "callback":Landroid/hardware/wifi/V1_0/IWifiStaIfaceEventCallback;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    :pswitch_17
    and-int/lit8 v2, p4, 0x1

    if-eqz v2, :cond_41

    move v10, v1

    nop

    :cond_41
    move v1, v10

    .line 1612
    .restart local v1    # "_hidl_is_oneway":Z
    if-eqz v1, :cond_42

    .line 1613
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1614
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1615
    goto :goto_16

    .line 1616
    :cond_42
    const-string v0, "android.hardware.wifi@1.0::IWifiIface"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1618
    new-instance v0, Landroid/hardware/wifi/V1_0/IWifiStaIface$Stub$2;

    invoke-direct {v0, v7, v9}, Landroid/hardware/wifi/V1_0/IWifiStaIface$Stub$2;-><init>(Landroid/hardware/wifi/V1_0/IWifiStaIface$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {v7, v0}, Landroid/hardware/wifi/V1_0/IWifiStaIface$Stub;->getName(Landroid/hardware/wifi/V1_0/IWifiIface$getNameCallback;)V

    .line 1626
    goto :goto_16

    .line 1591
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_18
    and-int/lit8 v2, p4, 0x1

    if-eqz v2, :cond_43

    move v10, v1

    nop

    :cond_43
    move v1, v10

    .line 1592
    .restart local v1    # "_hidl_is_oneway":Z
    if-eqz v1, :cond_44

    .line 1593
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1594
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1595
    goto :goto_16

    .line 1596
    :cond_44
    const-string v0, "android.hardware.wifi@1.0::IWifiIface"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1598
    new-instance v0, Landroid/hardware/wifi/V1_0/IWifiStaIface$Stub$1;

    invoke-direct {v0, v7, v9}, Landroid/hardware/wifi/V1_0/IWifiStaIface$Stub$1;-><init>(Landroid/hardware/wifi/V1_0/IWifiStaIface$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {v7, v0}, Landroid/hardware/wifi/V1_0/IWifiStaIface$Stub;->getType(Landroid/hardware/wifi/V1_0/IWifiIface$getTypeCallback;)V

    .line 1606
    nop

    .line 2235
    .end local v1    # "_hidl_is_oneway":Z
    :cond_45
    :goto_16
    return-void

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 1544
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 1
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 1570
    const-string v0, "android.hardware.wifi@1.0::IWifiStaIface"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1571
    return-object p0

    .line 1573
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

    .line 1577
    invoke-virtual {p0, p1}, Landroid/hardware/wifi/V1_0/IWifiStaIface$Stub;->registerService(Ljava/lang/String;)V

    .line 1578
    return-void
.end method

.method public final setHALInstrumentation()V
    .locals 0

    .line 1535
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1582
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/wifi/V1_0/IWifiStaIface$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 1564
    const/4 v0, 0x1

    return v0
.end method
