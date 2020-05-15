.class public Lcn/nubia/server/appmgmt/permission/MobileNetWorkPermissionMonitor;
.super Ljava/lang/Object;
.source "MobileNetWorkPermissionMonitor.java"

# interfaces
.implements Lcn/nubia/server/appmgmt/permission/IAppStateChangeObserver;


# static fields
.field private static final TAG:Ljava/lang/String; = "MobileNetWorkPermissionMonitor"


# instance fields
.field private context:Landroid/content/Context;

.field private mAppOpsManager:Landroid/app/AppOpsManager;

.field private volatile mTopActivityInStack:Ljava/lang/String;

.field private manager:Landroid/net/ConnectivityManager;

.field private monitorAllActivityState:Lcn/nubia/server/appmgmt/permission/PermissionMonitorActivityState;

.field private runningDialogPkg:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/AppOpsManager;Landroid/content/Context;Lcn/nubia/server/appmgmt/permission/PermissionMonitorActivityState;)V
    .locals 1
    .param p1, "manager"    # Landroid/app/AppOpsManager;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "handler"    # Lcn/nubia/server/appmgmt/permission/PermissionMonitorActivityState;

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/permission/MobileNetWorkPermissionMonitor;->runningDialogPkg:Ljava/util/Set;

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lcn/nubia/server/appmgmt/permission/MobileNetWorkPermissionMonitor;->mTopActivityInStack:Ljava/lang/String;

    .line 38
    iput-object p1, p0, Lcn/nubia/server/appmgmt/permission/MobileNetWorkPermissionMonitor;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 39
    iput-object p2, p0, Lcn/nubia/server/appmgmt/permission/MobileNetWorkPermissionMonitor;->context:Landroid/content/Context;

    .line 40
    iput-object p3, p0, Lcn/nubia/server/appmgmt/permission/MobileNetWorkPermissionMonitor;->monitorAllActivityState:Lcn/nubia/server/appmgmt/permission/PermissionMonitorActivityState;

    .line 41
    const-string v0, "connectivity"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcn/nubia/server/appmgmt/permission/MobileNetWorkPermissionMonitor;->manager:Landroid/net/ConnectivityManager;

    .line 43
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/permission/MobileNetWorkPermissionMonitor;->registerNetWorkBroadcastReceiver()V

    .line 45
    invoke-static {}, Lcn/nubia/server/appmgmt/permission/FireWallCommon;->initIptables()V

    .line 46
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/server/appmgmt/permission/MobileNetWorkPermissionMonitor;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/permission/MobileNetWorkPermissionMonitor;

    .line 25
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/permission/MobileNetWorkPermissionMonitor;->isMobileNetWork()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcn/nubia/server/appmgmt/permission/MobileNetWorkPermissionMonitor;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/permission/MobileNetWorkPermissionMonitor;

    .line 25
    iget-object v0, p0, Lcn/nubia/server/appmgmt/permission/MobileNetWorkPermissionMonitor;->mTopActivityInStack:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcn/nubia/server/appmgmt/permission/MobileNetWorkPermissionMonitor;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/permission/MobileNetWorkPermissionMonitor;

    .line 25
    iget-object v0, p0, Lcn/nubia/server/appmgmt/permission/MobileNetWorkPermissionMonitor;->runningDialogPkg:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$300(Lcn/nubia/server/appmgmt/permission/MobileNetWorkPermissionMonitor;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/permission/MobileNetWorkPermissionMonitor;
    .param p1, "x1"    # Ljava/lang/String;

    .line 25
    invoke-direct {p0, p1}, Lcn/nubia/server/appmgmt/permission/MobileNetWorkPermissionMonitor;->checkPermission(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcn/nubia/server/appmgmt/permission/MobileNetWorkPermissionMonitor;)Lcn/nubia/server/appmgmt/permission/PermissionMonitorActivityState;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/permission/MobileNetWorkPermissionMonitor;

    .line 25
    iget-object v0, p0, Lcn/nubia/server/appmgmt/permission/MobileNetWorkPermissionMonitor;->monitorAllActivityState:Lcn/nubia/server/appmgmt/permission/PermissionMonitorActivityState;

    return-object v0
.end method

.method private checkPermission(Ljava/lang/String;)V
    .locals 9
    .param p1, "pkg"    # Ljava/lang/String;

    .line 105
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    return-void

    .line 107
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/permission/MobileNetWorkPermissionMonitor;->runningDialogPkg:Ljava/util/Set;

    monitor-enter v0

    .line 108
    :try_start_0
    iget-object v1, p0, Lcn/nubia/server/appmgmt/permission/MobileNetWorkPermissionMonitor;->runningDialogPkg:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 109
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    .line 111
    :try_start_1
    iget-object v0, p0, Lcn/nubia/server/appmgmt/permission/MobileNetWorkPermissionMonitor;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 112
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const/16 v1, 0x1000

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 113
    .local v1, "pinfo":Landroid/content/pm/PackageInfo;
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    const-string v3, "android.permission.INTERNET"

    invoke-static {v2, v3}, Lcn/nubia/server/appmgmt/permission/AppOpsUtils;->isContain([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 114
    const/16 v2, 0x58

    .line 115
    .local v2, "op":I
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 116
    .local v3, "info":Landroid/content/pm/ApplicationInfo;
    iget-object v4, p0, Lcn/nubia/server/appmgmt/permission/MobileNetWorkPermissionMonitor;->mAppOpsManager:Landroid/app/AppOpsManager;

    iget v5, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v6, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v2, v5, v6}, Landroid/app/AppOpsManager;->checkOp(IILjava/lang/String;)I

    move-result v4

    .line 117
    .local v4, "opCode":I
    if-nez v4, :cond_1

    .line 118
    const-string v5, "MobileNetWorkPermissionMonitor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkPermission pkg : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " op : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", was MODE_ALLOWED."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 139
    iget-object v5, p0, Lcn/nubia/server/appmgmt/permission/MobileNetWorkPermissionMonitor;->runningDialogPkg:Ljava/util/Set;

    monitor-enter v5

    .line 140
    :try_start_2
    iget-object v6, p0, Lcn/nubia/server/appmgmt/permission/MobileNetWorkPermissionMonitor;->runningDialogPkg:Ljava/util/Set;

    invoke-interface {v6, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 141
    monitor-exit v5

    .line 119
    return-void

    .line 141
    :catchall_0
    move-exception v6

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6

    .line 122
    :cond_1
    :try_start_3
    const-string v5, "MobileNetWorkPermissionMonitor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkPermission pkg : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", uid : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", op : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", before mode : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    iget-object v5, p0, Lcn/nubia/server/appmgmt/permission/MobileNetWorkPermissionMonitor;->mAppOpsManager:Landroid/app/AppOpsManager;

    iget v6, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v5, v2, v6, p1}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;)I

    move-result v5

    .line 124
    .local v5, "mode":I
    const-string v6, "MobileNetWorkPermissionMonitor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "checkPermission pkg : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", uid : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", op : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", after  mode : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    if-nez v5, :cond_2

    .line 127
    iget v6, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v7, 0x1

    invoke-static {v6, v7}, Lcn/nubia/server/appmgmt/permission/FireWallCommon;->setUidNetWorkState(IZ)V

    .line 128
    iget v6, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v6, v7}, Lcn/nubia/server/appmgmt/permission/FireWallCommon;->setUidNetWorkState(IZ)V
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 139
    .end local v0    # "pm":Landroid/content/pm/PackageManager;
    .end local v1    # "pinfo":Landroid/content/pm/PackageInfo;
    .end local v2    # "op":I
    .end local v3    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v4    # "opCode":I
    .end local v5    # "mode":I
    :cond_2
    iget-object v0, p0, Lcn/nubia/server/appmgmt/permission/MobileNetWorkPermissionMonitor;->runningDialogPkg:Ljava/util/Set;

    monitor-enter v0

    .line 140
    :try_start_4
    iget-object v1, p0, Lcn/nubia/server/appmgmt/permission/MobileNetWorkPermissionMonitor;->runningDialogPkg:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 141
    monitor-exit v0

    goto :goto_0

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1

    .line 139
    :catchall_2
    move-exception v0

    goto :goto_1

    .line 136
    :catch_0
    move-exception v0

    .line 137
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_5
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 139
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    iget-object v0, p0, Lcn/nubia/server/appmgmt/permission/MobileNetWorkPermissionMonitor;->runningDialogPkg:Ljava/util/Set;

    monitor-enter v0

    .line 140
    :try_start_6
    iget-object v1, p0, Lcn/nubia/server/appmgmt/permission/MobileNetWorkPermissionMonitor;->runningDialogPkg:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 141
    monitor-exit v0

    .line 142
    :goto_0
    nop

    .line 143
    return-void

    .line 141
    :catchall_3
    move-exception v1

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v1

    .line 139
    :goto_1
    iget-object v1, p0, Lcn/nubia/server/appmgmt/permission/MobileNetWorkPermissionMonitor;->runningDialogPkg:Ljava/util/Set;

    monitor-enter v1

    .line 140
    :try_start_7
    iget-object v2, p0, Lcn/nubia/server/appmgmt/permission/MobileNetWorkPermissionMonitor;->runningDialogPkg:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 141
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    throw v0

    :catchall_4
    move-exception v0

    :try_start_8
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    throw v0

    .line 109
    :catchall_5
    move-exception v1

    :try_start_9
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    throw v1
.end method

