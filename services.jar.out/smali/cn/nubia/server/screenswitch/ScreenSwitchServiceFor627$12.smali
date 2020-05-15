.class Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$12;
.super Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
.source "ScreenSwitchServiceFor627.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->initCameraListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;


# direct methods
.method constructor <init>(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    .line 713
    iput-object p1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$12;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCameraAvailable(Ljava/lang/String;)V
    .locals 3
    .param p1, "cameraId"    # Ljava/lang/String;

    .line 717
    invoke-static {}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$1200()Z

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

    .line 718
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$12;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v0, p1}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$6000(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 719
    const-string v0, "1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 720
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$12;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v0, v1}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$6102(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;Z)Z

    goto :goto_0

    .line 721
    :cond_1
    const-string v0, "0"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 722
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$12;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v0, v1}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$6202(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;Z)Z

    .line 724
    :cond_2
    :goto_0
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$12;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$6300(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$12;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$6200(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$12;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$6100(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 725
    :cond_3
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$12;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$5600(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$DialogController;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$DialogController;->postDismissDialog(I)V

    .line 726
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$12;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$4500(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)I

    move-result v0

    if-lt v0, v2, :cond_4

    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$12;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$6400(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 727
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$12;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v0, v1}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$4402(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;Z)Z

    .line 728
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$12;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$4602(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;Landroid/view/IApplicationToken;)Landroid/view/IApplicationToken;

    .line 732
    :cond_4
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$12;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    iget-object v2, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$12;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v2}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$6100(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$12;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v2}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$6200(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_1

    :cond_5
    goto :goto_2

    :cond_6
    :goto_1
    const/4 v1, 0x1

    :goto_2
    invoke-static {v0, v1}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$6500(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;Z)V

    .line 733
    return-void
.end method

.method public onCameraUnavailable(Ljava/lang/String;)V
    .locals 3
    .param p1, "cameraId"    # Ljava/lang/String;

    .line 737
    invoke-static {}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$1200()Z

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

    .line 738
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$12;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$1600(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)V

    .line 739
    return-void
.end method
