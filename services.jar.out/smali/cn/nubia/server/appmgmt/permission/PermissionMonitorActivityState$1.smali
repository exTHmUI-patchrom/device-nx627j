.class Lcn/nubia/server/appmgmt/permission/PermissionMonitorActivityState$1;
.super Landroid/os/Handler;
.source "PermissionMonitorActivityState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/server/appmgmt/permission/PermissionMonitorActivityState;->initWatcherHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/appmgmt/permission/PermissionMonitorActivityState;


# direct methods
.method constructor <init>(Lcn/nubia/server/appmgmt/permission/PermissionMonitorActivityState;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/server/appmgmt/permission/PermissionMonitorActivityState;
    .param p2, "x0"    # Landroid/os/Looper;

    .line 43
    iput-object p1, p0, Lcn/nubia/server/appmgmt/permission/PermissionMonitorActivityState$1;->this$0:Lcn/nubia/server/appmgmt/permission/PermissionMonitorActivityState;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 46
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x7d1

    if-eq v0, v1, :cond_0

    goto :goto_1

    .line 48
    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 49
    .local v0, "resumed_package":Ljava/lang/String;
    iget-object v1, p0, Lcn/nubia/server/appmgmt/permission/PermissionMonitorActivityState$1;->this$0:Lcn/nubia/server/appmgmt/permission/PermissionMonitorActivityState;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/permission/PermissionMonitorActivityState;->access$000(Lcn/nubia/server/appmgmt/permission/PermissionMonitorActivityState;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 50
    .local v1, "topActivityChanged":Z
    iget-object v2, p0, Lcn/nubia/server/appmgmt/permission/PermissionMonitorActivityState$1;->this$0:Lcn/nubia/server/appmgmt/permission/PermissionMonitorActivityState;

    invoke-static {v2}, Lcn/nubia/server/appmgmt/permission/PermissionMonitorActivityState;->access$100(Lcn/nubia/server/appmgmt/permission/PermissionMonitorActivityState;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/nubia/server/appmgmt/permission/IAppStateChangeObserver;

    .line 51
    .local v3, "observer":Lcn/nubia/server/appmgmt/permission/IAppStateChangeObserver;
    if-eqz v1, :cond_1

    .line 53
    iget-object v4, p0, Lcn/nubia/server/appmgmt/permission/PermissionMonitorActivityState$1;->this$0:Lcn/nubia/server/appmgmt/permission/PermissionMonitorActivityState;

    invoke-static {v4}, Lcn/nubia/server/appmgmt/permission/PermissionMonitorActivityState;->access$000(Lcn/nubia/server/appmgmt/permission/PermissionMonitorActivityState;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    .line 54
    .local v4, "noteBackground":Z
    invoke-interface {v3, v0}, Lcn/nubia/server/appmgmt/permission/IAppStateChangeObserver;->noteAppForeground(Ljava/lang/String;)V

    .line 55
    if-eqz v4, :cond_1

    .line 56
    iget-object v5, p0, Lcn/nubia/server/appmgmt/permission/PermissionMonitorActivityState$1;->this$0:Lcn/nubia/server/appmgmt/permission/PermissionMonitorActivityState;

    invoke-static {v5}, Lcn/nubia/server/appmgmt/permission/PermissionMonitorActivityState;->access$000(Lcn/nubia/server/appmgmt/permission/PermissionMonitorActivityState;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Lcn/nubia/server/appmgmt/permission/IAppStateChangeObserver;->noteAppBackground(Ljava/lang/String;)V

    .line 59
    .end local v3    # "observer":Lcn/nubia/server/appmgmt/permission/IAppStateChangeObserver;
    .end local v4    # "noteBackground":Z
    :cond_1
    goto :goto_0

    .line 60
    :cond_2
    iget-object v2, p0, Lcn/nubia/server/appmgmt/permission/PermissionMonitorActivityState$1;->this$0:Lcn/nubia/server/appmgmt/permission/PermissionMonitorActivityState;

    invoke-static {v2, v0}, Lcn/nubia/server/appmgmt/permission/PermissionMonitorActivityState;->access$002(Lcn/nubia/server/appmgmt/permission/PermissionMonitorActivityState;Ljava/lang/String;)Ljava/lang/String;

    .line 63
    .end local v0    # "resumed_package":Ljava/lang/String;
    .end local v1    # "topActivityChanged":Z
    :goto_1
    return-void
.end method
