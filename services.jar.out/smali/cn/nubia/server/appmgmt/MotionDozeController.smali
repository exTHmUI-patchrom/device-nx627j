.class public Lcn/nubia/server/appmgmt/MotionDozeController;
.super Ljava/lang/Object;
.source "MotionDozeController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/server/appmgmt/MotionDozeController$SystemReadyRunnalbe;,
        Lcn/nubia/server/appmgmt/MotionDozeController$NoteRemovingProcessRunnable;,
        Lcn/nubia/server/appmgmt/MotionDozeController$NoteStartingProcessRunnable;,
        Lcn/nubia/server/appmgmt/MotionDozeController$PeriodicAdjustStateRunnable;,
        Lcn/nubia/server/appmgmt/MotionDozeController$AdjustStateRunnable;,
        Lcn/nubia/server/appmgmt/MotionDozeController$ScreenStateReceiver;,
        Lcn/nubia/server/appmgmt/MotionDozeController$ChargingStateReceiver;
    }
.end annotation


# static fields
.field private static final STATE_DOZE:I = 0x2

.field private static final STATE_NORMAL:I = 0x1

.field private static final TAG:Ljava/lang/String; = "MotionDozeController"


# instance fields
.field private mAdjustStateRunnable:Lcn/nubia/server/appmgmt/MotionDozeController$AdjustStateRunnable;

.field private mCharging:Z

.field private mChargingStateReceiver:Lcn/nubia/server/appmgmt/MotionDozeController$ChargingStateReceiver;

.field private mContext:Landroid/content/Context;

.field private mCurrentState:I

.field private mDataManager:Lcn/nubia/server/appmgmt/AppDataManager;

.field private mDumpDebugLog:Z

.field private mEnterMotionDozeIntent:Landroid/content/Intent;

.field private mGPSLocationUpdateEnabled:Z

.field private mGetSigMotion:Z

.field private mHandler:Landroid/os/Handler;

.field private mLeaveMotionDozeIntent:Landroid/content/Intent;

.field private mLock:Ljava/lang/Object;

.field private mMotionApps:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPackageProcessCounts:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPackageProcessUids:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPeriodicAdjustStateRunnable:Lcn/nubia/server/appmgmt/MotionDozeController$PeriodicAdjustStateRunnable;

.field private mRunningMotionApp:Z

.field private mRunningMotionApps:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mScreenOn:Z

.field private mScreenStateReceiver:Lcn/nubia/server/appmgmt/MotionDozeController$ScreenStateReceiver;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mSigMotionActive:Z

.field private mSigMotionListener:Landroid/hardware/TriggerEventListener;

