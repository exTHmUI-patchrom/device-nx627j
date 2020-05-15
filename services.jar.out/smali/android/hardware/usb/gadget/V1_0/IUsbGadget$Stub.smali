.class public abstract Landroid/hardware/usb/gadget/V1_0/IUsbGadget$Stub;
.super Landroid/os/HwBinder;
.source "IUsbGadget.java"

# interfaces
.implements Landroid/hardware/usb/gadget/V1_0/IUsbGadget;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/usb/gadget/V1_0/IUsbGadget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 320
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .locals 0

    .line 323
    return-object p0
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .locals 3

    .line 365
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 366
    .local v0, "info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 367
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 368
    const/4 v1, 0x0

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    .line 369
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

    .line 341
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
        -0x73t
        -0x21t
        -0x59t
        0x54t
        0x27t
        0x72t
        -0x34t
        0x7bt
        -0x36t
        0x19t
        -0x69t
        0x2bt
        0x2dt
        -0x7bt
        0x62t
        0x64t
        -0x11t
        -0x5dt
        0x19t
        0x14t
        -0x41t
        -0x30t
        -0x68t
        -0x52t
        -0x49t
        -0x3et
        0x7t
        -0x63t
        -0x6bt
        0x1t
        -0x6ct
        -0x35t
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

    .line 328
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "android.hardware.usb.gadget@1.0::IUsbGadget"

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

    .line 335
    const-string v0, "android.hardware.usb.gadget@1.0::IUsbGadget"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 1
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .line 354
    const/4 v0, 0x1

    return v0
.end method

.method public final notifySyspropsChanged()V
    .locals 0

    .line 374
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 375
    return-void
.end method

