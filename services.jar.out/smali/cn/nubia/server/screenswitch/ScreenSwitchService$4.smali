.class Lcn/nubia/server/screenswitch/ScreenSwitchService$4;
.super Landroid/database/ContentObserver;
.source "ScreenSwitchService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/server/screenswitch/ScreenSwitchService;->watchForDeviceProvisioning()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;


# direct methods
.method constructor <init>(Lcn/nubia/server/screenswitch/ScreenSwitchService;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/server/screenswitch/ScreenSwitchService;
    .param p2, "x0"    # Landroid/os/Handler;

    .line 411
    iput-object p1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$4;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method

.method public static synthetic lambda$onChange$0(Lcn/nubia/server/screenswitch/ScreenSwitchService$4;)V
    .locals 2

    .line 418
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$4;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    invoke-static {v0}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$2300(Lcn/nubia/server/screenswitch/ScreenSwitchService;)Landroid/database/ContentObserver;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 419
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$4;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    invoke-static {v0}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$500(Lcn/nubia/server/screenswitch/ScreenSwitchService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$4;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    invoke-static {v1}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$2300(Lcn/nubia/server/screenswitch/ScreenSwitchService;)Landroid/database/ContentObserver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 421
    :cond_0
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .param p1, "selfChange"    # Z

    .line 414
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 415
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$4;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    iget-object v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$4;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    invoke-static {v1}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$2100(Lcn/nubia/server/screenswitch/ScreenSwitchService;)Z

    move-result v1

    invoke-static {v0, v1}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$2002(Lcn/nubia/server/screenswitch/ScreenSwitchService;Z)Z

    .line 416
    invoke-static {}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$600()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ScreenSwitchService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DEVICE_PROVISIONED state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$4;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    invoke-static {v2}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$2000(Lcn/nubia/server/screenswitch/ScreenSwitchService;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$4;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    invoke-static {v0}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$2200(Lcn/nubia/server/screenswitch/ScreenSwitchService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcn/nubia/server/screenswitch/-$$Lambda$ScreenSwitchService$4$INgSSP3OjNvgeTMT0niQ9kowils;

    invoke-direct {v1, p0}, Lcn/nubia/server/screenswitch/-$$Lambda$ScreenSwitchService$4$INgSSP3OjNvgeTMT0niQ9kowils;-><init>(Lcn/nubia/server/screenswitch/ScreenSwitchService$4;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 422
    return-void
.end method
