.class public final Lcom/android/server/BSPApplicationManagerService;
.super Lcom/android/server/SystemService;
.source "BSPApplicationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/BSPApplicationManagerService$ApplicationManagerStub;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "BSPApplicationManagerService"


# instance fields
.field private mAppUtils:Lcom/android/server/BSPApplicationUtils;

.field private mCPUSampler:Lcom/android/server/cpuperf/CPUSampler;

.field private mContext:Landroid/content/Context;

.field mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

.field private final mHandler:Landroid/os/Handler;

.field private mIsGameSchedutilPerf:Z

.field private mIsSchedutilPerf:Z

.field private mPerfDataManager:Lcom/android/server/cpuperf/PerfDataManager;

.field private mPerformanceController:Lcom/android/server/cpuperf/PerformanceController;

.field private mPreFoceAcitvity:Ljava/lang/String;

.field private mPrePackagename:Ljava/lang/String;

.field private final mStub:Lcom/android/server/BSPApplicationManagerService$ApplicationManagerStub;

.field private mThread:Landroid/os/HandlerThread;

.field private mVideoBoost:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 69
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 48
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "PerfIO"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/BSPApplicationManagerService;->mThread:Landroid/os/HandlerThread;

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/BSPApplicationManagerService;->mPrePackagename:Ljava/lang/String;

    .line 61
    iput-object v0, p0, Lcom/android/server/BSPApplicationManagerService;->mPreFoceAcitvity:Ljava/lang/String;

    .line 62
    iput-object v0, p0, Lcom/android/server/BSPApplicationManagerService;->mVideoBoost:Landroid/os/IBinder;

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/BSPApplicationManagerService;->mIsSchedutilPerf:Z

    .line 64
    iput-boolean v0, p0, Lcom/android/server/BSPApplicationManagerService;->mIsGameSchedutilPerf:Z

    .line 70
    iget-object v0, p0, Lcom/android/server/BSPApplicationManagerService;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 71
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/BSPApplicationManagerService;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/BSPApplicationManagerService;->mHandler:Landroid/os/Handler;

    .line 72
    iput-object p1, p0, Lcom/android/server/BSPApplicationManagerService;->mContext:Landroid/content/Context;

    .line 73
    new-instance v0, Lcom/android/server/BSPApplicationManagerService$ApplicationManagerStub;

    invoke-direct {v0, p0}, Lcom/android/server/BSPApplicationManagerService$ApplicationManagerStub;-><init>(Lcom/android/server/BSPApplicationManagerService;)V

    iput-object v0, p0, Lcom/android/server/BSPApplicationManagerService;->mStub:Lcom/android/server/BSPApplicationManagerService$ApplicationManagerStub;

    .line 74
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/BSPApplicationManagerService;)Lcom/android/server/BSPApplicationUtils;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BSPApplicationManagerService;

    .line 43
    iget-object v0, p0, Lcom/android/server/BSPApplicationManagerService;->mAppUtils:Lcom/android/server/BSPApplicationUtils;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/BSPApplicationManagerService;)Lcom/android/server/cpuperf/PerformanceController;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BSPApplicationManagerService;

    .line 43
    iget-object v0, p0, Lcom/android/server/BSPApplicationManagerService;->mPerformanceController:Lcom/android/server/cpuperf/PerformanceController;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/BSPApplicationManagerService;)Landroid/os/IBinder;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BSPApplicationManagerService;

    .line 43
    iget-object v0, p0, Lcom/android/server/BSPApplicationManagerService;->mVideoBoost:Landroid/os/IBinder;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/server/BSPApplicationManagerService;Landroid/os/IBinder;)Landroid/os/IBinder;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/BSPApplicationManagerService;
    .param p1, "x1"    # Landroid/os/IBinder;

    .line 43
    iput-object p1, p0, Lcom/android/server/BSPApplicationManagerService;->mVideoBoost:Landroid/os/IBinder;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/server/BSPApplicationManagerService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BSPApplicationManagerService;

    .line 43
    iget-object v0, p0, Lcom/android/server/BSPApplicationManagerService;->mPreFoceAcitvity:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/server/BSPApplicationManagerService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/BSPApplicationManagerService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 43
    iput-object p1, p0, Lcom/android/server/BSPApplicationManagerService;->mPreFoceAcitvity:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/server/BSPApplicationManagerService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BSPApplicationManagerService;

    .line 43
    iget-object v0, p0, Lcom/android/server/BSPApplicationManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/BSPApplicationManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/BSPApplicationManagerService;

    .line 43
    invoke-direct {p0}, Lcom/android/server/BSPApplicationManagerService;->nubiaSchedutilPerfPackage()V

    return-void
