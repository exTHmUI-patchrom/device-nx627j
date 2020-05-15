.class Lcn/nubia/server/appmgmt/MotionDozeController$1;
.super Landroid/hardware/TriggerEventListener;
.source "MotionDozeController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/appmgmt/MotionDozeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/appmgmt/MotionDozeController;


# direct methods
.method constructor <init>(Lcn/nubia/server/appmgmt/MotionDozeController;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/server/appmgmt/MotionDozeController;

    .line 252
    iput-object p1, p0, Lcn/nubia/server/appmgmt/MotionDozeController$1;->this$0:Lcn/nubia/server/appmgmt/MotionDozeController;

    invoke-direct {p0}, Landroid/hardware/TriggerEventListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onTrigger(Landroid/hardware/TriggerEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/hardware/TriggerEvent;

    .line 255
    iget-object v0, p0, Lcn/nubia/server/appmgmt/MotionDozeController$1;->this$0:Lcn/nubia/server/appmgmt/MotionDozeController;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/nubia/server/appmgmt/MotionDozeController;->access$602(Lcn/nubia/server/appmgmt/MotionDozeController;Z)Z

    .line 256
    iget-object v0, p0, Lcn/nubia/server/appmgmt/MotionDozeController$1;->this$0:Lcn/nubia/server/appmgmt/MotionDozeController;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/MotionDozeController;->access$300(Lcn/nubia/server/appmgmt/MotionDozeController;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 257
    const-string v0, "MotionDozeController"

    const-string/jumbo v1, "mSigMotionListener::onTrigger "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/MotionDozeController$1;->this$0:Lcn/nubia/server/appmgmt/MotionDozeController;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/MotionDozeController;->access$500(Lcn/nubia/server/appmgmt/MotionDozeController;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/server/appmgmt/MotionDozeController$1;->this$0:Lcn/nubia/server/appmgmt/MotionDozeController;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/MotionDozeController;->access$400(Lcn/nubia/server/appmgmt/MotionDozeController;)Lcn/nubia/server/appmgmt/MotionDozeController$AdjustStateRunnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 260
    return-void
.end method
