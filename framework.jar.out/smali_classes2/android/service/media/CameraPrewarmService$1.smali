.class Landroid/service/media/CameraPrewarmService$1;
.super Landroid/os/Handler;
.source "CameraPrewarmService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/media/CameraPrewarmService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/service/media/CameraPrewarmService;


# direct methods
.method constructor <init>(Landroid/service/media/CameraPrewarmService;)V
    .locals 0
    .param p1, "this$0"    # Landroid/service/media/CameraPrewarmService;

    .line 45
    iput-object p1, p0, Landroid/service/media/CameraPrewarmService$1;->this$0:Landroid/service/media/CameraPrewarmService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 49
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 54
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 51
    :cond_0
    iget-object v0, p0, Landroid/service/media/CameraPrewarmService$1;->this$0:Landroid/service/media/CameraPrewarmService;

    invoke-static {v0, v1}, Landroid/service/media/CameraPrewarmService;->access$002(Landroid/service/media/CameraPrewarmService;Z)Z

    .line 52
    nop

    .line 56
    :goto_0
    return-void
.end method
