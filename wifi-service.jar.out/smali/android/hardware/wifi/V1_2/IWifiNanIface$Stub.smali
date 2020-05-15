.class public abstract Landroid/hardware/wifi/V1_2/IWifiNanIface$Stub;
.super Landroid/os/HwBinder;
.source "IWifiNanIface.java"

# interfaces
.implements Landroid/hardware/wifi/V1_2/IWifiNanIface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/wifi/V1_2/IWifiNanIface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 766
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .locals 0

    .line 769
    return-object p0
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .locals 3

    .line 815
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 816
    .local v0, "info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 817
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 818
    const/4 v1, 0x0

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    .line 819
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

    .line 789
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
        -0x74t
        0x7et
        -0xdt
        0x2ft
        -0x39t
        -0x73t
        0x5et
        -0x3at
        -0x1at
        -0x6bt
        0x6dt
        -0x1dt
        0x78t
        0x4ct
        -0x3et
        -0x3at
        -0xct
        0x26t
        0x14t
        -0x4bt
        0x27t
        0x2dt
        0x2et
        0x46t
        0x1ft
        0x6dt
        0x60t
        0x53t
        0x4bt
        -0x5dt
        -0x72t
        -0x3et
    .end array-data

    :array_1
    .array-data 1
        -0x46t
        0x5at
        -0x59t
        0x4ft
        0x1bt
        -0x59t
        0x14t
        -0x10t
        0x9t
        0x38t
        0x64t
        0x22t
        0x79t
        0x23t
        0x49t
        0x28t
        0x8t
        0x79t
        0x5bt
        -0x26t
        0x61t
        -0x67t
        -0x3ct
        -0x16t
        0x8t
        -0x6ft
        0x32t
        0x2dt
        0x27t
        -0x8t
        -0x37t
        0x31t
    .end array-data

    :array_2
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

    .line 774
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "android.hardware.wifi@1.2::IWifiNanIface"

    const-string v2, "android.hardware.wifi@1.0::IWifiNanIface"

    const-string v3, "android.hardware.wifi@1.0::IWifiIface"

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

    .line 783
    const-string v0, "android.hardware.wifi@1.2::IWifiNanIface"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 1
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .line 804
    const/4 v0, 0x1

    return v0
.end method

