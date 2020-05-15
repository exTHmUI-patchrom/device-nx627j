.class public abstract Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaNetwork$Stub;
.super Landroid/os/HwBinder;
.source "ISupplicantStaNetwork.java"

# interfaces
.implements Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaNetwork;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaNetwork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1926
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .locals 0

    .line 1929
    return-object p0
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .locals 3

    .line 1975
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 1976
    .local v0, "info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 1977
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 1978
    const/4 v1, 0x0

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    .line 1979
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

    .line 1949
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
        0x10t
        -0x1t
        0x2ft
        -0x52t
        0x51t
        0x63t
        0x46t
        -0x48t
        0x61t
        0x21t
        0x36t
        -0x74t
        -0x1bt
        0x79t
        0xdt
        0x5at
        -0x34t
        -0x21t
        -0x35t
        0x73t
        -0x68t
        0x32t
        0x46t
        -0x48t
        0x13t
        -0xdt
        -0x2ct
        -0x78t
        -0x4at
        0x6dt
        -0x4ct
        0x5at
    .end array-data

    :array_1
    .array-data 1
        -0x4ft
        0x2et
        -0x10t
        -0x43t
        -0x28t
        -0x5ct
        -0x2et
        0x47t
        -0x58t
        -0x5at
        -0x17t
        0x60t
        -0x4et
        0x27t
        -0x13t
        0x32t
        0x38t
        0x3ft
        0x2bt
        0x2t
        0x41t
        -0xbt
        0x5dt
        0x67t
        -0x4t
        -0x16t
        0x6et
        -0x1t
        0x6at
        0x67t
        0x37t
        -0x6t
    .end array-data

    :array_2
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

    .line 1934
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "android.hardware.wifi.supplicant@1.1::ISupplicantStaNetwork"

    const-string v2, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    const-string v3, "android.hardware.wifi.supplicant@1.0::ISupplicantNetwork"

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

    .line 1943
    const-string v0, "android.hardware.wifi.supplicant@1.1::ISupplicantStaNetwork"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 1
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .line 1964
    const/4 v0, 0x1

    return v0
.end method

