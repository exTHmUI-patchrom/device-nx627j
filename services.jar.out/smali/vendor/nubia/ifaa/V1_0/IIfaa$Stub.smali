.class public abstract Lvendor/nubia/ifaa/V1_0/IIfaa$Stub;
.super Landroid/os/HwBinder;
.source "IIfaa.java"

# interfaces
.implements Lvendor/nubia/ifaa/V1_0/IIfaa;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/nubia/ifaa/V1_0/IIfaa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 297
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .locals 0

    .line 300
    return-object p0
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .locals 3

    .line 342
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 343
    .local v0, "info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 344
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 345
    const/4 v1, 0x0

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    .line 346
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

    .line 318
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
        0xft
        -0x35t
        -0x9t
        -0x54t
        -0x8t
        -0x2ft
        0x40t
        -0x7ft
        0x2ft
        -0x43t
        0x4bt
        0x1ct
        -0x6ct
        -0x50t
        0x23t
        0x4at
        -0x26t
        -0x4ft
        0x60t
        -0x42t
        0xbt
        -0x30t
        -0x77t
        -0x52t
        -0x4bt
        0x3at
        -0x3ct
        -0x73t
        0x15t
        -0x1at
        -0x47t
        -0x67t
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

    .line 305
    new-instance v0, Ljava/util/ArrayList;

    const-string/jumbo v1, "vendor.nubia.ifaa@1.0::IIfaa"

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

    .line 312
    const-string/jumbo v0, "vendor.nubia.ifaa@1.0::IIfaa"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 1
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .line 331
    const/4 v0, 0x1

    return v0
.end method

.method public final notifySyspropsChanged()V
    .locals 0

    .line 351
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 352
    return-void
.end method

