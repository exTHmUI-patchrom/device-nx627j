.class public Lcn/nubia/server/screenswitch/DaemonDetector;
.super Ljava/lang/Object;
.source "DaemonDetector.java"


# static fields
.field public static DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "DaemonDetector"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEnabled:Z

.field private mHandler:Landroid/os/Handler;

.field private mLock:Ljava/lang/Object;

.field private mSensor:Landroid/hardware/Sensor;

.field private mSensorEventListener:Landroid/hardware/SensorEventListener;

.field private mSensorManager:Landroid/hardware/SensorManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    const/4 v0, 0x0

    sput-boolean v0, Lcn/nubia/server/screenswitch/DaemonDetector;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/screenswitch/DaemonDetector;->mLock:Ljava/lang/Object;

    .line 29
    new-instance v0, Lcn/nubia/server/screenswitch/DaemonDetector$1;

    invoke-direct {v0, p0}, Lcn/nubia/server/screenswitch/DaemonDetector$1;-><init>(Lcn/nubia/server/screenswitch/DaemonDetector;)V

    iput-object v0, p0, Lcn/nubia/server/screenswitch/DaemonDetector;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    .line 52
    iput-object p1, p0, Lcn/nubia/server/screenswitch/DaemonDetector;->mContext:Landroid/content/Context;

    .line 53
    const-string/jumbo v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcn/nubia/server/screenswitch/DaemonDetector;->mSensorManager:Landroid/hardware/SensorManager;

    .line 54
    iget-object v0, p0, Lcn/nubia/server/screenswitch/DaemonDetector;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/server/screenswitch/DaemonDetector;->mSensor:Landroid/hardware/Sensor;

    .line 55
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcn/nubia/server/screenswitch/DaemonDetector;->mHandler:Landroid/os/Handler;

    .line 56
    return-void
.end method


# virtual methods
.method public disable()V
    .locals 3

    .line 74
    iget-object v0, p0, Lcn/nubia/server/screenswitch/DaemonDetector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 75
    :try_start_0
    iget-boolean v1, p0, Lcn/nubia/server/screenswitch/DaemonDetector;->mEnabled:Z

    if-nez v1, :cond_0

    .line 76
    monitor-exit v0

    return-void

    .line 77
    :cond_0
    iget-object v1, p0, Lcn/nubia/server/screenswitch/DaemonDetector;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcn/nubia/server/screenswitch/DaemonDetector;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 78
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcn/nubia/server/screenswitch/DaemonDetector;->mEnabled:Z

    .line 79
    monitor-exit v0

    .line 80
    return-void

    .line 79
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public enable()V
    .locals 8

    .line 59
    iget-object v0, p0, Lcn/nubia/server/screenswitch/DaemonDetector;->mSensor:Landroid/hardware/Sensor;

    if-nez v0, :cond_0

    .line 60
    const-string v0, "DaemonDetector"

    const-string v1, "Cannot detect sensor. Not enabled"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    iget-object v0, p0, Lcn/nubia/server/screenswitch/DaemonDetector;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcn/nubia/server/screenswitch/DaemonDetector;->mSensorManager:Landroid/hardware/SensorManager;

    .line 63
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/screenswitch/DaemonDetector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 64
    :try_start_0
    iget-boolean v1, p0, Lcn/nubia/server/screenswitch/DaemonDetector;->mEnabled:Z

    if-eqz v1, :cond_1

    .line 65
    const-string v1, "DaemonDetector"

    const-string v2, "Detector has been already enabled"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    monitor-exit v0

    return-void

    .line 68
    :cond_1
    iget-object v2, p0, Lcn/nubia/server/screenswitch/DaemonDetector;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcn/nubia/server/screenswitch/DaemonDetector;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    iget-object v4, p0, Lcn/nubia/server/screenswitch/DaemonDetector;->mSensor:Landroid/hardware/Sensor;

    const/4 v5, 0x1

    const v6, 0x30d40

    iget-object v7, p0, Lcn/nubia/server/screenswitch/DaemonDetector;->mHandler:Landroid/os/Handler;

    invoke-virtual/range {v2 .. v7}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;IILandroid/os/Handler;)Z

    .line 69
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcn/nubia/server/screenswitch/DaemonDetector;->mEnabled:Z

    .line 70
    monitor-exit v0

    .line 71
    return-void

    .line 70
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
