.class public Lcn/nubia/server/appmgmt/freezer/GPSCheck;
.super Ljava/lang/Object;
.source "GPSCheck.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/server/appmgmt/freezer/GPSCheck$MotionDozeStateReceiver;
    }
.end annotation


# static fields
.field private static final ACTION_ENTER_MOTION_DOZE:Ljava/lang/String; = "cn.nubia.server.appmgmt.ENTER_MOTION_DOZE"

.field private static final ACTION_LEAVE_MOTION_DOZE:Ljava/lang/String; = "cn.nubia.server.appmgmt.LEAVE_MOTION_DOZE"

.field private static final NO_MOTION_TO_DOZE_TIME:J = 0x927c0L

.field private static final PID:Ljava/lang/String; = "pid"

.field private static final TAG:Ljava/lang/String; = "ApplicationFreeze_GPSCheck"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mController:Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

.field private mLocationManagerService:Lcom/android/server/LocationManagerService;

.field private mMotionDoze:Z

.field private mMotionDozeStateReceiver:Lcn/nubia/server/appmgmt/freezer/GPSCheck$MotionDozeStateReceiver;

.field private mMotionDozeTime:J


# direct methods
.method public constructor <init>(Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;Landroid/content/Context;)V
    .locals 2
    .param p1, "controller"    # Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;
    .param p2, "context"    # Landroid/content/Context;

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/server/appmgmt/freezer/GPSCheck;->mMotionDoze:Z

    .line 35
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcn/nubia/server/appmgmt/freezer/GPSCheck;->mMotionDozeTime:J

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/server/appmgmt/freezer/GPSCheck;->mContext:Landroid/content/Context;

    .line 37
    iput-object v0, p0, Lcn/nubia/server/appmgmt/freezer/GPSCheck;->mMotionDozeStateReceiver:Lcn/nubia/server/appmgmt/freezer/GPSCheck$MotionDozeStateReceiver;

    .line 40
    iput-object p1, p0, Lcn/nubia/server/appmgmt/freezer/GPSCheck;->mController:Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    .line 41
    iput-object p2, p0, Lcn/nubia/server/appmgmt/freezer/GPSCheck;->mContext:Landroid/content/Context;

    .line 42
    const-string/jumbo v0, "location"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 43
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/location/ILocationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/ILocationManager;

    move-result-object v1

    check-cast v1, Lcom/android/server/LocationManagerService;

    iput-object v1, p0, Lcn/nubia/server/appmgmt/freezer/GPSCheck;->mLocationManagerService:Lcom/android/server/LocationManagerService;

    .line 44
    new-instance v1, Lcn/nubia/server/appmgmt/freezer/GPSCheck$MotionDozeStateReceiver;

    invoke-direct {v1, p0}, Lcn/nubia/server/appmgmt/freezer/GPSCheck$MotionDozeStateReceiver;-><init>(Lcn/nubia/server/appmgmt/freezer/GPSCheck;)V

    iput-object v1, p0, Lcn/nubia/server/appmgmt/freezer/GPSCheck;->mMotionDozeStateReceiver:Lcn/nubia/server/appmgmt/freezer/GPSCheck$MotionDozeStateReceiver;

    .line 45
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/server/appmgmt/freezer/GPSCheck;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/freezer/GPSCheck;

    .line 24
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/GPSCheck;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$102(Lcn/nubia/server/appmgmt/freezer/GPSCheck;J)J
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/freezer/GPSCheck;
    .param p1, "x1"    # J

    .line 24
    iput-wide p1, p0, Lcn/nubia/server/appmgmt/freezer/GPSCheck;->mMotionDozeTime:J

    return-wide p1
.end method

