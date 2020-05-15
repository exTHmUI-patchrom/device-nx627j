.class Lcn/nubia/server/screenswitch/ScreenSwitchService$7;
.super Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
.source "ScreenSwitchService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/server/screenswitch/ScreenSwitchService;->initCameraListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;


# direct methods
.method constructor <init>(Lcn/nubia/server/screenswitch/ScreenSwitchService;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/server/screenswitch/ScreenSwitchService;

    .line 557
    iput-object p1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$7;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCameraAvailable(Ljava/lang/String;)V
    .locals 3
    .param p1, "cameraId"    # Ljava/lang/String;

    .line 561
    invoke-static {}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$600()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ScreenSwitchService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCameraAvailable cameraId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$7;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    invoke-static {v0, p1}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$4500(Lcn/nubia/server/screenswitch/ScreenSwitchService;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 563
    const-string v0, "1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 564
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$7;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    invoke-static {v0, v1}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$4602(Lcn/nubia/server/screenswitch/ScreenSwitchService;Z)Z

    goto :goto_0

    .line 565
    :cond_1
    const-string v0, "0"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 566
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$7;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    invoke-static {v0, v1}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$4702(Lcn/nubia/server/screenswitch/ScreenSwitchService;Z)Z

    .line 568
    :cond_2
    :goto_0
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$7;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    invoke-static {v0}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$4800(Lcn/nubia/server/screenswitch/ScreenSwitchService;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$7;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    invoke-static {v0}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$4700(Lcn/nubia/server/screenswitch/ScreenSwitchService;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$7;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    invoke-static {v0}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$4600(Lcn/nubia/server/screenswitch/ScreenSwitchService;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 569
    :cond_3
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$7;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    invoke-static {v0}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$4000(Lcn/nubia/server/screenswitch/ScreenSwitchService;)Lcn/nubia/server/screenswitch/ScreenSwitchService$DialogController;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcn/nubia/server/screenswitch/ScreenSwitchService$DialogController;->postDismissDialog(I)V

    .line 570
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$7;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    invoke-static {v0}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$3000(Lcn/nubia/server/screenswitch/ScreenSwitchService;)I

    move-result v0

    if-lt v0, v2, :cond_4

    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$7;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    invoke-static {v0}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$4900(Lcn/nubia/server/screenswitch/ScreenSwitchService;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 571
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$7;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    invoke-static {v0, v1}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$3102(Lcn/nubia/server/screenswitch/ScreenSwitchService;Z)Z

    .line 572
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$7;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$3202(Lcn/nubia/server/screenswitch/ScreenSwitchService;Landroid/view/IApplicationToken;)Landroid/view/IApplicationToken;

    .line 576
    :cond_4
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$7;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    iget-object v2, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$7;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    invoke-static {v2}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$4600(Lcn/nubia/server/screenswitch/ScreenSwitchService;)Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$7;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    invoke-static {v2}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$4700(Lcn/nubia/server/screenswitch/ScreenSwitchService;)Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_1

    :cond_5
    goto :goto_2

    :cond_6
    :goto_1
    const/4 v1, 0x1

    :goto_2
    invoke-static {v0, v1}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$5000(Lcn/nubia/server/screenswitch/ScreenSwitchService;Z)V

    .line 577
    return-void
.end method

.method public onCameraUnavailable(Ljava/lang/String;)V
    .locals 3
    .param p1, "cameraId"    # Ljava/lang/String;

    .line 581
    invoke-static {}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$600()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ScreenSwitchService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCameraUnavailable cameraId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$7;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    invoke-static {v0}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$900(Lcn/nubia/server/screenswitch/ScreenSwitchService;)V

    .line 583
    return-void
.end method
