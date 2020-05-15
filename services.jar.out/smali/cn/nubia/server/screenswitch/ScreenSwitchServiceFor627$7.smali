.class Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$7;
.super Ljava/lang/Object;
.source "ScreenSwitchServiceFor627.java"

# interfaces
.implements Lcn/nubia/server/screenswitch/MotionDetector$MotionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->initMotionDetector()V
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

    .line 474
    iput-object p1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$7;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMotionChange(I)V
    .locals 4
    .param p1, "displayId"    # I

    .line 477
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$7;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$2800(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$7;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$2900(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$7;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    .line 478
    invoke-static {v0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$3000(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 479
    :cond_1
    invoke-static {}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$1200()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 480
    const-string v0, "ScreenSwitchService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DoubleScreen start displayId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    :cond_2
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$7;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v0, p1}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$3100(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;I)V

    .line 483
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$7;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$3200(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)V

    .line 485
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$7;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$3300(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Landroid/os/PowerManager;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 486
    invoke-static {}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$1200()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 487
    const-string v0, "ScreenSwitchService"

    const-string v1, "DoubleScreen end"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    :cond_3
    return-void
.end method
