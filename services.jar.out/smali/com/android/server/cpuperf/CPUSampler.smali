.class public Lcom/android/server/cpuperf/CPUSampler;
.super Ljava/lang/Object;
.source "CPUSampler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/cpuperf/CPUSampler$CPUSamplerRunnable;
    }
.end annotation


# static fields
.field private static final ENABLE_SAMPLE:I

.field private static final NBLOG_INTENT:Ljava/lang/String; = "nblog.state_change"

.field private static final NBLOG_STATE:Ljava/lang/String; = "persist.sys.nblog.enable"

.field private static final TAG:Ljava/lang/String; = "CPUSampler"

.field private static final USER_DEBUG_INTENT:Ljava/lang/String; = "cpusampler_debug"


# instance fields
.field private isUserType:Z

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mNBLogReceiver:Landroid/content/BroadcastReceiver;

.field private mPM:Landroid/os/PowerManager;

.field private mRunnable:Ljava/lang/Runnable;

.field private volatile mService:Lcom/android/server/BSPApplicationManagerService;

.field private mThread:Landroid/os/HandlerThread;

.field private mUserDebugReceiver:Landroid/content/BroadcastReceiver;

.field private sampler_delay:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 35
    const-string v0, "debug.nubia.cpu_sample"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/server/cpuperf/CPUSampler;->ENABLE_SAMPLE:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const-string/jumbo v0, "user"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/cpuperf/CPUSampler;->isUserType:Z

    .line 33
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "CPU_Sampler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/cpuperf/CPUSampler;->mThread:Landroid/os/HandlerThread;

    .line 37
    const-string v0, "debug.nubia.cpu_sample_delay"

    const v1, 0xea60

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/cpuperf/CPUSampler;->sampler_delay:I

    .line 75
    new-instance v0, Lcom/android/server/cpuperf/CPUSampler$1;

    invoke-direct {v0, p0}, Lcom/android/server/cpuperf/CPUSampler$1;-><init>(Lcom/android/server/cpuperf/CPUSampler;)V

    iput-object v0, p0, Lcom/android/server/cpuperf/CPUSampler;->mNBLogReceiver:Landroid/content/BroadcastReceiver;

    .line 90
    new-instance v0, Lcom/android/server/cpuperf/CPUSampler$2;

    invoke-direct {v0, p0}, Lcom/android/server/cpuperf/CPUSampler$2;-><init>(Lcom/android/server/cpuperf/CPUSampler;)V

    iput-object v0, p0, Lcom/android/server/cpuperf/CPUSampler;->mUserDebugReceiver:Landroid/content/BroadcastReceiver;

    .line 41
    iput-object p1, p0, Lcom/android/server/cpuperf/CPUSampler;->mContext:Landroid/content/Context;

    .line 43
    sget v0, Lcom/android/server/cpuperf/CPUSampler;->ENABLE_SAMPLE:I

    if-gtz v0, :cond_0

    .line 44
    return-void

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/android/server/cpuperf/CPUSampler;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 47
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/cpuperf/CPUSampler;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/cpuperf/CPUSampler;->mHandler:Landroid/os/Handler;

    .line 48
    iget-object v0, p0, Lcom/android/server/cpuperf/CPUSampler;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/cpuperf/CPUSampler;->mPM:Landroid/os/PowerManager;

    .line 49
    new-instance v0, Lcom/android/server/cpuperf/CPUSampler$CPUSamplerRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/cpuperf/CPUSampler$CPUSamplerRunnable;-><init>(Lcom/android/server/cpuperf/CPUSampler;Lcom/android/server/cpuperf/CPUSampler$1;)V

    iput-object v0, p0, Lcom/android/server/cpuperf/CPUSampler;->mRunnable:Ljava/lang/Runnable;

    .line 50
    iget-boolean v0, p0, Lcom/android/server/cpuperf/CPUSampler;->isUserType:Z

    if-eqz v0, :cond_1

    .line 51
    invoke-direct {p0}, Lcom/android/server/cpuperf/CPUSampler;->registerReceiver()V

    .line 52
    invoke-direct {p0}, Lcom/android/server/cpuperf/CPUSampler;->registerDebugReceiver()V

    .line 53
    invoke-direct {p0}, Lcom/android/server/cpuperf/CPUSampler;->getNBLogState()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 54
    iget-object v0, p0, Lcom/android/server/cpuperf/CPUSampler;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/cpuperf/CPUSampler;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 57
    :cond_1
    iget-object v0, p0, Lcom/android/server/cpuperf/CPUSampler;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/cpuperf/CPUSampler;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 59
    :cond_2
    :goto_0
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/cpuperf/CPUSampler;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/cpuperf/CPUSampler;

    .line 20
    invoke-direct {p0}, Lcom/android/server/cpuperf/CPUSampler;->dumpCPUStatus()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/cpuperf/CPUSampler;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/cpuperf/CPUSampler;

    .line 20
    invoke-direct {p0}, Lcom/android/server/cpuperf/CPUSampler;->dumpThermalStatus()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/cpuperf/CPUSampler;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/cpuperf/CPUSampler;

    .line 20
    invoke-direct {p0}, Lcom/android/server/cpuperf/CPUSampler;->dumpPerformanceControllerStatus()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/cpuperf/CPUSampler;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/cpuperf/CPUSampler;

    .line 20
    iget-object v0, p0, Lcom/android/server/cpuperf/CPUSampler;->mRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/cpuperf/CPUSampler;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/cpuperf/CPUSampler;

    .line 20
    iget v0, p0, Lcom/android/server/cpuperf/CPUSampler;->sampler_delay:I

    return v0
