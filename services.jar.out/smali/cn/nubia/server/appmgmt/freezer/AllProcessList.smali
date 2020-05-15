.class Lcn/nubia/server/appmgmt/freezer/AllProcessList;
.super Ljava/lang/Object;
.source "AllProcessList.java"


# static fields
.field static DEBUG:Z

.field private static TAG:Ljava/lang/String;


# instance fields
.field private mAdjs:[I

.field private mAllProcess:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcn/nubia/server/appmgmt/freezer/ProcessInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mAppLevelController:Lcn/nubia/server/appmgmt/AppLevelController;

.field private mController:Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

.field mExecServiceSize:[Z

.field private mHandler:Landroid/os/Handler;

.field private mPackageNames:[Ljava/lang/String;

.field private mPids:[I

.field private mReasonPackageNames:[Ljava/lang/String;

.field private mReasonPids:[I

.field private mUids:[I

.field private mUpdateRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    const-string v0, "ApplicationFreeze"

    sput-object v0, Lcn/nubia/server/appmgmt/freezer/AllProcessList;->TAG:Ljava/lang/String;

    .line 32
    sget-boolean v0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->DEBUG_FREEZE:Z

    sput-boolean v0, Lcn/nubia/server/appmgmt/freezer/AllProcessList;->DEBUG:Z

    return-void
.end method

.method constructor <init>(Landroid/os/Handler;Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;Lcn/nubia/server/appmgmt/AppLevelController;)V
    .locals 1
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "controller"    # Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;
    .param p3, "appLevelController"    # Lcn/nubia/server/appmgmt/AppLevelController;

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/freezer/AllProcessList;->mAllProcess:Ljava/util/HashMap;

    .line 40
    new-instance v0, Lcn/nubia/server/appmgmt/freezer/AllProcessList$1;

    invoke-direct {v0, p0}, Lcn/nubia/server/appmgmt/freezer/AllProcessList$1;-><init>(Lcn/nubia/server/appmgmt/freezer/AllProcessList;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/freezer/AllProcessList;->mUpdateRunnable:Ljava/lang/Runnable;

    .line 35
    iput-object p1, p0, Lcn/nubia/server/appmgmt/freezer/AllProcessList;->mHandler:Landroid/os/Handler;

    .line 36
    iput-object p2, p0, Lcn/nubia/server/appmgmt/freezer/AllProcessList;->mController:Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    .line 37
    iput-object p3, p0, Lcn/nubia/server/appmgmt/freezer/AllProcessList;->mAppLevelController:Lcn/nubia/server/appmgmt/AppLevelController;

    .line 38
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/server/appmgmt/freezer/AllProcessList;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/freezer/AllProcessList;

    .line 19
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/freezer/AllProcessList;->doUpdate()V

    return-void
.end method

.method private doUpdate()V
    .locals 0

    .line 104
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/freezer/AllProcessList;->resetAllProcess()V

    .line 105
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/freezer/AllProcessList;->updateManagedProcess()V

    .line 106
    return-void
.end method

.method private isAllowFreeze(Lcn/nubia/server/appmgmt/freezer/ProcessInfo;Ljava/util/HashSet;Ljava/util/HashSet;Ljava/util/HashSet;)Z
    .locals 5
    .param p1, "info"    # Lcn/nubia/server/appmgmt/freezer/ProcessInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/nubia/server/appmgmt/freezer/ProcessInfo;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 110
    .local p2, "standbyAppList":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .local p3, "thirdAppWhiteList":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .local p4, "thirdAppBlackList":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/AllProcessList;->mController:Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    invoke-virtual {v0}, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->getDataManager()Lcn/nubia/server/appmgmt/AppDataManager;

    sget-boolean v0, Lcn/nubia/server/appmgmt/AppDataManager;->NONE_ALLOWED:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 111
    :cond_0
    iget v0, p1, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v2, 0x2710

    if-ge v0, v2, :cond_1

    return v1

    .line 112
    :cond_1
    iget-object v0, p1, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 113
    :cond_2
    iget-object v0, p1, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {p4, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    return v2

    .line 115
    :cond_3
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/AllProcessList;->mController:Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    invoke-virtual {v0}, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->getDataManager()Lcn/nubia/server/appmgmt/AppDataManager;

    move-result-object v0

    iget-object v3, p1, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcn/nubia/server/appmgmt/AppDataManager;->isBuildInApp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 116
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/AllProcessList;->mController:Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    invoke-virtual {v0}, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->getDataManager()Lcn/nubia/server/appmgmt/AppDataManager;

    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/AllProcessList;->mController:Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    .line 117
    invoke-virtual {v0}, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->getDataManager()Lcn/nubia/server/appmgmt/AppDataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/server/appmgmt/AppDataManager;->getBuildInAppBlackList()Ljava/util/HashSet;

    move-result-object v0

    iget-object v1, p1, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 116
    return v0

    .line 119
    :cond_4
    iget-object v0, p1, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    return v2

    .line 141
    :cond_5
    iget-object v0, p1, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mPackageName:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 142
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/AllProcessList;->mController:Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    invoke-virtual {v0}, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->getDataManager()Lcn/nubia/server/appmgmt/AppDataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/server/appmgmt/AppDataManager;->getDefaultWhiteList()Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 143
    .local v3, "s":Ljava/lang/String;
    iget-object v4, p1, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 144
    return v1

    .line 146
    .end local v3    # "s":Ljava/lang/String;
    :cond_6
    goto :goto_0

    .line 148
    :cond_7
    return v2
.end method

.method private declared-synchronized resetAllProcess()V
    .locals 6

    monitor-enter p0

    .line 66
    :try_start_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/AllProcessList;->mAllProcess:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 67
    const/4 v0, 0x0

    .line 68
    .local v0, "whiteFreezeAppList":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v1, p0, Lcn/nubia/server/appmgmt/freezer/AllProcessList;->mController:Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/nubia/server/appmgmt/freezer/AllProcessList;->mController:Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    invoke-virtual {v1}, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->getDataManager()Lcn/nubia/server/appmgmt/AppDataManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 69
    iget-object v1, p0, Lcn/nubia/server/appmgmt/freezer/AllProcessList;->mController:Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    invoke-virtual {v1}, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->getDataManager()Lcn/nubia/server/appmgmt/AppDataManager;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/server/appmgmt/AppDataManager;->getFreezeWhiteAppList()Ljava/util/HashSet;

    move-result-object v1

    move-object v0, v1

    .line 71
    :cond_0
    const/4 v1, 0x0

    .line 71
    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcn/nubia/server/appmgmt/freezer/AllProcessList;->mPids:[I

    array-length v2, v2

    if-ge v1, v2, :cond_3

    .line 72
    iget-object v2, p0, Lcn/nubia/server/appmgmt/freezer/AllProcessList;->mPids:[I

    aget v2, v2, v1

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    .line 73
    if-eqz v0, :cond_1

    iget-object v2, p0, Lcn/nubia/server/appmgmt/freezer/AllProcessList;->mPackageNames:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 74
    sget-boolean v2, Lcn/nubia/server/appmgmt/freezer/AllProcessList;->DEBUG:Z

    if-eqz v2, :cond_2

    sget-object v2, Lcn/nubia/server/appmgmt/freezer/AllProcessList;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "is white freeze app mPackageName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcn/nubia/server/appmgmt/freezer/AllProcessList;->mPackageNames:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcn/nubia/server/appmgmt/freezer/AllProcessList;->mPids:[I

    aget v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 77
    :cond_1
    new-instance v2, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;

    iget-object v3, p0, Lcn/nubia/server/appmgmt/freezer/AllProcessList;->mPids:[I

    aget v3, v3, v1

    iget-object v4, p0, Lcn/nubia/server/appmgmt/freezer/AllProcessList;->mUids:[I

    aget v4, v4, v1

    iget-object v5, p0, Lcn/nubia/server/appmgmt/freezer/AllProcessList;->mPackageNames:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-direct {v2, v3, v4, v5}, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;-><init>(IILjava/lang/String;)V

    .line 78
    .local v2, "info":Lcn/nubia/server/appmgmt/freezer/ProcessInfo;
    iget-object v3, p0, Lcn/nubia/server/appmgmt/freezer/AllProcessList;->mAdjs:[I

    aget v3, v3, v1

    invoke-virtual {v2, v3}, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->setAdj(I)Z

    .line 79
    iget-object v3, p0, Lcn/nubia/server/appmgmt/freezer/AllProcessList;->mReasonPids:[I

    aget v3, v3, v1

    invoke-virtual {v2, v3}, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->setReasonPid(I)Z

    .line 80
    iget-object v3, p0, Lcn/nubia/server/appmgmt/freezer/AllProcessList;->mReasonPackageNames:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->setReasonPackageName(Ljava/lang/String;)V

    .line 81
    iget-object v3, p0, Lcn/nubia/server/appmgmt/freezer/AllProcessList;->mExecServiceSize:[Z

    aget-boolean v3, v3, v1

    invoke-virtual {v2, v3}, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->setExecService(Z)V

    .line 82
    iget-object v3, p0, Lcn/nubia/server/appmgmt/freezer/AllProcessList;->mAllProcess:Ljava/util/HashMap;

    iget-object v4, p0, Lcn/nubia/server/appmgmt/freezer/AllProcessList;->mPids:[I

    aget v4, v4, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    .end local v2    # "info":Lcn/nubia/server/appmgmt/freezer/ProcessInfo;
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 85
    .end local v1    # "i":I
    :cond_3
    monitor-exit p0

    return-void

    .line 65
    .end local v0    # "whiteFreezeAppList":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :catchall_0
    move-exception v0

    monitor-exit p0

    .line 65
    .end local p0    # "this":Lcn/nubia/server/appmgmt/freezer/AllProcessList;
    throw v0
.end method

.method private scheduleUpdate()V
    .locals 4

    .line 61
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/AllProcessList;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/freezer/AllProcessList;->mUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 62
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/AllProcessList;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/freezer/AllProcessList;->mUpdateRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 63
    return-void
.end method

.method private updateManagedProcess()V
    .locals 8

    .line 88
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 90
    .local v0, "managedProcess":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcn/nubia/server/appmgmt/freezer/ProcessInfo;>;"
    iget-object v1, p0, Lcn/nubia/server/appmgmt/freezer/AllProcessList;->mController:Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    invoke-virtual {v1}, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->getStandbyAppList()Ljava/util/HashSet;

    move-result-object v1

    .line 91
    .local v1, "standbyAppList":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v2, p0, Lcn/nubia/server/appmgmt/freezer/AllProcessList;->mAppLevelController:Lcn/nubia/server/appmgmt/AppLevelController;

    invoke-virtual {v2}, Lcn/nubia/server/appmgmt/AppLevelController;->getFreezeWhiteList()Ljava/util/HashSet;

    move-result-object v2

    .line 92
    .local v2, "thirdAppWhiteList":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v3, p0, Lcn/nubia/server/appmgmt/freezer/AllProcessList;->mAppLevelController:Lcn/nubia/server/appmgmt/AppLevelController;

    invoke-virtual {v3}, Lcn/nubia/server/appmgmt/AppLevelController;->getFreezeBlackList()Ljava/util/HashSet;

    move-result-object v3

    .line 93
    .local v3, "thirdAppBlackList":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v4, p0, Lcn/nubia/server/appmgmt/freezer/AllProcessList;->mAllProcess:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 94
    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcn/nubia/server/appmgmt/freezer/ProcessInfo;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;

    .line 95
    .local v6, "info":Lcn/nubia/server/appmgmt/freezer/ProcessInfo;
    invoke-direct {p0, v6, v1, v2, v3}, Lcn/nubia/server/appmgmt/freezer/AllProcessList;->isAllowFreeze(Lcn/nubia/server/appmgmt/freezer/ProcessInfo;Ljava/util/HashSet;Ljava/util/HashSet;Ljava/util/HashSet;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 97
    iget v7, v6, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mPid:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcn/nubia/server/appmgmt/freezer/ProcessInfo;>;"
    .end local v6    # "info":Lcn/nubia/server/appmgmt/freezer/ProcessInfo;
    :cond_0
    goto :goto_0

    .line 100
    :cond_1
    iget-object v4, p0, Lcn/nubia/server/appmgmt/freezer/AllProcessList;->mController:Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    invoke-virtual {v4, v0}, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->updateManagedProcess(Ljava/util/HashMap;)V

    .line 101
    return-void
.end method


# virtual methods
.method declared-synchronized updateProcess([I[I[Ljava/lang/String;[I[I[Ljava/lang/String;[Z)V
    .locals 0
    .param p1, "pids"    # [I
    .param p2, "uids"    # [I
    .param p3, "packageNames"    # [Ljava/lang/String;
    .param p4, "adjs"    # [I
    .param p5, "reasonPids"    # [I
    .param p6, "reasonPackageNames"    # [Ljava/lang/String;
    .param p7, "execServiceSize"    # [Z

    monitor-enter p0

    .line 50
    :try_start_0
    iput-object p1, p0, Lcn/nubia/server/appmgmt/freezer/AllProcessList;->mPids:[I

    .line 51
    iput-object p2, p0, Lcn/nubia/server/appmgmt/freezer/AllProcessList;->mUids:[I

    .line 52
    iput-object p3, p0, Lcn/nubia/server/appmgmt/freezer/AllProcessList;->mPackageNames:[Ljava/lang/String;

    .line 53
    iput-object p4, p0, Lcn/nubia/server/appmgmt/freezer/AllProcessList;->mAdjs:[I

    .line 54
    iput-object p5, p0, Lcn/nubia/server/appmgmt/freezer/AllProcessList;->mReasonPids:[I

    .line 55
    iput-object p6, p0, Lcn/nubia/server/appmgmt/freezer/AllProcessList;->mReasonPackageNames:[Ljava/lang/String;

    .line 56
    iput-object p7, p0, Lcn/nubia/server/appmgmt/freezer/AllProcessList;->mExecServiceSize:[Z

    .line 57
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/freezer/AllProcessList;->scheduleUpdate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    monitor-exit p0

    return-void

    .line 49
    .end local p1    # "pids":[I
    .end local p2    # "uids":[I
    .end local p3    # "packageNames":[Ljava/lang/String;
    .end local p4    # "adjs":[I
    .end local p5    # "reasonPids":[I
    .end local p6    # "reasonPackageNames":[Ljava/lang/String;
    .end local p7    # "execServiceSize":[Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcn/nubia/server/appmgmt/freezer/AllProcessList;
    throw p1
.end method
