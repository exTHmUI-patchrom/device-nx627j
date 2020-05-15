.class public abstract Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$Stub;
.super Landroid/os/HwBinder;
.source "ISupplicantStaIfaceCallback.java"

# interfaces
.implements Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3054
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .locals 0

    .line 3057
    return-object p0
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .locals 3

    .line 3099
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 3100
    .local v0, "info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 3101
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 3102
    const/4 v1, 0x0

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    .line 3103
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

    .line 3075
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
        -0x29t
        -0x7ft
        -0x38t
        -0x29t
        -0x19t
        -0x4dt
        -0x2t
        0x5ct
        -0x36t
        -0x74t
        -0xat
        -0x1ft
        -0x28t
        -0x80t
        0x6et
        0x77t
        0x9t
        -0x7et
        -0x52t
        0x53t
        0x58t
        -0x39t
        -0x7ft
        0x6et
        -0x2bt
        0x1bt
        0xft
        0xet
        -0x3et
        0x72t
        -0x19t
        0xdt
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

    .line 3062
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantStaIfaceCallback"

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

    .line 3069
    const-string v0, "android.hardware.wifi.supplicant@1.0::ISupplicantStaIfaceCallback"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 1
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .line 3088
    const/4 v0, 0x1

    return v0
.end method

.method public final notifySyspropsChanged()V
    .locals 0

    .line 3108
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 3109
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

    .line 3137
    const-wide/16 v0, 0x6

    const/4 v2, 0x6

    const/high16 v3, -0x80000000

    const/4 v4, 0x0

    const/4 v5, 0x1

    packed-switch p1, :pswitch_data_0

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_7

    .line 3622
    :sswitch_0
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_0

    move v4, v5

    nop

    :cond_0
    move v0, v4

    .line 3623
    .local v0, "_hidl_is_oneway":Z
    if-eqz v0, :cond_35

    .line 3624
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3625
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3626
    goto/16 :goto_7

    .line 3609
    .end local v0    # "_hidl_is_oneway":Z
    :sswitch_1
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1

    move v4, v5

    nop

    :cond_1
    move v0, v4

    .line 3610
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_2

    .line 3611
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3612
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3613
    goto/16 :goto_7

    .line 3614
    :cond_2
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3616
    invoke-virtual {p0}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$Stub;->notifySyspropsChanged()V

    .line 3617
    goto/16 :goto_7

    .line 3593
    .end local v0    # "_hidl_is_oneway":Z
    :sswitch_2
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    move v5, v4

    :goto_0
    move v0, v5

    .line 3594
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_4

    .line 3595
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3596
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3597
    goto/16 :goto_7

    .line 3598
    :cond_4
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3600
    invoke-virtual {p0}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object v1

    .line 3601
    .local v1, "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3602
    invoke-virtual {v1, p3}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3603
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3604
    goto/16 :goto_7

    .line 3578
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    :sswitch_3
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_5

    goto :goto_1

    :cond_5
    move v5, v4

    :goto_1
    move v0, v5

    .line 3579
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_6

    .line 3580
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3581
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3582
    goto/16 :goto_7

    .line 3583
    :cond_6
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3585
    invoke-virtual {p0}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$Stub;->ping()V

    .line 3586
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3587
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3588
    goto/16 :goto_7

    .line 3568
    .end local v0    # "_hidl_is_oneway":Z
    :sswitch_4
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_7

    move v4, v5

    nop

    :cond_7
    move v0, v4

    .line 3569
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_35

    .line 3570
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3571
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3572
    goto/16 :goto_7

    .line 3555
    .end local v0    # "_hidl_is_oneway":Z
    :sswitch_5
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_8

    move v4, v5

    nop

    :cond_8
    move v0, v4

    .line 3556
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_9

    .line 3557
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3558
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3559
    goto/16 :goto_7

    .line 3560
    :cond_9
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3562
    invoke-virtual {p0}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$Stub;->setHALInstrumentation()V

    .line 3563
    goto/16 :goto_7

    .line 3522
    .end local v0    # "_hidl_is_oneway":Z
    :sswitch_6
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_a

    goto :goto_2

    :cond_a
    move v5, v4

    :goto_2
    move v0, v5

    .line 3523
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_b

    .line 3524
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3525
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3526
    goto/16 :goto_7

    .line 3527
    :cond_b
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3529
    invoke-virtual {p0}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v1

    .line 3530
    .local v1, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3532
    new-instance v2, Landroid/os/HwBlob;

    const/16 v3, 0x10

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 3534
    .local v2, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 3535
    .local v3, "_hidl_vec_size":I
    const-wide/16 v5, 0x8

    invoke-virtual {v2, v5, v6, v3}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 3536
    const-wide/16 v5, 0xc

    invoke-virtual {v2, v5, v6, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 3537
    new-instance v5, Landroid/os/HwBlob;

    mul-int/lit8 v6, v3, 0x20

    invoke-direct {v5, v6}, Landroid/os/HwBlob;-><init>(I)V

    .line 3538
    .local v5, "childBlob":Landroid/os/HwBlob;
    nop

    .local v4, "_hidl_index_0":I
    :goto_3
    if-ge v4, v3, :cond_c

    .line 3540
    mul-int/lit8 v6, v4, 0x20

    int-to-long v6, v6

    .line 3541
    .local v6, "_hidl_array_offset_1":J
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 3542
    nop

    .line 3538
    .end local v6    # "_hidl_array_offset_1":J
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 3545
    .end local v4    # "_hidl_index_0":I
    :cond_c
    const-wide/16 v6, 0x0

    invoke-virtual {v2, v6, v7, v5}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 3547
    .end local v3    # "_hidl_vec_size":I
    .end local v5    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 3549
    .end local v2    # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3550
    goto/16 :goto_7

    .line 3506
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :sswitch_7
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_d

    goto :goto_4

    :cond_d
    move v5, v4

    :goto_4
    move v0, v5

    .line 3507
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_e

    .line 3508
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3509
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3510
    goto/16 :goto_7

    .line 3511
    :cond_e
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3513
    invoke-virtual {p0}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v1

    .line 3514
    .local v1, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3515
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 3516
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3517
    goto/16 :goto_7

    .line 3492
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "_hidl_out_descriptor":Ljava/lang/String;
    :sswitch_8
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_f

    goto :goto_5

    :cond_f
    move v5, v4

    :goto_5
    move v0, v5

    .line 3493
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_10

    .line 3494
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3495
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3496
    goto/16 :goto_7

    .line 3497
    :cond_10
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3499
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3500
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3501
    goto/16 :goto_7

    .line 3476
    .end local v0    # "_hidl_is_oneway":Z
    :sswitch_9
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_11

    goto :goto_6

    :cond_11
    move v5, v4

    :goto_6
    move v0, v5

    .line 3477
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_12

    .line 3478
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3479
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3480
    goto/16 :goto_7

    .line 3481
    :cond_12
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3483
    invoke-virtual {p0}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v1

    .line 3484
    .local v1, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3485
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 3486
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3487
    goto/16 :goto_7

    .line 3462
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :pswitch_0
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_13

    move v4, v5

    nop

    :cond_13
    move v0, v4

    .line 3463
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_14

    .line 3464
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3465
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3466
    goto/16 :goto_7

    .line 3467
    :cond_14
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantStaIfaceCallback"

    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3469
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3470
    .local v1, "id":I
    invoke-virtual {p0, v1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$Stub;->onExtRadioWorkTimeout(I)V

    .line 3471
    goto/16 :goto_7

    .line 3448
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "id":I
    :pswitch_1
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_15

    move v4, v5

    nop

    :cond_15
    move v0, v4

    .line 3449
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_16

    .line 3450
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3451
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3452
    goto/16 :goto_7

    .line 3453
    :cond_16
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantStaIfaceCallback"

    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3455
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3456
    .restart local v1    # "id":I
    invoke-virtual {p0, v1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$Stub;->onExtRadioWorkStart(I)V

    .line 3457
    goto/16 :goto_7

    .line 3435
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "id":I
    :pswitch_2
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_17

    move v4, v5

    nop

    :cond_17
    move v0, v4

    .line 3436
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_18

    .line 3437
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3438
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3439
    goto/16 :goto_7

    .line 3440
    :cond_18
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantStaIfaceCallback"

    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3442
    invoke-virtual {p0}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$Stub;->onWpsEventPbcOverlap()V

    .line 3443
    goto/16 :goto_7

    .line 3411
    .end local v0    # "_hidl_is_oneway":Z
    :pswitch_3
    and-int/lit8 v6, p4, 0x1

    if-eqz v6, :cond_19

    move v4, v5

    nop

    .line 3412
    .local v4, "_hidl_is_oneway":Z
    :cond_19
    if-eq v4, v5, :cond_1a

    .line 3413
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3414
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3415
    goto/16 :goto_7

    .line 3416
    :cond_1a
    const-string v3, "android.hardware.wifi.supplicant@1.0::ISupplicantStaIfaceCallback"

    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3418
    new-array v3, v2, [B

    .line 3420
    .local v3, "bssid":[B
    invoke-virtual {p2, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 3422
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v5, 0x0

    .line 3423
    .local v5, "_hidl_array_offset_0":J
    invoke-virtual {v0, v5, v6, v3, v2}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 3424
    nop

    .line 3427
    .end local v0    # "_hidl_blob":Landroid/os/HwBlob;
    .end local v5    # "_hidl_array_offset_0":J
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    move-result v0

    .line 3428
    .local v0, "configError":S
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    move-result v1

    .line 3429
    .local v1, "errorInd":S
    invoke-virtual {p0, v3, v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$Stub;->onWpsEventFail([BSS)V

    .line 3430
    goto/16 :goto_7

    .line 3398
    .end local v0    # "configError":S
    .end local v1    # "errorInd":S
    .end local v3    # "bssid":[B
    .end local v4    # "_hidl_is_oneway":Z
    :pswitch_4
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1b

    move v4, v5

    nop

    :cond_1b
    move v0, v4

    .line 3399
    .local v0, "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_1c

    .line 3400
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3401
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3402
    goto/16 :goto_7

    .line 3403
    :cond_1c
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantStaIfaceCallback"

    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3405
    invoke-virtual {p0}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$Stub;->onWpsEventSuccess()V

    .line 3406
    goto/16 :goto_7

    .line 3375
    .end local v0    # "_hidl_is_oneway":Z
    :pswitch_5
    and-int/lit8 v6, p4, 0x1

    if-eqz v6, :cond_1d

    move v4, v5

    nop

    .line 3376
    .restart local v4    # "_hidl_is_oneway":Z
    :cond_1d
    if-eq v4, v5, :cond_1e

    .line 3377
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3378
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3379
    goto/16 :goto_7

    .line 3380
    :cond_1e
    const-string v3, "android.hardware.wifi.supplicant@1.0::ISupplicantStaIfaceCallback"

    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3382
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8()B

    move-result v3

    .line 3383
    .local v3, "reason":B
    new-array v5, v2, [B

    .line 3385
    .local v5, "bssid":[B
    invoke-virtual {p2, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 3387
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v6, 0x0

    .line 3388
    .local v6, "_hidl_array_offset_0":J
    invoke-virtual {v0, v6, v7, v5, v2}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 3389
    nop

    .line 3392
    .end local v0    # "_hidl_blob":Landroid/os/HwBlob;
    .end local v6    # "_hidl_array_offset_0":J
    invoke-virtual {p0, v3, v5}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$Stub;->onBssidChanged(B[B)V

    .line 3393
    goto/16 :goto_7

    .line 3362
    .end local v3    # "reason":B
    .end local v4    # "_hidl_is_oneway":Z
    .end local v5    # "bssid":[B
    :pswitch_6
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1f

    move v4, v5

    nop

    :cond_1f
    move v0, v4

    .line 3363
    .local v0, "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_20

    .line 3364
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3365
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3366
    goto/16 :goto_7

    .line 3367
    :cond_20
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantStaIfaceCallback"

    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3369
    invoke-virtual {p0}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$Stub;->onEapFailure()V

    .line 3370
    goto/16 :goto_7

    .line 3340
    .end local v0    # "_hidl_is_oneway":Z
    :pswitch_7
    and-int/lit8 v6, p4, 0x1

    if-eqz v6, :cond_21

    move v4, v5

    nop

    .line 3341
    .restart local v4    # "_hidl_is_oneway":Z
    :cond_21
    if-eq v4, v5, :cond_22

    .line 3342
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3343
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3344
    goto/16 :goto_7

    .line 3345
    :cond_22
    const-string v3, "android.hardware.wifi.supplicant@1.0::ISupplicantStaIfaceCallback"

    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3347
    new-array v3, v2, [B

    .line 3349
    .local v3, "bssid":[B
    invoke-virtual {p2, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 3351
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v5, 0x0

    .line 3352
    .local v5, "_hidl_array_offset_0":J
    invoke-virtual {v0, v5, v6, v3, v2}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 3353
    nop

    .line 3356
    .end local v0    # "_hidl_blob":Landroid/os/HwBlob;
    .end local v5    # "_hidl_array_offset_0":J
    invoke-virtual {p0, v3}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$Stub;->onAuthenticationTimeout([B)V

    .line 3357
    goto/16 :goto_7

    .line 3316
    .end local v3    # "bssid":[B
    .end local v4    # "_hidl_is_oneway":Z
    :pswitch_8
    and-int/lit8 v6, p4, 0x1

    if-eqz v6, :cond_23

    move v4, v5

    nop

    .line 3317
    .restart local v4    # "_hidl_is_oneway":Z
    :cond_23
    if-eq v4, v5, :cond_24

    .line 3318
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3319
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3320
    goto/16 :goto_7

    .line 3321
    :cond_24
    const-string v3, "android.hardware.wifi.supplicant@1.0::ISupplicantStaIfaceCallback"

    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3323
    new-array v3, v2, [B

    .line 3325
    .restart local v3    # "bssid":[B
    invoke-virtual {p2, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 3327
    .restart local v0    # "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v5, 0x0

    .line 3328
    .restart local v5    # "_hidl_array_offset_0":J
    invoke-virtual {v0, v5, v6, v3, v2}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 3329
    nop

    .line 3332
    .end local v0    # "_hidl_blob":Landroid/os/HwBlob;
    .end local v5    # "_hidl_array_offset_0":J
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3333
    .local v0, "statusCode":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 3334
    .local v1, "timedOut":Z
    invoke-virtual {p0, v3, v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$Stub;->onAssociationRejected([BIZ)V

    .line 3335
    goto/16 :goto_7

    .line 3292
    .end local v0    # "statusCode":I
    .end local v1    # "timedOut":Z
    .end local v3    # "bssid":[B
    .end local v4    # "_hidl_is_oneway":Z
    :pswitch_9
    and-int/lit8 v6, p4, 0x1

    if-eqz v6, :cond_25

    move v4, v5

    nop

    .line 3293
    .restart local v4    # "_hidl_is_oneway":Z
    :cond_25
    if-eq v4, v5, :cond_26

    .line 3294
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3295
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3296
    goto/16 :goto_7

    .line 3297
    :cond_26
    const-string v3, "android.hardware.wifi.supplicant@1.0::ISupplicantStaIfaceCallback"

    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3299
    new-array v3, v2, [B

    .line 3301
    .restart local v3    # "bssid":[B
    invoke-virtual {p2, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 3303
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v5, 0x0

    .line 3304
    .restart local v5    # "_hidl_array_offset_0":J
    invoke-virtual {v0, v5, v6, v3, v2}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 3305
    nop

    .line 3308
    .end local v0    # "_hidl_blob":Landroid/os/HwBlob;
    .end local v5    # "_hidl_array_offset_0":J
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v0

    .line 3309
    .local v0, "locallyGenerated":Z
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3310
    .local v1, "reasonCode":I
    invoke-virtual {p0, v3, v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$Stub;->onDisconnected([BZI)V

    .line 3311
    goto/16 :goto_7

    .line 3267
    .end local v0    # "locallyGenerated":Z
    .end local v1    # "reasonCode":I
    .end local v3    # "bssid":[B
    .end local v4    # "_hidl_is_oneway":Z
    :pswitch_a
    and-int/lit8 v6, p4, 0x1

    if-eqz v6, :cond_27

    move v4, v5

    nop

    .line 3268
    .restart local v4    # "_hidl_is_oneway":Z
    :cond_27
    if-eq v4, v5, :cond_28

    .line 3269
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3270
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3271
    goto/16 :goto_7

    .line 3272
    :cond_28
    const-string v3, "android.hardware.wifi.supplicant@1.0::ISupplicantStaIfaceCallback"

    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3274
    new-array v3, v2, [B

    .line 3276
    .restart local v3    # "bssid":[B
    invoke-virtual {p2, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 3278
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v5, 0x0

    .line 3279
    .restart local v5    # "_hidl_array_offset_0":J
    invoke-virtual {v0, v5, v6, v3, v2}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 3280
    nop

    .line 3283
    .end local v0    # "_hidl_blob":Landroid/os/HwBlob;
    .end local v5    # "_hidl_array_offset_0":J
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3284
    .local v0, "reasonCode":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3285
    .local v1, "reAuthDelayInSec":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3286
    .local v2, "url":Ljava/lang/String;
    invoke-virtual {p0, v3, v0, v1, v2}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$Stub;->onHs20DeauthImminentNotice([BIILjava/lang/String;)V

    .line 3287
    goto/16 :goto_7

    .line 3243
    .end local v0    # "reasonCode":I
    .end local v1    # "reAuthDelayInSec":I
    .end local v2    # "url":Ljava/lang/String;
    .end local v3    # "bssid":[B
    .end local v4    # "_hidl_is_oneway":Z
    :pswitch_b
    and-int/lit8 v6, p4, 0x1

    if-eqz v6, :cond_29

    move v4, v5

    nop

    .line 3244
    .restart local v4    # "_hidl_is_oneway":Z
    :cond_29
    if-eq v4, v5, :cond_2a

    .line 3245
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3246
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3247
    goto/16 :goto_7

    .line 3248
    :cond_2a
    const-string v3, "android.hardware.wifi.supplicant@1.0::ISupplicantStaIfaceCallback"

    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3250
    new-array v3, v2, [B

    .line 3252
    .restart local v3    # "bssid":[B
    invoke-virtual {p2, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 3254
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v5, 0x0

    .line 3255
    .restart local v5    # "_hidl_array_offset_0":J
    invoke-virtual {v0, v5, v6, v3, v2}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 3256
    nop

    .line 3259
    .end local v0    # "_hidl_blob":Landroid/os/HwBlob;
    .end local v5    # "_hidl_array_offset_0":J
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8()B

    move-result v0

    .line 3260
    .local v0, "osuMethod":B
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3261
    .local v1, "url":Ljava/lang/String;
    invoke-virtual {p0, v3, v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$Stub;->onHs20SubscriptionRemediation([BBLjava/lang/String;)V

    .line 3262
    goto/16 :goto_7

    .line 3219
    .end local v0    # "osuMethod":B
    .end local v1    # "url":Ljava/lang/String;
    .end local v3    # "bssid":[B
    .end local v4    # "_hidl_is_oneway":Z
    :pswitch_c
    and-int/lit8 v6, p4, 0x1

    if-eqz v6, :cond_2b

    move v4, v5

    nop

    .line 3220
    .restart local v4    # "_hidl_is_oneway":Z
    :cond_2b
    if-eq v4, v5, :cond_2c

    .line 3221
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3222
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3223
    goto/16 :goto_7

    .line 3224
    :cond_2c
    const-string v3, "android.hardware.wifi.supplicant@1.0::ISupplicantStaIfaceCallback"

    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3226
    new-array v3, v2, [B

    .line 3228
    .restart local v3    # "bssid":[B
    invoke-virtual {p2, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 3230
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v5, 0x0

    .line 3231
    .restart local v5    # "_hidl_array_offset_0":J
    invoke-virtual {v0, v5, v6, v3, v2}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 3232
    nop

    .line 3235
    .end local v0    # "_hidl_blob":Landroid/os/HwBlob;
    .end local v5    # "_hidl_array_offset_0":J
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 3236
    .local v0, "fileName":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 3237
    .local v1, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {p0, v3, v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$Stub;->onHs20IconQueryDone([BLjava/lang/String;Ljava/util/ArrayList;)V

    .line 3238
    goto/16 :goto_7

    .line 3193
    .end local v0    # "fileName":Ljava/lang/String;
    .end local v1    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    .end local v3    # "bssid":[B
    .end local v4    # "_hidl_is_oneway":Z
    :pswitch_d
    and-int/lit8 v6, p4, 0x1

    if-eqz v6, :cond_2d

    move v4, v5

    nop

    .line 3194
    .restart local v4    # "_hidl_is_oneway":Z
    :cond_2d
    if-eq v4, v5, :cond_2e

    .line 3195
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3196
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3197
    goto/16 :goto_7

    .line 3198
    :cond_2e
    const-string v3, "android.hardware.wifi.supplicant@1.0::ISupplicantStaIfaceCallback"

    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3200
    new-array v3, v2, [B

    .line 3202
    .restart local v3    # "bssid":[B
    invoke-virtual {p2, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 3204
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v5, 0x0

    .line 3205
    .restart local v5    # "_hidl_array_offset_0":J
    invoke-virtual {v0, v5, v6, v3, v2}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 3206
    nop

    .line 3209
    .end local v0    # "_hidl_blob":Landroid/os/HwBlob;
    .end local v5    # "_hidl_array_offset_0":J
    new-instance v0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$AnqpData;

    invoke-direct {v0}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$AnqpData;-><init>()V

    .line 3210
    .local v0, "data":Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$AnqpData;
    invoke-virtual {v0, p2}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$AnqpData;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3211
    new-instance v1, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$Hs20AnqpData;

    invoke-direct {v1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$Hs20AnqpData;-><init>()V

    .line 3212
    .local v1, "hs20Data":Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$Hs20AnqpData;
    invoke-virtual {v1, p2}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$Hs20AnqpData;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3213
    invoke-virtual {p0, v3, v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$Stub;->onAnqpQueryDone([BLandroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$AnqpData;Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$Hs20AnqpData;)V

    .line 3214
    goto/16 :goto_7

    .line 3168
    .end local v0    # "data":Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$AnqpData;
    .end local v1    # "hs20Data":Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$Hs20AnqpData;
    .end local v3    # "bssid":[B
    .end local v4    # "_hidl_is_oneway":Z
    :pswitch_e
    and-int/lit8 v6, p4, 0x1

    if-eqz v6, :cond_2f

    move v4, v5

    nop

    .line 3169
    .restart local v4    # "_hidl_is_oneway":Z
    :cond_2f
    if-eq v4, v5, :cond_30

    .line 3170
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3171
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3172
    goto :goto_7

    .line 3173
    :cond_30
    const-string v3, "android.hardware.wifi.supplicant@1.0::ISupplicantStaIfaceCallback"

    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3175
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 3176
    .local v3, "newState":I
    new-array v5, v2, [B

    .line 3178
    .local v5, "bssid":[B
    invoke-virtual {p2, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 3180
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v6, 0x0

    .line 3181
    .restart local v6    # "_hidl_array_offset_0":J
    invoke-virtual {v0, v6, v7, v5, v2}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 3182
    nop

    .line 3185
    .end local v0    # "_hidl_blob":Landroid/os/HwBlob;
    .end local v6    # "_hidl_array_offset_0":J
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3186
    .local v0, "id":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 3187
    .local v1, "ssid":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {p0, v3, v5, v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$Stub;->onStateChanged(I[BILjava/util/ArrayList;)V

    .line 3188
    goto :goto_7

    .line 3154
    .end local v0    # "id":I
    .end local v1    # "ssid":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    .end local v3    # "newState":I
    .end local v4    # "_hidl_is_oneway":Z
    .end local v5    # "bssid":[B
    :pswitch_f
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_31

    move v4, v5

    nop

    :cond_31
    move v0, v4

    .line 3155
    .local v0, "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_32

    .line 3156
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3157
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3158
    goto :goto_7

    .line 3159
    :cond_32
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantStaIfaceCallback"

    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3161
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3162
    .local v1, "id":I
    invoke-virtual {p0, v1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$Stub;->onNetworkRemoved(I)V

    .line 3163
    goto :goto_7

    .line 3140
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "id":I
    :pswitch_10
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_33

    move v4, v5

    nop

    :cond_33
    move v0, v4

    .line 3141
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_34

    .line 3142
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3143
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3144
    goto :goto_7

    .line 3145
    :cond_34
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantStaIfaceCallback"

    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3147
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3148
    .restart local v1    # "id":I
    invoke-virtual {p0, v1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$Stub;->onNetworkAdded(I)V

    .line 3149
    nop

    .line 3631
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "id":I
    :cond_35
    :goto_7
    return-void

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 3093
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 1
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 3119
    const-string v0, "android.hardware.wifi.supplicant@1.0::ISupplicantStaIfaceCallback"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3120
    return-object p0

    .line 3122
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

    .line 3126
    invoke-virtual {p0, p1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$Stub;->registerService(Ljava/lang/String;)V

    .line 3127
    return-void
.end method

.method public final setHALInstrumentation()V
    .locals 0

    .line 3084
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 3131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 3113
    const/4 v0, 0x1

    return v0
.end method
