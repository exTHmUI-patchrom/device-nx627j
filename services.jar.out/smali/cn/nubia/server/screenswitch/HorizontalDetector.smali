.class public Lcn/nubia/server/screenswitch/HorizontalDetector;
.super Ljava/lang/Object;
.source "HorizontalDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/server/screenswitch/HorizontalDetector$ResultListener;
    }
.end annotation


# static fields
.field public static DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "HorizontalDetector"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEnabled:Z

.field private mHandler:Landroid/os/Handler;

.field private mLastDelay:D

.field private mLastZValue:F

.field private mLock:Ljava/lang/Object;

.field private mResultListener:Lcn/nubia/server/screenswitch/HorizontalDetector$ResultListener;

.field private mSensor:Landroid/hardware/Sensor;

.field private mSensorEventListener:Landroid/hardware/SensorEventListener;

.field private mSensorManager:Landroid/hardware/SensorManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    const/4 v0, 0x1

    sput-boolean v0, Lcn/nubia/server/screenswitch/HorizontalDetector;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/screenswitch/HorizontalDetector;->mLock:Ljava/lang/Object;

    .line 34
    new-instance v0, Lcn/nubia/server/screenswitch/HorizontalDetector$1;

    invoke-direct {v0, p0}, Lcn/nubia/server/screenswitch/HorizontalDetector$1;-><init>(Lcn/nubia/server/screenswitch/HorizontalDetector;)V

    iput-object v0, p0, Lcn/nubia/server/screenswitch/HorizontalDetector;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    .line 68
    iput-object p1, p0, Lcn/nubia/server/screenswitch/HorizontalDetector;->mContext:Landroid/content/Context;

    .line 69
    const-string/jumbo v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcn/nubia/server/screenswitch/HorizontalDetector;->mSensorManager:Landroid/hardware/SensorManager;

    .line 70
    iget-object v0, p0, Lcn/nubia/server/screenswitch/HorizontalDetector;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/server/screenswitch/HorizontalDetector;->mSensor:Landroid/hardware/Sensor;

    .line 71
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcn/nubia/server/screenswitch/HorizontalDetector;->mHandler:Landroid/os/Handler;

    .line 72
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/server/screenswitch/HorizontalDetector;)D
    .locals 2
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/HorizontalDetector;

    .line 21
    iget-wide v0, p0, Lcn/nubia/server/screenswitch/HorizontalDetector;->mLastDelay:D

    return-wide v0
.end method

.method static synthetic access$002(Lcn/nubia/server/screenswitch/HorizontalDetector;D)D
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/HorizontalDetector;
    .param p1, "x1"    # D

    .line 21
    iput-wide p1, p0, Lcn/nubia/server/screenswitch/HorizontalDetector;->mLastDelay:D

    return-wide p1
.end method

.method static synthetic access$100(Lcn/nubia/server/screenswitch/HorizontalDetector;)F
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/HorizontalDetector;

    .line 21
    iget v0, p0, Lcn/nubia/server/screenswitch/HorizontalDetector;->mLastZValue:F

    return v0
.end method

.method static synthetic access$102(Lcn/nubia/server/screenswitch/HorizontalDetector;F)F
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/HorizontalDetector;
    .param p1, "x1"    # F

    .line 21
    iput p1, p0, Lcn/nubia/server/screenswitch/HorizontalDetector;->mLastZValue:F

    return p1
.end method

.method static synthetic access$200(Lcn/nubia/server/screenswitch/HorizontalDetector;ZZ)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/HorizontalDetector;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z

    .line 21
    invoke-direct {p0, p1, p2}, Lcn/nubia/server/screenswitch/HorizontalDetector;->onResult(ZZ)V

    return-void
.end method