.method public final notifySyspropsChanged()V
    .locals 0

    .line 824
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 825
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

    .line 853
    const/high16 v0, -0x80000000

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_19

    .line 1375
    :sswitch_0
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_0

    move v1, v2

    nop

    .line 1376
    .local v1, "_hidl_is_oneway":Z
    :cond_0
    if-eqz v1, :cond_3b

    .line 1377
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1378
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1379
    goto/16 :goto_19

    .line 1362
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_1
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1

    move v1, v2

    nop

    .line 1363
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1
    if-eq v1, v2, :cond_2

    .line 1364
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1365
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1366
    goto/16 :goto_19

    .line 1367
    :cond_2
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1369
    invoke-virtual {p0}, Landroid/hardware/wifi/V1_2/IWifiNanIface$Stub;->notifySyspropsChanged()V

    .line 1370
    goto/16 :goto_19

    .line 1346
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_2
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_3
    move v2, v1

    .line 1347
    .local v2, "_hidl_is_oneway":Z
    :goto_0
    if-eqz v2, :cond_4

    .line 1348
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1349
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1350
    goto/16 :goto_19

    .line 1351
    :cond_4
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1353
    invoke-virtual {p0}, Landroid/hardware/wifi/V1_2/IWifiNanIface$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    .line 1354
    .local v0, "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1355
    invoke-virtual {v0, p3}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1356
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1357
    goto/16 :goto_19

    .line 1331
    .end local v0    # "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_3
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_5

    goto :goto_1

    :cond_5
    move v2, v1

    .line 1332
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_1
    if-eqz v2, :cond_6

    .line 1333
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1334
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1335
    goto/16 :goto_19

    .line 1336
    :cond_6
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1338
    invoke-virtual {p0}, Landroid/hardware/wifi/V1_2/IWifiNanIface$Stub;->ping()V

    .line 1339
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1340
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1341
    goto/16 :goto_19

    .line 1321
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_4
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_7

    move v1, v2

    nop

    .line 1322
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_7
    if-eqz v1, :cond_3b

    .line 1323
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1324
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1325
    goto/16 :goto_19

    .line 1308
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_5
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_8

    move v1, v2

    nop

    .line 1309
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_8
    if-eq v1, v2, :cond_9

    .line 1310
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1311
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1312
    goto/16 :goto_19

    .line 1313
    :cond_9
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1315
    invoke-virtual {p0}, Landroid/hardware/wifi/V1_2/IWifiNanIface$Stub;->setHALInstrumentation()V

    .line 1316
    goto/16 :goto_19

    .line 1275
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_6
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_a

    goto :goto_2

    :cond_a
    move v2, v1

    .line 1276
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_2
    if-eqz v2, :cond_b

    .line 1277
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1278
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1279
    goto/16 :goto_19

    .line 1280
    :cond_b
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1282
    invoke-virtual {p0}, Landroid/hardware/wifi/V1_2/IWifiNanIface$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 1283
    .local v0, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1285
    new-instance v3, Landroid/os/HwBlob;

    const/16 v4, 0x10

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 1287
    .local v3, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1288
    .local v4, "_hidl_vec_size":I
    const-wide/16 v5, 0x8

    invoke-virtual {v3, v5, v6, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 1289
    const-wide/16 v5, 0xc

    invoke-virtual {v3, v5, v6, v1}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 1290
    new-instance v5, Landroid/os/HwBlob;

    mul-int/lit8 v6, v4, 0x20

    invoke-direct {v5, v6}, Landroid/os/HwBlob;-><init>(I)V

    .line 1291
    .local v5, "childBlob":Landroid/os/HwBlob;
    nop

    .local v1, "_hidl_index_0":I
    :goto_3
    if-ge v1, v4, :cond_c

    .line 1293
    mul-int/lit8 v6, v1, 0x20

    int-to-long v6, v6

    .line 1294
    .local v6, "_hidl_array_offset_1":J
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 1295
    nop

    .line 1291
    .end local v6    # "_hidl_array_offset_1":J
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1298
    .end local v1    # "_hidl_index_0":I
    :cond_c
    const-wide/16 v6, 0x0

    invoke-virtual {v3, v6, v7, v5}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 1300
    .end local v4    # "_hidl_vec_size":I
    .end local v5    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 1302
    .end local v3    # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1303
    goto/16 :goto_19

    .line 1259
    .end local v0    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_7
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_d

    goto :goto_4

    :cond_d
    move v2, v1

    .line 1260
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_4
    if-eqz v2, :cond_e

    .line 1261
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1262
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1263
    goto/16 :goto_19

    .line 1264
    :cond_e
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1266
    invoke-virtual {p0}, Landroid/hardware/wifi/V1_2/IWifiNanIface$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 1267
    .local v0, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1268
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1269
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1270
    goto/16 :goto_19

    .line 1245
    .end local v0    # "_hidl_out_descriptor":Ljava/lang/String;
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_8
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_f

    goto :goto_5

    :cond_f
    move v2, v1

    .line 1246
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_5
    if-eqz v2, :cond_10

    .line 1247
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1248
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1249
    goto/16 :goto_19

    .line 1250
    :cond_10
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1252
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1253
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1254
    goto/16 :goto_19

    .line 1229
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_9
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_11

    goto :goto_6

    :cond_11
    move v2, v1

    .line 1230
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_6
    if-eqz v2, :cond_12

    .line 1231
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1232
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1233
    goto/16 :goto_19

    .line 1234
    :cond_12
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1236
    invoke-virtual {p0}, Landroid/hardware/wifi/V1_2/IWifiNanIface$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 1237
    .local v0, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1238
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 1239
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1240
    goto/16 :goto_19

    .line 1208
    .end local v0    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_0
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_13

    goto :goto_7

    :cond_13
    move v2, v1

    .line 1209
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_7
    if-eqz v2, :cond_14

    .line 1210
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1211
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1212
    goto/16 :goto_19

    .line 1213
    :cond_14
    const-string v0, "android.hardware.wifi@1.2::IWifiNanIface"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1215
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    move-result v0

    .line 1216
    .local v0, "cmdId":S
    new-instance v3, Landroid/hardware/wifi/V1_0/NanConfigRequest;

    invoke-direct {v3}, Landroid/hardware/wifi/V1_0/NanConfigRequest;-><init>()V

    .line 1217
    .local v3, "msg1":Landroid/hardware/wifi/V1_0/NanConfigRequest;
    invoke-virtual {v3, p2}, Landroid/hardware/wifi/V1_0/NanConfigRequest;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1218
    new-instance v4, Landroid/hardware/wifi/V1_2/NanConfigRequestSupplemental;

    invoke-direct {v4}, Landroid/hardware/wifi/V1_2/NanConfigRequestSupplemental;-><init>()V

    .line 1219
    .local v4, "msg2":Landroid/hardware/wifi/V1_2/NanConfigRequestSupplemental;
    invoke-virtual {v4, p2}, Landroid/hardware/wifi/V1_2/NanConfigRequestSupplemental;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1220
    invoke-virtual {p0, v0, v3, v4}, Landroid/hardware/wifi/V1_2/IWifiNanIface$Stub;->configRequest_1_2(SLandroid/hardware/wifi/V1_0/NanConfigRequest;Landroid/hardware/wifi/V1_2/NanConfigRequestSupplemental;)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v5

    .line 1221
    .local v5, "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1222
    invoke-virtual {v5, p3}, Landroid/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1223
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1224
    goto/16 :goto_19

    .line 1187
    .end local v0    # "cmdId":S
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "msg1":Landroid/hardware/wifi/V1_0/NanConfigRequest;
    .end local v4    # "msg2":Landroid/hardware/wifi/V1_2/NanConfigRequestSupplemental;
    .end local v5    # "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    :pswitch_1
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_15

    goto :goto_8

    :cond_15
    move v2, v1

    .line 1188
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_8
    if-eqz v2, :cond_16

    .line 1189
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1190
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1191
    goto/16 :goto_19

    .line 1192
    :cond_16
    const-string v0, "android.hardware.wifi@1.2::IWifiNanIface"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1194
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    move-result v0

    .line 1195
    .restart local v0    # "cmdId":S
    new-instance v3, Landroid/hardware/wifi/V1_0/NanEnableRequest;

    invoke-direct {v3}, Landroid/hardware/wifi/V1_0/NanEnableRequest;-><init>()V

    .line 1196
    .local v3, "msg1":Landroid/hardware/wifi/V1_0/NanEnableRequest;
    invoke-virtual {v3, p2}, Landroid/hardware/wifi/V1_0/NanEnableRequest;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1197
    new-instance v4, Landroid/hardware/wifi/V1_2/NanConfigRequestSupplemental;

    invoke-direct {v4}, Landroid/hardware/wifi/V1_2/NanConfigRequestSupplemental;-><init>()V

    .line 1198
    .restart local v4    # "msg2":Landroid/hardware/wifi/V1_2/NanConfigRequestSupplemental;
    invoke-virtual {v4, p2}, Landroid/hardware/wifi/V1_2/NanConfigRequestSupplemental;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1199
    invoke-virtual {p0, v0, v3, v4}, Landroid/hardware/wifi/V1_2/IWifiNanIface$Stub;->enableRequest_1_2(SLandroid/hardware/wifi/V1_0/NanEnableRequest;Landroid/hardware/wifi/V1_2/NanConfigRequestSupplemental;)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v5

    .line 1200
    .restart local v5    # "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1201
    invoke-virtual {v5, p3}, Landroid/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1202
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1203
    goto/16 :goto_19

    .line 1170
    .end local v0    # "cmdId":S
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "msg1":Landroid/hardware/wifi/V1_0/NanEnableRequest;
    .end local v4    # "msg2":Landroid/hardware/wifi/V1_2/NanConfigRequestSupplemental;
    .end local v5    # "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    :pswitch_2
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_17

    goto :goto_9

    :cond_17
    move v2, v1

    .line 1171
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_9
    if-eqz v2, :cond_18

    .line 1172
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1173
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1174
    goto/16 :goto_19

    .line 1175
    :cond_18
    const-string v0, "android.hardware.wifi@1.2::IWifiNanIface"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1177
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/wifi/V1_2/IWifiNanIfaceEventCallback;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/wifi/V1_2/IWifiNanIfaceEventCallback;

    move-result-object v0

    .line 1178
    .local v0, "callback":Landroid/hardware/wifi/V1_2/IWifiNanIfaceEventCallback;
    invoke-virtual {p0, v0}, Landroid/hardware/wifi/V1_2/IWifiNanIface$Stub;->registerEventCallback_1_2(Landroid/hardware/wifi/V1_2/IWifiNanIfaceEventCallback;)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v3

    .line 1179
    .local v3, "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1180
    invoke-virtual {v3, p3}, Landroid/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1181
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1182
    goto/16 :goto_19

    .line 1152
    .end local v0    # "callback":Landroid/hardware/wifi/V1_2/IWifiNanIfaceEventCallback;
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    :pswitch_3
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_19

    goto :goto_a

    :cond_19
    move v2, v1

    .line 1153
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_a
    if-eqz v2, :cond_1a

    .line 1154
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1155
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1156
    goto/16 :goto_19

    .line 1157
    :cond_1a
    const-string v0, "android.hardware.wifi@1.0::IWifiNanIface"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1159
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    move-result v0

    .line 1160
    .local v0, "cmdId":S
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 1161
    .local v3, "ndpInstanceId":I
    invoke-virtual {p0, v0, v3}, Landroid/hardware/wifi/V1_2/IWifiNanIface$Stub;->terminateDataPathRequest(SI)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v4

    .line 1162
    .local v4, "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1163
    invoke-virtual {v4, p3}, Landroid/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1164
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1165
    goto/16 :goto_19

    .line 1133
    .end local v0    # "cmdId":S
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "ndpInstanceId":I
    .end local v4    # "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    :pswitch_4
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1b

    goto :goto_b

    :cond_1b
    move v2, v1

    .line 1134
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_b
    if-eqz v2, :cond_1c

    .line 1135
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1136
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1137
    goto/16 :goto_19

    .line 1138
    :cond_1c
    const-string v0, "android.hardware.wifi@1.0::IWifiNanIface"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1140
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    move-result v0

    .line 1141
    .restart local v0    # "cmdId":S
    new-instance v3, Landroid/hardware/wifi/V1_0/NanRespondToDataPathIndicationRequest;

    invoke-direct {v3}, Landroid/hardware/wifi/V1_0/NanRespondToDataPathIndicationRequest;-><init>()V

    .line 1142
    .local v3, "msg":Landroid/hardware/wifi/V1_0/NanRespondToDataPathIndicationRequest;
    invoke-virtual {v3, p2}, Landroid/hardware/wifi/V1_0/NanRespondToDataPathIndicationRequest;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1143
    invoke-virtual {p0, v0, v3}, Landroid/hardware/wifi/V1_2/IWifiNanIface$Stub;->respondToDataPathIndicationRequest(SLandroid/hardware/wifi/V1_0/NanRespondToDataPathIndicationRequest;)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v4

    .line 1144
    .restart local v4    # "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1145
    invoke-virtual {v4, p3}, Landroid/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1146
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1147
    goto/16 :goto_19

    .line 1114
    .end local v0    # "cmdId":S
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "msg":Landroid/hardware/wifi/V1_0/NanRespondToDataPathIndicationRequest;
    .end local v4    # "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    :pswitch_5
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1d

    goto :goto_c

    :cond_1d
    move v2, v1

    .line 1115
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_c
    if-eqz v2, :cond_1e

    .line 1116
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1117
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1118
    goto/16 :goto_19

    .line 1119
    :cond_1e
    const-string v0, "android.hardware.wifi@1.0::IWifiNanIface"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1121
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    move-result v0

    .line 1122
    .restart local v0    # "cmdId":S
    new-instance v3, Landroid/hardware/wifi/V1_0/NanInitiateDataPathRequest;

    invoke-direct {v3}, Landroid/hardware/wifi/V1_0/NanInitiateDataPathRequest;-><init>()V

    .line 1123
    .local v3, "msg":Landroid/hardware/wifi/V1_0/NanInitiateDataPathRequest;
    invoke-virtual {v3, p2}, Landroid/hardware/wifi/V1_0/NanInitiateDataPathRequest;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1124
    invoke-virtual {p0, v0, v3}, Landroid/hardware/wifi/V1_2/IWifiNanIface$Stub;->initiateDataPathRequest(SLandroid/hardware/wifi/V1_0/NanInitiateDataPathRequest;)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v4

    .line 1125
    .restart local v4    # "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1126
    invoke-virtual {v4, p3}, Landroid/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1127
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1128
    goto/16 :goto_19

    .line 1096
    .end local v0    # "cmdId":S
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "msg":Landroid/hardware/wifi/V1_0/NanInitiateDataPathRequest;
    .end local v4    # "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    :pswitch_6
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1f

    goto :goto_d

    :cond_1f
    move v2, v1

    .line 1097
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_d
    if-eqz v2, :cond_20

    .line 1098
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1099
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1100
    goto/16 :goto_19

    .line 1101
    :cond_20
    const-string v0, "android.hardware.wifi@1.0::IWifiNanIface"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1103
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    move-result v0

    .line 1104
    .restart local v0    # "cmdId":S
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1105
    .local v3, "ifaceName":Ljava/lang/String;
    invoke-virtual {p0, v0, v3}, Landroid/hardware/wifi/V1_2/IWifiNanIface$Stub;->deleteDataInterfaceRequest(SLjava/lang/String;)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v4

    .line 1106
    .restart local v4    # "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1107
    invoke-virtual {v4, p3}, Landroid/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1108
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1109
    goto/16 :goto_19

    .line 1078
    .end local v0    # "cmdId":S
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "ifaceName":Ljava/lang/String;
    .end local v4    # "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    :pswitch_7
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_21

    goto :goto_e

    :cond_21
    move v2, v1

    .line 1079
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_e
    if-eqz v2, :cond_22

    .line 1080
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1081
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1082
    goto/16 :goto_19

    .line 1083
    :cond_22
    const-string v0, "android.hardware.wifi@1.0::IWifiNanIface"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1085
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    move-result v0

    .line 1086
    .restart local v0    # "cmdId":S
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1087
    .restart local v3    # "ifaceName":Ljava/lang/String;
    invoke-virtual {p0, v0, v3}, Landroid/hardware/wifi/V1_2/IWifiNanIface$Stub;->createDataInterfaceRequest(SLjava/lang/String;)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v4

    .line 1088
    .restart local v4    # "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1089
    invoke-virtual {v4, p3}, Landroid/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1090
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1091
    goto/16 :goto_19

    .line 1059
    .end local v0    # "cmdId":S
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "ifaceName":Ljava/lang/String;
    .end local v4    # "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    :pswitch_8
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_23

    goto :goto_f

    :cond_23
    move v2, v1

    .line 1060
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_f
    if-eqz v2, :cond_24

    .line 1061
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1062
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1063
    goto/16 :goto_19

    .line 1064
    :cond_24
    const-string v0, "android.hardware.wifi@1.0::IWifiNanIface"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1066
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    move-result v0

    .line 1067
    .restart local v0    # "cmdId":S
    new-instance v3, Landroid/hardware/wifi/V1_0/NanTransmitFollowupRequest;

    invoke-direct {v3}, Landroid/hardware/wifi/V1_0/NanTransmitFollowupRequest;-><init>()V

    .line 1068
    .local v3, "msg":Landroid/hardware/wifi/V1_0/NanTransmitFollowupRequest;
    invoke-virtual {v3, p2}, Landroid/hardware/wifi/V1_0/NanTransmitFollowupRequest;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1069
    invoke-virtual {p0, v0, v3}, Landroid/hardware/wifi/V1_2/IWifiNanIface$Stub;->transmitFollowupRequest(SLandroid/hardware/wifi/V1_0/NanTransmitFollowupRequest;)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v4

    .line 1070
    .restart local v4    # "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1071
    invoke-virtual {v4, p3}, Landroid/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1072
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1073
    goto/16 :goto_19

    .line 1041
    .end local v0    # "cmdId":S
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "msg":Landroid/hardware/wifi/V1_0/NanTransmitFollowupRequest;
    .end local v4    # "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    :pswitch_9
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_25

    goto :goto_10

    :cond_25
    move v2, v1

    .line 1042
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_10
    if-eqz v2, :cond_26

    .line 1043
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1044
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1045
    goto/16 :goto_19

    .line 1046
    :cond_26
    const-string v0, "android.hardware.wifi@1.0::IWifiNanIface"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1048
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    move-result v0

    .line 1049
    .restart local v0    # "cmdId":S
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8()B

    move-result v3

    .line 1050
    .local v3, "sessionId":B
    invoke-virtual {p0, v0, v3}, Landroid/hardware/wifi/V1_2/IWifiNanIface$Stub;->stopSubscribeRequest(SB)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v4

    .line 1051
    .restart local v4    # "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1052
    invoke-virtual {v4, p3}, Landroid/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1053
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1054
    goto/16 :goto_19

    .line 1022
    .end local v0    # "cmdId":S
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "sessionId":B
    .end local v4    # "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    :pswitch_a
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_27

    goto :goto_11

    :cond_27
    move v2, v1

    .line 1023
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_11
    if-eqz v2, :cond_28

    .line 1024
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1025
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1026
    goto/16 :goto_19

    .line 1027
    :cond_28
    const-string v0, "android.hardware.wifi@1.0::IWifiNanIface"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1029
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    move-result v0

    .line 1030
    .restart local v0    # "cmdId":S
    new-instance v3, Landroid/hardware/wifi/V1_0/NanSubscribeRequest;

    invoke-direct {v3}, Landroid/hardware/wifi/V1_0/NanSubscribeRequest;-><init>()V

    .line 1031
    .local v3, "msg":Landroid/hardware/wifi/V1_0/NanSubscribeRequest;
    invoke-virtual {v3, p2}, Landroid/hardware/wifi/V1_0/NanSubscribeRequest;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1032
    invoke-virtual {p0, v0, v3}, Landroid/hardware/wifi/V1_2/IWifiNanIface$Stub;->startSubscribeRequest(SLandroid/hardware/wifi/V1_0/NanSubscribeRequest;)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v4

    .line 1033
    .restart local v4    # "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1034
    invoke-virtual {v4, p3}, Landroid/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1035
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1036
    goto/16 :goto_19

    .line 1004
    .end local v0    # "cmdId":S
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "msg":Landroid/hardware/wifi/V1_0/NanSubscribeRequest;
    .end local v4    # "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    :pswitch_b
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_29

    goto :goto_12

    :cond_29
    move v2, v1

    .line 1005
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_12
    if-eqz v2, :cond_2a

    .line 1006
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1007
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1008
    goto/16 :goto_19

    .line 1009
    :cond_2a
    const-string v0, "android.hardware.wifi@1.0::IWifiNanIface"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1011
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    move-result v0

    .line 1012
    .restart local v0    # "cmdId":S
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8()B

    move-result v3

    .line 1013
    .local v3, "sessionId":B
    invoke-virtual {p0, v0, v3}, Landroid/hardware/wifi/V1_2/IWifiNanIface$Stub;->stopPublishRequest(SB)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v4

    .line 1014
    .restart local v4    # "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1015
    invoke-virtual {v4, p3}, Landroid/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1016
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1017
    goto/16 :goto_19

    .line 985
    .end local v0    # "cmdId":S
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "sessionId":B
    .end local v4    # "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    :pswitch_c
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_2b

    goto :goto_13

    :cond_2b
    move v2, v1

    .line 986
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_13
    if-eqz v2, :cond_2c

    .line 987
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 988
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 989
    goto/16 :goto_19

    .line 990
    :cond_2c
    const-string v0, "android.hardware.wifi@1.0::IWifiNanIface"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 992
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    move-result v0

    .line 993
    .restart local v0    # "cmdId":S
    new-instance v3, Landroid/hardware/wifi/V1_0/NanPublishRequest;

    invoke-direct {v3}, Landroid/hardware/wifi/V1_0/NanPublishRequest;-><init>()V

    .line 994
    .local v3, "msg":Landroid/hardware/wifi/V1_0/NanPublishRequest;
    invoke-virtual {v3, p2}, Landroid/hardware/wifi/V1_0/NanPublishRequest;->readFromParcel(Landroid/os/HwParcel;)V

    .line 995
    invoke-virtual {p0, v0, v3}, Landroid/hardware/wifi/V1_2/IWifiNanIface$Stub;->startPublishRequest(SLandroid/hardware/wifi/V1_0/NanPublishRequest;)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v4

    .line 996
    .restart local v4    # "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 997
    invoke-virtual {v4, p3}, Landroid/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 998
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 999
    goto/16 :goto_19

    .line 968
    .end local v0    # "cmdId":S
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "msg":Landroid/hardware/wifi/V1_0/NanPublishRequest;
    .end local v4    # "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    :pswitch_d
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_2d

    goto :goto_14

    :cond_2d
    move v2, v1

    .line 969
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_14
    if-eqz v2, :cond_2e

    .line 970
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 971
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 972
    goto/16 :goto_19

    .line 973
    :cond_2e
    const-string v0, "android.hardware.wifi@1.0::IWifiNanIface"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 975
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    move-result v0

    .line 976
    .restart local v0    # "cmdId":S
    invoke-virtual {p0, v0}, Landroid/hardware/wifi/V1_2/IWifiNanIface$Stub;->disableRequest(S)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v3

    .line 977
    .local v3, "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 978
    invoke-virtual {v3, p3}, Landroid/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 979
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 980
    goto/16 :goto_19

    .line 949
    .end local v0    # "cmdId":S
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    :pswitch_e
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_2f

    goto :goto_15

    :cond_2f
    move v2, v1

    .line 950
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_15
    if-eqz v2, :cond_30

    .line 951
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 952
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 953
    goto/16 :goto_19

    .line 954
    :cond_30
    const-string v0, "android.hardware.wifi@1.0::IWifiNanIface"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 956
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    move-result v0

    .line 957
    .restart local v0    # "cmdId":S
    new-instance v3, Landroid/hardware/wifi/V1_0/NanConfigRequest;

    invoke-direct {v3}, Landroid/hardware/wifi/V1_0/NanConfigRequest;-><init>()V

    .line 958
    .local v3, "msg":Landroid/hardware/wifi/V1_0/NanConfigRequest;
    invoke-virtual {v3, p2}, Landroid/hardware/wifi/V1_0/NanConfigRequest;->readFromParcel(Landroid/os/HwParcel;)V

    .line 959
    invoke-virtual {p0, v0, v3}, Landroid/hardware/wifi/V1_2/IWifiNanIface$Stub;->configRequest(SLandroid/hardware/wifi/V1_0/NanConfigRequest;)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v4

    .line 960
    .restart local v4    # "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 961
    invoke-virtual {v4, p3}, Landroid/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 962
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 963
    goto/16 :goto_19

    .line 930
    .end local v0    # "cmdId":S
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "msg":Landroid/hardware/wifi/V1_0/NanConfigRequest;
    .end local v4    # "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    :pswitch_f
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_31

    goto :goto_16

    :cond_31
    move v2, v1

    .line 931
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_16
    if-eqz v2, :cond_32

    .line 932
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 933
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 934
    goto/16 :goto_19

    .line 935
    :cond_32
    const-string v0, "android.hardware.wifi@1.0::IWifiNanIface"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 937
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    move-result v0

    .line 938
    .restart local v0    # "cmdId":S
    new-instance v3, Landroid/hardware/wifi/V1_0/NanEnableRequest;

    invoke-direct {v3}, Landroid/hardware/wifi/V1_0/NanEnableRequest;-><init>()V

    .line 939
    .local v3, "msg":Landroid/hardware/wifi/V1_0/NanEnableRequest;
    invoke-virtual {v3, p2}, Landroid/hardware/wifi/V1_0/NanEnableRequest;->readFromParcel(Landroid/os/HwParcel;)V

    .line 940
    invoke-virtual {p0, v0, v3}, Landroid/hardware/wifi/V1_2/IWifiNanIface$Stub;->enableRequest(SLandroid/hardware/wifi/V1_0/NanEnableRequest;)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v4

    .line 941
    .restart local v4    # "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 942
    invoke-virtual {v4, p3}, Landroid/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 943
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 944
    goto/16 :goto_19

    .line 913
    .end local v0    # "cmdId":S
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "msg":Landroid/hardware/wifi/V1_0/NanEnableRequest;
    .end local v4    # "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    :pswitch_10
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_33

    goto :goto_17

    :cond_33
    move v2, v1

    .line 914
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_17
    if-eqz v2, :cond_34

    .line 915
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 916
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 917
    goto/16 :goto_19

    .line 918
    :cond_34
    const-string v0, "android.hardware.wifi@1.0::IWifiNanIface"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 920
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    move-result v0

    .line 921
    .restart local v0    # "cmdId":S
    invoke-virtual {p0, v0}, Landroid/hardware/wifi/V1_2/IWifiNanIface$Stub;->getCapabilitiesRequest(S)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v3

    .line 922
    .local v3, "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 923
    invoke-virtual {v3, p3}, Landroid/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 924
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 925
    goto/16 :goto_19

    .line 896
    .end local v0    # "cmdId":S
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    :pswitch_11
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_35

    goto :goto_18

    :cond_35
    move v2, v1

    .line 897
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_18
    if-eqz v2, :cond_36

    .line 898
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 899
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 900
    goto :goto_19

    .line 901
    :cond_36
    const-string v0, "android.hardware.wifi@1.0::IWifiNanIface"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 903
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/wifi/V1_0/IWifiNanIfaceEventCallback;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/wifi/V1_0/IWifiNanIfaceEventCallback;

    move-result-object v0

    .line 904
    .local v0, "callback":Landroid/hardware/wifi/V1_0/IWifiNanIfaceEventCallback;
    invoke-virtual {p0, v0}, Landroid/hardware/wifi/V1_2/IWifiNanIface$Stub;->registerEventCallback(Landroid/hardware/wifi/V1_0/IWifiNanIfaceEventCallback;)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v3

    .line 905
    .restart local v3    # "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 906
    invoke-virtual {v3, p3}, Landroid/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 907
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 908
    goto :goto_19

    .line 876
    .end local v0    # "callback":Landroid/hardware/wifi/V1_0/IWifiNanIfaceEventCallback;
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    :pswitch_12
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_37

    move v1, v2

    nop

    .line 877
    .local v1, "_hidl_is_oneway":Z
    :cond_37
    if-eqz v1, :cond_38

    .line 878
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 879
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 880
    goto :goto_19

    .line 881
    :cond_38
    const-string v0, "android.hardware.wifi@1.0::IWifiIface"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 883
    new-instance v0, Landroid/hardware/wifi/V1_2/IWifiNanIface$Stub$2;

    invoke-direct {v0, p0, p3}, Landroid/hardware/wifi/V1_2/IWifiNanIface$Stub$2;-><init>(Landroid/hardware/wifi/V1_2/IWifiNanIface$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0}, Landroid/hardware/wifi/V1_2/IWifiNanIface$Stub;->getName(Landroid/hardware/wifi/V1_0/IWifiIface$getNameCallback;)V

    .line 891
    goto :goto_19

    .line 856
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_13
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_39

    move v1, v2

    nop

    .line 857
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_39
    if-eqz v1, :cond_3a

    .line 858
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 859
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 860
    goto :goto_19

    .line 861
    :cond_3a
    const-string v0, "android.hardware.wifi@1.0::IWifiIface"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 863
    new-instance v0, Landroid/hardware/wifi/V1_2/IWifiNanIface$Stub$1;

    invoke-direct {v0, p0, p3}, Landroid/hardware/wifi/V1_2/IWifiNanIface$Stub$1;-><init>(Landroid/hardware/wifi/V1_2/IWifiNanIface$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0}, Landroid/hardware/wifi/V1_2/IWifiNanIface$Stub;->getType(Landroid/hardware/wifi/V1_0/IWifiIface$getTypeCallback;)V

    .line 871
    nop

    .line 1384
    .end local v1    # "_hidl_is_oneway":Z
    :cond_3b
    :goto_19
    return-void

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 809
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 1
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 835
    const-string v0, "android.hardware.wifi@1.2::IWifiNanIface"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 836
    return-object p0

    .line 838
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

    .line 842
    invoke-virtual {p0, p1}, Landroid/hardware/wifi/V1_2/IWifiNanIface$Stub;->registerService(Ljava/lang/String;)V

    .line 843
    return-void
.end method

.method public final setHALInstrumentation()V
    .locals 0

    .line 800
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 847
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/wifi/V1_2/IWifiNanIface$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 829
    const/4 v0, 0x1

    return v0
.end method