.end method

.method private createAllControllers()V
    .locals 3

    .line 90
    const-class v0, Landroid/hardware/display/DisplayManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManagerInternal;

    iput-object v0, p0, Lcom/android/server/BSPApplicationManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 92
    new-instance v0, Lcom/android/server/cpuperf/PerfDataManager;

    iget-object v1, p0, Lcom/android/server/BSPApplicationManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/BSPApplicationManagerService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, p0, v2}, Lcom/android/server/cpuperf/PerfDataManager;-><init>(Landroid/content/Context;Lcom/android/server/BSPApplicationManagerService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/BSPApplicationManagerService;->mPerfDataManager:Lcom/android/server/cpuperf/PerfDataManager;

    .line 93
    new-instance v0, Lcom/android/server/cpuperf/PerformanceController;

    iget-object v1, p0, Lcom/android/server/BSPApplicationManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/BSPApplicationManagerService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2}, Lcom/android/server/cpuperf/PerformanceController;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/BSPApplicationManagerService;->mPerformanceController:Lcom/android/server/cpuperf/PerformanceController;

    .line 99
    new-instance v0, Lcom/android/server/cpuperf/CPUSampler;

    iget-object v1, p0, Lcom/android/server/BSPApplicationManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/cpuperf/CPUSampler;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/BSPApplicationManagerService;->mCPUSampler:Lcom/android/server/cpuperf/CPUSampler;

    .line 101
    new-instance v0, Lcom/android/server/BSPApplicationUtils;

    iget-object v1, p0, Lcom/android/server/BSPApplicationManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/BSPApplicationUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/BSPApplicationManagerService;->mAppUtils:Lcom/android/server/BSPApplicationUtils;

    .line 103
    iget-object v0, p0, Lcom/android/server/BSPApplicationManagerService;->mCPUSampler:Lcom/android/server/cpuperf/CPUSampler;

    invoke-virtual {v0, p0}, Lcom/android/server/cpuperf/CPUSampler;->setService(Lcom/android/server/BSPApplicationManagerService;)V

    .line 104
    return-void
.end method

