.class Landroid/hardware/camera2/legacy/GLThreadManager$1;
.super Ljava/lang/Object;
.source "GLThreadManager.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/legacy/GLThreadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mCleanup:Z

.field private mConfigured:Z

.field private mDroppingFrames:Z

.field final synthetic this$0:Landroid/hardware/camera2/legacy/GLThreadManager;


# direct methods
.method constructor <init>(Landroid/hardware/camera2/legacy/GLThreadManager;)V
    .locals 1
    .param p1, "this$0"    # Landroid/hardware/camera2/legacy/GLThreadManager;

    .line 73
    iput-object p1, p0, Landroid/hardware/camera2/legacy/GLThreadManager$1;->this$0:Landroid/hardware/camera2/legacy/GLThreadManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/camera2/legacy/GLThreadManager$1;->mCleanup:Z

    .line 75
    iput-boolean v0, p0, Landroid/hardware/camera2/legacy/GLThreadManager$1;->mConfigured:Z

    .line 76
    iput-boolean v0, p0, Landroid/hardware/camera2/legacy/GLThreadManager$1;->mDroppingFrames:Z

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 81
    iget-boolean v0, p0, Landroid/hardware/camera2/legacy/GLThreadManager$1;->mCleanup:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 82
    return v1

    .line 85
    :cond_0
    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_3

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    .line 122
    iget-object v0, p0, Landroid/hardware/camera2/legacy/GLThreadManager$1;->this$0:Landroid/hardware/camera2/legacy/GLThreadManager;

    invoke-static {v0}, Landroid/hardware/camera2/legacy/GLThreadManager;->access$200(Landroid/hardware/camera2/legacy/GLThreadManager;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unhandled message "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " on GLThread."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 116
    :pswitch_0
    iput-boolean v2, p0, Landroid/hardware/camera2/legacy/GLThreadManager$1;->mDroppingFrames:Z

    .line 117
    goto :goto_0

    .line 113
    :pswitch_1
    iput-boolean v1, p0, Landroid/hardware/camera2/legacy/GLThreadManager$1;->mDroppingFrames:Z

    .line 114
    goto :goto_0

    .line 108
    :pswitch_2
    iget-object v0, p0, Landroid/hardware/camera2/legacy/GLThreadManager$1;->this$0:Landroid/hardware/camera2/legacy/GLThreadManager;

    invoke-static {v0}, Landroid/hardware/camera2/legacy/GLThreadManager;->access$000(Landroid/hardware/camera2/legacy/GLThreadManager;)Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->cleanupEGLContext()V

    .line 109
    iput-boolean v1, p0, Landroid/hardware/camera2/legacy/GLThreadManager$1;->mCleanup:Z

    .line 110
    iput-boolean v2, p0, Landroid/hardware/camera2/legacy/GLThreadManager$1;->mConfigured:Z

    .line 111
    goto :goto_0

    .line 95
    :pswitch_3
    iget-boolean v0, p0, Landroid/hardware/camera2/legacy/GLThreadManager$1;->mDroppingFrames:Z

    if-eqz v0, :cond_1

    .line 96
    iget-object v0, p0, Landroid/hardware/camera2/legacy/GLThreadManager$1;->this$0:Landroid/hardware/camera2/legacy/GLThreadManager;

    invoke-static {v0}, Landroid/hardware/camera2/legacy/GLThreadManager;->access$200(Landroid/hardware/camera2/legacy/GLThreadManager;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Ignoring frame."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    goto :goto_0

    .line 102
    :cond_1
    iget-boolean v0, p0, Landroid/hardware/camera2/legacy/GLThreadManager$1;->mConfigured:Z

    if-nez v0, :cond_2

    .line 103
    iget-object v0, p0, Landroid/hardware/camera2/legacy/GLThreadManager$1;->this$0:Landroid/hardware/camera2/legacy/GLThreadManager;

    invoke-static {v0}, Landroid/hardware/camera2/legacy/GLThreadManager;->access$200(Landroid/hardware/camera2/legacy/GLThreadManager;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Dropping frame, EGL context not configured!"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    :cond_2
    iget-object v0, p0, Landroid/hardware/camera2/legacy/GLThreadManager$1;->this$0:Landroid/hardware/camera2/legacy/GLThreadManager;

    invoke-static {v0}, Landroid/hardware/camera2/legacy/GLThreadManager;->access$000(Landroid/hardware/camera2/legacy/GLThreadManager;)Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;

    move-result-object v0

    iget-object v2, p0, Landroid/hardware/camera2/legacy/GLThreadManager$1;->this$0:Landroid/hardware/camera2/legacy/GLThreadManager;

    invoke-static {v2}, Landroid/hardware/camera2/legacy/GLThreadManager;->access$100(Landroid/hardware/camera2/legacy/GLThreadManager;)Landroid/hardware/camera2/legacy/CaptureCollector;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->drawIntoSurfaces(Landroid/hardware/camera2/legacy/CaptureCollector;)V

    .line 106
    goto :goto_0

    .line 87
    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/camera2/legacy/GLThreadManager$ConfigureHolder;

    .line 88
    .local v0, "configure":Landroid/hardware/camera2/legacy/GLThreadManager$ConfigureHolder;
    iget-object v2, p0, Landroid/hardware/camera2/legacy/GLThreadManager$1;->this$0:Landroid/hardware/camera2/legacy/GLThreadManager;

    invoke-static {v2}, Landroid/hardware/camera2/legacy/GLThreadManager;->access$000(Landroid/hardware/camera2/legacy/GLThreadManager;)Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->cleanupEGLContext()V

    .line 89
    iget-object v2, p0, Landroid/hardware/camera2/legacy/GLThreadManager$1;->this$0:Landroid/hardware/camera2/legacy/GLThreadManager;

    invoke-static {v2}, Landroid/hardware/camera2/legacy/GLThreadManager;->access$000(Landroid/hardware/camera2/legacy/GLThreadManager;)Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;

    move-result-object v2

    iget-object v3, v0, Landroid/hardware/camera2/legacy/GLThreadManager$ConfigureHolder;->surfaces:Ljava/util/Collection;

    invoke-virtual {v2, v3}, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->configureSurfaces(Ljava/util/Collection;)V

    .line 90
    iget-object v2, p0, Landroid/hardware/camera2/legacy/GLThreadManager$1;->this$0:Landroid/hardware/camera2/legacy/GLThreadManager;

    iget-object v3, v0, Landroid/hardware/camera2/legacy/GLThreadManager$ConfigureHolder;->collector:Landroid/hardware/camera2/legacy/CaptureCollector;

    invoke-static {v3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/camera2/legacy/CaptureCollector;

    invoke-static {v2, v3}, Landroid/hardware/camera2/legacy/GLThreadManager;->access$102(Landroid/hardware/camera2/legacy/GLThreadManager;Landroid/hardware/camera2/legacy/CaptureCollector;)Landroid/hardware/camera2/legacy/CaptureCollector;

    .line 91
    iget-object v2, v0, Landroid/hardware/camera2/legacy/GLThreadManager$ConfigureHolder;->condition:Landroid/os/ConditionVariable;

    invoke-virtual {v2}, Landroid/os/ConditionVariable;->open()V

    .line 92
    iput-boolean v1, p0, Landroid/hardware/camera2/legacy/GLThreadManager$1;->mConfigured:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    goto :goto_0

    .line 120
    .end local v0    # "configure":Landroid/hardware/camera2/legacy/GLThreadManager$ConfigureHolder;
    :cond_3
    nop

    .line 128
    :goto_0
    goto :goto_1

    .line 125
    :catch_0
    move-exception v0

    .line 126
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Landroid/hardware/camera2/legacy/GLThreadManager$1;->this$0:Landroid/hardware/camera2/legacy/GLThreadManager;

    invoke-static {v2}, Landroid/hardware/camera2/legacy/GLThreadManager;->access$200(Landroid/hardware/camera2/legacy/GLThreadManager;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Received exception on GL render thread: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 127
    iget-object v2, p0, Landroid/hardware/camera2/legacy/GLThreadManager$1;->this$0:Landroid/hardware/camera2/legacy/GLThreadManager;

    invoke-static {v2}, Landroid/hardware/camera2/legacy/GLThreadManager;->access$300(Landroid/hardware/camera2/legacy/GLThreadManager;)Landroid/hardware/camera2/legacy/CameraDeviceState;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/hardware/camera2/legacy/CameraDeviceState;->setError(I)V

    .line 129
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
