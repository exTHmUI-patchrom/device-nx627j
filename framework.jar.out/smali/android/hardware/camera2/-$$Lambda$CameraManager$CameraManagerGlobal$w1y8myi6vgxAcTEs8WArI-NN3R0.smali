.class public final synthetic Landroid/hardware/camera2/-$$Lambda$CameraManager$CameraManagerGlobal$w1y8myi6vgxAcTEs8WArI-NN3R0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;


# direct methods
.method public synthetic constructor <init>(Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/camera2/-$$Lambda$CameraManager$CameraManagerGlobal$w1y8myi6vgxAcTEs8WArI-NN3R0;->f$0:Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Landroid/hardware/camera2/-$$Lambda$CameraManager$CameraManagerGlobal$w1y8myi6vgxAcTEs8WArI-NN3R0;->f$0:Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    invoke-static {v0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->lambda$scheduleCameraServiceReconnectionLocked$2(Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;)V

    return-void
.end method