.method private nubiaSchedutilPerfPackage()V
    .locals 12

    .line 125
    iget-object v0, p0, Lcom/android/server/BSPApplicationManagerService;->mAppUtils:Lcom/android/server/BSPApplicationUtils;

    invoke-virtual {v0}, Lcom/android/server/BSPApplicationUtils;->getForegroundPackageName()Ljava/util/List;

    move-result-object v0

    .line 126
    .local v0, "foregroundPkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v0, :cond_0

    .line 127
    return-void

    .line 130
    :cond_0
    const/4 v1, 0x0

    .line 131
    .local v1, "isInSchedutilPerfList":Z
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 132
    .local v3, "pkg":Ljava/lang/String;
    sget-object v4, Lcn/nubiamini/server/appmgmt/BSPPkgNameList;->mPackageSchedutilPerfList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 133
    const/4 v1, 0x1

    .line 134
    goto :goto_1

    .line 136
    .end local v3    # "pkg":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 138
    :cond_2
    :goto_1
    const/4 v2, 0x0

    .line 139
    .local v2, "isInGamePerfList":Z
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 140
    .local v4, "pkg":Ljava/lang/String;
    sget-object v5, Lcn/nubiamini/server/appmgmt/BSPPkgNameList;->mPackageBlackList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 141
    .local v6, "pkglist":Ljava/lang/String;
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 142
    const/4 v2, 0x1

    .line 143
    goto :goto_4

    .line 145
    .end local v6    # "pkglist":Ljava/lang/String;
    :cond_3
    goto :goto_3

    .line 146
    :cond_4
    :goto_4
    invoke-static {}, Lnubia/os/ApplicationManager$Trigger;->getGameLauncherAppNameList()Ljava/util/List;

    move-result-object v5

    .line 147
    .local v5, "gameLauncherAppNameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v5, :cond_6

    .line 148
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 149
    .local v7, "pkglist":Ljava/lang/String;
    invoke-virtual {v7, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 150
    const/4 v2, 0x1

    .line 151
    goto :goto_6

    .line 153
    .end local v7    # "pkglist":Ljava/lang/String;
    :cond_5
    goto :goto_5

    .line 155
    :cond_6
    :goto_6
    if-eqz v2, :cond_7

    .line 156
    goto :goto_7

    .line 158
    .end local v4    # "pkg":Ljava/lang/String;
    .end local v5    # "gameLauncherAppNameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_7
    goto :goto_2

    .line 160
    :cond_8
    :goto_7
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_9

    iget-boolean v5, p0, Lcom/android/server/BSPApplicationManagerService;->mIsSchedutilPerf:Z

    if-nez v5, :cond_9

    .line 161
    const-string/jumbo v5, "persist.sys.cpu.cpufreq.ctrl"

    const-string v6, "0"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    iput-boolean v4, p0, Lcom/android/server/BSPApplicationManagerService;->mIsSchedutilPerf:Z

    goto :goto_8

    .line 163
    :cond_9
    if-nez v1, :cond_a

    iget-boolean v5, p0, Lcom/android/server/BSPApplicationManagerService;->mIsSchedutilPerf:Z

    if-eqz v5, :cond_a

    .line 164
    const-string/jumbo v5, "persist.sys.cpu.cpufreq.ctrl"

    const-string v6, "1"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    iput-boolean v3, p0, Lcom/android/server/BSPApplicationManagerService;->mIsSchedutilPerf:Z

    .line 168
    :cond_a
    :goto_8
    if-eqz v2, :cond_b

    iget-boolean v5, p0, Lcom/android/server/BSPApplicationManagerService;->mIsGameSchedutilPerf:Z

    if-nez v5, :cond_b

    .line 169
    const-string/jumbo v3, "persist.sys.cpu.cpufreq.ctrl"

    const-string v5, "2"

    invoke-static {v3, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    iput-boolean v4, p0, Lcom/android/server/BSPApplicationManagerService;->mIsGameSchedutilPerf:Z

    .line 172
    iget-object v6, p0, Lcom/android/server/BSPApplicationManagerService;->mPerformanceController:Lcom/android/server/cpuperf/PerformanceController;

    const/4 v7, -0x1

    const/4 v8, -0x1

    const-string/jumbo v9, "launchGameLauncherListApp"

    const-string v10, ""

    const/4 v11, 0x0

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/cpuperf/PerformanceController;->noteResumingActivity(IILjava/lang/String;Ljava/lang/String;Z)V

    goto :goto_9

    .line 174
    :cond_b
    if-nez v2, :cond_c

    iget-boolean v4, p0, Lcom/android/server/BSPApplicationManagerService;->mIsGameSchedutilPerf:Z

    if-eqz v4, :cond_c

    .line 175
    const-string/jumbo v4, "persist.sys.cpu.cpufreq.ctrl"

    const-string v5, "1"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    iput-boolean v3, p0, Lcom/android/server/BSPApplicationManagerService;->mIsGameSchedutilPerf:Z

    .line 178
    :cond_c
    :goto_9
    iget-boolean v3, p0, Lcom/android/server/BSPApplicationManagerService;->mIsGameSchedutilPerf:Z

    if-nez v3, :cond_d

    .line 180
    iget-object v3, p0, Lcom/android/server/BSPApplicationManagerService;->mPerformanceController:Lcom/android/server/cpuperf/PerformanceController;

    const-string/jumbo v4, "launchGameLauncherListApp"

    const-string v5, ""

    const/4 v6, -0x1

    invoke-virtual {v3, v6, v6, v4, v5}, Lcom/android/server/cpuperf/PerformanceController;->notePausingActivity(IILjava/lang/String;Ljava/lang/String;)V

    .line 183
    :cond_d
    return-void
.end method

.method private updateAllControllersData()V
    .locals 0

    .line 122
    return-void
.end method


# virtual methods
.method public dumpSimple()Ljava/lang/String;
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/android/server/BSPApplicationManagerService;->mPerformanceController:Lcom/android/server/cpuperf/PerformanceController;

    invoke-virtual {v0}, Lcom/android/server/cpuperf/PerformanceController;->dumpSimple()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onBootPhase(I)V
    .locals 1
    .param p1, "phase"    # I

    .line 78
    const/16 v0, 0x226

    if-ne p1, v0, :cond_0

    .line 79
    invoke-direct {p0}, Lcom/android/server/BSPApplicationManagerService;->createAllControllers()V

    .line 81
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 85
    const-string/jumbo v0, "nubia.bspapplication.manager"

    iget-object v1, p0, Lcom/android/server/BSPApplicationManagerService;->mStub:Lcom/android/server/BSPApplicationManagerService$ApplicationManagerStub;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/BSPApplicationManagerService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 86
    return-void
.end method

.method public reloadPreformanceConfiguration()V
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/android/server/BSPApplicationManagerService;->mPerformanceController:Lcom/android/server/cpuperf/PerformanceController;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/android/server/BSPApplicationManagerService;->mPerformanceController:Lcom/android/server/cpuperf/PerformanceController;

    invoke-virtual {v0}, Lcom/android/server/cpuperf/PerformanceController;->reloadPreformanceConfiguration()V

    .line 114
    :cond_0
    return-void
.end method
