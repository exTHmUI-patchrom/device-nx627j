.class public abstract Landroid/hardware/cas/V1_0/IMediaCasService$Stub;
.super Landroid/os/HwBinder;
.source "IMediaCasService.java"

# interfaces
.implements Landroid/hardware/cas/V1_0/IMediaCasService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/cas/V1_0/IMediaCasService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 409
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .locals 0

    .line 412
    return-object p0
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .locals 3

    .line 454
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 455
    .local v0, "info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 456
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 457
    const/4 v1, 0x0

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    .line 458
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

    .line 430
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
        -0x7at
        -0x46t
        -0x64t
        0x3t
        -0x69t
        -0x75t
        0x79t
        -0x59t
        0x42t
        -0x17t
        -0x70t
        0x42t
        0xbt
        -0x3bt
        -0x32t
        -0x30t
        0x67t
        0x3dt
        0x25t
        -0x57t
        0x39t
        -0x8t
        0x25t
        0x72t
        -0x67t
        0x6bt
        -0x11t
        -0x6et
        0x62t
        0x1et
        0x20t
        0x14t
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

    .line 417
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "android.hardware.cas@1.0::IMediaCasService"

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

    .line 424
    const-string v0, "android.hardware.cas@1.0::IMediaCasService"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 1
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .line 443
    const/4 v0, 0x1

    return v0
.end method

