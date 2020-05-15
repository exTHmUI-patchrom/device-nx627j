.class public Lcn/nubia/server/appmgmt/permission/PermissionMonitorActivityState;
.super Ljava/lang/Object;
.source "PermissionMonitorActivityState.java"


# static fields
.field private static final SYS_STATE_ACTIVITY_RESUME:I = 0x7d1

.field public static final TAG:Ljava/lang/String; = "MonitorAllActivityState"


# instance fields
.field private context:Landroid/content/Context;

.field private handlerThread:Landroid/os/HandlerThread;

.field private mAppOpsManager:Landroid/app/AppOpsManager;

.field private mTopPackageName:Ljava/lang/String;

.field private mWatcherHandler:Landroid/os/Handler;

.field private final observers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/nubia/server/appmgmt/permission/IAppStateChangeObserver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "c"    # Landroid/content/Context;

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/permission/PermissionMonitorActivityState;->observers:Ljava/util/List;

    .line 20
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "appops_app_state_monitor"

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/permission/PermissionMonitorActivityState;->handlerThread:Landroid/os/HandlerThread;

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/server/appmgmt/permission/PermissionMonitorActivityState;->mWatcherHandler:Landroid/os/Handler;

    .line 22
    iput-object v0, p0, Lcn/nubia/server/appmgmt/permission/PermissionMonitorActivityState;->context:Landroid/content/Context;

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lcn/nubia/server/appmgmt/permission/PermissionMonitorActivityState;->mTopPackageName:Ljava/lang/String;

    .line 30
    iput-object p1, p0, Lcn/nubia/server/appmgmt/permission/PermissionMonitorActivityState;->context:Landroid/content/Context;

    .line 31
    iget-object v0, p0, Lcn/nubia/server/appmgmt/permission/PermissionMonitorActivityState;->context:Landroid/content/Context;

    const-string v1, "appops"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcn/nubia/server/appmgmt/permission/PermissionMonitorActivityState;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 32
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/permission/PermissionMonitorActivityState;->initWatcherHandler()V

    .line 33
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/server/appmgmt/permission/PermissionMonitorActivityState;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/permission/PermissionMonitorActivityState;

    .line 17
    iget-object v0, p0, Lcn/nubia/server/appmgmt/permission/PermissionMonitorActivityState;->mTopPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcn/nubia/server/appmgmt/permission/PermissionMonitorActivityState;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/permission/PermissionMonitorActivityState;
    .param p1, "x1"    # Ljava/lang/String;

    .line 17
    iput-object p1, p0, Lcn/nubia/server/appmgmt/permission/PermissionMonitorActivityState;->mTopPackageName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcn/nubia/server/appmgmt/permission/PermissionMonitorActivityState;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/permission/PermissionMonitorActivityState;

    .line 17
    iget-object v0, p0, Lcn/nubia/server/appmgmt/permission/PermissionMonitorActivityState;->observers:Ljava/util/List;

    return-object v0
.end method

.method private initWatcherHandler()V
    .locals 4

    .line 42
    iget-object v0, p0, Lcn/nubia/server/appmgmt/permission/PermissionMonitorActivityState;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 43
    new-instance v0, Lcn/nubia/server/appmgmt/permission/PermissionMonitorActivityState$1;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/permission/PermissionMonitorActivityState;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcn/nubia/server/appmgmt/permission/PermissionMonitorActivityState$1;-><init>(Lcn/nubia/server/appmgmt/permission/PermissionMonitorActivityState;Landroid/os/Looper;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/permission/PermissionMonitorActivityState;->mWatcherHandler:Landroid/os/Handler;

    .line 65
    iget-object v0, p0, Lcn/nubia/server/appmgmt/permission/PermissionMonitorActivityState;->observers:Ljava/util/List;

    new-instance v1, Lcn/nubia/server/appmgmt/permission/MobileNetWorkPermissionMonitor;

    iget-object v2, p0, Lcn/nubia/server/appmgmt/permission/PermissionMonitorActivityState;->mAppOpsManager:Landroid/app/AppOpsManager;

    iget-object v3, p0, Lcn/nubia/server/appmgmt/permission/PermissionMonitorActivityState;->context:Landroid/content/Context;

    invoke-direct {v1, v2, v3, p0}, Lcn/nubia/server/appmgmt/permission/MobileNetWorkPermissionMonitor;-><init>(Landroid/app/AppOpsManager;Landroid/content/Context;Lcn/nubia/server/appmgmt/permission/PermissionMonitorActivityState;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    iget-object v0, p0, Lcn/nubia/server/appmgmt/permission/PermissionMonitorActivityState;->observers:Ljava/util/List;

    new-instance v1, Lcn/nubia/server/appmgmt/permission/ReceiveMmsPermissionMonitor;

    iget-object v2, p0, Lcn/nubia/server/appmgmt/permission/PermissionMonitorActivityState;->mAppOpsManager:Landroid/app/AppOpsManager;

    iget-object v3, p0, Lcn/nubia/server/appmgmt/permission/PermissionMonitorActivityState;->context:Landroid/content/Context;

    invoke-direct {v1, v2, v3}, Lcn/nubia/server/appmgmt/permission/ReceiveMmsPermissionMonitor;-><init>(Landroid/app/AppOpsManager;Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    return-void
.end method


# virtual methods
.method public getWatcherHandler()Landroid/os/Handler;
    .locals 1

    .line 70
    iget-object v0, p0, Lcn/nubia/server/appmgmt/permission/PermissionMonitorActivityState;->mWatcherHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public noteResumingActivity(IILjava/lang/String;Ljava/lang/String;Z)V
    .locals 3
    .param p1, "uid"    # I
    .param p2, "stackId"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "activityName"    # Ljava/lang/String;
    .param p5, "isHomeActivity"    # Z

    .line 36
    iget-object v0, p0, Lcn/nubia/server/appmgmt/permission/PermissionMonitorActivityState;->mWatcherHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    return-void

    .line 37
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/permission/PermissionMonitorActivityState;->mWatcherHandler:Landroid/os/Handler;

    const/16 v1, 0x7d1

    if-nez p3, :cond_1

    const-string v2, ""

    goto :goto_0

    :cond_1
    move-object v2, p3

    :goto_0
    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 38
    return-void
.end method
