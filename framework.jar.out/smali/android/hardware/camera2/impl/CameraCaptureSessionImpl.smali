.class public Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;
.super Landroid/hardware/camera2/CameraCaptureSession;
.source "CameraCaptureSessionImpl.java"

# interfaces
.implements Landroid/hardware/camera2/impl/CameraCaptureSessionCore;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$IdleDrainListener;,
        Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$AbortDrainListener;,
        Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$SequenceDrainListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "CameraCaptureSession"


# instance fields
.field private final mAbortDrainer:Landroid/hardware/camera2/utils/TaskSingleDrainer;

.field private volatile mAborting:Z

.field private mClosed:Z

.field private final mConfigureSuccess:Z

.field private final mDeviceExecutor:Ljava/util/concurrent/Executor;

.field private final mDeviceImpl:Landroid/hardware/camera2/impl/CameraDeviceImpl;

.field private final mId:I

.field private final mIdString:Ljava/lang/String;

.field private final mIdleDrainer:Landroid/hardware/camera2/utils/TaskSingleDrainer;

.field private final mInput:Landroid/view/Surface;

.field private final mSequenceDrainer:Landroid/hardware/camera2/utils/TaskDrainer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/utils/TaskDrainer<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSkipUnconfigure:Z

.field private final mStateCallback:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

