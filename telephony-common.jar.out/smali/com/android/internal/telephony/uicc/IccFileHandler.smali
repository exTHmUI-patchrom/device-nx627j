.class public abstract Lcom/android/internal/telephony/uicc/IccFileHandler;
.super Landroid/os/Handler;
.source "IccFileHandler.java"

# interfaces
.implements Lcom/android/internal/telephony/uicc/IccConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;
    }
.end annotation


# static fields
.field protected static final COMMAND_GET_RESPONSE:I = 0xc0

.field protected static final COMMAND_READ_BINARY:I = 0xb0

.field protected static final COMMAND_READ_RECORD:I = 0xb2

.field protected static final COMMAND_SEEK:I = 0xa2

.field protected static final COMMAND_UPDATE_BINARY:I = 0xd6

.field protected static final COMMAND_UPDATE_RECORD:I = 0xdc

.field protected static final EF_TYPE_CYCLIC:I = 0x3

.field protected static final EF_TYPE_LINEAR_FIXED:I = 0x1

.field protected static final EF_TYPE_TRANSPARENT:I = 0x0

.field protected static final EVENT_GET_BINARY_SIZE_DONE:I = 0x4

.field protected static final EVENT_GET_EF_LINEAR_RECORD_SIZE_DONE:I = 0x8

.field protected static final EVENT_GET_RECORD_SIZE_DONE:I = 0x6

.field protected static final EVENT_GET_RECORD_SIZE_IMG_DONE:I = 0xb

.field protected static final EVENT_READ_BINARY_DONE:I = 0x5

.field protected static final EVENT_READ_ICON_DONE:I = 0xa

.field protected static final EVENT_READ_IMG_DONE:I = 0x9

.field protected static final EVENT_READ_RECORD_DONE:I = 0x7

.field protected static final GET_RESPONSE_EF_IMG_SIZE_BYTES:I = 0xa

.field protected static final GET_RESPONSE_EF_SIZE_BYTES:I = 0xf

.field protected static final READ_RECORD_MODE_ABSOLUTE:I = 0x4

.field protected static final RESPONSE_DATA_ACCESS_CONDITION_1:I = 0x8

.field protected static final RESPONSE_DATA_ACCESS_CONDITION_2:I = 0x9

.field protected static final RESPONSE_DATA_ACCESS_CONDITION_3:I = 0xa

.field protected static final RESPONSE_DATA_FILE_ID_1:I = 0x4

.field protected static final RESPONSE_DATA_FILE_ID_2:I = 0x5

.field protected static final RESPONSE_DATA_FILE_SIZE_1:I = 0x2

.field protected static final RESPONSE_DATA_FILE_SIZE_2:I = 0x3

.field protected static final RESPONSE_DATA_FILE_STATUS:I = 0xb

.field protected static final RESPONSE_DATA_FILE_TYPE:I = 0x6

.field protected static final RESPONSE_DATA_LENGTH:I = 0xc

.field protected static final RESPONSE_DATA_RECORD_LENGTH:I = 0xe

.field protected static final RESPONSE_DATA_RFU_1:I = 0x0

.field protected static final RESPONSE_DATA_RFU_2:I = 0x1

.field protected static final RESPONSE_DATA_RFU_3:I = 0x7

.field protected static final RESPONSE_DATA_STRUCTURE:I = 0xd

.field protected static final TYPE_DF:I = 0x2

.field protected static final TYPE_EF:I = 0x4

.field protected static final TYPE_MF:I = 0x1

.field protected static final TYPE_RFU:I = 0x0

.field private static final VDBG:Z = false


# instance fields
.field protected final mAid:Ljava/lang/String;

.field protected final mCi:Lcom/android/internal/telephony/CommandsInterface;

.field protected final mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;


