.class public Lcn/nubia/server/appmgmt/freezer/ApplicationNetworkController;
.super Ljava/lang/Object;
.source "ApplicationNetworkController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/server/appmgmt/freezer/ApplicationNetworkController$ConnectivityStateChangeReceiver;,
        Lcn/nubia/server/appmgmt/freezer/ApplicationNetworkController$AppNetworkConfig;,
        Lcn/nubia/server/appmgmt/freezer/ApplicationNetworkController$SystemReadyRunnalbe;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ApplicationNetworkController"


# instance fields
.field private mAppFreezeController:Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

.field private mCharging:Z

.field private mConnectivityStateChangeReceiver:Lcn/nubia/server/appmgmt/freezer/ApplicationNetworkController$ConnectivityStateChangeReceiver;

.field private mContext:Landroid/content/Context;

.field private mControlNetworkUid:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mDumpDebugLog:Z

.field private mHandler:Landroid/os/Handler;

.field private mIs2GNetwork:Z

.field private mNMS:Landroid/os/INetworkManagementService;

.field private mThread:Landroid/os/HandlerThread;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appFreezeController"    # Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const-string/jumbo v0, "userdebug"

    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationNetworkController;->mDumpDebugLog:Z

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationNetworkController;->mNMS:Landroid/os/INetworkManagementService;

    .line 54
    iput-boolean v1, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationNetworkController;->mIs2GNetwork:Z

    .line 58
    iput-boolean v1, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationNetworkController;->mCharging:Z

    .line 64
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationNetworkController;->mControlNetworkUid:Ljava/util/HashSet;

    .line 67
    iput-object p1, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationNetworkController;->mContext:Landroid/content/Context;

    .line 68
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "ApplicationNetworkControllerIO"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationNetworkController;->mThread:Landroid/os/HandlerThread;

    .line 69
    iget-object v1, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationNetworkController;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 70
    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationNetworkController;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationNetworkController;->mHandler:Landroid/os/Handler;

    .line 71
    iput-object p2, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationNetworkController;->mAppFreezeController:Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    .line 72
    new-instance v1, Lcn/nubia/server/appmgmt/freezer/ApplicationNetworkController$ConnectivityStateChangeReceiver;

    invoke-direct {v1, p0}, Lcn/nubia/server/appmgmt/freezer/ApplicationNetworkController$ConnectivityStateChangeReceiver;-><init>(Lcn/nubia/server/appmgmt/freezer/ApplicationNetworkController;)V

    iput-object v1, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationNetworkController;->mConnectivityStateChangeReceiver:Lcn/nubia/server/appmgmt/freezer/ApplicationNetworkController$ConnectivityStateChangeReceiver;

    .line 74
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/freezer/ApplicationNetworkController;->ensureNetworkManagementService()V

    .line 75
    iget-object v1, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationNetworkController;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcn/nubia/server/appmgmt/freezer/ApplicationNetworkController$SystemReadyRunnalbe;

    invoke-direct {v2, p0, v0}, Lcn/nubia/server/appmgmt/freezer/ApplicationNetworkController$SystemReadyRunnalbe;-><init>(Lcn/nubia/server/appmgmt/freezer/ApplicationNetworkController;Lcn/nubia/server/appmgmt/freezer/ApplicationNetworkController$1;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 76
    return-void
.end method

.method static synthetic access$100(Lcn/nubia/server/appmgmt/freezer/ApplicationNetworkController;ILjava/lang/String;Z)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/freezer/ApplicationNetworkController;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Z

    .line 46
    invoke-direct {p0, p1, p2, p3}, Lcn/nubia/server/appmgmt/freezer/ApplicationNetworkController;->realSetUidRule(ILjava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$200(Lcn/nubia/server/appmgmt/freezer/ApplicationNetworkController;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/freezer/ApplicationNetworkController;

    .line 46
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/freezer/ApplicationNetworkController;->cleanFreezeIptable()V

    return-void
.end method

.method static synthetic access$300(Lcn/nubia/server/appmgmt/freezer/ApplicationNetworkController;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/freezer/ApplicationNetworkController;

    .line 46
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationNetworkController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcn/nubia/server/appmgmt/freezer/ApplicationNetworkController;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/freezer/ApplicationNetworkController;

    .line 46
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationNetworkController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcn/nubia/server/appmgmt/freezer/ApplicationNetworkController;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/freezer/ApplicationNetworkController;

    .line 46
    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationNetworkController;->mDumpDebugLog:Z

    return v0
.end method

.method static synthetic access$600(Lcn/nubia/server/appmgmt/freezer/ApplicationNetworkController;)Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/freezer/ApplicationNetworkController;

    .line 46
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationNetworkController;->mAppFreezeController:Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    return-object v0
.end method

.method private cleanFreezeIptable()V
    .locals 0

    .line 149
    return-void
.end method

.method private ensureNetworkManagementService()V
    .locals 1

    .line 83
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationNetworkController;->mNMS:Landroid/os/INetworkManagementService;

    if-nez v0, :cond_0

    .line 84
    const-string/jumbo v0, "network_management"

    .line 85
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 84
    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationNetworkController;->mNMS:Landroid/os/INetworkManagementService;

    .line 87
    :cond_0
    return-void
.end method

.method private realSetUidRule(ILjava/lang/String;Z)V
    .locals 3
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "enableNetwork"    # Z

    .line 90
    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationNetworkController;->mDumpDebugLog:Z

    if-eqz v0, :cond_0

    .line 91
    const-string v0, "ApplicationNetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableNetwork="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", packageName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    :cond_0
    return-void
.end method

.method private setFreezeUidRule(IZ)V
    .locals 0
    .param p1, "uid"    # I
    .param p2, "enableWifi"    # Z

    .line 142
    return-void
.end method

.method private setMobileDataUidRule(IZ)V
    .locals 1
    .param p1, "uid"    # I
    .param p2, "enableMobile"    # Z

    .line 125
    :try_start_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationNetworkController;->mNMS:Landroid/os/INetworkManagementService;

    invoke-interface {v0, p1, p2}, Landroid/os/INetworkManagementService;->setMobileDataUidRule(IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    goto :goto_0

    .line 126
    :catch_0
    move-exception v0

    .line 128
    :goto_0
    return-void
.end method

.method private setWifiDataUidRule(IZ)V
    .locals 1
    .param p1, "uid"    # I
    .param p2, "enableWifi"    # Z

    .line 132
    :try_start_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationNetworkController;->mNMS:Landroid/os/INetworkManagementService;

    invoke-interface {v0, p1, p2}, Landroid/os/INetworkManagementService;->setWifiDataUidRule(IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    goto :goto_0

    .line 133
    :catch_0
    move-exception v0

    .line 135
    :goto_0
    return-void
.end method


# virtual methods
.method public enableLog(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .line 232
    iput-boolean p1, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationNetworkController;->mDumpDebugLog:Z

    .line 233
    return-void
.end method

.method public setDebugLogEnabled(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .line 79
    iput-boolean p1, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationNetworkController;->mDumpDebugLog:Z

    .line 80
    return-void
.end method

.method public setUidRule(ILjava/lang/String;Z)V
    .locals 2
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "enableNetwork"    # Z

    .line 108
    const/16 v0, 0x2710

    if-ge p1, v0, :cond_0

    .line 113
    return-void

    .line 115
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationNetworkController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcn/nubia/server/appmgmt/freezer/ApplicationNetworkController$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcn/nubia/server/appmgmt/freezer/ApplicationNetworkController$1;-><init>(Lcn/nubia/server/appmgmt/freezer/ApplicationNetworkController;ILjava/lang/String;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 121
    return-void
.end method
