.class Lcn/nubia/server/screenswitch/ScreenSwitchService$LocalService$1;
.super Ljava/lang/Object;
.source "ScreenSwitchService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/server/screenswitch/ScreenSwitchService$LocalService;->setDualFingerprintPress(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/server/screenswitch/ScreenSwitchService$LocalService;

.field final synthetic val$pressed:Z


# direct methods
.method constructor <init>(Lcn/nubia/server/screenswitch/ScreenSwitchService$LocalService;Z)V
    .locals 0
    .param p1, "this$1"    # Lcn/nubia/server/screenswitch/ScreenSwitchService$LocalService;

    .line 1392
    iput-object p1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$LocalService$1;->this$1:Lcn/nubia/server/screenswitch/ScreenSwitchService$LocalService;

    iput-boolean p2, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$LocalService$1;->val$pressed:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1394
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$LocalService$1;->this$1:Lcn/nubia/server/screenswitch/ScreenSwitchService$LocalService;

    iget-object v0, v0, Lcn/nubia/server/screenswitch/ScreenSwitchService$LocalService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    iget-boolean v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$LocalService$1;->val$pressed:Z

    invoke-static {v0, v1}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$9202(Lcn/nubia/server/screenswitch/ScreenSwitchService;Z)Z

    .line 1395
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$LocalService$1;->this$1:Lcn/nubia/server/screenswitch/ScreenSwitchService$LocalService;

    iget-object v0, v0, Lcn/nubia/server/screenswitch/ScreenSwitchService$LocalService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    invoke-static {v0}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$9200(Lcn/nubia/server/screenswitch/ScreenSwitchService;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$LocalService$1;->this$1:Lcn/nubia/server/screenswitch/ScreenSwitchService$LocalService;

    iget-object v0, v0, Lcn/nubia/server/screenswitch/ScreenSwitchService$LocalService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    invoke-static {v0}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$3900(Lcn/nubia/server/screenswitch/ScreenSwitchService;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1396
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$LocalService$1;->this$1:Lcn/nubia/server/screenswitch/ScreenSwitchService$LocalService;

    iget-object v0, v0, Lcn/nubia/server/screenswitch/ScreenSwitchService$LocalService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    invoke-static {v0}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$1000(Lcn/nubia/server/screenswitch/ScreenSwitchService;)Lcn/nubia/server/screenswitch/MotionDetector;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/server/screenswitch/MotionDetector;->enable()V

    .line 1397
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$LocalService$1;->this$1:Lcn/nubia/server/screenswitch/ScreenSwitchService$LocalService;

    iget-object v0, v0, Lcn/nubia/server/screenswitch/ScreenSwitchService$LocalService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    invoke-static {v0}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$4000(Lcn/nubia/server/screenswitch/ScreenSwitchService;)Lcn/nubia/server/screenswitch/ScreenSwitchService$DialogController;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$LocalService$1;->this$1:Lcn/nubia/server/screenswitch/ScreenSwitchService$LocalService;

    iget-object v1, v1, Lcn/nubia/server/screenswitch/ScreenSwitchService$LocalService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    invoke-static {v1}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$9300(Lcn/nubia/server/screenswitch/ScreenSwitchService;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$LocalService$1;->this$1:Lcn/nubia/server/screenswitch/ScreenSwitchService$LocalService;

    iget-object v1, v1, Lcn/nubia/server/screenswitch/ScreenSwitchService$LocalService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    invoke-static {v1}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$2000(Lcn/nubia/server/screenswitch/ScreenSwitchService;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcn/nubia/server/screenswitch/ScreenSwitchService$DialogController;->postShowDoubleFPAnim(Z)V

    goto :goto_1

    .line 1399
    :cond_1
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$LocalService$1;->this$1:Lcn/nubia/server/screenswitch/ScreenSwitchService$LocalService;

    iget-object v0, v0, Lcn/nubia/server/screenswitch/ScreenSwitchService$LocalService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    invoke-static {v0}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$1000(Lcn/nubia/server/screenswitch/ScreenSwitchService;)Lcn/nubia/server/screenswitch/MotionDetector;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/server/screenswitch/MotionDetector;->disable()V

    .line 1400
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$LocalService$1;->this$1:Lcn/nubia/server/screenswitch/ScreenSwitchService$LocalService;

    iget-object v0, v0, Lcn/nubia/server/screenswitch/ScreenSwitchService$LocalService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    invoke-static {v0}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$4000(Lcn/nubia/server/screenswitch/ScreenSwitchService;)Lcn/nubia/server/screenswitch/ScreenSwitchService$DialogController;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/server/screenswitch/ScreenSwitchService$DialogController;->postCloseDoubleFPAnim()V

    .line 1402
    :goto_1
    return-void
.end method