.method private onResult(ZZ)V
    .locals 1
    .param p1, "isHorizontal"    # Z
    .param p2, "isUp"    # Z

    .line 105
    iget-object v0, p0, Lcn/nubia/server/screenswitch/HorizontalDetector;->mResultListener:Lcn/nubia/server/screenswitch/HorizontalDetector$ResultListener;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcn/nubia/server/screenswitch/HorizontalDetector;->mResultListener:Lcn/nubia/server/screenswitch/HorizontalDetector$ResultListener;

    invoke-interface {v0, p1, p2}, Lcn/nubia/server/screenswitch/HorizontalDetector$ResultListener;->onResult(ZZ)V

    .line 108
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/server/screenswitch/HorizontalDetector;->disable()V

    .line 109
    return-void
.end method


# virtual methods
.method public disable()V
    .locals 3

    .line 90
    iget-object v0, p0, Lcn/nubia/server/screenswitch/HorizontalDetector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 91
    :try_start_0
    iget-boolean v1, p0, Lcn/nubia/server/screenswitch/HorizontalDetector;->mEnabled:Z

    if-nez v1, :cond_0

    .line 92
    monitor-exit v0

    return-void

    .line 93
    :cond_0
    iget-object v1, p0, Lcn/nubia/server/screenswitch/HorizontalDetector;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcn/nubia/server/screenswitch/HorizontalDetector;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 94
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcn/nubia/server/screenswitch/HorizontalDetector;->mEnabled:Z

    .line 95
    monitor-exit v0

    .line 96
    return-void

    .line 95
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 5
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 99
    const-string v0, "Horizontal Detector State:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mEnabled:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcn/nubia/server/screenswitch/HorizontalDetector;->mEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLastZValue:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "%.3f"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcn/nubia/server/screenswitch/HorizontalDetector;->mLastZValue:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " delayed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcn/nubia/server/screenswitch/HorizontalDetector;->mLastDelay:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 102
    return-void
.end method

.method public enable()V
    .locals 6

    .line 75
    iget-object v0, p0, Lcn/nubia/server/screenswitch/HorizontalDetector;->mSensor:Landroid/hardware/Sensor;

    if-nez v0, :cond_0

    .line 76
    const-string v0, "HorizontalDetector"

    const-string v1, "Cannot detect sensor. Not enabled"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    iget-object v0, p0, Lcn/nubia/server/screenswitch/HorizontalDetector;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcn/nubia/server/screenswitch/HorizontalDetector;->mSensorManager:Landroid/hardware/SensorManager;

    .line 79
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/screenswitch/HorizontalDetector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 80
    :try_start_0
    iget-boolean v1, p0, Lcn/nubia/server/screenswitch/HorizontalDetector;->mEnabled:Z

    if-eqz v1, :cond_1

    .line 81
    const-string v1, "HorizontalDetector"

    const-string v2, "Detector has been already enabled"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    monitor-exit v0

    return-void

    .line 84
    :cond_1
    iget-object v1, p0, Lcn/nubia/server/screenswitch/HorizontalDetector;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcn/nubia/server/screenswitch/HorizontalDetector;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    iget-object v3, p0, Lcn/nubia/server/screenswitch/HorizontalDetector;->mSensor:Landroid/hardware/Sensor;

    iget-object v4, p0, Lcn/nubia/server/screenswitch/HorizontalDetector;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x1

    invoke-virtual {v1, v2, v3, v5, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 85
    iput-boolean v5, p0, Lcn/nubia/server/screenswitch/HorizontalDetector;->mEnabled:Z

    .line 86
    monitor-exit v0

    .line 87
    return-void

    .line 86
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setResultListener(Lcn/nubia/server/screenswitch/HorizontalDetector$ResultListener;)V
    .locals 0
    .param p1, "listener"    # Lcn/nubia/server/screenswitch/HorizontalDetector$ResultListener;

    .line 112
    iput-object p1, p0, Lcn/nubia/server/screenswitch/HorizontalDetector;->mResultListener:Lcn/nubia/server/screenswitch/HorizontalDetector$ResultListener;

    .line 113
    return-void
.end method