.field private mSigMotionSensor:Landroid/hardware/Sensor;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    const-string/jumbo v0, "userdebug"

    sget-object v3, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcn/nubia/server/appmgmt/MotionDozeController;->mDumpDebugLog:Z

    .line 44
    iput-boolean v2, p0, Lcn/nubia/server/appmgmt/MotionDozeController;->mSigMotionActive:Z

    .line 49
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/MotionDozeController;->mMotionApps:Ljava/util/HashSet;

    .line 50
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/MotionDozeController;->mLock:Ljava/lang/Object;

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/MotionDozeController;->mPackageProcessCounts:Ljava/util/HashMap;

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/MotionDozeController;->mPackageProcessUids:Ljava/util/HashMap;

    .line 54
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/MotionDozeController;->mRunningMotionApps:Ljava/util/HashSet;

    .line 56
    iput-boolean v2, p0, Lcn/nubia/server/appmgmt/MotionDozeController;->mRunningMotionApp:Z

    .line 57
    iput-boolean v2, p0, Lcn/nubia/server/appmgmt/MotionDozeController;->mScreenOn:Z

    .line 58
    iput-boolean v2, p0, Lcn/nubia/server/appmgmt/MotionDozeController;->mCharging:Z

    .line 59
    iput-boolean v2, p0, Lcn/nubia/server/appmgmt/MotionDozeController;->mGetSigMotion:Z

    .line 60
    iput-boolean v2, p0, Lcn/nubia/server/appmgmt/MotionDozeController;->mGPSLocationUpdateEnabled:Z

    .line 64
    iput v1, p0, Lcn/nubia/server/appmgmt/MotionDozeController;->mCurrentState:I

    .line 70
    new-instance v0, Landroid/content/Intent;

    const-string v1, "cn.nubia.server.appmgmt.ENTER_MOTION_DOZE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/MotionDozeController;->mEnterMotionDozeIntent:Landroid/content/Intent;

    .line 71
    new-instance v0, Landroid/content/Intent;

    const-string v1, "cn.nubia.server.appmgmt.LEAVE_MOTION_DOZE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/MotionDozeController;->mLeaveMotionDozeIntent:Landroid/content/Intent;

    .line 252
    new-instance v0, Lcn/nubia/server/appmgmt/MotionDozeController$1;

    invoke-direct {v0, p0}, Lcn/nubia/server/appmgmt/MotionDozeController$1;-><init>(Lcn/nubia/server/appmgmt/MotionDozeController;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/MotionDozeController;->mSigMotionListener:Landroid/hardware/TriggerEventListener;

    .line 270
    new-instance v0, Lcn/nubia/server/appmgmt/MotionDozeController$AdjustStateRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcn/nubia/server/appmgmt/MotionDozeController$AdjustStateRunnable;-><init>(Lcn/nubia/server/appmgmt/MotionDozeController;Lcn/nubia/server/appmgmt/MotionDozeController$1;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/MotionDozeController;->mAdjustStateRunnable:Lcn/nubia/server/appmgmt/MotionDozeController$AdjustStateRunnable;

    .line 280
    new-instance v0, Lcn/nubia/server/appmgmt/MotionDozeController$PeriodicAdjustStateRunnable;

    invoke-direct {v0, p0, v1}, Lcn/nubia/server/appmgmt/MotionDozeController$PeriodicAdjustStateRunnable;-><init>(Lcn/nubia/server/appmgmt/MotionDozeController;Lcn/nubia/server/appmgmt/MotionDozeController$1;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/MotionDozeController;->mPeriodicAdjustStateRunnable:Lcn/nubia/server/appmgmt/MotionDozeController$PeriodicAdjustStateRunnable;

    .line 74
    iput-object p1, p0, Lcn/nubia/server/appmgmt/MotionDozeController;->mContext:Landroid/content/Context;

    .line 75
    iput-object p2, p0, Lcn/nubia/server/appmgmt/MotionDozeController;->mHandler:Landroid/os/Handler;

    .line 77
    iget-object v0, p0, Lcn/nubia/server/appmgmt/MotionDozeController;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "sensor"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcn/nubia/server/appmgmt/MotionDozeController;->mSensorManager:Landroid/hardware/SensorManager;

    .line 78
    iget-object v0, p0, Lcn/nubia/server/appmgmt/MotionDozeController;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v2, 0x1e

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/server/appmgmt/MotionDozeController;->mSigMotionSensor:Landroid/hardware/Sensor;

    .line 79
    new-instance v0, Lcn/nubia/server/appmgmt/MotionDozeController$ScreenStateReceiver;

    invoke-direct {v0, p0}, Lcn/nubia/server/appmgmt/MotionDozeController$ScreenStateReceiver;-><init>(Lcn/nubia/server/appmgmt/MotionDozeController;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/MotionDozeController;->mScreenStateReceiver:Lcn/nubia/server/appmgmt/MotionDozeController$ScreenStateReceiver;

    .line 81
    new-instance v0, Lcn/nubia/server/appmgmt/MotionDozeController$ChargingStateReceiver;

    invoke-direct {v0, p0}, Lcn/nubia/server/appmgmt/MotionDozeController$ChargingStateReceiver;-><init>(Lcn/nubia/server/appmgmt/MotionDozeController;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/MotionDozeController;->mChargingStateReceiver:Lcn/nubia/server/appmgmt/MotionDozeController$ChargingStateReceiver;

    .line 83
    iget-object v0, p0, Lcn/nubia/server/appmgmt/MotionDozeController;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcn/nubia/server/appmgmt/MotionDozeController$SystemReadyRunnalbe;

    invoke-direct {v2, p0, v1}, Lcn/nubia/server/appmgmt/MotionDozeController$SystemReadyRunnalbe;-><init>(Lcn/nubia/server/appmgmt/MotionDozeController;Lcn/nubia/server/appmgmt/MotionDozeController$1;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 86
    iget-object v0, p0, Lcn/nubia/server/appmgmt/MotionDozeController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/MotionDozeController;->mHandler:Landroid/os/Handler;

    invoke-static {v0, v1}, Lcn/nubia/server/appmgmt/AppDataManager;->getInstance(Landroid/content/Context;Landroid/os/Handler;)Lcn/nubia/server/appmgmt/AppDataManager;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/server/appmgmt/MotionDozeController;->mDataManager:Lcn/nubia/server/appmgmt/AppDataManager;

    .line 87
    iget-object v0, p0, Lcn/nubia/server/appmgmt/MotionDozeController;->mMotionApps:Ljava/util/HashSet;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/MotionDozeController;->mDataManager:Lcn/nubia/server/appmgmt/AppDataManager;

    invoke-virtual {v1}, Lcn/nubia/server/appmgmt/AppDataManager;->getSportAppList()Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 88
    iget-object v0, p0, Lcn/nubia/server/appmgmt/MotionDozeController;->mMotionApps:Ljava/util/HashSet;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/MotionDozeController;->mDataManager:Lcn/nubia/server/appmgmt/AppDataManager;

    invoke-virtual {v1}, Lcn/nubia/server/appmgmt/AppDataManager;->getNoFreezeGpsAppList()Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 89
    return-void
.end method

.method static synthetic access$100(Lcn/nubia/server/appmgmt/MotionDozeController;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/MotionDozeController;

    .line 34
    iget-object v0, p0, Lcn/nubia/server/appmgmt/MotionDozeController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1000(Lcn/nubia/server/appmgmt/MotionDozeController;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/MotionDozeController;

    .line 34
    iget-object v0, p0, Lcn/nubia/server/appmgmt/MotionDozeController;->mPackageProcessCounts:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1100(Lcn/nubia/server/appmgmt/MotionDozeController;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/MotionDozeController;

    .line 34
    iget-object v0, p0, Lcn/nubia/server/appmgmt/MotionDozeController;->mPackageProcessUids:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1200(Lcn/nubia/server/appmgmt/MotionDozeController;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/MotionDozeController;

    .line 34
    iget-object v0, p0, Lcn/nubia/server/appmgmt/MotionDozeController;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1300(Lcn/nubia/server/appmgmt/MotionDozeController;)Ljava/util/HashSet;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/MotionDozeController;

    .line 34
    iget-object v0, p0, Lcn/nubia/server/appmgmt/MotionDozeController;->mMotionApps:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$1400(Lcn/nubia/server/appmgmt/MotionDozeController;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/MotionDozeController;

    .line 34
    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/MotionDozeController;->mRunningMotionApp:Z

    return v0
.end method

.method static synthetic access$1402(Lcn/nubia/server/appmgmt/MotionDozeController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/MotionDozeController;
    .param p1, "x1"    # Z

    .line 34
    iput-boolean p1, p0, Lcn/nubia/server/appmgmt/MotionDozeController;->mRunningMotionApp:Z

    return p1
.end method

.method static synthetic access$1500(Lcn/nubia/server/appmgmt/MotionDozeController;)Ljava/util/HashSet;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/MotionDozeController;

    .line 34
    iget-object v0, p0, Lcn/nubia/server/appmgmt/MotionDozeController;->mRunningMotionApps:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$200(Lcn/nubia/server/appmgmt/MotionDozeController;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/MotionDozeController;

    .line 34
    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/MotionDozeController;->mScreenOn:Z

    return v0
.end method

.method static synthetic access$202(Lcn/nubia/server/appmgmt/MotionDozeController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/MotionDozeController;
    .param p1, "x1"    # Z

    .line 34
    iput-boolean p1, p0, Lcn/nubia/server/appmgmt/MotionDozeController;->mScreenOn:Z

    return p1
.end method

.method static synthetic access$300(Lcn/nubia/server/appmgmt/MotionDozeController;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/MotionDozeController;

    .line 34
    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/MotionDozeController;->mDumpDebugLog:Z

    return v0
.end method

.method static synthetic access$400(Lcn/nubia/server/appmgmt/MotionDozeController;)Lcn/nubia/server/appmgmt/MotionDozeController$AdjustStateRunnable;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/MotionDozeController;

    .line 34
    iget-object v0, p0, Lcn/nubia/server/appmgmt/MotionDozeController;->mAdjustStateRunnable:Lcn/nubia/server/appmgmt/MotionDozeController$AdjustStateRunnable;

    return-object v0
.end method

.method static synthetic access$500(Lcn/nubia/server/appmgmt/MotionDozeController;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/MotionDozeController;

    .line 34
    iget-object v0, p0, Lcn/nubia/server/appmgmt/MotionDozeController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$602(Lcn/nubia/server/appmgmt/MotionDozeController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/MotionDozeController;
    .param p1, "x1"    # Z

    .line 34
    iput-boolean p1, p0, Lcn/nubia/server/appmgmt/MotionDozeController;->mGetSigMotion:Z

    return p1
.end method

.method static synthetic access$700(Lcn/nubia/server/appmgmt/MotionDozeController;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/MotionDozeController;

    .line 34
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/MotionDozeController;->adjustState()V

    return-void
.end method

.method private adjustState()V
    .locals 6

    .line 137
    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/MotionDozeController;->mDumpDebugLog:Z

    if-eqz v0, :cond_0

    .line 138
    const-string v0, "MotionDozeController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "adjustState, state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcn/nubia/server/appmgmt/MotionDozeController;->mCurrentState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mRunningMotionApp="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcn/nubia/server/appmgmt/MotionDozeController;->mRunningMotionApp:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mGPSLocationUpdateEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcn/nubia/server/appmgmt/MotionDozeController;->mGPSLocationUpdateEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mScreenOn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcn/nubia/server/appmgmt/MotionDozeController;->mScreenOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mCharging="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcn/nubia/server/appmgmt/MotionDozeController;->mCharging:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mSigMotionActive="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcn/nubia/server/appmgmt/MotionDozeController;->mSigMotionActive:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mGetSigMotion="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcn/nubia/server/appmgmt/MotionDozeController;->mGetSigMotion:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :cond_0
    iget v0, p0, Lcn/nubia/server/appmgmt/MotionDozeController;->mCurrentState:I

    const-wide/32 v1, 0xea60

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v0, v3, :cond_7

    .line 145
    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/MotionDozeController;->mRunningMotionApp:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/MotionDozeController;->mGPSLocationUpdateEnabled:Z

    if-eqz v0, :cond_3

    :cond_1
    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/MotionDozeController;->mScreenOn:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/MotionDozeController;->mCharging:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/MotionDozeController;->mSigMotionActive:Z

    if-nez v0, :cond_3

    .line 146
    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/MotionDozeController;->mDumpDebugLog:Z

    if-eqz v0, :cond_2

    .line 147
    const-string v0, "MotionDozeController"

    const-string v1, "Enter motion doze"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    :cond_2
    const/4 v0, 0x2

    iput v0, p0, Lcn/nubia/server/appmgmt/MotionDozeController;->mCurrentState:I

    .line 151
    iget-object v0, p0, Lcn/nubia/server/appmgmt/MotionDozeController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/MotionDozeController;->mEnterMotionDozeIntent:Landroid/content/Intent;

    sget-object v2, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 152
    iput-boolean v4, p0, Lcn/nubia/server/appmgmt/MotionDozeController;->mGetSigMotion:Z

    .line 153
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/MotionDozeController;->startMonitoringSignificantMotion()V

    goto/16 :goto_1

    .line 154
    :cond_3
    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/MotionDozeController;->mScreenOn:Z

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/MotionDozeController;->mCharging:Z

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/MotionDozeController;->mGetSigMotion:Z

    if-eqz v0, :cond_4

    goto :goto_0

    .line 157
    :cond_4
    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/MotionDozeController;->mRunningMotionApp:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/MotionDozeController;->mGPSLocationUpdateEnabled:Z

    if-eqz v0, :cond_c

    :cond_5
    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/MotionDozeController;->mScreenOn:Z

    if-nez v0, :cond_c

    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/MotionDozeController;->mCharging:Z

    if-nez v0, :cond_c

    .line 158
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/MotionDozeController;->stopMonitoringSignificantMotion()V

    .line 160
    iget-object v0, p0, Lcn/nubia/server/appmgmt/MotionDozeController;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcn/nubia/server/appmgmt/MotionDozeController;->mAdjustStateRunnable:Lcn/nubia/server/appmgmt/MotionDozeController$AdjustStateRunnable;

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 155
    :cond_6
    :goto_0
    iput-boolean v4, p0, Lcn/nubia/server/appmgmt/MotionDozeController;->mGetSigMotion:Z

    .line 156
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/MotionDozeController;->stopMonitoringSignificantMotion()V

    goto :goto_1

    .line 163
    :cond_7
    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/MotionDozeController;->mRunningMotionApp:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/MotionDozeController;->mGPSLocationUpdateEnabled:Z

    if-eqz v0, :cond_9

    :cond_8
    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/MotionDozeController;->mScreenOn:Z

    if-nez v0, :cond_9

    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/MotionDozeController;->mCharging:Z

    if-nez v0, :cond_9

    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/MotionDozeController;->mGetSigMotion:Z

    if-eqz v0, :cond_c

    .line 164
    :cond_9
    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/MotionDozeController;->mDumpDebugLog:Z

    if-eqz v0, :cond_a

    .line 165
    const-string v0, "MotionDozeController"

    const-string v5, "Leave motion doze"

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    :cond_a
    iput v3, p0, Lcn/nubia/server/appmgmt/MotionDozeController;->mCurrentState:I

    .line 169
    iget-object v0, p0, Lcn/nubia/server/appmgmt/MotionDozeController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcn/nubia/server/appmgmt/MotionDozeController;->mLeaveMotionDozeIntent:Landroid/content/Intent;

    sget-object v5, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v0, v3, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 171
    iput-boolean v4, p0, Lcn/nubia/server/appmgmt/MotionDozeController;->mGetSigMotion:Z

    .line 172
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/MotionDozeController;->stopMonitoringSignificantMotion()V

    .line 174
    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/MotionDozeController;->mRunningMotionApp:Z

    if-nez v0, :cond_b

    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/MotionDozeController;->mGPSLocationUpdateEnabled:Z

    if-eqz v0, :cond_c

    :cond_b
    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/MotionDozeController;->mScreenOn:Z

    if-nez v0, :cond_c

    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/MotionDozeController;->mCharging:Z

    if-nez v0, :cond_c

    .line 175
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/MotionDozeController;->startMonitoringSignificantMotion()V

    .line 176
    iget-object v0, p0, Lcn/nubia/server/appmgmt/MotionDozeController;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcn/nubia/server/appmgmt/MotionDozeController;->mAdjustStateRunnable:Lcn/nubia/server/appmgmt/MotionDozeController$AdjustStateRunnable;

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 181
    :cond_c
    :goto_1
    return-void
.end method

.method private startMonitoringSignificantMotion()V
    .locals 3

    .line 207
    iget-object v0, p0, Lcn/nubia/server/appmgmt/MotionDozeController;->mSigMotionSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/MotionDozeController;->mSigMotionActive:Z

    if-nez v0, :cond_1

    .line 208
    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/MotionDozeController;->mDumpDebugLog:Z

    if-eqz v0, :cond_0

    .line 209
    const-string v0, "MotionDozeController"

    const-string/jumbo v1, "startMonitoringSignificantMotion"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/MotionDozeController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/MotionDozeController;->mSigMotionListener:Landroid/hardware/TriggerEventListener;

    iget-object v2, p0, Lcn/nubia/server/appmgmt/MotionDozeController;->mSigMotionSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/SensorManager;->requestTriggerSensor(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;)Z

    .line 213
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/server/appmgmt/MotionDozeController;->mSigMotionActive:Z

    .line 215
    :cond_1
    return-void
.end method

.method private stopMonitoringSignificantMotion()V
    .locals 3

    .line 218
    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/MotionDozeController;->mSigMotionActive:Z

    if-eqz v0, :cond_1

    .line 219
    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/MotionDozeController;->mDumpDebugLog:Z

    if-eqz v0, :cond_0

    .line 220
    const-string v0, "MotionDozeController"

    const-string/jumbo v1, "stopMonitoringSignificantMotion"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/MotionDozeController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/MotionDozeController;->mSigMotionListener:Landroid/hardware/TriggerEventListener;

    iget-object v2, p0, Lcn/nubia/server/appmgmt/MotionDozeController;->mSigMotionSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/SensorManager;->cancelTriggerSensor(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;)Z

    .line 223
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/server/appmgmt/MotionDozeController;->mSigMotionActive:Z

    .line 225
    :cond_1
    return-void
.end method


# virtual methods
.method public isControlledByMotionDoze(ILjava/lang/String;)Z
    .locals 4
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 113
    iget-object v0, p0, Lcn/nubia/server/appmgmt/MotionDozeController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 114
    if-eqz p2, :cond_0

    .line 115
    :try_start_0
    iget-object v1, p0, Lcn/nubia/server/appmgmt/MotionDozeController;->mMotionApps:Ljava/util/HashSet;

    invoke-virtual {v1, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 124
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 117
    :cond_0
    iget-object v1, p0, Lcn/nubia/server/appmgmt/MotionDozeController;->mPackageProcessUids:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 118
    .local v2, "s":Ljava/lang/String;
    iget-object v3, p0, Lcn/nubia/server/appmgmt/MotionDozeController;->mPackageProcessUids:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 119
    .local v3, "u":I
    if-ne v3, p1, :cond_1

    .line 120
    iget-object v1, p0, Lcn/nubia/server/appmgmt/MotionDozeController;->mMotionApps:Ljava/util/HashSet;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 122
    .end local v2    # "s":Ljava/lang/String;
    .end local v3    # "u":I
    :cond_1
    goto :goto_0

    .line 124
    :cond_2
    monitor-exit v0

    .line 126
    const/4 v0, 0x0

    return v0

    .line 124
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public noteRemovingProcess(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "processName"    # Ljava/lang/String;

    .line 105
    if-eqz p2, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    .line 108
    :cond_0
    new-instance v0, Lcn/nubia/server/appmgmt/MotionDozeController$NoteRemovingProcessRunnable;

    invoke-direct {v0, p0, p1, p2, p3}, Lcn/nubia/server/appmgmt/MotionDozeController$NoteRemovingProcessRunnable;-><init>(Lcn/nubia/server/appmgmt/MotionDozeController;ILjava/lang/String;Ljava/lang/String;)V

    .line 109
    .local v0, "nrpr":Lcn/nubia/server/appmgmt/MotionDozeController$NoteRemovingProcessRunnable;
    iget-object v1, p0, Lcn/nubia/server/appmgmt/MotionDozeController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 110
    return-void

    .line 106
    .end local v0    # "nrpr":Lcn/nubia/server/appmgmt/MotionDozeController$NoteRemovingProcessRunnable;
    :cond_1
    :goto_0
    return-void
.end method

.method public noteStartingProcess(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "processName"    # Ljava/lang/String;
    .param p4, "hostingType"    # Ljava/lang/String;

    .line 96
    if-eqz p2, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    .line 99
    :cond_0
    new-instance v6, Lcn/nubia/server/appmgmt/MotionDozeController$NoteStartingProcessRunnable;

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcn/nubia/server/appmgmt/MotionDozeController$NoteStartingProcessRunnable;-><init>(Lcn/nubia/server/appmgmt/MotionDozeController;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    .local v0, "nspr":Lcn/nubia/server/appmgmt/MotionDozeController$NoteStartingProcessRunnable;
    iget-object v1, p0, Lcn/nubia/server/appmgmt/MotionDozeController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 102
    return-void

    .line 97
    .end local v0    # "nspr":Lcn/nubia/server/appmgmt/MotionDozeController$NoteStartingProcessRunnable;
    :cond_1
    :goto_0
    return-void
.end method

.method public requestGPSLocationUpdate(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .line 130
    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/MotionDozeController;->mGPSLocationUpdateEnabled:Z

    if-eq v0, p1, :cond_0

    .line 131
    iget-object v0, p0, Lcn/nubia/server/appmgmt/MotionDozeController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/MotionDozeController;->mAdjustStateRunnable:Lcn/nubia/server/appmgmt/MotionDozeController$AdjustStateRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 133
    :cond_0
    iput-boolean p1, p0, Lcn/nubia/server/appmgmt/MotionDozeController;->mGPSLocationUpdateEnabled:Z

    .line 134
    return-void
.end method

.method public setDebugLogEnabled(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .line 92
    iput-boolean p1, p0, Lcn/nubia/server/appmgmt/MotionDozeController;->mDumpDebugLog:Z

    .line 93
    return-void
.end method
