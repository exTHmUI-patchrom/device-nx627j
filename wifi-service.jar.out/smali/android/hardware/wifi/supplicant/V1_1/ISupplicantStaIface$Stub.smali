.class public abstract Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaIface$Stub;
.super Landroid/os/HwBinder;
.source "ISupplicantStaIface.java"

# interfaces
.implements Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaIface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaIface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1260
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .locals 0

    .line 1263
    return-object p0
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .locals 3

    .line 1309
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 1310
    .local v0, "info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 1311
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 1312
    const/4 v1, 0x0

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    .line 1313
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

    .line 1283
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
        0x21t
        0x75t
        0x7dt
        0xet
        0x5dt
        -0x2ct
        -0x49t
        -0x1ct
        -0x43t
        -0x68t
        0x1at
        0x4at
        0x20t
        0x53t
        0x1bt
        -0x36t
        0x3ct
        0x32t
        0x27t
        0x1at
        -0x27t
        0x77t
        0x7bt
        0x17t
        -0x49t
        0x4et
        -0x4bt
        -0x5ft
        -0x16t
        0x50t
        -0x7dt
        -0x7ct
    .end array-data

    :array_1
    .array-data 1
        0x77t
        0x52t
        -0x1ft
        -0x22t
        -0x6dt
        -0x56t
        -0xbt
        -0x2t
        -0x2dt
        0x70t
        0x11t
        -0x3et
        0x19t
        -0x54t
        0x24t
        0x70t
        0x69t
        -0xat
        -0x51t
        0x32t
        0xbt
        0x8t
        0x10t
        -0x26t
        -0x57t
        -0x7bt
        0x10t
        0x58t
        0x4at
        0x10t
        -0x19t
        -0x4ct
    .end array-data

    :array_2
    .array-data 1
        0x35t
        -0x46t
        0x7bt
        -0x33t
        -0xft
        -0x71t
        0x24t
        -0x58t
        0x66t
        -0x59t
        -0x1bt
        0x42t
        -0x6bt
        0x48t
        -0x10t
        0x67t
        0x68t
        -0x45t
        0x20t
        -0x5et
        0x57t
        -0x9t
        0x5bt
        0x10t
        -0x5dt
        -0x69t
        -0x3ct
        -0x28t
        0x25t
        -0x11t
        -0x7ct
        0x38t
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

    .line 1268
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "android.hardware.wifi.supplicant@1.1::ISupplicantStaIface"

    const-string v2, "android.hardware.wifi.supplicant@1.0::ISupplicantStaIface"

    const-string v3, "android.hardware.wifi.supplicant@1.0::ISupplicantIface"

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

    .line 1277
    const-string v0, "android.hardware.wifi.supplicant@1.1::ISupplicantStaIface"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 1
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .line 1298
    const/4 v0, 0x1

    return v0
.end method

