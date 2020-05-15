.class public Landroid/hardware/camera2/legacy/CameraDeviceUserShim;
.super Ljava/lang/Object;
.source "CameraDeviceUserShim.java"

# interfaces
.implements Landroid/hardware/camera2/ICameraDeviceUser;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;,
        Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraLooper;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final OPEN_CAMERA_TIMEOUT_MS:I = 0x1388

.field private static final TAG:Ljava/lang/String; = "CameraDeviceUserShim"


# instance fields
.field private final mCameraCallbacks:Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;

.field private final mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

.field private final mCameraInit:Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraLooper;

.field private final mConfigureLock:Ljava/lang/Object;

.field private mConfiguring:Z

.field private final mLegacyDevice:Landroid/hardware/camera2/legacy/LegacyCameraDevice;

.field private mSurfaceIdCounter:I

.field private final mSurfaces:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/Surface;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(ILandroid/hardware/camera2/legacy/LegacyCameraDevice;Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraLooper;Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;)V
    .locals 2
    .param p1, "cameraId"    # I
    .param p2, "legacyCamera"    # Landroid/hardware/camera2/legacy/LegacyCameraDevice;
    .param p3, "characteristics"    # Landroid/hardware/camera2/CameraCharacteristics;
    .param p4, "cameraInit"    # Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraLooper;
    .param p5, "cameraCallbacks"    # Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mConfigureLock:Ljava/lang/Object;

    .line 85
    iput-object p2, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mLegacyDevice:Landroid/hardware/camera2/legacy/LegacyCameraDevice;

    .line 86
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mConfiguring:Z

    .line 87
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mSurfaces:Landroid/util/SparseArray;

    .line 88
    iput-object p3, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    .line 89
    iput-object p4, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mCameraInit:Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraLooper;

    .line 90
    iput-object p5, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mCameraCallbacks:Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;

    .line 92
    iput v0, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mSurfaceIdCounter:I

    .line 93
    return-void
.end method

