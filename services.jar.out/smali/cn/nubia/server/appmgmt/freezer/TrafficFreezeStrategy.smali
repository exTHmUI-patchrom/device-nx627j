.class public Lcn/nubia/server/appmgmt/freezer/TrafficFreezeStrategy;
.super Lcn/nubia/server/appmgmt/freezer/BaseStrategy;
.source "TrafficFreezeStrategy.java"


# static fields
.field private static DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "TrafficFreezeStrategy"

.field private static final TRAFFIC_CALCULATE_INTERVAL:I = 0xea60

.field private static final TRAFFIC_FREEZE_THRESHOLD:I = 0x32000


# instance fields
.field private mController:Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    sget-boolean v0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->DEBUG_FREEZE:Z

    sput-boolean v0, Lcn/nubia/server/appmgmt/freezer/TrafficFreezeStrategy;->DEBUG:Z

    return-void
.end method

.method constructor <init>(Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;)V
    .locals 3
    .param p1, "controller"    # Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    .line 23
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/freezer/BaseStrategy;-><init>()V

    .line 24
    iput-object p1, p0, Lcn/nubia/server/appmgmt/freezer/TrafficFreezeStrategy;->mController:Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    .line 25
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "UpdateTrafficThread"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/freezer/TrafficFreezeStrategy;->mHandlerThread:Landroid/os/HandlerThread;

    .line 27
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/TrafficFreezeStrategy;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 28
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/freezer/TrafficFreezeStrategy;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/freezer/TrafficFreezeStrategy;->mHandler:Landroid/os/Handler;

    .line 29
    return-void
.end method

.method private firstCheck(Lcn/nubia/server/appmgmt/freezer/ProcessInfo;)Z
    .locals 4
    .param p1, "info"    # Lcn/nubia/server/appmgmt/freezer/ProcessInfo;

    .line 53
    iget v0, p1, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mUid:I

    invoke-direct {p0, v0}, Lcn/nubia/server/appmgmt/freezer/TrafficFreezeStrategy;->getTraffic(I)J

    move-result-wide v0

    .line 54
    .local v0, "traffic":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    return v2

    .line 56
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p1, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mTrafficCheckTime:J

    .line 57
    iput-wide v0, p1, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mTrafficBytes:J

    .line 58
    const/4 v2, 0x0

    return v2
.end method

.method private getCalculateInterval()J
    .locals 4

    .line 86
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/TrafficFreezeStrategy;->mController:Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    invoke-virtual {v0}, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->getDataManager()Lcn/nubia/server/appmgmt/AppDataManager;

    move-result-object v0

    iget-wide v0, v0, Lcn/nubia/server/appmgmt/AppDataManager;->mTrafficCalInterval:J

    .line 87
    .local v0, "calculateInterval":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    move-wide v2, v0

    goto :goto_0

    :cond_0
    const-wide/32 v2, 0xea60

    :goto_0
    return-wide v2
.end method

.method private getFreezeThreshold()J
    .locals 4

    .line 81
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/TrafficFreezeStrategy;->mController:Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    invoke-virtual {v0}, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->getDataManager()Lcn/nubia/server/appmgmt/AppDataManager;

    move-result-object v0

    iget-wide v0, v0, Lcn/nubia/server/appmgmt/AppDataManager;->mTrafficFreezeThreshold:J

    .line 82
    .local v0, "freezeThreshold":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    move-wide v2, v0

    goto :goto_0

    :cond_0
    const-wide/32 v2, 0x32000

    :goto_0
    return-wide v2
.end method

