.class Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper$1;
.super Ljava/lang/Object;
.source "LegacyFaceDetectMapper.java"

# interfaces
.implements Landroid/hardware/Camera$FaceDetectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;-><init>(Landroid/hardware/Camera;Landroid/hardware/camera2/CameraCharacteristics;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;


# direct methods
.method constructor <init>(Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;)V
    .locals 0
    .param p1, "this$0"    # Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;

    .line 84
    iput-object p1, p0, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper$1;->this$0:Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFaceDetection([Landroid/hardware/Camera$Face;Landroid/hardware/Camera;)V
    .locals 4
    .param p1, "faces"    # [Landroid/hardware/Camera$Face;
    .param p2, "camera"    # Landroid/hardware/Camera;

    .line 88
    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    array-length v0, p1

    .line 89
    .local v0, "lengthFaces":I
    :goto_0
    iget-object v1, p0, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper$1;->this$0:Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;

    invoke-static {v1}, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;->access$000(Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 90
    :try_start_0
    iget-object v2, p0, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper$1;->this$0:Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;

    invoke-static {v2}, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;->access$100(Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 91
    iget-object v2, p0, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper$1;->this$0:Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;

    invoke-static {v2, p1}, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;->access$202(Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;[Landroid/hardware/Camera$Face;)[Landroid/hardware/Camera$Face;

    goto :goto_1

    .line 92
    :cond_1
    if-lez v0, :cond_2

    .line 94
    invoke-static {}, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;->access$300()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "onFaceDetection - Ignored some incoming faces sinceface detection was disabled"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :cond_2
    :goto_1
    monitor-exit v1

    .line 103
    return-void

    .line 98
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
