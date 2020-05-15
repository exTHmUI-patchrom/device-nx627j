.class public Lcn/nubia/server/screenswitch/MotionDetector;
.super Ljava/lang/Object;
.source "MotionDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/server/screenswitch/MotionDetector$SensorCalThread;,
        Lcn/nubia/server/screenswitch/MotionDetector$SensorJudge;,
        Lcn/nubia/server/screenswitch/MotionDetector$MotionListener;
    }
.end annotation


# static fields
.field static DEBUG:Z = false

.field private static final DISPLAY_ALL:I = 0x4

.field private static final DISPLAY_BACK:I = 0x1

.field private static final DISPLAY_FRONT:I = 0x0

.field private static final LOG_INTERVAL:I = 0xc8

.field private static final NS2S:J = 0x3b9aca00L

.field private static final TAG:Ljava/lang/String; = "MotionDetector"


# instance fields
.field private volatile isInCall:Z

.field private mContext:Landroid/content/Context;

.field private mCurrentDisplayId:I

.field private mEnable:Z

.field private mGravitySensor:Landroid/hardware/Sensor;

.field private mHandler:Landroid/os/Handler;

.field private mIsShowLog:Z

.field private mLock:Ljava/lang/Object;

.field private mMotionListener:Lcn/nubia/server/screenswitch/MotionDetector$MotionListener;

.field private mRate:I

.field private mSensorJudge:Lcn/nubia/server/screenswitch/MotionDetector$SensorJudge;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private volatile mSwitchMode:I

.field mWakeUpAndUnlock:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    const/4 v0, 0x0

    sput-boolean v0, Lcn/nubia/server/screenswitch/MotionDetector;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/screenswitch/MotionDetector;->mLock:Ljava/lang/Object;

    .line 33
    const/4 v0, 0x1

    iput v0, p0, Lcn/nubia/server/screenswitch/MotionDetector;->mRate:I

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/server/screenswitch/MotionDetector;->isInCall:Z

    .line 38
    iput v0, p0, Lcn/nubia/server/screenswitch/MotionDetector;->mSwitchMode:I

    .line 51
    iput-object p1, p0, Lcn/nubia/server/screenswitch/MotionDetector;->mContext:Landroid/content/Context;

    .line 52
    iget-object v0, p0, Lcn/nubia/server/screenswitch/MotionDetector;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "sensor"

    .line 53
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcn/nubia/server/screenswitch/MotionDetector;->mSensorManager:Landroid/hardware/SensorManager;

    .line 54
    new-instance v0, Lcn/nubia/server/screenswitch/MotionDetector$SensorJudge;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcn/nubia/server/screenswitch/MotionDetector$SensorJudge;-><init>(Lcn/nubia/server/screenswitch/MotionDetector;Lcn/nubia/server/screenswitch/MotionDetector$1;)V

    iput-object v0, p0, Lcn/nubia/server/screenswitch/MotionDetector;->mSensorJudge:Lcn/nubia/server/screenswitch/MotionDetector$SensorJudge;

    .line 58
    iget-object v0, p0, Lcn/nubia/server/screenswitch/MotionDetector;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/server/screenswitch/MotionDetector;->mGravitySensor:Landroid/hardware/Sensor;

    .line 59
    invoke-static {}, Lcn/nubia/server/screenswitch/MotionDetector$SensorCalThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/server/screenswitch/MotionDetector;->mHandler:Landroid/os/Handler;

    .line 60
    return-void
.end method

.method static synthetic access$100(Lcn/nubia/server/screenswitch/MotionDetector;)I
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/MotionDetector;

    .line 17
    iget v0, p0, Lcn/nubia/server/screenswitch/MotionDetector;->mCurrentDisplayId:I

    return v0
.end method

.method static synthetic access$102(Lcn/nubia/server/screenswitch/MotionDetector;I)I
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/MotionDetector;
    .param p1, "x1"    # I

    .line 17
    iput p1, p0, Lcn/nubia/server/screenswitch/MotionDetector;->mCurrentDisplayId:I

    return p1
.end method

.method static synthetic access$200(Lcn/nubia/server/screenswitch/MotionDetector;)Lcn/nubia/server/screenswitch/MotionDetector$SensorJudge;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/MotionDetector;

    .line 17
    iget-object v0, p0, Lcn/nubia/server/screenswitch/MotionDetector;->mSensorJudge:Lcn/nubia/server/screenswitch/MotionDetector$SensorJudge;

    return-object v0
.end method

