.class public final Landroid/hardware/camera2/CameraManager;
.super Ljava/lang/Object;
.source "CameraManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;,
        Landroid/hardware/camera2/CameraManager$TorchCallback;,
        Landroid/hardware/camera2/CameraManager$PreviewStartedCallback;,
        Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
    }
.end annotation


# static fields
.field private static final API_VERSION_1:I = 0x1

.field private static final API_VERSION_2:I = 0x2

.field private static final CAMERA_TYPE_ALL:I = 0x1

.field private static final CAMERA_TYPE_BACKWARD_COMPATIBLE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "CameraManager"

.field private static final USE_CALLING_UID:I = -0x1


# instance fields
.field private final DEBUG:Z

.field private final mContext:Landroid/content/Context;

.field private mDeviceIdList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/camera2/CameraManager;->DEBUG:Z

    .line 84
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/CameraManager;->mLock:Ljava/lang/Object;

    .line 90
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 91
    :try_start_0
    iput-object p1, p0, Landroid/hardware/camera2/CameraManager;->mContext:Landroid/content/Context;

    .line 92
    monitor-exit v0

    .line 93
    return-void

    .line 92
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private openCameraDeviceUserAsync(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Ljava/util/concurrent/Executor;I)Landroid/hardware/camera2/CameraDevice;
    .locals 15
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/hardware/camera2/CameraDevice$StateCallback;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .param p4, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    move-object v1, p0

    move-object/from16 v8, p1

    .line 340
    invoke-virtual/range {p0 .. p1}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v9

    .line 341
    .local v9, "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    const/4 v10, 0x0

    .line 343
    .local v10, "device":Landroid/hardware/camera2/CameraDevice;
    iget-object v11, v1, Landroid/hardware/camera2/CameraManager;->mLock:Ljava/lang/Object;

    monitor-enter v11

    .line 345
    const/4 v12, 0x0

    .line 347
    .local v12, "cameraUser":Landroid/hardware/camera2/ICameraDeviceUser;
    :try_start_0
    new-instance v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;

    iget-object v2, v1, Landroid/hardware/camera2/CameraManager;->mContext:Landroid/content/Context;

    .line 353
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v7, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    move-object v2, v0

    move-object v3, v8

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object v6, v9

    invoke-direct/range {v2 .. v7}, Landroid/hardware/camera2/impl/CameraDeviceImpl;-><init>(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraCharacteristics;I)V

    move-object v2, v0

    .line 355
    .local v2, "deviceImpl":Landroid/hardware/camera2/impl/CameraDeviceImpl;
    invoke-virtual {v2}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->getCallbacks()Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, v0

    .line 358
    .local v3, "callbacks":Landroid/hardware/camera2/ICameraDeviceCallbacks;
    const/4 v4, 0x4

    :try_start_1
    invoke-direct/range {p0 .. p1}, Landroid/hardware/camera2/CameraManager;->supportsCamera2ApiLocked(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 360
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->getCameraService()Landroid/hardware/ICameraService;

    move-result-object v0

    .line 361
    .local v0, "cameraService":Landroid/hardware/ICameraService;
    if-eqz v0, :cond_0

    .line 366
    iget-object v5, v1, Landroid/hardware/camera2/CameraManager;->mContext:Landroid/content/Context;

    .line 367
    invoke-virtual {v5}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v5
    :try_end_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 366
    move/from16 v6, p4

    :try_start_2
    invoke-interface {v0, v3, v8, v5, v6}, Landroid/hardware/ICameraService;->connectDevice(Landroid/hardware/camera2/ICameraDeviceCallbacks;Ljava/lang/String;Ljava/lang/String;I)Landroid/hardware/camera2/ICameraDeviceUser;

    move-result-object v5

    move-object v0, v5

    .line 368
    .end local v12    # "cameraUser":Landroid/hardware/camera2/ICameraDeviceUser;
    .local v0, "cameraUser":Landroid/hardware/camera2/ICameraDeviceUser;
    nop

    .line 411
    .end local v0    # "cameraUser":Landroid/hardware/camera2/ICameraDeviceUser;
    .restart local v12    # "cameraUser":Landroid/hardware/camera2/ICameraDeviceUser;
    :goto_0
    move-object v12, v0

    goto :goto_1

    .line 362
    .local v0, "cameraService":Landroid/hardware/ICameraService;
    :cond_0
    move/from16 v6, p4

    new-instance v5, Landroid/os/ServiceSpecificException;

    const-string v7, "Camera service is currently unavailable"

    invoke-direct {v5, v4, v7}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw v5
    :try_end_2
    .catch Landroid/os/ServiceSpecificException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 372
    .end local v0    # "cameraService":Landroid/hardware/ICameraService;
    :cond_1
    move/from16 v6, p4

    :try_start_3
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Landroid/os/ServiceSpecificException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 376
    .local v0, "id":I
    nop

    .line 374
    nop

    .line 378
    :try_start_4
    const-string v5, "CameraManager"

    const-string v7, "Using legacy camera HAL."

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    invoke-static {v3, v0}, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->connectBinderShim(Landroid/hardware/camera2/ICameraDeviceCallbacks;I)Landroid/hardware/camera2/legacy/CameraDeviceUserShim;

    move-result-object v5

    move-object v0, v5

    .end local v12    # "cameraUser":Landroid/hardware/camera2/ICameraDeviceUser;
    .local v0, "cameraUser":Landroid/hardware/camera2/ICameraDeviceUser;
    goto :goto_0

    .line 411
    .end local v0    # "cameraUser":Landroid/hardware/camera2/ICameraDeviceUser;
    .restart local v12    # "cameraUser":Landroid/hardware/camera2/ICameraDeviceUser;
    :cond_2
    :goto_1
    goto/16 :goto_5

    .line 404
    :catch_0
    move-exception v0

    goto :goto_2

    .line 381
    :catch_1
    move-exception v0

    goto :goto_3

    .line 373
    :catch_2
    move-exception v0

    move-object v5, v0

    .line 374
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Expected cameraId to be numeric, but it was: "

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_4
    .catch Landroid/os/ServiceSpecificException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 404
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :catch_3
    move-exception v0

    move/from16 v6, p4

    .line 406
    .local v0, "e":Landroid/os/RemoteException;
    :goto_2
    :try_start_5
    new-instance v5, Landroid/os/ServiceSpecificException;

    const-string v7, "Camera service is currently unavailable"

    invoke-direct {v5, v4, v7}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    move-object v4, v5

    .line 409
    .local v4, "sse":Landroid/os/ServiceSpecificException;
    invoke-virtual {v2, v4}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->setRemoteFailure(Landroid/os/ServiceSpecificException;)V

    .line 410
    invoke-static {v4}, Landroid/hardware/camera2/CameraManager;->throwAsPublicException(Ljava/lang/Throwable;)V

    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v4    # "sse":Landroid/os/ServiceSpecificException;
    goto :goto_5

    .line 381
    :catch_4
    move-exception v0

    move/from16 v6, p4

    .line 382
    .local v0, "e":Landroid/os/ServiceSpecificException;
    :goto_3
    iget v5, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    const/16 v7, 0x9

    if-eq v5, v7, :cond_6

    .line 384
    iget v5, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    const/4 v7, 0x6

    const/4 v13, 0x7

    if-eq v5, v13, :cond_4

    iget v5, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    const/16 v14, 0x8

    if-eq v5, v14, :cond_4

    iget v5, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    if-eq v5, v7, :cond_4

    iget v5, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    if-eq v5, v4, :cond_4

    iget v5, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    const/16 v14, 0xa

    if-ne v5, v14, :cond_3

    goto :goto_4

    .line 402
    :cond_3
    invoke-static {v0}, Landroid/hardware/camera2/CameraManager;->throwAsPublicException(Ljava/lang/Throwable;)V

    .end local v0    # "e":Landroid/os/ServiceSpecificException;
    goto :goto_1

    .line 392
    .restart local v0    # "e":Landroid/os/ServiceSpecificException;
    :cond_4
    :goto_4
    invoke-virtual {v2, v0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->setRemoteFailure(Landroid/os/ServiceSpecificException;)V

    .line 394
    iget v5, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    if-eq v5, v7, :cond_5

    iget v5, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    if-eq v5, v4, :cond_5

    iget v4, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    if-ne v4, v13, :cond_2

    .line 398
    :cond_5
    invoke-static {v0}, Landroid/hardware/camera2/CameraManager;->throwAsPublicException(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 418
    .end local v0    # "e":Landroid/os/ServiceSpecificException;
    :goto_5
    invoke-virtual {v2, v12}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->setRemoteDevice(Landroid/hardware/camera2/ICameraDeviceUser;)V

    .line 419
    move-object v10, v2

    .line 420
    .end local v2    # "deviceImpl":Landroid/hardware/camera2/impl/CameraDeviceImpl;
    .end local v3    # "callbacks":Landroid/hardware/camera2/ICameraDeviceCallbacks;
    .end local v12    # "cameraUser":Landroid/hardware/camera2/ICameraDeviceUser;
    monitor-exit v11

    .line 422
    return-object v10

    .line 383
    .restart local v0    # "e":Landroid/os/ServiceSpecificException;
    .restart local v2    # "deviceImpl":Landroid/hardware/camera2/impl/CameraDeviceImpl;
    .restart local v3    # "callbacks":Landroid/hardware/camera2/ICameraDeviceCallbacks;
    .restart local v12    # "cameraUser":Landroid/hardware/camera2/ICameraDeviceUser;
    :cond_6
    new-instance v4, Ljava/lang/AssertionError;

    const-string v5, "Should\'ve gone down the shim path"

    invoke-direct {v4, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4

    .line 420
    .end local v0    # "e":Landroid/os/ServiceSpecificException;
    .end local v2    # "deviceImpl":Landroid/hardware/camera2/impl/CameraDeviceImpl;
    .end local v3    # "callbacks":Landroid/hardware/camera2/ICameraDeviceCallbacks;
    .end local v12    # "cameraUser":Landroid/hardware/camera2/ICameraDeviceUser;
    :catchall_0
    move-exception v0

    move/from16 v6, p4

    :goto_6
    monitor-exit v11
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_6
.end method

.method private supportsCamera2ApiLocked(Ljava/lang/String;)Z
    .locals 1
    .param p1, "cameraId"    # Ljava/lang/String;

    .line 784
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Landroid/hardware/camera2/CameraManager;->supportsCameraApiLocked(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method private supportsCameraApiLocked(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "apiVersion"    # I

    .line 804
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->getCameraService()Landroid/hardware/ICameraService;

    move-result-object v1

    .line 806
    .local v1, "cameraService":Landroid/hardware/ICameraService;
    if-nez v1, :cond_0

    return v0

    .line 808
    :cond_0
    invoke-interface {v1, p1, p2}, Landroid/hardware/ICameraService;->supportsCameraApi(Ljava/lang/String;I)Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 809
    .end local v1    # "cameraService":Landroid/hardware/ICameraService;
    :catch_0
    move-exception v1

    .line 812
    return v0
.end method

.method public static throwAsPublicException(Ljava/lang/Throwable;)V
    .locals 4
    .param p0, "t"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 734
    instance-of v0, p0, Landroid/os/ServiceSpecificException;

    if-eqz v0, :cond_0

    .line 735
    move-object v0, p0

    check-cast v0, Landroid/os/ServiceSpecificException;

    .line 736
    .local v0, "e":Landroid/os/ServiceSpecificException;
    const/4 v1, 0x3

    .line 737
    .local v1, "reason":I
    iget v2, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    packed-switch v2, :pswitch_data_0

    .line 761
    :pswitch_0
    const/4 v1, 0x3

    goto :goto_0

    .line 751
    :pswitch_1
    const/16 v1, 0x3e8

    .line 752
    goto :goto_0

    .line 748
    :pswitch_2
    const/4 v1, 0x5

    .line 749
    goto :goto_0

    .line 745
    :pswitch_3
    const/4 v1, 0x4

    .line 746
    goto :goto_0

    .line 742
    :pswitch_4
    const/4 v1, 0x1

    .line 743
    goto :goto_0

    .line 739
    :pswitch_5
    const/4 v1, 0x2

    .line 740
    goto :goto_0

    .line 755
    :pswitch_6
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 757
    :pswitch_7
    new-instance v2, Ljava/lang/SecurityException;

    invoke-virtual {v0}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 763
    :goto_0
    new-instance v2, Landroid/hardware/camera2/CameraAccessException;

    invoke-virtual {v0}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3, v0}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 764
    .end local v0    # "e":Landroid/os/ServiceSpecificException;
    .end local v1    # "reason":I
    :cond_0
    instance-of v0, p0, Landroid/os/DeadObjectException;

    if-nez v0, :cond_3

    .line 768
    instance-of v0, p0, Landroid/os/RemoteException;

    if-nez v0, :cond_2

    .line 771
    instance-of v0, p0, Ljava/lang/RuntimeException;

    if-nez v0, :cond_1

    .line 775
    return-void

    .line 772
    :cond_1
    move-object v0, p0

    check-cast v0, Ljava/lang/RuntimeException;

    .line 773
    .local v0, "e":Ljava/lang/RuntimeException;
    throw v0

    .line 769
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_2
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "An unknown RemoteException was thrown which should never happen."

    invoke-direct {v0, v1, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 765
    :cond_3
    new-instance v0, Landroid/hardware/camera2/CameraAccessException;

    const/4 v1, 0x2

    const-string v2, "Camera service has died unexpectedly"

    invoke-direct {v0, v1, v2, p0}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;
    .locals 8
    .param p1, "cameraId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 272
    const/4 v0, 0x0

    .line 273
    .local v0, "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    sget-boolean v1, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->sCameraServiceDisabled:Z

    if-nez v1, :cond_2

    .line 276
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 281
    :try_start_0
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->getCameraService()Landroid/hardware/ICameraService;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 282
    .local v2, "cameraService":Landroid/hardware/ICameraService;
    const/4 v3, 0x2

    if-eqz v2, :cond_1

    .line 287
    :try_start_1
    invoke-direct {p0, p1}, Landroid/hardware/camera2/CameraManager;->supportsCamera2ApiLocked(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 290
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 292
    .local v4, "id":I
    invoke-interface {v2, v4}, Landroid/hardware/ICameraService;->getLegacyParameters(I)Ljava/lang/String;

    move-result-object v5

    .line 294
    .local v5, "parameters":Ljava/lang/String;
    invoke-interface {v2, v4}, Landroid/hardware/ICameraService;->getCameraInfo(I)Landroid/hardware/CameraInfo;

    move-result-object v6

    .line 296
    .local v6, "info":Landroid/hardware/CameraInfo;
    invoke-static {v5, v6}, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->createCharacteristics(Ljava/lang/String;Landroid/hardware/CameraInfo;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v7

    move-object v0, v7

    .line 297
    .end local v4    # "id":I
    .end local v5    # "parameters":Ljava/lang/String;
    .end local v6    # "info":Landroid/hardware/CameraInfo;
    goto :goto_0

    .line 299
    :cond_0
    invoke-interface {v2, p1}, Landroid/hardware/ICameraService;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v4

    .line 301
    .local v4, "info":Landroid/hardware/camera2/impl/CameraMetadataNative;
    new-instance v5, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-direct {v5, v4}, Landroid/hardware/camera2/CameraCharacteristics;-><init>(Landroid/hardware/camera2/impl/CameraMetadataNative;)V
    :try_end_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v5

    .end local v4    # "info":Landroid/hardware/camera2/impl/CameraMetadataNative;
    goto :goto_0

    .line 305
    :catch_0
    move-exception v4

    .line 307
    .local v4, "e":Landroid/os/RemoteException;
    :try_start_2
    new-instance v5, Landroid/hardware/camera2/CameraAccessException;

    const-string v6, "Camera service is currently unavailable"

    invoke-direct {v5, v3, v6, v4}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 303
    .end local v4    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v3

    .line 304
    .local v3, "e":Landroid/os/ServiceSpecificException;
    invoke-static {v3}, Landroid/hardware/camera2/CameraManager;->throwAsPublicException(Ljava/lang/Throwable;)V

    .line 309
    .end local v3    # "e":Landroid/os/ServiceSpecificException;
    :goto_0
    nop

    .line 310
    .end local v2    # "cameraService":Landroid/hardware/ICameraService;
    monitor-exit v1

    .line 311
    return-object v0

    .line 283
    .restart local v2    # "cameraService":Landroid/hardware/ICameraService;
    :cond_1
    new-instance v4, Landroid/hardware/camera2/CameraAccessException;

    const-string v5, "Camera service is currently unavailable"

    invoke-direct {v4, v3, v5}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;)V

    throw v4

    .line 310
    .end local v2    # "cameraService":Landroid/hardware/ICameraService;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 274
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "No cameras available on device"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getCameraIdList()[Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 107
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->getCameraIdList()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public openCamera(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;)V
    .locals 2
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/hardware/camera2/CameraDevice$StateCallback;
    .param p3, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 492
    invoke-static {p3}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkAndWrapHandler(Landroid/os/Handler;)Ljava/util/concurrent/Executor;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/hardware/camera2/CameraManager;->openCameraForUid(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Ljava/util/concurrent/Executor;I)V

    .line 494
    return-void
.end method

.method public openCamera(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraDevice$StateCallback;)V
    .locals 2
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "callback"    # Landroid/hardware/camera2/CameraDevice$StateCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 529
    if-eqz p2, :cond_0

    .line 532
    const/4 v0, -0x1

    invoke-virtual {p0, p1, p3, p2, v0}, Landroid/hardware/camera2/CameraManager;->openCameraForUid(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Ljava/util/concurrent/Executor;I)V

    .line 533
    return-void

    .line 530
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "executor was null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public openCameraForUid(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Ljava/util/concurrent/Executor;I)V
    .locals 2
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/hardware/camera2/CameraDevice$StateCallback;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .param p4, "clientUid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 555
    if-eqz p1, :cond_2

    .line 557
    if-eqz p2, :cond_1

    .line 560
    sget-boolean v0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->sCameraServiceDisabled:Z

    if-nez v0, :cond_0

    .line 564
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/hardware/camera2/CameraManager;->openCameraDeviceUserAsync(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Ljava/util/concurrent/Executor;I)Landroid/hardware/camera2/CameraDevice;

    .line 565
    return-void

    .line 561
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No cameras available on device"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 558
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callback was null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 556
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cameraId was null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public registerAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Landroid/os/Handler;)V
    .locals 2
    .param p1, "callback"    # Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 139
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v0

    .line 140
    invoke-static {p2}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkAndWrapHandler(Landroid/os/Handler;)Ljava/util/concurrent/Executor;

    move-result-object v1

    .line 139
    invoke-virtual {v0, p1, v1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->registerAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Ljava/util/concurrent/Executor;)V

    .line 141
    return-void
.end method

.method public registerAvailabilityCallback(Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraManager$AvailabilityCallback;)V
    .locals 2
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "callback"    # Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

    .line 158
    if-eqz p1, :cond_0

    .line 161
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->registerAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Ljava/util/concurrent/Executor;)V

    .line 162
    return-void

    .line 159
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "executor was null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public registerPreviewStartedCallback(Landroid/hardware/camera2/CameraManager$PreviewStartedCallback;Landroid/os/Handler;)V
    .locals 3
    .param p1, "callback"    # Landroid/hardware/camera2/CameraManager$PreviewStartedCallback;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 178
    if-nez p2, :cond_1

    .line 179
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .line 180
    .local v0, "looper":Landroid/os/Looper;
    if-eqz v0, :cond_0

    .line 184
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    move-object p2, v1

    .end local v0    # "looper":Landroid/os/Looper;
    goto :goto_0

    .line 181
    .restart local v0    # "looper":Landroid/os/Looper;
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "No handler given, and current thread has no looper!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 187
    .end local v0    # "looper":Landroid/os/Looper;
    :cond_1
    :goto_0
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->registerPreviewStartedCallback(Landroid/hardware/camera2/CameraManager$PreviewStartedCallback;Landroid/os/Handler;)V

    .line 188
    return-void
.end method

.method public registerTorchCallback(Landroid/hardware/camera2/CameraManager$TorchCallback;Landroid/os/Handler;)V
    .locals 2
    .param p1, "callback"    # Landroid/hardware/camera2/CameraManager$TorchCallback;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 218
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v0

    .line 219
    invoke-static {p2}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkAndWrapHandler(Landroid/os/Handler;)Ljava/util/concurrent/Executor;

    move-result-object v1

    .line 218
    invoke-virtual {v0, p1, v1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->registerTorchCallback(Landroid/hardware/camera2/CameraManager$TorchCallback;Ljava/util/concurrent/Executor;)V

    .line 220
    return-void
.end method

.method public registerTorchCallback(Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraManager$TorchCallback;)V
    .locals 2
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "callback"    # Landroid/hardware/camera2/CameraManager$TorchCallback;

    .line 237
    if-eqz p1, :cond_0

    .line 240
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->registerTorchCallback(Landroid/hardware/camera2/CameraManager$TorchCallback;Ljava/util/concurrent/Executor;)V

    .line 241
    return-void

    .line 238
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "executor was null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setTorchMode(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 608
    sget-boolean v0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->sCameraServiceDisabled:Z

    if-nez v0, :cond_0

    .line 611
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->setTorchMode(Ljava/lang/String;Z)V

    .line 612
    return-void

    .line 609
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No cameras available on device"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public unregisterAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;)V
    .locals 1
    .param p1, "callback"    # Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

    .line 173
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->unregisterAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;)V

    .line 174
    return-void
.end method

.method public unregisterPreviewStartedCallback(Landroid/hardware/camera2/CameraManager$PreviewStartedCallback;)V
    .locals 1
    .param p1, "callback"    # Landroid/hardware/camera2/CameraManager$PreviewStartedCallback;

    .line 191
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->unregisterPreviewStartedCallback(Landroid/hardware/camera2/CameraManager$PreviewStartedCallback;)V

    .line 192
    return-void
.end method

.method public unregisterTorchCallback(Landroid/hardware/camera2/CameraManager$TorchCallback;)V
    .locals 1
    .param p1, "callback"    # Landroid/hardware/camera2/CameraManager$TorchCallback;

    .line 252
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->unregisterTorchCallback(Landroid/hardware/camera2/CameraManager$TorchCallback;)V

    .line 253
    return-void
.end method