.method public static connectBinderShim(Landroid/hardware/camera2/ICameraDeviceCallbacks;I)Landroid/hardware/camera2/legacy/CameraDeviceUserShim;
    .locals 14
    .param p0, "callbacks"    # Landroid/hardware/camera2/ICameraDeviceCallbacks;
    .param p1, "cameraId"    # I

    .line 369
    new-instance v0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraLooper;

    invoke-direct {v0, p1}, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraLooper;-><init>(I)V

    .line 371
    .local v0, "init":Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraLooper;
    new-instance v1, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;

    invoke-direct {v1, p0}, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;-><init>(Landroid/hardware/camera2/ICameraDeviceCallbacks;)V

    move-object v7, v1

    .line 374
    .local v7, "threadCallbacks":Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;
    const/16 v1, 0x1388

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraLooper;->waitForOpen(I)I

    move-result v8

    .line 375
    .local v8, "initErrors":I
    invoke-virtual {v0}, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraLooper;->getCamera()Landroid/hardware/Camera;

    move-result-object v9

    .line 378
    .local v9, "legacyCamera":Landroid/hardware/Camera;
    invoke-static {v8}, Landroid/hardware/camera2/legacy/LegacyExceptionUtils;->throwOnServiceError(I)V

    .line 381
    invoke-virtual {v9}, Landroid/hardware/Camera;->disableShutterSound()Z

    .line 383
    new-instance v1, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v1}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    move-object v10, v1

    .line 384
    .local v10, "info":Landroid/hardware/Camera$CameraInfo;
    invoke-static {p1, v10}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 386
    const/4 v1, 0x0

    .line 388
    .local v1, "legacyParameters":Landroid/hardware/Camera$Parameters;
    :try_start_0
    invoke-virtual {v9}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v11, v2

    .line 392
    .end local v1    # "legacyParameters":Landroid/hardware/Camera$Parameters;
    .local v11, "legacyParameters":Landroid/hardware/Camera$Parameters;
    nop

    .line 394
    nop

    .line 395
    invoke-static {v11, v10}, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->createCharacteristics(Landroid/hardware/Camera$Parameters;Landroid/hardware/Camera$CameraInfo;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v12

    .line 396
    .local v12, "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    new-instance v3, Landroid/hardware/camera2/legacy/LegacyCameraDevice;

    invoke-direct {v3, p1, v9, v12, v7}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;-><init>(ILandroid/hardware/Camera;Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/ICameraDeviceCallbacks;)V

    .line 398
    .local v3, "device":Landroid/hardware/camera2/legacy/LegacyCameraDevice;
    new-instance v13, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;

    move-object v1, v13

    move v2, p1

    move-object v4, v12

    move-object v5, v0

    move-object v6, v7

    invoke-direct/range {v1 .. v6}, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;-><init>(ILandroid/hardware/camera2/legacy/LegacyCameraDevice;Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraLooper;Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;)V

    return-object v13

    .line 389
    .end local v3    # "device":Landroid/hardware/camera2/legacy/LegacyCameraDevice;
    .end local v11    # "legacyParameters":Landroid/hardware/Camera$Parameters;
    .end local v12    # "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    .restart local v1    # "legacyParameters":Landroid/hardware/Camera$Parameters;
    :catch_0
    move-exception v2

    .line 390
    .local v2, "e":Ljava/lang/RuntimeException;
    new-instance v3, Landroid/os/ServiceSpecificException;

    const/16 v4, 0xa

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to get initial parameters: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 391
    invoke-virtual {v2}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw v3
.end method

.method private static translateErrorsFromCamera1(I)I
    .locals 1
    .param p0, "errorCode"    # I

    .line 96
    sget v0, Landroid/system/OsConstants;->EACCES:I

    neg-int v0, v0

    if-ne p0, v0, :cond_0

    .line 97
    const/4 v0, 0x1

    return v0

    .line 100
    :cond_0
    return p0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 733
    const/4 v0, 0x0

    return-object v0
.end method

.method public beginConfigure()V
    .locals 4

    .line 487
    iget-object v0, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mLegacyDevice:Landroid/hardware/camera2/legacy/LegacyCameraDevice;

    invoke-virtual {v0}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 493
    iget-object v0, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mConfigureLock:Ljava/lang/Object;

    monitor-enter v0

    .line 494
    :try_start_0
    iget-boolean v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mConfiguring:Z

    if-nez v1, :cond_0

    .line 499
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mConfiguring:Z

    .line 500
    monitor-exit v0

    .line 501
    return-void

    .line 495
    :cond_0
    const-string v1, "Cannot begin configure, configuration change already in progress."

    .line 496
    .local v1, "err":Ljava/lang/String;
    const-string v2, "CameraDeviceUserShim"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    new-instance v2, Landroid/os/ServiceSpecificException;

    const/16 v3, 0xa

    invoke-direct {v2, v3, v1}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw v2

    .line 500
    .end local v1    # "err":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 488
    :cond_1
    const-string v0, "Cannot begin configure, device has been closed."

    .line 489
    .local v0, "err":Ljava/lang/String;
    const-string v1, "CameraDeviceUserShim"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    new-instance v1, Landroid/os/ServiceSpecificException;

    const/4 v2, 0x4

    invoke-direct {v1, v2, v0}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw v1
.end method

.method public cancelRequest(I)J
    .locals 4
    .param p1, "requestId"    # I

    .line 466
    iget-object v0, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mLegacyDevice:Landroid/hardware/camera2/legacy/LegacyCameraDevice;

    invoke-virtual {v0}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 472
    iget-object v0, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mConfigureLock:Ljava/lang/Object;

    monitor-enter v0

    .line 473
    :try_start_0
    iget-boolean v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mConfiguring:Z

    if-nez v1, :cond_0

    .line 478
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 479
    iget-object v0, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mLegacyDevice:Landroid/hardware/camera2/legacy/LegacyCameraDevice;

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->cancelRequest(I)J

    move-result-wide v0

    return-wide v0

    .line 474
    :cond_0
    :try_start_1
    const-string v1, "Cannot cancel request, configuration change in progress."

    .line 475
    .local v1, "err":Ljava/lang/String;
    const-string v2, "CameraDeviceUserShim"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    new-instance v2, Landroid/os/ServiceSpecificException;

    const/16 v3, 0xa

    invoke-direct {v2, v3, v1}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw v2

    .line 478
    .end local v1    # "err":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 467
    :cond_1
    const-string v0, "Cannot cancel request, device has been closed."

    .line 468
    .local v0, "err":Ljava/lang/String;
    const-string v1, "CameraDeviceUserShim"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    new-instance v1, Landroid/os/ServiceSpecificException;

    const/4 v2, 0x4

    invoke-direct {v1, v2, v0}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw v1
.end method

.method public createDefaultRequest(I)Landroid/hardware/camera2/impl/CameraMetadataNative;
    .locals 4
    .param p1, "templateId"    # I

    .line 622
    iget-object v0, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mLegacyDevice:Landroid/hardware/camera2/legacy/LegacyCameraDevice;

    invoke-virtual {v0}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 630
    :try_start_0
    iget-object v0, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    .line 631
    invoke-static {v0, p1}, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->createRequestTemplate(Landroid/hardware/camera2/CameraCharacteristics;I)Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 636
    .local v0, "template":Landroid/hardware/camera2/impl/CameraMetadataNative;
    nop

    .line 635
    nop

    .line 638
    return-object v0

    .line 632
    .end local v0    # "template":Landroid/hardware/camera2/impl/CameraMetadataNative;
    :catch_0
    move-exception v0

    .line 633
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "createDefaultRequest - invalid templateId specified"

    .line 634
    .local v1, "err":Ljava/lang/String;
    const-string v2, "CameraDeviceUserShim"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    new-instance v2, Landroid/os/ServiceSpecificException;

    const/4 v3, 0x3

    invoke-direct {v2, v3, v1}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw v2

    .line 623
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .end local v1    # "err":Ljava/lang/String;
    :cond_0
    const-string v0, "Cannot create default request, device has been closed."

    .line 624
    .local v0, "err":Ljava/lang/String;
    const-string v1, "CameraDeviceUserShim"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    new-instance v1, Landroid/os/ServiceSpecificException;

    const/4 v2, 0x4

    invoke-direct {v1, v2, v0}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw v1
.end method

.method public createInputStream(III)I
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "format"    # I

    .line 605
    const-string v0, "Creating input stream is not supported on legacy devices"

    .line 606
    .local v0, "err":Ljava/lang/String;
    const-string v1, "CameraDeviceUserShim"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    new-instance v1, Landroid/os/ServiceSpecificException;

    const/16 v2, 0xa

    invoke-direct {v1, v2, v0}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw v1
.end method

.method public createStream(Landroid/hardware/camera2/params/OutputConfiguration;)I
    .locals 4
    .param p1, "outputConfiguration"    # Landroid/hardware/camera2/params/OutputConfiguration;

    .line 573
    iget-object v0, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mLegacyDevice:Landroid/hardware/camera2/legacy/LegacyCameraDevice;

    invoke-virtual {v0}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 579
    iget-object v0, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mConfigureLock:Ljava/lang/Object;

    monitor-enter v0

    .line 580
    :try_start_0
    iget-boolean v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mConfiguring:Z

    if-eqz v1, :cond_1

    .line 585
    invoke-virtual {p1}, Landroid/hardware/camera2/params/OutputConfiguration;->getRotation()I

    move-result v1

    if-nez v1, :cond_0

    .line 590
    iget v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mSurfaceIdCounter:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mSurfaceIdCounter:I

    .line 591
    .local v1, "id":I
    iget-object v2, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mSurfaces:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/hardware/camera2/params/OutputConfiguration;->getSurface()Landroid/view/Surface;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 592
    monitor-exit v0

    return v1

    .line 586
    .end local v1    # "id":I
    :cond_0
    const-string v1, "Cannot create stream, stream rotation is not supported."

    .line 587
    .local v1, "err":Ljava/lang/String;
    const-string v2, "CameraDeviceUserShim"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    new-instance v2, Landroid/os/ServiceSpecificException;

    const/4 v3, 0x3

    invoke-direct {v2, v3, v1}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw v2

    .line 581
    .end local v1    # "err":Ljava/lang/String;
    :cond_1
    const-string v1, "Cannot create stream, beginConfigure hasn\'t been called yet."

    .line 582
    .restart local v1    # "err":Ljava/lang/String;
    const-string v2, "CameraDeviceUserShim"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    new-instance v2, Landroid/os/ServiceSpecificException;

    const/16 v3, 0xa

    invoke-direct {v2, v3, v1}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw v2

    .line 593
    .end local v1    # "err":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 574
    :cond_2
    const-string v0, "Cannot create stream, device has been closed."

    .line 575
    .local v0, "err":Ljava/lang/String;
    const-string v1, "CameraDeviceUserShim"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    new-instance v1, Landroid/os/ServiceSpecificException;

    const/4 v2, 0x4

    invoke-direct {v1, v2, v0}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw v1
.end method

.method public deleteStream(I)V
    .locals 5
    .param p1, "streamId"    # I

    .line 546
    iget-object v0, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mLegacyDevice:Landroid/hardware/camera2/legacy/LegacyCameraDevice;

    invoke-virtual {v0}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 552
    iget-object v0, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mConfigureLock:Ljava/lang/Object;

    monitor-enter v0

    .line 553
    :try_start_0
    iget-boolean v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mConfiguring:Z

    if-eqz v1, :cond_1

    .line 558
    iget-object v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mSurfaces:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    .line 559
    .local v1, "index":I
    if-ltz v1, :cond_0

    .line 564
    iget-object v2, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mSurfaces:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->removeAt(I)V

    .line 565
    .end local v1    # "index":I
    monitor-exit v0

    .line 566
    return-void

    .line 560
    .restart local v1    # "index":I
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot delete stream, stream id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " doesn\'t exist."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 561
    .local v2, "err":Ljava/lang/String;
    const-string v3, "CameraDeviceUserShim"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    new-instance v3, Landroid/os/ServiceSpecificException;

    const/4 v4, 0x3

    invoke-direct {v3, v4, v2}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 554
    .end local v1    # "index":I
    .end local v2    # "err":Ljava/lang/String;
    :cond_1
    const-string v1, "Cannot delete stream, no configuration change in progress."

    .line 555
    .local v1, "err":Ljava/lang/String;
    const-string v2, "CameraDeviceUserShim"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    new-instance v2, Landroid/os/ServiceSpecificException;

    const/16 v3, 0xa

    invoke-direct {v2, v3, v1}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw v2

    .line 565
    .end local v1    # "err":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 547
    :cond_2
    const-string v0, "Cannot delete stream, device has been closed."

    .line 548
    .local v0, "err":Ljava/lang/String;
    const-string v1, "CameraDeviceUserShim"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    new-instance v1, Landroid/os/ServiceSpecificException;

    const/4 v2, 0x4

    invoke-direct {v1, v2, v0}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw v1
.end method

.method public disconnect()V
    .locals 2

    .line 407
    iget-object v0, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mLegacyDevice:Landroid/hardware/camera2/legacy/LegacyCameraDevice;

    invoke-virtual {v0}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 408
    const-string v0, "CameraDeviceUserShim"

    const-string v1, "Cannot disconnect, device has already been closed."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mLegacyDevice:Landroid/hardware/camera2/legacy/LegacyCameraDevice;

    invoke-virtual {v0}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 414
    iget-object v0, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mCameraInit:Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraLooper;

    invoke-virtual {v0}, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraLooper;->close()V

    .line 415
    iget-object v0, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mCameraCallbacks:Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;

    invoke-virtual {v0}, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;->close()V

    .line 416
    nop

    .line 417
    return-void

    .line 414
    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mCameraInit:Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraLooper;

    invoke-virtual {v1}, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraLooper;->close()V

    .line 415
    iget-object v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mCameraCallbacks:Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;

    invoke-virtual {v1}, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;->close()V

    throw v0
.end method

.method public endConfigure(ILandroid/hardware/camera2/impl/CameraMetadataNative;)V
    .locals 5
    .param p1, "operatingMode"    # I
    .param p2, "sessionParams"    # Landroid/hardware/camera2/impl/CameraMetadataNative;

    .line 508
    iget-object v0, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mLegacyDevice:Landroid/hardware/camera2/legacy/LegacyCameraDevice;

    invoke-virtual {v0}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->isClosed()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    .line 517
    if-nez p1, :cond_2

    .line 526
    const/4 v0, 0x0

    .line 527
    .local v0, "surfaces":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/Surface;>;"
    iget-object v2, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mConfigureLock:Ljava/lang/Object;

    monitor-enter v2

    .line 528
    :try_start_0
    iget-boolean v3, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mConfiguring:Z

    if-eqz v3, :cond_1

    .line 533
    iget-object v3, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mSurfaces:Landroid/util/SparseArray;

    if-eqz v3, :cond_0

    .line 534
    iget-object v3, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mSurfaces:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object v3

    move-object v0, v3

    .line 536
    :cond_0
    iput-boolean v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mConfiguring:Z

    .line 537
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 538
    iget-object v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mLegacyDevice:Landroid/hardware/camera2/legacy/LegacyCameraDevice;

    invoke-virtual {v1, v0}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->configureOutputs(Landroid/util/SparseArray;)I

    .line 539
    return-void

    .line 529
    :cond_1
    :try_start_1
    const-string v1, "Cannot end configure, no configuration change in progress."

    .line 530
    .local v1, "err":Ljava/lang/String;
    const-string v3, "CameraDeviceUserShim"

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    new-instance v3, Landroid/os/ServiceSpecificException;

    const/16 v4, 0xa

    invoke-direct {v3, v4, v1}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 537
    .end local v1    # "err":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 518
    .end local v0    # "surfaces":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/Surface;>;"
    :cond_2
    const-string v0, "LEGACY devices do not support this operating mode"

    .line 519
    .local v0, "err":Ljava/lang/String;
    const-string v2, "CameraDeviceUserShim"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    iget-object v2, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mConfigureLock:Ljava/lang/Object;

    monitor-enter v2

    .line 521
    :try_start_2
    iput-boolean v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mConfiguring:Z

    .line 522
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 523
    new-instance v1, Landroid/os/ServiceSpecificException;

    const/4 v2, 0x3

    invoke-direct {v1, v2, v0}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 522
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1

    .line 509
    .end local v0    # "err":Ljava/lang/String;
    :cond_3
    const-string v0, "Cannot end configure, device has been closed."

    .line 510
    .restart local v0    # "err":Ljava/lang/String;
    const-string v2, "CameraDeviceUserShim"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    iget-object v2, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mConfigureLock:Ljava/lang/Object;

    monitor-enter v2

    .line 512
    :try_start_4
    iput-boolean v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mConfiguring:Z

    .line 513
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 514
    new-instance v1, Landroid/os/ServiceSpecificException;

    const/4 v2, 0x4

    invoke-direct {v1, v2, v0}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 513
    :catchall_2
    move-exception v1

    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v1
.end method

.method public finalizeOutputConfigurations(ILandroid/hardware/camera2/params/OutputConfiguration;)V
    .locals 3
    .param p1, "steamId"    # I
    .param p2, "config"    # Landroid/hardware/camera2/params/OutputConfiguration;

    .line 598
    const-string v0, "Finalizing output configuration is not supported on legacy devices"

    .line 599
    .local v0, "err":Ljava/lang/String;
    const-string v1, "CameraDeviceUserShim"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    new-instance v1, Landroid/os/ServiceSpecificException;

    const/16 v2, 0xa

    invoke-direct {v1, v2, v0}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw v1
.end method

.method public flush()J
    .locals 4

    .line 682
    iget-object v0, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mLegacyDevice:Landroid/hardware/camera2/legacy/LegacyCameraDevice;

    invoke-virtual {v0}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 688
    iget-object v0, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mConfigureLock:Ljava/lang/Object;

    monitor-enter v0

    .line 689
    :try_start_0
    iget-boolean v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mConfiguring:Z

    if-nez v1, :cond_0

    .line 694
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 695
    iget-object v0, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mLegacyDevice:Landroid/hardware/camera2/legacy/LegacyCameraDevice;

    invoke-virtual {v0}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->flush()J

    move-result-wide v0

    return-wide v0

    .line 690
    :cond_0
    :try_start_1
    const-string v1, "Cannot flush, configuration change in progress."

    .line 691
    .local v1, "err":Ljava/lang/String;
    const-string v2, "CameraDeviceUserShim"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    new-instance v2, Landroid/os/ServiceSpecificException;

    const/16 v3, 0xa

    invoke-direct {v2, v3, v1}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw v2

    .line 694
    .end local v1    # "err":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 683
    :cond_1
    const-string v0, "Cannot flush, device has been closed."

    .line 684
    .local v0, "err":Ljava/lang/String;
    const-string v1, "CameraDeviceUserShim"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    new-instance v1, Landroid/os/ServiceSpecificException;

    const/4 v2, 0x4

    invoke-direct {v1, v2, v0}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw v1
.end method

.method public getCameraInfo()Landroid/hardware/camera2/impl/CameraMetadataNative;
    .locals 2

    .line 647
    const-string v0, "CameraDeviceUserShim"

    const-string v1, "getCameraInfo unimplemented."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    const/4 v0, 0x0

    return-object v0
.end method

.method public getInputSurface()Landroid/view/Surface;
    .locals 3

    .line 612
    const-string v0, "Getting input surface is not supported on legacy devices"

    .line 613
    .local v0, "err":Ljava/lang/String;
    const-string v1, "CameraDeviceUserShim"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    new-instance v1, Landroid/os/ServiceSpecificException;

    const/16 v2, 0xa

    invoke-direct {v1, v2, v0}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw v1
.end method

.method public prepare(I)V
    .locals 3
    .param p1, "streamId"    # I

    .line 702
    iget-object v0, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mLegacyDevice:Landroid/hardware/camera2/legacy/LegacyCameraDevice;

    invoke-virtual {v0}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 709
    iget-object v0, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mCameraCallbacks:Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;->onPrepared(I)V

    .line 710
    return-void

    .line 703
    :cond_0
    const-string v0, "Cannot prepare stream, device has been closed."

    .line 704
    .local v0, "err":Ljava/lang/String;
    const-string v1, "CameraDeviceUserShim"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    new-instance v1, Landroid/os/ServiceSpecificException;

    const/4 v2, 0x4

    invoke-direct {v1, v2, v0}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw v1
.end method

.method public prepare2(II)V
    .locals 0
    .param p1, "maxCount"    # I
    .param p2, "streamId"    # I

    .line 714
    invoke-virtual {p0, p2}, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->prepare(I)V

    .line 715
    return-void
.end method

.method public submitRequest(Landroid/hardware/camera2/CaptureRequest;Z)Landroid/hardware/camera2/utils/SubmitInfo;
    .locals 4
    .param p1, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p2, "streaming"    # Z

    .line 424
    iget-object v0, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mLegacyDevice:Landroid/hardware/camera2/legacy/LegacyCameraDevice;

    invoke-virtual {v0}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 430
    iget-object v0, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mConfigureLock:Ljava/lang/Object;

    monitor-enter v0

    .line 431
    :try_start_0
    iget-boolean v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mConfiguring:Z

    if-nez v1, :cond_0

    .line 436
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 437
    iget-object v0, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mLegacyDevice:Landroid/hardware/camera2/legacy/LegacyCameraDevice;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->submitRequest(Landroid/hardware/camera2/CaptureRequest;Z)Landroid/hardware/camera2/utils/SubmitInfo;

    move-result-object v0

    return-object v0

    .line 432
    :cond_0
    :try_start_1
    const-string v1, "Cannot submit request, configuration change in progress."

    .line 433
    .local v1, "err":Ljava/lang/String;
    const-string v2, "CameraDeviceUserShim"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    new-instance v2, Landroid/os/ServiceSpecificException;

    const/16 v3, 0xa

    invoke-direct {v2, v3, v1}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw v2

    .line 436
    .end local v1    # "err":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 425
    :cond_1
    const-string v0, "Cannot submit request, device has been closed."

    .line 426
    .local v0, "err":Ljava/lang/String;
    const-string v1, "CameraDeviceUserShim"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    new-instance v1, Landroid/os/ServiceSpecificException;

    const/4 v2, 0x4

    invoke-direct {v1, v2, v0}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw v1
.end method

.method public submitRequestList([Landroid/hardware/camera2/CaptureRequest;Z)Landroid/hardware/camera2/utils/SubmitInfo;
    .locals 4
    .param p1, "request"    # [Landroid/hardware/camera2/CaptureRequest;
    .param p2, "streaming"    # Z

    .line 445
    iget-object v0, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mLegacyDevice:Landroid/hardware/camera2/legacy/LegacyCameraDevice;

    invoke-virtual {v0}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 451
    iget-object v0, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mConfigureLock:Ljava/lang/Object;

    monitor-enter v0

    .line 452
    :try_start_0
    iget-boolean v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mConfiguring:Z

    if-nez v1, :cond_0

    .line 457
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 458
    iget-object v0, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mLegacyDevice:Landroid/hardware/camera2/legacy/LegacyCameraDevice;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->submitRequestList([Landroid/hardware/camera2/CaptureRequest;Z)Landroid/hardware/camera2/utils/SubmitInfo;

    move-result-object v0

    return-object v0

    .line 453
    :cond_0
    :try_start_1
    const-string v1, "Cannot submit request, configuration change in progress."

    .line 454
    .local v1, "err":Ljava/lang/String;
    const-string v2, "CameraDeviceUserShim"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    new-instance v2, Landroid/os/ServiceSpecificException;

    const/16 v3, 0xa

    invoke-direct {v2, v3, v1}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw v2

    .line 457
    .end local v1    # "err":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 446
    :cond_1
    const-string v0, "Cannot submit request list, device has been closed."

    .line 447
    .local v0, "err":Ljava/lang/String;
    const-string v1, "CameraDeviceUserShim"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    new-instance v1, Landroid/os/ServiceSpecificException;

    const/4 v2, 0x4

    invoke-direct {v1, v2, v0}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw v1
.end method

.method public tearDown(I)V
    .locals 3
    .param p1, "streamId"    # I

    .line 721
    iget-object v0, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mLegacyDevice:Landroid/hardware/camera2/legacy/LegacyCameraDevice;

    invoke-virtual {v0}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 728
    return-void

    .line 722
    :cond_0
    const-string v0, "Cannot tear down stream, device has been closed."

    .line 723
    .local v0, "err":Ljava/lang/String;
    const-string v1, "CameraDeviceUserShim"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    new-instance v1, Landroid/os/ServiceSpecificException;

    const/4 v2, 0x4

    invoke-direct {v1, v2, v0}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw v1
.end method

.method public updateOutputConfiguration(ILandroid/hardware/camera2/params/OutputConfiguration;)V
    .locals 0
    .param p1, "streamId"    # I
    .param p2, "config"    # Landroid/hardware/camera2/params/OutputConfiguration;

    .line 654
    return-void
.end method

.method public waitUntilIdle()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 661
    iget-object v0, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mLegacyDevice:Landroid/hardware/camera2/legacy/LegacyCameraDevice;

    invoke-virtual {v0}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 667
    iget-object v0, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mConfigureLock:Ljava/lang/Object;

    monitor-enter v0

    .line 668
    :try_start_0
    iget-boolean v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mConfiguring:Z

    if-nez v1, :cond_0

    .line 673
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 674
    iget-object v0, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mLegacyDevice:Landroid/hardware/camera2/legacy/LegacyCameraDevice;

    invoke-virtual {v0}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->waitUntilIdle()V

    .line 675
    return-void

    .line 669
    :cond_0
    :try_start_1
    const-string v1, "Cannot wait until idle, configuration change in progress."

    .line 670
    .local v1, "err":Ljava/lang/String;
    const-string v2, "CameraDeviceUserShim"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    new-instance v2, Landroid/os/ServiceSpecificException;

    const/16 v3, 0xa

    invoke-direct {v2, v3, v1}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw v2

    .line 673
    .end local v1    # "err":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 662
    :cond_1
    const-string v0, "Cannot wait until idle, device has been closed."

    .line 663
    .local v0, "err":Ljava/lang/String;
    const-string v1, "CameraDeviceUserShim"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    new-instance v1, Landroid/os/ServiceSpecificException;

    const/4 v2, 0x4

    invoke-direct {v1, v2, v0}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw v1
.end method
