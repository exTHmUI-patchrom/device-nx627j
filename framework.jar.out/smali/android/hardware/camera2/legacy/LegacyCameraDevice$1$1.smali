.class Landroid/hardware/camera2/legacy/LegacyCameraDevice$1$1;
.super Ljava/lang/Object;
.source "LegacyCameraDevice.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/camera2/legacy/LegacyCameraDevice$1;->onError(ILjava/lang/Object;Landroid/hardware/camera2/legacy/RequestHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/hardware/camera2/legacy/LegacyCameraDevice$1;

.field final synthetic val$errorCode:I

.field final synthetic val$extras:Landroid/hardware/camera2/impl/CaptureResultExtras;

.field final synthetic val$holder:Landroid/hardware/camera2/legacy/RequestHolder;


# direct methods
.method constructor <init>(Landroid/hardware/camera2/legacy/LegacyCameraDevice$1;Landroid/hardware/camera2/legacy/RequestHolder;ILandroid/hardware/camera2/impl/CaptureResultExtras;)V
    .locals 0
    .param p1, "this$1"    # Landroid/hardware/camera2/legacy/LegacyCameraDevice$1;

    .line 147
    iput-object p1, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice$1$1;->this$1:Landroid/hardware/camera2/legacy/LegacyCameraDevice$1;

    iput-object p2, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice$1$1;->val$holder:Landroid/hardware/camera2/legacy/RequestHolder;

    iput p3, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice$1$1;->val$errorCode:I

    iput-object p4, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice$1$1;->val$extras:Landroid/hardware/camera2/impl/CaptureResultExtras;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 155
    :try_start_0
    iget-object v0, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice$1$1;->this$1:Landroid/hardware/camera2/legacy/LegacyCameraDevice$1;

    iget-object v0, v0, Landroid/hardware/camera2/legacy/LegacyCameraDevice$1;->this$0:Landroid/hardware/camera2/legacy/LegacyCameraDevice;

    invoke-static {v0}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->access$200(Landroid/hardware/camera2/legacy/LegacyCameraDevice;)Landroid/hardware/camera2/ICameraDeviceCallbacks;

    move-result-object v0

    iget v1, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice$1$1;->val$errorCode:I

    iget-object v2, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice$1$1;->val$extras:Landroid/hardware/camera2/impl/CaptureResultExtras;

    invoke-interface {v0, v1, v2}, Landroid/hardware/camera2/ICameraDeviceCallbacks;->onDeviceError(ILandroid/hardware/camera2/impl/CaptureResultExtras;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    nop

    .line 160
    return-void

    .line 156
    :catch_0
    move-exception v0

    .line 157
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Received remote exception during onCameraError callback: "

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
