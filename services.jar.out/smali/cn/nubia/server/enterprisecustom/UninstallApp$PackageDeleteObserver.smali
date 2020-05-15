.class Lcn/nubia/server/enterprisecustom/UninstallApp$PackageDeleteObserver;
.super Landroid/content/pm/IPackageDeleteObserver$Stub;
.source "UninstallApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/enterprisecustom/UninstallApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PackageDeleteObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/enterprisecustom/UninstallApp;


# direct methods
.method constructor <init>(Lcn/nubia/server/enterprisecustom/UninstallApp;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/server/enterprisecustom/UninstallApp;

    .line 62
    iput-object p1, p0, Lcn/nubia/server/enterprisecustom/UninstallApp$PackageDeleteObserver;->this$0:Lcn/nubia/server/enterprisecustom/UninstallApp;

    invoke-direct {p0}, Landroid/content/pm/IPackageDeleteObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public packageDeleted(Ljava/lang/String;I)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "returnCode"    # I

    .line 64
    const/4 v0, -0x4

    if-eq p2, v0, :cond_2

    const/4 v0, -0x2

    if-eq p2, v0, :cond_1

    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    .line 78
    const-string v0, "enterprisecustom_UninstallAppService"

    const-string v1, "DELETE_FAILED_OTHERS"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 66
    :cond_0
    const-string v0, "enterprisecustom_UninstallAppService"

    const-string v1, "PackageManager.DELETE_SUCCEEDED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    goto :goto_0

    .line 70
    :cond_1
    const-string v0, "enterprisecustom_UninstallAppService"

    const-string v1, "DELETE_FAILED_DEVICE_POLICY_MANAGER"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    goto :goto_0

    .line 74
    :cond_2
    const-string v0, "enterprisecustom_UninstallAppService"

    const-string v1, "DELETE_FAILED_OWNER_BLOCKED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    nop

    .line 82
    :goto_0
    iget-object v0, p0, Lcn/nubia/server/enterprisecustom/UninstallApp$PackageDeleteObserver;->this$0:Lcn/nubia/server/enterprisecustom/UninstallApp;

    invoke-static {v0}, Lcn/nubia/server/enterprisecustom/UninstallApp;->access$000(Lcn/nubia/server/enterprisecustom/UninstallApp;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 83
    .local v0, "pm":Landroid/os/PowerManager;
    iget-object v1, p0, Lcn/nubia/server/enterprisecustom/UninstallApp$PackageDeleteObserver;->this$0:Lcn/nubia/server/enterprisecustom/UninstallApp;

    invoke-static {v1}, Lcn/nubia/server/enterprisecustom/UninstallApp;->access$100(Lcn/nubia/server/enterprisecustom/UninstallApp;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    .line 84
    return-void
.end method