.method public onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .locals 16
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

    .line 403
    const/high16 v2, -0x80000000

    const/4 v3, 0x0

    const/4 v4, 0x1

    sparse-switch p1, :sswitch_data_0

    .line 591
    :cond_0
    :goto_0
    move-object/from16 v11, p0

    goto/16 :goto_8

    .line 582
    :sswitch_0
    and-int/lit8 v5, p4, 0x1

    if-eqz v5, :cond_1

    move v3, v4

    nop

    .line 583
    .local v3, "_hidl_is_oneway":Z
    :cond_1
    if-eqz v3, :cond_0

    .line 584
    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 585
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 586
    goto :goto_0

    .line 569
    .end local v3    # "_hidl_is_oneway":Z
    :sswitch_1
    and-int/lit8 v5, p4, 0x1

    if-eqz v5, :cond_2

    move v3, v4

    nop

    .line 570
    .restart local v3    # "_hidl_is_oneway":Z
    :cond_2
    if-eq v3, v4, :cond_3

    .line 571
    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 572
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 573
    goto :goto_0

    .line 574
    :cond_3
    const-string v2, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 576
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/usb/gadget/V1_0/IUsbGadget$Stub;->notifySyspropsChanged()V

    .line 577
    goto :goto_0

    .line 553
    .end local v3    # "_hidl_is_oneway":Z
    :sswitch_2
    and-int/lit8 v5, p4, 0x1

    if-eqz v5, :cond_4

    goto :goto_1

    :cond_4
    move v4, v3

    .line 554
    .local v4, "_hidl_is_oneway":Z
    :goto_1
    if-eqz v4, :cond_5

    .line 555
    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 556
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 557
    goto :goto_0

    .line 558
    :cond_5
    const-string v2, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 560
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/usb/gadget/V1_0/IUsbGadget$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object v2

    .line 561
    .local v2, "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-virtual {v1, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 562
    invoke-virtual {v2, v1}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 563
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 564
    goto :goto_0

    .line 538
    .end local v2    # "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    .end local v4    # "_hidl_is_oneway":Z
    :sswitch_3
    and-int/lit8 v5, p4, 0x1

    if-eqz v5, :cond_6

    goto :goto_2

    :cond_6
    move v4, v3

    .line 539
    .restart local v4    # "_hidl_is_oneway":Z
    :goto_2
    if-eqz v4, :cond_7

    .line 540
    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 541
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 542
    goto :goto_0

    .line 543
    :cond_7
    const-string v2, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 545
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/usb/gadget/V1_0/IUsbGadget$Stub;->ping()V

    .line 546
    invoke-virtual {v1, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 547
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 548
    goto :goto_0

    .line 528
    .end local v4    # "_hidl_is_oneway":Z
    :sswitch_4
    and-int/lit8 v5, p4, 0x1

    if-eqz v5, :cond_8

    move v3, v4

    nop

    .line 529
    .restart local v3    # "_hidl_is_oneway":Z
    :cond_8
    if-eqz v3, :cond_0

    .line 530
    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 531
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 532
    goto :goto_0

    .line 515
    .end local v3    # "_hidl_is_oneway":Z
    :sswitch_5
    and-int/lit8 v5, p4, 0x1

    if-eqz v5, :cond_9

    move v3, v4

    nop

    .line 516
    .restart local v3    # "_hidl_is_oneway":Z
    :cond_9
    if-eq v3, v4, :cond_a

    .line 517
    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 518
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 519
    goto/16 :goto_0

    .line 520
    :cond_a
    const-string v2, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 522
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/usb/gadget/V1_0/IUsbGadget$Stub;->setHALInstrumentation()V

    .line 523
    goto/16 :goto_0

    .line 482
    .end local v3    # "_hidl_is_oneway":Z
    :sswitch_6
    and-int/lit8 v5, p4, 0x1

    if-eqz v5, :cond_b

    goto :goto_3

    :cond_b
    move v4, v3

    .line 483
    .restart local v4    # "_hidl_is_oneway":Z
    :goto_3
    if-eqz v4, :cond_c

    .line 484
    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 485
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 486
    goto/16 :goto_0

    .line 487
    :cond_c
    const-string v2, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 489
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/usb/gadget/V1_0/IUsbGadget$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v2

    .line 490
    .local v2, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {v1, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 492
    new-instance v5, Landroid/os/HwBlob;

    const/16 v6, 0x10

    invoke-direct {v5, v6}, Landroid/os/HwBlob;-><init>(I)V

    .line 494
    .local v5, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 495
    .local v6, "_hidl_vec_size":I
    const-wide/16 v7, 0x8

    invoke-virtual {v5, v7, v8, v6}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 496
    const-wide/16 v7, 0xc

    invoke-virtual {v5, v7, v8, v3}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 497
    new-instance v7, Landroid/os/HwBlob;

    mul-int/lit8 v8, v6, 0x20

    invoke-direct {v7, v8}, Landroid/os/HwBlob;-><init>(I)V

    .line 498
    .local v7, "childBlob":Landroid/os/HwBlob;
    nop

    .local v3, "_hidl_index_0":I
    :goto_4
    if-ge v3, v6, :cond_d

    .line 500
    mul-int/lit8 v8, v3, 0x20

    int-to-long v8, v8

    .line 501
    .local v8, "_hidl_array_offset_1":J
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [B

    invoke-virtual {v7, v8, v9, v10}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 502
    nop

    .line 498
    .end local v8    # "_hidl_array_offset_1":J
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 505
    .end local v3    # "_hidl_index_0":I
    :cond_d
    const-wide/16 v8, 0x0

    invoke-virtual {v5, v8, v9, v7}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 507
    .end local v6    # "_hidl_vec_size":I
    .end local v7    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v1, v5}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 509
    .end local v5    # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 510
    goto/16 :goto_0

    .line 466
    .end local v2    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v4    # "_hidl_is_oneway":Z
    :sswitch_7
    and-int/lit8 v5, p4, 0x1

    if-eqz v5, :cond_e

    goto :goto_5

    :cond_e
    move v4, v3

    .line 467
    .restart local v4    # "_hidl_is_oneway":Z
    :goto_5
    if-eqz v4, :cond_f

    .line 468
    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 469
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 470
    goto/16 :goto_0

    .line 471
    :cond_f
    const-string v2, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 473
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/usb/gadget/V1_0/IUsbGadget$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v2

    .line 474
    .local v2, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {v1, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 475
    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 476
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 477
    goto/16 :goto_0

    .line 452
    .end local v2    # "_hidl_out_descriptor":Ljava/lang/String;
    .end local v4    # "_hidl_is_oneway":Z
    :sswitch_8
    and-int/lit8 v5, p4, 0x1

    if-eqz v5, :cond_10

    goto :goto_6

    :cond_10
    move v4, v3

    .line 453
    .restart local v4    # "_hidl_is_oneway":Z
    :goto_6
    if-eqz v4, :cond_11

    .line 454
    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 455
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 456
    goto/16 :goto_0

    .line 457
    :cond_11
    const-string v2, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 459
    invoke-virtual {v1, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 460
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 461
    goto/16 :goto_0

    .line 436
    .end local v4    # "_hidl_is_oneway":Z
    :sswitch_9
    and-int/lit8 v5, p4, 0x1

    if-eqz v5, :cond_12

    goto :goto_7

    :cond_12
    move v4, v3

    .line 437
    .restart local v4    # "_hidl_is_oneway":Z
    :goto_7
    if-eqz v4, :cond_13

    .line 438
    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 439
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 440
    goto/16 :goto_0

    .line 441
    :cond_13
    const-string v2, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 443
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/usb/gadget/V1_0/IUsbGadget$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v2

    .line 444
    .local v2, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v1, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 445
    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 446
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 447
    goto/16 :goto_0

    .line 422
    .end local v2    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4    # "_hidl_is_oneway":Z
    :sswitch_a
    and-int/lit8 v5, p4, 0x1

    if-eqz v5, :cond_14

    move v3, v4

    nop

    .line 423
    .local v3, "_hidl_is_oneway":Z
    :cond_14
    if-eq v3, v4, :cond_15

    .line 424
    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 425
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 426
    goto/16 :goto_0

    .line 427
    :cond_15
    const-string v2, "android.hardware.usb.gadget@1.0::IUsbGadget"

    invoke-virtual {v0, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 429
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/usb/gadget/V1_0/IUsbGadgetCallback;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/usb/gadget/V1_0/IUsbGadgetCallback;

    move-result-object v2

    .line 430
    .local v2, "callback":Landroid/hardware/usb/gadget/V1_0/IUsbGadgetCallback;
    move-object/from16 v11, p0

    invoke-virtual {v11, v2}, Landroid/hardware/usb/gadget/V1_0/IUsbGadget$Stub;->getCurrentUsbFunctions(Landroid/hardware/usb/gadget/V1_0/IUsbGadgetCallback;)V

    .line 431
    goto :goto_8

    .line 406
    .end local v2    # "callback":Landroid/hardware/usb/gadget/V1_0/IUsbGadgetCallback;
    .end local v3    # "_hidl_is_oneway":Z
    :sswitch_b
    move-object/from16 v11, p0

    and-int/lit8 v5, p4, 0x1

    if-eqz v5, :cond_16

    move v3, v4

    nop

    .line 407
    .restart local v3    # "_hidl_is_oneway":Z
    :cond_16
    if-eq v3, v4, :cond_17

    .line 408
    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 409
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 410
    goto :goto_8

    .line 411
    :cond_17
    const-string v2, "android.hardware.usb.gadget@1.0::IUsbGadget"

    invoke-virtual {v0, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 413
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v12

    .line 414
    .local v12, "functions":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/usb/gadget/V1_0/IUsbGadgetCallback;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/usb/gadget/V1_0/IUsbGadgetCallback;

    move-result-object v2

    .line 415
    .restart local v2    # "callback":Landroid/hardware/usb/gadget/V1_0/IUsbGadgetCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v14

    .line 416
    .local v14, "timeout":J
    move-object v5, v11

    move-wide v6, v12

    move-object v8, v2

    move-wide v9, v14

    invoke-virtual/range {v5 .. v10}, Landroid/hardware/usb/gadget/V1_0/IUsbGadget$Stub;->setCurrentUsbFunctions(JLandroid/hardware/usb/gadget/V1_0/IUsbGadgetCallback;J)V

    .line 417
    nop

    .line 591
    .end local v2    # "callback":Landroid/hardware/usb/gadget/V1_0/IUsbGadgetCallback;
    .end local v3    # "_hidl_is_oneway":Z
    .end local v12    # "functions":J
    .end local v14    # "timeout":J
    :goto_8
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

    .line 359
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 1
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 385
    const-string v0, "android.hardware.usb.gadget@1.0::IUsbGadget"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 386
    return-object p0

    .line 388
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

    .line 392
    invoke-virtual {p0, p1}, Landroid/hardware/usb/gadget/V1_0/IUsbGadget$Stub;->registerService(Ljava/lang/String;)V

    .line 393
    return-void
.end method

.method public final setHALInstrumentation()V
    .locals 0

    .line 350
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 397
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/usb/gadget/V1_0/IUsbGadget$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 379
    const/4 v0, 0x1

    return v0
.end method
