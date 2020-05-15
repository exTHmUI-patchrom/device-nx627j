.class Lcn/nubia/server/appmgmt/ApplicationManagerService$3;
.super Landroid/content/BroadcastReceiver;
.source "ApplicationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/appmgmt/ApplicationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;


# direct methods
.method constructor <init>(Lcn/nubia/server/appmgmt/ApplicationManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/server/appmgmt/ApplicationManagerService;

    .line 317
    iput-object p1, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$3;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 320
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 321
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 322
    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$3;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    iget-object v2, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$3;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v2}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$200(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$300(Lcn/nubia/server/appmgmt/ApplicationManagerService;Landroid/content/Context;)V

    .line 324
    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$3;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$200(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager;->isUpgrade()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 325
    const-string v1, "ApplicationManagerService"

    const-string v2, "device rom version has been upgraded"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$3;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$100(Lcn/nubia/server/appmgmt/ApplicationManagerService;)V

    .line 328
    :cond_0
    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$3;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    new-instance v2, Lcn/nubia/server/appmgmt/LogSwitchReceiver;

    iget-object v3, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$3;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v3}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$200(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$3;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v4}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$500(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/LogSwitchReceiver$INBLogSwitcher;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcn/nubia/server/appmgmt/LogSwitchReceiver;-><init>(Landroid/content/Context;Lcn/nubia/server/appmgmt/LogSwitchReceiver$INBLogSwitcher;)V

    invoke-static {v1, v2}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$402(Lcn/nubia/server/appmgmt/ApplicationManagerService;Lcn/nubia/server/appmgmt/LogSwitchReceiver;)Lcn/nubia/server/appmgmt/LogSwitchReceiver;

    .line 329
    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$3;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$000(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 330
    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$3;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$000(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->notifyInitComplete()V

    .line 333
    :cond_1
    return-void
.end method
