.class Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$BinderService$1;
.super Ljava/lang/Object;
.source "ScreenSwitchServiceFor627.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$BinderService;->setDialogController(Lnubia/os/screenswitch/IScreenDialogController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$BinderService;

.field final synthetic val$controller:Lnubia/os/screenswitch/IScreenDialogController;


# direct methods
.method constructor <init>(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$BinderService;Lnubia/os/screenswitch/IScreenDialogController;)V
    .locals 0
    .param p1, "this$1"    # Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$BinderService;

    .line 1308
    iput-object p1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$BinderService$1;->this$1:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$BinderService;

    iput-object p2, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$BinderService$1;->val$controller:Lnubia/os/screenswitch/IScreenDialogController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    .line 1311
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$BinderService$1;->this$1:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$BinderService;

    iget-object v0, v0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$BinderService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$5600(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$DialogController;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$BinderService$1;->val$controller:Lnubia/os/screenswitch/IScreenDialogController;

    invoke-virtual {v0, v1}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$DialogController;->isSameBinder(Lnubia/os/screenswitch/IScreenDialogController;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1312
    const-string v0, "ScreenSwitchService"

    const-string v1, "Current remote controller died, unregistering"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1313
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$BinderService$1;->this$1:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$BinderService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$BinderService;->setDialogController(Lnubia/os/screenswitch/IScreenDialogController;)V

    .line 1314
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$BinderService$1;->this$1:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$BinderService;

    iget-object v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$BinderService$1;->this$1:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$BinderService;

    iget-object v1, v1, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$BinderService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v1}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$4500(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)I

    move-result v1

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$BinderService;->setDialogVisibilityChanged(II)V

    .line 1316
    :cond_0
    return-void
.end method