.end method

.method static synthetic access$502(Lcom/android/server/cpuperf/CPUSampler;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/cpuperf/CPUSampler;
    .param p1, "x1"    # I

    .line 20
    iput p1, p0, Lcom/android/server/cpuperf/CPUSampler;->sampler_delay:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/server/cpuperf/CPUSampler;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/cpuperf/CPUSampler;

    .line 20
    iget-object v0, p0, Lcom/android/server/cpuperf/CPUSampler;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/cpuperf/CPUSampler;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/cpuperf/CPUSampler;

    .line 20
    invoke-direct {p0}, Lcom/android/server/cpuperf/CPUSampler;->getNBLogState()Z

    move-result v0

    return v0
.end method

.method private dumpCPUStatus()V
    .locals 6

    .line 137
    invoke-direct {p0}, Lcom/android/server/cpuperf/CPUSampler;->isScreenOn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 138
    const-string v0, "CPUSampler"

    const-string v1, "Screen off, not dumpCPUStatus."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    return-void

    .line 142
    :cond_0
    invoke-static {}, Lcom/android/server/cpuperf/CPUSampler;->getNumCores()I

    move-result v0

    .line 143
    .local v0, "numCores":I
    if-gtz v0, :cond_1

    .line 144
    return-void

    .line 146
    :cond_1
    const-string v1, "CPUSampler"

    const-string v2, "==== BEGIN DUMP CPU STATUS ===="

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    const/4 v1, 0x0

    .line 147
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_3

    .line 148
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 149
    .local v2, "sb":Ljava/lang/StringBuilder;
    const-string v3, "cpu:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 151
    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    invoke-static {v1}, Lcom/android/server/cpuperf/CPUSampler;->isCoreOnline(I)Z

    move-result v3

    .line 154
    .local v3, "online":Z
    const-string/jumbo v4, "online:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 157
    if-eqz v3, :cond_2

    .line 158
    const-string v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    const-string v4, "MaxFreq:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    invoke-static {v1}, Lcom/android/server/cpuperf/CPUSampler;->getMaxFrequency(I)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 162
    const-string v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    const-string v4, "CurMaxFreq:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    invoke-static {v1}, Lcom/android/server/cpuperf/CPUSampler;->getCurMaxFrequency(I)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 166
    const-string v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    const-string v4, "CurMinFreq:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    invoke-static {v1}, Lcom/android/server/cpuperf/CPUSampler;->getCurMinFrequency(I)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 170
    const-string v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    const-string v4, "CurFreq:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    invoke-static {v1}, Lcom/android/server/cpuperf/CPUSampler;->getCurFrequency(I)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 175
    :cond_2
    const-string v4, "CPUSampler"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    .end local v3    # "online":Z
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 177
    .end local v1    # "i":I
    :cond_3
    invoke-static {}, Lcom/android/server/cpuperf/CPUSampler;->getCurFanSpeedLevel()I

    move-result v1

    .line 178
    .local v1, "fanSpeedLevel":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_4

    const-string v2, "CPUSampler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fan: CurrentLevel:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    :cond_4
    const-string v2, "CPUSampler"

    const-string v3, "==== END DUMP CPU STATUS ===="

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    return-void
.end method

.method private dumpPerformanceControllerStatus()V
    .locals 3

    .line 121
    const-string v0, "CPUSampler"

    const-string v1, "==== BEGIN DUMP CPL STATUS ===="

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 123
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-direct {p0}, Lcom/android/server/cpuperf/CPUSampler;->getCurPerformaceLocks()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    const-string v1, "CPUSampler"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    const-string v1, "CPUSampler"

    const-string v2, "==== END DUMP CPL STATUS ===="

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    return-void
.end method

.method private dumpThermalStatus()V
    .locals 6

    .line 343
    invoke-direct {p0}, Lcom/android/server/cpuperf/CPUSampler;->isScreenOn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 344
    const-string v0, "CPUSampler"

    const-string v1, "Screen off, not dumpThermalStatus."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    return-void

    .line 347
    :cond_0
    invoke-static {}, Lcom/android/server/cpuperf/CPUSampler;->getThermalZoneNum()I

    move-result v0

    .line 348
    .local v0, "thermalZoneNum":I
    if-gtz v0, :cond_1

    .line 349
    return-void

    .line 351
    :cond_1
    const-string v1, "CPUSampler"

    const-string v2, "==== BEGIN DUMP THERMAL STATUS ===="

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    const/4 v1, 0x0

    .line 352
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 353
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 354
    .local v2, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v3, "thermal_zone"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 356
    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 357
    invoke-static {v1}, Lcom/android/server/cpuperf/CPUSampler;->sensorType(I)Ljava/lang/String;

    move-result-object v3

    .line 358
    .local v3, "sensor_type":Ljava/lang/String;
    const-string/jumbo v4, "sensor_type:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 360
    const-string v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    const-string/jumbo v4, "temp:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    invoke-static {v1}, Lcom/android/server/cpuperf/CPUSampler;->getSensorTemp(I)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 364
    const-string v4, "CPUSampler"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    .end local v3    # "sensor_type":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 366
    .end local v1    # "i":I
    :cond_2
    const-string v1, "CPUSampler"

    const-string v2, "==== END DUMP Thermal STATUS ===="

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    return-void
.end method

.method private static getCurFanSpeedLevel()I
    .locals 3

    .line 324
    const-string v0, "/sys/kernel/fan/fan_speed_level"

    .line 325
    .local v0, "path":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 327
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 328
    const/4 v2, -0x1

    return v2

    .line 331
    :cond_0
    invoke-static {v0}, Lcom/android/server/cpuperf/CPUSampler;->readIntFromFile(Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method private static getCurFrequency(I)I
    .locals 5
    .param p0, "index"    # I

    .line 312
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/sys/devices/system/cpu/cpu"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/cpufreq/scaling_cur_freq"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 313
    .local v0, "path":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 315
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 316
    const-string v2, "CPUSampler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " doesn\'t exist"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    const/4 v2, -0x1

    return v2

    .line 320
    :cond_0
    invoke-static {v0}, Lcom/android/server/cpuperf/CPUSampler;->readIntFromFile(Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method private static getCurMaxFrequency(I)I
    .locals 5
    .param p0, "index"    # I

    .line 288
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/sys/devices/system/cpu/cpu"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/cpufreq/scaling_max_freq"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 289
    .local v0, "path":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 291
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 292
    const-string v2, "CPUSampler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " doesn\'t exist"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    const/4 v2, -0x1

    return v2

    .line 296
    :cond_0
    invoke-static {v0}, Lcom/android/server/cpuperf/CPUSampler;->readIntFromFile(Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method private static getCurMinFrequency(I)I
    .locals 5
    .param p0, "index"    # I

    .line 300
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/sys/devices/system/cpu/cpu"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/cpufreq/scaling_min_freq"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 301
    .local v0, "path":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 303
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 304
    const-string v2, "CPUSampler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " doesn\'t exist"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    const/4 v2, -0x1

    return v2

    .line 308
    :cond_0
    invoke-static {v0}, Lcom/android/server/cpuperf/CPUSampler;->readIntFromFile(Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method private getCurPerformaceLocks()Ljava/lang/String;
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/android/server/cpuperf/CPUSampler;->mService:Lcom/android/server/BSPApplicationManagerService;

    if-nez v0, :cond_0

    .line 130
    const-string v0, "ERROR: BSPApplicationManagerService is null."

    return-object v0

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/android/server/cpuperf/CPUSampler;->mService:Lcom/android/server/BSPApplicationManagerService;

    invoke-virtual {v0}, Lcom/android/server/BSPApplicationManagerService;->dumpSimple()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getMaxFrequency(I)I
    .locals 9
    .param p0, "index"    # I

    .line 262
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/sys/devices/system/cpu/cpu"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/cpufreq/scaling_available_frequencies"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 263
    .local v0, "path":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 265
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    const/4 v3, -0x1

    if-nez v2, :cond_0

    .line 266
    const-string v2, "CPUSampler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " doesn\'t exist"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    return v3

    .line 270
    :cond_0
    invoke-static {v0}, Lcom/android/server/cpuperf/CPUSampler;->readLineFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 271
    .local v2, "line":Ljava/lang/String;
    if-nez v2, :cond_1

    .line 272
    return v3

    .line 274
    :cond_1
    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 275
    .local v4, "tokens":[Ljava/lang/String;
    if-eqz v4, :cond_2

    array-length v5, v4

    if-lez v5, :cond_2

    .line 277
    :try_start_0
    array-length v5, v4

    add-int/lit8 v5, v5, -0x1

    aget-object v5, v4, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v5

    .line 278
    .local v3, "frequency":I
    return v3

    .line 279
    .end local v3    # "frequency":I
    :catch_0
    move-exception v5

    .line 280
    .local v5, "e":Ljava/lang/Exception;
    const-string v6, "CPUSampler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error to parse "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v8, v4

    add-int/lit8 v8, v8, -0x1

    aget-object v8, v4, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " from "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_2
    return v3
.end method

.method private getNBLogState()Z
    .locals 3

    .line 339
    const-string/jumbo v0, "on"

    const-string/jumbo v1, "persist.sys.nblog.enable"

    const-string/jumbo v2, "off"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static getNumCores()I
    .locals 10

    .line 183
    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/devices/system/cpu/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 184
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, -0x1

    if-nez v1, :cond_0

    .line 185
    const-string v1, "CPUSampler"

    const-string v3, "/sys/devices/system/cpu/ doesn\'t exist"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    return v2

    .line 189
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_1

    .line 190
    const-string v1, "CPUSampler"

    const-string v3, "/sys/devices/system/cpu/ is not a directory"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    return v2

    .line 194
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 196
    .local v1, "files":[Ljava/io/File;
    const/4 v2, -0x1

    .line 197
    .local v2, "numCores":I
    array-length v3, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_6

    aget-object v5, v1, v4

    .line 198
    .local v5, "file":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-nez v6, :cond_2

    .line 199
    goto :goto_1

    .line 201
    :cond_2
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    .line 202
    .local v6, "name":Ljava/lang/String;
    const-string v7, "cpu"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x3

    if-gt v7, v8, :cond_3

    .line 203
    goto :goto_1

    .line 205
    :cond_3
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v6, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 208
    .local v7, "temp":Ljava/lang/String;
    :try_start_0
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    .local v8, "index":I
    add-int/lit8 v9, v8, 0x1

    if-le v9, v2, :cond_4

    .line 210
    add-int/lit8 v2, v8, 0x1

    .line 212
    .end local v8    # "index":I
    :cond_4
    goto :goto_1

    .line 211
    :catch_0
    move-exception v8

    .line 197
    .end local v5    # "file":Ljava/io/File;
    .end local v6    # "name":Ljava/lang/String;
    .end local v7    # "temp":Ljava/lang/String;
    :cond_5
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 215
    :cond_6
    return v2
.end method

.method private static getSensorTemp(I)I
    .locals 5
    .param p0, "index"    # I

    .line 418
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/sys/class/thermal/thermal_zone"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/temp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 419
    .local v0, "path":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 421
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 422
    const-string v2, "CPUSampler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " doesn\'t exist"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    const/4 v2, -0x1

    return v2

    .line 426
    :cond_0
    invoke-static {v0}, Lcom/android/server/cpuperf/CPUSampler;->readIntFromFile(Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method private static getThermalZoneNum()I
    .locals 10

    .line 370
    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/class/thermal/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 371
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, -0x1

    if-nez v1, :cond_0

    .line 372
    const-string v1, "CPUSampler"

    const-string v3, "/sys/class/thermal/ doesn\'t exist"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    return v2

    .line 376
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_1

    .line 377
    const-string v1, "CPUSampler"

    const-string v3, "/sys/class/thermal/ is not a directory"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    return v2

    .line 381
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 383
    .local v1, "files":[Ljava/io/File;
    const/4 v2, -0x1

    .line 384
    .local v2, "thermalZoneNum":I
    array-length v3, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_6

    aget-object v5, v1, v4

    .line 385
    .local v5, "file":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-nez v6, :cond_2

    .line 386
    goto :goto_1

    .line 388
    :cond_2
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    .line 389
    .local v6, "name":Ljava/lang/String;
    const-string/jumbo v7, "thermal_zone"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    const/16 v8, 0xc

    if-gt v7, v8, :cond_3

    .line 390
    goto :goto_1

    .line 392
    :cond_3
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v6, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 395
    .local v7, "temp":Ljava/lang/String;
    :try_start_0
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 396
    .local v8, "index":I
    add-int/lit8 v9, v8, 0x1

    if-le v9, v2, :cond_4

    .line 397
    add-int/lit8 v2, v8, 0x1

    .line 399
    .end local v8    # "index":I
    :cond_4
    goto :goto_1

    .line 398
    :catch_0
    move-exception v8

    .line 384
    .end local v5    # "file":Ljava/io/File;
    .end local v6    # "name":Ljava/lang/String;
    .end local v7    # "temp":Ljava/lang/String;
    :cond_5
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 402
    :cond_6
    return v2
.end method

.method private static isCoreOnline(I)Z
    .locals 6
    .param p0, "index"    # I

    .line 219
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/sys/devices/system/cpu/cpu"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/online"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 220
    .local v0, "path":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 222
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 223
    const-string v2, "CPUSampler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " doesn\'t exist"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    return v3

    .line 227
    :cond_0
    invoke-static {v0}, Lcom/android/server/cpuperf/CPUSampler;->readIntFromFile(Ljava/lang/String;)I

    move-result v2

    .line 228
    .local v2, "online":I
    if-lez v2, :cond_1

    const/4 v3, 0x1

    nop

    :cond_1
    return v3
.end method

.method private isScreenOn()Z
    .locals 1

    .line 335
    iget-object v0, p0, Lcom/android/server/cpuperf/CPUSampler;->mPM:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    return v0
.end method

.method private static readIntFromFile(Ljava/lang/String;)I
    .locals 5
    .param p0, "path"    # Ljava/lang/String;

    .line 232
    invoke-static {p0}, Lcom/android/server/cpuperf/CPUSampler;->readLineFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 235
    .local v0, "line":Ljava/lang/String;
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 236
    .local v1, "result":I
    return v1

    .line 237
    .end local v1    # "result":I
    :catch_0
    move-exception v1

    .line 238
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "CPUSampler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to parse "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    const/4 v2, 0x0

    return v2
.end method

.method private static readLineFromFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "path"    # Ljava/lang/String;

    .line 244
    const/4 v0, 0x0

    move-object v1, v0

    .line 246
    .local v1, "br":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v1, v2

    .line 247
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 250
    nop

    .line 252
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 254
    goto :goto_0

    .line 253
    :catch_0
    move-exception v0

    .line 247
    :goto_0
    return-object v2

    .line 250
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_0

    .line 252
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 254
    goto :goto_1

    .line 253
    :catch_1
    move-exception v2

    .line 254
    :cond_0
    :goto_1
    throw v0

    .line 248
    :catch_2
    move-exception v2

    .line 250
    if-eqz v1, :cond_1

    .line 252
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 254
    :goto_2
    goto :goto_3

    .line 253
    :catch_3
    move-exception v2

    goto :goto_2

    .line 258
    :cond_1
    :goto_3
    return-object v0
.end method

.method private registerDebugReceiver()V
    .locals 3

    .line 110
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 111
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "cpusampler_debug"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 112
    iget-object v1, p0, Lcom/android/server/cpuperf/CPUSampler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/cpuperf/CPUSampler;->mUserDebugReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 113
    return-void
.end method

.method private registerReceiver()V
    .locals 3

    .line 115
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 116
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "nblog.state_change"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 117
    iget-object v1, p0, Lcom/android/server/cpuperf/CPUSampler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/cpuperf/CPUSampler;->mNBLogReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 118
    return-void
.end method

.method private static sensorType(I)Ljava/lang/String;
    .locals 5
    .param p0, "index"    # I

    .line 406
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/sys/class/thermal/thermal_zone"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/type"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 407
    .local v0, "path":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 409
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 410
    const-string v2, "CPUSampler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " doesn\'t exist"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    const-string v2, "false"

    return-object v2

    .line 414
    :cond_0
    invoke-static {v0}, Lcom/android/server/cpuperf/CPUSampler;->readLineFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 415
    .local v2, "sensorType":Ljava/lang/String;
    return-object v2
.end method


# virtual methods
.method public setService(Lcom/android/server/BSPApplicationManagerService;)V
    .locals 0
    .param p1, "service"    # Lcom/android/server/BSPApplicationManagerService;

    .line 62
    iput-object p1, p0, Lcom/android/server/cpuperf/CPUSampler;->mService:Lcom/android/server/BSPApplicationManagerService;

    .line 63
    return-void
.end method