.method static synthetic access$300(Lcn/nubia/server/screenswitch/MotionDetector;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/MotionDetector;

    .line 17
    iget-boolean v0, p0, Lcn/nubia/server/screenswitch/MotionDetector;->mIsShowLog:Z

    return v0
.end method

.method static synthetic access$302(Lcn/nubia/server/screenswitch/MotionDetector;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/MotionDetector;
    .param p1, "x1"    # Z

    .line 17
    iput-boolean p1, p0, Lcn/nubia/server/screenswitch/MotionDetector;->mIsShowLog:Z

    return p1
.end method

.method static synthetic access$400(Lcn/nubia/server/screenswitch/MotionDetector;)I
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/MotionDetector;

    .line 17
    invoke-direct {p0}, Lcn/nubia/server/screenswitch/MotionDetector;->getCurrentDisplayId()I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcn/nubia/server/screenswitch/MotionDetector;)Lcn/nubia/server/screenswitch/MotionDetector$MotionListener;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/MotionDetector;

    .line 17
    iget-object v0, p0, Lcn/nubia/server/screenswitch/MotionDetector;->mMotionListener:Lcn/nubia/server/screenswitch/MotionDetector$MotionListener;

    return-object v0
.end method

.method static synthetic access$600(Lcn/nubia/server/screenswitch/MotionDetector;)I
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/MotionDetector;

    .line 17
    iget v0, p0, Lcn/nubia/server/screenswitch/MotionDetector;->mSwitchMode:I

    return v0
.end method

.method static synthetic access$700(Lcn/nubia/server/screenswitch/MotionDetector;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/MotionDetector;

    .line 17
    iget-boolean v0, p0, Lcn/nubia/server/screenswitch/MotionDetector;->isInCall:Z

    return v0
.end method

.method private getCurrentDisplayId()I
    .locals 1

    .line 119
    iget v0, p0, Lcn/nubia/server/screenswitch/MotionDetector;->mCurrentDisplayId:I

    return v0
.end method

.method private reset()V
    .locals 1

    .line 132
    iget-object v0, p0, Lcn/nubia/server/screenswitch/MotionDetector;->mSensorJudge:Lcn/nubia/server/screenswitch/MotionDetector$SensorJudge;

    invoke-virtual {v0}, Lcn/nubia/server/screenswitch/MotionDetector$SensorJudge;->reset()V

    .line 133
    return-void
.end method

.method private updateSensorJudge()V
    .locals 3

    .line 109
    sget-boolean v0, Lcn/nubia/server/screenswitch/MotionDetector;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MotionDetector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateSensorJudge mSwitchMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcn/nubia/server/screenswitch/MotionDetector;->mSwitchMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", isInCall="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcn/nubia/server/screenswitch/MotionDetector;->isInCall:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :cond_0
    iget v0, p0, Lcn/nubia/server/screenswitch/MotionDetector;->mSwitchMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcn/nubia/server/screenswitch/MotionDetector;->isInCall:Z

    if-eqz v0, :cond_1

    .line 111
    iget-object v0, p0, Lcn/nubia/server/screenswitch/MotionDetector;->mSensorJudge:Lcn/nubia/server/screenswitch/MotionDetector$SensorJudge;

    const v1, 0x40e33333    # 7.1f

    invoke-virtual {v0, v1}, Lcn/nubia/server/screenswitch/MotionDetector$SensorJudge;->setGravityThresHold(F)V

    goto :goto_0

    .line 113
    :cond_1
    iget-object v0, p0, Lcn/nubia/server/screenswitch/MotionDetector;->mSensorJudge:Lcn/nubia/server/screenswitch/MotionDetector$SensorJudge;

    const v1, 0x3fdae148    # 1.71f

    invoke-virtual {v0, v1}, Lcn/nubia/server/screenswitch/MotionDetector$SensorJudge;->setGravityThresHold(F)V

    .line 115
    :goto_0
    invoke-direct {p0}, Lcn/nubia/server/screenswitch/MotionDetector;->reset()V

    .line 116
    return-void
.end method


# virtual methods
.method public disable()V
    .locals 3

    .line 78
    iget-object v0, p0, Lcn/nubia/server/screenswitch/MotionDetector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 79
    :try_start_0
    iget-boolean v1, p0, Lcn/nubia/server/screenswitch/MotionDetector;->mEnable:Z

    if-nez v1, :cond_0

    .line 80
    monitor-exit v0

    return-void

    .line 81
    :cond_0
    const-string v1, "MotionDetector"

    const-string v2, "disable detector"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    iget-object v1, p0, Lcn/nubia/server/screenswitch/MotionDetector;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcn/nubia/server/screenswitch/MotionDetector;->mSensorJudge:Lcn/nubia/server/screenswitch/MotionDetector$SensorJudge;

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 83
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcn/nubia/server/screenswitch/MotionDetector;->mEnable:Z

    .line 84
    monitor-exit v0

    .line 85
    return-void

    .line 84
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 123
    const-string v0, "Motion Detector State:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 124
    iget-object v0, p0, Lcn/nubia/server/screenswitch/MotionDetector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 125
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mEnable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcn/nubia/server/screenswitch/MotionDetector;->mEnable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 126
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mCurrentDisplayId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcn/nubia/server/screenswitch/MotionDetector;->mCurrentDisplayId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 127
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    iget-object v0, p0, Lcn/nubia/server/screenswitch/MotionDetector;->mSensorJudge:Lcn/nubia/server/screenswitch/MotionDetector$SensorJudge;

    invoke-virtual {v0, p1}, Lcn/nubia/server/screenswitch/MotionDetector$SensorJudge;->dump(Ljava/io/PrintWriter;)V

    .line 129
    return-void

    .line 127
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public enable()V
    .locals 6

    .line 63
    iget-object v0, p0, Lcn/nubia/server/screenswitch/MotionDetector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 64
    :try_start_0
    iget-boolean v1, p0, Lcn/nubia/server/screenswitch/MotionDetector;->mEnable:Z

    if-eqz v1, :cond_0

    .line 65
    monitor-exit v0

    return-void

    .line 66
    :cond_0
    invoke-direct {p0}, Lcn/nubia/server/screenswitch/MotionDetector;->reset()V

    .line 67
    const-string v1, "MotionDetector"

    const-string v2, "enable detector"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    iget-object v1, p0, Lcn/nubia/server/screenswitch/MotionDetector;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcn/nubia/server/screenswitch/MotionDetector;->mSensorJudge:Lcn/nubia/server/screenswitch/MotionDetector$SensorJudge;

    iget-object v3, p0, Lcn/nubia/server/screenswitch/MotionDetector;->mGravitySensor:Landroid/hardware/Sensor;

    iget v4, p0, Lcn/nubia/server/screenswitch/MotionDetector;->mRate:I

    iget-object v5, p0, Lcn/nubia/server/screenswitch/MotionDetector;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    move-result v1

    .line 70
    .local v1, "enable":Z
    if-nez v1, :cond_1

    .line 71
    const-string v2, "MotionDetector"

    const-string v3, "enable sensor failed"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcn/nubia/server/screenswitch/MotionDetector;->mEnable:Z

    .line 74
    .end local v1    # "enable":Z
    monitor-exit v0

    .line 75
    return-void

    .line 74
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setCurrentDisplayId(I)V
    .locals 2
    .param p1, "displayId"    # I

    .line 88
    iget-object v0, p0, Lcn/nubia/server/screenswitch/MotionDetector;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcn/nubia/server/screenswitch/MotionDetector$1;

    invoke-direct {v1, p0, p1}, Lcn/nubia/server/screenswitch/MotionDetector$1;-><init>(Lcn/nubia/server/screenswitch/MotionDetector;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 95
    return-void
.end method

.method setIsInCall(Z)V
    .locals 1
    .param p1, "inCall"    # Z

    .line 98
    iget-boolean v0, p0, Lcn/nubia/server/screenswitch/MotionDetector;->isInCall:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 99
    :cond_0
    iput-boolean p1, p0, Lcn/nubia/server/screenswitch/MotionDetector;->isInCall:Z

    .line 100
    invoke-direct {p0}, Lcn/nubia/server/screenswitch/MotionDetector;->updateSensorJudge()V

    .line 101
    return-void
.end method

.method public setMotionListener(Lcn/nubia/server/screenswitch/MotionDetector$MotionListener;)V
    .locals 0
    .param p1, "listener"    # Lcn/nubia/server/screenswitch/MotionDetector$MotionListener;

    .line 43
    iput-object p1, p0, Lcn/nubia/server/screenswitch/MotionDetector;->mMotionListener:Lcn/nubia/server/screenswitch/MotionDetector$MotionListener;

    .line 44
    return-void
.end method

.method setSwitchMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .line 104
    iput p1, p0, Lcn/nubia/server/screenswitch/MotionDetector;->mSwitchMode:I

    .line 105
    invoke-direct {p0}, Lcn/nubia/server/screenswitch/MotionDetector;->updateSensorJudge()V

    .line 106
    return-void
.end method