.method public final notifySyspropsChanged()V
    .locals 0

    .line 1984
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 1985
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

    .line 2013
    const/high16 v0, -0x80000000

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_31

    .line 3556
    :sswitch_0
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_0

    move v1, v2

    nop

    .line 3557
    .local v1, "_hidl_is_oneway":Z
    :cond_0
    if-eqz v1, :cond_a7

    .line 3558
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3559
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3560
    goto/16 :goto_31

    .line 3543
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_1
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1

    move v1, v2

    nop

    .line 3544
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1
    if-eq v1, v2, :cond_2

    .line 3545
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3546
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3547
    goto/16 :goto_31

    .line 3548
    :cond_2
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3550
    invoke-virtual {p0}, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaNetwork$Stub;->notifySyspropsChanged()V

    .line 3551
    goto/16 :goto_31

    .line 3527
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_2
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_3
    move v2, v1

    .line 3528
    .local v2, "_hidl_is_oneway":Z
    :goto_0
    if-eqz v2, :cond_4

    .line 3529
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3530
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3531
    goto/16 :goto_31

    .line 3532
    :cond_4
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3534
    invoke-virtual {p0}, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaNetwork$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    .line 3535
    .local v0, "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3536
    invoke-virtual {v0, p3}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3537
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3538
    goto/16 :goto_31

    .line 3512
    .end local v0    # "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_3
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_5

    goto :goto_1

    :cond_5
    move v2, v1

    .line 3513
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_1
    if-eqz v2, :cond_6

    .line 3514
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3515
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3516
    goto/16 :goto_31

    .line 3517
    :cond_6
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3519
    invoke-virtual {p0}, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaNetwork$Stub;->ping()V

    .line 3520
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3521
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3522
    goto/16 :goto_31

    .line 3502
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_4
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_7

    move v1, v2

    nop

    .line 3503
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_7
    if-eqz v1, :cond_a7

    .line 3504
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3505
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3506
    goto/16 :goto_31

    .line 3489
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_5
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_8

    move v1, v2

    nop

    .line 3490
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_8
    if-eq v1, v2, :cond_9

    .line 3491
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3492
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3493
    goto/16 :goto_31

    .line 3494
    :cond_9
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3496
    invoke-virtual {p0}, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaNetwork$Stub;->setHALInstrumentation()V

    .line 3497
    goto/16 :goto_31

    .line 3456
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_6
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_a

    goto :goto_2

    :cond_a
    move v2, v1

    .line 3457
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_2
    if-eqz v2, :cond_b

    .line 3458
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3459
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3460
    goto/16 :goto_31

    .line 3461
    :cond_b
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3463
    invoke-virtual {p0}, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaNetwork$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 3464
    .local v0, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3466
    new-instance v3, Landroid/os/HwBlob;

    const/16 v4, 0x10

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 3468
    .local v3, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 3469
    .local v4, "_hidl_vec_size":I
    const-wide/16 v5, 0x8

    invoke-virtual {v3, v5, v6, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 3470
    const-wide/16 v5, 0xc

    invoke-virtual {v3, v5, v6, v1}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 3471
    new-instance v5, Landroid/os/HwBlob;

    mul-int/lit8 v6, v4, 0x20

    invoke-direct {v5, v6}, Landroid/os/HwBlob;-><init>(I)V

    .line 3472
    .local v5, "childBlob":Landroid/os/HwBlob;
    nop

    .local v1, "_hidl_index_0":I
    :goto_3
    if-ge v1, v4, :cond_c

    .line 3474
    mul-int/lit8 v6, v1, 0x20

    int-to-long v6, v6

    .line 3475
    .local v6, "_hidl_array_offset_1":J
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 3476
    nop

    .line 3472
    .end local v6    # "_hidl_array_offset_1":J
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 3479
    .end local v1    # "_hidl_index_0":I
    :cond_c
    const-wide/16 v6, 0x0

    invoke-virtual {v3, v6, v7, v5}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 3481
    .end local v4    # "_hidl_vec_size":I
    .end local v5    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 3483
    .end local v3    # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3484
    goto/16 :goto_31

    .line 3440
    .end local v0    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_7
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_d

    goto :goto_4

    :cond_d
    move v2, v1

    .line 3441
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_4
    if-eqz v2, :cond_e

    .line 3442
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3443
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3444
    goto/16 :goto_31

    .line 3445
    :cond_e
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3447
    invoke-virtual {p0}, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaNetwork$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 3448
    .local v0, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3449
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 3450
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3451
    goto/16 :goto_31

    .line 3426
    .end local v0    # "_hidl_out_descriptor":Ljava/lang/String;
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_8
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_f

    goto :goto_5

    :cond_f
    move v2, v1

    .line 3427
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_5
    if-eqz v2, :cond_10

    .line 3428
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3429
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3430
    goto/16 :goto_31

    .line 3431
    :cond_10
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3433
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3434
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3435
    goto/16 :goto_31

    .line 3410
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_9
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_11

    goto :goto_6

    :cond_11
    move v2, v1

    .line 3411
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_6
    if-eqz v2, :cond_12

    .line 3412
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3413
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3414
    goto/16 :goto_31

    .line 3415
    :cond_12
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3417
    invoke-virtual {p0}, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaNetwork$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 3418
    .local v0, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3419
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 3420
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3421
    goto/16 :goto_31

    .line 3392
    .end local v0    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_0
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_13

    goto :goto_7

    :cond_13
    move v2, v1

    .line 3393
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_7
    if-eqz v2, :cond_14

    .line 3394
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3395
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3396
    goto/16 :goto_31

    .line 3397
    :cond_14
    const-string v0, "android.hardware.wifi.supplicant@1.1::ISupplicantStaNetwork"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3399
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v0

    .line 3400
    .local v0, "identity":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v3

    .line 3401
    .local v3, "encryptedIdentity":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {p0, v0, v3}, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaNetwork$Stub;->sendNetworkEapIdentityResponse_1_1(Ljava/util/ArrayList;Ljava/util/ArrayList;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v4

    .line 3402
    .local v4, "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3403
    invoke-virtual {v4, p3}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3404
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3405
    goto/16 :goto_31

    .line 3375
    .end local v0    # "identity":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "encryptedIdentity":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    .end local v4    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :pswitch_1
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_15

    goto :goto_8

    :cond_15
    move v2, v1

    .line 3376
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_8
    if-eqz v2, :cond_16

    .line 3377
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3378
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3379
    goto/16 :goto_31

    .line 3380
    :cond_16
    const-string v0, "android.hardware.wifi.supplicant@1.1::ISupplicantStaNetwork"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3382
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v0

    .line 3383
    .restart local v0    # "identity":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {p0, v0}, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaNetwork$Stub;->setEapEncryptedImsiIdentity(Ljava/util/ArrayList;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v3

    .line 3384
    .local v3, "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3385
    invoke-virtual {v3, p3}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3386
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3387
    goto/16 :goto_31

    .line 3358
    .end local v0    # "identity":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :pswitch_2
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_17

    goto :goto_9

    :cond_17
    move v2, v1

    .line 3359
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_9
    if-eqz v2, :cond_18

    .line 3360
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3361
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3362
    goto/16 :goto_31

    .line 3363
    :cond_18
    const-string v0, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3365
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v0

    .line 3366
    .restart local v0    # "identity":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {p0, v0}, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaNetwork$Stub;->sendNetworkEapIdentityResponse(Ljava/util/ArrayList;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v3

    .line 3367
    .restart local v3    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3368
    invoke-virtual {v3, p3}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3369
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3370
    goto/16 :goto_31

    .line 3342
    .end local v0    # "identity":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :pswitch_3
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_19

    goto :goto_a

    :cond_19
    move v2, v1

    .line 3343
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_a
    if-eqz v2, :cond_1a

    .line 3344
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3345
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3346
    goto/16 :goto_31

    .line 3347
    :cond_1a
    const-string v0, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3349
    invoke-virtual {p0}, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaNetwork$Stub;->sendNetworkEapSimUmtsAuthFailure()Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v0

    .line 3350
    .local v0, "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3351
    invoke-virtual {v0, p3}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3352
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3353
    goto/16 :goto_31

    .line 3317
    .end local v0    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_4
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1b

    goto :goto_b

    :cond_1b
    move v2, v1

    .line 3318
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_b
    if-eqz v2, :cond_1c

    .line 3319
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3320
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3321
    goto/16 :goto_31

    .line 3322
    :cond_1c
    const-string v0, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3324
    const/16 v0, 0xe

    new-array v3, v0, [B

    .line 3326
    .local v3, "auts":[B
    const-wide/16 v4, 0xe

    invoke-virtual {p2, v4, v5}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v4

    .line 3328
    .local v4, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v5, 0x0

    .line 3329
    .local v5, "_hidl_array_offset_0":J
    invoke-virtual {v4, v5, v6, v3, v0}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 3330
    nop

    .line 3333
    .end local v4    # "_hidl_blob":Landroid/os/HwBlob;
    .end local v5    # "_hidl_array_offset_0":J
    invoke-virtual {p0, v3}, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaNetwork$Stub;->sendNetworkEapSimUmtsAutsResponse([B)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v0

    .line 3334
    .restart local v0    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3335
    invoke-virtual {v0, p3}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3336
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3337
    goto/16 :goto_31

    .line 3299
    .end local v0    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "auts":[B
    :pswitch_5
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1d

    goto :goto_c

    :cond_1d
    move v2, v1

    .line 3300
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_c
    if-eqz v2, :cond_1e

    .line 3301
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3302
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3303
    goto/16 :goto_31

    .line 3304
    :cond_1e
    const-string v0, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3306
    new-instance v0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$NetworkResponseEapSimUmtsAuthParams;

    invoke-direct {v0}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$NetworkResponseEapSimUmtsAuthParams;-><init>()V

    .line 3307
    .local v0, "params":Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$NetworkResponseEapSimUmtsAuthParams;
    invoke-virtual {v0, p2}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$NetworkResponseEapSimUmtsAuthParams;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3308
    invoke-virtual {p0, v0}, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaNetwork$Stub;->sendNetworkEapSimUmtsAuthResponse(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$NetworkResponseEapSimUmtsAuthParams;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v3

    .line 3309
    .local v3, "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3310
    invoke-virtual {v3, p3}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3311
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3312
    goto/16 :goto_31

    .line 3283
    .end local v0    # "params":Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$NetworkResponseEapSimUmtsAuthParams;
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :pswitch_6
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1f

    goto :goto_d

    :cond_1f
    move v2, v1

    .line 3284
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_d
    if-eqz v2, :cond_20

    .line 3285
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3286
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3287
    goto/16 :goto_31

    .line 3288
    :cond_20
    const-string v0, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3290
    invoke-virtual {p0}, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaNetwork$Stub;->sendNetworkEapSimGsmAuthFailure()Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v0

    .line 3291
    .local v0, "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3292
    invoke-virtual {v0, p3}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3293
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3294
    goto/16 :goto_31

    .line 3266
    .end local v0    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_7
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_21

    goto :goto_e

    :cond_21
    move v2, v1

    .line 3267
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_e
    if-eqz v2, :cond_22

    .line 3268
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3269
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3270
    goto/16 :goto_31

    .line 3271
    :cond_22
    const-string v0, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3273
    invoke-static {p2}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$NetworkResponseEapSimGsmAuthParams;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v0

    .line 3274
    .local v0, "params":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$NetworkResponseEapSimGsmAuthParams;>;"
    invoke-virtual {p0, v0}, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaNetwork$Stub;->sendNetworkEapSimGsmAuthResponse(Ljava/util/ArrayList;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v3

    .line 3275
    .restart local v3    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3276
    invoke-virtual {v3, p3}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3277
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3278
    goto/16 :goto_31

    .line 3250
    .end local v0    # "params":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$NetworkResponseEapSimGsmAuthParams;>;"
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :pswitch_8
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_23

    goto :goto_f

    :cond_23
    move v2, v1

    .line 3251
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_f
    if-eqz v2, :cond_24

    .line 3252
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3253
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3254
    goto/16 :goto_31

    .line 3255
    :cond_24
    const-string v0, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3257
    invoke-virtual {p0}, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaNetwork$Stub;->select()Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v0

    .line 3258
    .local v0, "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3259
    invoke-virtual {v0, p3}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3260
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3261
    goto/16 :goto_31

    .line 3234
    .end local v0    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_9
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_25

    goto :goto_10

    :cond_25
    move v2, v1

    .line 3235
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_10
    if-eqz v2, :cond_26

    .line 3236
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3237
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3238
    goto/16 :goto_31

    .line 3239
    :cond_26
    const-string v0, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3241
    invoke-virtual {p0}, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaNetwork$Stub;->disable()Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v0

    .line 3242
    .restart local v0    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3243
    invoke-virtual {v0, p3}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3244
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3245
    goto/16 :goto_31

    .line 3217
    .end local v0    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_a
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_27

    goto :goto_11

    :cond_27
    move v2, v1

    .line 3218
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_11
    if-eqz v2, :cond_28

    .line 3219
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3220
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3221
    goto/16 :goto_31

    .line 3222
    :cond_28
    const-string v0, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3224
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v0

    .line 3225
    .local v0, "noConnect":Z
    invoke-virtual {p0, v0}, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaNetwork$Stub;->enable(Z)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v3

    .line 3226
    .restart local v3    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3227
    invoke-virtual {v3, p3}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3228
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3229
    goto/16 :goto_31

    .line 3197
    .end local v0    # "noConnect":Z
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :pswitch_b
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_29

    move v1, v2

    nop

    .line 3198
    .local v1, "_hidl_is_oneway":Z
    :cond_29
    if-eqz v1, :cond_2a

    .line 3199
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3200
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3201
    goto/16 :goto_31

    .line 3202
    :cond_2a
    const-string v0, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3204
    new-instance v0, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaNetwork$Stub$32;

    invoke-direct {v0, p0, p3}, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaNetwork$Stub$32;-><init>(Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaNetwork$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0}, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaNetwork$Stub;->getWpsNfcConfigurationToken(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getWpsNfcConfigurationTokenCallback;)V

    .line 3212
    goto/16 :goto_31

    .line 3177
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_c
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_2b

    move v1, v2

    nop

    .line 3178
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_2b
    if-eqz v1, :cond_2c

    .line 3179
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3180
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3181
    goto/16 :goto_31

    .line 3182
    :cond_2c
    const-string v0, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3184
    new-instance v0, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaNetwork$Stub$31;

    invoke-direct {v0, p0, p3}, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaNetwork$Stub$31;-><init>(Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaNetwork$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0}, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaNetwork$Stub;->getIdStr(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getIdStrCallback;)V

    .line 3192
    goto/16 :goto_31

    .line 3157
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_d
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_2d

    move v1, v2

    nop

    .line 3158
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_2d
    if-eqz v1, :cond_2e

    .line 3159
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3160
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3161
    goto/16 :goto_31

    .line 3162
    :cond_2e
    const-string v0, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3164
    new-instance v0, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaNetwork$Stub$30;

    invoke-direct {v0, p0, p3}, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaNetwork$Stub$30;-><init>(Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaNetwork$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0}, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaNetwork$Stub;->getEapDomainSuffixMatch(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getEapDomainSuffixMatchCallback;)V

    .line 3172
    goto/16 :goto_31

    .line 3137
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_e
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_2f

    move v1, v2

    nop

    .line 3138
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_2f
    if-eqz v1, :cond_30

    .line 3139
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3140
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3141
    goto/16 :goto_31

    .line 3142
    :cond_30
    const-string v0, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3144
    new-instance v0, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaNetwork$Stub$29;

    invoke-direct {v0, p0, p3}, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaNetwork$Stub$29;-><init>(Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaNetwork$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0}, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaNetwork$Stub;->getEapEngineID(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getEapEngineIDCallback;)V

    .line 3152
    goto/16 :goto_31

    .line 3117
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_f
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_31

    move v1, v2

    nop

    .line 3118
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_31
    if-eqz v1, :cond_32

    .line 3119
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3120
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3121
    goto/16 :goto_31

    .line 3122
    :cond_32
    const-string v0, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3124
    new-instance v0, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaNetwork$Stub$28;

    invoke-direct {v0, p0, p3}, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaNetwork$Stub$28;-><init>(Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaNetwork$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0}, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaNetwork$Stub;->getEapEngine(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getEapEngineCallback;)V

    .line 3132
    goto/16 :goto_31

    .line 3097
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_10
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_33

    move v1, v2

    nop

    .line 3098
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_33
    if-eqz v1, :cond_34

    .line 3099
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3100
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3101
    goto/16 :goto_31

    .line 3102
    :cond_34
    const-string v0, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3104
    new-instance v0, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaNetwork$Stub$27;

    invoke-direct {v0, p0, p3}, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaNetwork$Stub$27;-><init>(Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaNetwork$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0}, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaNetwork$Stub;->getEapAltSubjectMatch(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getEapAltSubjectMatchCallback;)V

    .line 3112
    goto/16 :goto_31

    .line 3077
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_11
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_35

    move v1, v2

    nop

    .line 3078
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_35
    if-eqz v1, :cond_36

    .line 3079
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3080
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3081
    goto/16 :goto_31

    .line 3082
    :cond_36
    const-string v0, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3084
    new-instance v0, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaNetwork$Stub$26;

    invoke-direct {v0, p0, p3}, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaNetwork$Stub$26;-><init>(Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaNetwork$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0}, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaNetwork$Stub;->getEapSubjectMatch(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getEapSubjectMatchCallback;)V

    .line 3092
    goto/16 :goto_31

    .line 3057
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_12
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_37

    move v1, v2

    nop

    .line 3058
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_37
    if-eqz v1, :cond_38

    .line 3059
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3060
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3061
    goto/16 :goto_31

    .line 3062
    :cond_38
    const-string v0, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3064
    new-instance v0, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaNetwork$Stub$25;

    invoke-direct {v0, p0, p3}, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaNetwork$Stub$25;-><init>(Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaNetwork$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0}, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaNetwork$Stub;->getEapPrivateKeyId(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getEapPrivateKeyIdCallback;)V

    .line 3072
    goto/16 :goto_31

    .line 3037
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_13
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_39

    move v1, v2

    nop

    .line 3038
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_39
    if-eqz v1, :cond_3a

    .line 3039
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3040
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3041
    goto/16 :goto_31

    .line 3042
    :cond_3a
    const-string v0, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3044
    new-instance v0, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaNetwork$Stub$24;

    invoke-direct {v0, p0, p3}, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaNetwork$Stub$24;-><init>(Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaNetwork$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0}, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaNetwork$Stub;->getEapClientCert(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getEapClientCertCallback;)V

    .line 3052
    goto/16 :goto_31

    .line 3017
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_14
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_3b

    move v1, v2

    nop

    .line 3018
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_3b
    if-eqz v1, :cond_3c

    .line 3019
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3020
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3021
    goto/16 :goto_31

    .line 3022
    :cond_3c
    const-string v0, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3024
    new-instance v0, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaNetwork$Stub$23;

    invoke-direct {v0, p0, p3}, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaNetwork$Stub$23;-><init>(Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaNetwork$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0}, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaNetwork$Stub;->getEapCAPath(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getEapCAPathCallback;)V

    .line 3032
    goto/16 :goto_31

    .line 2997
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_15
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_3d

    move v1, v2

    nop

    .line 2998
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_3d
    if-eqz v1, :cond_3e

    .line 2999
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3000
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3001
    goto/16 :goto_31

    .line 3002
    :cond_3e
    const-string v0, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3004
    new-instance v0, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaNetwork$Stub$22;

    invoke-direct {v0, p0, p3}, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaNetwork$Stub$22;-><init>(Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaNetwork$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0}, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaNetwork$Stub;->getEapCACert(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getEapCACertCallback;)V

    .line 3012
    goto/16 :goto_31

    .line 2977
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_16
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_3f

    move v1, v2

    nop

    .line 2978
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_3f
    if-eqz v1, :cond_40

    .line 2979
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2980
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2981
    goto/16 :goto_31

    .line 2982
    :cond_40
    const-string v0, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2984
    new-instance v0, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaNetwork$Stub$21;

    invoke-direct {v0, p0, p3}, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaNetwork$Stub$21;-><init>(Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaNetwork$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0}, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaNetwork$Stub;->getEapPassword(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getEapPasswordCallback;)V

    .line 2992
    goto/16 :goto_31

    .line 2957
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_17
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_41

    move v1, v2

    nop

    .line 2958
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_41
    if-eqz v1, :cond_42

    .line 2959
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2960
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2961
    goto/16 :goto_31

    .line 2962
    :cond_42
    const-string v0, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2964
    new-instance v0, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaNetwork$Stub$20;

    invoke-direct {v0, p0, p3}, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaNetwork$Stub$20;-><init>(Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaNetwork$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0}, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaNetwork$Stub;->getEapAnonymousIdentity(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getEapAnonymousIdentityCallback;)V

    .line 2972
    goto/16 :goto_31

    .line 2937
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_18
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_43

    move v1, v2

    nop

    .line 2938
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_43
    if-eqz v1, :cond_44

    .line 2939
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2940
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2941
    goto/16 :goto_31

    .line 2942
    :cond_44
    const-string v0, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2944
    new-instance v0, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaNetwork$Stub$19;

    invoke-direct {v0, p0, p3}, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaNetwork$Stub$19;-><init>(Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaNetwork$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0}, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaNetwork$Stub;->getEapIdentity(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getEapIdentityCallback;)V

    .line 2952
    goto/16 :goto_31

    .line 2917
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_19
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_45

    move v1, v2

    nop

    .line 2918
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_45
    if-eqz v1, :cond_46

    .line 2919
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2920
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2921
    goto/16 :goto_31

    .line 2922
    :cond_46
    const-string v0, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2924
    new-instance v0, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaNetwork$Stub$18;

    invoke-direct {v0, p0, p3}, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaNetwork$Stub$18;-><init>(Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaNetwork$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0}, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaNetwork$Stub;->getEapPhase2Method(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getEapPhase2MethodCallback;)V

    .line 2932
    goto/16 :goto_31

    .line 2897
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_1a
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_47

    move v1, v2

    nop

    .line 2898
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_47
    if-eqz v1, :cond_48

    .line 2899
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2900
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2901
    goto/16 :goto_31

    .line 2902
    :cond_48
    const-string v0, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2904
    new-instance v0, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaNetwork$Stub$17;

    invoke-direct {v0, p0, p3}, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaNetwork$Stub$17;-><init>(Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaNetwork$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0}, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaNetwork$Stub;->getEapMethod(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getEapMethodCallback;)V

    .line 2912
    goto/16 :goto_31

    .line 2877
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_1b
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_49

    move v1, v2

    nop

    .line 2878
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_49
    if-eqz v1, :cond_4a

    .line 2879
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2880
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2881
    goto/16 :goto_31

    .line 2882
    :cond_4a
    const-string v0, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2884
    new-instance v0, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaNetwork$Stub$16;

    invoke-direct {v0, p0, p3}, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaNetwork$Stub$16;-><init>(Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaNetwork$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0}, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaNetwork$Stub;->getRequirePmf(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getRequirePmfCallback;)V

    .line 2892
    goto/16 :goto_31

    .line 2857
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_1c
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_4b

    move v1, v2

    nop

    .line 2858
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_4b
    if-eqz v1, :cond_4c

    .line 2859
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2860
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2861
    goto/16 :goto_31

    .line 2862
    :cond_4c
    const-string v0, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2864
    new-instance v0, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaNetwork$Stub$15;

    invoke-direct {v0, p0, p3}, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaNetwork$Stub$15;-><init>(Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaNetwork$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0}, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaNetwork$Stub;->getWepTxKeyIdx(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getWepTxKeyIdxCallback;)V

    .line 2872
    goto/16 :goto_31

    .line 2836
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_1d
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_4d

    move v1, v2

    nop

    .line 2837
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_4d
    if-eqz v1, :cond_4e

    .line 2838
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2839
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2840
    goto/16 :goto_31

    .line 2841
    :cond_4e
    const-string v0, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2843
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2844
    .local v0, "keyIdx":I
    new-instance v2, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaNetwork$Stub$14;

    invoke-direct {v2, p0, p3}, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaNetwork$Stub$14;-><init>(Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaNetwork$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0, v2}, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaNetwork$Stub;->getWepKey(ILandroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getWepKeyCallback;)V

    .line 2852
    goto/16 :goto_31

    .line 2808
    .end local v0    # "keyIdx":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_1e
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_4f

    move v1, v2

    nop

    .line 2809
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_4f
    if-eqz v1, :cond_50

    .line 2810
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2811
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2812
    goto/16 :goto_31

    .line 2813
    :cond_50
    const-string v0, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2815
    new-instance v0, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaNetwork$Stub$13;

    invoke-direct {v0, p0, p3}, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaNetwork$Stub$13;-><init>(Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaNetwork$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0}, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaNetwork$Stub;->getPsk(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getPskCallback;)V

    .line 2831
    goto/16 :goto_31

    .line 2788
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_1f
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_51

    move v1, v2

    nop

    .line 2789
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_51
    if-eqz v1, :cond_52

    .line 2790
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2791
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2792
    goto/16 :goto_31

    .line 2793
    :cond_52
    const-string v0, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2795
    new-instance v0, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaNetwork$Stub$12;

    invoke-direct {v0, p0, p3}, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaNetwork$Stub$12;-><init>(Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaNetwork$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0}, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaNetwork$Stub;->getPskPassphrase(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getPskPassphraseCallback;)V

    .line 2803
    goto/16 :goto_31

    .line 2768
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_20
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_53

    move v1, v2

    nop

    .line 2769
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_53
    if-eqz v1, :cond_54

    .line 2770
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2771
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2772
    goto/16 :goto_31

    .line 2773
    :cond_54
    const-string v0, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2775
    new-instance v0, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaNetwork$Stub$11;

    invoke-direct {v0, p0, p3}, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaNetwork$Stub$11;-><init>(Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaNetwork$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0}, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaNetwork$Stub;->getPairwiseCipher(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getPairwiseCipherCallback;)V

    .line 2783
    goto/16 :goto_31

    .line 2748
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_21
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_55

    move v1, v2

    nop

    .line 2749
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_55
    if-eqz v1, :cond_56

    .line 2750
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2751
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2752
    goto/16 :goto_31

    .line 2753
    :cond_56
    const-string v0, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2755
    new-instance v0, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaNetwork$Stub$10;

    invoke-direct {v0, p0, p3}, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaNetwork$Stub$10;-><init>(Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaNetwork$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0}, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaNetwork$Stub;->getGroupCipher(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getGroupCipherCallback;)V

    .line 2763
    goto/16 :goto_31

    .line 2728
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_22
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_57

    move v1, v2

    nop

    .line 2729
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_57
    if-eqz v1, :cond_58

    .line 2730
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2731
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2732
    goto/16 :goto_31

    .line 2733
    :cond_58
    const-string v0, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2735
    new-instance v0, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaNetwork$Stub$9;

    invoke-direct {v0, p0, p3}, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaNetwork$Stub$9;-><init>(Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaNetwork$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0}, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaNetwork$Stub;->getAuthAlg(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getAuthAlgCallback;)V

    .line 2743
    goto/16 :goto_31

    .line 2708
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_23
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_59

    move v1, v2

    nop

    .line 2709
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_59
    if-eqz v1, :cond_5a

    .line 2710
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2711
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2712
    goto/16 :goto_31

    .line 2713
    :cond_5a
    const-string v0, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2715
    new-instance v0, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaNetwork$Stub$8;

    invoke-direct {v0, p0, p3}, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaNetwork$Stub$8;-><init>(Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaNetwork$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0}, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaNetwork$Stub;->getProto(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getProtoCallback;)V

    .line 2723
    goto/16 :goto_31

    .line 2688
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_24
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_5b

    move v1, v2

    nop

    .line 2689
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_5b
    if-eqz v1, :cond_5c

    .line 2690
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2691
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2692
    goto/16 :goto_31

    .line 2693
    :cond_5c
    const-string v0, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2695
    new-instance v0, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaNetwork$Stub$7;

    invoke-direct {v0, p0, p3}, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaNetwork$Stub$7;-><init>(Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaNetwork$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0}, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaNetwork$Stub;->getKeyMgmt(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getKeyMgmtCallback;)V

    .line 2703
    goto/16 :goto_31

    .line 2668
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_25
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_5d

    move v1, v2

    nop

    .line 2669
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_5d
    if-eqz v1, :cond_5e

    .line 2670
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2671
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2672
    goto/16 :goto_31

    .line 2673
    :cond_5e
    const-string v0, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2675
    new-instance v0, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaNetwork$Stub$6;

    invoke-direct {v0, p0, p3}, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaNetwork$Stub$6;-><init>(Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaNetwork$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0}, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaNetwork$Stub;->getScanSsid(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getScanSsidCallback;)V

    .line 2683
    goto/16 :goto_31

    .line 2640
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_26
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_5f

    move v1, v2

    nop

    .line 2641
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_5f
    if-eqz v1, :cond_60

    .line 2642
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2643
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2644
    goto/16 :goto_31

    .line 2645
    :cond_60
    const-string v0, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2647
    new-instance v0, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaNetwork$Stub$5;

    invoke-direct {v0, p0, p3}, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaNetwork$Stub$5;-><init>(Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaNetwork$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0}, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaNetwork$Stub;->getBssid(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getBssidCallback;)V

    .line 2663
    goto/16 :goto_31

    .line 2620
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_27
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_61

    move v1, v2

    nop

    .line 2621
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_61
    if-eqz v1, :cond_62

    .line 2622
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2623
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2624
    goto/16 :goto_31

    .line 2625
    :cond_62
    const-string v0, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2627
    new-instance v0, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaNetwork$Stub$4;

    invoke-direct {v0, p0, p3}, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaNetwork$Stub$4;-><init>(Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaNetwork$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0}, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaNetwork$Stub;->getSsid(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getSsidCallback;)V

    .line 2635
    goto/16 :goto_31

    .line 2603
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_28
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_63

    goto :goto_12

    :cond_63
    move v2, v1

    .line 2604
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_12
    if-eqz v2, :cond_64

    .line 2605
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2606
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2607
    goto/16 :goto_31

    .line 2608
    :cond_64
    const-string v0, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2610
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2611
    .local v0, "id":I
    invoke-virtual {p0, v0}, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaNetwork$Stub;->setUpdateIdentifier(I)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v3

    .line 2612
    .restart local v3    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2613
    invoke-virtual {v3, p3}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2614
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2615
    goto/16 :goto_31

    .line 2586
    .end local v0    # "id":I
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :pswitch_29
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_65

    goto :goto_13

    :cond_65
    move v2, v1

    .line 2587
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_13
    if-eqz v2, :cond_66

    .line 2588
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2589
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2590
    goto/16 :goto_31

    .line 2591
    :cond_66
    const-string v0, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2593
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2594
    .local v0, "idStr":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaNetwork$Stub;->setIdStr(Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v3

    .line 2595
    .restart local v3    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2596
    invoke-virtual {v3, p3}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2597
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2598
    goto/16 :goto_31

    .line 2569
    .end local v0    # "idStr":Ljava/lang/String;
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :pswitch_2a
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_67

    goto :goto_14

    :cond_67
    move v2, v1

    .line 2570
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_14
    if-eqz v2, :cond_68

    .line 2571
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2572
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2573
    goto/16 :goto_31

    .line 2574
    :cond_68
    const-string v0, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2576
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v0

    .line 2577
    .local v0, "enable":Z
    invoke-virtual {p0, v0}, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaNetwork$Stub;->setProactiveKeyCaching(Z)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v3

    .line 2578
    .restart local v3    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2579
    invoke-virtual {v3, p3}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2580
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2581
    goto/16 :goto_31

    .line 2552
    .end local v0    # "enable":Z
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :pswitch_2b
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_69

    goto :goto_15

    :cond_69
    move v2, v1

    .line 2553
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_15
    if-eqz v2, :cond_6a

    .line 2554
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2555
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2556
    goto/16 :goto_31

    .line 2557
    :cond_6a
    const-string v0, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2559
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2560
    .local v0, "match":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaNetwork$Stub;->setEapDomainSuffixMatch(Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v3

    .line 2561
    .restart local v3    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2562
    invoke-virtual {v3, p3}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2563
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2564
    goto/16 :goto_31

    .line 2535
    .end local v0    # "match":Ljava/lang/String;
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :pswitch_2c
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_6b

    goto :goto_16

    :cond_6b
    move v2, v1

    .line 2536
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_16
    if-eqz v2, :cond_6c

    .line 2537
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2538
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2539
    goto/16 :goto_31

    .line 2540
    :cond_6c
    const-string v0, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2542
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2543
    .local v0, "id":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaNetwork$Stub;->setEapEngineID(Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v3

    .line 2544
    .restart local v3    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2545
    invoke-virtual {v3, p3}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2546
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2547
    goto/16 :goto_31

    .line 2518
    .end local v0    # "id":Ljava/lang/String;
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :pswitch_2d
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_6d

    goto :goto_17

    :cond_6d
    move v2, v1

    .line 2519
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_17
    if-eqz v2, :cond_6e

    .line 2520
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2521
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2522
    goto/16 :goto_31

    .line 2523
    :cond_6e
    const-string v0, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2525
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v0

    .line 2526
    .local v0, "enable":Z
    invoke-virtual {p0, v0}, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaNetwork$Stub;->setEapEngine(Z)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v3

    .line 2527
    .restart local v3    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2528
    invoke-virtual {v3, p3}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2529
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2530
    goto/16 :goto_31

    .line 2501
    .end local v0    # "enable":Z
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :pswitch_2e
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_6f

    goto :goto_18

    :cond_6f
    move v2, v1

    .line 2502
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_18
    if-eqz v2, :cond_70

    .line 2503
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2504
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2505
    goto/16 :goto_31

    .line 2506
    :cond_70
    const-string v0, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2508
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2509
    .local v0, "match":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaNetwork$Stub;->setEapAltSubjectMatch(Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v3

    .line 2510
    .restart local v3    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2511
    invoke-virtual {v3, p3}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2512
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2513
    goto/16 :goto_31

    .line 2484
    .end local v0    # "match":Ljava/lang/String;
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :pswitch_2f
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_71

    goto :goto_19

    :cond_71
    move v2, v1

    .line 2485
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_19
    if-eqz v2, :cond_72

    .line 2486
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2487
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2488
    goto/16 :goto_31

    .line 2489
    :cond_72
    const-string v0, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2491
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2492
    .restart local v0    # "match":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaNetwork$Stub;->setEapSubjectMatch(Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v3

    .line 2493
    .restart local v3    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2494
    invoke-virtual {v3, p3}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2495
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2496
    goto/16 :goto_31

    .line 2467
    .end local v0    # "match":Ljava/lang/String;
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :pswitch_30
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_73

    goto :goto_1a

    :cond_73
    move v2, v1

    .line 2468
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_1a
    if-eqz v2, :cond_74

    .line 2469
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2470
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2471
    goto/16 :goto_31

    .line 2472
    :cond_74
    const-string v0, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2474
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2475
    .local v0, "id":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaNetwork$Stub;->setEapPrivateKeyId(Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v3

    .line 2476
    .restart local v3    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2477
    invoke-virtual {v3, p3}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2478
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2479
    goto/16 :goto_31

    .line 2450
    .end local v0    # "id":Ljava/lang/String;
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :pswitch_31
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_75

    goto :goto_1b

    :cond_75
    move v2, v1

    .line 2451
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_1b
    if-eqz v2, :cond_76

    .line 2452
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2453
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2454
    goto/16 :goto_31

    .line 2455
    :cond_76
    const-string v0, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2457
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2458
    .local v0, "path":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaNetwork$Stub;->setEapClientCert(Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v3

    .line 2459
    .restart local v3    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2460
    invoke-virtual {v3, p3}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2461
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2462
    goto/16 :goto_31

    .line 2433
    .end local v0    # "path":Ljava/lang/String;
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :pswitch_32
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_77

    goto :goto_1c

    :cond_77
    move v2, v1

    .line 2434
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_1c
    if-eqz v2, :cond_78

    .line 2435
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2436
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2437
    goto/16 :goto_31

    .line 2438
    :cond_78
    const-string v0, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2440
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2441
    .restart local v0    # "path":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaNetwork$Stub;->setEapCAPath(Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v3

    .line 2442
    .restart local v3    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2443
    invoke-virtual {v3, p3}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2444
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2445
    goto/16 :goto_31

    .line 2416
    .end local v0    # "path":Ljava/lang/String;
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :pswitch_33
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_79

    goto :goto_1d

    :cond_79
    move v2, v1

    .line 2417
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_1d
    if-eqz v2, :cond_7a

    .line 2418
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2419
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2420
    goto/16 :goto_31

    .line 2421
    :cond_7a
    const-string v0, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2423
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2424
    .restart local v0    # "path":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaNetwork$Stub;->setEapCACert(Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v3

    .line 2425
    .restart local v3    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2426
    invoke-virtual {v3, p3}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2427
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2428
    goto/16 :goto_31

    .line 2399
    .end local v0    # "path":Ljava/lang/String;
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :pswitch_34
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_7b

    goto :goto_1e

    :cond_7b
    move v2, v1

    .line 2400
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_1e
    if-eqz v2, :cond_7c

    .line 2401
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2402
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2403
    goto/16 :goto_31

    .line 2404
    :cond_7c
    const-string v0, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2406
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v0

    .line 2407
    .local v0, "password":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {p0, v0}, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaNetwork$Stub;->setEapPassword(Ljava/util/ArrayList;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v3

    .line 2408
    .restart local v3    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2409
    invoke-virtual {v3, p3}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2410
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2411
    goto/16 :goto_31

    .line 2382
    .end local v0    # "password":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :pswitch_35
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_7d

    goto :goto_1f

    :cond_7d
    move v2, v1

    .line 2383
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_1f
    if-eqz v2, :cond_7e

    .line 2384
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2385
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2386
    goto/16 :goto_31

    .line 2387
    :cond_7e
    const-string v0, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2389
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v0

    .line 2390
    .local v0, "identity":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {p0, v0}, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaNetwork$Stub;->setEapAnonymousIdentity(Ljava/util/ArrayList;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v3

    .line 2391
    .restart local v3    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2392
    invoke-virtual {v3, p3}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2393
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2394
    goto/16 :goto_31

    .line 2365
    .end local v0    # "identity":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :pswitch_36
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_7f

    goto :goto_20

    :cond_7f
    move v2, v1

    .line 2366
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_20
    if-eqz v2, :cond_80

    .line 2367
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2368
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2369
    goto/16 :goto_31

    .line 2370
    :cond_80
    const-string v0, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2372
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v0

    .line 2373
    .restart local v0    # "identity":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {p0, v0}, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaNetwork$Stub;->setEapIdentity(Ljava/util/ArrayList;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v3

    .line 2374
    .restart local v3    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2375
    invoke-virtual {v3, p3}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2376
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2377
    goto/16 :goto_31

    .line 2348
    .end local v0    # "identity":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :pswitch_37
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_81

    goto :goto_21

    :cond_81
    move v2, v1

    .line 2349
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_21
    if-eqz v2, :cond_82

    .line 2350
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2351
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2352
    goto/16 :goto_31

    .line 2353
    :cond_82
    const-string v0, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2355
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2356
    .local v0, "method":I
    invoke-virtual {p0, v0}, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaNetwork$Stub;->setEapPhase2Method(I)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v3

    .line 2357
    .restart local v3    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2358
    invoke-virtual {v3, p3}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2359
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2360
    goto/16 :goto_31

    .line 2331
    .end local v0    # "method":I
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :pswitch_38
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_83

    goto :goto_22

    :cond_83
    move v2, v1

    .line 2332
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_22
    if-eqz v2, :cond_84

    .line 2333
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2334
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2335
    goto/16 :goto_31

    .line 2336
    :cond_84
    const-string v0, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2338
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2339
    .restart local v0    # "method":I
    invoke-virtual {p0, v0}, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaNetwork$Stub;->setEapMethod(I)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v3

    .line 2340
    .restart local v3    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2341
    invoke-virtual {v3, p3}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2342
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2343
    goto/16 :goto_31

    .line 2314
    .end local v0    # "method":I
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :pswitch_39
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_85

    goto :goto_23

    :cond_85
    move v2, v1

    .line 2315
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_23
    if-eqz v2, :cond_86

    .line 2316
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2317
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2318
    goto/16 :goto_31

    .line 2319
    :cond_86
    const-string v0, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2321
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v0

    .line 2322
    .local v0, "enable":Z
    invoke-virtual {p0, v0}, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaNetwork$Stub;->setRequirePmf(Z)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v3

    .line 2323
    .restart local v3    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2324
    invoke-virtual {v3, p3}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2325
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2326
    goto/16 :goto_31

    .line 2297
    .end local v0    # "enable":Z
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :pswitch_3a
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_87

    goto :goto_24

    :cond_87
    move v2, v1

    .line 2298
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_24
    if-eqz v2, :cond_88

    .line 2299
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2300
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2301
    goto/16 :goto_31

    .line 2302
    :cond_88
    const-string v0, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2304
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2305
    .local v0, "keyIdx":I
    invoke-virtual {p0, v0}, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaNetwork$Stub;->setWepTxKeyIdx(I)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v3

    .line 2306
    .restart local v3    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2307
    invoke-virtual {v3, p3}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2308
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2309
    goto/16 :goto_31

    .line 2279
    .end local v0    # "keyIdx":I
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :pswitch_3b
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_89

    goto :goto_25

    :cond_89
    move v2, v1

    .line 2280
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_25
    if-eqz v2, :cond_8a

    .line 2281
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2282
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2283
    goto/16 :goto_31

    .line 2284
    :cond_8a
    const-string v0, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2286
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2287
    .restart local v0    # "keyIdx":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v3

    .line 2288
    .local v3, "wepKey":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {p0, v0, v3}, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaNetwork$Stub;->setWepKey(ILjava/util/ArrayList;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v4

    .line 2289
    .local v4, "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2290
    invoke-virtual {v4, p3}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2291
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2292
    goto/16 :goto_31

    .line 2254
    .end local v0    # "keyIdx":I
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "wepKey":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    .end local v4    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :pswitch_3c
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_8b

    goto :goto_26

    :cond_8b
    move v2, v1

    .line 2255
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_26
    if-eqz v2, :cond_8c

    .line 2256
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2257
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2258
    goto/16 :goto_31

    .line 2259
    :cond_8c
    const-string v0, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2261
    const/16 v0, 0x20

    new-array v3, v0, [B

    .line 2263
    .local v3, "psk":[B
    const-wide/16 v4, 0x20

    invoke-virtual {p2, v4, v5}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v4

    .line 2265
    .local v4, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v5, 0x0

    .line 2266
    .restart local v5    # "_hidl_array_offset_0":J
    invoke-virtual {v4, v5, v6, v3, v0}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 2267
    nop

    .line 2270
    .end local v4    # "_hidl_blob":Landroid/os/HwBlob;
    .end local v5    # "_hidl_array_offset_0":J
    invoke-virtual {p0, v3}, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaNetwork$Stub;->setPsk([B)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v0

    .line 2271
    .local v0, "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2272
    invoke-virtual {v0, p3}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2273
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2274
    goto/16 :goto_31

    .line 2237
    .end local v0    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "psk":[B
    :pswitch_3d
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_8d

    goto :goto_27

    :cond_8d
    move v2, v1

    .line 2238
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_27
    if-eqz v2, :cond_8e

    .line 2239
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2240
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2241
    goto/16 :goto_31

    .line 2242
    :cond_8e
    const-string v0, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2244
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2245
    .local v0, "psk":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaNetwork$Stub;->setPskPassphrase(Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v3

    .line 2246
    .local v3, "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2247
    invoke-virtual {v3, p3}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2248
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2249
    goto/16 :goto_31

    .line 2220
    .end local v0    # "psk":Ljava/lang/String;
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :pswitch_3e
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_8f

    goto :goto_28

    :cond_8f
    move v2, v1

    .line 2221
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_28
    if-eqz v2, :cond_90

    .line 2222
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2223
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2224
    goto/16 :goto_31

    .line 2225
    :cond_90
    const-string v0, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2227
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2228
    .local v0, "pairwiseCipherMask":I
    invoke-virtual {p0, v0}, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaNetwork$Stub;->setPairwiseCipher(I)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v3

    .line 2229
    .restart local v3    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2230
    invoke-virtual {v3, p3}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2231
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2232
    goto/16 :goto_31

    .line 2203
    .end local v0    # "pairwiseCipherMask":I
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :pswitch_3f
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_91

    goto :goto_29

    :cond_91
    move v2, v1

    .line 2204
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_29
    if-eqz v2, :cond_92

    .line 2205
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2206
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2207
    goto/16 :goto_31

    .line 2208
    :cond_92
    const-string v0, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2210
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2211
    .local v0, "groupCipherMask":I
    invoke-virtual {p0, v0}, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaNetwork$Stub;->setGroupCipher(I)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v3

    .line 2212
    .restart local v3    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2213
    invoke-virtual {v3, p3}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2214
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2215
    goto/16 :goto_31

    .line 2186
    .end local v0    # "groupCipherMask":I
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :pswitch_40
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_93

    goto :goto_2a

    :cond_93
    move v2, v1

    .line 2187
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_2a
    if-eqz v2, :cond_94

    .line 2188
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2189
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2190
    goto/16 :goto_31

    .line 2191
    :cond_94
    const-string v0, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2193
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2194
    .local v0, "authAlgMask":I
    invoke-virtual {p0, v0}, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaNetwork$Stub;->setAuthAlg(I)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v3

    .line 2195
    .restart local v3    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2196
    invoke-virtual {v3, p3}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2197
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2198
    goto/16 :goto_31

    .line 2169
    .end local v0    # "authAlgMask":I
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :pswitch_41
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_95

    goto :goto_2b

    :cond_95
    move v2, v1

    .line 2170
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_2b
    if-eqz v2, :cond_96

    .line 2171
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2172
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2173
    goto/16 :goto_31

    .line 2174
    :cond_96
    const-string v0, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2176
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2177
    .local v0, "protoMask":I
    invoke-virtual {p0, v0}, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaNetwork$Stub;->setProto(I)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v3

    .line 2178
    .restart local v3    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2179
    invoke-virtual {v3, p3}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2180
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2181
    goto/16 :goto_31

    .line 2152
    .end local v0    # "protoMask":I
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :pswitch_42
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_97

    goto :goto_2c

    :cond_97
    move v2, v1

    .line 2153
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_2c
    if-eqz v2, :cond_98

    .line 2154
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2155
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2156
    goto/16 :goto_31

    .line 2157
    :cond_98
    const-string v0, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2159
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2160
    .local v0, "keyMgmtMask":I
    invoke-virtual {p0, v0}, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaNetwork$Stub;->setKeyMgmt(I)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v3

    .line 2161
    .restart local v3    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2162
    invoke-virtual {v3, p3}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2163
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2164
    goto/16 :goto_31

    .line 2135
    .end local v0    # "keyMgmtMask":I
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :pswitch_43
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_99

    goto :goto_2d

    :cond_99
    move v2, v1

    .line 2136
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_2d
    if-eqz v2, :cond_9a

    .line 2137
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2138
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2139
    goto/16 :goto_31

    .line 2140
    :cond_9a
    const-string v0, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2142
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v0

    .line 2143
    .local v0, "enable":Z
    invoke-virtual {p0, v0}, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaNetwork$Stub;->setScanSsid(Z)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v3

    .line 2144
    .restart local v3    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2145
    invoke-virtual {v3, p3}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2146
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2147
    goto/16 :goto_31

    .line 2110
    .end local v0    # "enable":Z
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :pswitch_44
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_9b

    goto :goto_2e

    :cond_9b
    move v2, v1

    .line 2111
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_2e
    if-eqz v2, :cond_9c

    .line 2112
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2113
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2114
    goto/16 :goto_31

    .line 2115
    :cond_9c
    const-string v0, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2117
    const/4 v0, 0x6

    new-array v3, v0, [B

    .line 2119
    .local v3, "bssid":[B
    const-wide/16 v4, 0x6

    invoke-virtual {p2, v4, v5}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v4

    .line 2121
    .restart local v4    # "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v5, 0x0

    .line 2122
    .restart local v5    # "_hidl_array_offset_0":J
    invoke-virtual {v4, v5, v6, v3, v0}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 2123
    nop

    .line 2126
    .end local v4    # "_hidl_blob":Landroid/os/HwBlob;
    .end local v5    # "_hidl_array_offset_0":J
    invoke-virtual {p0, v3}, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaNetwork$Stub;->setBssid([B)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v0

    .line 2127
    .local v0, "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2128
    invoke-virtual {v0, p3}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2129
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2130
    goto/16 :goto_31

    .line 2093
    .end local v0    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "bssid":[B
    :pswitch_45
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_9d

    goto :goto_2f

    :cond_9d
    move v2, v1

    .line 2094
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_2f
    if-eqz v2, :cond_9e

    .line 2095
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2096
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2097
    goto/16 :goto_31

    .line 2098
    :cond_9e
    const-string v0, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2100
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v0

    .line 2101
    .local v0, "ssid":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {p0, v0}, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaNetwork$Stub;->setSsid(Ljava/util/ArrayList;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v3

    .line 2102
    .local v3, "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2103
    invoke-virtual {v3, p3}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2104
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2105
    goto/16 :goto_31

    .line 2076
    .end local v0    # "ssid":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :pswitch_46
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_9f

    goto :goto_30

    :cond_9f
    move v2, v1

    .line 2077
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_30
    if-eqz v2, :cond_a0

    .line 2078
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2079
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2080
    goto/16 :goto_31

    .line 2081
    :cond_a0
    const-string v0, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2083
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetworkCallback;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetworkCallback;

    move-result-object v0

    .line 2084
    .local v0, "callback":Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetworkCallback;
    invoke-virtual {p0, v0}, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaNetwork$Stub;->registerCallback(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetworkCallback;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v3

    .line 2085
    .restart local v3    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2086
    invoke-virtual {v3, p3}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2087
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2088
    goto :goto_31

    .line 2056
    .end local v0    # "callback":Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetworkCallback;
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :pswitch_47
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_a1

    move v1, v2

    nop

    .line 2057
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_a1
    if-eqz v1, :cond_a2

    .line 2058
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2059
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2060
    goto :goto_31

    .line 2061
    :cond_a2
    const-string v0, "android.hardware.wifi.supplicant@1.0::ISupplicantNetwork"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2063
    new-instance v0, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaNetwork$Stub$3;

    invoke-direct {v0, p0, p3}, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaNetwork$Stub$3;-><init>(Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaNetwork$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0}, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaNetwork$Stub;->getType(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantNetwork$getTypeCallback;)V

    .line 2071
    goto :goto_31

    .line 2036
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_48
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_a3

    move v1, v2

    nop

    .line 2037
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_a3
    if-eqz v1, :cond_a4

    .line 2038
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2039
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2040
    goto :goto_31

    .line 2041
    :cond_a4
    const-string v0, "android.hardware.wifi.supplicant@1.0::ISupplicantNetwork"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2043
    new-instance v0, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaNetwork$Stub$2;

    invoke-direct {v0, p0, p3}, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaNetwork$Stub$2;-><init>(Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaNetwork$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0}, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaNetwork$Stub;->getInterfaceName(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantNetwork$getInterfaceNameCallback;)V

    .line 2051
    goto :goto_31

    .line 2016
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_49
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_a5

    move v1, v2

    nop

    .line 2017
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_a5
    if-eqz v1, :cond_a6

    .line 2018
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2019
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2020
    goto :goto_31

    .line 2021
    :cond_a6
    const-string v0, "android.hardware.wifi.supplicant@1.0::ISupplicantNetwork"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2023
    new-instance v0, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaNetwork$Stub$1;

    invoke-direct {v0, p0, p3}, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaNetwork$Stub$1;-><init>(Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaNetwork$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0}, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaNetwork$Stub;->getId(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantNetwork$getIdCallback;)V

    .line 2031
    nop

    .line 3565
    .end local v1    # "_hidl_is_oneway":Z
    :cond_a7
    :goto_31
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
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

    .line 1969
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 1
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 1995
    const-string v0, "android.hardware.wifi.supplicant@1.1::ISupplicantStaNetwork"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1996
    return-object p0

    .line 1998
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

    .line 2002
    invoke-virtual {p0, p1}, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaNetwork$Stub;->registerService(Ljava/lang/String;)V

    .line 2003
    return-void
.end method

.method public final setHALInstrumentation()V
    .locals 0

    .line 1960
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 2007
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaNetwork$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 1989
    const/4 v0, 0x1

    return v0
.end method
