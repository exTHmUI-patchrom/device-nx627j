.class Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;
.super Ljava/lang/Object;
.source "CameraDeviceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/impl/CameraDeviceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CaptureCallbackHolder"
.end annotation


# instance fields
.field private final mCallback:Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallback;

.field private final mExecutor:Ljava/util/concurrent/Executor;

.field private final mHasBatchedOutputs:Z

.field private final mRepeating:Z

.field private final mRequestList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/camera2/CaptureRequest;",
            ">;"
        }
    .end annotation
.end field

.field private final mSessionId:I


# direct methods
.method constructor <init>(Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallback;Ljava/util/List;Ljava/util/concurrent/Executor;ZI)V
    .locals 6
    .param p1, "callback"    # Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallback;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .param p4, "repeating"    # Z
    .param p5, "sessionId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallback;",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/CaptureRequest;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            "ZI)V"
        }
    .end annotation

    .line 1427
    .local p2, "requestList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CaptureRequest;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1428
    if-eqz p1, :cond_3

    if-eqz p3, :cond_3

    .line 1432
    iput-boolean p4, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;->mRepeating:Z

    .line 1433
    iput-object p3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;->mExecutor:Ljava/util/concurrent/Executor;

    .line 1434
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;->mRequestList:Ljava/util/List;

    .line 1435
    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;->mCallback:Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallback;

    .line 1436
    iput p5, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;->mSessionId:I

    .line 1440
    const/4 v0, 0x1

    .line 1441
    .local v0, "hasBatchedOutputs":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 1442
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/CaptureRequest;

    .line 1443
    .local v2, "request":Landroid/hardware/camera2/CaptureRequest;
    invoke-virtual {v2}, Landroid/hardware/camera2/CaptureRequest;->isPartOfCRequestList()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1444
    const/4 v0, 0x0

    .line 1445
    goto :goto_1

    .line 1447
    :cond_0
    if-nez v1, :cond_1

    .line 1448
    invoke-virtual {v2}, Landroid/hardware/camera2/CaptureRequest;->getTargets()Ljava/util/Collection;

    move-result-object v3

    .line 1449
    .local v3, "targets":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/view/Surface;>;"
    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_1

    .line 1450
    const/4 v0, 0x0

    .line 1451
    goto :goto_1

    .line 1441
    .end local v2    # "request":Landroid/hardware/camera2/CaptureRequest;
    .end local v3    # "targets":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/view/Surface;>;"
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1455
    .end local v1    # "i":I
    :cond_2
    :goto_1
    iput-boolean v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;->mHasBatchedOutputs:Z

    .line 1456
    return-void

    .line 1429
    .end local v0    # "hasBatchedOutputs":Z
    :cond_3
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Must have a valid handler and a valid callback"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getCallback()Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallback;
    .locals 1

    .line 1463
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;->mCallback:Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallback;

    return-object v0
.end method

.method public getExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    .line 1487
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;->mExecutor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public getRequest()Landroid/hardware/camera2/CaptureRequest;
    .locals 1

    .line 1483
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;->getRequest(I)Landroid/hardware/camera2/CaptureRequest;

    move-result-object v0

    return-object v0
.end method

.method public getRequest(I)Landroid/hardware/camera2/CaptureRequest;
    .locals 5
    .param p1, "subsequenceId"    # I

    .line 1467
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;->mRequestList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge p1, v0, :cond_1

    .line 1473
    if-ltz p1, :cond_0

    .line 1477
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;->mRequestList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CaptureRequest;

    return-object v0

    .line 1474
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-array v2, v2, [Ljava/lang/Object;

    .line 1475
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    .line 1474
    const-string v1, "Requested subsequenceId %d is negative"

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1468
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    .line 1471
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;->mRequestList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v2

    .line 1469
    const-string v1, "Requested subsequenceId %d is larger than request list size %d."

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getRequestCount()I
    .locals 1

    .line 1495
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;->mRequestList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getSessionId()I
    .locals 1

    .line 1491
    iget v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;->mSessionId:I

    return v0
.end method

.method public hasBatchedOutputs()Z
    .locals 1

    .line 1499
    iget-boolean v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;->mHasBatchedOutputs:Z

    return v0
.end method

.method public isRepeating()Z
    .locals 1

    .line 1459
    iget-boolean v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;->mRepeating:Z

    return v0
.end method
