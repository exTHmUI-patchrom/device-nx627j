.class public abstract Lvendor/qti/hardware/wifi/hostapd/V1_0/IHostapdVendorIfaceCallback$Stub;
.super Landroid/os/HwBinder;
.source "IHostapdVendorIfaceCallback.java"

# interfaces
.implements Lvendor/qti/hardware/wifi/hostapd/V1_0/IHostapdVendorIfaceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/qti/hardware/wifi/hostapd/V1_0/IHostapdVendorIfaceCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 330
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .locals 0

    .line 333
    return-object p0
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .locals 3

    .line 375
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 376
    .local v0, "info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 377
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 378
    const/4 v1, 0x0

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    .line 379
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

    .line 351
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
        -0x25t
        0x27t
        -0x62t
        0xct
        0xct
        0xft
        -0x11t
        0xct
        -0x3ct
        0x75t
        0x78t
        0xct
        0x16t
        0x43t
        -0x69t
        -0x27t
        0x5at
        -0x58t
        0x73t
        0x38t
        0x5at
        -0x1et
        -0x5bt
        -0x54t
        0x3ct
        -0x6t
        0x61t
        -0x26t
        -0x21t
        -0x48t
        -0x34t
        -0x39t
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

    .line 338
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "vendor.qti.hardware.wifi.hostapd@1.0::IHostapdVendorIfaceCallback"

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

    .line 345
    const-string v0, "vendor.qti.hardware.wifi.hostapd@1.0::IHostapdVendorIfaceCallback"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 1
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .line 364
    const/4 v0, 0x1

    return v0
.end method

