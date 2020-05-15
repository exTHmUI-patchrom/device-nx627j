.class public abstract Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub;
.super Landroid/os/HwBinder;
.source "ISupplicantP2pIface.java"

# interfaces
.implements Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2354
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .locals 0

    .line 2357
    return-object p0
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .locals 3

    .line 2401
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 2402
    .local v0, "info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 2403
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 2404
    const/4 v1, 0x0

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    .line 2405
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

    .line 2376
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
        0x49t
        0x7t
        0x41t
        0x3t
        0x38t
        -0x3bt
        -0x18t
        -0x25t
        -0x12t
        -0x3ct
        -0x4bt
        -0x13t
        -0x3et
        0x60t
        -0x72t
        -0x5dt
        0x23t
        -0xbt
        0x56t
        0x19t
        0x45t
        -0x8t
        -0x7ft
        0xat
        -0x8t
        0x18t
        0x10t
        -0x3ct
        0x7bt
        0x1t
        -0x6ft
        -0x7ct
    .end array-data

    :array_1
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

    .line 2362
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    const-string v2, "android.hardware.wifi.supplicant@1.0::ISupplicantIface"

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

    .line 2370
    const-string v0, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 1
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .line 2390
    const/4 v0, 0x1

    return v0
.end method

.method public final notifySyspropsChanged()V
    .locals 0

    .line 2410
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 2411
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

    move-object/from16 v8, p0

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    .line 2439
    const-wide/16 v0, 0x8

    const-wide/16 v2, 0x6

    const/4 v4, 0x6

    const/high16 v5, -0x80000000

    const/4 v6, 0x0

    const/4 v7, 0x1

    packed-switch p1, :pswitch_data_0

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_2f

    .line 3662
    :sswitch_0
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_0

    move v6, v7

    nop

    :cond_0
    move v0, v6

    .line 3663
    .local v0, "_hidl_is_oneway":Z
    if-eqz v0, :cond_7d

    .line 3664
    invoke-virtual {v10, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3665
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3666
    goto/16 :goto_2f

    .line 3649
    .end local v0    # "_hidl_is_oneway":Z
    :sswitch_1
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1

    move v6, v7

    nop

    :cond_1
    move v0, v6

    .line 3650
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_2

    .line 3651
    invoke-virtual {v10, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3652
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3653
    goto/16 :goto_2f

    .line 3654
    :cond_2
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v9, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3656
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub;->notifySyspropsChanged()V

    .line 3657
    goto/16 :goto_2f

    .line 3633
    .end local v0    # "_hidl_is_oneway":Z
    :sswitch_2
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    move v7, v6

    :goto_0
    move v0, v7

    .line 3634
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_4

    .line 3635
    invoke-virtual {v10, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3636
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3637
    goto/16 :goto_2f

    .line 3638
    :cond_4
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v9, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3640
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object v1

    .line 3641
    .local v1, "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-virtual {v10, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3642
    invoke-virtual {v1, v10}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3643
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3644
    goto/16 :goto_2f

    .line 3618
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

    .line 3619
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_6

    .line 3620
    invoke-virtual {v10, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3621
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3622
    goto/16 :goto_2f

    .line 3623
    :cond_6
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v9, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3625
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub;->ping()V

    .line 3626
    invoke-virtual {v10, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3627
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3628
    goto/16 :goto_2f

    .line 3608
    .end local v0    # "_hidl_is_oneway":Z
    :sswitch_4
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_7

    move v6, v7

    nop

    :cond_7
    move v0, v6

    .line 3609
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_7d

    .line 3610
    invoke-virtual {v10, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3611
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3612
    goto/16 :goto_2f

    .line 3595
    .end local v0    # "_hidl_is_oneway":Z
    :sswitch_5
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_8

    move v6, v7

    nop

    :cond_8
    move v0, v6

    .line 3596
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_9

    .line 3597
    invoke-virtual {v10, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3598
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3599
    goto/16 :goto_2f

    .line 3600
    :cond_9
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v9, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3602
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub;->setHALInstrumentation()V

    .line 3603
    goto/16 :goto_2f

    .line 3562
    .end local v0    # "_hidl_is_oneway":Z
    :sswitch_6
    and-int/lit8 v2, p4, 0x1

    if-eqz v2, :cond_a

    goto :goto_2

    :cond_a
    move v7, v6

    :goto_2
    move v2, v7

    .line 3563
    .local v2, "_hidl_is_oneway":Z
    if-eqz v2, :cond_b

    .line 3564
    invoke-virtual {v10, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3565
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3566
    goto/16 :goto_2f

    .line 3567
    :cond_b
    const-string v3, "android.hidl.base@1.0::IBase"

    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3569
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v3

    .line 3570
    .local v3, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {v10, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3572
    new-instance v4, Landroid/os/HwBlob;

    const/16 v5, 0x10

    invoke-direct {v4, v5}, Landroid/os/HwBlob;-><init>(I)V

    .line 3574
    .local v4, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 3575
    .local v5, "_hidl_vec_size":I
    invoke-virtual {v4, v0, v1, v5}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 3576
    const-wide/16 v0, 0xc

    invoke-virtual {v4, v0, v1, v6}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 3577
    new-instance v0, Landroid/os/HwBlob;

    mul-int/lit8 v1, v5, 0x20

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 3578
    .local v0, "childBlob":Landroid/os/HwBlob;
    nop

    .local v6, "_hidl_index_0":I
    :goto_3
    move v1, v6

    .end local v6    # "_hidl_index_0":I
    .local v1, "_hidl_index_0":I
    if-ge v1, v5, :cond_c

    .line 3580
    mul-int/lit8 v6, v1, 0x20

    int-to-long v6, v6

    .line 3581
    .local v6, "_hidl_array_offset_1":J
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [B

    invoke-virtual {v0, v6, v7, v11}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 3582
    nop

    .line 3578
    .end local v6    # "_hidl_array_offset_1":J
    add-int/lit8 v6, v1, 0x1

    .end local v1    # "_hidl_index_0":I
    .local v6, "_hidl_index_0":I
    goto :goto_3

    .line 3585
    .end local v6    # "_hidl_index_0":I
    :cond_c
    const-wide/16 v6, 0x0

    invoke-virtual {v4, v6, v7, v0}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 3587
    .end local v0    # "childBlob":Landroid/os/HwBlob;
    .end local v5    # "_hidl_vec_size":I
    invoke-virtual {v10, v4}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 3589
    .end local v4    # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3590
    goto/16 :goto_2f

    .line 3546
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

    .line 3547
    .local v0, "_hidl_is_oneway":Z
    if-eqz v0, :cond_e

    .line 3548
    invoke-virtual {v10, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3549
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3550
    goto/16 :goto_2f

    .line 3551
    :cond_e
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v9, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3553
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v1

    .line 3554
    .local v1, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {v10, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3555
    invoke-virtual {v10, v1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 3556
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3557
    goto/16 :goto_2f

    .line 3532
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

    .line 3533
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_10

    .line 3534
    invoke-virtual {v10, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3535
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3536
    goto/16 :goto_2f

    .line 3537
    :cond_10
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v9, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3539
    invoke-virtual {v10, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3540
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3541
    goto/16 :goto_2f

    .line 3516
    .end local v0    # "_hidl_is_oneway":Z
    :sswitch_9
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_11

    goto :goto_6

    :cond_11
    move v7, v6

    :goto_6
    move v0, v7

    .line 3517
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_12

    .line 3518
    invoke-virtual {v10, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3519
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3520
    goto/16 :goto_2f

    .line 3521
    :cond_12
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v9, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3523
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v1

    .line 3524
    .local v1, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v10, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3525
    invoke-virtual {v10, v1}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 3526
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3527
    goto/16 :goto_2f

    .line 3500
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

    .line 3501
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_14

    .line 3502
    invoke-virtual {v10, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3503
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3504
    goto/16 :goto_2f

    .line 3505
    :cond_14
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    invoke-virtual {v9, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3507
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub;->saveConfig()Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v1

    .line 3508
    .local v1, "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {v10, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3509
    invoke-virtual {v1, v10}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3510
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3511
    goto/16 :goto_2f

    .line 3483
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :pswitch_1
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_15

    goto :goto_8

    :cond_15
    move v7, v6

    :goto_8
    move v0, v7

    .line 3484
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_16

    .line 3485
    invoke-virtual {v10, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3486
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3487
    goto/16 :goto_2f

    .line 3488
    :cond_16
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    invoke-virtual {v9, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3490
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 3491
    .local v1, "select":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {v8, v1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub;->reportNfcHandoverInitiation(Ljava/util/ArrayList;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    .line 3492
    .local v2, "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {v10, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3493
    invoke-virtual {v2, v10}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3494
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3495
    goto/16 :goto_2f

    .line 3466
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "select":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :pswitch_2
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_17

    goto :goto_9

    :cond_17
    move v7, v6

    :goto_9
    move v0, v7

    .line 3467
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_18

    .line 3468
    invoke-virtual {v10, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3469
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3470
    goto/16 :goto_2f

    .line 3471
    :cond_18
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    invoke-virtual {v9, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3473
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 3474
    .local v1, "request":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {v8, v1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub;->reportNfcHandoverResponse(Ljava/util/ArrayList;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    .line 3475
    .restart local v2    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {v10, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3476
    invoke-virtual {v2, v10}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3477
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3478
    goto/16 :goto_2f

    .line 3446
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "request":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :pswitch_3
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_19

    move v6, v7

    nop

    :cond_19
    move v0, v6

    .line 3447
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_1a

    .line 3448
    invoke-virtual {v10, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3449
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3450
    goto/16 :goto_2f

    .line 3451
    :cond_1a
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    invoke-virtual {v9, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3453
    new-instance v1, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub$13;

    invoke-direct {v1, v8, v10}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub$13;-><init>(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {v8, v1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub;->createNfcHandoverSelectMessage(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$createNfcHandoverSelectMessageCallback;)V

    .line 3461
    goto/16 :goto_2f

    .line 3426
    .end local v0    # "_hidl_is_oneway":Z
    :pswitch_4
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1b

    move v6, v7

    nop

    :cond_1b
    move v0, v6

    .line 3427
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_1c

    .line 3428
    invoke-virtual {v10, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3429
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3430
    goto/16 :goto_2f

    .line 3431
    :cond_1c
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    invoke-virtual {v9, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3433
    new-instance v1, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub$12;

    invoke-direct {v1, v8, v10}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub$12;-><init>(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {v8, v1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub;->createNfcHandoverRequestMessage(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$createNfcHandoverRequestMessageCallback;)V

    .line 3441
    goto/16 :goto_2f

    .line 3401
    .end local v0    # "_hidl_is_oneway":Z
    :pswitch_5
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1d

    goto :goto_a

    :cond_1d
    move v7, v6

    :goto_a
    move v0, v7

    .line 3402
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_1e

    .line 3403
    invoke-virtual {v10, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3404
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3405
    goto/16 :goto_2f

    .line 3406
    :cond_1e
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    invoke-virtual {v9, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3408
    new-array v1, v4, [B

    .line 3410
    .local v1, "info":[B
    invoke-virtual {v9, v2, v3}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v2

    .line 3412
    .local v2, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v11, 0x0

    .line 3413
    .local v11, "_hidl_array_offset_0":J
    invoke-virtual {v2, v11, v12, v1, v4}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 3414
    nop

    .line 3417
    .end local v2    # "_hidl_blob":Landroid/os/HwBlob;
    .end local v11    # "_hidl_array_offset_0":J
    invoke-virtual {v8, v1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub;->setWfdDeviceInfo([B)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    .line 3418
    .local v2, "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {v10, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3419
    invoke-virtual {v2, v10}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3420
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3421
    goto/16 :goto_2f

    .line 3384
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":[B
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :pswitch_6
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1f

    goto :goto_b

    :cond_1f
    move v7, v6

    :goto_b
    move v0, v7

    .line 3385
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_20

    .line 3386
    invoke-virtual {v10, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3387
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3388
    goto/16 :goto_2f

    .line 3389
    :cond_20
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    invoke-virtual {v9, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3391
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 3392
    .local v1, "enable":Z
    invoke-virtual {v8, v1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub;->enableWfd(Z)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    .line 3393
    .restart local v2    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {v10, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3394
    invoke-virtual {v2, v10}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3395
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3396
    goto/16 :goto_2f

    .line 3367
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "enable":Z
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :pswitch_7
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_21

    goto :goto_c

    :cond_21
    move v7, v6

    :goto_c
    move v0, v7

    .line 3368
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_22

    .line 3369
    invoke-virtual {v10, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3370
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3371
    goto/16 :goto_2f

    .line 3372
    :cond_22
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    invoke-virtual {v9, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3374
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3375
    .local v1, "groupIfName":Ljava/lang/String;
    invoke-virtual {v8, v1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub;->cancelWps(Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    .line 3376
    .restart local v2    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {v10, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3377
    invoke-virtual {v2, v10}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3378
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3379
    goto/16 :goto_2f

    .line 3337
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "groupIfName":Ljava/lang/String;
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :pswitch_8
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_23

    move v6, v7

    nop

    :cond_23
    move v0, v6

    .line 3338
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_24

    .line 3339
    invoke-virtual {v10, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3340
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3341
    goto/16 :goto_2f

    .line 3342
    :cond_24
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    invoke-virtual {v9, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3344
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3345
    .restart local v1    # "groupIfName":Ljava/lang/String;
    new-array v5, v4, [B

    .line 3347
    .local v5, "bssid":[B
    invoke-virtual {v9, v2, v3}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v2

    .line 3349
    .local v2, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v6, 0x0

    .line 3350
    .local v6, "_hidl_array_offset_0":J
    invoke-virtual {v2, v6, v7, v5, v4}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 3351
    nop

    .line 3354
    .end local v2    # "_hidl_blob":Landroid/os/HwBlob;
    .end local v6    # "_hidl_array_offset_0":J
    new-instance v2, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub$11;

    invoke-direct {v2, v8, v10}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub$11;-><init>(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {v8, v1, v5, v2}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub;->startWpsPinDisplay(Ljava/lang/String;[BLandroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$startWpsPinDisplayCallback;)V

    .line 3362
    goto/16 :goto_2f

    .line 3319
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "groupIfName":Ljava/lang/String;
    .end local v5    # "bssid":[B
    :pswitch_9
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_25

    goto :goto_d

    :cond_25
    move v7, v6

    :goto_d
    move v0, v7

    .line 3320
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_26

    .line 3321
    invoke-virtual {v10, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3322
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3323
    goto/16 :goto_2f

    .line 3324
    :cond_26
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    invoke-virtual {v9, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3326
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3327
    .restart local v1    # "groupIfName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3328
    .local v2, "pin":Ljava/lang/String;
    invoke-virtual {v8, v1, v2}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub;->startWpsPinKeypad(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v3

    .line 3329
    .local v3, "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {v10, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3330
    invoke-virtual {v3, v10}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3331
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3332
    goto/16 :goto_2f

    .line 3293
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "groupIfName":Ljava/lang/String;
    .end local v2    # "pin":Ljava/lang/String;
    .end local v3    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :pswitch_a
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_27

    goto :goto_e

    :cond_27
    move v7, v6

    :goto_e
    move v0, v7

    .line 3294
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_28

    .line 3295
    invoke-virtual {v10, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3296
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3297
    goto/16 :goto_2f

    .line 3298
    :cond_28
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    invoke-virtual {v9, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3300
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3301
    .restart local v1    # "groupIfName":Ljava/lang/String;
    new-array v5, v4, [B

    .line 3303
    .restart local v5    # "bssid":[B
    invoke-virtual {v9, v2, v3}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v2

    .line 3305
    .local v2, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v11, 0x0

    .line 3306
    .restart local v11    # "_hidl_array_offset_0":J
    invoke-virtual {v2, v11, v12, v5, v4}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 3307
    nop

    .line 3310
    .end local v2    # "_hidl_blob":Landroid/os/HwBlob;
    .end local v11    # "_hidl_array_offset_0":J
    invoke-virtual {v8, v1, v5}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub;->startWpsPbc(Ljava/lang/String;[B)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    .line 3311
    .local v2, "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {v10, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3312
    invoke-virtual {v2, v10}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3313
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3314
    goto/16 :goto_2f

    .line 3276
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "groupIfName":Ljava/lang/String;
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .end local v5    # "bssid":[B
    :pswitch_b
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_29

    goto :goto_f

    :cond_29
    move v7, v6

    :goto_f
    move v0, v7

    .line 3277
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_2a

    .line 3278
    invoke-virtual {v10, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3279
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3280
    goto/16 :goto_2f

    .line 3281
    :cond_2a
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    invoke-virtual {v9, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3283
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8()B

    move-result v1

    .line 3284
    .local v1, "mode":B
    invoke-virtual {v8, v1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub;->setMiracastMode(B)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    .line 3285
    .restart local v2    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {v10, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3286
    invoke-virtual {v2, v10}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3287
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3288
    goto/16 :goto_2f

    .line 3259
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "mode":B
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :pswitch_c
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_2b

    goto :goto_10

    :cond_2b
    move v7, v6

    :goto_10
    move v0, v7

    .line 3260
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_2c

    .line 3261
    invoke-virtual {v10, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3262
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3263
    goto/16 :goto_2f

    .line 3264
    :cond_2c
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    invoke-virtual {v9, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3266
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v1

    .line 3267
    .local v1, "identifier":J
    invoke-virtual {v8, v1, v2}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub;->cancelServiceDiscovery(J)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v3

    .line 3268
    .restart local v3    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {v10, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3269
    invoke-virtual {v3, v10}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3270
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3271
    goto/16 :goto_2f

    .line 3229
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "identifier":J
    .end local v3    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :pswitch_d
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_2d

    move v6, v7

    nop

    :cond_2d
    move v0, v6

    .line 3230
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_2e

    .line 3231
    invoke-virtual {v10, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3232
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3233
    goto/16 :goto_2f

    .line 3234
    :cond_2e
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    invoke-virtual {v9, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3236
    new-array v1, v4, [B

    .line 3238
    .local v1, "peerAddress":[B
    invoke-virtual {v9, v2, v3}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v2

    .line 3240
    .local v2, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v5, 0x0

    .line 3241
    .local v5, "_hidl_array_offset_0":J
    invoke-virtual {v2, v5, v6, v1, v4}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 3242
    nop

    .line 3245
    .end local v2    # "_hidl_blob":Landroid/os/HwBlob;
    .end local v5    # "_hidl_array_offset_0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 3246
    .local v2, "query":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    new-instance v3, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub$10;

    invoke-direct {v3, v8, v10}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub$10;-><init>(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {v8, v1, v2, v3}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub;->requestServiceDiscovery([BLjava/util/ArrayList;Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$requestServiceDiscoveryCallback;)V

    .line 3254
    goto/16 :goto_2f

    .line 3213
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "peerAddress":[B
    .end local v2    # "query":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :pswitch_e
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_2f

    goto :goto_11

    :cond_2f
    move v7, v6

    :goto_11
    move v0, v7

    .line 3214
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_30

    .line 3215
    invoke-virtual {v10, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3216
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3217
    goto/16 :goto_2f

    .line 3218
    :cond_30
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    invoke-virtual {v9, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3220
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub;->flushServices()Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v1

    .line 3221
    .local v1, "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {v10, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3222
    invoke-virtual {v1, v10}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3223
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3224
    goto/16 :goto_2f

    .line 3195
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :pswitch_f
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_31

    goto :goto_12

    :cond_31
    move v7, v6

    :goto_12
    move v0, v7

    .line 3196
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_32

    .line 3197
    invoke-virtual {v10, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3198
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3199
    goto/16 :goto_2f

    .line 3200
    :cond_32
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    invoke-virtual {v9, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3202
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3203
    .local v1, "version":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3204
    .local v2, "serviceName":Ljava/lang/String;
    invoke-virtual {v8, v1, v2}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub;->removeUpnpService(ILjava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v3

    .line 3205
    .restart local v3    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {v10, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3206
    invoke-virtual {v3, v10}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3207
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3208
    goto/16 :goto_2f

    .line 3177
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "version":I
    .end local v2    # "serviceName":Ljava/lang/String;
    .end local v3    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :pswitch_10
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_33

    goto :goto_13

    :cond_33
    move v7, v6

    :goto_13
    move v0, v7

    .line 3178
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_34

    .line 3179
    invoke-virtual {v10, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3180
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3181
    goto/16 :goto_2f

    .line 3182
    :cond_34
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    invoke-virtual {v9, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3184
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3185
    .restart local v1    # "version":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3186
    .restart local v2    # "serviceName":Ljava/lang/String;
    invoke-virtual {v8, v1, v2}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub;->addUpnpService(ILjava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v3

    .line 3187
    .restart local v3    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {v10, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3188
    invoke-virtual {v3, v10}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3189
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3190
    goto/16 :goto_2f

    .line 3160
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "version":I
    .end local v2    # "serviceName":Ljava/lang/String;
    .end local v3    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :pswitch_11
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_35

    goto :goto_14

    :cond_35
    move v7, v6

    :goto_14
    move v0, v7

    .line 3161
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_36

    .line 3162
    invoke-virtual {v10, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3163
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3164
    goto/16 :goto_2f

    .line 3165
    :cond_36
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    invoke-virtual {v9, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3167
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 3168
    .local v1, "query":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {v8, v1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub;->removeBonjourService(Ljava/util/ArrayList;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    .line 3169
    .local v2, "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {v10, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3170
    invoke-virtual {v2, v10}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3171
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3172
    goto/16 :goto_2f

    .line 3142
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "query":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :pswitch_12
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_37

    goto :goto_15

    :cond_37
    move v7, v6

    :goto_15
    move v0, v7

    .line 3143
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_38

    .line 3144
    invoke-virtual {v10, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3145
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3146
    goto/16 :goto_2f

    .line 3147
    :cond_38
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    invoke-virtual {v9, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3149
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 3150
    .restart local v1    # "query":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 3151
    .local v2, "response":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {v8, v1, v2}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub;->addBonjourService(Ljava/util/ArrayList;Ljava/util/ArrayList;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v3

    .line 3152
    .restart local v3    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {v10, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3153
    invoke-virtual {v3, v10}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3154
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3155
    goto/16 :goto_2f

    .line 3113
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "query":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    .end local v2    # "response":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    .end local v3    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :pswitch_13
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_39

    move v6, v7

    nop

    :cond_39
    move v0, v6

    .line 3114
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_3a

    .line 3115
    invoke-virtual {v10, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3116
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3117
    goto/16 :goto_2f

    .line 3118
    :cond_3a
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    invoke-virtual {v9, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3120
    new-array v1, v4, [B

    .line 3122
    .local v1, "peerAddress":[B
    invoke-virtual {v9, v2, v3}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v2

    .line 3124
    .local v2, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v5, 0x0

    .line 3125
    .restart local v5    # "_hidl_array_offset_0":J
    invoke-virtual {v2, v5, v6, v1, v4}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 3126
    nop

    .line 3129
    .end local v2    # "_hidl_blob":Landroid/os/HwBlob;
    .end local v5    # "_hidl_array_offset_0":J
    new-instance v2, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub$9;

    invoke-direct {v2, v8, v10}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub$9;-><init>(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {v8, v1, v2}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub;->getGroupCapability([BLandroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$getGroupCapabilityCallback;)V

    .line 3137
    goto/16 :goto_2f

    .line 3084
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "peerAddress":[B
    :pswitch_14
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_3b

    move v6, v7

    nop

    :cond_3b
    move v0, v6

    .line 3085
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_3c

    .line 3086
    invoke-virtual {v10, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3087
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3088
    goto/16 :goto_2f

    .line 3089
    :cond_3c
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    invoke-virtual {v9, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3091
    new-array v1, v4, [B

    .line 3093
    .restart local v1    # "peerAddress":[B
    invoke-virtual {v9, v2, v3}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v2

    .line 3095
    .restart local v2    # "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v5, 0x0

    .line 3096
    .restart local v5    # "_hidl_array_offset_0":J
    invoke-virtual {v2, v5, v6, v1, v4}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 3097
    nop

    .line 3100
    .end local v2    # "_hidl_blob":Landroid/os/HwBlob;
    .end local v5    # "_hidl_array_offset_0":J
    new-instance v2, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub$8;

    invoke-direct {v2, v8, v10}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub$8;-><init>(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {v8, v1, v2}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub;->getSsid([BLandroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$getSsidCallback;)V

    .line 3108
    goto/16 :goto_2f

    .line 3067
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "peerAddress":[B
    :pswitch_15
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_3d

    goto :goto_16

    :cond_3d
    move v7, v6

    :goto_16
    move v0, v7

    .line 3068
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_3e

    .line 3069
    invoke-virtual {v10, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3070
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3071
    goto/16 :goto_2f

    .line 3072
    :cond_3e
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    invoke-virtual {v9, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3074
    invoke-static/range {p2 .. p2}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$FreqRange;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v1

    .line 3075
    .local v1, "ranges":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$FreqRange;>;"
    invoke-virtual {v8, v1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub;->setDisallowedFrequencies(Ljava/util/ArrayList;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    .line 3076
    .local v2, "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {v10, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3077
    invoke-virtual {v2, v10}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3078
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3079
    goto/16 :goto_2f

    .line 3049
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "ranges":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$FreqRange;>;"
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :pswitch_16
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_3f

    goto :goto_17

    :cond_3f
    move v7, v6

    :goto_17
    move v0, v7

    .line 3050
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_40

    .line 3051
    invoke-virtual {v10, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3052
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3053
    goto/16 :goto_2f

    .line 3054
    :cond_40
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    invoke-virtual {v9, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3056
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3057
    .local v1, "channel":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3058
    .local v2, "operatingClass":I
    invoke-virtual {v8, v1, v2}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub;->setListenChannel(II)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v3

    .line 3059
    .restart local v3    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {v10, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3060
    invoke-virtual {v3, v10}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3061
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3062
    goto/16 :goto_2f

    .line 3031
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "channel":I
    .end local v2    # "operatingClass":I
    .end local v3    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :pswitch_17
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_41

    goto :goto_18

    :cond_41
    move v7, v6

    :goto_18
    move v0, v7

    .line 3032
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_42

    .line 3033
    invoke-virtual {v10, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3034
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3035
    goto/16 :goto_2f

    .line 3036
    :cond_42
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    invoke-virtual {v9, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3038
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3039
    .local v1, "periodInMillis":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3040
    .local v2, "intervalInMillis":I
    invoke-virtual {v8, v1, v2}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub;->configureExtListen(II)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v3

    .line 3041
    .restart local v3    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {v10, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3042
    invoke-virtual {v3, v10}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3043
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3044
    goto/16 :goto_2f

    .line 3005
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "periodInMillis":I
    .end local v2    # "intervalInMillis":I
    .end local v3    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :pswitch_18
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_43

    goto :goto_19

    :cond_43
    move v7, v6

    :goto_19
    move v0, v7

    .line 3006
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_44

    .line 3007
    invoke-virtual {v10, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3008
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3009
    goto/16 :goto_2f

    .line 3010
    :cond_44
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    invoke-virtual {v9, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3012
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3013
    .local v1, "persistentNetworkId":I
    new-array v5, v4, [B

    .line 3015
    .local v5, "peerAddress":[B
    invoke-virtual {v9, v2, v3}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v2

    .line 3017
    .local v2, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v11, 0x0

    .line 3018
    .restart local v11    # "_hidl_array_offset_0":J
    invoke-virtual {v2, v11, v12, v5, v4}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 3019
    nop

    .line 3022
    .end local v2    # "_hidl_blob":Landroid/os/HwBlob;
    .end local v11    # "_hidl_array_offset_0":J
    invoke-virtual {v8, v1, v5}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub;->reinvoke(I[B)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    .line 3023
    .local v2, "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {v10, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3024
    invoke-virtual {v2, v10}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3025
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3026
    goto/16 :goto_2f

    .line 2970
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "persistentNetworkId":I
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .end local v5    # "peerAddress":[B
    :pswitch_19
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_45

    goto :goto_1a

    :cond_45
    move v7, v6

    :goto_1a
    move v0, v7

    .line 2971
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_46

    .line 2972
    invoke-virtual {v10, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2973
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2974
    goto/16 :goto_2f

    .line 2975
    :cond_46
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    invoke-virtual {v9, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2977
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2978
    .local v1, "groupIfName":Ljava/lang/String;
    new-array v5, v4, [B

    .line 2980
    .local v5, "goDeviceAddress":[B
    invoke-virtual {v9, v2, v3}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v7

    .line 2982
    .local v7, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v11, 0x0

    .line 2983
    .restart local v11    # "_hidl_array_offset_0":J
    invoke-virtual {v7, v11, v12, v5, v4}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 2984
    nop

    .line 2987
    .end local v7    # "_hidl_blob":Landroid/os/HwBlob;
    .end local v11    # "_hidl_array_offset_0":J
    new-array v7, v4, [B

    .line 2989
    .local v7, "peerAddress":[B
    invoke-virtual {v9, v2, v3}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v2

    .line 2991
    .local v2, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v11, 0x0

    .line 2992
    .restart local v11    # "_hidl_array_offset_0":J
    invoke-virtual {v2, v11, v12, v7, v4}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 2993
    nop

    .line 2996
    .end local v2    # "_hidl_blob":Landroid/os/HwBlob;
    .end local v11    # "_hidl_array_offset_0":J
    invoke-virtual {v8, v1, v5, v7}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub;->invite(Ljava/lang/String;[B[B)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    .line 2997
    .local v2, "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {v10, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2998
    invoke-virtual {v2, v10}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2999
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3000
    goto/16 :goto_2f

    .line 2945
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "groupIfName":Ljava/lang/String;
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .end local v5    # "goDeviceAddress":[B
    .end local v7    # "peerAddress":[B
    :pswitch_1a
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_47

    goto :goto_1b

    :cond_47
    move v7, v6

    :goto_1b
    move v0, v7

    .line 2946
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_48

    .line 2947
    invoke-virtual {v10, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2948
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2949
    goto/16 :goto_2f

    .line 2950
    :cond_48
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    invoke-virtual {v9, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2952
    new-array v1, v4, [B

    .line 2954
    .local v1, "peerAddress":[B
    invoke-virtual {v9, v2, v3}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v2

    .line 2956
    .local v2, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v11, 0x0

    .line 2957
    .restart local v11    # "_hidl_array_offset_0":J
    invoke-virtual {v2, v11, v12, v1, v4}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 2958
    nop

    .line 2961
    .end local v2    # "_hidl_blob":Landroid/os/HwBlob;
    .end local v11    # "_hidl_array_offset_0":J
    invoke-virtual {v8, v1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub;->reject([B)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    .line 2962
    .local v2, "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {v10, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2963
    invoke-virtual {v2, v10}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2964
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2965
    goto/16 :goto_2f

    .line 2928
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "peerAddress":[B
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :pswitch_1b
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_49

    goto :goto_1c

    :cond_49
    move v7, v6

    :goto_1c
    move v0, v7

    .line 2929
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_4a

    .line 2930
    invoke-virtual {v10, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2931
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2932
    goto/16 :goto_2f

    .line 2933
    :cond_4a
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    invoke-virtual {v9, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2935
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2936
    .local v1, "groupIfName":Ljava/lang/String;
    invoke-virtual {v8, v1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub;->removeGroup(Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    .line 2937
    .restart local v2    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {v10, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2938
    invoke-virtual {v2, v10}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2939
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2940
    goto/16 :goto_2f

    .line 2910
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "groupIfName":Ljava/lang/String;
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :pswitch_1c
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_4b

    goto :goto_1d

    :cond_4b
    move v7, v6

    :goto_1d
    move v0, v7

    .line 2911
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_4c

    .line 2912
    invoke-virtual {v10, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2913
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2914
    goto/16 :goto_2f

    .line 2915
    :cond_4c
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    invoke-virtual {v9, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2917
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 2918
    .local v1, "persistent":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2919
    .local v2, "persistentNetworkId":I
    invoke-virtual {v8, v1, v2}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub;->addGroup(ZI)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v3

    .line 2920
    .restart local v3    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {v10, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2921
    invoke-virtual {v3, v10}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2922
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2923
    goto/16 :goto_2f

    .line 2884
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "persistent":Z
    .end local v2    # "persistentNetworkId":I
    .end local v3    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :pswitch_1d
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_4d

    goto :goto_1e

    :cond_4d
    move v7, v6

    :goto_1e
    move v0, v7

    .line 2885
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_4e

    .line 2886
    invoke-virtual {v10, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2887
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2888
    goto/16 :goto_2f

    .line 2889
    :cond_4e
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    invoke-virtual {v9, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2891
    new-array v1, v4, [B

    .line 2893
    .local v1, "peerAddress":[B
    invoke-virtual {v9, v2, v3}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v2

    .line 2895
    .local v2, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v11, 0x0

    .line 2896
    .restart local v11    # "_hidl_array_offset_0":J
    invoke-virtual {v2, v11, v12, v1, v4}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 2897
    nop

    .line 2900
    .end local v2    # "_hidl_blob":Landroid/os/HwBlob;
    .end local v11    # "_hidl_array_offset_0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2901
    .local v2, "provisionMethod":I
    invoke-virtual {v8, v1, v2}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub;->provisionDiscovery([BI)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v3

    .line 2902
    .restart local v3    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {v10, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2903
    invoke-virtual {v3, v10}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2904
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2905
    goto/16 :goto_2f

    .line 2868
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "peerAddress":[B
    .end local v2    # "provisionMethod":I
    .end local v3    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :pswitch_1e
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_4f

    goto :goto_1f

    :cond_4f
    move v7, v6

    :goto_1f
    move v0, v7

    .line 2869
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_50

    .line 2870
    invoke-virtual {v10, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2871
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2872
    goto/16 :goto_2f

    .line 2873
    :cond_50
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    invoke-virtual {v9, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2875
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub;->cancelConnect()Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v1

    .line 2876
    .local v1, "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {v10, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2877
    invoke-virtual {v1, v10}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2878
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2879
    goto/16 :goto_2f

    .line 2834
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :pswitch_1f
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_51

    move v6, v7

    nop

    :cond_51
    move v11, v6

    .line 2835
    .local v11, "_hidl_is_oneway":Z
    if-eqz v11, :cond_52

    .line 2836
    invoke-virtual {v10, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2837
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2838
    goto/16 :goto_2f

    .line 2839
    :cond_52
    const-string v0, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2841
    new-array v12, v4, [B

    .line 2843
    .local v12, "peerAddress":[B
    invoke-virtual {v9, v2, v3}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 2845
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    .line 2846
    .local v1, "_hidl_array_offset_0":J
    invoke-virtual {v0, v1, v2, v12, v4}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 2847
    nop

    .line 2850
    .end local v0    # "_hidl_blob":Landroid/os/HwBlob;
    .end local v1    # "_hidl_array_offset_0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v13

    .line 2851
    .local v13, "provisionMethod":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 2852
    .local v14, "preSelectedPin":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v15

    .line 2853
    .local v15, "joinExistingGroup":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v16

    .line 2854
    .local v16, "persistent":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v17

    .line 2855
    .local v17, "goIntent":I
    new-instance v7, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub$7;

    invoke-direct {v7, v8, v10}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub$7;-><init>(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub;Landroid/os/HwParcel;)V

    move-object v0, v8

    move-object v1, v12

    move v2, v13

    move-object v3, v14

    move v4, v15

    move/from16 v5, v16

    move/from16 v6, v17

    invoke-virtual/range {v0 .. v7}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub;->connect([BILjava/lang/String;ZZILandroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$connectCallback;)V

    .line 2863
    goto/16 :goto_2f

    .line 2818
    .end local v11    # "_hidl_is_oneway":Z
    .end local v12    # "peerAddress":[B
    .end local v13    # "provisionMethod":I
    .end local v14    # "preSelectedPin":Ljava/lang/String;
    .end local v15    # "joinExistingGroup":Z
    .end local v16    # "persistent":Z
    .end local v17    # "goIntent":I
    :pswitch_20
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_53

    goto :goto_20

    :cond_53
    move v7, v6

    :goto_20
    move v0, v7

    .line 2819
    .local v0, "_hidl_is_oneway":Z
    if-eqz v0, :cond_54

    .line 2820
    invoke-virtual {v10, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2821
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2822
    goto/16 :goto_2f

    .line 2823
    :cond_54
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    invoke-virtual {v9, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2825
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub;->flush()Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v1

    .line 2826
    .local v1, "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {v10, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2827
    invoke-virtual {v1, v10}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2828
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2829
    goto/16 :goto_2f

    .line 2802
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :pswitch_21
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_55

    goto :goto_21

    :cond_55
    move v7, v6

    :goto_21
    move v0, v7

    .line 2803
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_56

    .line 2804
    invoke-virtual {v10, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2805
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2806
    goto/16 :goto_2f

    .line 2807
    :cond_56
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    invoke-virtual {v9, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2809
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub;->stopFind()Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v1

    .line 2810
    .restart local v1    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {v10, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2811
    invoke-virtual {v1, v10}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2812
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2813
    goto/16 :goto_2f

    .line 2785
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :pswitch_22
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_57

    goto :goto_22

    :cond_57
    move v7, v6

    :goto_22
    move v0, v7

    .line 2786
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_58

    .line 2787
    invoke-virtual {v10, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2788
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2789
    goto/16 :goto_2f

    .line 2790
    :cond_58
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    invoke-virtual {v9, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2792
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2793
    .local v1, "timeoutInSec":I
    invoke-virtual {v8, v1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub;->find(I)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    .line 2794
    .local v2, "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {v10, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2795
    invoke-virtual {v2, v10}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2796
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2797
    goto/16 :goto_2f

    .line 2767
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "timeoutInSec":I
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :pswitch_23
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_59

    goto :goto_23

    :cond_59
    move v7, v6

    :goto_23
    move v0, v7

    .line 2768
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_5a

    .line 2769
    invoke-virtual {v10, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2770
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2771
    goto/16 :goto_2f

    .line 2772
    :cond_5a
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    invoke-virtual {v9, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2774
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2775
    .local v1, "groupIfName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 2776
    .local v2, "enable":Z
    invoke-virtual {v8, v1, v2}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub;->setPowerSave(Ljava/lang/String;Z)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v3

    .line 2777
    .restart local v3    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {v10, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2778
    invoke-virtual {v3, v10}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2779
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2780
    goto/16 :goto_2f

    .line 2749
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "groupIfName":Ljava/lang/String;
    .end local v2    # "enable":Z
    .end local v3    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :pswitch_24
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_5b

    goto :goto_24

    :cond_5b
    move v7, v6

    :goto_24
    move v0, v7

    .line 2750
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_5c

    .line 2751
    invoke-virtual {v10, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2752
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2753
    goto/16 :goto_2f

    .line 2754
    :cond_5c
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    invoke-virtual {v9, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2756
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2757
    .restart local v1    # "groupIfName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2758
    .local v2, "timeoutInSec":I
    invoke-virtual {v8, v1, v2}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub;->setGroupIdle(Ljava/lang/String;I)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v3

    .line 2759
    .restart local v3    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {v10, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2760
    invoke-virtual {v3, v10}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2761
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2762
    goto/16 :goto_2f

    .line 2732
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "groupIfName":Ljava/lang/String;
    .end local v2    # "timeoutInSec":I
    .end local v3    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :pswitch_25
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_5d

    goto :goto_25

    :cond_5d
    move v7, v6

    :goto_25
    move v0, v7

    .line 2733
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_5e

    .line 2734
    invoke-virtual {v10, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2735
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2736
    goto/16 :goto_2f

    .line 2737
    :cond_5e
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    invoke-virtual {v9, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2739
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 2740
    .local v1, "postfix":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {v8, v1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub;->setSsidPostfix(Ljava/util/ArrayList;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    .line 2741
    .local v2, "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {v10, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2742
    invoke-virtual {v2, v10}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2743
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2744
    goto/16 :goto_2f

    .line 2704
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "postfix":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :pswitch_26
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_5f

    move v6, v7

    nop

    :cond_5f
    move v0, v6

    .line 2705
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_60

    .line 2706
    invoke-virtual {v10, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2707
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2708
    goto/16 :goto_2f

    .line 2709
    :cond_60
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    invoke-virtual {v9, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2711
    new-instance v1, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub$6;

    invoke-direct {v1, v8, v10}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub$6;-><init>(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {v8, v1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub;->getDeviceAddress(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$getDeviceAddressCallback;)V

    .line 2727
    goto/16 :goto_2f

    .line 2687
    .end local v0    # "_hidl_is_oneway":Z
    :pswitch_27
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_61

    goto :goto_26

    :cond_61
    move v7, v6

    :goto_26
    move v0, v7

    .line 2688
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_62

    .line 2689
    invoke-virtual {v10, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2690
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2691
    goto/16 :goto_2f

    .line 2692
    :cond_62
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    invoke-virtual {v9, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2694
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback;

    move-result-object v1

    .line 2695
    .local v1, "callback":Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback;
    invoke-virtual {v8, v1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub;->registerCallback(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    .line 2696
    .restart local v2    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {v10, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2697
    invoke-virtual {v2, v10}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2698
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2699
    goto/16 :goto_2f

    .line 2670
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "callback":Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback;
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :pswitch_28
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_63

    goto :goto_27

    :cond_63
    move v7, v6

    :goto_27
    move v0, v7

    .line 2671
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_64

    .line 2672
    invoke-virtual {v10, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2673
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2674
    goto/16 :goto_2f

    .line 2675
    :cond_64
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantIface"

    invoke-virtual {v9, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2677
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt16()S

    move-result v1

    .line 2678
    .local v1, "configMethods":S
    invoke-virtual {v8, v1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub;->setWpsConfigMethods(S)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    .line 2679
    .restart local v2    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {v10, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2680
    invoke-virtual {v2, v10}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2681
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2682
    goto/16 :goto_2f

    .line 2653
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "configMethods":S
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :pswitch_29
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_65

    goto :goto_28

    :cond_65
    move v7, v6

    :goto_28
    move v0, v7

    .line 2654
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_66

    .line 2655
    invoke-virtual {v10, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2656
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2657
    goto/16 :goto_2f

    .line 2658
    :cond_66
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantIface"

    invoke-virtual {v9, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2660
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2661
    .local v1, "serialNumber":Ljava/lang/String;
    invoke-virtual {v8, v1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub;->setWpsSerialNumber(Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    .line 2662
    .restart local v2    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {v10, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2663
    invoke-virtual {v2, v10}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2664
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2665
    goto/16 :goto_2f

    .line 2636
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serialNumber":Ljava/lang/String;
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :pswitch_2a
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_67

    goto :goto_29

    :cond_67
    move v7, v6

    :goto_29
    move v0, v7

    .line 2637
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_68

    .line 2638
    invoke-virtual {v10, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2639
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2640
    goto/16 :goto_2f

    .line 2641
    :cond_68
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantIface"

    invoke-virtual {v9, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2643
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2644
    .local v1, "modelNumber":Ljava/lang/String;
    invoke-virtual {v8, v1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub;->setWpsModelNumber(Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    .line 2645
    .restart local v2    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {v10, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2646
    invoke-virtual {v2, v10}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2647
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2648
    goto/16 :goto_2f

    .line 2619
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "modelNumber":Ljava/lang/String;
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :pswitch_2b
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_69

    goto :goto_2a

    :cond_69
    move v7, v6

    :goto_2a
    move v0, v7

    .line 2620
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_6a

    .line 2621
    invoke-virtual {v10, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2622
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2623
    goto/16 :goto_2f

    .line 2624
    :cond_6a
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantIface"

    invoke-virtual {v9, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2626
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2627
    .local v1, "modelName":Ljava/lang/String;
    invoke-virtual {v8, v1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub;->setWpsModelName(Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    .line 2628
    .restart local v2    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {v10, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2629
    invoke-virtual {v2, v10}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2630
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2631
    goto/16 :goto_2f

    .line 2602
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "modelName":Ljava/lang/String;
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :pswitch_2c
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_6b

    goto :goto_2b

    :cond_6b
    move v7, v6

    :goto_2b
    move v0, v7

    .line 2603
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_6c

    .line 2604
    invoke-virtual {v10, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2605
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2606
    goto/16 :goto_2f

    .line 2607
    :cond_6c
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantIface"

    invoke-virtual {v9, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2609
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2610
    .local v1, "manufacturer":Ljava/lang/String;
    invoke-virtual {v8, v1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub;->setWpsManufacturer(Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    .line 2611
    .restart local v2    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {v10, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2612
    invoke-virtual {v2, v10}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2613
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2614
    goto/16 :goto_2f

    .line 2577
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "manufacturer":Ljava/lang/String;
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :pswitch_2d
    and-int/lit8 v2, p4, 0x1

    if-eqz v2, :cond_6d

    goto :goto_2c

    :cond_6d
    move v7, v6

    :goto_2c
    move v2, v7

    .line 2578
    .local v2, "_hidl_is_oneway":Z
    if-eqz v2, :cond_6e

    .line 2579
    invoke-virtual {v10, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2580
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2581
    goto/16 :goto_2f

    .line 2582
    :cond_6e
    const-string v3, "android.hardware.wifi.supplicant@1.0::ISupplicantIface"

    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2584
    const/16 v3, 0x8

    new-array v4, v3, [B

    .line 2586
    .local v4, "type":[B
    invoke-virtual {v9, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 2588
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v11, 0x0

    .line 2589
    .local v11, "_hidl_array_offset_0":J
    invoke-virtual {v0, v11, v12, v4, v3}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 2590
    nop

    .line 2593
    .end local v0    # "_hidl_blob":Landroid/os/HwBlob;
    .end local v11    # "_hidl_array_offset_0":J
    invoke-virtual {v8, v4}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub;->setWpsDeviceType([B)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v0

    .line 2594
    .local v0, "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {v10, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2595
    invoke-virtual {v0, v10}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2596
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2597
    goto/16 :goto_2f

    .line 2560
    .end local v0    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .end local v2    # "_hidl_is_oneway":Z
    .end local v4    # "type":[B
    :pswitch_2e
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_6f

    goto :goto_2d

    :cond_6f
    move v7, v6

    :goto_2d
    move v0, v7

    .line 2561
    .local v0, "_hidl_is_oneway":Z
    if-eqz v0, :cond_70

    .line 2562
    invoke-virtual {v10, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2563
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2564
    goto/16 :goto_2f

    .line 2565
    :cond_70
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantIface"

    invoke-virtual {v9, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2567
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2568
    .local v1, "name":Ljava/lang/String;
    invoke-virtual {v8, v1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub;->setWpsDeviceName(Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    .line 2569
    .local v2, "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {v10, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2570
    invoke-virtual {v2, v10}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2571
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2572
    goto/16 :goto_2f

    .line 2540
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :pswitch_2f
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_71

    move v6, v7

    nop

    :cond_71
    move v0, v6

    .line 2541
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_72

    .line 2542
    invoke-virtual {v10, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2543
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2544
    goto/16 :goto_2f

    .line 2545
    :cond_72
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantIface"

    invoke-virtual {v9, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2547
    new-instance v1, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub$5;

    invoke-direct {v1, v8, v10}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub$5;-><init>(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {v8, v1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub;->listNetworks(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantIface$listNetworksCallback;)V

    .line 2555
    goto/16 :goto_2f

    .line 2519
    .end local v0    # "_hidl_is_oneway":Z
    :pswitch_30
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_73

    move v6, v7

    nop

    :cond_73
    move v0, v6

    .line 2520
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_74

    .line 2521
    invoke-virtual {v10, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2522
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2523
    goto/16 :goto_2f

    .line 2524
    :cond_74
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantIface"

    invoke-virtual {v9, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2526
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2527
    .local v1, "id":I
    new-instance v2, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub$4;

    invoke-direct {v2, v8, v10}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub$4;-><init>(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {v8, v1, v2}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub;->getNetwork(ILandroid/hardware/wifi/supplicant/V1_0/ISupplicantIface$getNetworkCallback;)V

    .line 2535
    goto/16 :goto_2f

    .line 2502
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "id":I
    :pswitch_31
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_75

    goto :goto_2e

    :cond_75
    move v7, v6

    :goto_2e
    move v0, v7

    .line 2503
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_76

    .line 2504
    invoke-virtual {v10, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2505
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2506
    goto/16 :goto_2f

    .line 2507
    :cond_76
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantIface"

    invoke-virtual {v9, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2509
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2510
    .restart local v1    # "id":I
    invoke-virtual {v8, v1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub;->removeNetwork(I)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    .line 2511
    .restart local v2    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {v10, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2512
    invoke-virtual {v2, v10}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2513
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2514
    goto :goto_2f

    .line 2482
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "id":I
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :pswitch_32
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_77

    move v6, v7

    nop

    :cond_77
    move v0, v6

    .line 2483
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_78

    .line 2484
    invoke-virtual {v10, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2485
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2486
    goto :goto_2f

    .line 2487
    :cond_78
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantIface"

    invoke-virtual {v9, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2489
    new-instance v1, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub$3;

    invoke-direct {v1, v8, v10}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub$3;-><init>(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {v8, v1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub;->addNetwork(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantIface$addNetworkCallback;)V

    .line 2497
    goto :goto_2f

    .line 2462
    .end local v0    # "_hidl_is_oneway":Z
    :pswitch_33
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_79

    move v6, v7

    nop

    :cond_79
    move v0, v6

    .line 2463
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_7a

    .line 2464
    invoke-virtual {v10, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2465
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2466
    goto :goto_2f

    .line 2467
    :cond_7a
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantIface"

    invoke-virtual {v9, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2469
    new-instance v1, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub$2;

    invoke-direct {v1, v8, v10}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub$2;-><init>(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {v8, v1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub;->getType(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantIface$getTypeCallback;)V

    .line 2477
    goto :goto_2f

    .line 2442
    .end local v0    # "_hidl_is_oneway":Z
    :pswitch_34
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_7b

    move v6, v7

    nop

    :cond_7b
    move v0, v6

    .line 2443
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_7c

    .line 2444
    invoke-virtual {v10, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2445
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2446
    goto :goto_2f

    .line 2447
    :cond_7c
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantIface"

    invoke-virtual {v9, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2449
    new-instance v1, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub$1;

    invoke-direct {v1, v8, v10}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub$1;-><init>(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {v8, v1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub;->getName(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantIface$getNameCallback;)V

    .line 2457
    nop

    .line 3671
    .end local v0    # "_hidl_is_oneway":Z
    :cond_7d
    :goto_2f
    return-void

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 2395
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 1
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 2421
    const-string v0, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2422
    return-object p0

    .line 2424
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

    .line 2428
    invoke-virtual {p0, p1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub;->registerService(Ljava/lang/String;)V

    .line 2429
    return-void
.end method

.method public final setHALInstrumentation()V
    .locals 0

    .line 2386
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 2433
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 2415
    const/4 v0, 0x1

    return v0
.end method