.field private final mStateExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method constructor <init>(ILandroid/view/Surface;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/impl/CameraDeviceImpl;Ljava/util/concurrent/Executor;Z)V
    .locals 7
    .param p1, "id"    # I
    .param p2, "input"    # Landroid/view/Surface;
    .param p3, "callback"    # Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
    .param p4, "stateExecutor"    # Ljava/util/concurrent/Executor;
    .param p5, "deviceImpl"    # Landroid/hardware/camera2/impl/CameraDeviceImpl;
    .param p6, "deviceStateExecutor"    # Ljava/util/concurrent/Executor;
    .param p7, "configureSuccess"    # Z

    .line 89
    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession;-><init>()V

    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mClosed:Z

    .line 74
    iput-boolean v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mSkipUnconfigure:Z

    .line 90
    if-eqz p3, :cond_1

    .line 94
    iput p1, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mId:I

    .line 95
    const-string v1, "Session %d: "

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    iget v4, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mIdString:Ljava/lang/String;

    .line 97
    iput-object p2, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mInput:Landroid/view/Surface;

    .line 98
    const-string/jumbo v1, "stateExecutor must not be null"

    invoke-static {p4, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Executor;

    iput-object v1, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mStateExecutor:Ljava/util/concurrent/Executor;

    .line 99
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mStateExecutor:Ljava/util/concurrent/Executor;

    invoke-direct {p0, v1, p3}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->createUserStateCallbackProxy(Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;)Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    move-result-object v1

    iput-object v1, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mStateCallback:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    .line 101
    const-string v1, "deviceStateExecutor must not be null"

    invoke-static {p6, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Executor;

    iput-object v1, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mDeviceExecutor:Ljava/util/concurrent/Executor;

    .line 103
    const-string v1, "deviceImpl must not be null"

    invoke-static {p5, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;

    iput-object v1, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mDeviceImpl:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    .line 111
    new-instance v1, Landroid/hardware/camera2/utils/TaskDrainer;

    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mDeviceExecutor:Ljava/util/concurrent/Executor;

    new-instance v4, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$SequenceDrainListener;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$SequenceDrainListener;-><init>(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;)V

    const-string/jumbo v6, "seq"

    invoke-direct {v1, v3, v4, v6}, Landroid/hardware/camera2/utils/TaskDrainer;-><init>(Ljava/util/concurrent/Executor;Landroid/hardware/camera2/utils/TaskDrainer$DrainListener;Ljava/lang/String;)V

    iput-object v1, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mSequenceDrainer:Landroid/hardware/camera2/utils/TaskDrainer;

    .line 113
    new-instance v1, Landroid/hardware/camera2/utils/TaskSingleDrainer;

    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mDeviceExecutor:Ljava/util/concurrent/Executor;

    new-instance v4, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$IdleDrainListener;

    invoke-direct {v4, p0, v5}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$IdleDrainListener;-><init>(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;)V

    const-string v6, "idle"

    invoke-direct {v1, v3, v4, v6}, Landroid/hardware/camera2/utils/TaskSingleDrainer;-><init>(Ljava/util/concurrent/Executor;Landroid/hardware/camera2/utils/TaskDrainer$DrainListener;Ljava/lang/String;)V

    iput-object v1, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mIdleDrainer:Landroid/hardware/camera2/utils/TaskSingleDrainer;

    .line 115
    new-instance v1, Landroid/hardware/camera2/utils/TaskSingleDrainer;

    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mDeviceExecutor:Ljava/util/concurrent/Executor;

    new-instance v4, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$AbortDrainListener;

    invoke-direct {v4, p0, v5}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$AbortDrainListener;-><init>(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;)V

    const-string v5, "abort"

    invoke-direct {v1, v3, v4, v5}, Landroid/hardware/camera2/utils/TaskSingleDrainer;-><init>(Ljava/util/concurrent/Executor;Landroid/hardware/camera2/utils/TaskDrainer$DrainListener;Ljava/lang/String;)V

    iput-object v1, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mAbortDrainer:Landroid/hardware/camera2/utils/TaskSingleDrainer;

    .line 120
    if-eqz p7, :cond_0

    .line 121
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mStateCallback:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    invoke-virtual {v0, p0}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;->onConfigured(Landroid/hardware/camera2/CameraCaptureSession;)V

    .line 123
    iput-boolean v2, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mConfigureSuccess:Z

    goto :goto_0

    .line 125
    :cond_0
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mStateCallback:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    invoke-virtual {v1, p0}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;->onConfigureFailed(Landroid/hardware/camera2/CameraCaptureSession;)V

    .line 126
    iput-boolean v2, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mClosed:Z

    .line 127
    const-string v1, "CameraCaptureSession"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mIdString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Failed to create capture session; configuration failed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    iput-boolean v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mConfigureSuccess:Z

    .line 130
    :goto_0
    return-void

    .line 91
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callback must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$1000(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;)Landroid/hardware/camera2/impl/CameraDeviceImpl;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

    .line 38
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mDeviceImpl:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    return-object v0
.end method

.method static synthetic access$300(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;I)V
    .locals 0
    .param p0, "x0"    # Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;
    .param p1, "x1"    # I

    .line 38
    invoke-direct {p0, p1}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->finishPendingSequence(I)V

    return-void
.end method

.method static synthetic access$400(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

    .line 38
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mIdString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;)Landroid/hardware/camera2/utils/TaskSingleDrainer;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

    .line 38
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mIdleDrainer:Landroid/hardware/camera2/utils/TaskSingleDrainer;

    return-object v0
.end method

.method static synthetic access$600(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;)Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

    .line 38
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mStateCallback:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    return-object v0
.end method

.method static synthetic access$700(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;)Z
    .locals 1
    .param p0, "x0"    # Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

    .line 38
    iget-boolean v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mAborting:Z

    return v0
.end method

.method static synthetic access$702(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;
    .param p1, "x1"    # Z

    .line 38
    iput-boolean p1, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mAborting:Z

    return p1
.end method

.method static synthetic access$800(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;)Landroid/hardware/camera2/utils/TaskSingleDrainer;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

    .line 38
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mAbortDrainer:Landroid/hardware/camera2/utils/TaskSingleDrainer;

    return-object v0
.end method

.method static synthetic access$900(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;)Z
    .locals 1
    .param p0, "x0"    # Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

    .line 38
    iget-boolean v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mSkipUnconfigure:Z

    return v0
.end method

.method private addPendingSequence(I)I
    .locals 2
    .param p1, "sequenceId"    # I

    .line 849
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mSequenceDrainer:Landroid/hardware/camera2/utils/TaskDrainer;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/utils/TaskDrainer;->taskStarted(Ljava/lang/Object;)V

    .line 850
    return p1
.end method

.method private checkCaptureRequest(Landroid/hardware/camera2/CaptureRequest;)V
    .locals 2
    .param p1, "request"    # Landroid/hardware/camera2/CaptureRequest;

    .line 204
    if-eqz p1, :cond_4

    .line 206
    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest;->isReprocess()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->isReprocessable()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 207
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "this capture session cannot handle reprocess requests"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 209
    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mDeviceImpl:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-virtual {v0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->isPrivilegedApp()Z

    move-result v0

    if-nez v0, :cond_3

    .line 210
    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest;->isReprocess()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest;->getReprocessableSessionId()I

    move-result v0

    iget v1, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mId:I

    if-ne v0, v1, :cond_2

    goto :goto_1

    .line 211
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "capture request was created for another session"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 213
    :cond_3
    :goto_1
    return-void

    .line 205
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "request must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkCaptureRequests(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/CaptureRequest;",
            ">;)V"
        }
    .end annotation

    .line 263
    .local p1, "requests":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CaptureRequest;>;"
    if-eqz p1, :cond_5

    .line 265
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 269
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/CaptureRequest;

    .line 270
    .local v1, "request":Landroid/hardware/camera2/CaptureRequest;
    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest;->isReprocess()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 271
    invoke-virtual {p0}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->isReprocessable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 274
    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest;->getReprocessableSessionId()I

    move-result v2

    iget v3, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mId:I

    if-ne v2, v3, :cond_0

    .end local v1    # "request":Landroid/hardware/camera2/CaptureRequest;
    goto :goto_1

    .line 275
    .restart local v1    # "request":Landroid/hardware/camera2/CaptureRequest;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Capture request was created for another session"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 272
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "This capture session cannot handle reprocess requests"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 279
    .end local v1    # "request":Landroid/hardware/camera2/CaptureRequest;
    :cond_2
    :goto_1
    goto :goto_0

    .line 281
    :cond_3
    return-void

    .line 266
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Requests must have at least one element"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 264
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Requests must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkNotClosed()V
    .locals 2

    .line 834
    iget-boolean v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mClosed:Z

    if-nez v0, :cond_0

    .line 838
    return-void

    .line 835
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Session has been closed; further changes are illegal."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;)V
    .locals 2
    .param p1, "request"    # Landroid/hardware/camera2/CaptureRequest;

    .line 329
    if-eqz p1, :cond_1

    .line 331
    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest;->isReprocess()Z

    move-result v0

    if-nez v0, :cond_0

    .line 334
    return-void

    .line 332
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "repeating reprocess requests are not supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 330
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "request must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkRepeatingRequests(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/CaptureRequest;",
            ">;)V"
        }
    .end annotation

    .line 386
    .local p1, "requests":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CaptureRequest;>;"
    if-eqz p1, :cond_3

    .line 388
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 392
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/CaptureRequest;

    .line 393
    .local v1, "r":Landroid/hardware/camera2/CaptureRequest;
    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest;->isReprocess()Z

    move-result v2

    if-nez v2, :cond_0

    .line 397
    .end local v1    # "r":Landroid/hardware/camera2/CaptureRequest;
    goto :goto_0

    .line 394
    .restart local v1    # "r":Landroid/hardware/camera2/CaptureRequest;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "repeating reprocess burst requests are not supported"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 398
    .end local v1    # "r":Landroid/hardware/camera2/CaptureRequest;
    :cond_1
    return-void

    .line 389
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "requests must have at least one element"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 387
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "requests must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private createCaptureCallbackProxy(Landroid/os/Handler;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallback;
    .locals 2
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "callback"    # Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    .line 583
    if-eqz p2, :cond_0

    invoke-static {p1}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkAndWrapHandler(Landroid/os/Handler;)Ljava/util/concurrent/Executor;

    move-result-object v0

    goto :goto_0

    .line 584
    :cond_0
    const/4 v0, 0x0

    .line 586
    .local v0, "executor":Ljava/util/concurrent/Executor;
    :goto_0
    invoke-direct {p0, v0, p2}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->createCaptureCallbackProxyWithExecutor(Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallback;

    move-result-object v1

    return-object v1
.end method

.method private createCaptureCallbackProxyWithExecutor(Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallback;
    .locals 1
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "callback"    # Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    .line 591
    new-instance v0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;

    invoke-direct {v0, p0, p2, p1}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;-><init>(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

.method private createUserStateCallbackProxy(Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;)Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
    .locals 1
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "callback"    # Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    .line 571
    new-instance v0, Landroid/hardware/camera2/impl/CallbackProxies$SessionStateCallbackProxy;

    invoke-direct {v0, p1, p2}, Landroid/hardware/camera2/impl/CallbackProxies$SessionStateCallbackProxy;-><init>(Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;)V

    return-object v0
.end method

.method private finishPendingSequence(I)V
    .locals 3
    .param p1, "sequenceId"    # I

    .line 861
    :try_start_0
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mSequenceDrainer:Landroid/hardware/camera2/utils/TaskDrainer;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/utils/TaskDrainer;->taskFinished(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 865
    goto :goto_0

    .line 862
    :catch_0
    move-exception v0

    .line 864
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v1, "CameraCaptureSession"

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 866
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :goto_0
    return-void
.end method


# virtual methods
.method public abortCaptures()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 415
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mDeviceImpl:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    iget-object v0, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 416
    :try_start_0
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->checkNotClosed()V

    .line 422
    iget-boolean v1, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mAborting:Z

    if-eqz v1, :cond_0

    .line 423
    const-string v1, "CameraCaptureSession"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mIdString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "abortCaptures - Session is already aborting; doing nothing"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    monitor-exit v0

    return-void

    .line 427
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mAborting:Z

    .line 428
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mAbortDrainer:Landroid/hardware/camera2/utils/TaskSingleDrainer;

    invoke-virtual {v1}, Landroid/hardware/camera2/utils/TaskSingleDrainer;->taskStarted()V

    .line 430
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mDeviceImpl:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-virtual {v1}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->flush()V

    .line 432
    monitor-exit v0

    .line 433
    return-void

    .line 432
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    .locals 4
    .param p1, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p2, "callback"    # Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
    .param p3, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 161
    invoke-direct {p0, p1}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->checkCaptureRequest(Landroid/hardware/camera2/CaptureRequest;)V

    .line 163
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mDeviceImpl:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    iget-object v0, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 164
    :try_start_0
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->checkNotClosed()V

    .line 166
    invoke-static {p3, p2}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkHandler(Landroid/os/Handler;Ljava/lang/Object;)Landroid/os/Handler;

    move-result-object v1

    move-object p3, v1

    .line 173
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mDeviceImpl:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    .line 174
    invoke-direct {p0, p3, p2}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->createCaptureCallbackProxy(Landroid/os/Handler;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallback;

    move-result-object v2

    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mDeviceExecutor:Ljava/util/concurrent/Executor;

    .line 173
    invoke-virtual {v1, p1, v2, v3}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallback;Ljava/util/concurrent/Executor;)I

    move-result v1

    invoke-direct {p0, v1}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->addPendingSequence(I)I

    move-result v1

    monitor-exit v0

    return v1

    .line 175
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public captureBurst(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    .locals 4
    .param p2, "callback"    # Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
    .param p3, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/CaptureRequest;",
            ">;",
            "Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;",
            "Landroid/os/Handler;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 218
    .local p1, "requests":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CaptureRequest;>;"
    invoke-direct {p0, p1}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->checkCaptureRequests(Ljava/util/List;)V

    .line 220
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mDeviceImpl:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    iget-object v0, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 221
    :try_start_0
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->checkNotClosed()V

    .line 223
    invoke-static {p3, p2}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkHandler(Landroid/os/Handler;Ljava/lang/Object;)Landroid/os/Handler;

    move-result-object v1

    move-object p3, v1

    .line 231
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mDeviceImpl:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    .line 232
    invoke-direct {p0, p3, p2}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->createCaptureCallbackProxy(Landroid/os/Handler;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallback;

    move-result-object v2

    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mDeviceExecutor:Ljava/util/concurrent/Executor;

    .line 231
    invoke-virtual {v1, p1, v2, v3}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->captureBurst(Ljava/util/List;Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallback;Ljava/util/concurrent/Executor;)I

    move-result v1

    invoke-direct {p0, v1}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->addPendingSequence(I)I

    move-result v1

    monitor-exit v0

    return v1

    .line 233
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public captureBurstRequests(Ljava/util/List;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)I
    .locals 4
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "callback"    # Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/CaptureRequest;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 239
    .local p1, "requests":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CaptureRequest;>;"
    if-eqz p2, :cond_1

    .line 241
    if-eqz p3, :cond_0

    .line 244
    invoke-direct {p0, p1}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->checkCaptureRequests(Ljava/util/List;)V

    .line 246
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mDeviceImpl:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    iget-object v0, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 247
    :try_start_0
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->checkNotClosed()V

    .line 249
    invoke-static {p2, p3}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkExecutor(Ljava/util/concurrent/Executor;Ljava/lang/Object;)Ljava/util/concurrent/Executor;

    move-result-object v1

    move-object p2, v1

    .line 257
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mDeviceImpl:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    .line 258
    invoke-direct {p0, p2, p3}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->createCaptureCallbackProxyWithExecutor(Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallback;

    move-result-object v2

    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mDeviceExecutor:Ljava/util/concurrent/Executor;

    .line 257
    invoke-virtual {v1, p1, v2, v3}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->captureBurst(Ljava/util/List;Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallback;Ljava/util/concurrent/Executor;)I

    move-result v1

    invoke-direct {p0, v1}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->addPendingSequence(I)I

    move-result v1

    monitor-exit v0

    return v1

    .line 259
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 242
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callback must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 240
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "executor must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public captureSingleRequest(Landroid/hardware/camera2/CaptureRequest;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)I
    .locals 4
    .param p1, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "callback"    # Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 181
    if-eqz p2, :cond_1

    .line 183
    if-eqz p3, :cond_0

    .line 186
    invoke-direct {p0, p1}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->checkCaptureRequest(Landroid/hardware/camera2/CaptureRequest;)V

    .line 188
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mDeviceImpl:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    iget-object v0, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 189
    :try_start_0
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->checkNotClosed()V

    .line 191
    invoke-static {p2, p3}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkExecutor(Ljava/util/concurrent/Executor;Ljava/lang/Object;)Ljava/util/concurrent/Executor;

    move-result-object v1

    move-object p2, v1

    .line 198
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mDeviceImpl:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    .line 199
    invoke-direct {p0, p2, p3}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->createCaptureCallbackProxyWithExecutor(Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallback;

    move-result-object v2

    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mDeviceExecutor:Ljava/util/concurrent/Executor;

    .line 198
    invoke-virtual {v1, p1, v2, v3}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallback;Ljava/util/concurrent/Executor;)I

    move-result v1

    invoke-direct {p0, v1}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->addPendingSequence(I)I

    move-result v1

    monitor-exit v0

    return v1

    .line 200
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 184
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callback must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 182
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "executor must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public close()V
    .locals 5

    .line 506
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mDeviceImpl:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    iget-object v0, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 507
    :try_start_0
    iget-boolean v1, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mClosed:Z

    if-eqz v1, :cond_0

    .line 509
    monitor-exit v0

    return-void

    .line 514
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mClosed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 527
    :try_start_1
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mDeviceImpl:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-virtual {v1}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->stopRepeating()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 543
    goto :goto_0

    .line 538
    :catch_0
    move-exception v1

    .line 540
    .local v1, "e":Landroid/hardware/camera2/CameraAccessException;
    :try_start_2
    const-string v2, "CameraCaptureSession"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mIdString:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "Exception while stopping repeating: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 546
    .end local v1    # "e":Landroid/hardware/camera2/CameraAccessException;
    :goto_0
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mSequenceDrainer:Landroid/hardware/camera2/utils/TaskDrainer;

    invoke-virtual {v1}, Landroid/hardware/camera2/utils/TaskDrainer;->beginDrain()V

    .line 547
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 548
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mInput:Landroid/view/Surface;

    if-eqz v0, :cond_1

    .line 549
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mInput:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 551
    :cond_1
    return-void

    .line 528
    :catch_1
    move-exception v1

    .line 536
    .local v1, "e":Ljava/lang/IllegalStateException;
    :try_start_3
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mStateCallback:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    invoke-virtual {v2, p0}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;->onClosed(Landroid/hardware/camera2/CameraCaptureSession;)V

    .line 537
    monitor-exit v0

    return-void

    .line 547
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 827
    :try_start_0
    invoke-virtual {p0}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 829
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 830
    nop

    .line 831
    return-void

    .line 829
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public finalizeOutputConfigurations(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/OutputConfiguration;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 155
    .local p1, "outputConfigs":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mDeviceImpl:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->finalizeOutputConfigs(Ljava/util/List;)V

    .line 156
    return-void
.end method

.method public getDevice()Landroid/hardware/camera2/CameraDevice;
    .locals 1

    .line 134
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mDeviceImpl:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    return-object v0
.end method

.method public getDeviceStateCallback()Landroid/hardware/camera2/impl/CameraDeviceImpl$StateCallbackKK;
    .locals 3

    .line 722
    move-object v0, p0

    .line 723
    .local v0, "session":Landroid/hardware/camera2/CameraCaptureSession;
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mDeviceImpl:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    iget-object v1, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    .line 726
    .local v1, "interfaceLock":Ljava/lang/Object;
    new-instance v2, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$2;

    invoke-direct {v2, p0, v0, v1}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$2;-><init>(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;Landroid/hardware/camera2/CameraCaptureSession;Ljava/lang/Object;)V

    return-object v2
.end method

.method public getInputSurface()Landroid/view/Surface;
    .locals 1

    .line 456
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mInput:Landroid/view/Surface;

    return-object v0
.end method

.method public isAborting()Z
    .locals 1

    .line 564
    iget-boolean v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mAborting:Z

    return v0
.end method

.method public isReprocessable()Z
    .locals 1

    .line 451
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mInput:Landroid/view/Surface;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public prepare(ILandroid/view/Surface;)V
    .locals 1
    .param p1, "maxCount"    # I
    .param p2, "surface"    # Landroid/view/Surface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 144
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mDeviceImpl:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->prepare(ILandroid/view/Surface;)V

    .line 145
    return-void
.end method

.method public prepare(Landroid/view/Surface;)V
    .locals 1
    .param p1, "surface"    # Landroid/view/Surface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 139
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mDeviceImpl:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->prepare(Landroid/view/Surface;)V

    .line 140
    return-void
.end method

.method public replaceSessionClose()V
    .locals 2

    .line 475
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mDeviceImpl:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    iget-object v0, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 499
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mSkipUnconfigure:Z

    .line 500
    invoke-virtual {p0}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->close()V

    .line 501
    monitor-exit v0

    .line 502
    return-void

    .line 501
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setRepeatingBurst(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    .locals 4
    .param p2, "callback"    # Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
    .param p3, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/CaptureRequest;",
            ">;",
            "Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;",
            "Landroid/os/Handler;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 339
    .local p1, "requests":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CaptureRequest;>;"
    invoke-direct {p0, p1}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->checkRepeatingRequests(Ljava/util/List;)V

    .line 341
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mDeviceImpl:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    iget-object v0, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 342
    :try_start_0
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->checkNotClosed()V

    .line 344
    invoke-static {p3, p2}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkHandler(Landroid/os/Handler;Ljava/lang/Object;)Landroid/os/Handler;

    move-result-object v1

    move-object p3, v1

    .line 353
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mDeviceImpl:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    .line 354
    invoke-direct {p0, p3, p2}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->createCaptureCallbackProxy(Landroid/os/Handler;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallback;

    move-result-object v2

    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mDeviceExecutor:Ljava/util/concurrent/Executor;

    .line 353
    invoke-virtual {v1, p1, v2, v3}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->setRepeatingBurst(Ljava/util/List;Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallback;Ljava/util/concurrent/Executor;)I

    move-result v1

    invoke-direct {p0, v1}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->addPendingSequence(I)I

    move-result v1

    monitor-exit v0

    return v1

    .line 355
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setRepeatingBurstRequests(Ljava/util/List;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)I
    .locals 4
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "callback"    # Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/CaptureRequest;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 361
    .local p1, "requests":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CaptureRequest;>;"
    if-eqz p2, :cond_1

    .line 363
    if-eqz p3, :cond_0

    .line 366
    invoke-direct {p0, p1}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->checkRepeatingRequests(Ljava/util/List;)V

    .line 368
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mDeviceImpl:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    iget-object v0, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 369
    :try_start_0
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->checkNotClosed()V

    .line 371
    invoke-static {p2, p3}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkExecutor(Ljava/util/concurrent/Executor;Ljava/lang/Object;)Ljava/util/concurrent/Executor;

    move-result-object v1

    move-object p2, v1

    .line 380
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mDeviceImpl:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    .line 381
    invoke-direct {p0, p2, p3}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->createCaptureCallbackProxyWithExecutor(Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallback;

    move-result-object v2

    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mDeviceExecutor:Ljava/util/concurrent/Executor;

    .line 380
    invoke-virtual {v1, p1, v2, v3}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->setRepeatingBurst(Ljava/util/List;Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallback;Ljava/util/concurrent/Executor;)I

    move-result v1

    invoke-direct {p0, v1}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->addPendingSequence(I)I

    move-result v1

    monitor-exit v0

    return v1

    .line 382
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 364
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callback must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 362
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "executor must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    .locals 4
    .param p1, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p2, "callback"    # Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
    .param p3, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 286
    invoke-direct {p0, p1}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->checkRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;)V

    .line 288
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mDeviceImpl:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    iget-object v0, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 289
    :try_start_0
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->checkNotClosed()V

    .line 291
    invoke-static {p3, p2}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkHandler(Landroid/os/Handler;Ljava/lang/Object;)Landroid/os/Handler;

    move-result-object v1

    move-object p3, v1

    .line 298
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mDeviceImpl:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    .line 299
    invoke-direct {p0, p3, p2}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->createCaptureCallbackProxy(Landroid/os/Handler;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallback;

    move-result-object v2

    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mDeviceExecutor:Ljava/util/concurrent/Executor;

    .line 298
    invoke-virtual {v1, p1, v2, v3}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallback;Ljava/util/concurrent/Executor;)I

    move-result v1

    invoke-direct {p0, v1}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->addPendingSequence(I)I

    move-result v1

    monitor-exit v0

    return v1

    .line 300
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setSingleRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)I
    .locals 4
    .param p1, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "callback"    # Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 306
    if-eqz p2, :cond_1

    .line 308
    if-eqz p3, :cond_0

    .line 311
    invoke-direct {p0, p1}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->checkRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;)V

    .line 313
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mDeviceImpl:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    iget-object v0, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 314
    :try_start_0
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->checkNotClosed()V

    .line 316
    invoke-static {p2, p3}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkExecutor(Ljava/util/concurrent/Executor;Ljava/lang/Object;)Ljava/util/concurrent/Executor;

    move-result-object v1

    move-object p2, v1

    .line 323
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mDeviceImpl:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    .line 324
    invoke-direct {p0, p2, p3}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->createCaptureCallbackProxyWithExecutor(Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallback;

    move-result-object v2

    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mDeviceExecutor:Ljava/util/concurrent/Executor;

    .line 323
    invoke-virtual {v1, p1, v2, v3}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallback;Ljava/util/concurrent/Executor;)I

    move-result v1

    invoke-direct {p0, v1}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->addPendingSequence(I)I

    move-result v1

    monitor-exit v0

    return v1

    .line 325
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 309
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callback must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 307
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "executor must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public stopRepeating()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 402
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mDeviceImpl:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    iget-object v0, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 403
    :try_start_0
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->checkNotClosed()V

    .line 409
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mDeviceImpl:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-virtual {v1}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->stopRepeating()V

    .line 410
    monitor-exit v0

    .line 411
    return-void

    .line 410
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public tearDown(Landroid/view/Surface;)V
    .locals 1
    .param p1, "surface"    # Landroid/view/Surface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 149
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mDeviceImpl:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->tearDown(Landroid/view/Surface;)V

    .line 150
    return-void
.end method

.method public updateOutputConfiguration(Landroid/hardware/camera2/params/OutputConfiguration;)V
    .locals 2
    .param p1, "config"    # Landroid/hardware/camera2/params/OutputConfiguration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 438
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mDeviceImpl:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    iget-object v0, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 439
    :try_start_0
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->checkNotClosed()V

    .line 445
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mDeviceImpl:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-virtual {v1, p1}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->updateOutputConfiguration(Landroid/hardware/camera2/params/OutputConfiguration;)V

    .line 446
    monitor-exit v0

    .line 447
    return-void

    .line 446
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