.method public final notifySyspropsChanged()V
    .locals 0

    .line 1318
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 1319
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

    .line 1347
    const-wide/16 v0, 0x8

    const-wide/16 v2, 0x6

    const/4 v4, 0x6

    const/high16 v5, -0x80000000

    const/4 v6, 0x0

    const/4 v7, 0x1

    packed-switch p1, :pswitch_data_0

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_29

    .line 2325
    :sswitch_0
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_0

    move v6, v7

    nop

    :cond_0
    move v0, v6

    .line 2326
    .local v0, "_hidl_is_oneway":Z
    if-eqz v0, :cond_67

    .line 2327
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2328
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2329
    goto/16 :goto_29

    .line 2312
    .end local v0    # "_hidl_is_oneway":Z
    :sswitch_1
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1

    move v6, v7

    nop

    :cond_1
    move v0, v6

    .line 2313
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_2

    .line 2314
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2315
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2316
    goto/16 :goto_29

    .line 2317
    :cond_2
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2319
    invoke-virtual {p0}, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaIface$Stub;->notifySyspropsChanged()V

    .line 2320
    goto/16 :goto_29

    .line 2296
    .end local v0    # "_hidl_is_oneway":Z
    :sswitch_2
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    move v7, v6

    :goto_0
    move v0, v7

    .line 2297
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_4

    .line 2298
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2299
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2300
    goto/16 :goto_29

    .line 2301
    :cond_4
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2303
    invoke-virtual {p0}, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaIface$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object v1

    .line 2304
    .local v1, "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-virtual {p3, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2305
    invoke-virtual {v1, p3}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2306
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2307
    goto/16 :goto_29

    .line 2281
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

    .line 2282
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_6

    .line 2283
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2284
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2285
    goto/16 :goto_29

    .line 2286
    :cond_6
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2288
    invoke-virtual {p0}, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaIface$Stub;->ping()V

    .line 2289
    invoke-virtual {p3, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2290
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2291
    goto/16 :goto_29

    .line 2271
    .end local v0    # "_hidl_is_oneway":Z
    :sswitch_4
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_7

    move v6, v7

    nop

    :cond_7
    move v0, v6

    .line 2272
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_67

    .line 2273
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2274
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2275
    goto/16 :goto_29

    .line 2258
    .end local v0    # "_hidl_is_oneway":Z
    :sswitch_5
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_8

    move v6, v7

    nop

    :cond_8
    move v0, v6

    .line 2259
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_9

    .line 2260
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2261
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2262
    goto/16 :goto_29

    .line 2263
    :cond_9
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2265
    invoke-virtual {p0}, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaIface$Stub;->setHALInstrumentation()V

    .line 2266
    goto/16 :goto_29

    .line 2225
    .end local v0    # "_hidl_is_oneway":Z
    :sswitch_6
    and-int/lit8 v2, p4, 0x1

    if-eqz v2, :cond_a

    goto :goto_2

    :cond_a
    move v7, v6

    :goto_2
    move v2, v7

    .line 2226
    .local v2, "_hidl_is_oneway":Z
    if-eqz v2, :cond_b

    .line 2227
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2228
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2229
    goto/16 :goto_29

    .line 2230
    :cond_b
    const-string v3, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2232
    invoke-virtual {p0}, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaIface$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v3

    .line 2233
    .local v3, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {p3, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2235
    new-instance v4, Landroid/os/HwBlob;

    const/16 v5, 0x10

    invoke-direct {v4, v5}, Landroid/os/HwBlob;-><init>(I)V

    .line 2237
    .local v4, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 2238
    .local v5, "_hidl_vec_size":I
    invoke-virtual {v4, v0, v1, v5}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 2239
    const-wide/16 v0, 0xc

    invoke-virtual {v4, v0, v1, v6}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 2240
    new-instance v0, Landroid/os/HwBlob;

    mul-int/lit8 v1, v5, 0x20

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 2241
    .local v0, "childBlob":Landroid/os/HwBlob;
    nop

    .local v6, "_hidl_index_0":I
    :goto_3
    move v1, v6

    .end local v6    # "_hidl_index_0":I
    .local v1, "_hidl_index_0":I
    if-ge v1, v5, :cond_c

    .line 2243
    mul-int/lit8 v6, v1, 0x20

    int-to-long v6, v6

    .line 2244
    .local v6, "_hidl_array_offset_1":J
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    invoke-virtual {v0, v6, v7, v8}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 2245
    nop

    .line 2241
    .end local v6    # "_hidl_array_offset_1":J
    add-int/lit8 v6, v1, 0x1

    .end local v1    # "_hidl_index_0":I
    .local v6, "_hidl_index_0":I
    goto :goto_3

    .line 2248
    .end local v6    # "_hidl_index_0":I
    :cond_c
    const-wide/16 v6, 0x0

    invoke-virtual {v4, v6, v7, v0}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 2250
    .end local v0    # "childBlob":Landroid/os/HwBlob;
    .end local v5    # "_hidl_vec_size":I
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 2252
    .end local v4    # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2253
    goto/16 :goto_29

    .line 2209
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

    .line 2210
    .local v0, "_hidl_is_oneway":Z
    if-eqz v0, :cond_e

    .line 2211
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2212
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2213
    goto/16 :goto_29

    .line 2214
    :cond_e
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2216
    invoke-virtual {p0}, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaIface$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v1

    .line 2217
    .local v1, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {p3, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2218
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 2219
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2220
    goto/16 :goto_29

    .line 2195
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

    .line 2196
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_10

    .line 2197
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2198
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2199
    goto/16 :goto_29

    .line 2200
    :cond_10
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2202
    invoke-virtual {p3, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2203
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2204
    goto/16 :goto_29

    .line 2179
    .end local v0    # "_hidl_is_oneway":Z
    :sswitch_9
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_11

    goto :goto_6

    :cond_11
    move v7, v6

    :goto_6
    move v0, v7

    .line 2180
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_12

    .line 2181
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2182
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2183
    goto/16 :goto_29

    .line 2184
    :cond_12
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2186
    invoke-virtual {p0}, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaIface$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v1

    .line 2187
    .local v1, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p3, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2188
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 2189
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2190
    goto/16 :goto_29

    .line 2162
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :pswitch_0
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_13

    goto :goto_7

    :cond_13
    move v7, v6

    :goto_7
    move v0, v7

    .line 2163
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_14

    .line 2164
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2165
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2166
    goto/16 :goto_29

    .line 2167
    :cond_14
    const-string v1, "android.hardware.wifi.supplicant@1.1::ISupplicantStaIface"

    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2169
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaIfaceCallback;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaIfaceCallback;

    move-result-object v1

    .line 2170
    .local v1, "callback":Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaIfaceCallback;
    invoke-virtual {p0, v1}, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaIface$Stub;->registerCallback_1_1(Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaIfaceCallback;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    .line 2171
    .local v2, "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {p3, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2172
    invoke-virtual {v2, p3}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2173
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2174
    goto/16 :goto_29

    .line 2145
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "callback":Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaIfaceCallback;
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :pswitch_1
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_15

    goto :goto_8

    :cond_15
    move v7, v6

    :goto_8
    move v0, v7

    .line 2146
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_16

    .line 2147
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2148
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2149
    goto/16 :goto_29

    .line 2150
    :cond_16
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantStaIface"

    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2152
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 2153
    .local v1, "enable":Z
    invoke-virtual {p0, v1}, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaIface$Stub;->enableAutoReconnect(Z)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    .line 2154
    .restart local v2    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {p3, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2155
    invoke-virtual {v2, p3}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2156
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2157
    goto/16 :goto_29

    .line 2128
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "enable":Z
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :pswitch_2
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_17

    goto :goto_9

    :cond_17
    move v7, v6

    :goto_9
    move v0, v7

    .line 2129
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_18

    .line 2130
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2131
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2132
    goto/16 :goto_29

    .line 2133
    :cond_18
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantStaIface"

    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2135
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2136
    .local v1, "id":I
    invoke-virtual {p0, v1}, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaIface$Stub;->removeExtRadioWork(I)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    .line 2137
    .restart local v2    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {p3, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2138
    invoke-virtual {v2, p3}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2139
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2140
    goto/16 :goto_29

    .line 2105
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "id":I
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :pswitch_3
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_19

    move v6, v7

    nop

    :cond_19
    move v0, v6

    .line 2106
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_1a

    .line 2107
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2108
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2109
    goto/16 :goto_29

    .line 2110
    :cond_1a
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantStaIface"

    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2112
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2113
    .local v1, "name":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2114
    .local v2, "freqInMhz":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 2115
    .local v3, "timeoutInSec":I
    new-instance v4, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaIface$Stub$8;

    invoke-direct {v4, p0, p3}, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaIface$Stub$8;-><init>(Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaIface$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaIface$Stub;->addExtRadioWork(Ljava/lang/String;IILandroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface$addExtRadioWorkCallback;)V

    .line 2123
    goto/16 :goto_29

    .line 2088
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "freqInMhz":I
    .end local v3    # "timeoutInSec":I
    :pswitch_4
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1b

    goto :goto_a

    :cond_1b
    move v7, v6

    :goto_a
    move v0, v7

    .line 2089
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_1c

    .line 2090
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2091
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2092
    goto/16 :goto_29

    .line 2093
    :cond_1c
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantStaIface"

    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2095
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 2096
    .local v1, "useExternalSim":Z
    invoke-virtual {p0, v1}, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaIface$Stub;->setExternalSim(Z)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    .line 2097
    .local v2, "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {p3, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2098
    invoke-virtual {v2, p3}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2099
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2100
    goto/16 :goto_29

    .line 2072
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "useExternalSim":Z
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :pswitch_5
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1d

    goto :goto_b

    :cond_1d
    move v7, v6

    :goto_b
    move v0, v7

    .line 2073
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_1e

    .line 2074
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2075
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2076
    goto/16 :goto_29

    .line 2077
    :cond_1e
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantStaIface"

    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2079
    invoke-virtual {p0}, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaIface$Stub;->cancelWps()Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v1

    .line 2080
    .local v1, "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {p3, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2081
    invoke-virtual {v1, p3}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2082
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2083
    goto/16 :goto_29

    .line 2043
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :pswitch_6
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1f

    move v6, v7

    nop

    :cond_1f
    move v0, v6

    .line 2044
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_20

    .line 2045
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2046
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2047
    goto/16 :goto_29

    .line 2048
    :cond_20
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantStaIface"

    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2050
    new-array v1, v4, [B

    .line 2052
    .local v1, "bssid":[B
    invoke-virtual {p2, v2, v3}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v2

    .line 2054
    .local v2, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v5, 0x0

    .line 2055
    .local v5, "_hidl_array_offset_0":J
    invoke-virtual {v2, v5, v6, v1, v4}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 2056
    nop

    .line 2059
    .end local v2    # "_hidl_blob":Landroid/os/HwBlob;
    .end local v5    # "_hidl_array_offset_0":J
    new-instance v2, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaIface$Stub$7;

    invoke-direct {v2, p0, p3}, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaIface$Stub$7;-><init>(Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaIface$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v1, v2}, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaIface$Stub;->startWpsPinDisplay([BLandroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface$startWpsPinDisplayCallback;)V

    .line 2067
    goto/16 :goto_29

    .line 2026
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "bssid":[B
    :pswitch_7
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_21

    goto :goto_c

    :cond_21
    move v7, v6

    :goto_c
    move v0, v7

    .line 2027
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_22

    .line 2028
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2029
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2030
    goto/16 :goto_29

    .line 2031
    :cond_22
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantStaIface"

    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2033
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2034
    .local v1, "pin":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaIface$Stub;->startWpsPinKeypad(Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    .line 2035
    .local v2, "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {p3, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2036
    invoke-virtual {v2, p3}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2037
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2038
    goto/16 :goto_29

    .line 2001
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "pin":Ljava/lang/String;
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :pswitch_8
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_23

    goto :goto_d

    :cond_23
    move v7, v6

    :goto_d
    move v0, v7

    .line 2002
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_24

    .line 2003
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2004
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2005
    goto/16 :goto_29

    .line 2006
    :cond_24
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantStaIface"

    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2008
    new-array v1, v4, [B

    .line 2010
    .local v1, "bssid":[B
    invoke-virtual {p2, v2, v3}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v2

    .line 2012
    .local v2, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v7, 0x0

    .line 2013
    .local v7, "_hidl_array_offset_0":J
    invoke-virtual {v2, v7, v8, v1, v4}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 2014
    nop

    .line 2017
    .end local v2    # "_hidl_blob":Landroid/os/HwBlob;
    .end local v7    # "_hidl_array_offset_0":J
    invoke-virtual {p0, v1}, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaIface$Stub;->startWpsPbc([B)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    .line 2018
    .local v2, "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {p3, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2019
    invoke-virtual {v2, p3}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2020
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2021
    goto/16 :goto_29

    .line 1975
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "bssid":[B
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :pswitch_9
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_25

    goto :goto_e

    :cond_25
    move v7, v6

    :goto_e
    move v0, v7

    .line 1976
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_26

    .line 1977
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1978
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1979
    goto/16 :goto_29

    .line 1980
    :cond_26
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantStaIface"

    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1982
    new-array v1, v4, [B

    .line 1984
    .restart local v1    # "bssid":[B
    invoke-virtual {p2, v2, v3}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v2

    .line 1986
    .local v2, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v7, 0x0

    .line 1987
    .restart local v7    # "_hidl_array_offset_0":J
    invoke-virtual {v2, v7, v8, v1, v4}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 1988
    nop

    .line 1991
    .end local v2    # "_hidl_blob":Landroid/os/HwBlob;
    .end local v7    # "_hidl_array_offset_0":J
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1992
    .local v2, "pin":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaIface$Stub;->startWpsRegistrar([BLjava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v3

    .line 1993
    .local v3, "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {p3, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1994
    invoke-virtual {v3, p3}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1995
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1996
    goto/16 :goto_29

    .line 1950
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "bssid":[B
    .end local v2    # "pin":Ljava/lang/String;
    .end local v3    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :pswitch_a
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_27

    goto :goto_f

    :cond_27
    move v7, v6

    :goto_f
    move v0, v7

    .line 1951
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_28

    .line 1952
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1953
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1954
    goto/16 :goto_29

    .line 1955
    :cond_28
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantStaIface"

    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1957
    const/4 v1, 0x2

    new-array v2, v1, [B

    .line 1959
    .local v2, "code":[B
    const-wide/16 v3, 0x2

    invoke-virtual {p2, v3, v4}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v3

    .line 1961
    .local v3, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v4, 0x0

    .line 1962
    .local v4, "_hidl_array_offset_0":J
    invoke-virtual {v3, v4, v5, v2, v1}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 1963
    nop

    .line 1966
    .end local v3    # "_hidl_blob":Landroid/os/HwBlob;
    .end local v4    # "_hidl_array_offset_0":J
    invoke-virtual {p0, v2}, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaIface$Stub;->setCountryCode([B)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v1

    .line 1967
    .local v1, "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {p3, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1968
    invoke-virtual {v1, p3}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1969
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1970
    goto/16 :goto_29

    .line 1933
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .end local v2    # "code":[B
    :pswitch_b
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_29

    goto :goto_10

    :cond_29
    move v7, v6

    :goto_10
    move v0, v7

    .line 1934
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_2a

    .line 1935
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1936
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1937
    goto/16 :goto_29

    .line 1938
    :cond_2a
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantStaIface"

    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1940
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 1941
    .local v1, "enable":Z
    invoke-virtual {p0, v1}, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaIface$Stub;->setSuspendModeEnabled(Z)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    .line 1942
    .local v2, "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {p3, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1943
    invoke-virtual {v2, p3}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1944
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1945
    goto/16 :goto_29

    .line 1916
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "enable":Z
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :pswitch_c
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_2b

    goto :goto_11

    :cond_2b
    move v7, v6

    :goto_11
    move v0, v7

    .line 1917
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_2c

    .line 1918
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1919
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1920
    goto/16 :goto_29

    .line 1921
    :cond_2c
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantStaIface"

    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1923
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 1924
    .restart local v1    # "enable":Z
    invoke-virtual {p0, v1}, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaIface$Stub;->setBtCoexistenceScanModeEnabled(Z)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    .line 1925
    .restart local v2    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {p3, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1926
    invoke-virtual {v2, p3}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1927
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1928
    goto/16 :goto_29

    .line 1899
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "enable":Z
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :pswitch_d
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_2d

    goto :goto_12

    :cond_2d
    move v7, v6

    :goto_12
    move v0, v7

    .line 1900
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_2e

    .line 1901
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1902
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1903
    goto/16 :goto_29

    .line 1904
    :cond_2e
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantStaIface"

    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1906
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8()B

    move-result v1

    .line 1907
    .local v1, "mode":B
    invoke-virtual {p0, v1}, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaIface$Stub;->setBtCoexistenceMode(B)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    .line 1908
    .restart local v2    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {p3, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1909
    invoke-virtual {v2, p3}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1910
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1911
    goto/16 :goto_29

    .line 1882
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "mode":B
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :pswitch_e
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_2f

    goto :goto_13

    :cond_2f
    move v7, v6

    :goto_13
    move v0, v7

    .line 1883
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_30

    .line 1884
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1885
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1886
    goto/16 :goto_29

    .line 1887
    :cond_30
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantStaIface"

    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1889
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8()B

    move-result v1

    .line 1890
    .local v1, "type":B
    invoke-virtual {p0, v1}, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaIface$Stub;->removeRxFilter(B)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    .line 1891
    .restart local v2    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {p3, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1892
    invoke-virtual {v2, p3}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1893
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1894
    goto/16 :goto_29

    .line 1865
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":B
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :pswitch_f
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_31

    goto :goto_14

    :cond_31
    move v7, v6

    :goto_14
    move v0, v7

    .line 1866
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_32

    .line 1867
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1868
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1869
    goto/16 :goto_29

    .line 1870
    :cond_32
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantStaIface"

    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1872
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8()B

    move-result v1

    .line 1873
    .restart local v1    # "type":B
    invoke-virtual {p0, v1}, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaIface$Stub;->addRxFilter(B)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    .line 1874
    .restart local v2    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {p3, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1875
    invoke-virtual {v2, p3}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1876
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1877
    goto/16 :goto_29

    .line 1849
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":B
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :pswitch_10
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_33

    goto :goto_15

    :cond_33
    move v7, v6

    :goto_15
    move v0, v7

    .line 1850
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_34

    .line 1851
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1852
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1853
    goto/16 :goto_29

    .line 1854
    :cond_34
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantStaIface"

    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1856
    invoke-virtual {p0}, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaIface$Stub;->stopRxFilter()Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v1

    .line 1857
    .local v1, "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {p3, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1858
    invoke-virtual {v1, p3}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1859
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1860
    goto/16 :goto_29

    .line 1833
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :pswitch_11
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_35

    goto :goto_16

    :cond_35
    move v7, v6

    :goto_16
    move v0, v7

    .line 1834
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_36

    .line 1835
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1836
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1837
    goto/16 :goto_29

    .line 1838
    :cond_36
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantStaIface"

    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1840
    invoke-virtual {p0}, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaIface$Stub;->startRxFilter()Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v1

    .line 1841
    .restart local v1    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {p3, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1842
    invoke-virtual {v1, p3}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1843
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1844
    goto/16 :goto_29

    .line 1805
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :pswitch_12
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_37

    move v6, v7

    nop

    :cond_37
    move v0, v6

    .line 1806
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_38

    .line 1807
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1808
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1809
    goto/16 :goto_29

    .line 1810
    :cond_38
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantStaIface"

    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1812
    new-instance v1, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaIface$Stub$6;

    invoke-direct {v1, p0, p3}, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaIface$Stub$6;-><init>(Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaIface$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v1}, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaIface$Stub;->getMacAddress(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface$getMacAddressCallback;)V

    .line 1828
    goto/16 :goto_29

    .line 1779
    .end local v0    # "_hidl_is_oneway":Z
    :pswitch_13
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_39

    goto :goto_17

    :cond_39
    move v7, v6

    :goto_17
    move v0, v7

    .line 1780
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_3a

    .line 1781
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1782
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1783
    goto/16 :goto_29

    .line 1784
    :cond_3a
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantStaIface"

    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1786
    new-array v1, v4, [B

    .line 1788
    .local v1, "macAddress":[B
    invoke-virtual {p2, v2, v3}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v2

    .line 1790
    .local v2, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v7, 0x0

    .line 1791
    .restart local v7    # "_hidl_array_offset_0":J
    invoke-virtual {v2, v7, v8, v1, v4}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 1792
    nop

    .line 1795
    .end local v2    # "_hidl_blob":Landroid/os/HwBlob;
    .end local v7    # "_hidl_array_offset_0":J
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1796
    .local v2, "fileName":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaIface$Stub;->initiateHs20IconQuery([BLjava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v3

    .line 1797
    .local v3, "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {p3, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1798
    invoke-virtual {v3, p3}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1799
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1800
    goto/16 :goto_29

    .line 1752
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "macAddress":[B
    .end local v2    # "fileName":Ljava/lang/String;
    .end local v3    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :pswitch_14
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_3b

    goto :goto_18

    :cond_3b
    move v7, v6

    :goto_18
    move v0, v7

    .line 1753
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_3c

    .line 1754
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1755
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1756
    goto/16 :goto_29

    .line 1757
    :cond_3c
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantStaIface"

    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1759
    new-array v1, v4, [B

    .line 1761
    .restart local v1    # "macAddress":[B
    invoke-virtual {p2, v2, v3}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v2

    .line 1763
    .local v2, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v7, 0x0

    .line 1764
    .restart local v7    # "_hidl_array_offset_0":J
    invoke-virtual {v2, v7, v8, v1, v4}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 1765
    nop

    .line 1768
    .end local v2    # "_hidl_blob":Landroid/os/HwBlob;
    .end local v7    # "_hidl_array_offset_0":J
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 1769
    .local v2, "infoElements":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Short;>;"
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v3

    .line 1770
    .local v3, "subTypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0, v1, v2, v3}, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaIface$Stub;->initiateAnqpQuery([BLjava/util/ArrayList;Ljava/util/ArrayList;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v4

    .line 1771
    .local v4, "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {p3, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1772
    invoke-virtual {v4, p3}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1773
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1774
    goto/16 :goto_29

    .line 1727
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "macAddress":[B
    .end local v2    # "infoElements":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Short;>;"
    .end local v3    # "subTypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v4    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :pswitch_15
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_3d

    goto :goto_19

    :cond_3d
    move v7, v6

    :goto_19
    move v0, v7

    .line 1728
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_3e

    .line 1729
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1730
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1731
    goto/16 :goto_29

    .line 1732
    :cond_3e
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantStaIface"

    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1734
    new-array v1, v4, [B

    .line 1736
    .restart local v1    # "macAddress":[B
    invoke-virtual {p2, v2, v3}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v2

    .line 1738
    .local v2, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v7, 0x0

    .line 1739
    .restart local v7    # "_hidl_array_offset_0":J
    invoke-virtual {v2, v7, v8, v1, v4}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 1740
    nop

    .line 1743
    .end local v2    # "_hidl_blob":Landroid/os/HwBlob;
    .end local v7    # "_hidl_array_offset_0":J
    invoke-virtual {p0, v1}, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaIface$Stub;->initiateTdlsTeardown([B)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    .line 1744
    .local v2, "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {p3, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1745
    invoke-virtual {v2, p3}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1746
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1747
    goto/16 :goto_29

    .line 1702
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "macAddress":[B
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :pswitch_16
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_3f

    goto :goto_1a

    :cond_3f
    move v7, v6

    :goto_1a
    move v0, v7

    .line 1703
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_40

    .line 1704
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1705
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1706
    goto/16 :goto_29

    .line 1707
    :cond_40
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantStaIface"

    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1709
    new-array v1, v4, [B

    .line 1711
    .restart local v1    # "macAddress":[B
    invoke-virtual {p2, v2, v3}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v2

    .line 1713
    .local v2, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v7, 0x0

    .line 1714
    .restart local v7    # "_hidl_array_offset_0":J
    invoke-virtual {v2, v7, v8, v1, v4}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 1715
    nop

    .line 1718
    .end local v2    # "_hidl_blob":Landroid/os/HwBlob;
    .end local v7    # "_hidl_array_offset_0":J
    invoke-virtual {p0, v1}, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaIface$Stub;->initiateTdlsSetup([B)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    .line 1719
    .local v2, "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {p3, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1720
    invoke-virtual {v2, p3}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1721
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1722
    goto/16 :goto_29

    .line 1677
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "macAddress":[B
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :pswitch_17
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_41

    goto :goto_1b

    :cond_41
    move v7, v6

    :goto_1b
    move v0, v7

    .line 1678
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_42

    .line 1679
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1680
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1681
    goto/16 :goto_29

    .line 1682
    :cond_42
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantStaIface"

    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1684
    new-array v1, v4, [B

    .line 1686
    .restart local v1    # "macAddress":[B
    invoke-virtual {p2, v2, v3}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v2

    .line 1688
    .local v2, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v7, 0x0

    .line 1689
    .restart local v7    # "_hidl_array_offset_0":J
    invoke-virtual {v2, v7, v8, v1, v4}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 1690
    nop

    .line 1693
    .end local v2    # "_hidl_blob":Landroid/os/HwBlob;
    .end local v7    # "_hidl_array_offset_0":J
    invoke-virtual {p0, v1}, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaIface$Stub;->initiateTdlsDiscover([B)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    .line 1694
    .local v2, "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {p3, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1695
    invoke-virtual {v2, p3}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1696
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1697
    goto/16 :goto_29

    .line 1660
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "macAddress":[B
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :pswitch_18
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_43

    goto :goto_1c

    :cond_43
    move v7, v6

    :goto_1c
    move v0, v7

    .line 1661
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_44

    .line 1662
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1663
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1664
    goto/16 :goto_29

    .line 1665
    :cond_44
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantStaIface"

    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1667
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 1668
    .local v1, "enable":Z
    invoke-virtual {p0, v1}, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaIface$Stub;->setPowerSave(Z)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    .line 1669
    .restart local v2    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {p3, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1670
    invoke-virtual {v2, p3}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1671
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1672
    goto/16 :goto_29

    .line 1644
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "enable":Z
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :pswitch_19
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_45

    goto :goto_1d

    :cond_45
    move v7, v6

    :goto_1d
    move v0, v7

    .line 1645
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_46

    .line 1646
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1647
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1648
    goto/16 :goto_29

    .line 1649
    :cond_46
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantStaIface"

    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1651
    invoke-virtual {p0}, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaIface$Stub;->disconnect()Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v1

    .line 1652
    .local v1, "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {p3, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1653
    invoke-virtual {v1, p3}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1654
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1655
    goto/16 :goto_29

    .line 1628
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :pswitch_1a
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_47

    goto :goto_1e

    :cond_47
    move v7, v6

    :goto_1e
    move v0, v7

    .line 1629
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_48

    .line 1630
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1631
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1632
    goto/16 :goto_29

    .line 1633
    :cond_48
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantStaIface"

    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1635
    invoke-virtual {p0}, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaIface$Stub;->reconnect()Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v1

    .line 1636
    .restart local v1    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {p3, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1637
    invoke-virtual {v1, p3}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1638
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1639
    goto/16 :goto_29

    .line 1612
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :pswitch_1b
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_49

    goto :goto_1f

    :cond_49
    move v7, v6

    :goto_1f
    move v0, v7

    .line 1613
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_4a

    .line 1614
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1615
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1616
    goto/16 :goto_29

    .line 1617
    :cond_4a
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantStaIface"

    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1619
    invoke-virtual {p0}, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaIface$Stub;->reassociate()Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v1

    .line 1620
    .restart local v1    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {p3, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1621
    invoke-virtual {v1, p3}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1622
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1623
    goto/16 :goto_29

    .line 1595
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :pswitch_1c
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_4b

    goto :goto_20

    :cond_4b
    move v7, v6

    :goto_20
    move v0, v7

    .line 1596
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_4c

    .line 1597
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1598
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1599
    goto/16 :goto_29

    .line 1600
    :cond_4c
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantStaIface"

    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1602
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback;

    move-result-object v1

    .line 1603
    .local v1, "callback":Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback;
    invoke-virtual {p0, v1}, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaIface$Stub;->registerCallback(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    .line 1604
    .restart local v2    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {p3, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1605
    invoke-virtual {v2, p3}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1606
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1607
    goto/16 :goto_29

    .line 1578
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "callback":Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback;
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :pswitch_1d
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_4d

    goto :goto_21

    :cond_4d
    move v7, v6

    :goto_21
    move v0, v7

    .line 1579
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_4e

    .line 1580
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1581
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1582
    goto/16 :goto_29

    .line 1583
    :cond_4e
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantIface"

    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1585
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    move-result v1

    .line 1586
    .local v1, "configMethods":S
    invoke-virtual {p0, v1}, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaIface$Stub;->setWpsConfigMethods(S)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    .line 1587
    .restart local v2    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {p3, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1588
    invoke-virtual {v2, p3}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1589
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1590
    goto/16 :goto_29

    .line 1561
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "configMethods":S
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :pswitch_1e
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_4f

    goto :goto_22

    :cond_4f
    move v7, v6

    :goto_22
    move v0, v7

    .line 1562
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_50

    .line 1563
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1564
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1565
    goto/16 :goto_29

    .line 1566
    :cond_50
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantIface"

    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1568
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1569
    .local v1, "serialNumber":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaIface$Stub;->setWpsSerialNumber(Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    .line 1570
    .restart local v2    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {p3, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1571
    invoke-virtual {v2, p3}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1572
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1573
    goto/16 :goto_29

    .line 1544
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serialNumber":Ljava/lang/String;
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :pswitch_1f
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_51

    goto :goto_23

    :cond_51
    move v7, v6

    :goto_23
    move v0, v7

    .line 1545
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_52

    .line 1546
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1547
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1548
    goto/16 :goto_29

    .line 1549
    :cond_52
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantIface"

    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1551
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1552
    .local v1, "modelNumber":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaIface$Stub;->setWpsModelNumber(Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    .line 1553
    .restart local v2    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {p3, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1554
    invoke-virtual {v2, p3}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1555
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1556
    goto/16 :goto_29

    .line 1527
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "modelNumber":Ljava/lang/String;
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :pswitch_20
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_53

    goto :goto_24

    :cond_53
    move v7, v6

    :goto_24
    move v0, v7

    .line 1528
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_54

    .line 1529
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1530
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1531
    goto/16 :goto_29

    .line 1532
    :cond_54
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantIface"

    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1534
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1535
    .local v1, "modelName":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaIface$Stub;->setWpsModelName(Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    .line 1536
    .restart local v2    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {p3, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1537
    invoke-virtual {v2, p3}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1538
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1539
    goto/16 :goto_29

    .line 1510
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "modelName":Ljava/lang/String;
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :pswitch_21
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_55

    goto :goto_25

    :cond_55
    move v7, v6

    :goto_25
    move v0, v7

    .line 1511
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_56

    .line 1512
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1513
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1514
    goto/16 :goto_29

    .line 1515
    :cond_56
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantIface"

    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1517
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1518
    .local v1, "manufacturer":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaIface$Stub;->setWpsManufacturer(Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    .line 1519
    .restart local v2    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {p3, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1520
    invoke-virtual {v2, p3}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1521
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1522
    goto/16 :goto_29

    .line 1485
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "manufacturer":Ljava/lang/String;
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :pswitch_22
    and-int/lit8 v2, p4, 0x1

    if-eqz v2, :cond_57

    goto :goto_26

    :cond_57
    move v7, v6

    :goto_26
    move v2, v7

    .line 1486
    .local v2, "_hidl_is_oneway":Z
    if-eqz v2, :cond_58

    .line 1487
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1488
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1489
    goto/16 :goto_29

    .line 1490
    :cond_58
    const-string v3, "android.hardware.wifi.supplicant@1.0::ISupplicantIface"

    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1492
    const/16 v3, 0x8

    new-array v4, v3, [B

    .line 1494
    .local v4, "type":[B
    invoke-virtual {p2, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 1496
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v7, 0x0

    .line 1497
    .restart local v7    # "_hidl_array_offset_0":J
    invoke-virtual {v0, v7, v8, v4, v3}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 1498
    nop

    .line 1501
    .end local v0    # "_hidl_blob":Landroid/os/HwBlob;
    .end local v7    # "_hidl_array_offset_0":J
    invoke-virtual {p0, v4}, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaIface$Stub;->setWpsDeviceType([B)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v0

    .line 1502
    .local v0, "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {p3, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1503
    invoke-virtual {v0, p3}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1504
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1505
    goto/16 :goto_29

    .line 1468
    .end local v0    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .end local v2    # "_hidl_is_oneway":Z
    .end local v4    # "type":[B
    :pswitch_23
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_59

    goto :goto_27

    :cond_59
    move v7, v6

    :goto_27
    move v0, v7

    .line 1469
    .local v0, "_hidl_is_oneway":Z
    if-eqz v0, :cond_5a

    .line 1470
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1471
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1472
    goto/16 :goto_29

    .line 1473
    :cond_5a
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantIface"

    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1475
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1476
    .local v1, "name":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaIface$Stub;->setWpsDeviceName(Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    .line 1477
    .local v2, "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {p3, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1478
    invoke-virtual {v2, p3}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1479
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1480
    goto/16 :goto_29

    .line 1448
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :pswitch_24
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_5b

    move v6, v7

    nop

    :cond_5b
    move v0, v6

    .line 1449
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_5c

    .line 1450
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1451
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1452
    goto/16 :goto_29

    .line 1453
    :cond_5c
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantIface"

    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1455
    new-instance v1, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaIface$Stub$5;

    invoke-direct {v1, p0, p3}, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaIface$Stub$5;-><init>(Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaIface$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v1}, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaIface$Stub;->listNetworks(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantIface$listNetworksCallback;)V

    .line 1463
    goto/16 :goto_29

    .line 1427
    .end local v0    # "_hidl_is_oneway":Z
    :pswitch_25
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_5d

    move v6, v7

    nop

    :cond_5d
    move v0, v6

    .line 1428
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_5e

    .line 1429
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1430
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1431
    goto/16 :goto_29

    .line 1432
    :cond_5e
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantIface"

    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1434
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1435
    .local v1, "id":I
    new-instance v2, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaIface$Stub$4;

    invoke-direct {v2, p0, p3}, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaIface$Stub$4;-><init>(Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaIface$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v1, v2}, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaIface$Stub;->getNetwork(ILandroid/hardware/wifi/supplicant/V1_0/ISupplicantIface$getNetworkCallback;)V

    .line 1443
    goto/16 :goto_29

    .line 1410
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "id":I
    :pswitch_26
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_5f

    goto :goto_28

    :cond_5f
    move v7, v6

    :goto_28
    move v0, v7

    .line 1411
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_60

    .line 1412
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1413
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1414
    goto/16 :goto_29

    .line 1415
    :cond_60
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantIface"

    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1417
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1418
    .restart local v1    # "id":I
    invoke-virtual {p0, v1}, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaIface$Stub;->removeNetwork(I)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    .line 1419
    .restart local v2    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {p3, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1420
    invoke-virtual {v2, p3}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1421
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1422
    goto :goto_29

    .line 1390
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "id":I
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :pswitch_27
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_61

    move v6, v7

    nop

    :cond_61
    move v0, v6

    .line 1391
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_62

    .line 1392
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1393
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1394
    goto :goto_29

    .line 1395
    :cond_62
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantIface"

    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1397
    new-instance v1, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaIface$Stub$3;

    invoke-direct {v1, p0, p3}, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaIface$Stub$3;-><init>(Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaIface$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v1}, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaIface$Stub;->addNetwork(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantIface$addNetworkCallback;)V

    .line 1405
    goto :goto_29

    .line 1370
    .end local v0    # "_hidl_is_oneway":Z
    :pswitch_28
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_63

    move v6, v7

    nop

    :cond_63
    move v0, v6

    .line 1371
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_64

    .line 1372
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1373
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1374
    goto :goto_29

    .line 1375
    :cond_64
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantIface"

    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1377
    new-instance v1, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaIface$Stub$2;

    invoke-direct {v1, p0, p3}, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaIface$Stub$2;-><init>(Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaIface$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v1}, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaIface$Stub;->getType(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantIface$getTypeCallback;)V

    .line 1385
    goto :goto_29

    .line 1350
    .end local v0    # "_hidl_is_oneway":Z
    :pswitch_29
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_65

    move v6, v7

    nop

    :cond_65
    move v0, v6

    .line 1351
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_66

    .line 1352
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1353
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1354
    goto :goto_29

    .line 1355
    :cond_66
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantIface"

    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1357
    new-instance v1, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaIface$Stub$1;

    invoke-direct {v1, p0, p3}, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaIface$Stub$1;-><init>(Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaIface$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v1}, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaIface$Stub;->getName(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantIface$getNameCallback;)V

    .line 1365
    nop

    .line 2334
    .end local v0    # "_hidl_is_oneway":Z
    :cond_67
    :goto_29
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
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

    .line 1303
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 1
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 1329
    const-string v0, "android.hardware.wifi.supplicant@1.1::ISupplicantStaIface"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1330
    return-object p0

    .line 1332
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

    .line 1336
    invoke-virtual {p0, p1}, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaIface$Stub;->registerService(Ljava/lang/String;)V

    .line 1337
    return-void
.end method

.method public final setHALInstrumentation()V
    .locals 0

    .line 1294
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1341
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaIface$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 1323
    const/4 v0, 0x1

    return v0
.end method