.method public final notifySyspropsChanged()V
    .locals 0

    .line 384
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 385
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

    .line 413
    const-wide/16 v0, 0x6

    const/4 v2, 0x6

    const/high16 v3, -0x80000000

    const/4 v4, 0x0

    const/4 v5, 0x1

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_7

    .line 606
    :sswitch_0
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_0

    move v4, v5

    nop

    :cond_0
    move v0, v4

    .line 607
    .local v0, "_hidl_is_oneway":Z
    if-eqz v0, :cond_17

    .line 608
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 609
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 610
    goto/16 :goto_7

    .line 593
    .end local v0    # "_hidl_is_oneway":Z
    :sswitch_1
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1

    move v4, v5

    nop

    :cond_1
    move v0, v4

    .line 594
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_2

    .line 595
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 596
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 597
    goto/16 :goto_7

    .line 598
    :cond_2
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 600
    invoke-virtual {p0}, Lvendor/qti/hardware/wifi/hostapd/V1_0/IHostapdVendorIfaceCallback$Stub;->notifySyspropsChanged()V

    .line 601
    goto/16 :goto_7

    .line 577
    .end local v0    # "_hidl_is_oneway":Z
    :sswitch_2
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    move v5, v4

    :goto_0
    move v0, v5

    .line 578
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_4

    .line 579
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 580
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 581
    goto/16 :goto_7

    .line 582
    :cond_4
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 584
    invoke-virtual {p0}, Lvendor/qti/hardware/wifi/hostapd/V1_0/IHostapdVendorIfaceCallback$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object v1

    .line 585
    .local v1, "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 586
    invoke-virtual {v1, p3}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 587
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 588
    goto/16 :goto_7

    .line 562
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

    .line 563
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_6

    .line 564
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 565
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 566
    goto/16 :goto_7

    .line 567
    :cond_6
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 569
    invoke-virtual {p0}, Lvendor/qti/hardware/wifi/hostapd/V1_0/IHostapdVendorIfaceCallback$Stub;->ping()V

    .line 570
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 571
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 572
    goto/16 :goto_7

    .line 552
    .end local v0    # "_hidl_is_oneway":Z
    :sswitch_4
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_7

    move v4, v5

    nop

    :cond_7
    move v0, v4

    .line 553
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_17

    .line 554
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 555
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 556
    goto/16 :goto_7

    .line 539
    .end local v0    # "_hidl_is_oneway":Z
    :sswitch_5
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_8

    move v4, v5

    nop

    :cond_8
    move v0, v4

    .line 540
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_9

    .line 541
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 542
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 543
    goto/16 :goto_7

    .line 544
    :cond_9
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 546
    invoke-virtual {p0}, Lvendor/qti/hardware/wifi/hostapd/V1_0/IHostapdVendorIfaceCallback$Stub;->setHALInstrumentation()V

    .line 547
    goto/16 :goto_7

    .line 506
    .end local v0    # "_hidl_is_oneway":Z
    :sswitch_6
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_a

    goto :goto_2

    :cond_a
    move v5, v4

    :goto_2
    move v0, v5

    .line 507
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_b

    .line 508
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 509
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 510
    goto/16 :goto_7

    .line 511
    :cond_b
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 513
    invoke-virtual {p0}, Lvendor/qti/hardware/wifi/hostapd/V1_0/IHostapdVendorIfaceCallback$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v1

    .line 514
    .local v1, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 516
    new-instance v2, Landroid/os/HwBlob;

    const/16 v3, 0x10

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 518
    .local v2, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 519
    .local v3, "_hidl_vec_size":I
    const-wide/16 v5, 0x8

    invoke-virtual {v2, v5, v6, v3}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 520
    const-wide/16 v5, 0xc

    invoke-virtual {v2, v5, v6, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 521
    new-instance v5, Landroid/os/HwBlob;

    mul-int/lit8 v6, v3, 0x20

    invoke-direct {v5, v6}, Landroid/os/HwBlob;-><init>(I)V

    .line 522
    .local v5, "childBlob":Landroid/os/HwBlob;
    nop

    .local v4, "_hidl_index_0":I
    :goto_3
    if-ge v4, v3, :cond_c

    .line 524
    mul-int/lit8 v6, v4, 0x20

    int-to-long v6, v6

    .line 525
    .local v6, "_hidl_array_offset_1":J
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 526
    nop

    .line 522
    .end local v6    # "_hidl_array_offset_1":J
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 529
    .end local v4    # "_hidl_index_0":I
    :cond_c
    const-wide/16 v6, 0x0

    invoke-virtual {v2, v6, v7, v5}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 531
    .end local v3    # "_hidl_vec_size":I
    .end local v5    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 533
    .end local v2    # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 534
    goto/16 :goto_7

    .line 490
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

    .line 491
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_e

    .line 492
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 493
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 494
    goto/16 :goto_7

    .line 495
    :cond_e
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 497
    invoke-virtual {p0}, Lvendor/qti/hardware/wifi/hostapd/V1_0/IHostapdVendorIfaceCallback$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v1

    .line 498
    .local v1, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 499
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 500
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 501
    goto/16 :goto_7

    .line 476
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

    .line 477
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_10

    .line 478
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 479
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 480
    goto/16 :goto_7

    .line 481
    :cond_10
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 483
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 484
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 485
    goto/16 :goto_7

    .line 460
    .end local v0    # "_hidl_is_oneway":Z
    :sswitch_9
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_11

    goto :goto_6

    :cond_11
    move v5, v4

    :goto_6
    move v0, v5

    .line 461
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_12

    .line 462
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 463
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 464
    goto :goto_7

    .line 465
    :cond_12
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 467
    invoke-virtual {p0}, Lvendor/qti/hardware/wifi/hostapd/V1_0/IHostapdVendorIfaceCallback$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v1

    .line 468
    .local v1, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 469
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 470
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 471
    goto :goto_7

    .line 438
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_a
    and-int/lit8 v6, p4, 0x1

    if-eqz v6, :cond_13

    move v4, v5

    nop

    .line 439
    .local v4, "_hidl_is_oneway":Z
    :cond_13
    if-eq v4, v5, :cond_14

    .line 440
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 441
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 442
    goto :goto_7

    .line 443
    :cond_14
    const-string v3, "vendor.qti.hardware.wifi.hostapd@1.0::IHostapdVendorIfaceCallback"

    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 445
    new-array v3, v2, [B

    .line 447
    .local v3, "del_sta":[B
    invoke-virtual {p2, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 449
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v5, 0x0

    .line 450
    .local v5, "_hidl_array_offset_0":J
    invoke-virtual {v0, v5, v6, v3, v2}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 451
    nop

    .line 454
    .end local v0    # "_hidl_blob":Landroid/os/HwBlob;
    .end local v5    # "_hidl_array_offset_0":J
    invoke-virtual {p0, v3}, Lvendor/qti/hardware/wifi/hostapd/V1_0/IHostapdVendorIfaceCallback$Stub;->onStaDisconnected([B)V

    .line 455
    goto :goto_7

    .line 416
    .end local v3    # "del_sta":[B
    .end local v4    # "_hidl_is_oneway":Z
    :sswitch_b
    and-int/lit8 v6, p4, 0x1

    if-eqz v6, :cond_15

    move v4, v5

    nop

    .line 417
    .restart local v4    # "_hidl_is_oneway":Z
    :cond_15
    if-eq v4, v5, :cond_16

    .line 418
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 419
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 420
    goto :goto_7

    .line 421
    :cond_16
    const-string v3, "vendor.qti.hardware.wifi.hostapd@1.0::IHostapdVendorIfaceCallback"

    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 423
    new-array v3, v2, [B

    .line 425
    .local v3, "new_sta":[B
    invoke-virtual {p2, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 427
    .restart local v0    # "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v5, 0x0

    .line 428
    .restart local v5    # "_hidl_array_offset_0":J
    invoke-virtual {v0, v5, v6, v3, v2}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 429
    nop

    .line 432
    .end local v0    # "_hidl_blob":Landroid/os/HwBlob;
    .end local v5    # "_hidl_array_offset_0":J
    invoke-virtual {p0, v3}, Lvendor/qti/hardware/wifi/hostapd/V1_0/IHostapdVendorIfaceCallback$Stub;->onStaConnected([B)V

    .line 433
    nop

    .line 615
    .end local v3    # "new_sta":[B
    .end local v4    # "_hidl_is_oneway":Z
    :cond_17
    :goto_7
    return-void

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_b
        0x2 -> :sswitch_a
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

    .line 369
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 1
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 395
    const-string v0, "vendor.qti.hardware.wifi.hostapd@1.0::IHostapdVendorIfaceCallback"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 396
    return-object p0

    .line 398
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

    .line 402
    invoke-virtual {p0, p1}, Lvendor/qti/hardware/wifi/hostapd/V1_0/IHostapdVendorIfaceCallback$Stub;->registerService(Ljava/lang/String;)V

    .line 403
    return-void
.end method

.method public final setHALInstrumentation()V
    .locals 0

    .line 360
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 407
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lvendor/qti/hardware/wifi/hostapd/V1_0/IHostapdVendorIfaceCallback$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 389
    const/4 v0, 0x1

    return v0
.end method
