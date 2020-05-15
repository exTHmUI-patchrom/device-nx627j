.class public Lnubia/twolevel/BroadcastAdjustor;
.super Ljava/lang/Object;
.source "BroadcastAdjustor.java"


# static fields
.field private static mInstance:Lnubia/twolevel/BroadcastAdjustor;

.field private static volatile sIsDelayBroadcastReceviceReg:Z


# instance fields
.field private mUpdateDelayStateRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 9
    const/4 v0, 0x0

    sput-boolean v0, Lnubia/twolevel/BroadcastAdjustor;->sIsDelayBroadcastReceviceReg:Z

    .line 10
    new-instance v0, Lnubia/twolevel/BroadcastAdjustor;

    invoke-direct {v0}, Lnubia/twolevel/BroadcastAdjustor;-><init>()V

    sput-object v0, Lnubia/twolevel/BroadcastAdjustor;->mInstance:Lnubia/twolevel/BroadcastAdjustor;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Lnubia/twolevel/BroadcastAdjustor$1;

    invoke-direct {v0, p0}, Lnubia/twolevel/BroadcastAdjustor$1;-><init>(Lnubia/twolevel/BroadcastAdjustor;)V

    iput-object v0, p0, Lnubia/twolevel/BroadcastAdjustor;->mUpdateDelayStateRunnable:Ljava/lang/Runnable;

    .line 12
    return-void
.end method

.method static synthetic access$000()Lnubia/twolevel/BroadcastAdjustor;
    .locals 1

    .line 8
    sget-object v0, Lnubia/twolevel/BroadcastAdjustor;->mInstance:Lnubia/twolevel/BroadcastAdjustor;

    return-object v0
.end method

.method static synthetic access$102(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .line 8
    sput-boolean p0, Lnubia/twolevel/BroadcastAdjustor;->sIsDelayBroadcastReceviceReg:Z

    return p0
.end method

.method public static instance()Lnubia/twolevel/BroadcastAdjustor;
    .locals 1

    .line 14
    sget-object v0, Lnubia/twolevel/BroadcastAdjustor;->mInstance:Lnubia/twolevel/BroadcastAdjustor;

    return-object v0
.end method


# virtual methods
.method public checkDelayBroadcastStatus(Landroid/os/Handler;Landroid/content/pm/ApplicationInfo;)V
    .locals 2
    .param p1, "activityThreadH"    # Landroid/os/Handler;
    .param p2, "info"    # Landroid/content/pm/ApplicationInfo;

    .line 22
    if-nez p1, :cond_0

    .line 23
    return-void

    .line 25
    :cond_0
    invoke-static {}, Lnubia/twolevel/RenderThreadAdjustor;->instance()Lnubia/twolevel/RenderThreadAdjustor;

    move-result-object v0

    iget-boolean v0, v0, Lnubia/twolevel/RenderThreadAdjustor;->mLaunchForActivityStart:Z

    if-eqz v0, :cond_1

    .line 26
    iget-object v0, p0, Lnubia/twolevel/BroadcastAdjustor;->mUpdateDelayStateRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 27
    sget-object v0, Lnubia/twolevel/BroadcastAdjustor;->mInstance:Lnubia/twolevel/BroadcastAdjustor;

    monitor-enter v0

    .line 28
    :try_start_0
    invoke-static {p2}, Lnubia/twolevel/TwoLevelUtils;->isThirdPartyApp(Landroid/content/pm/ApplicationInfo;)Z

    move-result v1

    sput-boolean v1, Lnubia/twolevel/BroadcastAdjustor;->sIsDelayBroadcastReceviceReg:Z

    .line 29
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 32
    :cond_1
    :goto_0
    return-void
.end method

.method public getUpdateDelayStateRunnable()Ljava/lang/Runnable;
    .locals 1

    .line 50
    iget-object v0, p0, Lnubia/twolevel/BroadcastAdjustor;->mUpdateDelayStateRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method public isDelayBroadcastRecevice()Z
    .locals 2

    .line 45
    sget-object v0, Lnubia/twolevel/BroadcastAdjustor;->mInstance:Lnubia/twolevel/BroadcastAdjustor;

    monitor-enter v0

    .line 46
    :try_start_0
    sget-boolean v1, Lnubia/twolevel/BroadcastAdjustor;->sIsDelayBroadcastReceviceReg:Z

    monitor-exit v0

    return v1

    .line 47
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public postUpdateDelayStateRunnable(Landroid/os/Handler;)V
    .locals 4
    .param p1, "activityThreadH"    # Landroid/os/Handler;

    .line 34
    if-nez p1, :cond_0

    .line 35
    return-void

    .line 37
    :cond_0
    sget-object v0, Lnubia/twolevel/BroadcastAdjustor;->mInstance:Lnubia/twolevel/BroadcastAdjustor;

    monitor-enter v0

    .line 38
    :try_start_0
    sget-boolean v1, Lnubia/twolevel/BroadcastAdjustor;->sIsDelayBroadcastReceviceReg:Z

    if-eqz v1, :cond_1

    .line 39
    iget-object v1, p0, Lnubia/twolevel/BroadcastAdjustor;->mUpdateDelayStateRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 40
    iget-object v1, p0, Lnubia/twolevel/BroadcastAdjustor;->mUpdateDelayStateRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 42
    :cond_1
    monitor-exit v0

    .line 43
    return-void

    .line 42
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
