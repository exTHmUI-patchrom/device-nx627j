.class Landroid/hardware/camera2/legacy/LegacyCameraDevice$1$6;
.super Ljava/lang/Object;
.source "LegacyCameraDevice.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/camera2/legacy/LegacyCameraDevice$1;->onRepeatingRequestError(JI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/hardware/camera2/legacy/LegacyCameraDevice$1;

.field final synthetic val$lastFrameNumber:J

.field final synthetic val$repeatingRequestId:I


# direct methods
.method constructor <init>(Landroid/hardware/camera2/legacy/LegacyCameraDevice$1;JI)V
    .locals 0
    .param p1, "this$1"    # Landroid/hardware/camera2/legacy/LegacyCameraDevice$1;

    .line 270
    iput-object p1, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice$1$6;->this$1:Landroid/hardware/camera2/legacy/LegacyCameraDevice$1;

    iput-wide p2, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice$1$6;->val$lastFrameNumber:J

    iput p4, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice$1$6;->val$repeatingRequestId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 277
    :try_start_0
    iget-object v0, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice$1$6;->this$1:Landroid/hardware/camera2/legacy/LegacyCameraDevice$1;

    iget-object v0, v0, Landroid/hardware/camera2/legacy/LegacyCameraDevice$1;->this$0:Landroid/hardware/camera2/legacy/LegacyCameraDevice;

    invoke-static {v0}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->access$200(Landroid/hardware/camera2/legacy/LegacyCameraDevice;)Landroid/hardware/camera2/ICameraDeviceCallbacks;

    move-result-object v0

    iget-wide v1, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice$1$6;->val$lastFrameNumber:J

    iget v3, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice$1$6;->val$repeatingRequestId:I

    invoke-interface {v0, v1, v2, v3}, Landroid/hardware/camera2/ICameraDeviceCallbacks;->onRepeatingRequestError(JI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 283
    nop

    .line 284
    return-void

    .line 279
    :catch_0
    move-exception v0

    .line 280
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Received remote exception during onRepeatingRequestError callback: "

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
