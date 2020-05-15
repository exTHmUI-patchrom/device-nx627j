.class Lcn/nubia/server/appmgmt/ApplicationManagerService$1;
.super Ljava/lang/Object;
.source "ApplicationManagerService.java"

# interfaces
.implements Lcn/nubia/server/appmgmt/LogSwitchReceiver$INBLogSwitcher;


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

    .line 149
    iput-object p1, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$1;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public closeAppmgmtLog()V
    .locals 2

    .line 158
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$1;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$000(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcn/nubia/server/appmgmt/ApplicationManagerConfig;->MONKEY_DEBUG:Z

    if-nez v0, :cond_0

    .line 159
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$1;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$000(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->enableLog(Z)V

    .line 161
    :cond_0
    return-void
.end method

.method public openAppmgmtLog()V
    .locals 2

    .line 152
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$1;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$000(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcn/nubia/server/appmgmt/ApplicationManagerConfig;->MONKEY_DEBUG:Z

    if-nez v0, :cond_0

    .line 153
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$1;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$000(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->enableLog(Z)V

    .line 155
    :cond_0
    return-void
.end method