.method private getTraffic(I)J
    .locals 4
    .param p1, "uid"    # I

    .line 44
    invoke-static {p1}, Lcn/nubia/server/appmgmt/freezer/TrafficUtils;->getUidMobileBytes(I)J

    move-result-wide v0

    invoke-static {p1}, Lcn/nubia/server/appmgmt/freezer/TrafficUtils;->getUidWifiBytes(I)J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method private hasCheckOnce(Lcn/nubia/server/appmgmt/freezer/ProcessInfo;)Z
    .locals 4
    .param p1, "info"    # Lcn/nubia/server/appmgmt/freezer/ProcessInfo;

    .line 48
    iget-wide v0, p1, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mTrafficBytes:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private otherCheck(Lcn/nubia/server/appmgmt/freezer/ProcessInfo;)Z
    .locals 9
    .param p1, "info"    # Lcn/nubia/server/appmgmt/freezer/ProcessInfo;

    .line 63
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 64
    .local v0, "now":J
    iget v2, p1, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mUid:I

    invoke-direct {p0, v2}, Lcn/nubia/server/appmgmt/freezer/TrafficFreezeStrategy;->getTraffic(I)J

    move-result-wide v2

    .line 65
    .local v2, "nowTraffic":J
    iget-wide v4, p1, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mTrafficBytes:J

    cmp-long v4, v2, v4

    if-nez v4, :cond_0

    .line 66
    iput-wide v0, p1, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mTrafficCheckTime:J

    .line 67
    const/4 v4, 0x1

    return v4

    .line 69
    :cond_0
    iget-wide v4, p1, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mTrafficCheckTime:J

    invoke-direct {p0}, Lcn/nubia/server/appmgmt/freezer/TrafficFreezeStrategy;->getCalculateInterval()J

    move-result-wide v6

    add-long/2addr v4, v6

    cmp-long v4, v4, v0

    if-gez v4, :cond_2

    .line 70
    iget-wide v4, p1, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mTrafficBytes:J

    invoke-direct {p0, v4, v5, v2, v3}, Lcn/nubia/server/appmgmt/freezer/TrafficFreezeStrategy;->shouldFreeze(JJ)Z

    move-result v4

    .line 71
    .local v4, "shouldFreeze":Z
    sget-boolean v5, Lcn/nubia/server/appmgmt/freezer/TrafficFreezeStrategy;->DEBUG:Z

    if-eqz v5, :cond_1

    if-nez v4, :cond_1

    const-string v5, "TrafficFreezeStrategy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "process "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p1, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "traffic "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, p1, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mTrafficBytes:J

    sub-long v7, v2, v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    :cond_1
    iput-wide v2, p1, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mTrafficBytes:J

    .line 73
    iput-wide v0, p1, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mTrafficCheckTime:J

    .line 75
    return v4

    .line 77
    .end local v4    # "shouldFreeze":Z
    :cond_2
    const/4 v4, 0x0

    return v4
.end method

.method private shouldFreeze(JJ)Z
    .locals 4
    .param p1, "firstT"    # J
    .param p3, "secT"    # J

    .line 91
    sub-long v0, p3, p1

    invoke-direct {p0}, Lcn/nubia/server/appmgmt/freezer/TrafficFreezeStrategy;->getFreezeThreshold()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public check(Lcn/nubia/server/appmgmt/freezer/ProcessInfo;)Z
    .locals 1
    .param p1, "info"    # Lcn/nubia/server/appmgmt/freezer/ProcessInfo;

    .line 37
    invoke-direct {p0, p1}, Lcn/nubia/server/appmgmt/freezer/TrafficFreezeStrategy;->hasCheckOnce(Lcn/nubia/server/appmgmt/freezer/ProcessInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    invoke-direct {p0, p1}, Lcn/nubia/server/appmgmt/freezer/TrafficFreezeStrategy;->otherCheck(Lcn/nubia/server/appmgmt/freezer/ProcessInfo;)Z

    move-result v0

    return v0

    .line 40
    :cond_0
    invoke-direct {p0, p1}, Lcn/nubia/server/appmgmt/freezer/TrafficFreezeStrategy;->firstCheck(Lcn/nubia/server/appmgmt/freezer/ProcessInfo;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic needCheckWhenOtherNotAllow()Z
    .locals 1

    .line 12
    invoke-super {p0}, Lcn/nubia/server/appmgmt/freezer/BaseStrategy;->needCheckWhenOtherNotAllow()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic preCheck()V
    .locals 0

    .line 12
    invoke-super {p0}, Lcn/nubia/server/appmgmt/freezer/BaseStrategy;->preCheck()V

    return-void
.end method

.method public resetArgs()V
    .locals 1

    .line 32
    sget-boolean v0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->DEBUG_FREEZE:Z

    sput-boolean v0, Lcn/nubia/server/appmgmt/freezer/TrafficFreezeStrategy;->DEBUG:Z

    .line 33
    return-void
.end method
