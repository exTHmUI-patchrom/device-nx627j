.class Lcn/nubia/server/appmgmt/permission/MobileNetWorkPermissionMonitor$1;
.super Landroid/content/BroadcastReceiver;
.source "MobileNetWorkPermissionMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/server/appmgmt/permission/MobileNetWorkPermissionMonitor;->registerNetWorkBroadcastReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/appmgmt/permission/MobileNetWorkPermissionMonitor;


# direct methods
.method constructor <init>(Lcn/nubia/server/appmgmt/permission/MobileNetWorkPermissionMonitor;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/server/appmgmt/permission/MobileNetWorkPermissionMonitor;

    .line 67
    iput-object p1, p0, Lcn/nubia/server/appmgmt/permission/MobileNetWorkPermissionMonitor$1;->this$0:Lcn/nubia/server/appmgmt/permission/MobileNetWorkPermissionMonitor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 70
    iget-object v0, p0, Lcn/nubia/server/appmgmt/permission/MobileNetWorkPermissionMonitor$1;->this$0:Lcn/nubia/server/appmgmt/permission/MobileNetWorkPermissionMonitor;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/permission/MobileNetWorkPermissionMonitor;->access$000(Lcn/nubia/server/appmgmt/permission/MobileNetWorkPermissionMonitor;)Z

    move-result v0

    .line 71
    .local v0, "isMobileNetWork":Z
    const-string v1, "MobileNetWorkPermissionMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Network connectivity change pkg : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcn/nubia/server/appmgmt/permission/MobileNetWorkPermissionMonitor$1;->this$0:Lcn/nubia/server/appmgmt/permission/MobileNetWorkPermissionMonitor;

    invoke-static {v3}, Lcn/nubia/server/appmgmt/permission/MobileNetWorkPermissionMonitor;->access$100(Lcn/nubia/server/appmgmt/permission/MobileNetWorkPermissionMonitor;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", isMobileNetWork : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    if-eqz v0, :cond_1

    .line 73
    iget-object v1, p0, Lcn/nubia/server/appmgmt/permission/MobileNetWorkPermissionMonitor$1;->this$0:Lcn/nubia/server/appmgmt/permission/MobileNetWorkPermissionMonitor;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/permission/MobileNetWorkPermissionMonitor;->access$200(Lcn/nubia/server/appmgmt/permission/MobileNetWorkPermissionMonitor;)Ljava/util/Set;

    move-result-object v1

    monitor-enter v1

    .line 75
    :try_start_0
    iget-object v2, p0, Lcn/nubia/server/appmgmt/permission/MobileNetWorkPermissionMonitor$1;->this$0:Lcn/nubia/server/appmgmt/permission/MobileNetWorkPermissionMonitor;

    invoke-static {v2}, Lcn/nubia/server/appmgmt/permission/MobileNetWorkPermissionMonitor;->access$200(Lcn/nubia/server/appmgmt/permission/MobileNetWorkPermissionMonitor;)Ljava/util/Set;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/server/appmgmt/permission/MobileNetWorkPermissionMonitor$1;->this$0:Lcn/nubia/server/appmgmt/permission/MobileNetWorkPermissionMonitor;

    invoke-static {v3}, Lcn/nubia/server/appmgmt/permission/MobileNetWorkPermissionMonitor;->access$100(Lcn/nubia/server/appmgmt/permission/MobileNetWorkPermissionMonitor;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 76
    monitor-exit v1

    return-void

    .line 77
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    iget-object v1, p0, Lcn/nubia/server/appmgmt/permission/MobileNetWorkPermissionMonitor$1;->this$0:Lcn/nubia/server/appmgmt/permission/MobileNetWorkPermissionMonitor;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/permission/MobileNetWorkPermissionMonitor;->access$400(Lcn/nubia/server/appmgmt/permission/MobileNetWorkPermissionMonitor;)Lcn/nubia/server/appmgmt/permission/PermissionMonitorActivityState;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/server/appmgmt/permission/PermissionMonitorActivityState;->getWatcherHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcn/nubia/server/appmgmt/permission/MobileNetWorkPermissionMonitor$1$1;

    invoke-direct {v2, p0}, Lcn/nubia/server/appmgmt/permission/MobileNetWorkPermissionMonitor$1$1;-><init>(Lcn/nubia/server/appmgmt/permission/MobileNetWorkPermissionMonitor$1;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 77
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 87
    :cond_1
    :goto_0
    return-void
.end method