.method public final notifySyspropsChanged()V
    .locals 0

    .line 463
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 464
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

    .line 492
    const/4 v0, 0x0

    const/high16 v1, -0x80000000

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch p1, :pswitch_data_0

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_e

    .line 726
    :sswitch_0
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_0

    move v2, v3

    nop

    :cond_0
    move v0, v2

    .line 727
    .local v0, "_hidl_is_oneway":Z
    if-eqz v0, :cond_1f

    .line 728
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 729
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 730
    goto/16 :goto_e

    .line 713
    .end local v0    # "_hidl_is_oneway":Z
    :sswitch_1
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1

    move v2, v3

    nop

    :cond_1
    move v0, v2

    .line 714
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v3, :cond_2

    .line 715
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 716
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 717
    goto/16 :goto_e

    .line 718
    :cond_2
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 720
    invoke-virtual {p0}, Landroid/hardware/cas/V1_0/IMediaCasService$Stub;->notifySyspropsChanged()V

    .line 721
    goto/16 :goto_e

    .line 697
    .end local v0    # "_hidl_is_oneway":Z
    :sswitch_2
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    move v3, v2

    :goto_0
    move v0, v3

    .line 698
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_4

    .line 699
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 700
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 701
    goto/16 :goto_e

    .line 702
    :cond_4
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 704
    invoke-virtual {p0}, Landroid/hardware/cas/V1_0/IMediaCasService$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object v1

    .line 705
    .local v1, "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 706
    invoke-virtual {v1, p3}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 707
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 708
    goto/16 :goto_e

    .line 682
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    :sswitch_3
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_5

    goto :goto_1

    :cond_5
    move v3, v2

    :goto_1
    move v0, v3

    .line 683
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_6

    .line 684
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 685
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 686
    goto/16 :goto_e

    .line 687
    :cond_6
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 689
    invoke-virtual {p0}, Landroid/hardware/cas/V1_0/IMediaCasService$Stub;->ping()V

    .line 690
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 691
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 692
    goto/16 :goto_e

    .line 672
    .end local v0    # "_hidl_is_oneway":Z
    :sswitch_4
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_7

    move v2, v3

    nop

    :cond_7
    move v0, v2

    .line 673
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_1f

    .line 674
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 675
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 676
    goto/16 :goto_e

    .line 659
    .end local v0    # "_hidl_is_oneway":Z
    :sswitch_5
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_8

    move v2, v3

    nop

    :cond_8
    move v0, v2

    .line 660
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v3, :cond_9

    .line 661
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 662
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 663
    goto/16 :goto_e

    .line 664
    :cond_9
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 666
    invoke-virtual {p0}, Landroid/hardware/cas/V1_0/IMediaCasService$Stub;->setHALInstrumentation()V

    .line 667
    goto/16 :goto_e

    .line 626
    .end local v0    # "_hidl_is_oneway":Z
    :sswitch_6
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_a

    goto :goto_2

    :cond_a
    move v3, v2

    :goto_2
    move v0, v3

    .line 627
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_b

    .line 628
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 629
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 630
    goto/16 :goto_e

    .line 631
    :cond_b
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 633
    invoke-virtual {p0}, Landroid/hardware/cas/V1_0/IMediaCasService$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v1

    .line 634
    .local v1, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 636
    new-instance v3, Landroid/os/HwBlob;

    const/16 v4, 0x10

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 638
    .local v3, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 639
    .local v4, "_hidl_vec_size":I
    const-wide/16 v5, 0x8

    invoke-virtual {v3, v5, v6, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 640
    const-wide/16 v5, 0xc

    invoke-virtual {v3, v5, v6, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 641
    new-instance v5, Landroid/os/HwBlob;

    mul-int/lit8 v6, v4, 0x20

    invoke-direct {v5, v6}, Landroid/os/HwBlob;-><init>(I)V

    .line 642
    .local v5, "childBlob":Landroid/os/HwBlob;
    nop

    .local v2, "_hidl_index_0":I
    :goto_3
    if-ge v2, v4, :cond_c

    .line 644
    mul-int/lit8 v6, v2, 0x20

    int-to-long v6, v6

    .line 645
    .local v6, "_hidl_array_offset_1":J
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 646
    nop

    .line 642
    .end local v6    # "_hidl_array_offset_1":J
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 649
    .end local v2    # "_hidl_index_0":I
    :cond_c
    const-wide/16 v6, 0x0

    invoke-virtual {v3, v6, v7, v5}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 651
    .end local v4    # "_hidl_vec_size":I
    .end local v5    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 653
    .end local v3    # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 654
    goto/16 :goto_e

    .line 610
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :sswitch_7
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_d

    goto :goto_4

    :cond_d
    move v3, v2

    :goto_4
    move v0, v3

    .line 611
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_e

    .line 612
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 613
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 614
    goto/16 :goto_e

    .line 615
    :cond_e
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 617
    invoke-virtual {p0}, Landroid/hardware/cas/V1_0/IMediaCasService$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v1

    .line 618
    .local v1, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 619
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 620
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 621
    goto/16 :goto_e

    .line 596
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "_hidl_out_descriptor":Ljava/lang/String;
    :sswitch_8
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_f

    goto :goto_5

    :cond_f
    move v3, v2

    :goto_5
    move v0, v3

    .line 597
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_10

    .line 598
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 599
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 600
    goto/16 :goto_e

    .line 601
    :cond_10
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 603
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 604
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 605
    goto/16 :goto_e

    .line 580
    .end local v0    # "_hidl_is_oneway":Z
    :sswitch_9
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_11

    goto :goto_6

    :cond_11
    move v3, v2

    :goto_6
    move v0, v3

    .line 581
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_12

    .line 582
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 583
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 584
    goto/16 :goto_e

    .line 585
    :cond_12
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 587
    invoke-virtual {p0}, Landroid/hardware/cas/V1_0/IMediaCasService$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v1

    .line 588
    .local v1, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 589
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 590
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 591
    goto/16 :goto_e

    .line 563
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :pswitch_0
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_13

    goto :goto_7

    :cond_13
    move v3, v2

    .line 564
    .local v3, "_hidl_is_oneway":Z
    :goto_7
    if-eqz v3, :cond_14

    .line 565
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 566
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 567
    goto/16 :goto_e

    .line 568
    :cond_14
    const-string v1, "android.hardware.cas@1.0::IMediaCasService"

    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 570
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 571
    .local v1, "CA_system_id":I
    invoke-virtual {p0, v1}, Landroid/hardware/cas/V1_0/IMediaCasService$Stub;->createDescrambler(I)Landroid/hardware/cas/V1_0/IDescramblerBase;

    move-result-object v4

    .line 572
    .local v4, "_hidl_out_descrambler":Landroid/hardware/cas/V1_0/IDescramblerBase;
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 573
    if-nez v4, :cond_15

    goto :goto_8

    :cond_15
    invoke-interface {v4}, Landroid/hardware/cas/V1_0/IDescramblerBase;->asBinder()Landroid/os/IHwBinder;

    move-result-object v0

    :goto_8
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 574
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 575
    goto/16 :goto_e

    .line 546
    .end local v1    # "CA_system_id":I
    .end local v3    # "_hidl_is_oneway":Z
    .end local v4    # "_hidl_out_descrambler":Landroid/hardware/cas/V1_0/IDescramblerBase;
    :pswitch_1
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_16

    goto :goto_9

    :cond_16
    move v3, v2

    :goto_9
    move v0, v3

    .line 547
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_17

    .line 548
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 549
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 550
    goto/16 :goto_e

    .line 551
    :cond_17
    const-string v1, "android.hardware.cas@1.0::IMediaCasService"

    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 553
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 554
    .restart local v1    # "CA_system_id":I
    invoke-virtual {p0, v1}, Landroid/hardware/cas/V1_0/IMediaCasService$Stub;->isDescramblerSupported(I)Z

    move-result v3

    .line 555
    .local v3, "_hidl_out_result":Z
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 556
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 557
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 558
    goto/16 :goto_e

    .line 528
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "CA_system_id":I
    .end local v3    # "_hidl_out_result":Z
    :pswitch_2
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_18

    goto :goto_a

    :cond_18
    move v3, v2

    .line 529
    .local v3, "_hidl_is_oneway":Z
    :goto_a
    if-eqz v3, :cond_19

    .line 530
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 531
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 532
    goto/16 :goto_e

    .line 533
    :cond_19
    const-string v1, "android.hardware.cas@1.0::IMediaCasService"

    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 535
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 536
    .restart local v1    # "CA_system_id":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/hardware/cas/V1_0/ICasListener;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/cas/V1_0/ICasListener;

    move-result-object v4

    .line 537
    .local v4, "listener":Landroid/hardware/cas/V1_0/ICasListener;
    invoke-virtual {p0, v1, v4}, Landroid/hardware/cas/V1_0/IMediaCasService$Stub;->createPlugin(ILandroid/hardware/cas/V1_0/ICasListener;)Landroid/hardware/cas/V1_0/ICas;

    move-result-object v5

    .line 538
    .local v5, "_hidl_out_cas":Landroid/hardware/cas/V1_0/ICas;
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 539
    if-nez v5, :cond_1a

    goto :goto_b

    :cond_1a
    invoke-interface {v5}, Landroid/hardware/cas/V1_0/ICas;->asBinder()Landroid/os/IHwBinder;

    move-result-object v0

    :goto_b
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 540
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 541
    goto :goto_e

    .line 511
    .end local v1    # "CA_system_id":I
    .end local v3    # "_hidl_is_oneway":Z
    .end local v4    # "listener":Landroid/hardware/cas/V1_0/ICasListener;
    .end local v5    # "_hidl_out_cas":Landroid/hardware/cas/V1_0/ICas;
    :pswitch_3
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1b

    goto :goto_c

    :cond_1b
    move v3, v2

    :goto_c
    move v0, v3

    .line 512
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_1c

    .line 513
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 514
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 515
    goto :goto_e

    .line 516
    :cond_1c
    const-string v1, "android.hardware.cas@1.0::IMediaCasService"

    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 518
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 519
    .restart local v1    # "CA_system_id":I
    invoke-virtual {p0, v1}, Landroid/hardware/cas/V1_0/IMediaCasService$Stub;->isSystemIdSupported(I)Z

    move-result v3

    .line 520
    .local v3, "_hidl_out_result":Z
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 521
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 522
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 523
    goto :goto_e

    .line 495
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "CA_system_id":I
    .end local v3    # "_hidl_out_result":Z
    :pswitch_4
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1d

    goto :goto_d

    :cond_1d
    move v3, v2

    :goto_d
    move v0, v3

    .line 496
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_1e

    .line 497
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 498
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 499
    goto :goto_e

    .line 500
    :cond_1e
    const-string v1, "android.hardware.cas@1.0::IMediaCasService"

    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 502
    invoke-virtual {p0}, Landroid/hardware/cas/V1_0/IMediaCasService$Stub;->enumeratePlugins()Ljava/util/ArrayList;

    move-result-object v1

    .line 503
    .local v1, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/cas/V1_0/HidlCasPluginDescriptor;>;"
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 504
    invoke-static {p3, v1}, Landroid/hardware/cas/V1_0/HidlCasPluginDescriptor;->writeVectorToParcel(Landroid/os/HwParcel;Ljava/util/ArrayList;)V

    .line 505
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 506
    nop

    .line 735
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/cas/V1_0/HidlCasPluginDescriptor;>;"
    :cond_1f
    :goto_e
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 448
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 1
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 474
    const-string v0, "android.hardware.cas@1.0::IMediaCasService"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 475
    return-object p0

    .line 477
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

    .line 481
    invoke-virtual {p0, p1}, Landroid/hardware/cas/V1_0/IMediaCasService$Stub;->registerService(Ljava/lang/String;)V

    .line 482
    return-void
.end method

.method public final setHALInstrumentation()V
    .locals 0

    .line 439
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 486
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/cas/V1_0/IMediaCasService$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 468
    const/4 v0, 0x1

    return v0
.end method
