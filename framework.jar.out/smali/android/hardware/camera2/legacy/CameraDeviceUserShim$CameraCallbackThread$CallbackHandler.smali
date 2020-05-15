.class Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread$CallbackHandler;
.super Landroid/os/Handler;
.source "CameraDeviceUserShim.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallbackHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;


# direct methods
.method public constructor <init>(Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;Landroid/os/Looper;)V
    .locals 0
    .param p2, "l"    # Landroid/os/Looper;

    .line 297
    iput-object p1, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread$CallbackHandler;->this$0:Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;

    .line 298
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 299
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .line 304
    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    .line 346
    new-instance v0, Ljava/lang/IllegalArgumentException;

    goto/16 :goto_1

    .line 342
    :pswitch_0
    iget-object v0, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread$CallbackHandler;->this$0:Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;

    invoke-static {v0}, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;->access$000(Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;)Landroid/hardware/camera2/ICameraDeviceCallbacks;

    move-result-object v0

    invoke-interface {v0}, Landroid/hardware/camera2/ICameraDeviceCallbacks;->onRequestQueueEmpty()V

    .line 343
    goto/16 :goto_0

    .line 335
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 336
    .local v0, "objArray":[Ljava/lang/Object;
    aget-object v2, v0, v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 337
    .local v2, "lastFrameNumber":J
    aget-object v1, v0, v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 338
    .local v1, "repeatingRequestId":I
    iget-object v4, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread$CallbackHandler;->this$0:Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;

    invoke-static {v4}, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;->access$000(Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;)Landroid/hardware/camera2/ICameraDeviceCallbacks;

    move-result-object v4

    invoke-interface {v4, v2, v3, v1}, Landroid/hardware/camera2/ICameraDeviceCallbacks;->onRepeatingRequestError(JI)V

    .line 339
    goto :goto_0

    .line 330
    .end local v0    # "objArray":[Ljava/lang/Object;
    .end local v1    # "repeatingRequestId":I
    .end local v2    # "lastFrameNumber":J
    :pswitch_2
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 331
    .local v0, "streamId":I
    iget-object v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread$CallbackHandler;->this$0:Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;

    invoke-static {v1}, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;->access$000(Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;)Landroid/hardware/camera2/ICameraDeviceCallbacks;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/hardware/camera2/ICameraDeviceCallbacks;->onPrepared(I)V

    .line 332
    goto :goto_0

    .line 322
    .end local v0    # "streamId":I
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 323
    .local v0, "resultArray":[Ljava/lang/Object;
    aget-object v3, v0, v2

    check-cast v3, Landroid/hardware/camera2/impl/CameraMetadataNative;

    .line 324
    .local v3, "result":Landroid/hardware/camera2/impl/CameraMetadataNative;
    aget-object v1, v0, v1

    check-cast v1, Landroid/hardware/camera2/impl/CaptureResultExtras;

    .line 325
    .local v1, "resultExtras":Landroid/hardware/camera2/impl/CaptureResultExtras;
    iget-object v4, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread$CallbackHandler;->this$0:Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;

    invoke-static {v4}, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;->access$000(Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;)Landroid/hardware/camera2/ICameraDeviceCallbacks;

    move-result-object v4

    new-array v2, v2, [Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo;

    invoke-interface {v4, v3, v1, v2}, Landroid/hardware/camera2/ICameraDeviceCallbacks;->onResultReceived(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/camera2/impl/CaptureResultExtras;[Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo;)V

    .line 327
    goto :goto_0

    .line 315
    .end local v0    # "resultArray":[Ljava/lang/Object;
    .end local v1    # "resultExtras":Landroid/hardware/camera2/impl/CaptureResultExtras;
    .end local v3    # "result":Landroid/hardware/camera2/impl/CameraMetadataNative;
    :pswitch_4
    iget v0, p1, Landroid/os/Message;->arg2:I

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    .line 316
    .local v0, "timestamp":J
    const/16 v4, 0x20

    shl-long v4, v0, v4

    iget v6, p1, Landroid/os/Message;->arg1:I

    int-to-long v6, v6

    and-long/2addr v2, v6

    or-long v0, v4, v2

    .line 317
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/hardware/camera2/impl/CaptureResultExtras;

    .line 318
    .local v2, "resultExtras":Landroid/hardware/camera2/impl/CaptureResultExtras;
    iget-object v3, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread$CallbackHandler;->this$0:Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;

    invoke-static {v3}, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;->access$000(Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;)Landroid/hardware/camera2/ICameraDeviceCallbacks;

    move-result-object v3

    invoke-interface {v3, v2, v0, v1}, Landroid/hardware/camera2/ICameraDeviceCallbacks;->onCaptureStarted(Landroid/hardware/camera2/impl/CaptureResultExtras;J)V

    .line 319
    goto :goto_0

    .line 312
    .end local v0    # "timestamp":J
    .end local v2    # "resultExtras":Landroid/hardware/camera2/impl/CaptureResultExtras;
    :pswitch_5
    iget-object v0, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread$CallbackHandler;->this$0:Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;

    invoke-static {v0}, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;->access$000(Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;)Landroid/hardware/camera2/ICameraDeviceCallbacks;

    move-result-object v0

    invoke-interface {v0}, Landroid/hardware/camera2/ICameraDeviceCallbacks;->onDeviceIdle()V

    .line 313
    goto :goto_0

    .line 306
    :pswitch_6
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 307
    .local v0, "errorCode":I
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/hardware/camera2/impl/CaptureResultExtras;

    .line 308
    .restart local v1    # "resultExtras":Landroid/hardware/camera2/impl/CaptureResultExtras;
    iget-object v2, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread$CallbackHandler;->this$0:Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;

    invoke-static {v2}, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;->access$000(Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;)Landroid/hardware/camera2/ICameraDeviceCallbacks;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Landroid/hardware/camera2/ICameraDeviceCallbacks;->onDeviceError(ILandroid/hardware/camera2/impl/CaptureResultExtras;)V

    .line 309
    nop

    .line 352
    .end local v0    # "errorCode":I
    .end local v1    # "resultExtras":Landroid/hardware/camera2/impl/CaptureResultExtras;
    :goto_0
    nop

    .line 353
    return-void

    .line 346
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown callback message "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 349
    :catch_0
    move-exception v0

    .line 350
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received remote exception during camera callback "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