.method static synthetic access$202(Lcn/nubia/server/appmgmt/freezer/GPSCheck;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/freezer/GPSCheck;
    .param p1, "x1"    # Z

    .line 24
    iput-boolean p1, p0, Lcn/nubia/server/appmgmt/freezer/GPSCheck;->mMotionDoze:Z

    return p1
.end method


# virtual methods
.method isGPSNoFreezeApp(Lcn/nubia/server/appmgmt/freezer/ProcessInfo;)Z
    .locals 4
    .param p1, "info"    # Lcn/nubia/server/appmgmt/freezer/ProcessInfo;

    .line 94
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/GPSCheck;->mController:Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    invoke-virtual {v0}, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->getDataManager()Lcn/nubia/server/appmgmt/AppDataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/server/appmgmt/AppDataManager;->getNoFreezeGpsAppList()Ljava/util/HashSet;

    move-result-object v0

    .line 95
    .local v0, "noFreezeGpsAppList":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 96
    .local v2, "app":Ljava/lang/String;
    iget-object v3, p1, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 97
    const/4 v1, 0x1

    return v1

    .line 99
    .end local v2    # "app":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 100
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method isInMotionDozeState(Lcn/nubia/server/appmgmt/freezer/ProcessInfo;)Z
    .locals 5
    .param p1, "info"    # Lcn/nubia/server/appmgmt/freezer/ProcessInfo;

    .line 77
    if-nez p1, :cond_0

    .line 78
    const/4 v0, 0x0

    return v0

    .line 80
    :cond_0
    const/4 v0, 0x0

    .line 81
    .local v0, "isInMotionDozeState":Z
    iget-boolean v1, p0, Lcn/nubia/server/appmgmt/freezer/GPSCheck;->mMotionDoze:Z

    if-eqz v1, :cond_2

    iget-wide v1, p0, Lcn/nubia/server/appmgmt/freezer/GPSCheck;->mMotionDozeTime:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_2

    .line 82
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcn/nubia/server/appmgmt/freezer/GPSCheck;->mMotionDozeTime:J

    sub-long/2addr v1, v3

    const-wide/32 v3, 0x927c0

    cmp-long v1, v1, v3

    if-lez v1, :cond_2

    .line 83
    invoke-virtual {p0, p1}, Lcn/nubia/server/appmgmt/freezer/GPSCheck;->isGPSNoFreezeApp(Lcn/nubia/server/appmgmt/freezer/ProcessInfo;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0, p1}, Lcn/nubia/server/appmgmt/freezer/GPSCheck;->isSportApp(Lcn/nubia/server/appmgmt/freezer/ProcessInfo;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 84
    :cond_1
    const/4 v0, 0x1

    .line 87
    :cond_2
    sget-boolean v1, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeConfig;->DEBUG:Z

    if-eqz v1, :cond_3

    .line 88
    const-string v1, "ApplicationFreeze_GPSCheck"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "pkg: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " isInMotionDozeState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    :cond_3
    return v0
.end method

.method isSportApp(Lcn/nubia/server/appmgmt/freezer/ProcessInfo;)Z
    .locals 4
    .param p1, "info"    # Lcn/nubia/server/appmgmt/freezer/ProcessInfo;

    .line 104
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/GPSCheck;->mController:Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    invoke-virtual {v0}, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->getDataManager()Lcn/nubia/server/appmgmt/AppDataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/server/appmgmt/AppDataManager;->getSportAppList()Ljava/util/HashSet;

    move-result-object v0

    .line 105
    .local v0, "sportAppList":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 106
    .local v2, "app":Ljava/lang/String;
    iget-object v3, p1, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 107
    const/4 v1, 0x1

    return v1

    .line 109
    .end local v2    # "app":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 110
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method isUsingGPS(Lcn/nubia/server/appmgmt/freezer/ProcessInfo;)Z
    .locals 6
    .param p1, "info"    # Lcn/nubia/server/appmgmt/freezer/ProcessInfo;

    .line 116
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/GPSCheck;->mLocationManagerService:Lcom/android/server/LocationManagerService;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 117
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/GPSCheck;->mLocationManagerService:Lcom/android/server/LocationManagerService;

    invoke-virtual {v0}, Lcom/android/server/LocationManagerService;->getCurrentGpsReceivers()[Landroid/os/Bundle;

    move-result-object v0

    .line 118
    .local v0, "bundles":[Landroid/os/Bundle;
    if-eqz v0, :cond_1

    .line 119
    move v2, v1

    .line 119
    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 120
    iget v3, p1, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mPid:I

    aget-object v4, v0, v2

    const-string/jumbo v5, "pid"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 121
    const/4 v1, 0x1

    return v1

    .line 119
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 126
    .end local v0    # "bundles":[Landroid/os/Bundle;
    .end local v2    # "i":I
    :cond_1
    return v1
.end method