.method private isMobileNetWork()Z
    .locals 2

    .line 97
    iget-object v0, p0, Lcn/nubia/server/appmgmt/permission/MobileNetWorkPermissionMonitor;->manager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 98
    .local v0, "info":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    if-nez v1, :cond_0

    .line 99
    const/4 v1, 0x1

    return v1

    .line 101
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private registerNetWorkBroadcastReceiver()V
    .locals 3

    .line 66
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 67
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcn/nubia/server/appmgmt/permission/MobileNetWorkPermissionMonitor;->context:Landroid/content/Context;

    new-instance v2, Lcn/nubia/server/appmgmt/permission/MobileNetWorkPermissionMonitor$1;

    invoke-direct {v2, p0}, Lcn/nubia/server/appmgmt/permission/MobileNetWorkPermissionMonitor$1;-><init>(Lcn/nubia/server/appmgmt/permission/MobileNetWorkPermissionMonitor;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 89
    return-void
.end method


# virtual methods
.method public noteAppBackground(Ljava/lang/String;)V
    .locals 0
    .param p1, "pkg"    # Ljava/lang/String;

    .line 60
    return-void
.end method

.method public noteAppForeground(Ljava/lang/String;)V
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;

    .line 50
    iput-object p1, p0, Lcn/nubia/server/appmgmt/permission/MobileNetWorkPermissionMonitor;->mTopActivityInStack:Ljava/lang/String;

    .line 51
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/permission/MobileNetWorkPermissionMonitor;->isMobileNetWork()Z

    move-result v0

    .line 53
    .local v0, "isMobileNetWork":Z
    if-eqz v0, :cond_0

    .line 54
    invoke-direct {p0, p1}, Lcn/nubia/server/appmgmt/permission/MobileNetWorkPermissionMonitor;->checkPermission(Ljava/lang/String;)V

    .line 56
    :cond_0
    return-void
.end method
