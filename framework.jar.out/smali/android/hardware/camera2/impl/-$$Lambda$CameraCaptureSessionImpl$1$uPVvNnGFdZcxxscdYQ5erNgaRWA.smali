.class public final synthetic Landroid/hardware/camera2/impl/-$$Lambda$CameraCaptureSessionImpl$1$uPVvNnGFdZcxxscdYQ5erNgaRWA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;

.field private final synthetic f$1:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

.field private final synthetic f$2:Landroid/hardware/camera2/CaptureRequest;

.field private final synthetic f$3:J

.field private final synthetic f$4:J


# direct methods
.method public synthetic constructor <init>(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/hardware/camera2/CaptureRequest;JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/camera2/impl/-$$Lambda$CameraCaptureSessionImpl$1$uPVvNnGFdZcxxscdYQ5erNgaRWA;->f$0:Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;

    iput-object p2, p0, Landroid/hardware/camera2/impl/-$$Lambda$CameraCaptureSessionImpl$1$uPVvNnGFdZcxxscdYQ5erNgaRWA;->f$1:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    iput-object p3, p0, Landroid/hardware/camera2/impl/-$$Lambda$CameraCaptureSessionImpl$1$uPVvNnGFdZcxxscdYQ5erNgaRWA;->f$2:Landroid/hardware/camera2/CaptureRequest;

    iput-wide p4, p0, Landroid/hardware/camera2/impl/-$$Lambda$CameraCaptureSessionImpl$1$uPVvNnGFdZcxxscdYQ5erNgaRWA;->f$3:J

    iput-wide p6, p0, Landroid/hardware/camera2/impl/-$$Lambda$CameraCaptureSessionImpl$1$uPVvNnGFdZcxxscdYQ5erNgaRWA;->f$4:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Landroid/hardware/camera2/impl/-$$Lambda$CameraCaptureSessionImpl$1$uPVvNnGFdZcxxscdYQ5erNgaRWA;->f$0:Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;

    iget-object v1, p0, Landroid/hardware/camera2/impl/-$$Lambda$CameraCaptureSessionImpl$1$uPVvNnGFdZcxxscdYQ5erNgaRWA;->f$1:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    iget-object v2, p0, Landroid/hardware/camera2/impl/-$$Lambda$CameraCaptureSessionImpl$1$uPVvNnGFdZcxxscdYQ5erNgaRWA;->f$2:Landroid/hardware/camera2/CaptureRequest;

    iget-wide v3, p0, Landroid/hardware/camera2/impl/-$$Lambda$CameraCaptureSessionImpl$1$uPVvNnGFdZcxxscdYQ5erNgaRWA;->f$3:J

    iget-wide v5, p0, Landroid/hardware/camera2/impl/-$$Lambda$CameraCaptureSessionImpl$1$uPVvNnGFdZcxxscdYQ5erNgaRWA;->f$4:J

    invoke-static/range {v0 .. v6}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;->lambda$onCaptureStarted$0(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/hardware/camera2/CaptureRequest;JJ)V

    return-void
.end method
