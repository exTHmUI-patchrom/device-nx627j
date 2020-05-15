.class public final Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;
.super Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;
.source "CarrierIdProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/nano/CarrierIdProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CarrierAttribute"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano<",
        "Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;


# instance fields
.field public gid1:[Ljava/lang/String;

.field public gid2:[Ljava/lang/String;

.field public iccidPrefix:[Ljava/lang/String;

.field public imsiPrefixXpattern:[Ljava/lang/String;

.field public mccmncTuple:[Ljava/lang/String;

.field public plmn:[Ljava/lang/String;

.field public preferredApn:[Ljava/lang/String;

.field public spn:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 316
    invoke-direct {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 317
    invoke-virtual {p0}, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->clear()Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;

    .line 318
    return-void
.end method

.method public static emptyArray()[Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;
    .locals 2

    .line 281
    sget-object v0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->_emptyArray:[Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;

    if-nez v0, :cond_1

    .line 282
    sget-object v0, Lcom/android/internal/telephony/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 284
    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->_emptyArray:[Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;

    if-nez v1, :cond_0

    .line 285
    const/4 v1, 0x0

    new-array v1, v1, [Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;

    sput-object v1, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->_emptyArray:[Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;

    .line 287
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 289
    :cond_1
    :goto_0
    sget-object v0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->_emptyArray:[Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;

    return-object v0
.end method

.method public static parseFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;
    .locals 1
    .param p0, "input"    # Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 685
    new-instance v0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 679
    new-instance v0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;-><init>()V

    invoke-static {v0, p0}, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/MessageNano;[B)Lcom/android/internal/telephony/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;
    .locals 1

    .line 321
    sget-object v0, Lcom/android/internal/telephony/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->mccmncTuple:[Ljava/lang/String;

    .line 322
    sget-object v0, Lcom/android/internal/telephony/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->imsiPrefixXpattern:[Ljava/lang/String;

    .line 323
    sget-object v0, Lcom/android/internal/telephony/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->spn:[Ljava/lang/String;

    .line 324
    sget-object v0, Lcom/android/internal/telephony/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->plmn:[Ljava/lang/String;

    .line 325
    sget-object v0, Lcom/android/internal/telephony/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->gid1:[Ljava/lang/String;

    .line 326
    sget-object v0, Lcom/android/internal/telephony/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->gid2:[Ljava/lang/String;

    .line 327
    sget-object v0, Lcom/android/internal/telephony/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->preferredApn:[Ljava/lang/String;

    .line 328
    sget-object v0, Lcom/android/internal/telephony/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->iccidPrefix:[Ljava/lang/String;

    .line 329
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->unknownFieldData:Lcom/android/internal/telephony/protobuf/nano/FieldArray;

    .line 330
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->cachedSize:I

    .line 331
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 8

    .line 406
    invoke-super {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 407
    .local v0, "size":I
    iget-object v1, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->mccmncTuple:[Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->mccmncTuple:[Ljava/lang/String;

    array-length v1, v1

    if-lez v1, :cond_2

    .line 408
    const/4 v1, 0x0

    .line 409
    .local v1, "dataCount":I
    const/4 v4, 0x0

    .line 410
    .local v4, "dataSize":I
    move v5, v1

    move v1, v2

    .local v1, "i":I
    .local v5, "dataCount":I
    :goto_0
    iget-object v6, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->mccmncTuple:[Ljava/lang/String;

    array-length v6, v6

    if-ge v1, v6, :cond_1

    .line 411
    iget-object v6, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->mccmncTuple:[Ljava/lang/String;

    aget-object v6, v6, v1

    .line 412
    .local v6, "element":Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 413
    add-int/lit8 v5, v5, 0x1

    .line 414
    nop

    .line 415
    invoke-static {v6}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v7

    add-int/2addr v4, v7

    .line 410
    .end local v6    # "element":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 418
    .end local v1    # "i":I
    :cond_1
    add-int/2addr v0, v4

    .line 419
    mul-int v1, v3, v5

    add-int/2addr v0, v1

    .line 421
    .end local v4    # "dataSize":I
    .end local v5    # "dataCount":I
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->imsiPrefixXpattern:[Ljava/lang/String;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->imsiPrefixXpattern:[Ljava/lang/String;

    array-length v1, v1

    if-lez v1, :cond_5

    .line 422
    const/4 v1, 0x0

    .line 423
    .local v1, "dataCount":I
    const/4 v4, 0x0

    .line 424
    .restart local v4    # "dataSize":I
    move v5, v1

    move v1, v2

    .local v1, "i":I
    .restart local v5    # "dataCount":I
    :goto_1
    iget-object v6, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->imsiPrefixXpattern:[Ljava/lang/String;

    array-length v6, v6

    if-ge v1, v6, :cond_4

    .line 425
    iget-object v6, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->imsiPrefixXpattern:[Ljava/lang/String;

    aget-object v6, v6, v1

    .line 426
    .restart local v6    # "element":Ljava/lang/String;
    if-eqz v6, :cond_3

    .line 427
    add-int/lit8 v5, v5, 0x1

    .line 428
    nop

    .line 429
    invoke-static {v6}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v7

    add-int/2addr v4, v7

    .line 424
    .end local v6    # "element":Ljava/lang/String;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 432
    .end local v1    # "i":I
    :cond_4
    add-int/2addr v0, v4

    .line 433
    mul-int v1, v3, v5

    add-int/2addr v0, v1

    .line 435
    .end local v4    # "dataSize":I
    .end local v5    # "dataCount":I
    :cond_5
    iget-object v1, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->spn:[Ljava/lang/String;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->spn:[Ljava/lang/String;

    array-length v1, v1

    if-lez v1, :cond_8

    .line 436
    const/4 v1, 0x0

    .line 437
    .local v1, "dataCount":I
    const/4 v4, 0x0

    .line 438
    .restart local v4    # "dataSize":I
    move v5, v1

    move v1, v2

    .local v1, "i":I
    .restart local v5    # "dataCount":I
    :goto_2
    iget-object v6, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->spn:[Ljava/lang/String;

    array-length v6, v6

    if-ge v1, v6, :cond_7

    .line 439
    iget-object v6, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->spn:[Ljava/lang/String;

    aget-object v6, v6, v1

    .line 440
    .restart local v6    # "element":Ljava/lang/String;
    if-eqz v6, :cond_6

    .line 441
    add-int/lit8 v5, v5, 0x1

    .line 442
    nop

    .line 443
    invoke-static {v6}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v7

    add-int/2addr v4, v7

    .line 438
    .end local v6    # "element":Ljava/lang/String;
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 446
    .end local v1    # "i":I
    :cond_7
    add-int/2addr v0, v4

    .line 447
    mul-int v1, v3, v5

    add-int/2addr v0, v1

    .line 449
    .end local v4    # "dataSize":I
    .end local v5    # "dataCount":I
    :cond_8
    iget-object v1, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->plmn:[Ljava/lang/String;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->plmn:[Ljava/lang/String;

    array-length v1, v1

    if-lez v1, :cond_b

    .line 450
    const/4 v1, 0x0

    .line 451
    .local v1, "dataCount":I
    const/4 v4, 0x0

    .line 452
    .restart local v4    # "dataSize":I
    move v5, v1

    move v1, v2

    .local v1, "i":I
    .restart local v5    # "dataCount":I
    :goto_3
    iget-object v6, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->plmn:[Ljava/lang/String;

    array-length v6, v6

    if-ge v1, v6, :cond_a

    .line 453
    iget-object v6, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->plmn:[Ljava/lang/String;

    aget-object v6, v6, v1

    .line 454
    .restart local v6    # "element":Ljava/lang/String;
    if-eqz v6, :cond_9

    .line 455
    add-int/lit8 v5, v5, 0x1

    .line 456
    nop

    .line 457
    invoke-static {v6}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v7

    add-int/2addr v4, v7

    .line 452
    .end local v6    # "element":Ljava/lang/String;
    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 460
    .end local v1    # "i":I
    :cond_a
    add-int/2addr v0, v4

    .line 461
    mul-int v1, v3, v5

    add-int/2addr v0, v1

    .line 463
    .end local v4    # "dataSize":I
    .end local v5    # "dataCount":I
    :cond_b
    iget-object v1, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->gid1:[Ljava/lang/String;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->gid1:[Ljava/lang/String;

    array-length v1, v1

    if-lez v1, :cond_e

    .line 464
    const/4 v1, 0x0

    .line 465
    .local v1, "dataCount":I
    const/4 v4, 0x0

    .line 466
    .restart local v4    # "dataSize":I
    move v5, v1

    move v1, v2

    .local v1, "i":I
    .restart local v5    # "dataCount":I
    :goto_4
    iget-object v6, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->gid1:[Ljava/lang/String;

    array-length v6, v6

    if-ge v1, v6, :cond_d

    .line 467
    iget-object v6, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->gid1:[Ljava/lang/String;

    aget-object v6, v6, v1

    .line 468
    .restart local v6    # "element":Ljava/lang/String;
    if-eqz v6, :cond_c

    .line 469
    add-int/lit8 v5, v5, 0x1

    .line 470
    nop

    .line 471
    invoke-static {v6}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v7

    add-int/2addr v4, v7

    .line 466
    .end local v6    # "element":Ljava/lang/String;
    :cond_c
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 474
    .end local v1    # "i":I
    :cond_d
    add-int/2addr v0, v4

    .line 475
    mul-int v1, v3, v5

    add-int/2addr v0, v1

    .line 477
    .end local v4    # "dataSize":I
    .end local v5    # "dataCount":I
    :cond_e
    iget-object v1, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->gid2:[Ljava/lang/String;

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->gid2:[Ljava/lang/String;

    array-length v1, v1

    if-lez v1, :cond_11

    .line 478
    const/4 v1, 0x0

    .line 479
    .local v1, "dataCount":I
    const/4 v4, 0x0

    .line 480
    .restart local v4    # "dataSize":I
    move v5, v1

    move v1, v2

    .local v1, "i":I
    .restart local v5    # "dataCount":I
    :goto_5
    iget-object v6, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->gid2:[Ljava/lang/String;

    array-length v6, v6

    if-ge v1, v6, :cond_10

    .line 481
    iget-object v6, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->gid2:[Ljava/lang/String;

    aget-object v6, v6, v1

    .line 482
    .restart local v6    # "element":Ljava/lang/String;
    if-eqz v6, :cond_f

    .line 483
    add-int/lit8 v5, v5, 0x1

    .line 484
    nop

    .line 485
    invoke-static {v6}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v7

    add-int/2addr v4, v7

    .line 480
    .end local v6    # "element":Ljava/lang/String;
    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 488
    .end local v1    # "i":I
    :cond_10
    add-int/2addr v0, v4

    .line 489
    mul-int v1, v3, v5

    add-int/2addr v0, v1

    .line 491
    .end local v4    # "dataSize":I
    .end local v5    # "dataCount":I
    :cond_11
    iget-object v1, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->preferredApn:[Ljava/lang/String;

    if-eqz v1, :cond_14

    iget-object v1, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->preferredApn:[Ljava/lang/String;

    array-length v1, v1

    if-lez v1, :cond_14

    .line 492
    const/4 v1, 0x0

    .line 493
    .local v1, "dataCount":I
    const/4 v4, 0x0

    .line 494
    .restart local v4    # "dataSize":I
    move v5, v1

    move v1, v2

    .local v1, "i":I
    .restart local v5    # "dataCount":I
    :goto_6
    iget-object v6, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->preferredApn:[Ljava/lang/String;

    array-length v6, v6

    if-ge v1, v6, :cond_13

    .line 495
    iget-object v6, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->preferredApn:[Ljava/lang/String;

    aget-object v6, v6, v1

    .line 496
    .restart local v6    # "element":Ljava/lang/String;
    if-eqz v6, :cond_12

    .line 497
    add-int/lit8 v5, v5, 0x1

    .line 498
    nop

    .line 499
    invoke-static {v6}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v7

    add-int/2addr v4, v7

    .line 494
    .end local v6    # "element":Ljava/lang/String;
    :cond_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 502
    .end local v1    # "i":I
    :cond_13
    add-int/2addr v0, v4

    .line 503
    mul-int v1, v3, v5

    add-int/2addr v0, v1

    .line 505
    .end local v4    # "dataSize":I
    .end local v5    # "dataCount":I
    :cond_14
    iget-object v1, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->iccidPrefix:[Ljava/lang/String;

    if-eqz v1, :cond_17

    iget-object v1, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->iccidPrefix:[Ljava/lang/String;

    array-length v1, v1

    if-lez v1, :cond_17

    .line 506
    const/4 v1, 0x0

    .line 507
    .local v1, "dataCount":I
    const/4 v4, 0x0

    .line 508
    .restart local v4    # "dataSize":I
    nop

    .local v2, "i":I
    :goto_7
    iget-object v5, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->iccidPrefix:[Ljava/lang/String;

    array-length v5, v5

    if-ge v2, v5, :cond_16

    .line 509
    iget-object v5, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->iccidPrefix:[Ljava/lang/String;

    aget-object v5, v5, v2

    .line 510
    .local v5, "element":Ljava/lang/String;
    if-eqz v5, :cond_15

    .line 511
    add-int/lit8 v1, v1, 0x1

    .line 512
    nop

    .line 513
    invoke-static {v5}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v6

    add-int/2addr v4, v6

    .line 508
    .end local v5    # "element":Ljava/lang/String;
    :cond_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 516
    .end local v2    # "i":I
    :cond_16
    add-int/2addr v0, v4

    .line 517
    mul-int/2addr v3, v1

    add-int/2addr v0, v3

    .line 519
    .end local v1    # "dataCount":I
    .end local v4    # "dataSize":I
    :cond_17
    return v0
.end method

.method public mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;
    .locals 6
    .param p1, "input"    # Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 527
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 528
    .local v0, "tag":I
    if-eqz v0, :cond_21

    const/16 v1, 0xa

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1c

    const/16 v1, 0x12

    if-eq v0, v1, :cond_18

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_14

    const/16 v1, 0x22

    if-eq v0, v1, :cond_10

    const/16 v1, 0x2a

    if-eq v0, v1, :cond_c

    const/16 v1, 0x32

    if-eq v0, v1, :cond_8

    const/16 v1, 0x3a

    if-eq v0, v1, :cond_4

    const/16 v1, 0x42

    if-eq v0, v1, :cond_0

    .line 532
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->storeUnknownField(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_20

    .line 533
    return-object p0

    .line 657
    :cond_0
    nop

    .line 658
    invoke-static {p1, v1}, Lcom/android/internal/telephony/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v1

    .line 659
    .local v1, "arrayLength":I
    iget-object v3, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->iccidPrefix:[Ljava/lang/String;

    if-nez v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->iccidPrefix:[Ljava/lang/String;

    array-length v3, v3

    .line 660
    .local v3, "i":I
    :goto_1
    add-int v4, v3, v1

    new-array v4, v4, [Ljava/lang/String;

    .line 661
    .local v4, "newArray":[Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 662
    iget-object v5, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->iccidPrefix:[Ljava/lang/String;

    invoke-static {v5, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 664
    :cond_2
    :goto_2
    array-length v2, v4

    add-int/lit8 v2, v2, -0x1

    if-ge v3, v2, :cond_3

    .line 665
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v3

    .line 666
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 664
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 669
    :cond_3
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v3

    .line 670
    iput-object v4, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->iccidPrefix:[Ljava/lang/String;

    .line 671
    goto/16 :goto_11

    .line 640
    .end local v1    # "arrayLength":I
    .end local v3    # "i":I
    .end local v4    # "newArray":[Ljava/lang/String;
    :cond_4
    nop

    .line 641
    invoke-static {p1, v1}, Lcom/android/internal/telephony/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v1

    .line 642
    .restart local v1    # "arrayLength":I
    iget-object v3, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->preferredApn:[Ljava/lang/String;

    if-nez v3, :cond_5

    move v3, v2

    goto :goto_3

    :cond_5
    iget-object v3, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->preferredApn:[Ljava/lang/String;

    array-length v3, v3

    .line 643
    .restart local v3    # "i":I
    :goto_3
    add-int v4, v3, v1

    new-array v4, v4, [Ljava/lang/String;

    .line 644
    .restart local v4    # "newArray":[Ljava/lang/String;
    if-eqz v3, :cond_6

    .line 645
    iget-object v5, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->preferredApn:[Ljava/lang/String;

    invoke-static {v5, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 647
    :cond_6
    :goto_4
    array-length v2, v4

    add-int/lit8 v2, v2, -0x1

    if-ge v3, v2, :cond_7

    .line 648
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v3

    .line 649
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 647
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 652
    :cond_7
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v3

    .line 653
    iput-object v4, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->preferredApn:[Ljava/lang/String;

    .line 654
    goto/16 :goto_11

    .line 623
    .end local v1    # "arrayLength":I
    .end local v3    # "i":I
    .end local v4    # "newArray":[Ljava/lang/String;
    :cond_8
    nop

    .line 624
    invoke-static {p1, v1}, Lcom/android/internal/telephony/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v1

    .line 625
    .restart local v1    # "arrayLength":I
    iget-object v3, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->gid2:[Ljava/lang/String;

    if-nez v3, :cond_9

    move v3, v2

    goto :goto_5

    :cond_9
    iget-object v3, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->gid2:[Ljava/lang/String;

    array-length v3, v3

    .line 626
    .restart local v3    # "i":I
    :goto_5
    add-int v4, v3, v1

    new-array v4, v4, [Ljava/lang/String;

    .line 627
    .restart local v4    # "newArray":[Ljava/lang/String;
    if-eqz v3, :cond_a

    .line 628
    iget-object v5, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->gid2:[Ljava/lang/String;

    invoke-static {v5, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 630
    :cond_a
    :goto_6
    array-length v2, v4

    add-int/lit8 v2, v2, -0x1

    if-ge v3, v2, :cond_b

    .line 631
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v3

    .line 632
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 630
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 635
    :cond_b
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v3

    .line 636
    iput-object v4, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->gid2:[Ljava/lang/String;

    .line 637
    goto/16 :goto_11

    .line 606
    .end local v1    # "arrayLength":I
    .end local v3    # "i":I
    .end local v4    # "newArray":[Ljava/lang/String;
    :cond_c
    nop

    .line 607
    invoke-static {p1, v1}, Lcom/android/internal/telephony/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v1

    .line 608
    .restart local v1    # "arrayLength":I
    iget-object v3, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->gid1:[Ljava/lang/String;

    if-nez v3, :cond_d

    move v3, v2

    goto :goto_7

    :cond_d
    iget-object v3, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->gid1:[Ljava/lang/String;

    array-length v3, v3

    .line 609
    .restart local v3    # "i":I
    :goto_7
    add-int v4, v3, v1

    new-array v4, v4, [Ljava/lang/String;

    .line 610
    .restart local v4    # "newArray":[Ljava/lang/String;
    if-eqz v3, :cond_e

    .line 611
    iget-object v5, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->gid1:[Ljava/lang/String;

    invoke-static {v5, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 613
    :cond_e
    :goto_8
    array-length v2, v4

    add-int/lit8 v2, v2, -0x1

    if-ge v3, v2, :cond_f

    .line 614
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v3

    .line 615
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 613
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 618
    :cond_f
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v3

    .line 619
    iput-object v4, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->gid1:[Ljava/lang/String;

    .line 620
    goto/16 :goto_11

    .line 589
    .end local v1    # "arrayLength":I
    .end local v3    # "i":I
    .end local v4    # "newArray":[Ljava/lang/String;
    :cond_10
    nop

    .line 590
    invoke-static {p1, v1}, Lcom/android/internal/telephony/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v1

    .line 591
    .restart local v1    # "arrayLength":I
    iget-object v3, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->plmn:[Ljava/lang/String;

    if-nez v3, :cond_11

    move v3, v2

    goto :goto_9

    :cond_11
    iget-object v3, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->plmn:[Ljava/lang/String;

    array-length v3, v3

    .line 592
    .restart local v3    # "i":I
    :goto_9
    add-int v4, v3, v1

    new-array v4, v4, [Ljava/lang/String;

    .line 593
    .restart local v4    # "newArray":[Ljava/lang/String;
    if-eqz v3, :cond_12

    .line 594
    iget-object v5, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->plmn:[Ljava/lang/String;

    invoke-static {v5, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 596
    :cond_12
    :goto_a
    array-length v2, v4

    add-int/lit8 v2, v2, -0x1

    if-ge v3, v2, :cond_13

    .line 597
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v3

    .line 598
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 596
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 601
    :cond_13
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v3

    .line 602
    iput-object v4, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->plmn:[Ljava/lang/String;

    .line 603
    goto/16 :goto_11

    .line 572
    .end local v1    # "arrayLength":I
    .end local v3    # "i":I
    .end local v4    # "newArray":[Ljava/lang/String;
    :cond_14
    nop

    .line 573
    invoke-static {p1, v1}, Lcom/android/internal/telephony/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v1

    .line 574
    .restart local v1    # "arrayLength":I
    iget-object v3, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->spn:[Ljava/lang/String;

    if-nez v3, :cond_15

    move v3, v2

    goto :goto_b

    :cond_15
    iget-object v3, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->spn:[Ljava/lang/String;

    array-length v3, v3

    .line 575
    .restart local v3    # "i":I
    :goto_b
    add-int v4, v3, v1

    new-array v4, v4, [Ljava/lang/String;

    .line 576
    .restart local v4    # "newArray":[Ljava/lang/String;
    if-eqz v3, :cond_16

    .line 577
    iget-object v5, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->spn:[Ljava/lang/String;

    invoke-static {v5, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 579
    :cond_16
    :goto_c
    array-length v2, v4

    add-int/lit8 v2, v2, -0x1

    if-ge v3, v2, :cond_17

    .line 580
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v3

    .line 581
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 579
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 584
    :cond_17
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v3

    .line 585
    iput-object v4, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->spn:[Ljava/lang/String;

    .line 586
    goto :goto_11

    .line 555
    .end local v1    # "arrayLength":I
    .end local v3    # "i":I
    .end local v4    # "newArray":[Ljava/lang/String;
    :cond_18
    nop

    .line 556
    invoke-static {p1, v1}, Lcom/android/internal/telephony/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v1

    .line 557
    .restart local v1    # "arrayLength":I
    iget-object v3, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->imsiPrefixXpattern:[Ljava/lang/String;

    if-nez v3, :cond_19

    move v3, v2

    goto :goto_d

    :cond_19
    iget-object v3, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->imsiPrefixXpattern:[Ljava/lang/String;

    array-length v3, v3

    .line 558
    .restart local v3    # "i":I
    :goto_d
    add-int v4, v3, v1

    new-array v4, v4, [Ljava/lang/String;

    .line 559
    .restart local v4    # "newArray":[Ljava/lang/String;
    if-eqz v3, :cond_1a

    .line 560
    iget-object v5, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->imsiPrefixXpattern:[Ljava/lang/String;

    invoke-static {v5, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 562
    :cond_1a
    :goto_e
    array-length v2, v4

    add-int/lit8 v2, v2, -0x1

    if-ge v3, v2, :cond_1b

    .line 563
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v3

    .line 564
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 562
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 567
    :cond_1b
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v3

    .line 568
    iput-object v4, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->imsiPrefixXpattern:[Ljava/lang/String;

    .line 569
    goto :goto_11

    .line 538
    .end local v1    # "arrayLength":I
    .end local v3    # "i":I
    .end local v4    # "newArray":[Ljava/lang/String;
    :cond_1c
    nop

    .line 539
    invoke-static {p1, v1}, Lcom/android/internal/telephony/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v1

    .line 540
    .restart local v1    # "arrayLength":I
    iget-object v3, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->mccmncTuple:[Ljava/lang/String;

    if-nez v3, :cond_1d

    move v3, v2

    goto :goto_f

    :cond_1d
    iget-object v3, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->mccmncTuple:[Ljava/lang/String;

    array-length v3, v3

    .line 541
    .restart local v3    # "i":I
    :goto_f
    add-int v4, v3, v1

    new-array v4, v4, [Ljava/lang/String;

    .line 542
    .restart local v4    # "newArray":[Ljava/lang/String;
    if-eqz v3, :cond_1e

    .line 543
    iget-object v5, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->mccmncTuple:[Ljava/lang/String;

    invoke-static {v5, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 545
    :cond_1e
    :goto_10
    array-length v2, v4

    add-int/lit8 v2, v2, -0x1

    if-ge v3, v2, :cond_1f

    .line 546
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v3

    .line 547
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 545
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 550
    :cond_1f
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v3

    .line 551
    iput-object v4, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->mccmncTuple:[Ljava/lang/String;

    .line 552
    nop

    .line 674
    .end local v0    # "tag":I
    .end local v1    # "arrayLength":I
    .end local v3    # "i":I
    .end local v4    # "newArray":[Ljava/lang/String;
    :cond_20
    :goto_11
    goto/16 :goto_0

    .line 530
    .restart local v0    # "tag":I
    :cond_21
    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/protobuf/nano/MessageNano;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 275
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;

    move-result-object p1

    return-object p1
.end method

.method public writeTo(Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 4
    .param p1, "output"    # Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 337
    iget-object v0, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->mccmncTuple:[Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->mccmncTuple:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 338
    move v0, v1

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->mccmncTuple:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 339
    iget-object v2, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->mccmncTuple:[Ljava/lang/String;

    aget-object v2, v2, v0

    .line 340
    .local v2, "element":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 341
    const/4 v3, 0x1

    invoke-virtual {p1, v3, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 338
    .end local v2    # "element":Ljava/lang/String;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 345
    .end local v0    # "i":I
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->imsiPrefixXpattern:[Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->imsiPrefixXpattern:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_3

    .line 346
    move v0, v1

    .restart local v0    # "i":I
    :goto_1
    iget-object v2, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->imsiPrefixXpattern:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 347
    iget-object v2, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->imsiPrefixXpattern:[Ljava/lang/String;

    aget-object v2, v2, v0

    .line 348
    .restart local v2    # "element":Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 349
    const/4 v3, 0x2

    invoke-virtual {p1, v3, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 346
    .end local v2    # "element":Ljava/lang/String;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 353
    .end local v0    # "i":I
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->spn:[Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->spn:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_5

    .line 354
    move v0, v1

    .restart local v0    # "i":I
    :goto_2
    iget-object v2, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->spn:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_5

    .line 355
    iget-object v2, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->spn:[Ljava/lang/String;

    aget-object v2, v2, v0

    .line 356
    .restart local v2    # "element":Ljava/lang/String;
    if-eqz v2, :cond_4

    .line 357
    const/4 v3, 0x3

    invoke-virtual {p1, v3, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 354
    .end local v2    # "element":Ljava/lang/String;
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 361
    .end local v0    # "i":I
    :cond_5
    iget-object v0, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->plmn:[Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->plmn:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_7

    .line 362
    move v0, v1

    .restart local v0    # "i":I
    :goto_3
    iget-object v2, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->plmn:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_7

    .line 363
    iget-object v2, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->plmn:[Ljava/lang/String;

    aget-object v2, v2, v0

    .line 364
    .restart local v2    # "element":Ljava/lang/String;
    if-eqz v2, :cond_6

    .line 365
    const/4 v3, 0x4

    invoke-virtual {p1, v3, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 362
    .end local v2    # "element":Ljava/lang/String;
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 369
    .end local v0    # "i":I
    :cond_7
    iget-object v0, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->gid1:[Ljava/lang/String;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->gid1:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_9

    .line 370
    move v0, v1

    .restart local v0    # "i":I
    :goto_4
    iget-object v2, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->gid1:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_9

    .line 371
    iget-object v2, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->gid1:[Ljava/lang/String;

    aget-object v2, v2, v0

    .line 372
    .restart local v2    # "element":Ljava/lang/String;
    if-eqz v2, :cond_8

    .line 373
    const/4 v3, 0x5

    invoke-virtual {p1, v3, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 370
    .end local v2    # "element":Ljava/lang/String;
    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 377
    .end local v0    # "i":I
    :cond_9
    iget-object v0, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->gid2:[Ljava/lang/String;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->gid2:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_b

    .line 378
    move v0, v1

    .restart local v0    # "i":I
    :goto_5
    iget-object v2, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->gid2:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_b

    .line 379
    iget-object v2, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->gid2:[Ljava/lang/String;

    aget-object v2, v2, v0

    .line 380
    .restart local v2    # "element":Ljava/lang/String;
    if-eqz v2, :cond_a

    .line 381
    const/4 v3, 0x6

    invoke-virtual {p1, v3, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 378
    .end local v2    # "element":Ljava/lang/String;
    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 385
    .end local v0    # "i":I
    :cond_b
    iget-object v0, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->preferredApn:[Ljava/lang/String;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->preferredApn:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_d

    .line 386
    move v0, v1

    .restart local v0    # "i":I
    :goto_6
    iget-object v2, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->preferredApn:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_d

    .line 387
    iget-object v2, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->preferredApn:[Ljava/lang/String;

    aget-object v2, v2, v0

    .line 388
    .restart local v2    # "element":Ljava/lang/String;
    if-eqz v2, :cond_c

    .line 389
    const/4 v3, 0x7

    invoke-virtual {p1, v3, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 386
    .end local v2    # "element":Ljava/lang/String;
    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 393
    .end local v0    # "i":I
    :cond_d
    iget-object v0, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->iccidPrefix:[Ljava/lang/String;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->iccidPrefix:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_f

    .line 394
    nop

    .local v1, "i":I
    :goto_7
    move v0, v1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    iget-object v1, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->iccidPrefix:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_f

    .line 395
    iget-object v1, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->iccidPrefix:[Ljava/lang/String;

    aget-object v1, v1, v0

    .line 396
    .local v1, "element":Ljava/lang/String;
    if-eqz v1, :cond_e

    .line 397
    const/16 v2, 0x8

    invoke-virtual {p1, v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 394
    .end local v1    # "element":Ljava/lang/String;
    :cond_e
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    goto :goto_7

    .line 401
    .end local v1    # "i":I
    :cond_f
    invoke-super {p0, p1}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 402
    return-void
.end method
