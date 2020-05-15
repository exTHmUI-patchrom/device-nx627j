.class public abstract Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorP2PIfaceCallback$Stub;
.super Landroid/os/HwBinder;
.source "ISupplicantVendorP2PIfaceCallback.java"

# interfaces
.implements Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorP2PIfaceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorP2PIfaceCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 403
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .locals 0

    .line 406
    return-object p0
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .locals 3

    .line 448
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 449
    .local v0, "info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 450
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 451
    const/4 v1, 0x0

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    .line 452
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

    .line 424
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
        -0x3bt
        -0x5ct
        0x5t
        0x5at
        0x1ft
        0xat
        0x53t
        -0xdt
        0x4ft
        -0x43t
        -0x35t
        -0x5t
        0x73t
        0x26t
        0x70t
        -0xft
        -0x19t
        0x44t
        0x45t
        -0x7ft
        -0x44t
        0x6at
        0x4ft
        -0x20t
        -0x24t
        -0x34t
        -0x21t
        -0x75t
        0xct
        0x2ft
        0x23t
        0x29t
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

    .line 411
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "vendor.qti.hardware.wifi.supplicant@2.0::ISupplicantVendorP2PIfaceCallback"

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

    .line 418
    const-string v0, "vendor.qti.hardware.wifi.supplicant@2.0::ISupplicantVendorP2PIfaceCallback"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 1
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .line 437
    const/4 v0, 0x1

    return v0
.end method

.method public final notifySyspropsChanged()V
    .locals 0

    .line 457
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 458
    return-void
.end method

