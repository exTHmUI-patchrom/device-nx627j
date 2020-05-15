.class Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$2;
.super Landroid/hardware/camera2/impl/CameraDeviceImpl$StateCallbackKK;
.source "CameraCaptureSessionImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->getDeviceStateCallback()Landroid/hardware/camera2/impl/CameraDeviceImpl$StateCallbackKK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mActive:Z

.field private mBusy:Z

.field final synthetic this$0:Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

.field final synthetic val$interfaceLock:Ljava/lang/Object;

.field final synthetic val$session:Landroid/hardware/camera2/CameraCaptureSession;


# direct methods
.method constructor <init>(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;Landroid/hardware/camera2/CameraCaptureSession;Ljava/lang/Object;)V
    .locals 0
    .param p1, "this$0"    # Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

    .line 726
    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$2;->this$0:Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

    iput-object p2, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$2;->val$session:Landroid/hardware/camera2/CameraCaptureSession;

    iput-object p3, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$2;->val$interfaceLock:Ljava/lang/Object;

    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl$StateCallbackKK;-><init>()V

    .line 727
    const/4 p2, 0x0

    iput-boolean p2, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$2;->mBusy:Z

    .line 728
    iput-boolean p2, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$2;->mActive:Z

    return-void
.end method


# virtual methods
.method public onActive(Landroid/hardware/camera2/CameraDevice;)V
    .locals 2
    .param p1, "camera"    # Landroid/hardware/camera2/CameraDevice;

    .line 749
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$2;->this$0:Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->access$500(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;)Landroid/hardware/camera2/utils/TaskSingleDrainer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/camera2/utils/TaskSingleDrainer;->taskStarted()V

    .line 750
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$2;->mActive:Z

    .line 753
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$2;->this$0:Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->access$600(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;)Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$2;->val$session:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;->onActive(Landroid/hardware/camera2/CameraCaptureSession;)V

    .line 754
    return-void
.end method

.method public onBusy(Landroid/hardware/camera2/CameraDevice;)V
    .locals 1
    .param p1, "camera"    # Landroid/hardware/camera2/CameraDevice;

    .line 796
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$2;->mBusy:Z

    .line 802
    return-void
.end method

.method public onDisconnected(Landroid/hardware/camera2/CameraDevice;)V
    .locals 1
    .param p1, "camera"    # Landroid/hardware/camera2/CameraDevice;

    .line 738
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$2;->this$0:Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

    invoke-virtual {v0}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->close()V

    .line 739
    return-void
.end method

.method public onError(Landroid/hardware/camera2/CameraDevice;I)V
    .locals 3
    .param p1, "camera"    # Landroid/hardware/camera2/CameraDevice;
    .param p2, "error"    # I

    .line 744
    const-string v0, "CameraCaptureSession"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$2;->this$0:Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

    invoke-static {v2}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->access$400(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Got device error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    return-void
.end method

.method public onIdle(Landroid/hardware/camera2/CameraDevice;)V
    .locals 4
    .param p1, "camera"    # Landroid/hardware/camera2/CameraDevice;

    .line 761
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$2;->val$interfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 762
    :try_start_0
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$2;->this$0:Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

    invoke-static {v1}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->access$700(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;)Z

    move-result v1

    .line 763
    .local v1, "isAborting":Z
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 776
    iget-boolean v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$2;->mBusy:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 777
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$2;->this$0:Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->access$800(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;)Landroid/hardware/camera2/utils/TaskSingleDrainer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/camera2/utils/TaskSingleDrainer;->taskFinished()V

    .line 779
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$2;->val$interfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 780
    :try_start_1
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$2;->this$0:Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

    invoke-static {v3, v2}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->access$702(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;Z)Z

    .line 781
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 784
    :cond_0
    :goto_0
    iget-boolean v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$2;->mActive:Z

    if-eqz v0, :cond_1

    .line 785
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$2;->this$0:Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->access$500(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;)Landroid/hardware/camera2/utils/TaskSingleDrainer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/camera2/utils/TaskSingleDrainer;->taskFinished()V

    .line 788
    :cond_1
    iput-boolean v2, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$2;->mBusy:Z

    .line 789
    iput-boolean v2, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$2;->mActive:Z

    .line 791
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$2;->this$0:Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->access$600(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;)Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    move-result-object v0

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$2;->val$session:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v0, v2}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;->onReady(Landroid/hardware/camera2/CameraCaptureSession;)V

    .line 792
    return-void

    .line 763
    .end local v1    # "isAborting":Z
    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public onOpened(Landroid/hardware/camera2/CameraDevice;)V
    .locals 2
    .param p1, "camera"    # Landroid/hardware/camera2/CameraDevice;

    .line 732
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Camera must already be open before creating a session"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public onRequestQueueEmpty()V
    .locals 2

    .line 812
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$2;->this$0:Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->access$600(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;)Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$2;->val$session:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;->onCaptureQueueEmpty(Landroid/hardware/camera2/CameraCaptureSession;)V

    .line 813
    return-void
.end method

.method public onSurfacePrepared(Landroid/view/Surface;)V
    .locals 2
    .param p1, "surface"    # Landroid/view/Surface;

    .line 818
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$2;->this$0:Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->access$600(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;)Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$2;->val$session:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v0, v1, p1}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;->onSurfacePrepared(Landroid/hardware/camera2/CameraCaptureSession;Landroid/view/Surface;)V

    .line 819
    return-void
.end method

.method public onUnconfigured(Landroid/hardware/camera2/CameraDevice;)V
    .locals 0
    .param p1, "camera"    # Landroid/hardware/camera2/CameraDevice;

    .line 807
    return-void
.end method
