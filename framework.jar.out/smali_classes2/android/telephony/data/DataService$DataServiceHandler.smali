.class Landroid/telephony/data/DataService$DataServiceHandler;
.super Landroid/os/Handler;
.source "DataService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/data/DataService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DataServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telephony/data/DataService;


# direct methods
.method constructor <init>(Landroid/telephony/data/DataService;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .line 327
    iput-object p1, p0, Landroid/telephony/data/DataService$DataServiceHandler;->this$0:Landroid/telephony/data/DataService;

    .line 328
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 329
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .param p1, "message"    # Landroid/os/Message;

    .line 334
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 335
    .local v0, "slotId":I
    iget-object v1, p0, Landroid/telephony/data/DataService$DataServiceHandler;->this$0:Landroid/telephony/data/DataService;

    invoke-static {v1}, Landroid/telephony/data/DataService;->access$200(Landroid/telephony/data/DataService;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/data/DataService$DataServiceProvider;

    .line 337
    .local v1, "serviceProvider":Landroid/telephony/data/DataService$DataServiceProvider;
    iget v2, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x0

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_5

    .line 417
    :pswitch_0
    if-nez v1, :cond_0

    goto/16 :goto_5

    .line 418
    :cond_0
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/telephony/data/DataService$DataCallListChangedIndication;

    .line 421
    .local v2, "indication":Landroid/telephony/data/DataService$DataCallListChangedIndication;
    :try_start_0
    iget-object v3, v2, Landroid/telephony/data/DataService$DataCallListChangedIndication;->callback:Landroid/telephony/data/IDataServiceCallback;

    iget-object v4, v2, Landroid/telephony/data/DataService$DataCallListChangedIndication;->dataCallList:Ljava/util/List;

    invoke-interface {v3, v4}, Landroid/telephony/data/IDataServiceCallback;->onDataCallListChanged(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 424
    goto/16 :goto_5

    .line 422
    :catch_0
    move-exception v3

    .line 423
    .local v3, "e":Landroid/os/RemoteException;
    iget-object v4, p0, Landroid/telephony/data/DataService$DataServiceHandler;->this$0:Landroid/telephony/data/DataService;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to call onDataCallListChanged. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/data/DataService;->access$500(Landroid/telephony/data/DataService;Ljava/lang/String;)V

    .end local v2    # "indication":Landroid/telephony/data/DataService$DataCallListChangedIndication;
    .end local v3    # "e":Landroid/os/RemoteException;
    goto/16 :goto_5

    .line 412
    :pswitch_1
    if-nez v1, :cond_1

    goto/16 :goto_5

    .line 413
    :cond_1
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/telephony/data/IDataServiceCallback;

    .line 414
    .local v2, "callback":Landroid/telephony/data/IDataServiceCallback;
    invoke-static {v1, v2}, Landroid/telephony/data/DataService$DataServiceProvider;->access$400(Landroid/telephony/data/DataService$DataServiceProvider;Landroid/telephony/data/IDataServiceCallback;)V

    .line 415
    goto/16 :goto_5

    .line 408
    .end local v2    # "callback":Landroid/telephony/data/IDataServiceCallback;
    :pswitch_2
    if-nez v1, :cond_2

    goto/16 :goto_5

    .line 409
    :cond_2
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/telephony/data/IDataServiceCallback;

    invoke-static {v1, v2}, Landroid/telephony/data/DataService$DataServiceProvider;->access$300(Landroid/telephony/data/DataService$DataServiceProvider;Landroid/telephony/data/IDataServiceCallback;)V

    .line 410
    goto/16 :goto_5

    .line 402
    :pswitch_3
    if-nez v1, :cond_3

    goto/16 :goto_5

    .line 404
    :cond_3
    new-instance v2, Landroid/telephony/data/DataServiceCallback;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/telephony/data/IDataServiceCallback;

    invoke-direct {v2, v3}, Landroid/telephony/data/DataServiceCallback;-><init>(Landroid/telephony/data/IDataServiceCallback;)V

    invoke-virtual {v1, v2}, Landroid/telephony/data/DataService$DataServiceProvider;->getDataCallList(Landroid/telephony/data/DataServiceCallback;)V

    .line 406
    goto/16 :goto_5

    .line 392
    :pswitch_4
    if-nez v1, :cond_4

    goto/16 :goto_5

    .line 393
    :cond_4
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/telephony/data/DataService$SetDataProfileRequest;

    .line 395
    .local v2, "setDataProfileRequest":Landroid/telephony/data/DataService$SetDataProfileRequest;
    iget-object v4, v2, Landroid/telephony/data/DataService$SetDataProfileRequest;->dps:Ljava/util/List;

    iget-boolean v5, v2, Landroid/telephony/data/DataService$SetDataProfileRequest;->isRoaming:Z

    .line 397
    iget-object v6, v2, Landroid/telephony/data/DataService$SetDataProfileRequest;->callback:Landroid/telephony/data/IDataServiceCallback;

    if-eqz v6, :cond_5

    .line 398
    new-instance v3, Landroid/telephony/data/DataServiceCallback;

    iget-object v6, v2, Landroid/telephony/data/DataService$SetDataProfileRequest;->callback:Landroid/telephony/data/IDataServiceCallback;

    invoke-direct {v3, v6}, Landroid/telephony/data/DataServiceCallback;-><init>(Landroid/telephony/data/IDataServiceCallback;)V

    goto :goto_0

    .line 399
    :cond_5
    nop

    .line 395
    :goto_0
    invoke-virtual {v1, v4, v5, v3}, Landroid/telephony/data/DataService$DataServiceProvider;->setDataProfile(Ljava/util/List;ZLandroid/telephony/data/DataServiceCallback;)V

    .line 400
    goto/16 :goto_5

    .line 382
    .end local v2    # "setDataProfileRequest":Landroid/telephony/data/DataService$SetDataProfileRequest;
    :pswitch_5
    if-nez v1, :cond_6

    goto/16 :goto_5

    .line 383
    :cond_6
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/telephony/data/DataService$SetInitialAttachApnRequest;

    .line 385
    .local v2, "setInitialAttachApnRequest":Landroid/telephony/data/DataService$SetInitialAttachApnRequest;
    iget-object v4, v2, Landroid/telephony/data/DataService$SetInitialAttachApnRequest;->dataProfile:Landroid/telephony/data/DataProfile;

    iget-boolean v5, v2, Landroid/telephony/data/DataService$SetInitialAttachApnRequest;->isRoaming:Z

    .line 387
    iget-object v6, v2, Landroid/telephony/data/DataService$SetInitialAttachApnRequest;->callback:Landroid/telephony/data/IDataServiceCallback;

    if-eqz v6, :cond_7

    .line 388
    new-instance v3, Landroid/telephony/data/DataServiceCallback;

    iget-object v6, v2, Landroid/telephony/data/DataService$SetInitialAttachApnRequest;->callback:Landroid/telephony/data/IDataServiceCallback;

    invoke-direct {v3, v6}, Landroid/telephony/data/DataServiceCallback;-><init>(Landroid/telephony/data/IDataServiceCallback;)V

    goto :goto_1

    .line 389
    :cond_7
    nop

    .line 385
    :goto_1
    invoke-virtual {v1, v4, v5, v3}, Landroid/telephony/data/DataService$DataServiceProvider;->setInitialAttachApn(Landroid/telephony/data/DataProfile;ZLandroid/telephony/data/DataServiceCallback;)V

    .line 390
    goto/16 :goto_5

    .line 372
    .end local v2    # "setInitialAttachApnRequest":Landroid/telephony/data/DataService$SetInitialAttachApnRequest;
    :pswitch_6
    if-nez v1, :cond_8

    goto/16 :goto_5

    .line 373
    :cond_8
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/telephony/data/DataService$DeactivateDataCallRequest;

    .line 375
    .local v2, "deactivateDataCallRequest":Landroid/telephony/data/DataService$DeactivateDataCallRequest;
    iget v4, v2, Landroid/telephony/data/DataService$DeactivateDataCallRequest;->cid:I

    iget v5, v2, Landroid/telephony/data/DataService$DeactivateDataCallRequest;->reason:I

    .line 377
    iget-object v6, v2, Landroid/telephony/data/DataService$DeactivateDataCallRequest;->callback:Landroid/telephony/data/IDataServiceCallback;

    if-eqz v6, :cond_9

    .line 378
    new-instance v3, Landroid/telephony/data/DataServiceCallback;

    iget-object v6, v2, Landroid/telephony/data/DataService$DeactivateDataCallRequest;->callback:Landroid/telephony/data/IDataServiceCallback;

    invoke-direct {v3, v6}, Landroid/telephony/data/DataServiceCallback;-><init>(Landroid/telephony/data/IDataServiceCallback;)V

    goto :goto_2

    .line 379
    :cond_9
    nop

    .line 375
    :goto_2
    invoke-virtual {v1, v4, v5, v3}, Landroid/telephony/data/DataService$DataServiceProvider;->deactivateDataCall(IILandroid/telephony/data/DataServiceCallback;)V

    .line 380
    goto/16 :goto_5

    .line 360
    .end local v2    # "deactivateDataCallRequest":Landroid/telephony/data/DataService$DeactivateDataCallRequest;
    :pswitch_7
    if-nez v1, :cond_a

    goto/16 :goto_5

    .line 361
    :cond_a
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v10, v2

    check-cast v10, Landroid/telephony/data/DataService$SetupDataCallRequest;

    .line 362
    .local v10, "setupDataCallRequest":Landroid/telephony/data/DataService$SetupDataCallRequest;
    iget v4, v10, Landroid/telephony/data/DataService$SetupDataCallRequest;->accessNetworkType:I

    iget-object v5, v10, Landroid/telephony/data/DataService$SetupDataCallRequest;->dataProfile:Landroid/telephony/data/DataProfile;

    iget-boolean v6, v10, Landroid/telephony/data/DataService$SetupDataCallRequest;->isRoaming:Z

    iget-boolean v7, v10, Landroid/telephony/data/DataService$SetupDataCallRequest;->allowRoaming:Z

    iget v8, v10, Landroid/telephony/data/DataService$SetupDataCallRequest;->reason:I

    iget-object v9, v10, Landroid/telephony/data/DataService$SetupDataCallRequest;->linkProperties:Landroid/net/LinkProperties;

    .line 366
    iget-object v2, v10, Landroid/telephony/data/DataService$SetupDataCallRequest;->callback:Landroid/telephony/data/IDataServiceCallback;

    if-eqz v2, :cond_b

    .line 367
    new-instance v2, Landroid/telephony/data/DataServiceCallback;

    iget-object v3, v10, Landroid/telephony/data/DataService$SetupDataCallRequest;->callback:Landroid/telephony/data/IDataServiceCallback;

    invoke-direct {v2, v3}, Landroid/telephony/data/DataServiceCallback;-><init>(Landroid/telephony/data/IDataServiceCallback;)V

    .line 362
    move-object v11, v2

    goto :goto_3

    .line 368
    :cond_b
    nop

    .line 362
    move-object v11, v3

    :goto_3
    move-object v2, v1

    move v3, v4

    move-object v4, v5

    move v5, v6

    move v6, v7

    move v7, v8

    move-object v8, v9

    move-object v9, v11

    invoke-virtual/range {v2 .. v9}, Landroid/telephony/data/DataService$DataServiceProvider;->setupDataCall(ILandroid/telephony/data/DataProfile;ZZILandroid/net/LinkProperties;Landroid/telephony/data/DataServiceCallback;)V

    .line 370
    goto :goto_5

    .line 351
    .end local v10    # "setupDataCallRequest":Landroid/telephony/data/DataService$SetupDataCallRequest;
    :pswitch_8
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_4
    iget-object v3, p0, Landroid/telephony/data/DataService$DataServiceHandler;->this$0:Landroid/telephony/data/DataService;

    invoke-static {v3}, Landroid/telephony/data/DataService;->access$200(Landroid/telephony/data/DataService;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_d

    .line 352
    iget-object v3, p0, Landroid/telephony/data/DataService$DataServiceHandler;->this$0:Landroid/telephony/data/DataService;

    invoke-static {v3}, Landroid/telephony/data/DataService;->access$200(Landroid/telephony/data/DataService;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v1, v3

    check-cast v1, Landroid/telephony/data/DataService$DataServiceProvider;

    .line 353
    if-eqz v1, :cond_c

    .line 354
    invoke-virtual {v1}, Landroid/telephony/data/DataService$DataServiceProvider;->onDestroy()V

    .line 351
    :cond_c
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 357
    .end local v2    # "i":I
    :cond_d
    iget-object v2, p0, Landroid/telephony/data/DataService$DataServiceHandler;->this$0:Landroid/telephony/data/DataService;

    invoke-static {v2}, Landroid/telephony/data/DataService;->access$200(Landroid/telephony/data/DataService;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 358
    goto :goto_5

    .line 345
    :pswitch_9
    if-eqz v1, :cond_e

    .line 346
    invoke-virtual {v1}, Landroid/telephony/data/DataService$DataServiceProvider;->onDestroy()V

    .line 347
    iget-object v2, p0, Landroid/telephony/data/DataService$DataServiceHandler;->this$0:Landroid/telephony/data/DataService;

    invoke-static {v2}, Landroid/telephony/data/DataService;->access$200(Landroid/telephony/data/DataService;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_5

    .line 339
    :pswitch_a
    iget-object v2, p0, Landroid/telephony/data/DataService$DataServiceHandler;->this$0:Landroid/telephony/data/DataService;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Landroid/telephony/data/DataService;->createDataServiceProvider(I)Landroid/telephony/data/DataService$DataServiceProvider;

    move-result-object v1

    .line 340
    if-eqz v1, :cond_e

    .line 341
    iget-object v2, p0, Landroid/telephony/data/DataService$DataServiceHandler;->this$0:Landroid/telephony/data/DataService;

    invoke-static {v2}, Landroid/telephony/data/DataService;->access$200(Landroid/telephony/data/DataService;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 427
    :cond_e
    :goto_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
.end method
