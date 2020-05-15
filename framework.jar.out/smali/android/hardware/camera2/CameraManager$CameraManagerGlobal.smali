.class final Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;
.super Landroid/hardware/ICameraServiceListener$Stub;
.source "CameraManager.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/CameraManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CameraManagerGlobal"
.end annotation


# static fields
.field private static final CAMERA_SERVICE_BINDER_NAME:Ljava/lang/String; = "media.camera"

.field private static final TAG:Ljava/lang/String; = "CameraManagerGlobal"

.field private static final gCameraManager:Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

.field public static final sCameraServiceDisabled:Z


# instance fields
.field private final CAMERA_SERVICE_RECONNECT_DELAY_MS:I

.field private final DEBUG:Z

.field private final mCallbackMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/hardware/camera2/CameraManager$AvailabilityCallback;",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private mCameraService:Landroid/hardware/ICameraService;

.field private final mDeviceStatus:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private final mPreviewStartedCallbackMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/hardware/camera2/CameraManager$PreviewStartedCallback;",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private final mScheduler:Ljava/util/concurrent/ScheduledExecutorService;

.field private final mTorchCallbackMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/hardware/camera2/CameraManager$TorchCallback;",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private mTorchClientBinder:Landroid/os/Binder;

.field private final mTorchStatus:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 828
    new-instance v0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    invoke-direct {v0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;-><init>()V

    sput-object v0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->gCameraManager:Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    .line 867
    const-string v0, "config.disable_cameraservice"

    .line 868
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->sCameraServiceDisabled:Z

    .line 867
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 864
    invoke-direct {p0}, Landroid/hardware/ICameraServiceListener$Stub;-><init>()V

    .line 823
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->DEBUG:Z

    .line 825
    const/16 v0, 0x3e8

    iput v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->CAMERA_SERVICE_RECONNECT_DELAY_MS:I

    .line 836
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mScheduler:Ljava/util/concurrent/ScheduledExecutorService;

    .line 838
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mDeviceStatus:Landroid/util/ArrayMap;

    .line 841
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCallbackMap:Landroid/util/ArrayMap;

    .line 845
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mPreviewStartedCallbackMap:Landroid/util/ArrayMap;

    .line 849
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mTorchClientBinder:Landroid/os/Binder;

    .line 852
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mTorchStatus:Landroid/util/ArrayMap;

    .line 855
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mTorchCallbackMap:Landroid/util/ArrayMap;

    .line 858
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mLock:Ljava/lang/Object;

    .line 865
    return-void
.end method

.method private connectCameraServiceLocked()V
    .locals 8

    .line 904
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCameraService:Landroid/hardware/ICameraService;

    if-nez v0, :cond_3

    sget-boolean v0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->sCameraServiceDisabled:Z

    if-eqz v0, :cond_0

    goto :goto_3

    .line 906
    :cond_0
    const-string v0, "CameraManagerGlobal"

    const-string/jumbo v1, "kangxiong :Connecting to camera service,addListener"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 908
    const-string/jumbo v0, "media.camera"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 909
    .local v0, "cameraServiceBinder":Landroid/os/IBinder;
    if-nez v0, :cond_1

    .line 911
    return-void

    .line 914
    :cond_1
    const/4 v1, 0x0

    :try_start_0
    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_3

    .line 918
    nop

    .line 920
    invoke-static {v0}, Landroid/hardware/ICameraService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/ICameraService;

    move-result-object v2

    .line 923
    .local v2, "cameraService":Landroid/hardware/ICameraService;
    :try_start_1
    invoke-static {}, Landroid/hardware/camera2/impl/CameraMetadataNative;->setupGlobalVendorTagDescriptor()V
    :try_end_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_1 .. :try_end_1} :catch_0

    .line 926
    goto :goto_0

    .line 924
    :catch_0
    move-exception v3

    .line 925
    .local v3, "e":Landroid/os/ServiceSpecificException;
    invoke-direct {p0, v3}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->handleRecoverableSetupErrors(Landroid/os/ServiceSpecificException;)V

    .line 929
    .end local v3    # "e":Landroid/os/ServiceSpecificException;
    :goto_0
    :try_start_2
    invoke-interface {v2, p0}, Landroid/hardware/ICameraService;->addListener(Landroid/hardware/ICameraServiceListener;)[Landroid/hardware/CameraStatus;

    move-result-object v3

    .line 930
    .local v3, "cameraStatuses":[Landroid/hardware/CameraStatus;
    array-length v4, v3

    :goto_1
    if-ge v1, v4, :cond_2

    aget-object v5, v3, v1

    .line 931
    .local v5, "c":Landroid/hardware/CameraStatus;
    iget v6, v5, Landroid/hardware/CameraStatus;->status:I

    iget-object v7, v5, Landroid/hardware/CameraStatus;->cameraId:Ljava/lang/String;

    invoke-direct {p0, v6, v7}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->onStatusChangedLocked(ILjava/lang/String;)V

    .line 930
    .end local v5    # "c":Landroid/hardware/CameraStatus;
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 933
    :cond_2
    iput-object v2, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCameraService:Landroid/hardware/ICameraService;
    :try_end_2
    .catch Landroid/os/ServiceSpecificException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 939
    .end local v3    # "cameraStatuses":[Landroid/hardware/CameraStatus;
    goto :goto_2

    .line 937
    :catch_1
    move-exception v1

    .line 940
    :goto_2
    return-void

    .line 934
    :catch_2
    move-exception v1

    .line 936
    .local v1, "e":Landroid/os/ServiceSpecificException;
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Failed to register a camera service listener"

    invoke-direct {v3, v4, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 915
    .end local v1    # "e":Landroid/os/ServiceSpecificException;
    .end local v2    # "cameraService":Landroid/hardware/ICameraService;
    :catch_3
    move-exception v1

    .line 917
    .local v1, "e":Landroid/os/RemoteException;
    return-void

    .line 904
    .end local v0    # "cameraServiceBinder":Landroid/os/IBinder;
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_3
    :goto_3
    return-void
.end method

.method public static get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;
    .locals 1

    .line 871
    sget-object v0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->gCameraManager:Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    return-object v0
.end method

.method private handleRecoverableSetupErrors(Landroid/os/ServiceSpecificException;)V
    .locals 2
    .param p1, "e"    # Landroid/os/ServiceSpecificException;

    .line 1063
    iget v0, p1, Landroid/os/ServiceSpecificException;->errorCode:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 1065
    const-string v0, "CameraManagerGlobal"

    invoke-virtual {p1}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1066
    nop

    .line 1070
    return-void

    .line 1068
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private isAvailable(I)Z
    .locals 1
    .param p1, "status"    # I

    .line 1073
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 1077
    const/4 v0, 0x0

    return v0

    .line 1075
    :cond_0
    return v0
.end method

.method static synthetic lambda$postSingleTorchUpdate$0(Landroid/hardware/camera2/CameraManager$TorchCallback;Ljava/lang/String;I)V
    .locals 1
    .param p0, "callback"    # Landroid/hardware/camera2/CameraManager$TorchCallback;
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "status"    # I

    .line 1143
    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, p1, v0}, Landroid/hardware/camera2/CameraManager$TorchCallback;->onTorchModeChanged(Ljava/lang/String;Z)V

    .line 1145
    return-void
.end method

.method static synthetic lambda$postSingleTorchUpdate$1(Landroid/hardware/camera2/CameraManager$TorchCallback;Ljava/lang/String;)V
    .locals 0
    .param p0, "callback"    # Landroid/hardware/camera2/CameraManager$TorchCallback;
    .param p1, "id"    # Ljava/lang/String;

    .line 1155
    invoke-virtual {p0, p1}, Landroid/hardware/camera2/CameraManager$TorchCallback;->onTorchModeUnavailable(Ljava/lang/String;)V

    .line 1156
    return-void
.end method

.method public static synthetic lambda$scheduleCameraServiceReconnectionLocked$2(Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;)V
    .locals 3

    .line 1473
    invoke-virtual {p0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->getCameraService()Landroid/hardware/ICameraService;

    move-result-object v0

    .line 1474
    .local v0, "cameraService":Landroid/hardware/ICameraService;
    if-nez v0, :cond_0

    .line 1475
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1479
    :try_start_0
    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->scheduleCameraServiceReconnectionLocked()V

    .line 1480
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1482
    :cond_0
    :goto_0
    return-void
.end method

.method private onStatusChangedLocked(ILjava/lang/String;)V
    .locals 8
    .param p1, "status"    # I
    .param p2, "id"    # Ljava/lang/String;

    .line 1181
    const/4 v0, 0x0

    .line 1182
    .local v0, "exposeMonoCamera":Z
    invoke-static {}, Landroid/app/ActivityThread;->currentOpPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1183
    .local v1, "packageName":Ljava/lang/String;
    const-string/jumbo v2, "vendor.camera.aux.packagelist"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1184
    .local v2, "packageList":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 1185
    new-instance v3, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v4, 0x2c

    invoke-direct {v3, v4}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 1186
    .local v3, "splitter":Landroid/text/TextUtils$StringSplitter;
    invoke-interface {v3, v2}, Landroid/text/TextUtils$StringSplitter;->setString(Ljava/lang/String;)V

    .line 1187
    invoke-interface {v3}, Landroid/text/TextUtils$StringSplitter;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1188
    .local v5, "str":Ljava/lang/String;
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1189
    const/4 v0, 0x1

    .line 1190
    goto :goto_1

    .line 1192
    .end local v5    # "str":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 1195
    .end local v3    # "splitter":Landroid/text/TextUtils$StringSplitter;
    :cond_1
    :goto_1
    const-string v3, "android"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1196
    const/4 v0, 0x1

    .line 1199
    :cond_2
    const/4 v3, 0x2

    if-nez v0, :cond_3

    .line 1200
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-lt v4, v3, :cond_3

    .line 1201
    const-string v3, "CameraManagerGlobal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[soar.cts] ignore the status update of camera: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1202
    return-void

    .line 1211
    :cond_3
    invoke-direct {p0, p1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->validStatus(I)Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_4

    .line 1212
    const-string v4, "CameraManagerGlobal"

    const-string v6, "Ignoring invalid device %s status 0x%x"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p2, v3, v5

    .line 1213
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v7, 0x1

    aput-object v5, v3, v7

    .line 1212
    invoke-static {v6, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1214
    return-void

    .line 1218
    :cond_4
    if-nez p1, :cond_5

    .line 1219
    iget-object v3, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mDeviceStatus:Landroid/util/ArrayMap;

    invoke-virtual {v3, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 1219
    .local v3, "oldStatus":Ljava/lang/Integer;
    goto :goto_2

    .line 1221
    .end local v3    # "oldStatus":Ljava/lang/Integer;
    :cond_5
    iget-object v3, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mDeviceStatus:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, p2, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 1224
    .restart local v3    # "oldStatus":Ljava/lang/Integer;
    :goto_2
    if-eqz v3, :cond_6

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, p1, :cond_6

    .line 1230
    return-void

    .line 1246
    :cond_6
    if-eqz v3, :cond_7

    invoke-direct {p0, p1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->isAvailable(I)Z

    move-result v4

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct {p0, v6}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->isAvailable(I)Z

    move-result v6

    if-ne v4, v6, :cond_7

    .line 1255
    return-void

    .line 1258
    :cond_7
    iget-object v4, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    .line 1259
    .local v4, "callbackCount":I
    nop

    .line 1259
    .local v5, "i":I
    :goto_3
    if-ge v5, v4, :cond_8

    .line 1260
    iget-object v6, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/concurrent/Executor;

    .line 1261
    .local v6, "executor":Ljava/util/concurrent/Executor;
    iget-object v7, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v7, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

    .line 1263
    .local v7, "callback":Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
    invoke-direct {p0, v7, v6, p2, p1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->postSingleUpdate(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Ljava/util/concurrent/Executor;Ljava/lang/String;I)V

    .line 1259
    .end local v6    # "executor":Ljava/util/concurrent/Executor;
    .end local v7    # "callback":Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 1265
    .end local v5    # "i":I
    :cond_8
    return-void
.end method

.method private onTorchStatusChangedLocked(ILjava/lang/String;)V
    .locals 8
    .param p1, "status"    # I
    .param p2, "id"    # Ljava/lang/String;

    .line 1284
    const/4 v0, 0x0

    .line 1285
    .local v0, "exposeMonoCamera":Z
    invoke-static {}, Landroid/app/ActivityThread;->currentOpPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1286
    .local v1, "packageName":Ljava/lang/String;
    const-string/jumbo v2, "vendor.camera.aux.packagelist"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1287
    .local v2, "packageList":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 1288
    new-instance v3, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v4, 0x2c

    invoke-direct {v3, v4}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 1289
    .local v3, "splitter":Landroid/text/TextUtils$StringSplitter;
    invoke-interface {v3, v2}, Landroid/text/TextUtils$StringSplitter;->setString(Ljava/lang/String;)V

    .line 1290
    invoke-interface {v3}, Landroid/text/TextUtils$StringSplitter;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1291
    .local v5, "str":Ljava/lang/String;
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1292
    const/4 v0, 0x1

    .line 1293
    goto :goto_1

    .line 1295
    .end local v5    # "str":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 1298
    .end local v3    # "splitter":Landroid/text/TextUtils$StringSplitter;
    :cond_1
    :goto_1
    const/4 v3, 0x2

    if-nez v0, :cond_2

    .line 1299
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-lt v4, v3, :cond_2

    .line 1300
    const-string v3, "CameraManagerGlobal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ignore the torch status update of camera: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1301
    return-void

    .line 1306
    :cond_2
    invoke-direct {p0, p1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->validTorchStatus(I)Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_3

    .line 1307
    const-string v4, "CameraManagerGlobal"

    const-string v6, "Ignoring invalid device %s torch status 0x%x"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p2, v3, v5

    .line 1308
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v7, 0x1

    aput-object v5, v3, v7

    .line 1307
    invoke-static {v6, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1309
    return-void

    .line 1312
    :cond_3
    iget-object v3, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mTorchStatus:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, p2, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 1313
    .local v3, "oldStatus":Ljava/lang/Integer;
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, p1, :cond_4

    .line 1319
    return-void

    .line 1322
    :cond_4
    iget-object v4, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mTorchCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    .line 1323
    .local v4, "callbackCount":I
    nop

    .line 1323
    .local v5, "i":I
    :goto_2
    if-ge v5, v4, :cond_5

    .line 1324
    iget-object v6, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mTorchCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/concurrent/Executor;

    .line 1325
    .local v6, "executor":Ljava/util/concurrent/Executor;
    iget-object v7, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mTorchCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v7, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/camera2/CameraManager$TorchCallback;

    .line 1326
    .local v7, "callback":Landroid/hardware/camera2/CameraManager$TorchCallback;
    invoke-direct {p0, v7, v6, p2, p1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->postSingleTorchUpdate(Landroid/hardware/camera2/CameraManager$TorchCallback;Ljava/util/concurrent/Executor;Ljava/lang/String;I)V

    .line 1323
    .end local v6    # "executor":Ljava/util/concurrent/Executor;
    .end local v7    # "callback":Landroid/hardware/camera2/CameraManager$TorchCallback;
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 1328
    .end local v5    # "i":I
    :cond_5
    return-void
.end method

.method private postSinglePreviewStartedUpdate(Landroid/hardware/camera2/CameraManager$PreviewStartedCallback;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 1
    .param p1, "callback"    # Landroid/hardware/camera2/CameraManager$PreviewStartedCallback;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "id"    # Ljava/lang/String;

    .line 1440
    new-instance v0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$4;

    invoke-direct {v0, p0, p1, p3}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$4;-><init>(Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;Landroid/hardware/camera2/CameraManager$PreviewStartedCallback;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1447
    return-void
.end method

.method private postSingleTorchUpdate(Landroid/hardware/camera2/CameraManager$TorchCallback;Ljava/util/concurrent/Executor;Ljava/lang/String;I)V
    .locals 3
    .param p1, "callback"    # Landroid/hardware/camera2/CameraManager$TorchCallback;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "id"    # Ljava/lang/String;
    .param p4, "status"    # I

    .line 1137
    packed-switch p4, :pswitch_data_0

    .line 1152
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    goto :goto_0

    .line 1140
    :pswitch_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1142
    .local v0, "ident":J
    :try_start_0
    new-instance v2, Landroid/hardware/camera2/-$$Lambda$CameraManager$CameraManagerGlobal$CONvadOBAEkcHSpx8j61v67qRGM;

    invoke-direct {v2, p1, p3, p4}, Landroid/hardware/camera2/-$$Lambda$CameraManager$CameraManagerGlobal$CONvadOBAEkcHSpx8j61v67qRGM;-><init>(Landroid/hardware/camera2/CameraManager$TorchCallback;Ljava/lang/String;I)V

    invoke-interface {p2, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1147
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1148
    nop

    .line 1150
    .end local v0    # "ident":J
    goto :goto_1

    .line 1147
    .restart local v0    # "ident":J
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 1152
    .end local v0    # "ident":J
    :goto_0
    nop

    .line 1154
    .restart local v0    # "ident":J
    :try_start_1
    new-instance v2, Landroid/hardware/camera2/-$$Lambda$CameraManager$CameraManagerGlobal$6Ptxoe4wF_VCkE_pml8t66mklao;

    invoke-direct {v2, p1, p3}, Landroid/hardware/camera2/-$$Lambda$CameraManager$CameraManagerGlobal$6Ptxoe4wF_VCkE_pml8t66mklao;-><init>(Landroid/hardware/camera2/CameraManager$TorchCallback;Ljava/lang/String;)V

    invoke-interface {p2, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1158
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1159
    nop

    .line 1163
    .end local v0    # "ident":J
    :goto_1
    return-void

    .line 1158
    .restart local v0    # "ident":J
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private postSingleUpdate(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Ljava/util/concurrent/Executor;Ljava/lang/String;I)V
    .locals 3
    .param p1, "callback"    # Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "id"    # Ljava/lang/String;
    .param p4, "status"    # I

    .line 1106
    invoke-direct {p0, p4}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->isAvailable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1107
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1109
    .local v0, "ident":J
    :try_start_0
    new-instance v2, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$2;

    invoke-direct {v2, p0, p1, p3}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$2;-><init>(Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Ljava/lang/String;)V

    invoke-interface {p2, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1117
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1118
    nop

    .line 1119
    .end local v0    # "ident":J
    goto :goto_0

    .line 1117
    .restart local v0    # "ident":J
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 1120
    .end local v0    # "ident":J
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1122
    .restart local v0    # "ident":J
    :try_start_1
    new-instance v2, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$3;

    invoke-direct {v2, p0, p1, p3}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$3;-><init>(Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Ljava/lang/String;)V

    invoke-interface {p2, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1130
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1131
    nop

    .line 1133
    .end local v0    # "ident":J
    :goto_0
    return-void

    .line 1130
    .restart local v0    # "ident":J
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private scheduleCameraServiceReconnectionLocked()V
    .locals 5

    .line 1461
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mTorchCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1463
    return-void

    .line 1472
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mScheduler:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Landroid/hardware/camera2/-$$Lambda$CameraManager$CameraManagerGlobal$w1y8myi6vgxAcTEs8WArI-NN3R0;

    invoke-direct {v1, p0}, Landroid/hardware/camera2/-$$Lambda$CameraManager$CameraManagerGlobal$w1y8myi6vgxAcTEs8WArI-NN3R0;-><init>(Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;)V

    const-wide/16 v2, 0x3e8

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1485
    goto :goto_0

    .line 1483
    :catch_0
    move-exception v0

    .line 1484
    .local v0, "e":Ljava/util/concurrent/RejectedExecutionException;
    const-string v1, "CameraManagerGlobal"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to schedule camera service re-connect: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1486
    .end local v0    # "e":Ljava/util/concurrent/RejectedExecutionException;
    :goto_0
    return-void
.end method

.method private updateCallbackLocked(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Ljava/util/concurrent/Executor;)V
    .locals 4
    .param p1, "callback"    # Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .line 1170
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mDeviceStatus:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1171
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mDeviceStatus:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1172
    .local v1, "id":Ljava/lang/String;
    iget-object v2, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mDeviceStatus:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 1173
    .local v2, "status":Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, p1, p2, v1, v3}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->postSingleUpdate(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Ljava/util/concurrent/Executor;Ljava/lang/String;I)V

    .line 1170
    .end local v1    # "id":Ljava/lang/String;
    .end local v2    # "status":Ljava/lang/Integer;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1175
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private updateTorchCallbackLocked(Landroid/hardware/camera2/CameraManager$TorchCallback;Ljava/util/concurrent/Executor;)V
    .locals 4
    .param p1, "callback"    # Landroid/hardware/camera2/CameraManager$TorchCallback;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .line 1268
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mTorchStatus:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1269
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mTorchStatus:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1270
    .local v1, "id":Ljava/lang/String;
    iget-object v2, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mTorchStatus:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 1271
    .local v2, "status":Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, p1, p2, v1, v3}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->postSingleTorchUpdate(Landroid/hardware/camera2/CameraManager$TorchCallback;Ljava/util/concurrent/Executor;Ljava/lang/String;I)V

    .line 1268
    .end local v1    # "id":Ljava/lang/String;
    .end local v2    # "status":Ljava/lang/Integer;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1273
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private validStatus(I)Z
    .locals 1
    .param p1, "status"    # I

    .line 1082
    const/4 v0, -0x2

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 1089
    const/4 v0, 0x0

    return v0

    .line 1087
    :cond_0
    :pswitch_0
    const/4 v0, 0x1

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private validTorchStatus(I)Z
    .locals 1
    .param p1, "status"    # I

    .line 1094
    packed-switch p1, :pswitch_data_0

    .line 1100
    const/4 v0, 0x0

    return v0

    .line 1098
    :pswitch_0
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 876
    return-object p0
.end method

.method public binderDied()V
    .locals 4

    .line 1496
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1498
    :try_start_0
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCameraService:Landroid/hardware/ICameraService;

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    .line 1500
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCameraService:Landroid/hardware/ICameraService;

    .line 1505
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mDeviceStatus:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 1506
    iget-object v3, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mDeviceStatus:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1507
    .local v3, "cameraId":Ljava/lang/String;
    invoke-direct {p0, v1, v3}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->onStatusChangedLocked(ILjava/lang/String;)V

    .line 1505
    .end local v3    # "cameraId":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1509
    .end local v2    # "i":I
    :cond_1
    move v2, v1

    .restart local v2    # "i":I
    :goto_1
    iget-object v3, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mTorchStatus:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 1510
    iget-object v3, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mTorchStatus:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1511
    .restart local v3    # "cameraId":Ljava/lang/String;
    invoke-direct {p0, v1, v3}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->onTorchStatusChangedLocked(ILjava/lang/String;)V

    .line 1509
    .end local v3    # "cameraId":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1515
    .end local v2    # "i":I
    :cond_2
    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->scheduleCameraServiceReconnectionLocked()V

    .line 1516
    monitor-exit v0

    .line 1517
    return-void

    .line 1516
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getCameraIdList()[Ljava/lang/String;
    .locals 10

    .line 947
    const/4 v0, 0x0

    .line 948
    .local v0, "cameraIds":[Ljava/lang/String;
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 950
    :try_start_0
    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->connectCameraServiceLocked()V

    .line 952
    const/4 v2, 0x0

    .line 953
    .local v2, "exposeAuxCamera":Z
    invoke-static {}, Landroid/app/ActivityThread;->currentOpPackageName()Ljava/lang/String;

    move-result-object v3

    .line 954
    .local v3, "packageName":Ljava/lang/String;
    const-string/jumbo v4, "vendor.camera.aux.packagelist"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 955
    .local v4, "packageList":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1

    .line 956
    new-instance v5, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v6, 0x2c

    invoke-direct {v5, v6}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 957
    .local v5, "splitter":Landroid/text/TextUtils$StringSplitter;
    invoke-interface {v5, v4}, Landroid/text/TextUtils$StringSplitter;->setString(Ljava/lang/String;)V

    .line 958
    invoke-interface {v5}, Landroid/text/TextUtils$StringSplitter;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 959
    .local v7, "str":Ljava/lang/String;
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 960
    const/4 v2, 0x1

    .line 961
    goto :goto_1

    .line 963
    .end local v7    # "str":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 965
    .end local v5    # "splitter":Landroid/text/TextUtils$StringSplitter;
    :cond_1
    :goto_1
    const/4 v5, 0x0

    .line 966
    .local v5, "idCount":I
    const/4 v6, 0x0

    move v7, v5

    move v5, v6

    .line 966
    .local v5, "i":I
    .local v7, "idCount":I
    :goto_2
    iget-object v8, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mDeviceStatus:Landroid/util/ArrayMap;

    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    move-result v8

    const/4 v9, 0x2

    if-ge v5, v8, :cond_5

    .line 967
    if-nez v2, :cond_2

    if-ne v5, v9, :cond_2

    .line 967
    .end local v5    # "i":I
    goto :goto_4

    .line 968
    .restart local v5    # "i":I
    :cond_2
    iget-object v8, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mDeviceStatus:Landroid/util/ArrayMap;

    invoke-virtual {v8, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 969
    .local v8, "status":I
    if-eqz v8, :cond_4

    if-ne v8, v9, :cond_3

    .line 970
    goto :goto_3

    .line 971
    :cond_3
    add-int/lit8 v7, v7, 0x1

    .line 966
    .end local v8    # "status":I
    :cond_4
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 973
    .end local v5    # "i":I
    :cond_5
    :goto_4
    new-array v5, v7, [Ljava/lang/String;

    move-object v0, v5

    .line 974
    const/4 v5, 0x0

    .line 975
    .end local v7    # "idCount":I
    .local v5, "idCount":I
    nop

    .line 975
    .local v6, "i":I
    :goto_5
    iget-object v7, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mDeviceStatus:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v7

    if-ge v6, v7, :cond_9

    .line 976
    if-nez v2, :cond_6

    if-ne v6, v9, :cond_6

    .line 976
    .end local v2    # "exposeAuxCamera":Z
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v4    # "packageList":Ljava/lang/String;
    .end local v5    # "idCount":I
    .end local v6    # "i":I
    goto :goto_7

    .line 977
    .restart local v2    # "exposeAuxCamera":Z
    .restart local v3    # "packageName":Ljava/lang/String;
    .restart local v4    # "packageList":Ljava/lang/String;
    .restart local v5    # "idCount":I
    .restart local v6    # "i":I
    :cond_6
    iget-object v7, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mDeviceStatus:Landroid/util/ArrayMap;

    invoke-virtual {v7, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 978
    .local v7, "status":I
    if-eqz v7, :cond_8

    if-ne v7, v9, :cond_7

    .line 979
    goto :goto_6

    .line 980
    :cond_7
    iget-object v8, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mDeviceStatus:Landroid/util/ArrayMap;

    invoke-virtual {v8, v6}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    aput-object v8, v0, v5

    .line 981
    add-int/lit8 v5, v5, 0x1

    .line 975
    .end local v7    # "status":I
    :cond_8
    :goto_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 983
    .end local v2    # "exposeAuxCamera":Z
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v4    # "packageList":Ljava/lang/String;
    .end local v5    # "idCount":I
    .end local v6    # "i":I
    :cond_9
    :goto_7
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 987
    new-instance v1, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$1;

    invoke-direct {v1, p0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$1;-><init>(Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;)V

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 1015
    return-object v0

    .line 983
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public getCameraService()Landroid/hardware/ICameraService;
    .locals 3

    .line 887
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 888
    :try_start_0
    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->connectCameraServiceLocked()V

    .line 889
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCameraService:Landroid/hardware/ICameraService;

    if-nez v1, :cond_0

    sget-boolean v1, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->sCameraServiceDisabled:Z

    if-nez v1, :cond_0

    .line 890
    const-string v1, "CameraManagerGlobal"

    const-string v2, "Camera service is unavailable"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 892
    :cond_0
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCameraService:Landroid/hardware/ICameraService;

    monitor-exit v0

    return-object v1

    .line 893
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onPreviewStarted(Ljava/lang/String;)V
    .locals 5
    .param p1, "cameraId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1425
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1426
    :try_start_0
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mPreviewStartedCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 1427
    .local v1, "callbackCount":I
    const/4 v2, 0x0

    .line 1427
    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 1428
    iget-object v3, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mPreviewStartedCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Handler;

    .line 1429
    .local v3, "handler":Landroid/os/Handler;
    iget-object v4, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mPreviewStartedCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/camera2/CameraManager$PreviewStartedCallback;

    .line 1430
    .local v4, "callback":Landroid/hardware/camera2/CameraManager$PreviewStartedCallback;
    invoke-direct {p0, v4, v3, p1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->postSinglePreviewStartedUpdate(Landroid/hardware/camera2/CameraManager$PreviewStartedCallback;Landroid/os/Handler;Ljava/lang/String;)V

    .line 1427
    .end local v3    # "handler":Landroid/os/Handler;
    .end local v4    # "callback":Landroid/hardware/camera2/CameraManager$PreviewStartedCallback;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1432
    .end local v2    # "i":I
    :cond_0
    const-string v2, "CameraManagerGlobal"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onPreviewStarted callbackCount = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "  cameraId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1433
    .end local v1    # "callbackCount":I
    monitor-exit v0

    .line 1435
    return-void

    .line 1433
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onStatusChanged(ILjava/lang/String;)V
    .locals 2
    .param p1, "status"    # I
    .param p2, "cameraId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1414
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1415
    :try_start_0
    invoke-direct {p0, p1, p2}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->onStatusChangedLocked(ILjava/lang/String;)V

    .line 1416
    monitor-exit v0

    .line 1417
    return-void

    .line 1416
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onTorchStatusChanged(ILjava/lang/String;)V
    .locals 2
    .param p1, "status"    # I
    .param p2, "cameraId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1451
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1452
    :try_start_0
    invoke-direct {p0, p1, p2}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->onTorchStatusChangedLocked(ILjava/lang/String;)V

    .line 1453
    monitor-exit v0

    .line 1454
    return-void

    .line 1453
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public registerAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Ljava/util/concurrent/Executor;)V
    .locals 3
    .param p1, "callback"    # Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .line 1338
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1339
    :try_start_0
    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->connectCameraServiceLocked()V

    .line 1341
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Executor;

    .line 1343
    .local v1, "oldExecutor":Ljava/util/concurrent/Executor;
    if-nez v1, :cond_0

    .line 1344
    invoke-direct {p0, p1, p2}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->updateCallbackLocked(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Ljava/util/concurrent/Executor;)V

    .line 1348
    :cond_0
    iget-object v2, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCameraService:Landroid/hardware/ICameraService;

    if-nez v2, :cond_1

    .line 1349
    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->scheduleCameraServiceReconnectionLocked()V

    .line 1351
    .end local v1    # "oldExecutor":Ljava/util/concurrent/Executor;
    :cond_1
    monitor-exit v0

    .line 1352
    return-void

    .line 1351
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public registerPreviewStartedCallback(Landroid/hardware/camera2/CameraManager$PreviewStartedCallback;Landroid/os/Handler;)V
    .locals 4
    .param p1, "callback"    # Landroid/hardware/camera2/CameraManager$PreviewStartedCallback;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 1374
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1376
    :try_start_0
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mPreviewStartedCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Handler;

    .line 1377
    .local v1, "oldHandler":Landroid/os/Handler;
    const-string v2, "CameraManagerGlobal"

    const-string/jumbo v3, "registerPreviewStartedCallback "

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1378
    .end local v1    # "oldHandler":Landroid/os/Handler;
    monitor-exit v0

    .line 1379
    return-void

    .line 1378
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public registerTorchCallback(Landroid/hardware/camera2/CameraManager$TorchCallback;Ljava/util/concurrent/Executor;)V
    .locals 3
    .param p1, "callback"    # Landroid/hardware/camera2/CameraManager$TorchCallback;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .line 1387
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1388
    :try_start_0
    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->connectCameraServiceLocked()V

    .line 1390
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mTorchCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Executor;

    .line 1392
    .local v1, "oldExecutor":Ljava/util/concurrent/Executor;
    if-nez v1, :cond_0

    .line 1393
    invoke-direct {p0, p1, p2}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->updateTorchCallbackLocked(Landroid/hardware/camera2/CameraManager$TorchCallback;Ljava/util/concurrent/Executor;)V

    .line 1397
    :cond_0
    iget-object v2, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCameraService:Landroid/hardware/ICameraService;

    if-nez v2, :cond_1

    .line 1398
    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->scheduleCameraServiceReconnectionLocked()V

    .line 1400
    .end local v1    # "oldExecutor":Ljava/util/concurrent/Executor;
    :cond_1
    monitor-exit v0

    .line 1401
    return-void

    .line 1400
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setTorchMode(Ljava/lang/String;Z)V
    .locals 9
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 1019
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1021
    if-eqz p1, :cond_5

    .line 1028
    const/4 v1, 0x0

    .line 1029
    .local v1, "exposeAuxCamera":Z
    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->currentOpPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1030
    .local v2, "packageName":Ljava/lang/String;
    const-string/jumbo v3, "vendor.camera.aux.packagelist"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1031
    .local v3, "packageList":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 1032
    new-instance v4, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v5, 0x2c

    invoke-direct {v4, v5}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 1033
    .local v4, "splitter":Landroid/text/TextUtils$StringSplitter;
    invoke-interface {v4, v3}, Landroid/text/TextUtils$StringSplitter;->setString(Ljava/lang/String;)V

    .line 1034
    invoke-interface {v4}, Landroid/text/TextUtils$StringSplitter;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1035
    .local v6, "str":Ljava/lang/String;
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1036
    const/4 v1, 0x1

    .line 1037
    goto :goto_1

    .line 1039
    .end local v6    # "str":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 1041
    .end local v4    # "splitter":Landroid/text/TextUtils$StringSplitter;
    :cond_1
    :goto_1
    const/4 v4, 0x2

    if-nez v1, :cond_3

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-ge v5, v4, :cond_2

    goto :goto_2

    .line 1042
    :cond_2
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "invalid cameraId"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1045
    :cond_3
    :goto_2
    invoke-virtual {p0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->getCameraService()Landroid/hardware/ICameraService;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1046
    .local v5, "cameraService":Landroid/hardware/ICameraService;
    if-eqz v5, :cond_4

    .line 1052
    :try_start_1
    iget-object v6, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mTorchClientBinder:Landroid/os/Binder;

    invoke-interface {v5, p1, p2, v6}, Landroid/hardware/ICameraService;->setTorchMode(Ljava/lang/String;ZLandroid/os/IBinder;)V
    :try_end_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1058
    :goto_3
    goto :goto_4

    .line 1055
    :catch_0
    move-exception v6

    .line 1056
    .local v6, "e":Landroid/os/RemoteException;
    :try_start_2
    new-instance v7, Landroid/hardware/camera2/CameraAccessException;

    const-string v8, "Camera service is currently unavailable"

    invoke-direct {v7, v4, v8}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;)V

    throw v7

    .line 1053
    .end local v6    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v4

    .line 1054
    .local v4, "e":Landroid/os/ServiceSpecificException;
    invoke-static {v4}, Landroid/hardware/camera2/CameraManager;->throwAsPublicException(Ljava/lang/Throwable;)V

    .line 1054
    .end local v4    # "e":Landroid/os/ServiceSpecificException;
    goto :goto_3

    .line 1059
    .end local v1    # "exposeAuxCamera":Z
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v3    # "packageList":Ljava/lang/String;
    .end local v5    # "cameraService":Landroid/hardware/ICameraService;
    :goto_4
    monitor-exit v0

    .line 1060
    return-void

    .line 1047
    .restart local v1    # "exposeAuxCamera":Z
    .restart local v2    # "packageName":Ljava/lang/String;
    .restart local v3    # "packageList":Ljava/lang/String;
    .restart local v5    # "cameraService":Landroid/hardware/ICameraService;
    :cond_4
    new-instance v6, Landroid/hardware/camera2/CameraAccessException;

    const-string v7, "Camera service is currently unavailable"

    invoke-direct {v6, v4, v7}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;)V

    throw v6

    .line 1022
    .end local v1    # "exposeAuxCamera":Z
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v3    # "packageList":Ljava/lang/String;
    .end local v5    # "cameraService":Landroid/hardware/ICameraService;
    :cond_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "cameraId was null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1059
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public unregisterAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;)V
    .locals 2
    .param p1, "callback"    # Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

    .line 1361
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1362
    :try_start_0
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1363
    monitor-exit v0

    .line 1364
    return-void

    .line 1363
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public unregisterPreviewStartedCallback(Landroid/hardware/camera2/CameraManager$PreviewStartedCallback;)V
    .locals 2
    .param p1, "callback"    # Landroid/hardware/camera2/CameraManager$PreviewStartedCallback;

    .line 1382
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1383
    :try_start_0
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mPreviewStartedCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1384
    monitor-exit v0

    .line 1385
    return-void

    .line 1384
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public unregisterTorchCallback(Landroid/hardware/camera2/CameraManager$TorchCallback;)V
    .locals 2
    .param p1, "callback"    # Landroid/hardware/camera2/CameraManager$TorchCallback;

    .line 1404
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1405
    :try_start_0
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mTorchCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1406
    monitor-exit v0

    .line 1407
    return-void

    .line 1406
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
