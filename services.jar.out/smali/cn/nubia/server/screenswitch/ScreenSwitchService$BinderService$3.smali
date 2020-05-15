.class Lcn/nubia/server/screenswitch/ScreenSwitchService$BinderService$3;
.super Ljava/lang/Object;
.source "ScreenSwitchService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/screenswitch/ScreenSwitchService$BinderService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/server/screenswitch/ScreenSwitchService$BinderService;


# direct methods
.method constructor <init>(Lcn/nubia/server/screenswitch/ScreenSwitchService$BinderService;)V
    .locals 0
    .param p1, "this$1"    # Lcn/nubia/server/screenswitch/ScreenSwitchService$BinderService;

    .line 1113
    iput-object p1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$BinderService$3;->this$1:Lcn/nubia/server/screenswitch/ScreenSwitchService$BinderService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1115
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$BinderService$3;->this$1:Lcn/nubia/server/screenswitch/ScreenSwitchService$BinderService;

    iget-object v0, v0, Lcn/nubia/server/screenswitch/ScreenSwitchService$BinderService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    invoke-static {v0}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$200(Lcn/nubia/server/screenswitch/ScreenSwitchService;)Lnubia/os/screenswitch/ScreenSwitchInternal$ScreenFaceUpListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1116
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$BinderService$3;->this$1:Lcn/nubia/server/screenswitch/ScreenSwitchService$BinderService;

    iget-object v0, v0, Lcn/nubia/server/screenswitch/ScreenSwitchService$BinderService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    invoke-static {v0}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$200(Lcn/nubia/server/screenswitch/ScreenSwitchService;)Lnubia/os/screenswitch/ScreenSwitchInternal$ScreenFaceUpListener;

    move-result-object v0

    invoke-interface {v0}, Lnubia/os/screenswitch/ScreenSwitchInternal$ScreenFaceUpListener;->onDataInvalid()V

    .line 1118
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$BinderService$3;->this$1:Lcn/nubia/server/screenswitch/ScreenSwitchService$BinderService;

    iget-object v0, v0, Lcn/nubia/server/screenswitch/ScreenSwitchService$BinderService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    invoke-static {v0}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$8000(Lcn/nubia/server/screenswitch/ScreenSwitchService;)Lcn/nubia/server/screenswitch/DaemonDetector;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/server/screenswitch/DaemonDetector;->disable()V

    .line 1119
    return-void
.end method
