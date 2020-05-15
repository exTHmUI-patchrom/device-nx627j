.class Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;
.super Ljava/lang/Object;
.source "CameraDeviceUserShim.java"

# interfaces
.implements Landroid/hardware/camera2/ICameraDeviceCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/legacy/CameraDeviceUserShim;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CameraCallbackThread"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread$CallbackHandler;
    }
.end annotation


# static fields
.field private static final CAMERA_ERROR:I = 0x0

.field private static final CAMERA_IDLE:I = 0x1

.field private static final CAPTURE_STARTED:I = 0x2

.field private static final PREPARED:I = 0x4

.field private static final REPEATING_REQUEST_ERROR:I = 0x5

.field private static final REQUEST_QUEUE_EMPTY:I = 0x6

.field private static final RESULT_RECEIVED:I = 0x3


# instance fields
.field private final mCallbacks:Landroid/hardware/camera2/ICameraDeviceCallbacks;

.field private mHandler:Landroid/os/Handler;

.field private final mHandlerThread:Landroid/os/HandlerThread;


# direct methods
.method public constructor <init>(Landroid/hardware/camera2/ICameraDeviceCallbacks;)V
    .locals 2
    .param p1, "callbacks"    # Landroid/hardware/camera2/ICameraDeviceCallbacks;

    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 218
    iput-object p1, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;->mCallbacks:Landroid/hardware/camera2/ICameraDeviceCallbacks;

    .line 220
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "LegacyCameraCallback"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;->mHandlerThread:Landroid/os/HandlerThread;

    .line 221
    iget-object v0, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 222
    return-void
.end method

.method static synthetic access$000(Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;)Landroid/hardware/camera2/ICameraDeviceCallbacks;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;

    .line 203
    iget-object v0, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;->mCallbacks:Landroid/hardware/camera2/ICameraDeviceCallbacks;

    return-object v0
.end method

.method private getHandler()Landroid/os/Handler;
    .locals 2

    .line 290
    iget-object v0, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 291
    new-instance v0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread$CallbackHandler;

    iget-object v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread$CallbackHandler;-><init>(Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;->mHandler:Landroid/os/Handler;

    .line 293
    :cond_0
    iget-object v0, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;->mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 286
    const/4 v0, 0x0

    return-object v0
.end method

.method public close()V
    .locals 1

    .line 225
    iget-object v0, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 226
    return-void
.end method

.method public onCaptureStarted(Landroid/hardware/camera2/impl/CaptureResultExtras;J)V
    .locals 6
    .param p1, "resultExtras"    # Landroid/hardware/camera2/impl/CaptureResultExtras;
    .param p2, "timestamp"    # J

    .line 244
    invoke-direct {p0}, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const-wide v1, 0xffffffffL

    and-long v3, p2, v1

    long-to-int v3, v3

    const/16 v4, 0x20

    shr-long v4, p2, v4

    and-long/2addr v1, v4

    long-to-int v1, v1

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v3, v1, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 248
    .local v0, "msg":Landroid/os/Message;
    invoke-direct {p0}, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 249
    return-void
.end method

.method public onDeviceError(ILandroid/hardware/camera2/impl/CaptureResultExtras;)V
    .locals 2
    .param p1, "errorCode"    # I
    .param p2, "resultExtras"    # Landroid/hardware/camera2/impl/CaptureResultExtras;

    .line 230
    invoke-direct {p0}, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, v1, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 233
    .local v0, "msg":Landroid/os/Message;
    invoke-direct {p0}, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 234
    return-void
.end method

.method public onDeviceIdle()V
    .locals 2

    .line 238
    invoke-direct {p0}, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 239
    .local v0, "msg":Landroid/os/Message;
    invoke-direct {p0}, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 240
    return-void
.end method

.method public onPrepared(I)V
    .locals 3
    .param p1, "streamId"    # I

    .line 263
    invoke-direct {p0}, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 265
    .local v0, "msg":Landroid/os/Message;
    invoke-direct {p0}, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 266
    return-void
.end method

.method public onRepeatingRequestError(JI)V
    .locals 3
    .param p1, "lastFrameNumber"    # J
    .param p3, "repeatingRequestId"    # I

    .line 270
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 271
    .local v0, "objArray":[Ljava/lang/Object;
    invoke-direct {p0}, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 273
    .local v1, "msg":Landroid/os/Message;
    invoke-direct {p0}, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 274
    return-void
.end method

.method public onRequestQueueEmpty()V
    .locals 3

    .line 278
    invoke-direct {p0}, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x6

    invoke-virtual {v0, v2, v1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 280
    .local v0, "msg":Landroid/os/Message;
    invoke-direct {p0}, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 281
    return-void
.end method

.method public onResultReceived(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/camera2/impl/CaptureResultExtras;[Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo;)V
    .locals 3
    .param p1, "result"    # Landroid/hardware/camera2/impl/CameraMetadataNative;
    .param p2, "resultExtras"    # Landroid/hardware/camera2/impl/CaptureResultExtras;
    .param p3, "physicalResults"    # [Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo;

    .line 255
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    .line 256
    .local v0, "resultArray":[Ljava/lang/Object;
    invoke-direct {p0}, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 258
    .local v1, "msg":Landroid/os/Message;
    invoke-direct {p0}, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 259
    return-void
.end method