# direct methods
.method protected constructor <init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;Ljava/lang/String;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 0
    .param p1, "app"    # Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .param p2, "aid"    # Ljava/lang/String;
    .param p3, "ci"    # Lcom/android/internal/telephony/CommandsInterface;

    .line 149
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 150
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 151
    iput-object p2, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mAid:Ljava/lang/String;

    .line 152
    iput-object p3, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 153
    return-void
.end method

.method private processException(Landroid/os/Message;Landroid/os/AsyncResult;)Z
    .locals 4
    .param p1, "response"    # Landroid/os/Message;
    .param p2, "ar"    # Landroid/os/AsyncResult;

    .line 407
    const/4 v0, 0x0

    .line 408
    .local v0, "flag":Z
    iget-object v1, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/uicc/IccIoResult;

    .line 409
    .local v1, "result":Lcom/android/internal/telephony/uicc/IccIoResult;
    iget-object v2, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 410
    iget-object v2, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {p0, p1, v3, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 411
    const/4 v0, 0x1

    goto :goto_0

    .line 413
    :cond_0
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccIoResult;->getException()Lcom/android/internal/telephony/uicc/IccException;

    move-result-object v2

    .line 414
    .local v2, "iccException":Lcom/android/internal/telephony/uicc/IccException;
    if-eqz v2, :cond_1

    .line 415
    invoke-direct {p0, p1, v3, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 416
    const/4 v0, 0x1

    .line 419
    .end local v2    # "iccException":Lcom/android/internal/telephony/uicc/IccException;
    :cond_1
    :goto_0
    return v0
.end method

.method private sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;
    .param p2, "result"    # Ljava/lang/Object;
    .param p3, "ex"    # Ljava/lang/Throwable;

    .line 396
    if-nez p1, :cond_0

    .line 397
    return-void

    .line 400
    :cond_0
    invoke-static {p1, p2, p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 402
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 403
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 0

    .line 156
    return-void
.end method

.method protected getCommonIccEFPath(I)Ljava/lang/String;
    .locals 1
    .param p1, "efid"    # I

    .line 614
    const/16 v0, 0x2f05

    if-eq p1, v0, :cond_3

    const/16 v0, 0x2fe2

    if-eq p1, v0, :cond_3

    const/16 v0, 0x4f20

    if-eq p1, v0, :cond_2

    const/16 v0, 0x4f30

    if-eq p1, v0, :cond_1

    const/16 v0, 0x6f40

    if-eq p1, v0, :cond_0

    const/16 v0, 0x6fe5

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    .line 634
    const/4 v0, 0x0

    return-object v0

    .line 623
    :cond_0
    :pswitch_0
    const-string v0, "3F007F10"

    return-object v0

    .line 630
    :cond_1
    const-string v0, "3F007F105F3A"

    return-object v0

    .line 632
    :cond_2
    const-string v0, "3F007F105F50"

    return-object v0

    .line 627
    :cond_3
    const-string v0, "3F00"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x6f3a
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x6f49
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getEFLinearRecordSize(ILandroid/os/Message;)V
    .locals 1
    .param p1, "fileid"    # I
    .param p2, "onLoaded"    # Landroid/os/Message;

    .line 244
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFLinearRecordSize(ILjava/lang/String;Landroid/os/Message;)V

    .line 245
    return-void
.end method

.method public getEFLinearRecordSize(ILjava/lang/String;Landroid/os/Message;)V
    .locals 16
    .param p1, "fileid"    # I
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "onLoaded"    # Landroid/os/Message;

    move-object/from16 v0, p0

    .line 226
    if-nez p2, :cond_0

    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object/from16 v1, p2

    .line 227
    .local v1, "efPath":Ljava/lang/String;
    :goto_0
    const/16 v2, 0x8

    new-instance v3, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;

    move/from16 v13, p1

    move-object/from16 v14, p3

    invoke-direct {v3, v13, v1, v14}, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;-><init>(ILjava/lang/String;Landroid/os/Message;)V

    .line 228
    invoke-virtual {v0, v2, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v15

    .line 230
    .local v15, "response":Landroid/os/Message;
    iget-object v2, v0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0xc0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0xf

    const/4 v9, 0x0

    const/4 v10, 0x0

    iget-object v11, v0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mAid:Ljava/lang/String;

    move v4, v13

    move-object v5, v1

    move-object v12, v15

    invoke-interface/range {v2 .. v12}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 232
    return-void
.end method

.method protected abstract getEFPath(I)Ljava/lang/String;
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 28
    .param p1, "msg"    # Landroid/os/Message;

    move-object/from16 v1, p0

    .line 428
    move-object/from16 v2, p1

    const/4 v3, 0x0

    .line 436
    .local v3, "response":Landroid/os/Message;
    const/4 v4, 0x0

    move-object v5, v4

    .line 439
    .local v5, "path":Ljava/lang/String;
    :try_start_0
    iget v0, v2, Landroid/os/Message;->what:I

    const/4 v6, 0x7

    const/16 v7, 0xe

    const/4 v8, 0x0

    const/16 v9, 0xd

    const/4 v10, 0x6

    const/4 v11, 0x4

    const/4 v12, 0x2

    const/4 v13, 0x3

    const/4 v14, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 441
    :pswitch_0
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 442
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v6, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v6, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;

    .line 443
    .local v6, "lc":Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;
    iget-object v15, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v15, Lcom/android/internal/telephony/uicc/IccIoResult;

    .line 444
    .local v15, "result":Lcom/android/internal/telephony/uicc/IccIoResult;
    iget-object v4, v6, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mOnLoaded:Landroid/os/Message;

    move-object v3, v4

    .line 446
    iget-object v4, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    invoke-direct {v1, v3, v4}, Lcom/android/internal/telephony/uicc/IccFileHandler;->processException(Landroid/os/Message;Landroid/os/AsyncResult;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 447
    goto/16 :goto_0

    .line 450
    :cond_0
    iget-object v4, v15, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    .line 452
    .local v4, "data":[B
    aget-byte v10, v4, v10

    if-ne v11, v10, :cond_1

    aget-byte v9, v4, v9

    if-ne v14, v9, :cond_1

    .line 457
    new-array v9, v13, [I

    .line 458
    .local v9, "recordSize":[I
    aget-byte v7, v4, v7

    and-int/lit16 v7, v7, 0xff

    aput v7, v9, v8

    .line 459
    aget-byte v7, v4, v12

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    aget-byte v10, v4, v13

    and-int/lit16 v10, v10, 0xff

    add-int/2addr v7, v10

    aput v7, v9, v14

    .line 461
    aget v7, v9, v14

    aget v8, v9, v8

    div-int/2addr v7, v8

    aput v7, v9, v12

    .line 463
    const/4 v7, 0x0

    invoke-direct {v1, v3, v9, v7}, Lcom/android/internal/telephony/uicc/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 464
    goto/16 :goto_0

    .line 454
    .end local v9    # "recordSize":[I
    :cond_1
    new-instance v7, Lcom/android/internal/telephony/uicc/IccFileTypeMismatch;

    invoke-direct {v7}, Lcom/android/internal/telephony/uicc/IccFileTypeMismatch;-><init>()V

    throw v7

    .line 547
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v4    # "data":[B
    .end local v6    # "lc":Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;
    .end local v15    # "result":Lcom/android/internal/telephony/uicc/IccIoResult;
    :pswitch_1
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 548
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v4, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v4, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;

    .line 549
    .local v4, "lc":Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;
    iget-object v7, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v7, Lcom/android/internal/telephony/uicc/IccIoResult;

    .line 550
    .local v7, "result":Lcom/android/internal/telephony/uicc/IccIoResult;
    iget-object v8, v4, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mOnLoaded:Landroid/os/Message;

    move-object v3, v8

    .line 551
    iget-object v8, v4, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mPath:Ljava/lang/String;

    move-object v5, v8

    .line 553
    iget-object v8, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    invoke-direct {v1, v3, v8}, Lcom/android/internal/telephony/uicc/IccFileHandler;->processException(Landroid/os/Message;Landroid/os/AsyncResult;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 554
    goto/16 :goto_0

    .line 557
    :cond_2
    iget-boolean v8, v4, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mLoadAll:Z

    if-nez v8, :cond_3

    .line 558
    iget-object v6, v7, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    const/4 v8, 0x0

    invoke-direct {v1, v3, v6, v8}, Lcom/android/internal/telephony/uicc/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 560
    :cond_3
    iget-object v8, v4, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->results:Ljava/util/ArrayList;

    iget-object v9, v7, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 562
    iget v8, v4, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mRecordNum:I

    add-int/2addr v8, v14

    iput v8, v4, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mRecordNum:I

    .line 564
    iget v8, v4, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mRecordNum:I

    iget v9, v4, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mCountRecords:I

    if-le v8, v9, :cond_4

    .line 565
    iget-object v6, v4, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->results:Ljava/util/ArrayList;

    const/4 v8, 0x0

    invoke-direct {v1, v3, v6, v8}, Lcom/android/internal/telephony/uicc/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 567
    :cond_4
    if-nez v5, :cond_5

    .line 568
    iget v8, v4, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mEfid:I

    invoke-virtual {v1, v8}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v8

    move-object v5, v8

    .line 571
    :cond_5
    iget-object v8, v1, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v17, 0xb2

    iget v9, v4, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mEfid:I

    iget v10, v4, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mRecordNum:I

    const/16 v21, 0x4

    iget v11, v4, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mRecordSize:I

    const/16 v23, 0x0

    const/16 v24, 0x0

    iget-object v12, v1, Lcom/android/internal/telephony/uicc/IccFileHandler;->mAid:Ljava/lang/String;

    .line 575
    invoke-virtual {v1, v6, v4}, Lcom/android/internal/telephony/uicc/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v26

    .line 571
    move-object/from16 v16, v8

    move/from16 v18, v9

    move-object/from16 v19, v5

    move/from16 v20, v10

    move/from16 v22, v11

    move-object/from16 v25, v12

    invoke-interface/range {v16 .. v26}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 579
    goto/16 :goto_0

    .line 468
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v4    # "lc":Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;
    .end local v7    # "result":Lcom/android/internal/telephony/uicc/IccIoResult;
    :pswitch_2
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 469
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v4, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v4, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;

    .line 470
    .restart local v4    # "lc":Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;
    iget-object v8, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v8, Lcom/android/internal/telephony/uicc/IccIoResult;

    .line 471
    .local v8, "result":Lcom/android/internal/telephony/uicc/IccIoResult;
    iget-object v15, v4, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mOnLoaded:Landroid/os/Message;

    move-object v3, v15

    .line 473
    iget-object v15, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v15, Landroid/os/AsyncResult;

    invoke-direct {v1, v3, v15}, Lcom/android/internal/telephony/uicc/IccFileHandler;->processException(Landroid/os/Message;Landroid/os/AsyncResult;)Z

    move-result v15

    if-eqz v15, :cond_6

    .line 474
    const-string v6, "exception caught from EVENT_GET_RECORD_SIZE"

    invoke-virtual {v1, v6}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loge(Ljava/lang/String;)V

    .line 475
    goto/16 :goto_0

    .line 478
    :cond_6
    iget-object v15, v8, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    .line 479
    .local v15, "data":[B
    iget-object v6, v4, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mPath:Ljava/lang/String;

    move-object v5, v6

    .line 481
    aget-byte v6, v15, v10

    if-ne v11, v6, :cond_a

    .line 485
    aget-byte v6, v15, v9

    if-ne v14, v6, :cond_9

    .line 489
    aget-byte v6, v15, v7

    and-int/lit16 v6, v6, 0xff

    iput v6, v4, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mRecordSize:I

    .line 491
    aget-byte v6, v15, v12

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    aget-byte v7, v15, v13

    and-int/lit16 v7, v7, 0xff

    add-int/2addr v6, v7

    .line 494
    .local v6, "size":I
    iget v7, v4, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mRecordSize:I

    div-int v7, v6, v7

    iput v7, v4, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mCountRecords:I

    .line 496
    iget-boolean v7, v4, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mLoadAll:Z

    if-eqz v7, :cond_7

    .line 497
    new-instance v7, Ljava/util/ArrayList;

    iget v9, v4, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mCountRecords:I

    invoke-direct {v7, v9}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v7, v4, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->results:Ljava/util/ArrayList;

    .line 500
    :cond_7
    if-nez v5, :cond_8

    .line 501
    iget v7, v4, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mEfid:I

    invoke-virtual {v1, v7}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v7

    move-object v5, v7

    .line 503
    :cond_8
    iget-object v7, v1, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v17, 0xb2

    iget v9, v4, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mEfid:I

    iget v10, v4, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mRecordNum:I

    const/16 v21, 0x4

    iget v11, v4, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mRecordSize:I

    const/16 v23, 0x0

    const/16 v24, 0x0

    iget-object v12, v1, Lcom/android/internal/telephony/uicc/IccFileHandler;->mAid:Ljava/lang/String;

    .line 507
    const/4 v13, 0x7

    invoke-virtual {v1, v13, v4}, Lcom/android/internal/telephony/uicc/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v26

    .line 503
    move-object/from16 v16, v7

    move/from16 v18, v9

    move-object/from16 v19, v5

    move/from16 v20, v10

    move/from16 v22, v11

    move-object/from16 v25, v12

    invoke-interface/range {v16 .. v26}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 508
    goto/16 :goto_0

    .line 486
    .end local v6    # "size":I
    :cond_9
    new-instance v6, Lcom/android/internal/telephony/uicc/IccFileTypeMismatch;

    invoke-direct {v6}, Lcom/android/internal/telephony/uicc/IccFileTypeMismatch;-><init>()V

    throw v6

    .line 482
    :cond_a
    new-instance v6, Lcom/android/internal/telephony/uicc/IccFileTypeMismatch;

    invoke-direct {v6}, Lcom/android/internal/telephony/uicc/IccFileTypeMismatch;-><init>()V

    throw v6

    .line 583
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v4    # "lc":Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;
    .end local v8    # "result":Lcom/android/internal/telephony/uicc/IccIoResult;
    .end local v15    # "data":[B
    :pswitch_3
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 584
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v4, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v4, Landroid/os/Message;

    move-object v3, v4

    .line 585
    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, Lcom/android/internal/telephony/uicc/IccIoResult;

    .line 587
    .local v4, "result":Lcom/android/internal/telephony/uicc/IccIoResult;
    iget-object v6, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/AsyncResult;

    invoke-direct {v1, v3, v6}, Lcom/android/internal/telephony/uicc/IccFileHandler;->processException(Landroid/os/Message;Landroid/os/AsyncResult;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 588
    goto :goto_0

    .line 591
    :cond_b
    iget-object v6, v4, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    const/4 v7, 0x0

    invoke-direct {v1, v3, v6, v7}, Lcom/android/internal/telephony/uicc/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v4    # "result":Lcom/android/internal/telephony/uicc/IccIoResult;
    goto :goto_0

    .line 510
    :pswitch_4
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 511
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v4, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v4, Landroid/os/Message;

    move-object v3, v4

    .line 512
    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, Lcom/android/internal/telephony/uicc/IccIoResult;

    .line 514
    .restart local v4    # "result":Lcom/android/internal/telephony/uicc/IccIoResult;
    iget-object v6, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/AsyncResult;

    invoke-direct {v1, v3, v6}, Lcom/android/internal/telephony/uicc/IccFileHandler;->processException(Landroid/os/Message;Landroid/os/AsyncResult;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 515
    goto :goto_0

    .line 518
    :cond_c
    iget-object v6, v4, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    .line 520
    .local v6, "data":[B
    iget v7, v2, Landroid/os/Message;->arg1:I

    .line 527
    .local v7, "fileid":I
    aget-byte v10, v6, v10

    if-ne v11, v10, :cond_e

    .line 531
    aget-byte v9, v6, v9

    if-nez v9, :cond_d

    .line 535
    aget-byte v9, v6, v12

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x8

    aget-byte v10, v6, v13

    and-int/lit16 v10, v10, 0xff

    add-int/2addr v9, v10

    .line 538
    .local v9, "size":I
    iget-object v10, v1, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v17, 0xb0

    invoke-virtual {v1, v7}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    iget-object v11, v1, Lcom/android/internal/telephony/uicc/IccFileHandler;->mAid:Ljava/lang/String;

    const/4 v12, 0x5

    .line 540
    invoke-virtual {v1, v12, v7, v8, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v26

    .line 538
    move-object/from16 v16, v10

    move/from16 v18, v7

    move/from16 v22, v9

    move-object/from16 v25, v11

    invoke-interface/range {v16 .. v26}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 542
    goto :goto_0

    .line 532
    .end local v9    # "size":I
    :cond_d
    new-instance v8, Lcom/android/internal/telephony/uicc/IccFileTypeMismatch;

    invoke-direct {v8}, Lcom/android/internal/telephony/uicc/IccFileTypeMismatch;-><init>()V

    throw v8

    .line 528
    :cond_e
    new-instance v8, Lcom/android/internal/telephony/uicc/IccFileTypeMismatch;

    invoke-direct {v8}, Lcom/android/internal/telephony/uicc/IccFileTypeMismatch;-><init>()V

    throw v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 600
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v4    # "result":Lcom/android/internal/telephony/uicc/IccIoResult;
    .end local v6    # "data":[B
    .end local v7    # "fileid":I
    :goto_0
    goto :goto_1

    .line 594
    :catch_0
    move-exception v0

    .line 595
    .local v0, "exc":Ljava/lang/Exception;
    if-eqz v3, :cond_f

    .line 596
    const/4 v4, 0x0

    invoke-direct {v1, v3, v4, v0}, Lcom/android/internal/telephony/uicc/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 598
    :cond_f
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "uncaught exception"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loge(Ljava/lang/String;)V

    .line 601
    .end local v0    # "exc":Ljava/lang/Exception;
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public loadEFImgLinearFixed(ILandroid/os/Message;)V
    .locals 16
    .param p1, "recordNum"    # I
    .param p2, "onLoaded"    # Landroid/os/Message;

    move-object/from16 v0, p0

    .line 205
    new-instance v1, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;

    const/16 v2, 0x4f20

    move/from16 v14, p1

    move-object/from16 v15, p2

    invoke-direct {v1, v2, v14, v15}, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;-><init>(IILandroid/os/Message;)V

    const/16 v3, 0xb

    invoke-virtual {v0, v3, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 209
    .local v1, "response":Landroid/os/Message;
    iget-object v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 210
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v6

    iget-object v12, v0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mAid:Ljava/lang/String;

    .line 209
    const/16 v4, 0xc0

    const/16 v5, 0x4f20

    const/4 v8, 0x4

    const/16 v9, 0xa

    const/4 v10, 0x0

    const/4 v11, 0x0

    move v7, v14

    move-object v13, v1

    invoke-interface/range {v3 .. v13}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 213
    return-void
.end method

.method public loadEFImgTransparent(IIIILandroid/os/Message;)V
    .locals 18
    .param p1, "fileid"    # I
    .param p2, "highOffset"    # I
    .param p3, "lowOffset"    # I
    .param p4, "length"    # I
    .param p5, "onLoaded"    # Landroid/os/Message;

    move-object/from16 v0, p0

    move/from16 v12, p1

    .line 327
    const/16 v1, 0xa

    const/4 v2, 0x0

    move-object/from16 v13, p5

    invoke-virtual {v0, v1, v12, v2, v13}, Lcom/android/internal/telephony/uicc/IccFileHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v14

    .line 330
    .local v14, "response":Landroid/os/Message;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IccFileHandler: loadEFImgTransparent fileid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " filePath = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    const/16 v2, 0x4f20

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " highOffset = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v15, p2

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " lowOffset = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v11, p3

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " length = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v10, p4

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 330
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->logd(Ljava/lang/String;)V

    .line 340
    iget-object v1, v0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v4

    iget-object v9, v0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mAid:Ljava/lang/String;

    const/16 v2, 0xb0

    const/4 v8, 0x0

    const/16 v16, 0x0

    move v3, v12

    move v5, v15

    move v6, v11

    move v7, v10

    move-object/from16 v17, v9

    move-object/from16 v9, v16

    move-object/from16 v10, v17

    move-object v11, v14

    invoke-interface/range {v1 .. v11}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 342
    return-void
.end method

.method public loadEFLinearFixed(IILandroid/os/Message;)V
    .locals 1
    .param p1, "fileid"    # I
    .param p2, "recordNum"    # I
    .param p3, "onLoaded"    # Landroid/os/Message;

    .line 192
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixed(ILjava/lang/String;ILandroid/os/Message;)V

    .line 193
    return-void
.end method

.method public loadEFLinearFixed(ILjava/lang/String;ILandroid/os/Message;)V
    .locals 16
    .param p1, "fileid"    # I
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "recordNum"    # I
    .param p4, "onLoaded"    # Landroid/os/Message;

    move-object/from16 v0, p0

    .line 172
    if-nez p2, :cond_0

    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object/from16 v1, p2

    .line 173
    .local v1, "efPath":Ljava/lang/String;
    :goto_0
    const/4 v2, 0x6

    new-instance v3, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;

    move/from16 v13, p1

    move/from16 v14, p3

    move-object/from16 v12, p4

    invoke-direct {v3, v13, v14, v1, v12}, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;-><init>(IILjava/lang/String;Landroid/os/Message;)V

    .line 174
    invoke-virtual {v0, v2, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v15

    .line 177
    .local v15, "response":Landroid/os/Message;
    iget-object v2, v0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0xc0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0xf

    const/4 v9, 0x0

    const/4 v10, 0x0

    iget-object v11, v0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mAid:Ljava/lang/String;

    move v4, v13

    move-object v5, v1

    move-object v12, v15

    invoke-interface/range {v2 .. v12}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 179
    return-void
.end method

.method public loadEFLinearFixedAll(ILandroid/os/Message;)V
    .locals 1
    .param p1, "fileid"    # I
    .param p2, "onLoaded"    # Landroid/os/Message;

    .line 276
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixedAll(ILjava/lang/String;Landroid/os/Message;)V

    .line 277
    return-void
.end method

.method public loadEFLinearFixedAll(ILjava/lang/String;Landroid/os/Message;)V
    .locals 16
    .param p1, "fileid"    # I
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "onLoaded"    # Landroid/os/Message;

    move-object/from16 v0, p0

    .line 258
    if-nez p2, :cond_0

    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object/from16 v1, p2

    .line 259
    .local v1, "efPath":Ljava/lang/String;
    :goto_0
    const/4 v2, 0x6

    new-instance v3, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;

    move/from16 v13, p1

    move-object/from16 v14, p3

    invoke-direct {v3, v13, v1, v14}, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;-><init>(ILjava/lang/String;Landroid/os/Message;)V

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v15

    .line 262
    .local v15, "response":Landroid/os/Message;
    iget-object v2, v0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0xc0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0xf

    const/4 v9, 0x0

    const/4 v10, 0x0

    iget-object v11, v0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mAid:Ljava/lang/String;

    move v4, v13

    move-object v5, v1

    move-object v12, v15

    invoke-interface/range {v2 .. v12}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 264
    return-void
.end method

.method public loadEFTransparent(IILandroid/os/Message;)V
    .locals 16
    .param p1, "fileid"    # I
    .param p2, "size"    # I
    .param p3, "onLoaded"    # Landroid/os/Message;

    move-object/from16 v0, p0

    .line 308
    const/4 v1, 0x5

    const/4 v2, 0x0

    move/from16 v14, p1

    move-object/from16 v15, p3

    invoke-virtual {v0, v1, v14, v2, v15}, Lcom/android/internal/telephony/uicc/IccFileHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 311
    .local v1, "response":Landroid/os/Message;
    iget-object v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v6

    iget-object v12, v0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mAid:Ljava/lang/String;

    const/16 v4, 0xb0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move v5, v14

    move/from16 v9, p2

    move-object v13, v1

    invoke-interface/range {v3 .. v13}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 313
    return-void
.end method

.method public loadEFTransparent(ILandroid/os/Message;)V
    .locals 13
    .param p1, "fileid"    # I
    .param p2, "onLoaded"    # Landroid/os/Message;

    .line 290
    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1, p2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 293
    .local v0, "response":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v5

    iget-object v11, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mAid:Ljava/lang/String;

    const/16 v3, 0xc0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0xf

    const/4 v9, 0x0

    const/4 v10, 0x0

    move v4, p1

    move-object v12, v0

    invoke-interface/range {v2 .. v12}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 295
    return-void
.end method

.method protected abstract logd(Ljava/lang/String;)V
.end method

.method protected abstract loge(Ljava/lang/String;)V
.end method

.method public updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V
    .locals 13
    .param p1, "fileid"    # I
    .param p2, "recordNum"    # I
    .param p3, "data"    # [B
    .param p4, "pin2"    # Ljava/lang/String;
    .param p5, "onComplete"    # Landroid/os/Message;

    move-object v0, p0

    .line 373
    iget-object v1, v0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v12, p3

    array-length v7, v12

    .line 375
    invoke-static/range {p3 .. p3}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v8

    iget-object v10, v0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mAid:Ljava/lang/String;

    .line 373
    const/16 v2, 0xdc

    const/4 v6, 0x4

    move v3, p1

    move v5, p2

    move-object/from16 v9, p4

    move-object/from16 v11, p5

    invoke-interface/range {v1 .. v11}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 376
    return-void
.end method

.method public updateEFLinearFixed(ILjava/lang/String;I[BLjava/lang/String;Landroid/os/Message;)V
    .locals 13
    .param p1, "fileid"    # I
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "recordNum"    # I
    .param p4, "data"    # [B
    .param p5, "pin2"    # Ljava/lang/String;
    .param p6, "onComplete"    # Landroid/os/Message;

    move-object v0, p0

    .line 356
    if-nez p2, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v1

    move-object v5, v1

    goto :goto_0

    :cond_0
    move-object v5, p2

    .line 357
    .local v5, "efPath":Ljava/lang/String;
    :goto_0
    iget-object v2, v0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0xdc

    const/4 v7, 0x4

    move-object/from16 v1, p4

    array-length v8, v1

    .line 359
    invoke-static/range {p4 .. p4}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v9

    iget-object v11, v0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mAid:Ljava/lang/String;

    .line 357
    move v4, p1

    move/from16 v6, p3

    move-object/from16 v10, p5

    move-object/from16 v12, p6

    invoke-interface/range {v2 .. v12}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 360
    return-void
.end method

.method public updateEFTransparent(I[BLandroid/os/Message;)V
    .locals 11
    .param p1, "fileid"    # I
    .param p2, "data"    # [B
    .param p3, "onComplete"    # Landroid/os/Message;

    .line 384
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v3

    array-length v6, p2

    .line 386
    invoke-static {p2}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v7

    iget-object v9, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mAid:Ljava/lang/String;

    .line 384
    const/16 v1, 0xd6

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x0

    move v2, p1

    move-object v10, p3

    invoke-interface/range {v0 .. v10}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 387
    return-void
.end method