.method public onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .locals 15
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

    .line 380
    const/high16 v2, -0x80000000

    const/4 v3, 0x0

    const/4 v4, 0x1

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_8

    .line 550
    :sswitch_0
    and-int/lit8 v5, p4, 0x1

    if-eqz v5, :cond_0

    move v3, v4

    nop

    .line 551
    .local v3, "_hidl_is_oneway":Z
    :cond_0
    if-eqz v3, :cond_15

    .line 552
    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 553
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 554
    goto/16 :goto_8

    .line 537
    .end local v3    # "_hidl_is_oneway":Z
    :sswitch_1
    and-int/lit8 v5, p4, 0x1

    if-eqz v5, :cond_1

    move v3, v4

    nop

    .line 538
    .restart local v3    # "_hidl_is_oneway":Z
    :cond_1
    if-eq v3, v4, :cond_2

    .line 539
    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 540
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 541
    goto/16 :goto_8

    .line 542
    :cond_2
    const-string v2, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 544
    invoke-virtual {p0}, Lvendor/nubia/ifaa/V1_0/IIfaa$Stub;->notifySyspropsChanged()V

    .line 545
    goto/16 :goto_8

    .line 521
    .end local v3    # "_hidl_is_oneway":Z
    :sswitch_2
    and-int/lit8 v5, p4, 0x1

    if-eqz v5, :cond_3

    goto :goto_0

    :cond_3
    move v4, v3

    .line 522
    .local v4, "_hidl_is_oneway":Z
    :goto_0
    if-eqz v4, :cond_4

    .line 523
    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 524
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 525
    goto/16 :goto_8

    .line 526
    :cond_4
    const-string v2, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 528
    invoke-virtual {p0}, Lvendor/nubia/ifaa/V1_0/IIfaa$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object v2

    .line 529
    .local v2, "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-virtual {v1, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 530
    invoke-virtual {v2, v1}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 531
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 532
    goto/16 :goto_8

    .line 506
    .end local v2    # "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    .end local v4    # "_hidl_is_oneway":Z
    :sswitch_3
    and-int/lit8 v5, p4, 0x1

    if-eqz v5, :cond_5

    goto :goto_1

    :cond_5
    move v4, v3

    .line 507
    .restart local v4    # "_hidl_is_oneway":Z
    :goto_1
    if-eqz v4, :cond_6

    .line 508
    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 509
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 510
    goto/16 :goto_8

    .line 511
    :cond_6
    const-string v2, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 513
    invoke-virtual {p0}, Lvendor/nubia/ifaa/V1_0/IIfaa$Stub;->ping()V

    .line 514
    invoke-virtual {v1, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 515
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 516
    goto/16 :goto_8

    .line 496
    .end local v4    # "_hidl_is_oneway":Z
    :sswitch_4
    and-int/lit8 v5, p4, 0x1

    if-eqz v5, :cond_7

    move v3, v4

    nop

    .line 497
    .restart local v3    # "_hidl_is_oneway":Z
    :cond_7
    if-eqz v3, :cond_15

    .line 498
    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 499
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 500
    goto/16 :goto_8

    .line 483
    .end local v3    # "_hidl_is_oneway":Z
    :sswitch_5
    and-int/lit8 v5, p4, 0x1

    if-eqz v5, :cond_8

    move v3, v4

    nop

    .line 484
    .restart local v3    # "_hidl_is_oneway":Z
    :cond_8
    if-eq v3, v4, :cond_9

    .line 485
    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 486
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 487
    goto/16 :goto_8

    .line 488
    :cond_9
    const-string v2, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 490
    invoke-virtual {p0}, Lvendor/nubia/ifaa/V1_0/IIfaa$Stub;->setHALInstrumentation()V

    .line 491
    goto/16 :goto_8

    .line 450
    .end local v3    # "_hidl_is_oneway":Z
    :sswitch_6
    and-int/lit8 v5, p4, 0x1

    if-eqz v5, :cond_a

    goto :goto_2

    :cond_a
    move v4, v3

    .line 451
    .restart local v4    # "_hidl_is_oneway":Z
    :goto_2
    if-eqz v4, :cond_b

    .line 452
    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 453
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 454
    goto/16 :goto_8

    .line 455
    :cond_b
    const-string v2, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 457
    invoke-virtual {p0}, Lvendor/nubia/ifaa/V1_0/IIfaa$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v2

    .line 458
    .local v2, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {v1, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 460
    new-instance v5, Landroid/os/HwBlob;

    const/16 v6, 0x10

    invoke-direct {v5, v6}, Landroid/os/HwBlob;-><init>(I)V

    .line 462
    .local v5, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 463
    .local v6, "_hidl_vec_size":I
    const-wide/16 v7, 0x8

    invoke-virtual {v5, v7, v8, v6}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 464
    const-wide/16 v7, 0xc

    invoke-virtual {v5, v7, v8, v3}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 465
    new-instance v7, Landroid/os/HwBlob;

    mul-int/lit8 v8, v6, 0x20

    invoke-direct {v7, v8}, Landroid/os/HwBlob;-><init>(I)V

    .line 466
    .local v7, "childBlob":Landroid/os/HwBlob;
    nop

    .line 466
    .local v3, "_hidl_index_0":I
    :goto_3
    if-ge v3, v6, :cond_c

    .line 468
    mul-int/lit8 v8, v3, 0x20

    int-to-long v8, v8

    .line 469
    .local v8, "_hidl_array_offset_1":J
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [B

    invoke-virtual {v7, v8, v9, v10}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 470
    nop

    .line 466
    .end local v8    # "_hidl_array_offset_1":J
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 473
    .end local v3    # "_hidl_index_0":I
    :cond_c
    const-wide/16 v8, 0x0

    invoke-virtual {v5, v8, v9, v7}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 475
    .end local v6    # "_hidl_vec_size":I
    .end local v7    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v1, v5}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 477
    .end local v5    # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 478
    goto/16 :goto_8

    .line 434
    .end local v2    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v4    # "_hidl_is_oneway":Z
    :sswitch_7
    and-int/lit8 v5, p4, 0x1

    if-eqz v5, :cond_d

    goto :goto_4

    :cond_d
    move v4, v3

    .line 435
    .restart local v4    # "_hidl_is_oneway":Z
    :goto_4
    if-eqz v4, :cond_e

    .line 436
    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 437
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 438
    goto/16 :goto_8

    .line 439
    :cond_e
    const-string v2, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 441
    invoke-virtual {p0}, Lvendor/nubia/ifaa/V1_0/IIfaa$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v2

    .line 442
    .local v2, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {v1, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 443
    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 444
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 445
    goto/16 :goto_8

    .line 420
    .end local v2    # "_hidl_out_descriptor":Ljava/lang/String;
    .end local v4    # "_hidl_is_oneway":Z
    :sswitch_8
    and-int/lit8 v5, p4, 0x1

    if-eqz v5, :cond_f

    goto :goto_5

    :cond_f
    move v4, v3

    .line 421
    .restart local v4    # "_hidl_is_oneway":Z
    :goto_5
    if-eqz v4, :cond_10

    .line 422
    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 423
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 424
    goto/16 :goto_8

    .line 425
    :cond_10
    const-string v2, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 427
    invoke-virtual {v1, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 428
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 429
    goto :goto_8

    .line 404
    .end local v4    # "_hidl_is_oneway":Z
    :sswitch_9
    and-int/lit8 v5, p4, 0x1

    if-eqz v5, :cond_11

    goto :goto_6

    :cond_11
    move v4, v3

    .line 405
    .restart local v4    # "_hidl_is_oneway":Z
    :goto_6
    if-eqz v4, :cond_12

    .line 406
    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 407
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 408
    goto :goto_8

    .line 409
    :cond_12
    const-string v2, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 411
    invoke-virtual {p0}, Lvendor/nubia/ifaa/V1_0/IIfaa$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v2

    .line 412
    .local v2, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v1, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 413
    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 414
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 415
    goto :goto_8

    .line 383
    .end local v2    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4    # "_hidl_is_oneway":Z
    :sswitch_a
    and-int/lit8 v5, p4, 0x1

    if-eqz v5, :cond_13

    goto :goto_7

    :cond_13
    move v4, v3

    .line 384
    .restart local v4    # "_hidl_is_oneway":Z
    :goto_7
    if-eqz v4, :cond_14

    .line 385
    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 386
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 387
    goto :goto_8

    .line 388
    :cond_14
    const-string/jumbo v2, "vendor.nubia.ifaa@1.0::IIfaa"

    invoke-virtual {v0, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 390
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 391
    .local v2, "cmd":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v11

    .line 392
    .local v11, "param1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v12

    .line 393
    .local v12, "param2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v13

    .line 394
    .local v13, "send_buf":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v14

    .line 395
    .local v14, "sbuf_len":I
    move-object v5, p0

    move v6, v2

    move v7, v11

    move v8, v12

    move-object v9, v13

    move v10, v14

    invoke-virtual/range {v5 .. v10}, Lvendor/nubia/ifaa/V1_0/IIfaa$Stub;->processCmd(IIILjava/util/ArrayList;I)Ljava/util/ArrayList;

    move-result-object v5

    .line 396
    .local v5, "_hidl_out_rev_buf":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {v1, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 397
    invoke-virtual {v1, v5}, Landroid/os/HwParcel;->writeInt8Vector(Ljava/util/ArrayList;)V

    .line 398
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 399
    nop

    .line 559
    .end local v2    # "cmd":I
    .end local v4    # "_hidl_is_oneway":Z
    .end local v5    # "_hidl_out_rev_buf":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    .end local v11    # "param1":I
    .end local v12    # "param2":I
    .end local v13    # "send_buf":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    .end local v14    # "sbuf_len":I
    :cond_15
    :goto_8
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_a
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

    .line 336
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 1
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 362
    const-string/jumbo v0, "vendor.nubia.ifaa@1.0::IIfaa"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 363
    return-object p0

    .line 365
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

    .line 369
    invoke-virtual {p0, p1}, Lvendor/nubia/ifaa/V1_0/IIfaa$Stub;->registerService(Ljava/lang/String;)V

    .line 370
    return-void
.end method

.method public final setHALInstrumentation()V
    .locals 0

    .line 327
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 374
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lvendor/nubia/ifaa/V1_0/IIfaa$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 356
    const/4 v0, 0x1

    return v0
.end method