.method public onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .locals 21
    .param p1, "_hidl_code"    # I
    .param p2, "_hidl_request"    # Landroid/os/HwParcel;
    .param p3, "_hidl_reply"    # Landroid/os/HwParcel;
    .param p4, "_hidl_flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    .line 486
    const-wide/16 v2, 0x8

    const/high16 v4, -0x80000000

    const/4 v5, 0x0

    const/4 v6, 0x1

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_7

    .line 712
    :sswitch_0
    and-int/lit8 v2, p4, 0x1

    if-eqz v2, :cond_0

    move v5, v6

    nop

    :cond_0
    move v2, v5

    .line 713
    .local v2, "_hidl_is_oneway":Z
    if-eqz v2, :cond_17

    .line 714
    invoke-virtual {v1, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 715
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 716
    goto/16 :goto_7

    .line 699
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_1
    and-int/lit8 v2, p4, 0x1

    if-eqz v2, :cond_1

    move v5, v6

    nop

    :cond_1
    move v2, v5

    .line 700
    .restart local v2    # "_hidl_is_oneway":Z
    if-eq v2, v6, :cond_2

    .line 701
    invoke-virtual {v1, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 702
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 703
    goto/16 :goto_7

    .line 704
    :cond_2
    const-string v3, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 706
    invoke-virtual/range {p0 .. p0}, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorP2PIfaceCallback$Stub;->notifySyspropsChanged()V

    .line 707
    goto/16 :goto_7

    .line 683
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_2
    and-int/lit8 v2, p4, 0x1

    if-eqz v2, :cond_3

    goto :goto_0

    :cond_3
    move v6, v5

    :goto_0
    move v2, v6

    .line 684
    .restart local v2    # "_hidl_is_oneway":Z
    if-eqz v2, :cond_4

    .line 685
    invoke-virtual {v1, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 686
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 687
    goto/16 :goto_7

    .line 688
    :cond_4
    const-string v3, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 690
    invoke-virtual/range {p0 .. p0}, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorP2PIfaceCallback$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object v3

    .line 691
    .local v3, "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-virtual {v1, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 692
    invoke-virtual {v3, v1}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 693
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 694
    goto/16 :goto_7

    .line 668
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    :sswitch_3
    and-int/lit8 v2, p4, 0x1

    if-eqz v2, :cond_5

    goto :goto_1

    :cond_5
    move v6, v5

    :goto_1
    move v2, v6

    .line 669
    .restart local v2    # "_hidl_is_oneway":Z
    if-eqz v2, :cond_6

    .line 670
    invoke-virtual {v1, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 671
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 672
    goto/16 :goto_7

    .line 673
    :cond_6
    const-string v3, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 675
    invoke-virtual/range {p0 .. p0}, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorP2PIfaceCallback$Stub;->ping()V

    .line 676
    invoke-virtual {v1, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 677
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 678
    goto/16 :goto_7

    .line 658
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_4
    and-int/lit8 v2, p4, 0x1

    if-eqz v2, :cond_7

    move v5, v6

    nop

    :cond_7
    move v2, v5

    .line 659
    .restart local v2    # "_hidl_is_oneway":Z
    if-eqz v2, :cond_17

    .line 660
    invoke-virtual {v1, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 661
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 662
    goto/16 :goto_7

    .line 645
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_5
    and-int/lit8 v2, p4, 0x1

    if-eqz v2, :cond_8

    move v5, v6

    nop

    :cond_8
    move v2, v5

    .line 646
    .restart local v2    # "_hidl_is_oneway":Z
    if-eq v2, v6, :cond_9

    .line 647
    invoke-virtual {v1, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 648
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 649
    goto/16 :goto_7

    .line 650
    :cond_9
    const-string v3, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 652
    invoke-virtual/range {p0 .. p0}, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorP2PIfaceCallback$Stub;->setHALInstrumentation()V

    .line 653
    goto/16 :goto_7

    .line 612
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_6
    and-int/lit8 v7, p4, 0x1

    if-eqz v7, :cond_a

    goto :goto_2

    :cond_a
    move v6, v5

    .line 613
    .local v6, "_hidl_is_oneway":Z
    :goto_2
    if-eqz v6, :cond_b

    .line 614
    invoke-virtual {v1, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 615
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 616
    goto/16 :goto_7

    .line 617
    :cond_b
    const-string v4, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 619
    invoke-virtual/range {p0 .. p0}, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorP2PIfaceCallback$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v4

    .line 620
    .local v4, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {v1, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 622
    new-instance v7, Landroid/os/HwBlob;

    const/16 v8, 0x10

    invoke-direct {v7, v8}, Landroid/os/HwBlob;-><init>(I)V

    .line 624
    .local v7, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 625
    .local v8, "_hidl_vec_size":I
    invoke-virtual {v7, v2, v3, v8}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 626
    const-wide/16 v2, 0xc

    invoke-virtual {v7, v2, v3, v5}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 627
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v8, 0x20

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 628
    .local v2, "childBlob":Landroid/os/HwBlob;
    nop

    .local v5, "_hidl_index_0":I
    :goto_3
    move v3, v5

    .end local v5    # "_hidl_index_0":I
    .local v3, "_hidl_index_0":I
    if-ge v3, v8, :cond_c

    .line 630
    mul-int/lit8 v5, v3, 0x20

    int-to-long v9, v5

    .line 631
    .local v9, "_hidl_array_offset_1":J
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    invoke-virtual {v2, v9, v10, v5}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 632
    nop

    .line 628
    .end local v9    # "_hidl_array_offset_1":J
    add-int/lit8 v5, v3, 0x1

    .end local v3    # "_hidl_index_0":I
    .restart local v5    # "_hidl_index_0":I
    goto :goto_3

    .line 635
    .end local v5    # "_hidl_index_0":I
    :cond_c
    const-wide/16 v9, 0x0

    invoke-virtual {v7, v9, v10, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 637
    .end local v2    # "childBlob":Landroid/os/HwBlob;
    .end local v8    # "_hidl_vec_size":I
    invoke-virtual {v1, v7}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 639
    .end local v7    # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 640
    goto/16 :goto_7

    .line 596
    .end local v4    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v6    # "_hidl_is_oneway":Z
    :sswitch_7
    and-int/lit8 v2, p4, 0x1

    if-eqz v2, :cond_d

    goto :goto_4

    :cond_d
    move v6, v5

    :goto_4
    move v2, v6

    .line 597
    .local v2, "_hidl_is_oneway":Z
    if-eqz v2, :cond_e

    .line 598
    invoke-virtual {v1, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 599
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 600
    goto/16 :goto_7

    .line 601
    :cond_e
    const-string v3, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 603
    invoke-virtual/range {p0 .. p0}, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorP2PIfaceCallback$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v3

    .line 604
    .local v3, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {v1, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 605
    invoke-virtual {v1, v3}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 606
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 607
    goto/16 :goto_7

    .line 582
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "_hidl_out_descriptor":Ljava/lang/String;
    :sswitch_8
    and-int/lit8 v2, p4, 0x1

    if-eqz v2, :cond_f

    goto :goto_5

    :cond_f
    move v6, v5

    :goto_5
    move v2, v6

    .line 583
    .restart local v2    # "_hidl_is_oneway":Z
    if-eqz v2, :cond_10

    .line 584
    invoke-virtual {v1, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 585
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 586
    goto/16 :goto_7

    .line 587
    :cond_10
    const-string v3, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 589
    invoke-virtual {v1, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 590
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 591
    goto/16 :goto_7

    .line 566
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_9
    and-int/lit8 v2, p4, 0x1

    if-eqz v2, :cond_11

    goto :goto_6

    :cond_11
    move v6, v5

    :goto_6
    move v2, v6

    .line 567
    .restart local v2    # "_hidl_is_oneway":Z
    if-eqz v2, :cond_12

    .line 568
    invoke-virtual {v1, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 569
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 570
    goto/16 :goto_7

    .line 571
    :cond_12
    const-string v3, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 573
    invoke-virtual/range {p0 .. p0}, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorP2PIfaceCallback$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v3

    .line 574
    .local v3, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v1, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 575
    invoke-virtual {v1, v3}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 576
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 577
    goto/16 :goto_7

    .line 551
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_a
    and-int/lit8 v2, p4, 0x1

    if-eqz v2, :cond_13

    move v5, v6

    nop

    :cond_13
    move v2, v5

    .line 552
    .restart local v2    # "_hidl_is_oneway":Z
    if-eq v2, v6, :cond_14

    .line 553
    invoke-virtual {v1, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 554
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 555
    goto/16 :goto_7

    .line 556
    :cond_14
    const-string v3, "vendor.qti.hardware.wifi.supplicant@2.0::ISupplicantVendorP2PIfaceCallback"

    invoke-virtual {v0, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 558
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v3

    .line 559
    .local v3, "info":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8()B

    move-result v4

    .line 560
    .local v4, "type":B
    move-object/from16 v13, p0

    invoke-virtual {v13, v3, v4}, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorP2PIfaceCallback$Stub;->onVendorExtensionFound(Ljava/util/ArrayList;B)V

    .line 561
    goto/16 :goto_7

    .line 489
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "info":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    .end local v4    # "type":B
    :sswitch_b
    move-object/from16 v13, p0

    and-int/lit8 v7, p4, 0x1

    if-eqz v7, :cond_15

    move v5, v6

    nop

    .line 490
    .local v5, "_hidl_is_oneway":Z
    :cond_15
    if-eq v5, v6, :cond_16

    .line 491
    invoke-virtual {v1, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 492
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 493
    goto/16 :goto_7

    .line 494
    :cond_16
    const-string v4, "vendor.qti.hardware.wifi.supplicant@2.0::ISupplicantVendorP2PIfaceCallback"

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 496
    const/4 v4, 0x6

    new-array v6, v4, [B

    .line 498
    .local v6, "srcAddress":[B
    const-wide/16 v7, 0x6

    invoke-virtual {v0, v7, v8}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v9

    .line 500
    .local v9, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v10, 0x0

    .line 501
    .local v10, "_hidl_array_offset_0":J
    invoke-virtual {v9, v10, v11, v6, v4}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 502
    nop

    .line 505
    .end local v9    # "_hidl_blob":Landroid/os/HwBlob;
    .end local v10    # "_hidl_array_offset_0":J
    new-array v12, v4, [B

    .line 507
    .local v12, "p2pDeviceAddress":[B
    invoke-virtual {v0, v7, v8}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v9

    .line 509
    .restart local v9    # "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v10, 0x0

    .line 510
    .restart local v10    # "_hidl_array_offset_0":J
    invoke-virtual {v9, v10, v11, v12, v4}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 511
    nop

    .line 514
    .end local v9    # "_hidl_blob":Landroid/os/HwBlob;
    .end local v10    # "_hidl_array_offset_0":J
    const/16 v9, 0x8

    new-array v11, v9, [B

    .line 516
    .local v11, "primaryDeviceType":[B
    invoke-virtual {v0, v2, v3}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v2

    .line 518
    .local v2, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v7, 0x0

    .line 519
    .local v7, "_hidl_array_offset_0":J
    invoke-virtual {v2, v7, v8, v11, v9}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 520
    nop

    .line 523
    .end local v2    # "_hidl_blob":Landroid/os/HwBlob;
    .end local v7    # "_hidl_array_offset_0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 524
    .local v2, "deviceName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt16()S

    move-result v3

    .line 525
    .local v3, "configMethods":S
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8()B

    move-result v18

    .line 526
    .local v18, "deviceCapabilities":B
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v19

    .line 527
    .local v19, "groupCapabilities":I
    new-array v10, v4, [B

    .line 529
    .local v10, "wfdDeviceInfo":[B
    const-wide/16 v7, 0x6

    invoke-virtual {v0, v7, v8}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v7

    .line 531
    .local v7, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v8, 0x0

    .line 532
    .local v8, "_hidl_array_offset_0":J
    invoke-virtual {v7, v8, v9, v10, v4}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 533
    nop

    .line 536
    .end local v7    # "_hidl_blob":Landroid/os/HwBlob;
    .end local v8    # "_hidl_array_offset_0":J
    const/4 v4, 0x2

    new-array v9, v4, [B

    .line 538
    .local v9, "wfdR2DeviceInfo":[B
    const-wide/16 v7, 0x2

    invoke-virtual {v0, v7, v8}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v7

    .line 540
    .restart local v7    # "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v0, 0x0

    .line 541
    .local v0, "_hidl_array_offset_0":J
    invoke-virtual {v7, v0, v1, v9, v4}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 542
    nop

    .line 545
    .end local v0    # "_hidl_array_offset_0":J
    .end local v7    # "_hidl_blob":Landroid/os/HwBlob;
    move-object v7, v13

    move-object v8, v6

    move-object v0, v9

    move-object v9, v12

    .end local v9    # "wfdR2DeviceInfo":[B
    .local v0, "wfdR2DeviceInfo":[B
    move-object v1, v10

    move-object v10, v11

    .end local v10    # "wfdDeviceInfo":[B
    .local v1, "wfdDeviceInfo":[B
    move-object v4, v11

    move-object v11, v2

    .end local v11    # "primaryDeviceType":[B
    .local v4, "primaryDeviceType":[B
    move-object/from16 v17, v12

    move v12, v3

    .end local v12    # "p2pDeviceAddress":[B
    .local v17, "p2pDeviceAddress":[B
    move/from16 v13, v18

    move/from16 v14, v19

    move-object v15, v1

    move-object/from16 v16, v0

    invoke-virtual/range {v7 .. v16}, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorP2PIfaceCallback$Stub;->onR2DeviceFound([B[B[BLjava/lang/String;SBI[B[B)V

    .line 546
    nop

    .line 721
    .end local v0    # "wfdR2DeviceInfo":[B
    .end local v1    # "wfdDeviceInfo":[B
    .end local v2    # "deviceName":Ljava/lang/String;
    .end local v3    # "configMethods":S
    .end local v4    # "primaryDeviceType":[B
    .end local v5    # "_hidl_is_oneway":Z
    .end local v6    # "srcAddress":[B
    .end local v17    # "p2pDeviceAddress":[B
    .end local v18    # "deviceCapabilities":B
    .end local v19    # "groupCapabilities":I
    :cond_17
    :goto_7
    return-void

    nop

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

    .line 442
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 1
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 468
    const-string v0, "vendor.qti.hardware.wifi.supplicant@2.0::ISupplicantVendorP2PIfaceCallback"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 469
    return-object p0

    .line 471
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

    .line 475
    invoke-virtual {p0, p1}, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorP2PIfaceCallback$Stub;->registerService(Ljava/lang/String;)V

    .line 476
    return-void
.end method

.method public final setHALInstrumentation()V
    .locals 0

    .line 433
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 480
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorP2PIfaceCallback$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 462
    const/4 v0, 0x1

    return v0
.end method
