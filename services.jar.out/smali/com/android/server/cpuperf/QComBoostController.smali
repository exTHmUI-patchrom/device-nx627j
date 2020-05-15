.class public Lcom/android/server/cpuperf/QComBoostController;
.super Lcom/android/server/cpuperf/CPUControl;
.source "QComBoostController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/cpuperf/QComBoostController$LockParameters;,
        Lcom/android/server/cpuperf/QComBoostController$PerformanceData;
    }
.end annotation


# static fields
.field private static final ABOVE_HISPEED_DELAY:[I

.field private static final ATTR_ANDROID_VERSION:Ljava/lang/String; = "androidVersion"

.field private static final ATTR_APP_NAME:Ljava/lang/String; = "package"

.field private static final ATTR_INPUT_BOOST_FREQ:Ljava/lang/String; = "inputBoostFreq"

.field private static final ATTR_INPUT_BOOST_TIME_LIMIT:Ljava/lang/String; = "inputBoostTimeLimit"

.field private static final ATTR_ITEM_ABOVE_HISPEED_DELAY:Ljava/lang/String; = "aboveHispeedDelay"

.field private static final ATTR_ITEM_AVOID_SUPER_GAME_PERF:Ljava/lang/String; = "avoidSuperGamePerf"

.field private static final ATTR_ITEM_CPUBW_MIN_FREQ:Ljava/lang/String; = "cpubw_min_freq"

.field private static final ATTR_ITEM_DISABLE_POWER_COLLAPSE:Ljava/lang/String; = "disablePowerCollapse"

.field private static final ATTR_ITEM_DISABLE_STORAGE_CLK_SCALING:Ljava/lang/String; = "disableStorageScaling"

.field private static final ATTR_ITEM_FAN_LEVEL:Ljava/lang/String; = "fanLevel"

.field private static final ATTR_ITEM_GO_HISPEED_LOAD:Ljava/lang/String; = "goHispeedLoad"

.field private static final ATTR_ITEM_GPU_MAX_POWER_LEVEL:Ljava/lang/String; = "gpuMaxPowerLevel"

.field private static final ATTR_ITEM_GPU_MIN_POWER_LEVEL:Ljava/lang/String; = "gpuMinPowerLevel"

.field private static final ATTR_ITEM_HISPEED_FREQ:Ljava/lang/String; = "hispeedFreq"

.field private static final ATTR_ITEM_HI_PERF_GPU_MAX_POWER_LEVEL:Ljava/lang/String; = "hiPerfGPUMaxPowerLevel"

.field private static final ATTR_ITEM_HI_PERF_GPU_MIN_POWER_LEVEL:Ljava/lang/String; = "hiPerfGPUMinPowerLevel"

.field private static final ATTR_ITEM_HI_PERF_MAX_FREQ:Ljava/lang/String; = "hiPerfMaxFreq"

.field private static final ATTR_ITEM_HI_PERF_MIN_FREQ:Ljava/lang/String; = "hiPerfMinFreq"

.field private static final ATTR_ITEM_HI_PERF_SCHED_BOOST:Ljava/lang/String; = "hiPerfSchedBoost"

.field private static final ATTR_ITEM_HI_PERF_SCHED_DOWN_MIGRATE:Ljava/lang/String; = "hiPerfSchedDownMigrate"

.field private static final ATTR_ITEM_HI_PERF_SCHED_UP_MIGRATE:Ljava/lang/String; = "hiPerfSchedUpMigrate"

.field private static final ATTR_ITEM_HI_PERF_SCHED_UTIL_HISPEED_FREQ:Ljava/lang/String; = "hiPerfSchedUtilHispeedFreq"

.field private static final ATTR_ITEM_HI_PERF_SCHED_UTIL_HISPEED_LOAD:Ljava/lang/String; = "hiPerfSchedUtilHispeedLoad"

.field private static final ATTR_ITEM_MAX_FREQ:Ljava/lang/String; = "maxFreq"

.field private static final ATTR_ITEM_MAX_NUM_CORES:Ljava/lang/String; = "maxNumCores"

.field private static final ATTR_ITEM_MIN_FREQ:Ljava/lang/String; = "minFreq"

.field private static final ATTR_ITEM_MIN_NUM_CORES:Ljava/lang/String; = "minNumCores"

.field private static final ATTR_ITEM_NAME:Ljava/lang/String; = "name"

.field private static final ATTR_ITEM_RESTRICTED:Ljava/lang/String; = "restricted"

.field private static final ATTR_ITEM_SCHEDUTIL_HISPEED_FREQ:Ljava/lang/String; = "schedutilHispeedFreq"

.field private static final ATTR_ITEM_SCHEDUTIL_HISPEED_LOAD:Ljava/lang/String; = "schedutilHispeedLoad"

.field private static final ATTR_ITEM_SCHED_BOOST:Ljava/lang/String; = "schedBoost"

.field private static final ATTR_ITEM_SCHED_DOWN_MIGRATE:Ljava/lang/String; = "schedDownMigrate"

.field private static final ATTR_ITEM_SCHED_MOSTLY_IDEL_LOAD:Ljava/lang/String; = "schedMostlyIdleLoad"

.field private static final ATTR_ITEM_SCHED_MOSTLY_IDEL_NRRun:Ljava/lang/String; = "schedMostlyIdleNRRun"

.field private static final ATTR_ITEM_SCHED_SMALL_TASK:Ljava/lang/String; = "schedSmallTask"

.field private static final ATTR_ITEM_SCHED_UP_MIGRATE:Ljava/lang/String; = "schedUpMigrate"

.field private static final ATTR_ITEM_TARGET_LOAD:Ljava/lang/String; = "targetLoad"

.field private static final ATTR_ITEM_THERMAL_LEVEL:Ljava/lang/String; = "thermalLevel"

.field private static final ATTR_ITEM_VALUE:Ljava/lang/String; = "value"

.field private static final ATTR_NUM_CLUSTER:Ljava/lang/String; = "numCluster"

.field private static final ATTR_NUM_CORE:Ljava/lang/String; = "numCore"

.field private static final ATTR_PERF_ACTIVITY_NAME:Ljava/lang/String; = "activityName"

.field private static final ATTR_PERF_DURATION:Ljava/lang/String; = "perfDuration"

.field private static final ATTR_PERF_LEVEL:Ljava/lang/String; = "performance_level"

.field private static final ATTR_PERF_NAME:Ljava/lang/String; = "name"

.field private static final ATTR_PERF_TYPE:Ljava/lang/String; = "type"

.field private static final ATTR_PERF_VIEW_NAME:Ljava/lang/String; = "viewName"

.field private static final ATTR_PLATFORM_NAME:Ljava/lang/String; = "name"

.field private static final ATTR_SCHEDUTIL_CPU_FREQ_CTRL:Ljava/lang/String; = "schedutilCpuFreqCtrl"

.field private static final ATTR_THERMAL_LEVEL:Ljava/lang/String; = "thermal_level"

.field private static final CPUBW_HWMON_MIN_FREQ:I = 0x41800000

.field private static final CPU_MAX_FREQ:[I

.field private static final CPU_MIN_FREQ:[I

.field private static final GO_HISPEED_LOAD:[I

.field private static final GPU_MAX_POWER_LEVEL:I = 0x42808000

.field private static final GPU_MIN_POWER_LEVEL:I = 0x42804000

.field private static final HISPEED_FREQ:[I

.field private static final MAX_ONLINE_CPU_CLUSTER:[I

.field private static final MIN_ONLINE_CPU_CLUSTER:[I

.field private static final NEW_NUBIA_PERFORMANCE_THERMAL_FILE:Ljava/lang/String; = "/system/etc/nubia_performance_thermal"

.field private static final NUBIA_PERFORMANCE_THERMAL_DECRYPTED_FILE:Ljava/lang/String; = "nubia_performance_thermal_decrypted.xml"

.field private static final NUBIA_PERFORMANCE_THERMAL_FILE:Ljava/lang/String; = "nubia_performance_thermal.xml"

.field private static final PATH_FAN_SPEED:Ljava/lang/String; = "sys/kernel/fan/fan_speed_level"

.field private static final PATH_FAN_SWITCH:Ljava/lang/String; = "sys/kernel/fan/fan_enable"

.field private static final POWER_COLLAPSE:I = 0x40400000

.field private static final SCHEDUTIL_HISPEED_FREQ:[I

.field private static final SCHEDUTIL_HISPEED_LOAD:[I

.field private static final SCHED_BOOST:I = 0x40c00000

.field private static final SCHED_DOWNMIGRATE:[I

.field private static final SCHED_MOSTLY_IDLE_LOAD:I = 0x40c10000

.field private static final SCHED_MOSTLY_IDLE_NR_RUN:I = 0x40c14000

.field private static final SCHED_SMALL_TASK:I = 0x40c0c000

.field private static final SCHED_UPMIGRATE:[I

.field private static final STORAGE_CLK_SCALING_DISABLE:I = 0x42c10000

.field private static final TAG:Ljava/lang/String; = "PerformanceController"

.field private static final TAG_APP:Ljava/lang/String; = "app"

.field private static final TAG_DURATION:Ljava/lang/String; = "Duration"

.field private static final TAG_FULLONCPUSET:Ljava/lang/String; = "FullOnCpuset"

.field private static final TAG_ITEM:Ljava/lang/String; = "item"

.field private static final TAG_ITEM_FOLLOW_PERFORMANCE_GROUP:Ljava/lang/String; = "followPerformanceGroup"

.field private static final TAG_NOTRANSITIONANIM:Ljava/lang/String; = "NoTransitionAnimation"

.field private static final TAG_OPTIMIZE:Ljava/lang/String; = "Optimize"

.field private static final TAG_PERFORMANCE:Ljava/lang/String; = "performance"

.field private static final TAG_PERFORMANCE_GROUP:Ljava/lang/String; = "PerformanceGroup"

.field private static final TAG_PERFORMANCE_GROUPS:Ljava/lang/String; = "PerformanceGroups"

.field private static final TAG_PLATFORM:Ljava/lang/String; = "platform"

.field private static final TAG_VIEW_OPTIMIZE:Ljava/lang/String; = "ViewOptimize"

.field private static final TARGET_LOADS:[I

.field private static final TRACE_COUNTER_NAME:Ljava/lang/String; = "PerfLocks Count"

.field private static final TRACE_LOCK_NAME:Ljava/lang/String; = "Candicate types:"

.field private static final UPDATE_NUBIA_PERFORMANCE_THERMAL_FILE:Ljava/lang/String; = "/data/system/nubia_performance_thermal"

.field private static mIsFanChanged:Z

.field private static mPreviousFanSpeed:I

.field private static mPreviousFanSwitch:I

.field private static final perfObj:Ljava/lang/Object;


# instance fields
.field private mActivityToLockParameters:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/cpuperf/QComBoostController$LockParameters;",
            ">;"
        }
    .end annotation
.end field

.field private mAppLaunchDurations:[J

.field private mDisablePowerCollapseFOS:Ljava/io/FileOutputStream;

.field private mDumpDebugLog:Z

.field private mGpuOverclock:Z

.field private mPackageToLockParameters:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/cpuperf/QComBoostController$LockParameters;",
            ">;"
        }
    .end annotation
.end field

.field private mPerfData:Lcom/android/server/cpuperf/QComBoostController$PerformanceData;

.field private mPerfHelper:Lcom/android/server/cpuperf/PerformanceHelper;

.field private mPms:Lcom/android/server/pm/PackageManagerService;

.field private mPreviousParameters:[I

.field private mTypeToLockParameters:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/cpuperf/QComBoostController$LockParameters;",
            ">;"
        }
    .end annotation
.end field

.field private mUseUpdateConfig:Z

.field private obj:Ljava/lang/Object;

.field private tmpPerfData:Lcom/android/server/cpuperf/QComBoostController$PerformanceData;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 133
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/cpuperf/QComBoostController;->perfObj:Ljava/lang/Object;

    .line 144
    const/4 v0, 0x3

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/android/server/cpuperf/QComBoostController;->MIN_ONLINE_CPU_CLUSTER:[I

    .line 145
    new-array v1, v0, [I

    fill-array-data v1, :array_1

    sput-object v1, Lcom/android/server/cpuperf/QComBoostController;->MAX_ONLINE_CPU_CLUSTER:[I

    .line 146
    const/16 v1, 0x8

    new-array v2, v1, [I

    fill-array-data v2, :array_2

    sput-object v2, Lcom/android/server/cpuperf/QComBoostController;->CPU_MIN_FREQ:[I

    .line 148
    new-array v1, v1, [I

    fill-array-data v1, :array_3

    sput-object v1, Lcom/android/server/cpuperf/QComBoostController;->CPU_MAX_FREQ:[I

    .line 167
    const/4 v1, 0x2

    new-array v2, v1, [I

    fill-array-data v2, :array_4

    sput-object v2, Lcom/android/server/cpuperf/QComBoostController;->SCHED_UPMIGRATE:[I

    .line 168
    new-array v1, v1, [I

    fill-array-data v1, :array_5

    sput-object v1, Lcom/android/server/cpuperf/QComBoostController;->SCHED_DOWNMIGRATE:[I

    .line 173
    new-array v1, v0, [I

    fill-array-data v1, :array_6

    sput-object v1, Lcom/android/server/cpuperf/QComBoostController;->TARGET_LOADS:[I

    .line 178
    new-array v1, v0, [I

    fill-array-data v1, :array_7

    sput-object v1, Lcom/android/server/cpuperf/QComBoostController;->GO_HISPEED_LOAD:[I

    .line 185
    new-array v1, v0, [I

    fill-array-data v1, :array_8

    sput-object v1, Lcom/android/server/cpuperf/QComBoostController;->HISPEED_FREQ:[I

    .line 196
    new-array v1, v0, [I

    fill-array-data v1, :array_9

    sput-object v1, Lcom/android/server/cpuperf/QComBoostController;->ABOVE_HISPEED_DELAY:[I

    .line 201
    new-array v1, v0, [I

    fill-array-data v1, :array_a

    sput-object v1, Lcom/android/server/cpuperf/QComBoostController;->SCHEDUTIL_HISPEED_LOAD:[I

    .line 208
    new-array v0, v0, [I

    fill-array-data v0, :array_b

    sput-object v0, Lcom/android/server/cpuperf/QComBoostController;->SCHEDUTIL_HISPEED_FREQ:[I

    .line 228
    const/4 v0, 0x0

    sput v0, Lcom/android/server/cpuperf/QComBoostController;->mPreviousFanSwitch:I

    .line 229
    sput v0, Lcom/android/server/cpuperf/QComBoostController;->mPreviousFanSpeed:I

    .line 230
    sput-boolean v0, Lcom/android/server/cpuperf/QComBoostController;->mIsFanChanged:Z

    return-void

    nop

    :array_0
    .array-data 4
        0x41000100    # 8.000244f
        0x41000000    # 8.0f
        0x41000200    # 8.000488f
    .end array-data

    :array_1
    .array-data 4
        0x41004100
        0x41004000    # 8.015625f
        0x41004200
    .end array-data

    :array_2
    .array-data 4
        0x40800100    # 4.000122f
        0x40800110    # 4.0001297f
        0x40800120    # 4.0001373f
        0x40800130    # 4.000145f
        0x40800000    # 4.0f
        0x40800010    # 4.0000076f
        0x40800020    # 4.0000153f
        0x40800200    # 4.000244f
    .end array-data

    :array_3
    .array-data 4
        0x40804100
        0x40804110
        0x40804120
        0x40804130
        0x40804000    # 4.0078125f
        0x40804010
        0x40804020
        0x40804200
    .end array-data

    :array_4
    .array-data 4
        0x40c1c000    # 6.0546875f
        0x40c1c200
    .end array-data

    :array_5
    .array-data 4
        0x40c20000    # 6.0625f
        0x40c20200
    .end array-data

    :array_6
    .array-data 4
        0x41420100
        0x41420000    # 12.125f
        -0x1
    .end array-data

    :array_7
    .array-data 4
        0x41410100
        0x41410000    # 12.0625f
        -0x1
    .end array-data

    :array_8
    .array-data 4
        0x41414100
        0x41414000    # 12.078125f
        -0x1
    .end array-data

    :array_9
    .array-data 4
        0x41400100    # 12.000244f
        0x41400000    # 12.0f
        -0x1
    .end array-data

    :array_a
    .array-data 4
        0x41440100
        0x41440000    # 12.25f
        0x41440200
    .end array-data

    :array_b
    .array-data 4
        0x4143c100
        0x4143c000    # 12.234375f
        0x4143c200
    .end array-data
.end method

.method public constructor <init>(Lcom/android/server/cpuperf/PerformanceHelper;)V
    .locals 2
    .param p1, "perfHelper"    # Lcom/android/server/cpuperf/PerformanceHelper;

    .line 232
    invoke-direct {p0}, Lcom/android/server/cpuperf/CPUControl;-><init>()V

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/cpuperf/QComBoostController;->mDumpDebugLog:Z

    .line 135
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/cpuperf/QComBoostController;->mTypeToLockParameters:Ljava/util/HashMap;

    .line 137
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/cpuperf/QComBoostController;->mPackageToLockParameters:Ljava/util/HashMap;

    .line 139
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/cpuperf/QComBoostController;->mActivityToLockParameters:Ljava/util/HashMap;

    .line 141
    const/4 v1, 0x4

    new-array v1, v1, [J

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/android/server/cpuperf/QComBoostController;->mAppLaunchDurations:[J

    .line 216
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/cpuperf/QComBoostController;->mUseUpdateConfig:Z

    .line 218
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/cpuperf/QComBoostController;->mPreviousParameters:[I

    .line 219
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/cpuperf/QComBoostController;->obj:Ljava/lang/Object;

    .line 224
    iput-boolean v0, p0, Lcom/android/server/cpuperf/QComBoostController;->mGpuOverclock:Z

    .line 233
    iput-object p1, p0, Lcom/android/server/cpuperf/QComBoostController;->mPerfHelper:Lcom/android/server/cpuperf/PerformanceHelper;

    .line 240
    const-string/jumbo v0, "package"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageManagerService;

    iput-object v0, p0, Lcom/android/server/cpuperf/QComBoostController;->mPms:Lcom/android/server/pm/PackageManagerService;

    .line 241
    invoke-direct {p0}, Lcom/android/server/cpuperf/QComBoostController;->initData()V

    .line 242
    iget-boolean v0, p0, Lcom/android/server/cpuperf/QComBoostController;->mUseUpdateConfig:Z

    if-nez v0, :cond_0

    .line 244
    const-string v0, "PerformanceController"

    const-string v1, "The upgrade configuration file is broken!"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    invoke-direct {p0}, Lcom/android/server/cpuperf/QComBoostController;->initData()V

    .line 247
    :cond_0
    return-void

    nop

    :array_0
    .array-data 8
        0x3e8
        0x12c
        0x12c
        0x12c
    .end array-data
.end method

.method private decideLockParameters(Ljava/util/ArrayList;)[I
    .locals 82
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/cpuperf/PerformanceController$PerformanceLock;",
            ">;)[I"
        }
    .end annotation

    .line 299
    .local p1, "locks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/cpuperf/PerformanceController$PerformanceLock;>;"
    move-object/from16 v1, p0

    .line 299
    iget-boolean v0, v1, Lcom/android/server/cpuperf/QComBoostController;->mDumpDebugLog:Z

    if-eqz v0, :cond_0

    .line 300
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 302
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-wide/16 v2, 0x1000

    const/4 v4, 0x0

    if-nez v0, :cond_2

    .line 303
    const/4 v0, 0x0

    iput-object v0, v1, Lcom/android/server/cpuperf/QComBoostController;->mPreviousParameters:[I

    .line 304
    iget-boolean v5, v1, Lcom/android/server/cpuperf/QComBoostController;->mDumpDebugLog:Z

    if-eqz v5, :cond_1

    .line 305
    const-string v5, "PerformanceController"

    const-string/jumbo v6, "no lock. use default setting"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    const-string v5, "PerfLocks Count"

    invoke-static {v2, v3, v5, v4}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 307
    const-string v2, "Candicate types: default"

    invoke-static {v2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 309
    :cond_1
    return-object v0

    .line 312
    :cond_2
    sget-object v0, Lcom/android/server/cpuperf/QComBoostController;->MIN_ONLINE_CPU_CLUSTER:[I

    array-length v0, v0

    new-array v5, v0, [I

    .line 313
    .local v5, "minNumCores":[I
    const/4 v0, -0x1

    invoke-static {v5, v0}, Ljava/util/Arrays;->fill([II)V

    .line 315
    sget-object v6, Lcom/android/server/cpuperf/QComBoostController;->MAX_ONLINE_CPU_CLUSTER:[I

    array-length v6, v6

    new-array v6, v6, [I

    .line 316
    .local v6, "maxNumCores":[I
    invoke-static {v6, v0}, Ljava/util/Arrays;->fill([II)V

    .line 318
    sget-object v7, Lcom/android/server/cpuperf/QComBoostController;->CPU_MIN_FREQ:[I

    array-length v7, v7

    new-array v7, v7, [I

    .line 319
    .local v7, "minFrequencies":[I
    invoke-static {v7, v0}, Ljava/util/Arrays;->fill([II)V

    .line 321
    sget-object v8, Lcom/android/server/cpuperf/QComBoostController;->CPU_MAX_FREQ:[I

    array-length v8, v8

    new-array v8, v8, [I

    .line 322
    .local v8, "maxFrequencies":[I
    invoke-static {v8, v0}, Ljava/util/Arrays;->fill([II)V

    .line 324
    const/4 v9, -0x1

    .line 325
    .local v9, "cpuBandwidthMinFrequency":I
    const v10, 0x7fffffff

    .line 326
    .local v10, "gpuMinPowerLevel":I
    const v11, 0x7fffffff

    .line 327
    .local v11, "gpuMaxPowerLevel":I
    const v12, 0x7fffffff

    .line 328
    .local v12, "schedBoost":I
    const v13, 0x7fffffff

    .line 329
    .local v13, "schedSmallTask":I
    const v14, 0x7fffffff

    .line 330
    .local v14, "schedMostlyIdleLoad":I
    const v15, 0x7fffffff

    .line 332
    .local v15, "schedMostlyIdleNRRun":I
    sget-object v2, Lcom/android/server/cpuperf/QComBoostController;->SCHED_UPMIGRATE:[I

    array-length v2, v2

    new-array v2, v2, [I

    .line 333
    .local v2, "schedUpMigrate":[I
    const v3, 0x7fffffff

    invoke-static {v2, v3}, Ljava/util/Arrays;->fill([II)V

    .line 334
    sget-object v4, Lcom/android/server/cpuperf/QComBoostController;->SCHED_DOWNMIGRATE:[I

    array-length v4, v4

    new-array v4, v4, [I

    .line 335
    .local v4, "schedDownMigrate":[I
    invoke-static {v4, v3}, Ljava/util/Arrays;->fill([II)V

    .line 337
    const/16 v17, 0x0

    .line 339
    .local v17, "disablePowerCollapse":Z
    const/16 v18, -0x1

    .line 341
    .local v18, "thermalLevel":I
    sget-object v3, Lcom/android/server/cpuperf/QComBoostController;->TARGET_LOADS:[I

    array-length v3, v3

    new-array v3, v3, [I

    .line 342
    .local v3, "targetLoads":[I
    invoke-static {v3, v0}, Ljava/util/Arrays;->fill([II)V

    .line 344
    sget-object v0, Lcom/android/server/cpuperf/QComBoostController;->GO_HISPEED_LOAD:[I

    array-length v0, v0

    move/from16 v19, v9

    new-array v9, v0, [I

    .line 345
    .local v9, "goHispeedLoad":[I
    .local v19, "cpuBandwidthMinFrequency":I
    const/4 v0, -0x1

    invoke-static {v9, v0}, Ljava/util/Arrays;->fill([II)V

    .line 347
    sget-object v0, Lcom/android/server/cpuperf/QComBoostController;->HISPEED_FREQ:[I

    array-length v0, v0

    move/from16 v21, v10

    new-array v10, v0, [I

    .line 348
    .local v10, "hispeedFreq":[I
    .local v21, "gpuMinPowerLevel":I
    const/4 v0, -0x1

    invoke-static {v10, v0}, Ljava/util/Arrays;->fill([II)V

    .line 350
    sget-object v0, Lcom/android/server/cpuperf/QComBoostController;->ABOVE_HISPEED_DELAY:[I

    array-length v0, v0

    move/from16 v23, v11

    new-array v11, v0, [I

    .line 351
    .local v11, "aboveHispeedDelay":[I
    .local v23, "gpuMaxPowerLevel":I
    const/4 v0, -0x1

    invoke-static {v11, v0}, Ljava/util/Arrays;->fill([II)V

    .line 353
    sget-object v0, Lcom/android/server/cpuperf/QComBoostController;->SCHEDUTIL_HISPEED_LOAD:[I

    array-length v0, v0

    move/from16 v25, v12

    new-array v12, v0, [I

    .line 354
    .local v12, "schedutilHispeedLoad":[I
    .local v25, "schedBoost":I
    const/4 v0, -0x1

    invoke-static {v12, v0}, Ljava/util/Arrays;->fill([II)V

    .line 356
    sget-object v0, Lcom/android/server/cpuperf/QComBoostController;->SCHEDUTIL_HISPEED_FREQ:[I

    array-length v0, v0

    move/from16 v27, v13

    new-array v13, v0, [I

    .line 357
    .local v13, "schedutilHispeedFreq":[I
    .local v27, "schedSmallTask":I
    const/4 v0, -0x1

    invoke-static {v13, v0}, Ljava/util/Arrays;->fill([II)V

    .line 359
    const/16 v20, 0x0

    .line 360
    .local v20, "disableStorageScaling":Z
    const/16 v22, -0x1

    .line 362
    .local v22, "fanLevel":I
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v28

    .line 364
    .local v28, "now":J
    iget-boolean v0, v1, Lcom/android/server/cpuperf/QComBoostController;->mDumpDebugLog:Z

    if-eqz v0, :cond_3

    .line 365
    const-string v0, "PerformanceController"

    move/from16 v30, v14

    const-string v14, ">> decideLockParameters"

    .line 365
    .end local v14    # "schedMostlyIdleLoad":I
    .local v30, "schedMostlyIdleLoad":I
    invoke-static {v0, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 367
    .end local v30    # "schedMostlyIdleLoad":I
    .restart local v14    # "schedMostlyIdleLoad":I
    :cond_3
    move/from16 v30, v14

    .line 367
    .end local v14    # "schedMostlyIdleLoad":I
    .restart local v30    # "schedMostlyIdleLoad":I
    :goto_0
    const/4 v0, 0x0

    .line 368
    .local v0, "hasGameModeType":Z
    const/4 v14, 0x0

    .line 369
    .local v14, "avoidSuperGamePerf":Z
    const/16 v24, -0x1

    .line 370
    .local v24, "schedUtilCpuFreqCtrl":I
    const/16 v26, -0x1

    .line 371
    .local v26, "inputBoostFreq":I
    const/16 v31, -0x1

    .line 372
    .local v31, "inputBoostMs":I
    move/from16 v32, v0

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 372
    .end local v0    # "hasGameModeType":Z
    .local v32, "hasGameModeType":Z
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v33

    move/from16 v34, v15

    .line 372
    .end local v15    # "schedMostlyIdleNRRun":I
    .local v34, "schedMostlyIdleNRRun":I
    if-eqz v33, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v33

    move-object/from16 v15, v33

    check-cast v15, Lcom/android/server/cpuperf/PerformanceController$PerformanceLock;

    .line 373
    .local v15, "pl":Lcom/android/server/cpuperf/PerformanceController$PerformanceLock;
    move-object/from16 v35, v0

    iget-boolean v0, v1, Lcom/android/server/cpuperf/QComBoostController;->mDumpDebugLog:Z

    if-eqz v0, :cond_4

    .line 374
    const-string v0, "PerformanceController"

    move-object/from16 v36, v13

    new-instance v13, Ljava/lang/StringBuilder;

    .line 374
    .end local v13    # "schedutilHispeedFreq":[I
    .local v36, "schedutilHispeedFreq":[I
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v37, v12

    const-string v12, "check candicate lock:"

    .line 374
    .end local v12    # "schedutilHispeedLoad":[I
    .local v37, "schedutilHispeedLoad":[I
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v15, Lcom/android/server/cpuperf/PerformanceController$PerformanceLock;->mTag:Ljava/lang/String;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ", type="

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v15, Lcom/android/server/cpuperf/PerformanceController$PerformanceLock;->mType:I

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v0, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 376
    .end local v36    # "schedutilHispeedFreq":[I
    .end local v37    # "schedutilHispeedLoad":[I
    .restart local v12    # "schedutilHispeedLoad":[I
    .restart local v13    # "schedutilHispeedFreq":[I
    :cond_4
    move-object/from16 v37, v12

    move-object/from16 v36, v13

    .line 376
    .end local v12    # "schedutilHispeedLoad":[I
    .end local v13    # "schedutilHispeedFreq":[I
    .restart local v36    # "schedutilHispeedFreq":[I
    .restart local v37    # "schedutilHispeedLoad":[I
    :goto_2
    iget v0, v15, Lcom/android/server/cpuperf/PerformanceController$PerformanceLock;->mType:I

    const/16 v12, 0x9

    if-ne v0, v12, :cond_5

    .line 377
    const/4 v0, 0x1

    .line 399
    .end local v32    # "hasGameModeType":Z
    .restart local v0    # "hasGameModeType":Z
    move/from16 v32, v0

    move-object/from16 v39, v10

    move-object/from16 v38, v11

    goto :goto_3

    .line 378
    .end local v0    # "hasGameModeType":Z
    .restart local v32    # "hasGameModeType":Z
    :cond_5
    iget v0, v15, Lcom/android/server/cpuperf/PerformanceController$PerformanceLock;->mType:I

    const/16 v12, 0xf

    if-ne v0, v12, :cond_7

    .line 380
    iget-boolean v0, v1, Lcom/android/server/cpuperf/QComBoostController;->mDumpDebugLog:Z

    if-eqz v0, :cond_6

    .line 381
    const-string v0, "PerformanceController"

    const-string/jumbo v12, "workaround for stay on high frequency, screen off"

    invoke-static {v0, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    :cond_6
    const/4 v0, 0x1

    const/4 v12, 0x0

    invoke-direct {v1, v12, v0}, Lcom/android/server/cpuperf/QComBoostController;->getCpuFreqNode(IZ)Ljava/lang/String;

    move-result-object v13

    .line 384
    .local v13, "node_cpu0_min_freq":Ljava/lang/String;
    const/4 v12, 0x4

    invoke-direct {v1, v12, v0}, Lcom/android/server/cpuperf/QComBoostController;->getCpuFreqNode(IZ)Ljava/lang/String;

    move-result-object v12

    .line 385
    .local v12, "node_cpu4_min_freq":Ljava/lang/String;
    move-object/from16 v38, v11

    const/4 v11, 0x7

    .line 385
    .end local v11    # "aboveHispeedDelay":[I
    .local v38, "aboveHispeedDelay":[I
    invoke-direct {v1, v11, v0}, Lcom/android/server/cpuperf/QComBoostController;->getCpuFreqNode(IZ)Ljava/lang/String;

    move-result-object v0

    .line 386
    .local v0, "node_cpu7_min_freq":Ljava/lang/String;
    const-string v11, "1785600"

    move-object/from16 v39, v10

    invoke-direct {v1, v13}, Lcom/android/server/cpuperf/QComBoostController;->forceGetCpuNode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 386
    .end local v10    # "hispeedFreq":[I
    .local v39, "hispeedFreq":[I
    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    const-string v10, "2419200"

    .line 387
    invoke-direct {v1, v12}, Lcom/android/server/cpuperf/QComBoostController;->forceGetCpuNode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    const-string v10, "2841600"

    .line 388
    invoke-direct {v1, v0}, Lcom/android/server/cpuperf/QComBoostController;->forceGetCpuNode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 389
    const-string v10, "PerformanceController"

    const-string v11, "All cpu on max frequency, maybe wrong status, cool it down."

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    .end local v0    # "node_cpu7_min_freq":Ljava/lang/String;
    .end local v12    # "node_cpu4_min_freq":Ljava/lang/String;
    .end local v13    # "node_cpu0_min_freq":Ljava/lang/String;
    goto :goto_3

    .line 399
    .end local v38    # "aboveHispeedDelay":[I
    .end local v39    # "hispeedFreq":[I
    .restart local v10    # "hispeedFreq":[I
    .restart local v11    # "aboveHispeedDelay":[I
    :cond_7
    move-object/from16 v39, v10

    move-object/from16 v38, v11

    .line 399
    .end local v10    # "hispeedFreq":[I
    .end local v11    # "aboveHispeedDelay":[I
    .restart local v38    # "aboveHispeedDelay":[I
    .restart local v39    # "hispeedFreq":[I
    :cond_8
    :goto_3
    const/4 v0, 0x0

    .line 400
    .local v0, "parameters":Lcom/android/server/cpuperf/QComBoostController$LockParameters;
    iget-object v10, v1, Lcom/android/server/cpuperf/QComBoostController;->mPerfData:Lcom/android/server/cpuperf/QComBoostController$PerformanceData;

    iget-object v10, v10, Lcom/android/server/cpuperf/QComBoostController$PerformanceData;->perfData:Ljava/util/HashMap;

    iget v11, v15, Lcom/android/server/cpuperf/PerformanceController$PerformanceLock;->mType:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/util/ArrayMap;

    .line 401
    .local v10, "perfDatas":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/cpuperf/QComBoostController$LockParameters;>;"
    if-eqz v10, :cond_9

    .line 402
    iget-object v11, v15, Lcom/android/server/cpuperf/PerformanceController$PerformanceLock;->mTag:Ljava/lang/String;

    invoke-virtual {v10, v11}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/cpuperf/QComBoostController$LockParameters;

    move-object v0, v11

    if-eqz v11, :cond_9

    .line 403
    iget-boolean v11, v0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->avoidSuperGamePerf:Z

    or-int v0, v14, v11

    .line 406
    .end local v10    # "perfDatas":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/cpuperf/QComBoostController$LockParameters;>;"
    .end local v14    # "avoidSuperGamePerf":Z
    .end local v15    # "pl":Lcom/android/server/cpuperf/PerformanceController$PerformanceLock;
    .local v0, "avoidSuperGamePerf":Z
    move v14, v0

    .line 372
    .end local v0    # "avoidSuperGamePerf":Z
    .restart local v14    # "avoidSuperGamePerf":Z
    :cond_9
    move/from16 v15, v34

    move-object/from16 v0, v35

    move-object/from16 v13, v36

    move-object/from16 v12, v37

    move-object/from16 v11, v38

    move-object/from16 v10, v39

    goto/16 :goto_1

    .line 407
    .end local v36    # "schedutilHispeedFreq":[I
    .end local v37    # "schedutilHispeedLoad":[I
    .end local v38    # "aboveHispeedDelay":[I
    .end local v39    # "hispeedFreq":[I
    .local v10, "hispeedFreq":[I
    .restart local v11    # "aboveHispeedDelay":[I
    .local v12, "schedutilHispeedLoad":[I
    .local v13, "schedutilHispeedFreq":[I
    :cond_a
    move-object/from16 v39, v10

    move-object/from16 v38, v11

    move-object/from16 v37, v12

    move-object/from16 v36, v13

    .line 407
    .end local v10    # "hispeedFreq":[I
    .end local v11    # "aboveHispeedDelay":[I
    .end local v12    # "schedutilHispeedLoad":[I
    .end local v13    # "schedutilHispeedFreq":[I
    .restart local v36    # "schedutilHispeedFreq":[I
    .restart local v37    # "schedutilHispeedLoad":[I
    .restart local v38    # "aboveHispeedDelay":[I
    .restart local v39    # "hispeedFreq":[I
    const-string v10, ""

    .line 408
    .local v10, "traceTypes":Ljava/lang/String;
    sget-object v11, Lcom/android/server/cpuperf/QComBoostController;->perfObj:Ljava/lang/Object;

    monitor-enter v11

    .line 409
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_22

    move-object/from16 v41, v3

    move-object/from16 v40, v9

    move/from16 v44, v17

    move/from16 v45, v18

    move/from16 v13, v19

    move/from16 v43, v21

    move/from16 v46, v22

    move/from16 v42, v23

    move/from16 v47, v24

    move/from16 v12, v25

    move/from16 v48, v26

    move/from16 v3, v27

    move/from16 v9, v30

    move/from16 v49, v31

    move/from16 v15, v34

    .end local v17    # "disablePowerCollapse":Z
    .end local v18    # "thermalLevel":I
    .end local v19    # "cpuBandwidthMinFrequency":I
    .end local v21    # "gpuMinPowerLevel":I
    .end local v22    # "fanLevel":I
    .end local v23    # "gpuMaxPowerLevel":I
    .end local v24    # "schedUtilCpuFreqCtrl":I
    .end local v25    # "schedBoost":I
    .end local v26    # "inputBoostFreq":I
    .end local v27    # "schedSmallTask":I
    .end local v30    # "schedMostlyIdleLoad":I
    .end local v31    # "inputBoostMs":I
    .end local v34    # "schedMostlyIdleNRRun":I
    .local v3, "schedSmallTask":I
    .local v9, "schedMostlyIdleLoad":I
    .local v12, "schedBoost":I
    .local v13, "cpuBandwidthMinFrequency":I
    .local v15, "schedMostlyIdleNRRun":I
    .local v40, "goHispeedLoad":[I
    .local v41, "targetLoads":[I
    .local v42, "gpuMaxPowerLevel":I
    .local v43, "gpuMinPowerLevel":I
    .local v44, "disablePowerCollapse":Z
    .local v45, "thermalLevel":I
    .local v46, "fanLevel":I
    .local v47, "schedUtilCpuFreqCtrl":I
    .local v48, "inputBoostFreq":I
    .local v49, "inputBoostMs":I
    :goto_4
    :try_start_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v17
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_21

    if-eqz v17, :cond_57

    :try_start_2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/server/cpuperf/PerformanceController$PerformanceLock;

    move-object/from16 v50, v17

    .line 410
    .local v50, "pl":Lcom/android/server/cpuperf/PerformanceController$PerformanceLock;
    move-object/from16 v51, v0

    iget-boolean v0, v1, Lcom/android/server/cpuperf/QComBoostController;->mDumpDebugLog:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1f

    if-eqz v0, :cond_b

    .line 411
    :try_start_3
    const-string v0, "PerformanceController"
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-object/from16 v52, v4

    :try_start_4
    new-instance v4, Ljava/lang/StringBuilder;

    .line 411
    .end local v4    # "schedDownMigrate":[I
    .local v52, "schedDownMigrate":[I
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object/from16 v53, v2

    :try_start_5
    const-string v2, "candicate lock:"

    .line 411
    .end local v2    # "schedUpMigrate":[I
    .local v53, "schedUpMigrate":[I
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move/from16 v54, v15

    move-object/from16 v2, v50

    :try_start_6
    iget-object v15, v2, Lcom/android/server/cpuperf/PerformanceController$PerformanceLock;->mTag:Ljava/lang/String;

    .line 411
    .end local v15    # "schedMostlyIdleNRRun":I
    .end local v50    # "pl":Lcom/android/server/cpuperf/PerformanceController$PerformanceLock;
    .local v2, "pl":Lcom/android/server/cpuperf/PerformanceController$PerformanceLock;
    .local v54, "schedMostlyIdleNRRun":I
    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, ", type="

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v15, v2, Lcom/android/server/cpuperf/PerformanceController$PerformanceLock;->mType:I

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Lcom/android/server/cpuperf/PerformanceController$PerformanceLock;->mType:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 415
    .end local v10    # "traceTypes":Ljava/lang/String;
    .local v0, "traceTypes":Ljava/lang/String;
    move-object v10, v0

    goto/16 :goto_5

    .line 629
    .end local v0    # "traceTypes":Ljava/lang/String;
    .end local v2    # "pl":Lcom/android/server/cpuperf/PerformanceController$PerformanceLock;
    .end local v54    # "schedMostlyIdleNRRun":I
    .restart local v10    # "traceTypes":Ljava/lang/String;
    .restart local v15    # "schedMostlyIdleNRRun":I
    :catchall_0
    move-exception v0

    move/from16 v54, v15

    move-object/from16 v65, v5

    move-object/from16 v66, v6

    move/from16 v56, v14

    move-object/from16 v81, v36

    move-object/from16 v79, v37

    move-object/from16 v78, v38

    move-object/from16 v77, v39

    move-object/from16 v76, v40

    move-object/from16 v1, v41

    move/from16 v17, v44

    move/from16 v18, v45

    move/from16 v22, v46

    move/from16 v24, v47

    move/from16 v26, v48

    move/from16 v31, v49

    move-object/from16 v74, v52

    move v14, v9

    move v9, v13

    move v13, v3

    .end local v15    # "schedMostlyIdleNRRun":I
    .restart local v54    # "schedMostlyIdleNRRun":I
    goto/16 :goto_54

    .line 629
    .end local v53    # "schedUpMigrate":[I
    .end local v54    # "schedMostlyIdleNRRun":I
    .local v2, "schedUpMigrate":[I
    .restart local v15    # "schedMostlyIdleNRRun":I
    :catchall_1
    move-exception v0

    move-object/from16 v53, v2

    move/from16 v54, v15

    move-object/from16 v65, v5

    move-object/from16 v66, v6

    move/from16 v56, v14

    move-object/from16 v81, v36

    move-object/from16 v79, v37

    move-object/from16 v78, v38

    move-object/from16 v77, v39

    move-object/from16 v76, v40

    move-object/from16 v1, v41

    move/from16 v17, v44

    move/from16 v18, v45

    move/from16 v22, v46

    move/from16 v24, v47

    move/from16 v26, v48

    move/from16 v31, v49

    move-object/from16 v74, v52

    move v14, v9

    move v9, v13

    move v13, v3

    .end local v2    # "schedUpMigrate":[I
    .end local v15    # "schedMostlyIdleNRRun":I
    .restart local v53    # "schedUpMigrate":[I
    .restart local v54    # "schedMostlyIdleNRRun":I
    goto/16 :goto_54

    .line 629
    .end local v52    # "schedDownMigrate":[I
    .end local v53    # "schedUpMigrate":[I
    .end local v54    # "schedMostlyIdleNRRun":I
    .restart local v2    # "schedUpMigrate":[I
    .restart local v4    # "schedDownMigrate":[I
    .restart local v15    # "schedMostlyIdleNRRun":I
    :catchall_2
    move-exception v0

    move-object/from16 v53, v2

    move/from16 v54, v15

    move-object/from16 v74, v4

    move-object/from16 v65, v5

    move-object/from16 v66, v6

    move/from16 v56, v14

    move-object/from16 v81, v36

    move-object/from16 v79, v37

    move-object/from16 v78, v38

    move-object/from16 v77, v39

    move-object/from16 v76, v40

    move-object/from16 v1, v41

    move/from16 v17, v44

    move/from16 v18, v45

    move/from16 v22, v46

    move/from16 v24, v47

    move/from16 v26, v48

    move/from16 v31, v49

    move v14, v9

    move v9, v13

    move v13, v3

    .end local v2    # "schedUpMigrate":[I
    .end local v4    # "schedDownMigrate":[I
    .end local v15    # "schedMostlyIdleNRRun":I
    .restart local v52    # "schedDownMigrate":[I
    .restart local v53    # "schedUpMigrate":[I
    .restart local v54    # "schedMostlyIdleNRRun":I
    goto/16 :goto_54

    .line 415
    .end local v52    # "schedDownMigrate":[I
    .end local v53    # "schedUpMigrate":[I
    .end local v54    # "schedMostlyIdleNRRun":I
    .restart local v2    # "schedUpMigrate":[I
    .restart local v4    # "schedDownMigrate":[I
    .restart local v15    # "schedMostlyIdleNRRun":I
    .restart local v50    # "pl":Lcom/android/server/cpuperf/PerformanceController$PerformanceLock;
    :cond_b
    move-object/from16 v53, v2

    move-object/from16 v52, v4

    move/from16 v54, v15

    move-object/from16 v2, v50

    .line 415
    .end local v4    # "schedDownMigrate":[I
    .end local v15    # "schedMostlyIdleNRRun":I
    .end local v50    # "pl":Lcom/android/server/cpuperf/PerformanceController$PerformanceLock;
    .local v2, "pl":Lcom/android/server/cpuperf/PerformanceController$PerformanceLock;
    .restart local v52    # "schedDownMigrate":[I
    .restart local v53    # "schedUpMigrate":[I
    .restart local v54    # "schedMostlyIdleNRRun":I
    :goto_5
    const/4 v0, 0x0

    .line 417
    .local v0, "parameters":Lcom/android/server/cpuperf/QComBoostController$LockParameters;
    :try_start_7
    iget v4, v2, Lcom/android/server/cpuperf/PerformanceController$PerformanceLock;->mType:I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1e

    const/4 v15, 0x1

    if-ne v4, v15, :cond_d

    .line 427
    :try_start_8
    iget-object v4, v1, Lcom/android/server/cpuperf/QComBoostController;->mPerfData:Lcom/android/server/cpuperf/QComBoostController$PerformanceData;

    iget-object v4, v4, Lcom/android/server/cpuperf/QComBoostController$PerformanceData;->perfData:Ljava/util/HashMap;

    iget v15, v2, Lcom/android/server/cpuperf/PerformanceController$PerformanceLock;->mType:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v4, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArrayMap;

    .line 428
    .local v4, "perfDatas":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/cpuperf/QComBoostController$LockParameters;>;"
    if-eqz v4, :cond_c

    .line 429
    iget-object v15, v2, Lcom/android/server/cpuperf/PerformanceController$PerformanceLock;->mTag:Ljava/lang/String;

    invoke-virtual {v4, v15}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/cpuperf/QComBoostController$LockParameters;

    move-object v0, v15

    if-nez v15, :cond_c

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v15

    if-lez v15, :cond_c

    .line 430
    const/4 v15, 0x0

    invoke-virtual {v4, v15}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/server/cpuperf/QComBoostController$LockParameters;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    move-object/from16 v0, v17

    .line 434
    .end local v4    # "perfDatas":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/cpuperf/QComBoostController$LockParameters;>;"
    :cond_c
    goto/16 :goto_9

    .line 629
    .end local v0    # "parameters":Lcom/android/server/cpuperf/QComBoostController$LockParameters;
    .end local v2    # "pl":Lcom/android/server/cpuperf/PerformanceController$PerformanceLock;
    :catchall_3
    move-exception v0

    move-object/from16 v65, v5

    move-object/from16 v66, v6

    move/from16 v56, v14

    move-object/from16 v81, v36

    move-object/from16 v79, v37

    move-object/from16 v78, v38

    move-object/from16 v77, v39

    move-object/from16 v76, v40

    move-object/from16 v1, v41

    move/from16 v17, v44

    move/from16 v18, v45

    move/from16 v22, v46

    move/from16 v24, v47

    move/from16 v26, v48

    move/from16 v31, v49

    move-object/from16 v74, v52

    move/from16 v15, v54

    .end local v3    # "schedSmallTask":I
    .end local v5    # "minNumCores":[I
    .end local v6    # "maxNumCores":[I
    .end local v36    # "schedutilHispeedFreq":[I
    .end local v37    # "schedutilHispeedLoad":[I
    .end local v38    # "aboveHispeedDelay":[I
    .end local v39    # "hispeedFreq":[I
    .end local v40    # "goHispeedLoad":[I
    .end local v41    # "targetLoads":[I
    .end local v44    # "disablePowerCollapse":Z
    .end local v45    # "thermalLevel":I
    .end local v46    # "fanLevel":I
    .end local v47    # "schedUtilCpuFreqCtrl":I
    .end local v48    # "inputBoostFreq":I
    .end local v49    # "inputBoostMs":I
    .end local v52    # "schedDownMigrate":[I
    .end local v54    # "schedMostlyIdleNRRun":I
    .local v1, "targetLoads":[I
    .local v9, "cpuBandwidthMinFrequency":I
    .local v13, "schedSmallTask":I
    .local v14, "schedMostlyIdleLoad":I
    .restart local v15    # "schedMostlyIdleNRRun":I
    .restart local v17    # "disablePowerCollapse":Z
    .restart local v18    # "thermalLevel":I
    .restart local v22    # "fanLevel":I
    .restart local v24    # "schedUtilCpuFreqCtrl":I
    .restart local v26    # "inputBoostFreq":I
    .restart local v31    # "inputBoostMs":I
    .local v56, "avoidSuperGamePerf":Z
    .local v65, "minNumCores":[I
    .local v66, "maxNumCores":[I
    .local v74, "schedDownMigrate":[I
    .local v76, "goHispeedLoad":[I
    .local v77, "hispeedFreq":[I
    .local v78, "aboveHispeedDelay":[I
    .local v79, "schedutilHispeedLoad":[I
    .local v81, "schedutilHispeedFreq":[I
    :goto_6
    move v14, v9

    move v9, v13

    :goto_7
    move v13, v3

    goto/16 :goto_54

    .line 434
    .end local v1    # "targetLoads":[I
    .end local v15    # "schedMostlyIdleNRRun":I
    .end local v17    # "disablePowerCollapse":Z
    .end local v18    # "thermalLevel":I
    .end local v22    # "fanLevel":I
    .end local v24    # "schedUtilCpuFreqCtrl":I
    .end local v26    # "inputBoostFreq":I
    .end local v31    # "inputBoostMs":I
    .end local v56    # "avoidSuperGamePerf":Z
    .end local v65    # "minNumCores":[I
    .end local v66    # "maxNumCores":[I
    .end local v74    # "schedDownMigrate":[I
    .end local v76    # "goHispeedLoad":[I
    .end local v77    # "hispeedFreq":[I
    .end local v78    # "aboveHispeedDelay":[I
    .end local v79    # "schedutilHispeedLoad":[I
    .end local v81    # "schedutilHispeedFreq":[I
    .restart local v0    # "parameters":Lcom/android/server/cpuperf/QComBoostController$LockParameters;
    .restart local v2    # "pl":Lcom/android/server/cpuperf/PerformanceController$PerformanceLock;
    .restart local v3    # "schedSmallTask":I
    .restart local v5    # "minNumCores":[I
    .restart local v6    # "maxNumCores":[I
    .local v9, "schedMostlyIdleLoad":I
    .local v13, "cpuBandwidthMinFrequency":I
    .local v14, "avoidSuperGamePerf":Z
    .restart local v36    # "schedutilHispeedFreq":[I
    .restart local v37    # "schedutilHispeedLoad":[I
    .restart local v38    # "aboveHispeedDelay":[I
    .restart local v39    # "hispeedFreq":[I
    .restart local v40    # "goHispeedLoad":[I
    .restart local v41    # "targetLoads":[I
    .restart local v44    # "disablePowerCollapse":Z
    .restart local v45    # "thermalLevel":I
    .restart local v46    # "fanLevel":I
    .restart local v47    # "schedUtilCpuFreqCtrl":I
    .restart local v48    # "inputBoostFreq":I
    .restart local v49    # "inputBoostMs":I
    .restart local v52    # "schedDownMigrate":[I
    .restart local v54    # "schedMostlyIdleNRRun":I
    :cond_d
    :try_start_9
    iget v4, v2, Lcom/android/server/cpuperf/PerformanceController$PerformanceLock;->mType:I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1e

    const/16 v15, 0x9

    if-ne v4, v15, :cond_f

    .line 435
    if-eqz v14, :cond_e

    .line 409
    .end local v0    # "parameters":Lcom/android/server/cpuperf/QComBoostController$LockParameters;
    .end local v2    # "pl":Lcom/android/server/cpuperf/PerformanceController$PerformanceLock;
    move-object/from16 v55, v10

    :goto_8
    move/from16 v56, v14

    goto/16 :goto_b

    .line 436
    .restart local v0    # "parameters":Lcom/android/server/cpuperf/QComBoostController$LockParameters;
    .restart local v2    # "pl":Lcom/android/server/cpuperf/PerformanceController$PerformanceLock;
    :cond_e
    :try_start_a
    iget-object v4, v1, Lcom/android/server/cpuperf/QComBoostController;->mPerfData:Lcom/android/server/cpuperf/QComBoostController$PerformanceData;

    iget-object v4, v4, Lcom/android/server/cpuperf/QComBoostController$PerformanceData;->perfData:Ljava/util/HashMap;

    iget v15, v2, Lcom/android/server/cpuperf/PerformanceController$PerformanceLock;->mType:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v4, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArrayMap;

    const-string v15, "com.superGamePerf.running"

    invoke-virtual {v4, v15}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/cpuperf/QComBoostController$LockParameters;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    move-object v0, v4

    goto :goto_9

    .line 438
    :cond_f
    :try_start_b
    iget-object v4, v1, Lcom/android/server/cpuperf/QComBoostController;->mPerfData:Lcom/android/server/cpuperf/QComBoostController$PerformanceData;

    iget-object v4, v4, Lcom/android/server/cpuperf/QComBoostController$PerformanceData;->perfData:Ljava/util/HashMap;

    iget v15, v2, Lcom/android/server/cpuperf/PerformanceController$PerformanceLock;->mType:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v4, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1e

    if-eqz v4, :cond_10

    :try_start_c
    iget-object v4, v1, Lcom/android/server/cpuperf/QComBoostController;->mPerfData:Lcom/android/server/cpuperf/QComBoostController$PerformanceData;

    iget-object v4, v4, Lcom/android/server/cpuperf/QComBoostController$PerformanceData;->perfData:Ljava/util/HashMap;

    iget v15, v2, Lcom/android/server/cpuperf/PerformanceController$PerformanceLock;->mType:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v4, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-lez v4, :cond_10

    .line 439
    iget-object v4, v1, Lcom/android/server/cpuperf/QComBoostController;->mPerfData:Lcom/android/server/cpuperf/QComBoostController$PerformanceData;

    iget-object v4, v4, Lcom/android/server/cpuperf/QComBoostController$PerformanceData;->perfData:Ljava/util/HashMap;

    iget v15, v2, Lcom/android/server/cpuperf/PerformanceController$PerformanceLock;->mType:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v4, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArrayMap;

    const/4 v15, 0x0

    invoke-virtual {v4, v15}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/cpuperf/QComBoostController$LockParameters;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    move-object v0, v4

    .line 442
    :cond_10
    :goto_9
    if-nez v0, :cond_12

    .line 443
    :try_start_d
    iget-boolean v4, v1, Lcom/android/server/cpuperf/QComBoostController;->mDumpDebugLog:Z

    if-eqz v4, :cond_11

    .line 444
    const-string v4, "PerformanceController"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    move-object/from16 v55, v10

    :try_start_e
    const-string v10, "Cannot find lock parameters for "

    .line 444
    .end local v10    # "traceTypes":Ljava/lang/String;
    .local v55, "traceTypes":Ljava/lang/String;
    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v2, Lcom/android/server/cpuperf/PerformanceController$PerformanceLock;->mTag:Ljava/lang/String;

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    goto :goto_8

    .line 629
    .end local v0    # "parameters":Lcom/android/server/cpuperf/QComBoostController$LockParameters;
    .end local v2    # "pl":Lcom/android/server/cpuperf/PerformanceController$PerformanceLock;
    :catchall_4
    move-exception v0

    move-object/from16 v65, v5

    move-object/from16 v66, v6

    move/from16 v56, v14

    move-object/from16 v81, v36

    move-object/from16 v79, v37

    move-object/from16 v78, v38

    move-object/from16 v77, v39

    move-object/from16 v76, v40

    move-object/from16 v1, v41

    move/from16 v17, v44

    move/from16 v18, v45

    move/from16 v22, v46

    move/from16 v24, v47

    move/from16 v26, v48

    move/from16 v31, v49

    move-object/from16 v74, v52

    move/from16 v15, v54

    .end local v3    # "schedSmallTask":I
    .end local v5    # "minNumCores":[I
    .end local v6    # "maxNumCores":[I
    .end local v36    # "schedutilHispeedFreq":[I
    .end local v37    # "schedutilHispeedLoad":[I
    .end local v38    # "aboveHispeedDelay":[I
    .end local v39    # "hispeedFreq":[I
    .end local v40    # "goHispeedLoad":[I
    .end local v41    # "targetLoads":[I
    .end local v44    # "disablePowerCollapse":Z
    .end local v45    # "thermalLevel":I
    .end local v46    # "fanLevel":I
    .end local v47    # "schedUtilCpuFreqCtrl":I
    .end local v48    # "inputBoostFreq":I
    .end local v49    # "inputBoostMs":I
    .end local v52    # "schedDownMigrate":[I
    .end local v54    # "schedMostlyIdleNRRun":I
    .end local v55    # "traceTypes":Ljava/lang/String;
    .restart local v1    # "targetLoads":[I
    .local v9, "cpuBandwidthMinFrequency":I
    .restart local v10    # "traceTypes":Ljava/lang/String;
    .local v13, "schedSmallTask":I
    .local v14, "schedMostlyIdleLoad":I
    .restart local v15    # "schedMostlyIdleNRRun":I
    .restart local v17    # "disablePowerCollapse":Z
    .restart local v18    # "thermalLevel":I
    .restart local v22    # "fanLevel":I
    .restart local v24    # "schedUtilCpuFreqCtrl":I
    .restart local v26    # "inputBoostFreq":I
    .restart local v31    # "inputBoostMs":I
    .restart local v56    # "avoidSuperGamePerf":Z
    .restart local v65    # "minNumCores":[I
    .restart local v66    # "maxNumCores":[I
    .restart local v74    # "schedDownMigrate":[I
    .restart local v76    # "goHispeedLoad":[I
    .restart local v77    # "hispeedFreq":[I
    .restart local v78    # "aboveHispeedDelay":[I
    .restart local v79    # "schedutilHispeedLoad":[I
    .restart local v81    # "schedutilHispeedFreq":[I
    :goto_a
    move-object/from16 v10, v55

    goto/16 :goto_6

    .line 409
    .end local v1    # "targetLoads":[I
    .end local v15    # "schedMostlyIdleNRRun":I
    .end local v17    # "disablePowerCollapse":Z
    .end local v18    # "thermalLevel":I
    .end local v22    # "fanLevel":I
    .end local v24    # "schedUtilCpuFreqCtrl":I
    .end local v26    # "inputBoostFreq":I
    .end local v31    # "inputBoostMs":I
    .end local v56    # "avoidSuperGamePerf":Z
    .end local v65    # "minNumCores":[I
    .end local v66    # "maxNumCores":[I
    .end local v74    # "schedDownMigrate":[I
    .end local v76    # "goHispeedLoad":[I
    .end local v77    # "hispeedFreq":[I
    .end local v78    # "aboveHispeedDelay":[I
    .end local v79    # "schedutilHispeedLoad":[I
    .end local v81    # "schedutilHispeedFreq":[I
    .restart local v3    # "schedSmallTask":I
    .restart local v5    # "minNumCores":[I
    .restart local v6    # "maxNumCores":[I
    .local v9, "schedMostlyIdleLoad":I
    .local v13, "cpuBandwidthMinFrequency":I
    .local v14, "avoidSuperGamePerf":Z
    .restart local v36    # "schedutilHispeedFreq":[I
    .restart local v37    # "schedutilHispeedLoad":[I
    .restart local v38    # "aboveHispeedDelay":[I
    .restart local v39    # "hispeedFreq":[I
    .restart local v40    # "goHispeedLoad":[I
    .restart local v41    # "targetLoads":[I
    .restart local v44    # "disablePowerCollapse":Z
    .restart local v45    # "thermalLevel":I
    .restart local v46    # "fanLevel":I
    .restart local v47    # "schedUtilCpuFreqCtrl":I
    .restart local v48    # "inputBoostFreq":I
    .restart local v49    # "inputBoostMs":I
    .restart local v52    # "schedDownMigrate":[I
    .restart local v54    # "schedMostlyIdleNRRun":I
    :cond_11
    move-object/from16 v55, v10

    move/from16 v56, v14

    .line 409
    .end local v10    # "traceTypes":Ljava/lang/String;
    .restart local v55    # "traceTypes":Ljava/lang/String;
    goto :goto_b

    .line 629
    .end local v55    # "traceTypes":Ljava/lang/String;
    .restart local v10    # "traceTypes":Ljava/lang/String;
    :catchall_5
    move-exception v0

    move-object/from16 v55, v10

    move-object/from16 v65, v5

    move-object/from16 v66, v6

    move/from16 v56, v14

    move-object/from16 v81, v36

    move-object/from16 v79, v37

    move-object/from16 v78, v38

    move-object/from16 v77, v39

    move-object/from16 v76, v40

    move-object/from16 v1, v41

    move/from16 v17, v44

    move/from16 v18, v45

    move/from16 v22, v46

    move/from16 v24, v47

    move/from16 v26, v48

    move/from16 v31, v49

    move-object/from16 v74, v52

    move/from16 v15, v54

    move v14, v9

    move v9, v13

    move v13, v3

    .end local v10    # "traceTypes":Ljava/lang/String;
    .restart local v55    # "traceTypes":Ljava/lang/String;
    goto/16 :goto_54

    .line 449
    .end local v55    # "traceTypes":Ljava/lang/String;
    .restart local v0    # "parameters":Lcom/android/server/cpuperf/QComBoostController$LockParameters;
    .restart local v2    # "pl":Lcom/android/server/cpuperf/PerformanceController$PerformanceLock;
    .restart local v10    # "traceTypes":Ljava/lang/String;
    :cond_12
    move-object/from16 v55, v10

    .line 449
    .end local v10    # "traceTypes":Ljava/lang/String;
    .restart local v55    # "traceTypes":Ljava/lang/String;
    :try_start_f
    iget-boolean v4, v0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->restricted:Z
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1d

    if-eqz v4, :cond_14

    move/from16 v56, v14

    :try_start_10
    iget-wide v14, v2, Lcom/android/server/cpuperf/PerformanceController$PerformanceLock;->mAcquireTime:J

    .line 449
    .end local v14    # "avoidSuperGamePerf":Z
    .restart local v56    # "avoidSuperGamePerf":Z
    sub-long v14, v28, v14

    const-wide/16 v17, 0x1388

    cmp-long v4, v14, v17

    if-gez v4, :cond_15

    .line 450
    iget-boolean v4, v1, Lcom/android/server/cpuperf/QComBoostController;->mDumpDebugLog:Z

    if-eqz v4, :cond_13

    .line 451
    const-string v4, "PerformanceController"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "restricted lock "

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v2, Lcom/android/server/cpuperf/PerformanceController$PerformanceLock;->mTag:Ljava/lang/String;

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " doesn\'t join parameter tuning now"

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    .line 409
    .end local v0    # "parameters":Lcom/android/server/cpuperf/QComBoostController$LockParameters;
    .end local v2    # "pl":Lcom/android/server/cpuperf/PerformanceController$PerformanceLock;
    .end local v55    # "traceTypes":Ljava/lang/String;
    .end local v56    # "avoidSuperGamePerf":Z
    .restart local v10    # "traceTypes":Ljava/lang/String;
    .restart local v14    # "avoidSuperGamePerf":Z
    :cond_13
    :goto_b
    move-object/from16 v0, v51

    move-object/from16 v4, v52

    move-object/from16 v2, v53

    move/from16 v15, v54

    move-object/from16 v10, v55

    move/from16 v14, v56

    .line 409
    .end local v10    # "traceTypes":Ljava/lang/String;
    .end local v14    # "avoidSuperGamePerf":Z
    .restart local v55    # "traceTypes":Ljava/lang/String;
    .restart local v56    # "avoidSuperGamePerf":Z
    goto/16 :goto_4

    .line 629
    :catchall_6
    move-exception v0

    move-object/from16 v65, v5

    move-object/from16 v66, v6

    move v14, v9

    move v9, v13

    move-object/from16 v81, v36

    move-object/from16 v79, v37

    move-object/from16 v78, v38

    move-object/from16 v77, v39

    move-object/from16 v76, v40

    move-object/from16 v1, v41

    move/from16 v17, v44

    move/from16 v18, v45

    move/from16 v22, v46

    move/from16 v24, v47

    move/from16 v26, v48

    move/from16 v31, v49

    move-object/from16 v74, v52

    move/from16 v15, v54

    .end local v3    # "schedSmallTask":I
    .end local v5    # "minNumCores":[I
    .end local v6    # "maxNumCores":[I
    .end local v36    # "schedutilHispeedFreq":[I
    .end local v37    # "schedutilHispeedLoad":[I
    .end local v38    # "aboveHispeedDelay":[I
    .end local v39    # "hispeedFreq":[I
    .end local v40    # "goHispeedLoad":[I
    .end local v41    # "targetLoads":[I
    .end local v44    # "disablePowerCollapse":Z
    .end local v45    # "thermalLevel":I
    .end local v46    # "fanLevel":I
    .end local v47    # "schedUtilCpuFreqCtrl":I
    .end local v48    # "inputBoostFreq":I
    .end local v49    # "inputBoostMs":I
    .end local v52    # "schedDownMigrate":[I
    .end local v54    # "schedMostlyIdleNRRun":I
    .end local v55    # "traceTypes":Ljava/lang/String;
    .restart local v1    # "targetLoads":[I
    .local v9, "cpuBandwidthMinFrequency":I
    .restart local v10    # "traceTypes":Ljava/lang/String;
    .local v13, "schedSmallTask":I
    .local v14, "schedMostlyIdleLoad":I
    .restart local v15    # "schedMostlyIdleNRRun":I
    .restart local v17    # "disablePowerCollapse":Z
    .restart local v18    # "thermalLevel":I
    .restart local v22    # "fanLevel":I
    .restart local v24    # "schedUtilCpuFreqCtrl":I
    .restart local v26    # "inputBoostFreq":I
    .restart local v31    # "inputBoostMs":I
    .restart local v65    # "minNumCores":[I
    .restart local v66    # "maxNumCores":[I
    .restart local v74    # "schedDownMigrate":[I
    .restart local v76    # "goHispeedLoad":[I
    .restart local v77    # "hispeedFreq":[I
    .restart local v78    # "aboveHispeedDelay":[I
    .restart local v79    # "schedutilHispeedLoad":[I
    .restart local v81    # "schedutilHispeedFreq":[I
    :goto_c
    move-object/from16 v10, v55

    goto/16 :goto_7

    .line 456
    .end local v1    # "targetLoads":[I
    .end local v10    # "traceTypes":Ljava/lang/String;
    .end local v15    # "schedMostlyIdleNRRun":I
    .end local v17    # "disablePowerCollapse":Z
    .end local v18    # "thermalLevel":I
    .end local v22    # "fanLevel":I
    .end local v24    # "schedUtilCpuFreqCtrl":I
    .end local v26    # "inputBoostFreq":I
    .end local v31    # "inputBoostMs":I
    .end local v56    # "avoidSuperGamePerf":Z
    .end local v65    # "minNumCores":[I
    .end local v66    # "maxNumCores":[I
    .end local v74    # "schedDownMigrate":[I
    .end local v76    # "goHispeedLoad":[I
    .end local v77    # "hispeedFreq":[I
    .end local v78    # "aboveHispeedDelay":[I
    .end local v79    # "schedutilHispeedLoad":[I
    .end local v81    # "schedutilHispeedFreq":[I
    .restart local v0    # "parameters":Lcom/android/server/cpuperf/QComBoostController$LockParameters;
    .restart local v2    # "pl":Lcom/android/server/cpuperf/PerformanceController$PerformanceLock;
    .restart local v3    # "schedSmallTask":I
    .restart local v5    # "minNumCores":[I
    .restart local v6    # "maxNumCores":[I
    .local v9, "schedMostlyIdleLoad":I
    .local v13, "cpuBandwidthMinFrequency":I
    .local v14, "avoidSuperGamePerf":Z
    .restart local v36    # "schedutilHispeedFreq":[I
    .restart local v37    # "schedutilHispeedLoad":[I
    .restart local v38    # "aboveHispeedDelay":[I
    .restart local v39    # "hispeedFreq":[I
    .restart local v40    # "goHispeedLoad":[I
    .restart local v41    # "targetLoads":[I
    .restart local v44    # "disablePowerCollapse":Z
    .restart local v45    # "thermalLevel":I
    .restart local v46    # "fanLevel":I
    .restart local v47    # "schedUtilCpuFreqCtrl":I
    .restart local v48    # "inputBoostFreq":I
    .restart local v49    # "inputBoostMs":I
    .restart local v52    # "schedDownMigrate":[I
    .restart local v54    # "schedMostlyIdleNRRun":I
    .restart local v55    # "traceTypes":Ljava/lang/String;
    :cond_14
    move/from16 v56, v14

    .line 456
    .end local v14    # "avoidSuperGamePerf":Z
    .restart local v56    # "avoidSuperGamePerf":Z
    :cond_15
    const/4 v4, 0x0

    .line 456
    .local v4, "i":I
    :goto_d
    :try_start_11
    iget-object v10, v0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->minNumCores:[I

    array-length v10, v10
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1c

    if-ge v4, v10, :cond_17

    .line 457
    :try_start_12
    iget-object v10, v0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->minNumCores:[I

    aget v10, v10, v4

    aget v14, v5, v4

    if-le v10, v14, :cond_16

    .line 458
    iget-object v10, v0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->minNumCores:[I

    aget v10, v10, v4

    aput v10, v5, v4
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_6

    .line 456
    :cond_16
    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    .line 461
    .end local v4    # "i":I
    :cond_17
    const/4 v4, 0x0

    .line 461
    .restart local v4    # "i":I
    :goto_e
    :try_start_13
    iget-object v10, v0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->maxNumCores:[I

    array-length v10, v10
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_1c

    if-ge v4, v10, :cond_19

    .line 462
    :try_start_14
    iget-object v10, v0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->maxNumCores:[I

    aget v10, v10, v4

    aget v14, v6, v4

    if-le v10, v14, :cond_18

    .line 463
    iget-object v10, v0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->maxNumCores:[I

    aget v10, v10, v4

    aput v10, v6, v4
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_6

    .line 461
    :cond_18
    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    .line 466
    .end local v4    # "i":I
    :cond_19
    const/4 v4, 0x0

    .line 466
    .restart local v4    # "i":I
    :goto_f
    :try_start_15
    iget-object v10, v0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->minFrequencies:[I

    array-length v10, v10
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_1c

    if-ge v4, v10, :cond_1b

    .line 467
    :try_start_16
    iget-object v10, v0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->minFrequencies:[I

    aget v10, v10, v4

    aget v14, v7, v4

    if-le v10, v14, :cond_1a

    .line 468
    iget-object v10, v0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->minFrequencies:[I

    aget v10, v10, v4

    aput v10, v7, v4

    .line 466
    :cond_1a
    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    .line 470
    .end local v4    # "i":I
    :cond_1b
    if-eqz v32, :cond_1d

    .line 471
    const/4 v4, 0x0

    .line 471
    .restart local v4    # "i":I
    :goto_10
    iget-object v10, v0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->hiPerfMinFreq:[I

    array-length v10, v10

    if-ge v4, v10, :cond_1d

    .line 472
    iget-object v10, v0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->hiPerfMinFreq:[I

    aget v10, v10, v4

    aget v14, v7, v4

    if-le v10, v14, :cond_1c

    .line 473
    iget-object v10, v0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->hiPerfMinFreq:[I

    aget v10, v10, v4

    aput v10, v7, v4
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_6

    .line 471
    :cond_1c
    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    .line 477
    .end local v4    # "i":I
    :cond_1d
    const/4 v4, 0x0

    .line 477
    .restart local v4    # "i":I
    :goto_11
    :try_start_17
    iget-object v10, v0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->maxFrequencies:[I

    array-length v10, v10
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_1c

    if-ge v4, v10, :cond_1f

    .line 478
    :try_start_18
    iget-object v10, v0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->maxFrequencies:[I

    aget v10, v10, v4

    aget v14, v8, v4

    if-le v10, v14, :cond_1e

    .line 479
    iget-object v10, v0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->maxFrequencies:[I

    aget v10, v10, v4

    aput v10, v8, v4

    .line 477
    :cond_1e
    add-int/lit8 v4, v4, 0x1

    goto :goto_11

    .line 481
    .end local v4    # "i":I
    :cond_1f
    if-eqz v32, :cond_21

    .line 482
    const/4 v4, 0x0

    .line 482
    .restart local v4    # "i":I
    :goto_12
    iget-object v10, v0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->hiPerfMaxFreq:[I

    array-length v10, v10

    if-ge v4, v10, :cond_21

    .line 483
    iget-object v10, v0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->hiPerfMaxFreq:[I

    aget v10, v10, v4

    aget v14, v8, v4

    if-le v10, v14, :cond_20

    .line 484
    iget-object v10, v0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->hiPerfMaxFreq:[I

    aget v10, v10, v4

    aput v10, v8, v4
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_6

    .line 482
    :cond_20
    add-int/lit8 v4, v4, 0x1

    goto :goto_12

    .line 488
    .end local v4    # "i":I
    :cond_21
    :try_start_19
    iget v4, v0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->cpuBandwidthMinFrequency:I
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_1c

    if-le v4, v13, :cond_22

    .line 489
    :try_start_1a
    iget v4, v0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->cpuBandwidthMinFrequency:I
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_6

    .line 491
    .end local v13    # "cpuBandwidthMinFrequency":I
    .local v4, "cpuBandwidthMinFrequency":I
    move v13, v4

    .line 491
    .end local v4    # "cpuBandwidthMinFrequency":I
    .restart local v13    # "cpuBandwidthMinFrequency":I
    :cond_22
    :try_start_1b
    iget v4, v0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->schedBoost:I
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_1c

    if-eqz v4, :cond_23

    :try_start_1c
    iget v4, v0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->schedBoost:I

    if-ge v4, v12, :cond_23

    .line 492
    iget v4, v0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->schedBoost:I

    .line 494
    .end local v12    # "schedBoost":I
    .local v4, "schedBoost":I
    move v12, v4

    .line 494
    .end local v4    # "schedBoost":I
    .restart local v12    # "schedBoost":I
    :cond_23
    if-eqz v32, :cond_24

    .line 495
    iget v4, v0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->hiPerfSchedBoost:I

    if-eqz v4, :cond_24

    iget v4, v0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->hiPerfSchedBoost:I

    if-ge v4, v12, :cond_24

    .line 496
    iget v4, v0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->hiPerfSchedBoost:I
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_6

    .line 500
    .end local v12    # "schedBoost":I
    .restart local v4    # "schedBoost":I
    move v12, v4

    .line 500
    .end local v4    # "schedBoost":I
    .restart local v12    # "schedBoost":I
    :cond_24
    :try_start_1d
    iget v4, v0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->schedSmallTask:I
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_1c

    const/4 v10, -0x1

    if-eq v4, v10, :cond_25

    :try_start_1e
    iget v4, v0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->schedSmallTask:I

    if-ge v4, v3, :cond_25

    .line 501
    iget v4, v0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->schedSmallTask:I
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_6

    move v3, v4

    .line 503
    :cond_25
    :try_start_1f
    iget v4, v0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->schedMostlyIdleLoad:I
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_1c

    const/4 v10, -0x1

    if-eq v4, v10, :cond_26

    :try_start_20
    iget v4, v0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->schedMostlyIdleLoad:I

    if-ge v4, v9, :cond_26

    .line 504
    iget v4, v0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->schedMostlyIdleLoad:I
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_6

    .line 506
    .end local v9    # "schedMostlyIdleLoad":I
    .local v4, "schedMostlyIdleLoad":I
    move v9, v4

    .line 506
    .end local v4    # "schedMostlyIdleLoad":I
    .restart local v9    # "schedMostlyIdleLoad":I
    :cond_26
    :try_start_21
    iget v4, v0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->schedMostlyIdleNRRun:I
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_1c

    const/4 v10, -0x1

    if-eq v4, v10, :cond_27

    :try_start_22
    iget v4, v0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->schedMostlyIdleNRRun:I
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_8

    move/from16 v14, v54

    if-ge v4, v14, :cond_28

    .line 507
    .end local v54    # "schedMostlyIdleNRRun":I
    .local v14, "schedMostlyIdleNRRun":I
    :try_start_23
    iget v4, v0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->schedMostlyIdleNRRun:I
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_7

    .line 509
    .end local v14    # "schedMostlyIdleNRRun":I
    .local v4, "schedMostlyIdleNRRun":I
    move v15, v4

    goto/16 :goto_16

    .line 629
    .end local v0    # "parameters":Lcom/android/server/cpuperf/QComBoostController$LockParameters;
    .end local v2    # "pl":Lcom/android/server/cpuperf/PerformanceController$PerformanceLock;
    .end local v4    # "schedMostlyIdleNRRun":I
    .restart local v14    # "schedMostlyIdleNRRun":I
    :catchall_7
    move-exception v0

    move-object/from16 v65, v5

    move-object/from16 v66, v6

    move v15, v14

    .line 629
    .end local v3    # "schedSmallTask":I
    .end local v5    # "minNumCores":[I
    .end local v6    # "maxNumCores":[I
    .end local v36    # "schedutilHispeedFreq":[I
    .end local v37    # "schedutilHispeedLoad":[I
    .end local v38    # "aboveHispeedDelay":[I
    .end local v39    # "hispeedFreq":[I
    .end local v40    # "goHispeedLoad":[I
    .end local v41    # "targetLoads":[I
    .end local v44    # "disablePowerCollapse":Z
    .end local v45    # "thermalLevel":I
    .end local v46    # "fanLevel":I
    .end local v47    # "schedUtilCpuFreqCtrl":I
    .end local v48    # "inputBoostFreq":I
    .end local v49    # "inputBoostMs":I
    .end local v52    # "schedDownMigrate":[I
    .end local v55    # "traceTypes":Ljava/lang/String;
    .restart local v1    # "targetLoads":[I
    .local v9, "cpuBandwidthMinFrequency":I
    .restart local v10    # "traceTypes":Ljava/lang/String;
    .local v13, "schedSmallTask":I
    .local v14, "schedMostlyIdleLoad":I
    .restart local v15    # "schedMostlyIdleNRRun":I
    .restart local v17    # "disablePowerCollapse":Z
    .restart local v18    # "thermalLevel":I
    .restart local v22    # "fanLevel":I
    .restart local v24    # "schedUtilCpuFreqCtrl":I
    .restart local v26    # "inputBoostFreq":I
    .restart local v31    # "inputBoostMs":I
    .restart local v65    # "minNumCores":[I
    .restart local v66    # "maxNumCores":[I
    .restart local v74    # "schedDownMigrate":[I
    .restart local v76    # "goHispeedLoad":[I
    .restart local v77    # "hispeedFreq":[I
    .restart local v78    # "aboveHispeedDelay":[I
    .restart local v79    # "schedutilHispeedLoad":[I
    .restart local v81    # "schedutilHispeedFreq":[I
    :goto_13
    move-object/from16 v81, v36

    move-object/from16 v79, v37

    move-object/from16 v78, v38

    move-object/from16 v77, v39

    move-object/from16 v76, v40

    move-object/from16 v1, v41

    move/from16 v17, v44

    move/from16 v18, v45

    :goto_14
    move/from16 v22, v46

    move/from16 v24, v47

    move/from16 v26, v48

    move/from16 v31, v49

    :goto_15
    move-object/from16 v74, v52

    goto/16 :goto_a

    .end local v1    # "targetLoads":[I
    .end local v10    # "traceTypes":Ljava/lang/String;
    .end local v14    # "schedMostlyIdleLoad":I
    .end local v15    # "schedMostlyIdleNRRun":I
    .end local v17    # "disablePowerCollapse":Z
    .end local v18    # "thermalLevel":I
    .end local v22    # "fanLevel":I
    .end local v24    # "schedUtilCpuFreqCtrl":I
    .end local v26    # "inputBoostFreq":I
    .end local v31    # "inputBoostMs":I
    .end local v65    # "minNumCores":[I
    .end local v66    # "maxNumCores":[I
    .end local v74    # "schedDownMigrate":[I
    .end local v76    # "goHispeedLoad":[I
    .end local v77    # "hispeedFreq":[I
    .end local v78    # "aboveHispeedDelay":[I
    .end local v79    # "schedutilHispeedLoad":[I
    .end local v81    # "schedutilHispeedFreq":[I
    .restart local v3    # "schedSmallTask":I
    .restart local v5    # "minNumCores":[I
    .restart local v6    # "maxNumCores":[I
    .local v9, "schedMostlyIdleLoad":I
    .local v13, "cpuBandwidthMinFrequency":I
    .restart local v36    # "schedutilHispeedFreq":[I
    .restart local v37    # "schedutilHispeedLoad":[I
    .restart local v38    # "aboveHispeedDelay":[I
    .restart local v39    # "hispeedFreq":[I
    .restart local v40    # "goHispeedLoad":[I
    .restart local v41    # "targetLoads":[I
    .restart local v44    # "disablePowerCollapse":Z
    .restart local v45    # "thermalLevel":I
    .restart local v46    # "fanLevel":I
    .restart local v47    # "schedUtilCpuFreqCtrl":I
    .restart local v48    # "inputBoostFreq":I
    .restart local v49    # "inputBoostMs":I
    .restart local v52    # "schedDownMigrate":[I
    .restart local v54    # "schedMostlyIdleNRRun":I
    .restart local v55    # "traceTypes":Ljava/lang/String;
    :catchall_8
    move-exception v0

    move/from16 v14, v54

    move-object/from16 v65, v5

    move-object/from16 v66, v6

    move v15, v14

    move-object/from16 v81, v36

    move-object/from16 v79, v37

    move-object/from16 v78, v38

    move-object/from16 v77, v39

    move-object/from16 v76, v40

    move-object/from16 v1, v41

    move/from16 v17, v44

    move/from16 v18, v45

    move/from16 v22, v46

    move/from16 v24, v47

    move/from16 v26, v48

    move/from16 v31, v49

    move-object/from16 v74, v52

    move-object/from16 v10, v55

    move v14, v9

    move v9, v13

    move v13, v3

    .end local v54    # "schedMostlyIdleNRRun":I
    .local v14, "schedMostlyIdleNRRun":I
    goto/16 :goto_54

    .line 509
    .end local v14    # "schedMostlyIdleNRRun":I
    .restart local v0    # "parameters":Lcom/android/server/cpuperf/QComBoostController$LockParameters;
    .restart local v2    # "pl":Lcom/android/server/cpuperf/PerformanceController$PerformanceLock;
    .restart local v54    # "schedMostlyIdleNRRun":I
    :cond_27
    move/from16 v14, v54

    .line 509
    .end local v54    # "schedMostlyIdleNRRun":I
    .restart local v14    # "schedMostlyIdleNRRun":I
    :cond_28
    move v15, v14

    .line 509
    .end local v14    # "schedMostlyIdleNRRun":I
    .restart local v15    # "schedMostlyIdleNRRun":I
    :goto_16
    const/4 v4, 0x0

    .line 509
    .local v4, "i":I
    :goto_17
    :try_start_24
    iget-object v10, v0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->schedUpMigrate:[I

    array-length v10, v10
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_1b

    if-ge v4, v10, :cond_2a

    .line 510
    :try_start_25
    iget-object v10, v0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->schedUpMigrate:[I

    aget v10, v10, v4

    const/4 v14, -0x1

    if-eq v10, v14, :cond_29

    iget-object v10, v0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->schedUpMigrate:[I

    aget v10, v10, v4

    aget v14, v53, v4

    if-ge v10, v14, :cond_29

    .line 511
    iget-object v10, v0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->schedUpMigrate:[I

    aget v10, v10, v4

    aput v10, v53, v4

    .line 509
    :cond_29
    add-int/lit8 v4, v4, 0x1

    goto :goto_17

    .line 629
    .end local v0    # "parameters":Lcom/android/server/cpuperf/QComBoostController$LockParameters;
    .end local v2    # "pl":Lcom/android/server/cpuperf/PerformanceController$PerformanceLock;
    .end local v4    # "i":I
    :catchall_9
    move-exception v0

    move-object/from16 v65, v5

    move-object/from16 v66, v6

    move v14, v9

    .line 629
    .end local v3    # "schedSmallTask":I
    .end local v5    # "minNumCores":[I
    .end local v6    # "maxNumCores":[I
    .end local v36    # "schedutilHispeedFreq":[I
    .end local v37    # "schedutilHispeedLoad":[I
    .end local v38    # "aboveHispeedDelay":[I
    .end local v39    # "hispeedFreq":[I
    .end local v40    # "goHispeedLoad":[I
    .end local v41    # "targetLoads":[I
    .end local v44    # "disablePowerCollapse":Z
    .end local v45    # "thermalLevel":I
    .end local v46    # "fanLevel":I
    .end local v47    # "schedUtilCpuFreqCtrl":I
    .end local v48    # "inputBoostFreq":I
    .end local v49    # "inputBoostMs":I
    .end local v52    # "schedDownMigrate":[I
    .end local v55    # "traceTypes":Ljava/lang/String;
    .restart local v1    # "targetLoads":[I
    .local v9, "cpuBandwidthMinFrequency":I
    .restart local v10    # "traceTypes":Ljava/lang/String;
    .local v13, "schedSmallTask":I
    .local v14, "schedMostlyIdleLoad":I
    .restart local v17    # "disablePowerCollapse":Z
    .restart local v18    # "thermalLevel":I
    .restart local v22    # "fanLevel":I
    .restart local v24    # "schedUtilCpuFreqCtrl":I
    .restart local v26    # "inputBoostFreq":I
    .restart local v31    # "inputBoostMs":I
    .restart local v65    # "minNumCores":[I
    .restart local v66    # "maxNumCores":[I
    .restart local v74    # "schedDownMigrate":[I
    .restart local v76    # "goHispeedLoad":[I
    .restart local v77    # "hispeedFreq":[I
    .restart local v78    # "aboveHispeedDelay":[I
    .restart local v79    # "schedutilHispeedLoad":[I
    .restart local v81    # "schedutilHispeedFreq":[I
    :goto_18
    move v9, v13

    move-object/from16 v81, v36

    move-object/from16 v79, v37

    move-object/from16 v78, v38

    move-object/from16 v77, v39

    move-object/from16 v76, v40

    move-object/from16 v1, v41

    move/from16 v17, v44

    move/from16 v18, v45

    move/from16 v22, v46

    :goto_19
    move/from16 v24, v47

    :goto_1a
    move/from16 v26, v48

    :goto_1b
    move/from16 v31, v49

    move-object/from16 v74, v52

    goto/16 :goto_c

    .line 513
    .end local v1    # "targetLoads":[I
    .end local v10    # "traceTypes":Ljava/lang/String;
    .end local v14    # "schedMostlyIdleLoad":I
    .end local v17    # "disablePowerCollapse":Z
    .end local v18    # "thermalLevel":I
    .end local v22    # "fanLevel":I
    .end local v24    # "schedUtilCpuFreqCtrl":I
    .end local v26    # "inputBoostFreq":I
    .end local v31    # "inputBoostMs":I
    .end local v65    # "minNumCores":[I
    .end local v66    # "maxNumCores":[I
    .end local v74    # "schedDownMigrate":[I
    .end local v76    # "goHispeedLoad":[I
    .end local v77    # "hispeedFreq":[I
    .end local v78    # "aboveHispeedDelay":[I
    .end local v79    # "schedutilHispeedLoad":[I
    .end local v81    # "schedutilHispeedFreq":[I
    .restart local v0    # "parameters":Lcom/android/server/cpuperf/QComBoostController$LockParameters;
    .restart local v2    # "pl":Lcom/android/server/cpuperf/PerformanceController$PerformanceLock;
    .restart local v3    # "schedSmallTask":I
    .restart local v5    # "minNumCores":[I
    .restart local v6    # "maxNumCores":[I
    .local v9, "schedMostlyIdleLoad":I
    .local v13, "cpuBandwidthMinFrequency":I
    .restart local v36    # "schedutilHispeedFreq":[I
    .restart local v37    # "schedutilHispeedLoad":[I
    .restart local v38    # "aboveHispeedDelay":[I
    .restart local v39    # "hispeedFreq":[I
    .restart local v40    # "goHispeedLoad":[I
    .restart local v41    # "targetLoads":[I
    .restart local v44    # "disablePowerCollapse":Z
    .restart local v45    # "thermalLevel":I
    .restart local v46    # "fanLevel":I
    .restart local v47    # "schedUtilCpuFreqCtrl":I
    .restart local v48    # "inputBoostFreq":I
    .restart local v49    # "inputBoostMs":I
    .restart local v52    # "schedDownMigrate":[I
    .restart local v55    # "traceTypes":Ljava/lang/String;
    :cond_2a
    if-eqz v32, :cond_2c

    .line 514
    const/4 v4, 0x0

    .line 514
    .restart local v4    # "i":I
    :goto_1c
    iget-object v10, v0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->hiPerfSchedUpMigrate:[I

    array-length v10, v10

    if-ge v4, v10, :cond_2c

    .line 515
    iget-object v10, v0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->hiPerfSchedUpMigrate:[I

    aget v10, v10, v4

    const/4 v14, -0x1

    if-eq v10, v14, :cond_2b

    iget-object v10, v0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->hiPerfSchedUpMigrate:[I

    aget v10, v10, v4

    aget v14, v53, v4

    if-ge v10, v14, :cond_2b

    .line 516
    iget-object v10, v0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->hiPerfSchedUpMigrate:[I

    aget v10, v10, v4

    aput v10, v53, v4
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_9

    .line 514
    :cond_2b
    add-int/lit8 v4, v4, 0x1

    goto :goto_1c

    .line 520
    .end local v4    # "i":I
    :cond_2c
    const/4 v4, 0x0

    .line 520
    .restart local v4    # "i":I
    :goto_1d
    :try_start_26
    iget-object v10, v0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->schedDownMigrate:[I

    array-length v10, v10
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_1b

    if-ge v4, v10, :cond_2e

    .line 521
    :try_start_27
    iget-object v10, v0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->schedDownMigrate:[I

    aget v10, v10, v4

    const/4 v14, -0x1

    if-eq v10, v14, :cond_2d

    iget-object v10, v0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->schedDownMigrate:[I

    aget v10, v10, v4

    aget v14, v52, v4

    if-ge v10, v14, :cond_2d

    .line 522
    iget-object v10, v0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->schedDownMigrate:[I

    aget v10, v10, v4

    aput v10, v52, v4

    .line 520
    :cond_2d
    add-int/lit8 v4, v4, 0x1

    goto :goto_1d

    .line 524
    .end local v4    # "i":I
    :cond_2e
    if-eqz v32, :cond_30

    .line 525
    const/4 v4, 0x0

    .line 525
    .restart local v4    # "i":I
    :goto_1e
    iget-object v10, v0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->hiPerfSchedDownMigrate:[I

    array-length v10, v10

    if-ge v4, v10, :cond_30

    .line 526
    iget-object v10, v0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->hiPerfSchedDownMigrate:[I

    aget v10, v10, v4

    const/4 v14, -0x1

    if-eq v10, v14, :cond_2f

    iget-object v10, v0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->hiPerfSchedDownMigrate:[I

    aget v10, v10, v4

    aget v14, v52, v4

    if-ge v10, v14, :cond_2f

    .line 527
    iget-object v10, v0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->hiPerfSchedDownMigrate:[I

    aget v10, v10, v4

    aput v10, v52, v4
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_9

    .line 525
    :cond_2f
    add-int/lit8 v4, v4, 0x1

    goto :goto_1e

    .line 531
    .end local v4    # "i":I
    :cond_30
    :try_start_28
    iget v4, v0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->gpuMinPowerLevel:I
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_1b

    const/4 v10, -0x1

    if-eq v4, v10, :cond_31

    :try_start_29
    iget v4, v0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->gpuMinPowerLevel:I
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_a

    move/from16 v10, v43

    if-ge v4, v10, :cond_32

    .line 532
    .end local v43    # "gpuMinPowerLevel":I
    .local v10, "gpuMinPowerLevel":I
    :try_start_2a
    iget v4, v0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->gpuMinPowerLevel:I

    .line 533
    .end local v10    # "gpuMinPowerLevel":I
    .local v4, "gpuMinPowerLevel":I
    move v10, v4

    goto :goto_1f

    .line 629
    .end local v0    # "parameters":Lcom/android/server/cpuperf/QComBoostController$LockParameters;
    .end local v2    # "pl":Lcom/android/server/cpuperf/PerformanceController$PerformanceLock;
    .end local v4    # "gpuMinPowerLevel":I
    .restart local v43    # "gpuMinPowerLevel":I
    :catchall_a
    move-exception v0

    move/from16 v10, v43

    move-object/from16 v65, v5

    move-object/from16 v66, v6

    move v14, v9

    move v9, v13

    move-object/from16 v81, v36

    move-object/from16 v79, v37

    move-object/from16 v78, v38

    move-object/from16 v77, v39

    move-object/from16 v76, v40

    move-object/from16 v1, v41

    move/from16 v17, v44

    move/from16 v18, v45

    move/from16 v22, v46

    move/from16 v24, v47

    move/from16 v26, v48

    move/from16 v31, v49

    move-object/from16 v74, v52

    move-object/from16 v10, v55

    move v13, v3

    .end local v43    # "gpuMinPowerLevel":I
    .restart local v10    # "gpuMinPowerLevel":I
    goto/16 :goto_54

    .line 533
    .end local v10    # "gpuMinPowerLevel":I
    .restart local v0    # "parameters":Lcom/android/server/cpuperf/QComBoostController$LockParameters;
    .restart local v2    # "pl":Lcom/android/server/cpuperf/PerformanceController$PerformanceLock;
    .restart local v43    # "gpuMinPowerLevel":I
    :cond_31
    move/from16 v10, v43

    .line 533
    .end local v43    # "gpuMinPowerLevel":I
    .restart local v10    # "gpuMinPowerLevel":I
    :cond_32
    :goto_1f
    if-eqz v32, :cond_33

    .line 534
    iget v4, v0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->hiPerfGPUMinPowerLevel:I

    const/4 v14, -0x1

    if-eq v4, v14, :cond_33

    iget v4, v0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->hiPerfGPUMinPowerLevel:I

    if-ge v4, v10, :cond_33

    .line 535
    iget v4, v0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->hiPerfGPUMinPowerLevel:I
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_b

    .line 538
    .end local v10    # "gpuMinPowerLevel":I
    .restart local v4    # "gpuMinPowerLevel":I
    move/from16 v43, v4

    goto :goto_20

    .line 629
    .end local v0    # "parameters":Lcom/android/server/cpuperf/QComBoostController$LockParameters;
    .end local v2    # "pl":Lcom/android/server/cpuperf/PerformanceController$PerformanceLock;
    .end local v4    # "gpuMinPowerLevel":I
    .restart local v10    # "gpuMinPowerLevel":I
    :catchall_b
    move-exception v0

    move-object/from16 v65, v5

    move-object/from16 v66, v6

    move v14, v9

    move/from16 v43, v10

    goto/16 :goto_18

    .line 538
    .restart local v0    # "parameters":Lcom/android/server/cpuperf/QComBoostController$LockParameters;
    .restart local v2    # "pl":Lcom/android/server/cpuperf/PerformanceController$PerformanceLock;
    :cond_33
    move/from16 v43, v10

    .line 538
    .end local v10    # "gpuMinPowerLevel":I
    .restart local v43    # "gpuMinPowerLevel":I
    :goto_20
    :try_start_2b
    iget v4, v0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->gpuMaxPowerLevel:I
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_1a

    const/4 v10, -0x1

    if-eq v4, v10, :cond_34

    :try_start_2c
    iget v4, v0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->gpuMaxPowerLevel:I
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_c

    move/from16 v14, v42

    if-ge v4, v14, :cond_35

    .line 539
    .end local v42    # "gpuMaxPowerLevel":I
    .local v14, "gpuMaxPowerLevel":I
    :try_start_2d
    iget v4, v0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->gpuMaxPowerLevel:I

    .line 540
    .end local v14    # "gpuMaxPowerLevel":I
    .local v4, "gpuMaxPowerLevel":I
    move v14, v4

    goto :goto_21

    .line 629
    .end local v0    # "parameters":Lcom/android/server/cpuperf/QComBoostController$LockParameters;
    .end local v2    # "pl":Lcom/android/server/cpuperf/PerformanceController$PerformanceLock;
    .end local v4    # "gpuMaxPowerLevel":I
    .restart local v42    # "gpuMaxPowerLevel":I
    :catchall_c
    move-exception v0

    move/from16 v14, v42

    move-object/from16 v65, v5

    move-object/from16 v66, v6

    move-object/from16 v81, v36

    move-object/from16 v79, v37

    move-object/from16 v78, v38

    move-object/from16 v77, v39

    move-object/from16 v76, v40

    move-object/from16 v1, v41

    move/from16 v17, v44

    move/from16 v18, v45

    move/from16 v22, v46

    move/from16 v24, v47

    move/from16 v26, v48

    move/from16 v31, v49

    move-object/from16 v74, v52

    move-object/from16 v10, v55

    move v14, v9

    move v9, v13

    move v13, v3

    .end local v42    # "gpuMaxPowerLevel":I
    .restart local v14    # "gpuMaxPowerLevel":I
    goto/16 :goto_54

    .line 540
    .end local v14    # "gpuMaxPowerLevel":I
    .restart local v0    # "parameters":Lcom/android/server/cpuperf/QComBoostController$LockParameters;
    .restart local v2    # "pl":Lcom/android/server/cpuperf/PerformanceController$PerformanceLock;
    .restart local v42    # "gpuMaxPowerLevel":I
    :cond_34
    move/from16 v14, v42

    .line 540
    .end local v42    # "gpuMaxPowerLevel":I
    .restart local v14    # "gpuMaxPowerLevel":I
    :cond_35
    :goto_21
    if-eqz v32, :cond_36

    .line 541
    iget v4, v0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->hiPerfGPUMaxPowerLevel:I

    const/4 v10, -0x1

    if-eq v4, v10, :cond_36

    iget v4, v0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->hiPerfGPUMaxPowerLevel:I

    if-ge v4, v14, :cond_36

    .line 542
    iget v4, v0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->hiPerfGPUMaxPowerLevel:I
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_d

    .line 544
    .end local v14    # "gpuMaxPowerLevel":I
    .restart local v4    # "gpuMaxPowerLevel":I
    move/from16 v42, v4

    goto :goto_22

    .line 629
    .end local v0    # "parameters":Lcom/android/server/cpuperf/QComBoostController$LockParameters;
    .end local v2    # "pl":Lcom/android/server/cpuperf/PerformanceController$PerformanceLock;
    .end local v4    # "gpuMaxPowerLevel":I
    .restart local v14    # "gpuMaxPowerLevel":I
    :catchall_d
    move-exception v0

    move-object/from16 v65, v5

    move-object/from16 v66, v6

    move/from16 v42, v14

    goto/16 :goto_13

    .line 544
    .restart local v0    # "parameters":Lcom/android/server/cpuperf/QComBoostController$LockParameters;
    .restart local v2    # "pl":Lcom/android/server/cpuperf/PerformanceController$PerformanceLock;
    :cond_36
    move/from16 v42, v14

    .line 544
    .end local v14    # "gpuMaxPowerLevel":I
    .restart local v42    # "gpuMaxPowerLevel":I
    :goto_22
    move/from16 v4, v47

    const/4 v10, -0x1

    if-ne v4, v10, :cond_38

    .line 545
    .end local v47    # "schedUtilCpuFreqCtrl":I
    .local v4, "schedUtilCpuFreqCtrl":I
    :try_start_2e
    iget v10, v0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->schedUtilCpuFreqCtrl:I
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_e

    move v4, v10

    .line 550
    .end local v4    # "schedUtilCpuFreqCtrl":I
    .restart local v47    # "schedUtilCpuFreqCtrl":I
    :cond_37
    :goto_23
    move/from16 v47, v4

    goto :goto_24

    .line 629
    .end local v0    # "parameters":Lcom/android/server/cpuperf/QComBoostController$LockParameters;
    .end local v2    # "pl":Lcom/android/server/cpuperf/PerformanceController$PerformanceLock;
    .end local v47    # "schedUtilCpuFreqCtrl":I
    .restart local v4    # "schedUtilCpuFreqCtrl":I
    :catchall_e
    move-exception v0

    move/from16 v24, v4

    move-object/from16 v65, v5

    move-object/from16 v66, v6

    move v14, v9

    move v9, v13

    move-object/from16 v81, v36

    move-object/from16 v79, v37

    move-object/from16 v78, v38

    move-object/from16 v77, v39

    move-object/from16 v76, v40

    move-object/from16 v1, v41

    move/from16 v17, v44

    move/from16 v18, v45

    move/from16 v22, v46

    goto/16 :goto_1a

    .line 546
    .restart local v0    # "parameters":Lcom/android/server/cpuperf/QComBoostController$LockParameters;
    .restart local v2    # "pl":Lcom/android/server/cpuperf/PerformanceController$PerformanceLock;
    :cond_38
    :try_start_2f
    iget v10, v0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->schedUtilCpuFreqCtrl:I
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_19

    const/4 v14, -0x1

    if-eq v10, v14, :cond_37

    :try_start_30
    iget v10, v0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->schedUtilCpuFreqCtrl:I

    if-ge v10, v4, :cond_37

    .line 547
    iget v10, v0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->schedUtilCpuFreqCtrl:I
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_e

    move v4, v10

    goto :goto_23

    .line 550
    .end local v4    # "schedUtilCpuFreqCtrl":I
    .restart local v47    # "schedUtilCpuFreqCtrl":I
    :goto_24
    :try_start_31
    iget-boolean v4, v0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->disablePowerCollapse:Z
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_18

    move/from16 v10, v44

    or-int v44, v10, v4

    .line 552
    :try_start_32
    iget v4, v0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->thermalLevel:I
    :try_end_32
    .catchall {:try_start_32 .. :try_end_32} :catchall_17

    const/4 v10, -0x1

    if-le v4, v10, :cond_3a

    .line 553
    move/from16 v14, v45

    if-ltz v14, :cond_39

    .line 553
    .end local v45    # "thermalLevel":I
    .local v14, "thermalLevel":I
    :try_start_33
    iget v4, v0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->thermalLevel:I

    if-ge v4, v14, :cond_3b

    goto :goto_25

    .line 629
    .end local v0    # "parameters":Lcom/android/server/cpuperf/QComBoostController$LockParameters;
    .end local v2    # "pl":Lcom/android/server/cpuperf/PerformanceController$PerformanceLock;
    :catchall_f
    move-exception v0

    move-object/from16 v65, v5

    move-object/from16 v66, v6

    move/from16 v18, v14

    move-object/from16 v81, v36

    move-object/from16 v79, v37

    move-object/from16 v78, v38

    move-object/from16 v77, v39

    move-object/from16 v76, v40

    move-object/from16 v1, v41

    move/from16 v17, v44

    goto/16 :goto_14

    .line 554
    .restart local v0    # "parameters":Lcom/android/server/cpuperf/QComBoostController$LockParameters;
    .restart local v2    # "pl":Lcom/android/server/cpuperf/PerformanceController$PerformanceLock;
    :cond_39
    :goto_25
    iget v4, v0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->thermalLevel:I
    :try_end_33
    .catchall {:try_start_33 .. :try_end_33} :catchall_f

    .line 558
    .end local v14    # "thermalLevel":I
    .local v4, "thermalLevel":I
    move/from16 v45, v4

    goto :goto_26

    .line 558
    .end local v4    # "thermalLevel":I
    .restart local v45    # "thermalLevel":I
    :cond_3a
    move/from16 v14, v45

    .line 558
    .end local v45    # "thermalLevel":I
    .restart local v14    # "thermalLevel":I
    :cond_3b
    move/from16 v45, v14

    .line 558
    .end local v14    # "thermalLevel":I
    .restart local v45    # "thermalLevel":I
    :goto_26
    :try_start_34
    iget-boolean v4, v0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->disableStorageScaling:Z

    or-int v20, v20, v4

    .line 560
    iget v4, v0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->fanLevel:I
    :try_end_34
    .catchall {:try_start_34 .. :try_end_34} :catchall_16

    const/4 v10, -0x1

    if-ge v10, v4, :cond_3d

    .line 561
    move/from16 v4, v46

    if-ltz v4, :cond_3c

    .line 561
    .end local v46    # "fanLevel":I
    .local v4, "fanLevel":I
    :try_start_35
    iget v10, v0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->fanLevel:I

    if-ge v4, v10, :cond_3e

    goto :goto_27

    .line 629
    .end local v0    # "parameters":Lcom/android/server/cpuperf/QComBoostController$LockParameters;
    .end local v2    # "pl":Lcom/android/server/cpuperf/PerformanceController$PerformanceLock;
    :catchall_10
    move-exception v0

    move/from16 v22, v4

    move-object/from16 v65, v5

    move-object/from16 v66, v6

    move v14, v9

    move v9, v13

    move-object/from16 v81, v36

    move-object/from16 v79, v37

    move-object/from16 v78, v38

    move-object/from16 v77, v39

    move-object/from16 v76, v40

    move-object/from16 v1, v41

    move/from16 v17, v44

    move/from16 v18, v45

    goto/16 :goto_19

    .line 562
    .restart local v0    # "parameters":Lcom/android/server/cpuperf/QComBoostController$LockParameters;
    .restart local v2    # "pl":Lcom/android/server/cpuperf/PerformanceController$PerformanceLock;
    :cond_3c
    :goto_27
    iget v10, v0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->fanLevel:I
    :try_end_35
    .catchall {:try_start_35 .. :try_end_35} :catchall_10

    move v4, v10

    goto :goto_28

    .line 566
    .end local v4    # "fanLevel":I
    .restart local v46    # "fanLevel":I
    :cond_3d
    move/from16 v4, v46

    :cond_3e
    :goto_28
    move/from16 v46, v4

    const/4 v4, 0x0

    .line 566
    .local v4, "i":I
    :goto_29
    :try_start_36
    iget-object v10, v0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->targetLoads:[I

    array-length v10, v10
    :try_end_36
    .catchall {:try_start_36 .. :try_end_36} :catchall_15

    if-ge v4, v10, :cond_41

    .line 568
    :try_start_37
    aget v10, v41, v4

    const/4 v14, -0x1

    if-ne v10, v14, :cond_3f

    .line 569
    iget-object v10, v0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->targetLoads:[I

    aget v10, v10, v4

    aput v10, v41, v4

    goto :goto_2a

    .line 571
    :cond_3f
    iget-object v10, v0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->targetLoads:[I

    aget v10, v10, v4

    const/4 v14, -0x1

    if-eq v10, v14, :cond_40

    iget-object v10, v0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->targetLoads:[I

    aget v10, v10, v4

    aget v14, v41, v4

    if-ge v10, v14, :cond_40

    .line 573
    iget-object v10, v0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->targetLoads:[I

    aget v10, v10, v4

    aput v10, v41, v4
    :try_end_37
    .catchall {:try_start_37 .. :try_end_37} :catchall_9

    .line 566
    :cond_40
    :goto_2a
    add-int/lit8 v4, v4, 0x1

    goto :goto_29

    .line 576
    .end local v4    # "i":I
    :cond_41
    const/4 v4, 0x0

    .line 576
    .restart local v4    # "i":I
    :goto_2b
    :try_start_38
    iget-object v10, v0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->goHispeedLoad:[I

    array-length v10, v10
    :try_end_38
    .catchall {:try_start_38 .. :try_end_38} :catchall_15

    if-ge v4, v10, :cond_44

    .line 577
    :try_start_39
    aget v10, v40, v4

    const/4 v14, -0x1

    if-ne v10, v14, :cond_42

    .line 578
    iget-object v10, v0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->goHispeedLoad:[I

    aget v10, v10, v4

    aput v10, v40, v4

    goto :goto_2c

    .line 580
    :cond_42
    iget-object v10, v0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->goHispeedLoad:[I

    aget v10, v10, v4

    const/4 v14, -0x1

    if-eq v10, v14, :cond_43

    iget-object v10, v0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->goHispeedLoad:[I

    aget v10, v10, v4

    aget v14, v40, v4

    if-ge v10, v14, :cond_43

    .line 582
    iget-object v10, v0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->goHispeedLoad:[I

    aget v10, v10, v4

    aput v10, v40, v4
    :try_end_39
    .catchall {:try_start_39 .. :try_end_39} :catchall_9

    .line 576
    :cond_43
    :goto_2c
    add-int/lit8 v4, v4, 0x1

    goto :goto_2b

    .line 585
    .end local v4    # "i":I
    :cond_44
    const/4 v4, 0x0

    .line 585
    .restart local v4    # "i":I
    :goto_2d
    :try_start_3a
    iget-object v10, v0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->hispeedFreq:[I

    array-length v10, v10
    :try_end_3a
    .catchall {:try_start_3a .. :try_end_3a} :catchall_15

    if-ge v4, v10, :cond_46

    .line 586
    :try_start_3b
    iget-object v10, v0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->hispeedFreq:[I

    aget v10, v10, v4

    aget v14, v39, v4

    if-le v10, v14, :cond_45

    .line 587
    iget-object v10, v0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->hispeedFreq:[I

    aget v10, v10, v4

    aput v10, v39, v4
    :try_end_3b
    .catchall {:try_start_3b .. :try_end_3b} :catchall_9

    .line 585
    :cond_45
    add-int/lit8 v4, v4, 0x1

    goto :goto_2d

    .line 590
    .end local v4    # "i":I
    :cond_46
    const/4 v4, 0x0

    .line 590
    .restart local v4    # "i":I
    :goto_2e
    :try_start_3c
    iget-object v10, v0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->aboveHispeedDelay:[I

    array-length v10, v10
    :try_end_3c
    .catchall {:try_start_3c .. :try_end_3c} :catchall_15

    if-ge v4, v10, :cond_48

    .line 591
    :try_start_3d
    iget-object v10, v0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->aboveHispeedDelay:[I

    aget v10, v10, v4

    aget v14, v38, v4

    if-le v10, v14, :cond_47

    .line 592
    iget-object v10, v0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->aboveHispeedDelay:[I

    aget v10, v10, v4

    aput v10, v38, v4
    :try_end_3d
    .catchall {:try_start_3d .. :try_end_3d} :catchall_9

    .line 590
    :cond_47
    add-int/lit8 v4, v4, 0x1

    goto :goto_2e

    .line 594
    .end local v4    # "i":I
    :cond_48
    const/4 v4, 0x0

    .line 594
    .restart local v4    # "i":I
    :goto_2f
    :try_start_3e
    iget-object v10, v0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->schedutilHispeedLoad:[I

    array-length v10, v10
    :try_end_3e
    .catchall {:try_start_3e .. :try_end_3e} :catchall_15

    if-ge v4, v10, :cond_4b

    .line 595
    :try_start_3f
    aget v10, v37, v4

    const/4 v14, -0x1

    if-ne v10, v14, :cond_49

    .line 596
    iget-object v10, v0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->schedutilHispeedLoad:[I

    aget v10, v10, v4

    aput v10, v37, v4

    goto :goto_30

    .line 598
    :cond_49
    iget-object v10, v0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->schedutilHispeedLoad:[I

    aget v10, v10, v4

    const/4 v14, -0x1

    if-eq v10, v14, :cond_4a

    iget-object v10, v0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->schedutilHispeedLoad:[I

    aget v10, v10, v4

    aget v14, v37, v4

    if-ge v10, v14, :cond_4a

    .line 600
    iget-object v10, v0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->schedutilHispeedLoad:[I

    aget v10, v10, v4

    aput v10, v37, v4

    .line 594
    :cond_4a
    :goto_30
    add-int/lit8 v4, v4, 0x1

    goto :goto_2f

    .line 602
    .end local v4    # "i":I
    :cond_4b
    if-eqz v32, :cond_4e

    .line 603
    const/4 v4, 0x0

    .line 603
    .restart local v4    # "i":I
    :goto_31
    iget-object v10, v0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->hiPerfSchedUtilHispeedLoad:[I

    array-length v10, v10

    if-ge v4, v10, :cond_4e

    .line 604
    aget v10, v37, v4

    const/4 v14, -0x1

    if-ne v10, v14, :cond_4c

    .line 605
    iget-object v10, v0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->hiPerfSchedUtilHispeedLoad:[I

    aget v10, v10, v4

    aput v10, v37, v4

    goto :goto_32

    .line 607
    :cond_4c
    iget-object v10, v0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->hiPerfSchedUtilHispeedLoad:[I

    aget v10, v10, v4

    const/4 v14, -0x1

    if-eq v10, v14, :cond_4d

    iget-object v10, v0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->hiPerfSchedUtilHispeedLoad:[I

    aget v10, v10, v4

    aget v14, v37, v4

    if-ge v10, v14, :cond_4d

    .line 609
    iget-object v10, v0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->hiPerfSchedUtilHispeedLoad:[I

    aget v10, v10, v4

    aput v10, v37, v4
    :try_end_3f
    .catchall {:try_start_3f .. :try_end_3f} :catchall_9

    .line 603
    :cond_4d
    :goto_32
    add-int/lit8 v4, v4, 0x1

    goto :goto_31

    .line 612
    .end local v4    # "i":I
    :cond_4e
    const/4 v4, 0x0

    .line 612
    .restart local v4    # "i":I
    :goto_33
    :try_start_40
    iget-object v10, v0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->schedutilHispeedFreq:[I

    array-length v10, v10
    :try_end_40
    .catchall {:try_start_40 .. :try_end_40} :catchall_15

    if-ge v4, v10, :cond_50

    .line 613
    :try_start_41
    iget-object v10, v0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->schedutilHispeedFreq:[I

    aget v10, v10, v4

    aget v14, v36, v4

    if-le v10, v14, :cond_4f

    .line 614
    iget-object v10, v0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->schedutilHispeedFreq:[I

    aget v10, v10, v4

    aput v10, v36, v4

    .line 612
    :cond_4f
    add-int/lit8 v4, v4, 0x1

    goto :goto_33

    .line 616
    .end local v4    # "i":I
    :cond_50
    if-eqz v32, :cond_52

    .line 617
    const/4 v4, 0x0

    .line 617
    .restart local v4    # "i":I
    :goto_34
    iget-object v10, v0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->hiPerfSchedUtilHispeedFreq:[I

    array-length v10, v10

    if-ge v4, v10, :cond_52

    .line 618
    iget-object v10, v0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->hiPerfSchedUtilHispeedFreq:[I

    aget v10, v10, v4

    aget v14, v36, v4

    if-le v10, v14, :cond_51

    .line 619
    iget-object v10, v0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->hiPerfSchedUtilHispeedFreq:[I

    aget v10, v10, v4

    aput v10, v36, v4
    :try_end_41
    .catchall {:try_start_41 .. :try_end_41} :catchall_9

    .line 617
    :cond_51
    add-int/lit8 v4, v4, 0x1

    goto :goto_34

    .line 622
    .end local v4    # "i":I
    :cond_52
    :try_start_42
    iget v4, v0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->inputBoostFreq:I
    :try_end_42
    .catchall {:try_start_42 .. :try_end_42} :catchall_15

    if-ltz v4, :cond_53

    :try_start_43
    iget v4, v0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->inputBoostFreq:I
    :try_end_43
    .catchall {:try_start_43 .. :try_end_43} :catchall_12

    move/from16 v10, v48

    if-le v4, v10, :cond_54

    .line 623
    .end local v48    # "inputBoostFreq":I
    .local v10, "inputBoostFreq":I
    :try_start_44
    iget v4, v0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->inputBoostFreq:I
    :try_end_44
    .catchall {:try_start_44 .. :try_end_44} :catchall_11

    .line 625
    .end local v10    # "inputBoostFreq":I
    .local v4, "inputBoostFreq":I
    move/from16 v48, v4

    goto :goto_35

    .line 629
    .end local v0    # "parameters":Lcom/android/server/cpuperf/QComBoostController$LockParameters;
    .end local v2    # "pl":Lcom/android/server/cpuperf/PerformanceController$PerformanceLock;
    .end local v4    # "inputBoostFreq":I
    .restart local v10    # "inputBoostFreq":I
    :catchall_11
    move-exception v0

    move-object/from16 v65, v5

    move-object/from16 v66, v6

    move v14, v9

    move/from16 v26, v10

    move v9, v13

    move-object/from16 v81, v36

    move-object/from16 v79, v37

    move-object/from16 v78, v38

    move-object/from16 v77, v39

    move-object/from16 v76, v40

    move-object/from16 v1, v41

    move/from16 v17, v44

    move/from16 v18, v45

    move/from16 v22, v46

    move/from16 v24, v47

    goto/16 :goto_1b

    .end local v10    # "inputBoostFreq":I
    .restart local v48    # "inputBoostFreq":I
    :catchall_12
    move-exception v0

    move/from16 v10, v48

    move-object/from16 v65, v5

    move-object/from16 v66, v6

    move v14, v9

    move/from16 v26, v10

    move v9, v13

    move-object/from16 v81, v36

    move-object/from16 v79, v37

    move-object/from16 v78, v38

    move-object/from16 v77, v39

    move-object/from16 v76, v40

    move-object/from16 v1, v41

    move/from16 v17, v44

    move/from16 v18, v45

    move/from16 v22, v46

    move/from16 v24, v47

    move/from16 v31, v49

    move-object/from16 v74, v52

    move-object/from16 v10, v55

    move v13, v3

    .end local v48    # "inputBoostFreq":I
    .restart local v10    # "inputBoostFreq":I
    goto/16 :goto_54

    .line 625
    .end local v10    # "inputBoostFreq":I
    .restart local v0    # "parameters":Lcom/android/server/cpuperf/QComBoostController$LockParameters;
    .restart local v2    # "pl":Lcom/android/server/cpuperf/PerformanceController$PerformanceLock;
    .restart local v48    # "inputBoostFreq":I
    :cond_53
    move/from16 v10, v48

    .line 625
    .end local v48    # "inputBoostFreq":I
    .restart local v10    # "inputBoostFreq":I
    :cond_54
    move/from16 v48, v10

    .line 625
    .end local v10    # "inputBoostFreq":I
    .restart local v48    # "inputBoostFreq":I
    :goto_35
    :try_start_45
    iget v4, v0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->inputBoostMs:I

    if-ltz v4, :cond_55

    iget v4, v0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->inputBoostMs:I
    :try_end_45
    .catchall {:try_start_45 .. :try_end_45} :catchall_14

    move/from16 v14, v49

    if-le v4, v14, :cond_56

    .line 626
    .end local v49    # "inputBoostMs":I
    .local v14, "inputBoostMs":I
    :try_start_46
    iget v4, v0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->inputBoostMs:I
    :try_end_46
    .catchall {:try_start_46 .. :try_end_46} :catchall_13

    move/from16 v49, v4

    .line 626
    .end local v0    # "parameters":Lcom/android/server/cpuperf/QComBoostController$LockParameters;
    .end local v2    # "pl":Lcom/android/server/cpuperf/PerformanceController$PerformanceLock;
    .end local v14    # "inputBoostMs":I
    .restart local v49    # "inputBoostMs":I
    goto :goto_36

    .line 629
    .end local v49    # "inputBoostMs":I
    .restart local v14    # "inputBoostMs":I
    :catchall_13
    move-exception v0

    move-object/from16 v65, v5

    move-object/from16 v66, v6

    move/from16 v31, v14

    move-object/from16 v81, v36

    move-object/from16 v79, v37

    move-object/from16 v78, v38

    move-object/from16 v77, v39

    move-object/from16 v76, v40

    move-object/from16 v1, v41

    move/from16 v17, v44

    move/from16 v18, v45

    move/from16 v22, v46

    move/from16 v24, v47

    move/from16 v26, v48

    goto/16 :goto_15

    .line 628
    .end local v14    # "inputBoostMs":I
    .restart local v49    # "inputBoostMs":I
    :cond_55
    move/from16 v14, v49

    .line 628
    .end local v49    # "inputBoostMs":I
    .restart local v14    # "inputBoostMs":I
    :cond_56
    move/from16 v49, v14

    .line 409
    .end local v14    # "inputBoostMs":I
    .restart local v49    # "inputBoostMs":I
    :goto_36
    move-object/from16 v0, v51

    move-object/from16 v4, v52

    move-object/from16 v2, v53

    move-object/from16 v10, v55

    move/from16 v14, v56

    goto/16 :goto_4

    .line 629
    :catchall_14
    move-exception v0

    move/from16 v14, v49

    move-object/from16 v65, v5

    move-object/from16 v66, v6

    move/from16 v31, v14

    move-object/from16 v81, v36

    move-object/from16 v79, v37

    move-object/from16 v78, v38

    move-object/from16 v77, v39

    move-object/from16 v76, v40

    move-object/from16 v1, v41

    move/from16 v17, v44

    move/from16 v18, v45

    move/from16 v22, v46

    move/from16 v24, v47

    move/from16 v26, v48

    move-object/from16 v74, v52

    move-object/from16 v10, v55

    move v14, v9

    move v9, v13

    move v13, v3

    .end local v49    # "inputBoostMs":I
    .restart local v14    # "inputBoostMs":I
    goto/16 :goto_54

    .line 629
    .end local v14    # "inputBoostMs":I
    .restart local v49    # "inputBoostMs":I
    :catchall_15
    move-exception v0

    move/from16 v10, v48

    move/from16 v14, v49

    move-object/from16 v65, v5

    move-object/from16 v66, v6

    move/from16 v26, v10

    move/from16 v31, v14

    move-object/from16 v81, v36

    move-object/from16 v79, v37

    move-object/from16 v78, v38

    move-object/from16 v77, v39

    move-object/from16 v76, v40

    move-object/from16 v1, v41

    move/from16 v17, v44

    move/from16 v18, v45

    move/from16 v22, v46

    move/from16 v24, v47

    move-object/from16 v74, v52

    move-object/from16 v10, v55

    move v14, v9

    move v9, v13

    move v13, v3

    .end local v48    # "inputBoostFreq":I
    .end local v49    # "inputBoostMs":I
    .restart local v10    # "inputBoostFreq":I
    .restart local v14    # "inputBoostMs":I
    goto/16 :goto_54

    .line 629
    .end local v10    # "inputBoostFreq":I
    .end local v14    # "inputBoostMs":I
    .restart local v48    # "inputBoostFreq":I
    .restart local v49    # "inputBoostMs":I
    :catchall_16
    move-exception v0

    move/from16 v4, v46

    move/from16 v10, v48

    move/from16 v14, v49

    move/from16 v22, v4

    move-object/from16 v65, v5

    move-object/from16 v66, v6

    move/from16 v26, v10

    move/from16 v31, v14

    move-object/from16 v81, v36

    move-object/from16 v79, v37

    move-object/from16 v78, v38

    move-object/from16 v77, v39

    move-object/from16 v76, v40

    move-object/from16 v1, v41

    move/from16 v17, v44

    move/from16 v18, v45

    move/from16 v24, v47

    move-object/from16 v74, v52

    move-object/from16 v10, v55

    move v14, v9

    move v9, v13

    move v13, v3

    .end local v46    # "fanLevel":I
    .end local v48    # "inputBoostFreq":I
    .end local v49    # "inputBoostMs":I
    .local v4, "fanLevel":I
    .restart local v10    # "inputBoostFreq":I
    .restart local v14    # "inputBoostMs":I
    goto/16 :goto_54

    .line 629
    .end local v4    # "fanLevel":I
    .end local v10    # "inputBoostFreq":I
    .end local v14    # "inputBoostMs":I
    .restart local v46    # "fanLevel":I
    .restart local v48    # "inputBoostFreq":I
    .restart local v49    # "inputBoostMs":I
    :catchall_17
    move-exception v0

    move/from16 v14, v45

    move/from16 v4, v46

    move/from16 v10, v48

    move/from16 v22, v4

    move-object/from16 v65, v5

    move-object/from16 v66, v6

    move/from16 v26, v10

    move/from16 v18, v14

    move-object/from16 v81, v36

    move-object/from16 v79, v37

    move-object/from16 v78, v38

    move-object/from16 v77, v39

    move-object/from16 v76, v40

    move-object/from16 v1, v41

    move/from16 v17, v44

    move/from16 v24, v47

    move/from16 v31, v49

    move-object/from16 v74, v52

    move-object/from16 v10, v55

    move v14, v9

    move v9, v13

    move v13, v3

    .end local v45    # "thermalLevel":I
    .end local v46    # "fanLevel":I
    .end local v48    # "inputBoostFreq":I
    .restart local v4    # "fanLevel":I
    .restart local v10    # "inputBoostFreq":I
    .local v14, "thermalLevel":I
    goto/16 :goto_54

    .line 629
    .end local v4    # "fanLevel":I
    .end local v10    # "inputBoostFreq":I
    .end local v14    # "thermalLevel":I
    .restart local v45    # "thermalLevel":I
    .restart local v46    # "fanLevel":I
    .restart local v48    # "inputBoostFreq":I
    :catchall_18
    move-exception v0

    move/from16 v10, v44

    move/from16 v14, v45

    move/from16 v4, v46

    move/from16 v22, v4

    move-object/from16 v65, v5

    move-object/from16 v66, v6

    move/from16 v17, v10

    move/from16 v18, v14

    move-object/from16 v81, v36

    move-object/from16 v79, v37

    move-object/from16 v78, v38

    move-object/from16 v77, v39

    move-object/from16 v76, v40

    move-object/from16 v1, v41

    move/from16 v24, v47

    move/from16 v26, v48

    move/from16 v31, v49

    move-object/from16 v74, v52

    move-object/from16 v10, v55

    move v14, v9

    move v9, v13

    move v13, v3

    .end local v44    # "disablePowerCollapse":Z
    .end local v45    # "thermalLevel":I
    .end local v46    # "fanLevel":I
    .restart local v4    # "fanLevel":I
    .local v10, "disablePowerCollapse":Z
    .restart local v14    # "thermalLevel":I
    goto/16 :goto_54

    .line 629
    .end local v10    # "disablePowerCollapse":Z
    .end local v14    # "thermalLevel":I
    .end local v47    # "schedUtilCpuFreqCtrl":I
    .local v4, "schedUtilCpuFreqCtrl":I
    .restart local v44    # "disablePowerCollapse":Z
    .restart local v45    # "thermalLevel":I
    .restart local v46    # "fanLevel":I
    :catchall_19
    move-exception v0

    move/from16 v10, v44

    move/from16 v14, v45

    move/from16 v2, v46

    move/from16 v22, v2

    move/from16 v24, v4

    move-object/from16 v65, v5

    move-object/from16 v66, v6

    move/from16 v17, v10

    move/from16 v18, v14

    move-object/from16 v81, v36

    move-object/from16 v79, v37

    move-object/from16 v78, v38

    move-object/from16 v77, v39

    move-object/from16 v76, v40

    move-object/from16 v1, v41

    move/from16 v26, v48

    move/from16 v31, v49

    move-object/from16 v74, v52

    move-object/from16 v10, v55

    move v14, v9

    move v9, v13

    move v13, v3

    .end local v44    # "disablePowerCollapse":Z
    .end local v45    # "thermalLevel":I
    .end local v46    # "fanLevel":I
    .local v2, "fanLevel":I
    .restart local v10    # "disablePowerCollapse":Z
    .restart local v14    # "thermalLevel":I
    goto/16 :goto_54

    .line 629
    .end local v2    # "fanLevel":I
    .end local v4    # "schedUtilCpuFreqCtrl":I
    .end local v10    # "disablePowerCollapse":Z
    .end local v14    # "thermalLevel":I
    .restart local v44    # "disablePowerCollapse":Z
    .restart local v45    # "thermalLevel":I
    .restart local v46    # "fanLevel":I
    .restart local v47    # "schedUtilCpuFreqCtrl":I
    :catchall_1a
    move-exception v0

    move/from16 v57, v15

    move/from16 v14, v42

    move/from16 v10, v44

    move/from16 v15, v45

    move/from16 v2, v46

    move/from16 v4, v47

    move/from16 v22, v2

    move/from16 v24, v4

    move-object/from16 v65, v5

    move-object/from16 v66, v6

    move/from16 v17, v10

    move/from16 v18, v15

    move-object/from16 v81, v36

    move-object/from16 v79, v37

    move-object/from16 v78, v38

    move-object/from16 v77, v39

    move-object/from16 v76, v40

    move-object/from16 v1, v41

    move/from16 v26, v48

    move/from16 v31, v49

    move-object/from16 v74, v52

    move-object/from16 v10, v55

    move/from16 v15, v57

    move v14, v9

    move v9, v13

    move v13, v3

    .end local v42    # "gpuMaxPowerLevel":I
    .end local v44    # "disablePowerCollapse":Z
    .end local v45    # "thermalLevel":I
    .end local v46    # "fanLevel":I
    .end local v47    # "schedUtilCpuFreqCtrl":I
    .restart local v2    # "fanLevel":I
    .restart local v4    # "schedUtilCpuFreqCtrl":I
    .restart local v10    # "disablePowerCollapse":Z
    .local v14, "gpuMaxPowerLevel":I
    .local v15, "thermalLevel":I
    .local v57, "schedMostlyIdleNRRun":I
    goto/16 :goto_54

    .line 629
    .end local v2    # "fanLevel":I
    .end local v4    # "schedUtilCpuFreqCtrl":I
    .end local v10    # "disablePowerCollapse":Z
    .end local v14    # "gpuMaxPowerLevel":I
    .end local v57    # "schedMostlyIdleNRRun":I
    .local v15, "schedMostlyIdleNRRun":I
    .restart local v42    # "gpuMaxPowerLevel":I
    .restart local v44    # "disablePowerCollapse":Z
    .restart local v45    # "thermalLevel":I
    .restart local v46    # "fanLevel":I
    .restart local v47    # "schedUtilCpuFreqCtrl":I
    :catchall_1b
    move-exception v0

    move/from16 v57, v15

    move/from16 v14, v42

    move/from16 v10, v43

    move/from16 v4, v44

    move/from16 v15, v45

    move/from16 v2, v46

    move/from16 v58, v47

    move/from16 v22, v2

    move/from16 v17, v4

    move-object/from16 v65, v5

    move-object/from16 v66, v6

    move/from16 v18, v15

    move-object/from16 v81, v36

    move-object/from16 v79, v37

    move-object/from16 v78, v38

    move-object/from16 v77, v39

    move-object/from16 v76, v40

    move-object/from16 v1, v41

    move/from16 v26, v48

    move/from16 v31, v49

    move-object/from16 v74, v52

    move-object/from16 v10, v55

    move/from16 v15, v57

    move/from16 v24, v58

    move v14, v9

    move v9, v13

    move v13, v3

    .end local v42    # "gpuMaxPowerLevel":I
    .end local v43    # "gpuMinPowerLevel":I
    .end local v44    # "disablePowerCollapse":Z
    .end local v45    # "thermalLevel":I
    .end local v46    # "fanLevel":I
    .end local v47    # "schedUtilCpuFreqCtrl":I
    .restart local v2    # "fanLevel":I
    .local v4, "disablePowerCollapse":Z
    .local v10, "gpuMinPowerLevel":I
    .restart local v14    # "gpuMaxPowerLevel":I
    .local v15, "thermalLevel":I
    .restart local v57    # "schedMostlyIdleNRRun":I
    .local v58, "schedUtilCpuFreqCtrl":I
    goto/16 :goto_54

    .line 629
    .end local v2    # "fanLevel":I
    .end local v4    # "disablePowerCollapse":Z
    .end local v10    # "gpuMinPowerLevel":I
    .end local v14    # "gpuMaxPowerLevel":I
    .end local v15    # "thermalLevel":I
    .end local v57    # "schedMostlyIdleNRRun":I
    .end local v58    # "schedUtilCpuFreqCtrl":I
    .restart local v42    # "gpuMaxPowerLevel":I
    .restart local v43    # "gpuMinPowerLevel":I
    .restart local v44    # "disablePowerCollapse":Z
    .restart local v45    # "thermalLevel":I
    .restart local v46    # "fanLevel":I
    .restart local v47    # "schedUtilCpuFreqCtrl":I
    .restart local v54    # "schedMostlyIdleNRRun":I
    :catchall_1c
    move-exception v0

    move/from16 v2, v42

    move/from16 v10, v43

    move/from16 v4, v44

    move/from16 v15, v45

    move/from16 v59, v46

    move/from16 v58, v47

    move/from16 v14, v54

    move/from16 v17, v4

    move-object/from16 v65, v5

    move-object/from16 v66, v6

    move/from16 v18, v15

    move-object/from16 v81, v36

    move-object/from16 v79, v37

    move-object/from16 v78, v38

    move-object/from16 v77, v39

    move-object/from16 v76, v40

    move-object/from16 v1, v41

    move/from16 v26, v48

    move/from16 v31, v49

    move-object/from16 v74, v52

    move-object/from16 v10, v55

    move/from16 v24, v58

    move/from16 v22, v59

    move v15, v14

    move v14, v9

    move v9, v13

    move v13, v3

    .end local v42    # "gpuMaxPowerLevel":I
    .end local v43    # "gpuMinPowerLevel":I
    .end local v44    # "disablePowerCollapse":Z
    .end local v45    # "thermalLevel":I
    .end local v46    # "fanLevel":I
    .end local v47    # "schedUtilCpuFreqCtrl":I
    .end local v54    # "schedMostlyIdleNRRun":I
    .local v2, "gpuMaxPowerLevel":I
    .restart local v4    # "disablePowerCollapse":Z
    .restart local v10    # "gpuMinPowerLevel":I
    .local v14, "schedMostlyIdleNRRun":I
    .restart local v15    # "thermalLevel":I
    .restart local v58    # "schedUtilCpuFreqCtrl":I
    .local v59, "fanLevel":I
    goto/16 :goto_54

    .line 629
    .end local v2    # "gpuMaxPowerLevel":I
    .end local v4    # "disablePowerCollapse":Z
    .end local v10    # "gpuMinPowerLevel":I
    .end local v15    # "thermalLevel":I
    .end local v56    # "avoidSuperGamePerf":Z
    .end local v58    # "schedUtilCpuFreqCtrl":I
    .end local v59    # "fanLevel":I
    .local v14, "avoidSuperGamePerf":Z
    .restart local v42    # "gpuMaxPowerLevel":I
    .restart local v43    # "gpuMinPowerLevel":I
    .restart local v44    # "disablePowerCollapse":Z
    .restart local v45    # "thermalLevel":I
    .restart local v46    # "fanLevel":I
    .restart local v47    # "schedUtilCpuFreqCtrl":I
    .restart local v54    # "schedMostlyIdleNRRun":I
    :catchall_1d
    move-exception v0

    move/from16 v56, v14

    move/from16 v2, v42

    move/from16 v10, v43

    move/from16 v4, v44

    move/from16 v15, v45

    move/from16 v59, v46

    move/from16 v58, v47

    move/from16 v14, v54

    move/from16 v17, v4

    move-object/from16 v65, v5

    move-object/from16 v66, v6

    move/from16 v18, v15

    move-object/from16 v81, v36

    move-object/from16 v79, v37

    move-object/from16 v78, v38

    move-object/from16 v77, v39

    move-object/from16 v76, v40

    move-object/from16 v1, v41

    move/from16 v26, v48

    move/from16 v31, v49

    move-object/from16 v74, v52

    move-object/from16 v10, v55

    move/from16 v24, v58

    move/from16 v22, v59

    move v15, v14

    move v14, v9

    move v9, v13

    move v13, v3

    .end local v42    # "gpuMaxPowerLevel":I
    .end local v43    # "gpuMinPowerLevel":I
    .end local v44    # "disablePowerCollapse":Z
    .end local v45    # "thermalLevel":I
    .end local v46    # "fanLevel":I
    .end local v47    # "schedUtilCpuFreqCtrl":I
    .end local v54    # "schedMostlyIdleNRRun":I
    .restart local v2    # "gpuMaxPowerLevel":I
    .restart local v4    # "disablePowerCollapse":Z
    .restart local v10    # "gpuMinPowerLevel":I
    .local v14, "schedMostlyIdleNRRun":I
    .restart local v15    # "thermalLevel":I
    .restart local v56    # "avoidSuperGamePerf":Z
    .restart local v58    # "schedUtilCpuFreqCtrl":I
    .restart local v59    # "fanLevel":I
    goto/16 :goto_54

    .line 629
    .end local v2    # "gpuMaxPowerLevel":I
    .end local v4    # "disablePowerCollapse":Z
    .end local v15    # "thermalLevel":I
    .end local v55    # "traceTypes":Ljava/lang/String;
    .end local v56    # "avoidSuperGamePerf":Z
    .end local v58    # "schedUtilCpuFreqCtrl":I
    .end local v59    # "fanLevel":I
    .local v10, "traceTypes":Ljava/lang/String;
    .local v14, "avoidSuperGamePerf":Z
    .restart local v42    # "gpuMaxPowerLevel":I
    .restart local v43    # "gpuMinPowerLevel":I
    .restart local v44    # "disablePowerCollapse":Z
    .restart local v45    # "thermalLevel":I
    .restart local v46    # "fanLevel":I
    .restart local v47    # "schedUtilCpuFreqCtrl":I
    .restart local v54    # "schedMostlyIdleNRRun":I
    :catchall_1e
    move-exception v0

    move-object/from16 v55, v10

    move/from16 v56, v14

    move/from16 v2, v42

    move/from16 v10, v43

    move/from16 v4, v44

    move/from16 v15, v45

    move/from16 v59, v46

    move/from16 v58, v47

    move/from16 v14, v54

    move/from16 v17, v4

    move-object/from16 v65, v5

    move-object/from16 v66, v6

    move/from16 v18, v15

    move-object/from16 v81, v36

    move-object/from16 v79, v37

    move-object/from16 v78, v38

    move-object/from16 v77, v39

    move-object/from16 v76, v40

    move-object/from16 v1, v41

    move/from16 v26, v48

    move/from16 v31, v49

    move-object/from16 v74, v52

    move-object/from16 v10, v55

    move/from16 v24, v58

    move/from16 v22, v59

    move v15, v14

    move v14, v9

    move v9, v13

    move v13, v3

    .end local v42    # "gpuMaxPowerLevel":I
    .end local v43    # "gpuMinPowerLevel":I
    .end local v44    # "disablePowerCollapse":Z
    .end local v45    # "thermalLevel":I
    .end local v46    # "fanLevel":I
    .end local v47    # "schedUtilCpuFreqCtrl":I
    .end local v54    # "schedMostlyIdleNRRun":I
    .restart local v2    # "gpuMaxPowerLevel":I
    .restart local v4    # "disablePowerCollapse":Z
    .local v10, "gpuMinPowerLevel":I
    .local v14, "schedMostlyIdleNRRun":I
    .restart local v15    # "thermalLevel":I
    .restart local v55    # "traceTypes":Ljava/lang/String;
    .restart local v56    # "avoidSuperGamePerf":Z
    .restart local v58    # "schedUtilCpuFreqCtrl":I
    .restart local v59    # "fanLevel":I
    goto/16 :goto_54

    .line 629
    .end local v52    # "schedDownMigrate":[I
    .end local v53    # "schedUpMigrate":[I
    .end local v55    # "traceTypes":Ljava/lang/String;
    .end local v56    # "avoidSuperGamePerf":Z
    .end local v58    # "schedUtilCpuFreqCtrl":I
    .end local v59    # "fanLevel":I
    .local v2, "schedUpMigrate":[I
    .local v4, "schedDownMigrate":[I
    .local v10, "traceTypes":Ljava/lang/String;
    .local v14, "avoidSuperGamePerf":Z
    .local v15, "schedMostlyIdleNRRun":I
    .restart local v42    # "gpuMaxPowerLevel":I
    .restart local v43    # "gpuMinPowerLevel":I
    .restart local v44    # "disablePowerCollapse":Z
    .restart local v45    # "thermalLevel":I
    .restart local v46    # "fanLevel":I
    .restart local v47    # "schedUtilCpuFreqCtrl":I
    :catchall_1f
    move-exception v0

    move-object/from16 v53, v2

    move-object/from16 v52, v4

    move/from16 v56, v14

    move v14, v15

    move/from16 v2, v42

    move/from16 v15, v43

    move/from16 v4, v44

    move/from16 v60, v45

    move/from16 v59, v46

    move/from16 v58, v47

    move/from16 v17, v4

    move-object/from16 v65, v5

    move-object/from16 v66, v6

    move-object/from16 v81, v36

    move-object/from16 v79, v37

    move-object/from16 v78, v38

    move-object/from16 v77, v39

    move-object/from16 v76, v40

    move-object/from16 v1, v41

    move/from16 v26, v48

    move/from16 v31, v49

    move-object/from16 v74, v52

    move/from16 v24, v58

    move/from16 v22, v59

    move/from16 v18, v60

    move v15, v14

    move v14, v9

    move v9, v13

    move v13, v3

    .end local v42    # "gpuMaxPowerLevel":I
    .end local v43    # "gpuMinPowerLevel":I
    .end local v44    # "disablePowerCollapse":Z
    .end local v45    # "thermalLevel":I
    .end local v46    # "fanLevel":I
    .end local v47    # "schedUtilCpuFreqCtrl":I
    .local v2, "gpuMaxPowerLevel":I
    .local v4, "disablePowerCollapse":Z
    .local v14, "schedMostlyIdleNRRun":I
    .local v15, "gpuMinPowerLevel":I
    .restart local v52    # "schedDownMigrate":[I
    .restart local v53    # "schedUpMigrate":[I
    .restart local v56    # "avoidSuperGamePerf":Z
    .restart local v58    # "schedUtilCpuFreqCtrl":I
    .restart local v59    # "fanLevel":I
    .local v60, "thermalLevel":I
    goto/16 :goto_54

    .line 629
    .end local v52    # "schedDownMigrate":[I
    .end local v53    # "schedUpMigrate":[I
    .end local v56    # "avoidSuperGamePerf":Z
    .end local v58    # "schedUtilCpuFreqCtrl":I
    .end local v59    # "fanLevel":I
    .end local v60    # "thermalLevel":I
    .local v2, "schedUpMigrate":[I
    .local v4, "schedDownMigrate":[I
    .local v14, "avoidSuperGamePerf":Z
    .local v15, "schedMostlyIdleNRRun":I
    .restart local v42    # "gpuMaxPowerLevel":I
    .restart local v43    # "gpuMinPowerLevel":I
    .restart local v44    # "disablePowerCollapse":Z
    .restart local v45    # "thermalLevel":I
    .restart local v46    # "fanLevel":I
    .restart local v47    # "schedUtilCpuFreqCtrl":I
    :cond_57
    move-object/from16 v53, v2

    move-object/from16 v52, v4

    move/from16 v56, v14

    move v14, v15

    move/from16 v2, v42

    move/from16 v15, v43

    move/from16 v4, v44

    move/from16 v60, v45

    move/from16 v59, v46

    move/from16 v58, v47

    .end local v42    # "gpuMaxPowerLevel":I
    .end local v43    # "gpuMinPowerLevel":I
    .end local v44    # "disablePowerCollapse":Z
    .end local v45    # "thermalLevel":I
    .end local v46    # "fanLevel":I
    .end local v47    # "schedUtilCpuFreqCtrl":I
    .local v2, "gpuMaxPowerLevel":I
    .local v4, "disablePowerCollapse":Z
    .local v14, "schedMostlyIdleNRRun":I
    .local v15, "gpuMinPowerLevel":I
    .restart local v52    # "schedDownMigrate":[I
    .restart local v53    # "schedUpMigrate":[I
    .restart local v56    # "avoidSuperGamePerf":Z
    .restart local v58    # "schedUtilCpuFreqCtrl":I
    .restart local v59    # "fanLevel":I
    .restart local v60    # "thermalLevel":I
    :try_start_47
    monitor-exit v11
    :try_end_47
    .catchall {:try_start_47 .. :try_end_47} :catchall_20

    .line 630
    iget-boolean v0, v1, Lcom/android/server/cpuperf/QComBoostController;->mDumpDebugLog:Z

    if-eqz v0, :cond_58

    .line 631
    const-string v0, "PerfLocks Count"

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v11

    move/from16 v62, v3

    move/from16 v61, v4

    const-wide/16 v3, 0x1000

    invoke-static {v3, v4, v0, v11}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 632
    .end local v3    # "schedSmallTask":I
    .end local v4    # "disablePowerCollapse":Z
    .local v61, "disablePowerCollapse":Z
    .local v62, "schedSmallTask":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Candicate types:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    goto :goto_37

    .line 635
    .end local v61    # "disablePowerCollapse":Z
    .end local v62    # "schedSmallTask":I
    .restart local v3    # "schedSmallTask":I
    .restart local v4    # "disablePowerCollapse":Z
    :cond_58
    move/from16 v62, v3

    move/from16 v61, v4

    .line 635
    .end local v3    # "schedSmallTask":I
    .end local v4    # "disablePowerCollapse":Z
    .restart local v61    # "disablePowerCollapse":Z
    .restart local v62    # "schedSmallTask":I
    :goto_37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 636
    .local v0, "parameters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->isMonkey()Z

    move-result v3

    const/high16 v4, 0x40c00000    # 6.0f

    if-eqz v3, :cond_59

    const-string v3, "debug.nubia.disable_sched_boost"

    const/4 v11, 0x0

    invoke-static {v3, v11}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_59

    .line 637
    const v3, 0x7fffffff

    if-eq v12, v3, :cond_5a

    .line 638
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 639
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 640
    iget-boolean v3, v1, Lcom/android/server/cpuperf/QComBoostController;->mDumpDebugLog:Z

    if-eqz v3, :cond_5a

    .line 641
    const-string v3, "PerformanceController"

    const-string v4, "Enable sched boost schedBoost = 0"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_38

    .line 645
    :cond_59
    const v3, 0x7fffffff

    if-eq v12, v3, :cond_5a

    .line 646
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 647
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 648
    iget-boolean v3, v1, Lcom/android/server/cpuperf/QComBoostController;->mDumpDebugLog:Z

    if-eqz v3, :cond_5a

    .line 649
    const-string v3, "PerformanceController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Enable sched boost schedBoost = "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    :cond_5a
    :goto_38
    const/4 v3, 0x0

    .line 654
    .local v3, "i":I
    :goto_39
    array-length v4, v5

    if-ge v3, v4, :cond_5c

    .line 655
    aget v4, v5, v3

    const/4 v11, -0x1

    if-le v4, v11, :cond_5b

    .line 656
    sget-object v4, Lcom/android/server/cpuperf/QComBoostController;->MIN_ONLINE_CPU_CLUSTER:[I

    aget v4, v4, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 657
    aget v4, v5, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 658
    iget-boolean v4, v1, Lcom/android/server/cpuperf/QComBoostController;->mDumpDebugLog:Z

    if-eqz v4, :cond_5b

    .line 659
    const-string v4, "PerformanceController"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v63, v10

    const-string v10, "cluster "

    .line 659
    .end local v10    # "traceTypes":Ljava/lang/String;
    .local v63, "traceTypes":Ljava/lang/String;
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", minNumCores = 0x"

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 660
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v10

    const/16 v16, 0x1

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 659
    invoke-static {v4, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3a

    .line 654
    .end local v63    # "traceTypes":Ljava/lang/String;
    .restart local v10    # "traceTypes":Ljava/lang/String;
    :cond_5b
    move-object/from16 v63, v10

    .line 654
    .end local v10    # "traceTypes":Ljava/lang/String;
    .restart local v63    # "traceTypes":Ljava/lang/String;
    :goto_3a
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v10, v63

    goto :goto_39

    .line 665
    .end local v3    # "i":I
    .end local v63    # "traceTypes":Ljava/lang/String;
    .restart local v10    # "traceTypes":Ljava/lang/String;
    :cond_5c
    move-object/from16 v63, v10

    .line 665
    .end local v10    # "traceTypes":Ljava/lang/String;
    .restart local v63    # "traceTypes":Ljava/lang/String;
    const/4 v3, 0x0

    .line 665
    .restart local v3    # "i":I
    :goto_3b
    array-length v4, v6

    if-ge v3, v4, :cond_5e

    .line 666
    aget v4, v5, v3

    aget v10, v6, v3

    invoke-static {v4, v10}, Ljava/lang/Math;->max(II)I

    move-result v4

    aput v4, v6, v3

    .line 668
    aget v4, v6, v3

    const/4 v10, -0x1

    if-le v4, v10, :cond_5d

    sget-object v4, Lcom/android/server/cpuperf/QComBoostController;->MAX_ONLINE_CPU_CLUSTER:[I

    aget v4, v4, v3

    if-le v4, v10, :cond_5d

    .line 669
    sget-object v4, Lcom/android/server/cpuperf/QComBoostController;->MAX_ONLINE_CPU_CLUSTER:[I

    aget v4, v4, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 670
    aget v4, v6, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 671
    iget-boolean v4, v1, Lcom/android/server/cpuperf/QComBoostController;->mDumpDebugLog:Z

    if-eqz v4, :cond_5d

    .line 672
    const-string v4, "PerformanceController"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "cluster "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", maxNumCores = 0x"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v11

    const/16 v16, 0x1

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    :cond_5d
    add-int/lit8 v3, v3, 0x1

    goto :goto_3b

    .line 678
    .end local v3    # "i":I
    :cond_5e
    const/4 v3, 0x0

    .line 678
    .restart local v3    # "i":I
    :goto_3c
    array-length v4, v7

    if-ge v3, v4, :cond_66

    .line 679
    const/4 v4, 0x0

    .line 680
    .local v4, "min_monkey_limit":Z
    const/4 v10, 0x0

    .line 681
    .local v10, "max_monkey_limit":Z
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->isMonkey()Z

    move-result v11

    if-eqz v11, :cond_63

    array-length v11, v7

    div-int/lit8 v11, v11, 0x2

    if-lt v3, v11, :cond_63

    .line 683
    const-string v11, "debug.nubia.min_freq_limit"

    move/from16 v64, v4

    const/4 v4, 0x0

    invoke-static {v11, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v11

    .line 683
    .end local v4    # "min_monkey_limit":Z
    .local v64, "min_monkey_limit":Z
    move v4, v11

    .line 683
    .local v4, "min_freq_limit":I
    if-eqz v11, :cond_60

    .line 684
    sget-object v11, Lcom/android/server/cpuperf/QComBoostController;->CPU_MIN_FREQ:[I

    aget v11, v11, v3

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 685
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 686
    iget-boolean v11, v1, Lcom/android/server/cpuperf/QComBoostController;->mDumpDebugLog:Z

    if-eqz v11, :cond_5f

    .line 687
    const-string v11, "PerformanceController"

    move-object/from16 v65, v5

    new-instance v5, Ljava/lang/StringBuilder;

    .line 687
    .end local v5    # "minNumCores":[I
    .restart local v65    # "minNumCores":[I
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v66, v6

    const-string v6, "core "

    .line 687
    .end local v6    # "maxNumCores":[I
    .restart local v66    # "maxNumCores":[I
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", minFrequency = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v11, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3d

    .line 689
    .end local v65    # "minNumCores":[I
    .end local v66    # "maxNumCores":[I
    .restart local v5    # "minNumCores":[I
    .restart local v6    # "maxNumCores":[I
    :cond_5f
    move-object/from16 v65, v5

    move-object/from16 v66, v6

    .line 689
    .end local v5    # "minNumCores":[I
    .end local v6    # "maxNumCores":[I
    .restart local v65    # "minNumCores":[I
    .restart local v66    # "maxNumCores":[I
    :goto_3d
    const/4 v5, 0x1

    .line 689
    .end local v64    # "min_monkey_limit":Z
    .local v5, "min_monkey_limit":Z
    goto :goto_3e

    .line 692
    .end local v65    # "minNumCores":[I
    .end local v66    # "maxNumCores":[I
    .local v5, "minNumCores":[I
    .restart local v6    # "maxNumCores":[I
    .restart local v64    # "min_monkey_limit":Z
    :cond_60
    move-object/from16 v65, v5

    move-object/from16 v66, v6

    move/from16 v5, v64

    .line 692
    .end local v6    # "maxNumCores":[I
    .end local v64    # "min_monkey_limit":Z
    .local v5, "min_monkey_limit":Z
    .restart local v65    # "minNumCores":[I
    .restart local v66    # "maxNumCores":[I
    :goto_3e
    const-string v6, "debug.nubia.max_freq_limit"

    const/4 v11, 0x0

    invoke-static {v6, v11}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v6

    move/from16 v67, v6

    .line 692
    .local v67, "max_freq_limit":I
    if-eqz v6, :cond_62

    .line 693
    sget-object v6, Lcom/android/server/cpuperf/QComBoostController;->CPU_MAX_FREQ:[I

    aget v6, v6, v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 694
    move/from16 v6, v67

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 694
    .end local v67    # "max_freq_limit":I
    .local v6, "max_freq_limit":I
    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 695
    iget-boolean v11, v1, Lcom/android/server/cpuperf/QComBoostController;->mDumpDebugLog:Z

    if-eqz v11, :cond_61

    .line 696
    const-string v11, "PerformanceController"

    move/from16 v69, v4

    new-instance v4, Ljava/lang/StringBuilder;

    .line 696
    .end local v4    # "min_freq_limit":I
    .local v69, "min_freq_limit":I
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v70, v5

    const-string v5, "core "

    .line 696
    .end local v5    # "min_monkey_limit":Z
    .local v70, "min_monkey_limit":Z
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", maxFrequency = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v11, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3f

    .line 698
    .end local v69    # "min_freq_limit":I
    .end local v70    # "min_monkey_limit":Z
    .restart local v4    # "min_freq_limit":I
    .restart local v5    # "min_monkey_limit":Z
    :cond_61
    move/from16 v69, v4

    move/from16 v70, v5

    .line 698
    .end local v4    # "min_freq_limit":I
    .end local v5    # "min_monkey_limit":Z
    .restart local v69    # "min_freq_limit":I
    .restart local v70    # "min_monkey_limit":Z
    :goto_3f
    const/4 v10, 0x1

    .line 698
    .end local v6    # "max_freq_limit":I
    .end local v69    # "min_freq_limit":I
    goto :goto_40

    .line 701
    .end local v70    # "min_monkey_limit":Z
    .restart local v5    # "min_monkey_limit":Z
    :cond_62
    move/from16 v70, v5

    .line 701
    .end local v5    # "min_monkey_limit":Z
    .restart local v70    # "min_monkey_limit":Z
    goto :goto_40

    .line 701
    .end local v65    # "minNumCores":[I
    .end local v66    # "maxNumCores":[I
    .end local v70    # "min_monkey_limit":Z
    .local v4, "min_monkey_limit":Z
    .local v5, "minNumCores":[I
    .local v6, "maxNumCores":[I
    :cond_63
    move/from16 v64, v4

    move-object/from16 v65, v5

    move-object/from16 v66, v6

    .line 701
    .end local v4    # "min_monkey_limit":Z
    .end local v5    # "minNumCores":[I
    .end local v6    # "maxNumCores":[I
    .restart local v64    # "min_monkey_limit":Z
    .restart local v65    # "minNumCores":[I
    .restart local v66    # "maxNumCores":[I
    move/from16 v70, v64

    .line 701
    .end local v64    # "min_monkey_limit":Z
    .restart local v70    # "min_monkey_limit":Z
    :goto_40
    if-nez v70, :cond_64

    aget v4, v7, v3

    const/4 v5, -0x1

    if-le v4, v5, :cond_64

    .line 702
    sget-object v4, Lcom/android/server/cpuperf/QComBoostController;->CPU_MIN_FREQ:[I

    aget v4, v4, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 703
    aget v4, v7, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 704
    iget-boolean v4, v1, Lcom/android/server/cpuperf/QComBoostController;->mDumpDebugLog:Z

    if-eqz v4, :cond_64

    .line 705
    const-string v4, "PerformanceController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "core "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", minFrequency = 0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 706
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v11, 0x1

    sub-int/2addr v6, v11

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 705
    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    :cond_64
    if-nez v10, :cond_65

    aget v4, v8, v3

    const/4 v5, -0x1

    if-le v4, v5, :cond_65

    .line 710
    sget-object v4, Lcom/android/server/cpuperf/QComBoostController;->CPU_MAX_FREQ:[I

    aget v4, v4, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 711
    aget v4, v8, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 712
    iget-boolean v4, v1, Lcom/android/server/cpuperf/QComBoostController;->mDumpDebugLog:Z

    if-eqz v4, :cond_65

    .line 713
    const-string v4, "PerformanceController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "core "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", maxFrequency = 0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 714
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v11, 0x1

    sub-int/2addr v6, v11

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 713
    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    .end local v10    # "max_monkey_limit":Z
    .end local v70    # "min_monkey_limit":Z
    :cond_65
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v5, v65

    move-object/from16 v6, v66

    goto/16 :goto_3c

    .line 719
    .end local v3    # "i":I
    .end local v65    # "minNumCores":[I
    .end local v66    # "maxNumCores":[I
    .restart local v5    # "minNumCores":[I
    .restart local v6    # "maxNumCores":[I
    :cond_66
    move-object/from16 v65, v5

    move-object/from16 v66, v6

    .line 719
    .end local v5    # "minNumCores":[I
    .end local v6    # "maxNumCores":[I
    .restart local v65    # "minNumCores":[I
    .restart local v66    # "maxNumCores":[I
    const/4 v3, -0x1

    if-le v13, v3, :cond_67

    .line 720
    const/high16 v3, 0x41800000    # 16.0f

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 721
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 722
    iget-boolean v3, v1, Lcom/android/server/cpuperf/QComBoostController;->mDumpDebugLog:Z

    if-eqz v3, :cond_67

    .line 723
    const-string v3, "PerformanceController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cpubw, minfreq = 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 724
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 723
    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    :cond_67
    const v3, 0x7fffffff

    if-eq v15, v3, :cond_69

    .line 728
    const v3, 0x42804000    # 64.125f

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 729
    iget-boolean v3, v1, Lcom/android/server/cpuperf/QComBoostController;->mGpuOverclock:Z

    if-eqz v3, :cond_68

    add-int/lit8 v43, v15, 0x1

    move/from16 v3, v43

    goto :goto_41

    :cond_68
    move v3, v15

    :goto_41
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 730
    iget-boolean v3, v1, Lcom/android/server/cpuperf/QComBoostController;->mDumpDebugLog:Z

    if-eqz v3, :cond_69

    .line 731
    const-string v3, "PerformanceController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "gpuMinPowerLevel = 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 732
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 731
    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    :cond_69
    const v3, 0x7fffffff

    if-eq v2, v3, :cond_6b

    .line 736
    const v3, 0x42808000    # 64.25f

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 737
    iget-boolean v3, v1, Lcom/android/server/cpuperf/QComBoostController;->mGpuOverclock:Z

    if-eqz v3, :cond_6a

    add-int/lit8 v42, v2, 0x1

    move/from16 v3, v42

    goto :goto_42

    :cond_6a
    move v3, v2

    :goto_42
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 738
    iget-boolean v3, v1, Lcom/android/server/cpuperf/QComBoostController;->mDumpDebugLog:Z

    if-eqz v3, :cond_6b

    .line 739
    const-string v3, "PerformanceController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "gpuMaxPowerLevel = 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 740
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 739
    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    :cond_6b
    move/from16 v3, v62

    const v4, 0x7fffffff

    if-eq v3, v4, :cond_6c

    .line 745
    .end local v62    # "schedSmallTask":I
    .local v3, "schedSmallTask":I
    const v4, 0x40c0c000    # 6.0234375f

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 746
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 747
    iget-boolean v4, v1, Lcom/android/server/cpuperf/QComBoostController;->mDumpDebugLog:Z

    if-eqz v4, :cond_6c

    .line 748
    const-string v4, "PerformanceController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "sched_small_task = 0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 749
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v10, 0x1

    sub-int/2addr v6, v10

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 748
    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    :cond_6c
    const v4, 0x7fffffff

    if-eq v9, v4, :cond_6d

    .line 754
    const/high16 v4, 0x40c10000    # 6.03125f

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 755
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 756
    iget-boolean v4, v1, Lcom/android/server/cpuperf/QComBoostController;->mDumpDebugLog:Z

    if-eqz v4, :cond_6d

    .line 757
    const-string v4, "PerformanceController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "sched_mostly_idle_load = 0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 758
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v10, 0x1

    sub-int/2addr v6, v10

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 757
    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    :cond_6d
    const v4, 0x7fffffff

    if-eq v14, v4, :cond_6e

    .line 763
    const v4, 0x40c14000    # 6.0390625f

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 764
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 765
    iget-boolean v4, v1, Lcom/android/server/cpuperf/QComBoostController;->mDumpDebugLog:Z

    if-eqz v4, :cond_6e

    .line 766
    const-string v4, "PerformanceController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "sched_mostly_idle_nr_run = 0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 767
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v10, 0x1

    sub-int/2addr v6, v10

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 766
    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    :cond_6e
    const/4 v4, 0x0

    .line 772
    .local v4, "i":I
    :goto_43
    move-object/from16 v5, v52

    array-length v6, v5

    .line 772
    .end local v52    # "schedDownMigrate":[I
    .local v5, "schedDownMigrate":[I
    if-ge v4, v6, :cond_71

    .line 773
    aget v6, v5, v4

    const v10, 0x7fffffff

    if-eq v6, v10, :cond_6f

    .line 774
    sget-object v6, Lcom/android/server/cpuperf/QComBoostController;->SCHED_DOWNMIGRATE:[I

    aget v6, v6, v4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 775
    aget v6, v5, v4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 776
    iget-boolean v6, v1, Lcom/android/server/cpuperf/QComBoostController;->mDumpDebugLog:Z

    if-eqz v6, :cond_6f

    .line 777
    const-string v6, "PerformanceController"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "cluster "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " sched_downmigrate = 0x"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 778
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v11

    const/16 v16, 0x1

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 777
    invoke-static {v6, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 782
    :cond_6f
    aget v6, v53, v4

    const v10, 0x7fffffff

    if-eq v6, v10, :cond_70

    .line 783
    sget-object v6, Lcom/android/server/cpuperf/QComBoostController;->SCHED_UPMIGRATE:[I

    aget v6, v6, v4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 784
    aget v6, v53, v4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 785
    iget-boolean v6, v1, Lcom/android/server/cpuperf/QComBoostController;->mDumpDebugLog:Z

    if-eqz v6, :cond_70

    .line 786
    const-string v6, "PerformanceController"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "cluster "

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " sched_upmigrate = 0x"

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 787
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v10

    const/16 v16, 0x1

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 786
    invoke-static {v6, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    :cond_70
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v52, v5

    goto/16 :goto_43

    .line 792
    .end local v4    # "i":I
    :cond_71
    if-eqz v61, :cond_72

    .line 793
    const/high16 v4, 0x40400000    # 3.0f

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 794
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 795
    iget-boolean v4, v1, Lcom/android/server/cpuperf/QComBoostController;->mDumpDebugLog:Z

    if-eqz v4, :cond_72

    .line 796
    const-string v4, "PerformanceController"

    const-string v6, "Disable power collapse"

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    :cond_72
    move/from16 v4, v61

    invoke-direct {v1, v4}, Lcom/android/server/cpuperf/QComBoostController;->specialDisablePowerCollapse(Z)V

    .line 801
    .end local v61    # "disablePowerCollapse":Z
    .local v4, "disablePowerCollapse":Z
    move/from16 v6, v60

    invoke-direct {v1, v6}, Lcom/android/server/cpuperf/QComBoostController;->specialSetThermalLevel(I)V

    .line 803
    .end local v60    # "thermalLevel":I
    .local v6, "thermalLevel":I
    move/from16 v10, v59

    invoke-direct {v1, v10}, Lcom/android/server/cpuperf/QComBoostController;->specialSetFanLevel(I)V

    .line 805
    .end local v59    # "fanLevel":I
    .local v10, "fanLevel":I
    if-eqz v20, :cond_73

    .line 806
    const/high16 v11, 0x42c10000    # 96.5f

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 807
    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 808
    iget-boolean v11, v1, Lcom/android/server/cpuperf/QComBoostController;->mDumpDebugLog:Z

    if-eqz v11, :cond_73

    .line 809
    const-string v11, "PerformanceController"

    move/from16 v71, v2

    const-string v2, "Disable storage clock scaling"

    .line 809
    .end local v2    # "gpuMaxPowerLevel":I
    .local v71, "gpuMaxPowerLevel":I
    invoke-static {v11, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_44

    .line 813
    .end local v71    # "gpuMaxPowerLevel":I
    .restart local v2    # "gpuMaxPowerLevel":I
    :cond_73
    move/from16 v71, v2

    .line 813
    .end local v2    # "gpuMaxPowerLevel":I
    .restart local v71    # "gpuMaxPowerLevel":I
    :goto_44
    const/4 v2, 0x0

    .line 813
    .local v2, "i":I
    :goto_45
    move/from16 v72, v3

    move-object/from16 v11, v41

    array-length v3, v11

    .line 813
    .end local v3    # "schedSmallTask":I
    .end local v41    # "targetLoads":[I
    .local v11, "targetLoads":[I
    .local v72, "schedSmallTask":I
    if-ge v2, v3, :cond_75

    .line 814
    aget v3, v11, v2

    move/from16 v73, v4

    const/4 v4, -0x1

    if-le v3, v4, :cond_74

    .line 815
    .end local v4    # "disablePowerCollapse":Z
    .local v73, "disablePowerCollapse":Z
    sget-object v3, Lcom/android/server/cpuperf/QComBoostController;->TARGET_LOADS:[I

    aget v3, v3, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 816
    aget v3, v11, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 817
    iget-boolean v3, v1, Lcom/android/server/cpuperf/QComBoostController;->mDumpDebugLog:Z

    if-eqz v3, :cond_74

    .line 818
    const-string v3, "PerformanceController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v74, v5

    const-string v5, "cluster "

    .line 818
    .end local v5    # "schedDownMigrate":[I
    .restart local v74    # "schedDownMigrate":[I
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", targetLoads = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v5, v11, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_46

    .line 813
    .end local v74    # "schedDownMigrate":[I
    .restart local v5    # "schedDownMigrate":[I
    :cond_74
    move-object/from16 v74, v5

    .line 813
    .end local v5    # "schedDownMigrate":[I
    .restart local v74    # "schedDownMigrate":[I
    :goto_46
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v41, v11

    move/from16 v3, v72

    move/from16 v4, v73

    move-object/from16 v5, v74

    goto :goto_45

    .line 823
    .end local v2    # "i":I
    .end local v73    # "disablePowerCollapse":Z
    .end local v74    # "schedDownMigrate":[I
    .restart local v4    # "disablePowerCollapse":Z
    .restart local v5    # "schedDownMigrate":[I
    :cond_75
    move/from16 v73, v4

    move-object/from16 v74, v5

    .line 823
    .end local v4    # "disablePowerCollapse":Z
    .end local v5    # "schedDownMigrate":[I
    .restart local v73    # "disablePowerCollapse":Z
    .restart local v74    # "schedDownMigrate":[I
    const/4 v2, 0x0

    .line 823
    .restart local v2    # "i":I
    :goto_47
    move-object/from16 v3, v40

    array-length v4, v3

    .line 823
    .end local v40    # "goHispeedLoad":[I
    .local v3, "goHispeedLoad":[I
    if-ge v2, v4, :cond_77

    .line 824
    aget v4, v3, v2

    const/4 v5, -0x1

    if-le v4, v5, :cond_76

    .line 825
    sget-object v4, Lcom/android/server/cpuperf/QComBoostController;->GO_HISPEED_LOAD:[I

    aget v4, v4, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 826
    aget v4, v3, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 827
    iget-boolean v4, v1, Lcom/android/server/cpuperf/QComBoostController;->mDumpDebugLog:Z

    if-eqz v4, :cond_76

    .line 828
    const-string v4, "PerformanceController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v75, v6

    const-string v6, "cluster "

    .line 828
    .end local v6    # "thermalLevel":I
    .local v75, "thermalLevel":I
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", goHispeedLoad = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v6, v3, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_48

    .line 823
    .end local v75    # "thermalLevel":I
    .restart local v6    # "thermalLevel":I
    :cond_76
    move/from16 v75, v6

    .line 823
    .end local v6    # "thermalLevel":I
    .restart local v75    # "thermalLevel":I
    :goto_48
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v40, v3

    move/from16 v6, v75

    goto :goto_47

    .line 833
    .end local v2    # "i":I
    .end local v75    # "thermalLevel":I
    .restart local v6    # "thermalLevel":I
    :cond_77
    move/from16 v75, v6

    .line 833
    .end local v6    # "thermalLevel":I
    .restart local v75    # "thermalLevel":I
    const/4 v2, 0x0

    .line 833
    .restart local v2    # "i":I
    :goto_49
    move-object/from16 v4, v39

    array-length v5, v4

    .line 833
    .end local v39    # "hispeedFreq":[I
    .local v4, "hispeedFreq":[I
    if-ge v2, v5, :cond_79

    .line 834
    aget v5, v4, v2

    const/4 v6, -0x1

    if-le v5, v6, :cond_78

    .line 835
    sget-object v5, Lcom/android/server/cpuperf/QComBoostController;->HISPEED_FREQ:[I

    aget v5, v5, v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 836
    aget v5, v4, v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 837
    iget-boolean v5, v1, Lcom/android/server/cpuperf/QComBoostController;->mDumpDebugLog:Z

    if-eqz v5, :cond_78

    .line 838
    const-string v5, "PerformanceController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v76, v3

    const-string v3, "cluster "

    .line 838
    .end local v3    # "goHispeedLoad":[I
    .restart local v76    # "goHispeedLoad":[I
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", hispeedFreq = "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v3, v4, v2

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4a

    .line 833
    .end local v76    # "goHispeedLoad":[I
    .restart local v3    # "goHispeedLoad":[I
    :cond_78
    move-object/from16 v76, v3

    .line 833
    .end local v3    # "goHispeedLoad":[I
    .restart local v76    # "goHispeedLoad":[I
    :goto_4a
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v39, v4

    move-object/from16 v3, v76

    goto :goto_49

    .line 843
    .end local v2    # "i":I
    .end local v76    # "goHispeedLoad":[I
    .restart local v3    # "goHispeedLoad":[I
    :cond_79
    move-object/from16 v76, v3

    .line 843
    .end local v3    # "goHispeedLoad":[I
    .restart local v76    # "goHispeedLoad":[I
    const/4 v2, 0x0

    .line 843
    .restart local v2    # "i":I
    :goto_4b
    move-object/from16 v3, v38

    array-length v5, v3

    .line 843
    .end local v38    # "aboveHispeedDelay":[I
    .local v3, "aboveHispeedDelay":[I
    if-ge v2, v5, :cond_7b

    .line 844
    aget v5, v3, v2

    const/4 v6, -0x1

    if-le v5, v6, :cond_7a

    .line 845
    sget-object v5, Lcom/android/server/cpuperf/QComBoostController;->ABOVE_HISPEED_DELAY:[I

    aget v5, v5, v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 846
    aget v5, v3, v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 847
    iget-boolean v5, v1, Lcom/android/server/cpuperf/QComBoostController;->mDumpDebugLog:Z

    if-eqz v5, :cond_7a

    .line 848
    const-string v5, "PerformanceController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v77, v4

    const-string v4, "cluster "

    .line 848
    .end local v4    # "hispeedFreq":[I
    .restart local v77    # "hispeedFreq":[I
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", aboveHispeedDelay = "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v4, v3, v2

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4c

    .line 843
    .end local v77    # "hispeedFreq":[I
    .restart local v4    # "hispeedFreq":[I
    :cond_7a
    move-object/from16 v77, v4

    .line 843
    .end local v4    # "hispeedFreq":[I
    .restart local v77    # "hispeedFreq":[I
    :goto_4c
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v38, v3

    move-object/from16 v4, v77

    goto :goto_4b

    .line 853
    .end local v2    # "i":I
    .end local v77    # "hispeedFreq":[I
    .restart local v4    # "hispeedFreq":[I
    :cond_7b
    move-object/from16 v77, v4

    .line 853
    .end local v4    # "hispeedFreq":[I
    .restart local v77    # "hispeedFreq":[I
    const/4 v2, 0x0

    .line 853
    .restart local v2    # "i":I
    :goto_4d
    move-object/from16 v4, v37

    array-length v5, v4

    .line 853
    .end local v37    # "schedutilHispeedLoad":[I
    .local v4, "schedutilHispeedLoad":[I
    if-ge v2, v5, :cond_7d

    .line 854
    aget v5, v4, v2

    const/4 v6, -0x1

    if-le v5, v6, :cond_7c

    .line 855
    sget-object v5, Lcom/android/server/cpuperf/QComBoostController;->SCHEDUTIL_HISPEED_LOAD:[I

    aget v5, v5, v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 856
    aget v5, v4, v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 857
    iget-boolean v5, v1, Lcom/android/server/cpuperf/QComBoostController;->mDumpDebugLog:Z

    if-eqz v5, :cond_7c

    .line 858
    const-string v5, "PerformanceController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v78, v3

    const-string v3, "cluster "

    .line 858
    .end local v3    # "aboveHispeedDelay":[I
    .restart local v78    # "aboveHispeedDelay":[I
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", schedutilHispeedLoad = "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v3, v4, v2

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4e

    .line 853
    .end local v78    # "aboveHispeedDelay":[I
    .restart local v3    # "aboveHispeedDelay":[I
    :cond_7c
    move-object/from16 v78, v3

    .line 853
    .end local v3    # "aboveHispeedDelay":[I
    .restart local v78    # "aboveHispeedDelay":[I
    :goto_4e
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v37, v4

    move-object/from16 v3, v78

    goto :goto_4d

    .line 863
    .end local v2    # "i":I
    .end local v78    # "aboveHispeedDelay":[I
    .restart local v3    # "aboveHispeedDelay":[I
    :cond_7d
    move-object/from16 v78, v3

    .line 863
    .end local v3    # "aboveHispeedDelay":[I
    .restart local v78    # "aboveHispeedDelay":[I
    const/4 v2, 0x0

    .line 863
    .restart local v2    # "i":I
    :goto_4f
    move-object/from16 v3, v36

    array-length v5, v3

    .line 863
    .end local v36    # "schedutilHispeedFreq":[I
    .local v3, "schedutilHispeedFreq":[I
    if-ge v2, v5, :cond_7f

    .line 864
    aget v5, v3, v2

    const/4 v6, -0x1

    if-le v5, v6, :cond_7e

    .line 865
    sget-object v5, Lcom/android/server/cpuperf/QComBoostController;->SCHEDUTIL_HISPEED_FREQ:[I

    aget v5, v5, v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 866
    aget v5, v3, v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 867
    iget-boolean v5, v1, Lcom/android/server/cpuperf/QComBoostController;->mDumpDebugLog:Z

    if-eqz v5, :cond_7e

    .line 868
    const-string v5, "PerformanceController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v79, v4

    const-string v4, "cluster "

    .line 868
    .end local v4    # "schedutilHispeedLoad":[I
    .restart local v79    # "schedutilHispeedLoad":[I
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", schedutilHispeedFreq = "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v4, v3, v2

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_50

    .line 863
    .end local v79    # "schedutilHispeedLoad":[I
    .restart local v4    # "schedutilHispeedLoad":[I
    :cond_7e
    move-object/from16 v79, v4

    .line 863
    .end local v4    # "schedutilHispeedLoad":[I
    .restart local v79    # "schedutilHispeedLoad":[I
    :goto_50
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v36, v3

    move-object/from16 v4, v79

    goto :goto_4f

    .line 872
    .end local v2    # "i":I
    .end local v79    # "schedutilHispeedLoad":[I
    .restart local v4    # "schedutilHispeedLoad":[I
    :cond_7f
    move-object/from16 v79, v4

    .line 872
    .end local v4    # "schedutilHispeedLoad":[I
    .restart local v79    # "schedutilHispeedLoad":[I
    iget-boolean v2, v1, Lcom/android/server/cpuperf/QComBoostController;->mDumpDebugLog:Z

    if-eqz v2, :cond_80

    .line 873
    const-string v2, "PerformanceController"

    const-string v4, "<< decideLockParameters"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 876
    :cond_80
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [I

    .line 877
    .local v2, "result":[I
    const/4 v4, 0x0

    .line 877
    .local v4, "i":I
    :goto_51
    array-length v5, v2

    if-ge v4, v5, :cond_81

    .line 878
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aput v5, v2, v4

    .line 877
    add-int/lit8 v4, v4, 0x1

    goto :goto_51

    .line 879
    .end local v4    # "i":I
    :cond_81
    move/from16 v4, v58

    const/4 v5, -0x1

    if-eq v4, v5, :cond_82

    .line 880
    .end local v58    # "schedUtilCpuFreqCtrl":I
    .local v4, "schedUtilCpuFreqCtrl":I
    const-string/jumbo v5, "persist.sys.cpu.cpufreq.ctrl"

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 882
    :cond_82
    if-gez v48, :cond_83

    const/4 v5, 0x0

    goto :goto_52

    :cond_83
    move/from16 v5, v48

    .line 883
    .end local v48    # "inputBoostFreq":I
    .local v5, "inputBoostFreq":I
    :goto_52
    if-gez v49, :cond_84

    const/16 v68, 0x0

    goto :goto_53

    :cond_84
    move/from16 v68, v49

    :goto_53
    move/from16 v6, v68

    .line 886
    .end local v49    # "inputBoostMs":I
    .local v6, "inputBoostMs":I
    move-object/from16 v80, v0

    const-string/jumbo v0, "persist.sys.cpu.input.boost.freq"

    .line 886
    .end local v0    # "parameters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local v80, "parameters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v81, v3

    const-string v3, ""

    .line 886
    .end local v3    # "schedutilHispeedFreq":[I
    .restart local v81    # "schedutilHispeedFreq":[I
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 887
    const-string/jumbo v0, "persist.sys.cpu.input.boost.ms"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 888
    return-object v2

    .line 629
    .end local v11    # "targetLoads":[I
    .end local v63    # "traceTypes":Ljava/lang/String;
    .end local v65    # "minNumCores":[I
    .end local v66    # "maxNumCores":[I
    .end local v71    # "gpuMaxPowerLevel":I
    .end local v72    # "schedSmallTask":I
    .end local v73    # "disablePowerCollapse":Z
    .end local v74    # "schedDownMigrate":[I
    .end local v75    # "thermalLevel":I
    .end local v76    # "goHispeedLoad":[I
    .end local v77    # "hispeedFreq":[I
    .end local v78    # "aboveHispeedDelay":[I
    .end local v79    # "schedutilHispeedLoad":[I
    .end local v80    # "parameters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v81    # "schedutilHispeedFreq":[I
    .local v2, "gpuMaxPowerLevel":I
    .local v3, "schedSmallTask":I
    .local v4, "disablePowerCollapse":Z
    .local v5, "minNumCores":[I
    .local v6, "maxNumCores":[I
    .local v10, "traceTypes":Ljava/lang/String;
    .restart local v36    # "schedutilHispeedFreq":[I
    .restart local v37    # "schedutilHispeedLoad":[I
    .restart local v38    # "aboveHispeedDelay":[I
    .restart local v39    # "hispeedFreq":[I
    .restart local v40    # "goHispeedLoad":[I
    .restart local v41    # "targetLoads":[I
    .restart local v48    # "inputBoostFreq":I
    .restart local v49    # "inputBoostMs":I
    .restart local v52    # "schedDownMigrate":[I
    .restart local v58    # "schedUtilCpuFreqCtrl":I
    .restart local v59    # "fanLevel":I
    .restart local v60    # "thermalLevel":I
    :catchall_20
    move-exception v0

    move/from16 v71, v2

    move/from16 v72, v3

    move/from16 v73, v4

    move-object/from16 v65, v5

    move-object/from16 v66, v6

    move-object/from16 v63, v10

    move-object/from16 v81, v36

    move-object/from16 v79, v37

    move-object/from16 v78, v38

    move-object/from16 v77, v39

    move-object/from16 v76, v40

    move-object/from16 v1, v41

    move-object/from16 v74, v52

    move/from16 v4, v58

    move/from16 v10, v59

    move/from16 v75, v60

    move/from16 v24, v4

    move/from16 v22, v10

    move/from16 v43, v15

    move/from16 v26, v48

    move/from16 v31, v49

    move-object/from16 v10, v63

    move/from16 v42, v71

    move/from16 v17, v73

    move/from16 v18, v75

    move v15, v14

    move v14, v9

    move v9, v13

    move/from16 v13, v72

    .end local v2    # "gpuMaxPowerLevel":I
    .end local v3    # "schedSmallTask":I
    .end local v5    # "minNumCores":[I
    .end local v6    # "maxNumCores":[I
    .end local v36    # "schedutilHispeedFreq":[I
    .end local v37    # "schedutilHispeedLoad":[I
    .end local v38    # "aboveHispeedDelay":[I
    .end local v39    # "hispeedFreq":[I
    .end local v40    # "goHispeedLoad":[I
    .end local v41    # "targetLoads":[I
    .end local v52    # "schedDownMigrate":[I
    .end local v58    # "schedUtilCpuFreqCtrl":I
    .end local v59    # "fanLevel":I
    .end local v60    # "thermalLevel":I
    .restart local v1    # "targetLoads":[I
    .local v4, "schedUtilCpuFreqCtrl":I
    .local v10, "fanLevel":I
    .restart local v63    # "traceTypes":Ljava/lang/String;
    .restart local v65    # "minNumCores":[I
    .restart local v66    # "maxNumCores":[I
    .restart local v71    # "gpuMaxPowerLevel":I
    .restart local v72    # "schedSmallTask":I
    .restart local v73    # "disablePowerCollapse":Z
    .restart local v74    # "schedDownMigrate":[I
    .restart local v75    # "thermalLevel":I
    .restart local v76    # "goHispeedLoad":[I
    .restart local v77    # "hispeedFreq":[I
    .restart local v78    # "aboveHispeedDelay":[I
    .restart local v79    # "schedutilHispeedLoad":[I
    .restart local v81    # "schedutilHispeedFreq":[I
    goto/16 :goto_54

    .line 629
    .end local v1    # "targetLoads":[I
    .end local v53    # "schedUpMigrate":[I
    .end local v56    # "avoidSuperGamePerf":Z
    .end local v63    # "traceTypes":Ljava/lang/String;
    .end local v65    # "minNumCores":[I
    .end local v66    # "maxNumCores":[I
    .end local v71    # "gpuMaxPowerLevel":I
    .end local v72    # "schedSmallTask":I
    .end local v73    # "disablePowerCollapse":Z
    .end local v74    # "schedDownMigrate":[I
    .end local v75    # "thermalLevel":I
    .end local v76    # "goHispeedLoad":[I
    .end local v77    # "hispeedFreq":[I
    .end local v78    # "aboveHispeedDelay":[I
    .end local v79    # "schedutilHispeedLoad":[I
    .end local v81    # "schedutilHispeedFreq":[I
    .local v2, "schedUpMigrate":[I
    .restart local v3    # "schedSmallTask":I
    .local v4, "schedDownMigrate":[I
    .restart local v5    # "minNumCores":[I
    .restart local v6    # "maxNumCores":[I
    .local v10, "traceTypes":Ljava/lang/String;
    .local v14, "avoidSuperGamePerf":Z
    .local v15, "schedMostlyIdleNRRun":I
    .restart local v36    # "schedutilHispeedFreq":[I
    .restart local v37    # "schedutilHispeedLoad":[I
    .restart local v38    # "aboveHispeedDelay":[I
    .restart local v39    # "hispeedFreq":[I
    .restart local v40    # "goHispeedLoad":[I
    .restart local v41    # "targetLoads":[I
    .restart local v42    # "gpuMaxPowerLevel":I
    .restart local v43    # "gpuMinPowerLevel":I
    .restart local v44    # "disablePowerCollapse":Z
    .restart local v45    # "thermalLevel":I
    .restart local v46    # "fanLevel":I
    .restart local v47    # "schedUtilCpuFreqCtrl":I
    :catchall_21
    move-exception v0

    move-object/from16 v53, v2

    move/from16 v72, v3

    move-object/from16 v74, v4

    move-object/from16 v65, v5

    move-object/from16 v66, v6

    move-object/from16 v63, v10

    move/from16 v56, v14

    move v14, v15

    move-object/from16 v81, v36

    move-object/from16 v79, v37

    move-object/from16 v78, v38

    move-object/from16 v77, v39

    move-object/from16 v76, v40

    move-object/from16 v1, v41

    move/from16 v71, v42

    move/from16 v15, v43

    move/from16 v73, v44

    move/from16 v75, v45

    move/from16 v10, v46

    move/from16 v4, v47

    move/from16 v24, v4

    move/from16 v22, v10

    move/from16 v26, v48

    move/from16 v31, v49

    move-object/from16 v10, v63

    move/from16 v17, v73

    move/from16 v18, v75

    move v15, v14

    move v14, v9

    move v9, v13

    move/from16 v13, v72

    .end local v2    # "schedUpMigrate":[I
    .end local v3    # "schedSmallTask":I
    .end local v5    # "minNumCores":[I
    .end local v6    # "maxNumCores":[I
    .end local v36    # "schedutilHispeedFreq":[I
    .end local v37    # "schedutilHispeedLoad":[I
    .end local v38    # "aboveHispeedDelay":[I
    .end local v39    # "hispeedFreq":[I
    .end local v40    # "goHispeedLoad":[I
    .end local v41    # "targetLoads":[I
    .end local v42    # "gpuMaxPowerLevel":I
    .end local v43    # "gpuMinPowerLevel":I
    .end local v44    # "disablePowerCollapse":Z
    .end local v45    # "thermalLevel":I
    .end local v46    # "fanLevel":I
    .end local v47    # "schedUtilCpuFreqCtrl":I
    .restart local v1    # "targetLoads":[I
    .local v4, "schedUtilCpuFreqCtrl":I
    .local v10, "fanLevel":I
    .local v14, "schedMostlyIdleNRRun":I
    .local v15, "gpuMinPowerLevel":I
    .restart local v53    # "schedUpMigrate":[I
    .restart local v56    # "avoidSuperGamePerf":Z
    .restart local v63    # "traceTypes":Ljava/lang/String;
    .restart local v65    # "minNumCores":[I
    .restart local v66    # "maxNumCores":[I
    .restart local v71    # "gpuMaxPowerLevel":I
    .restart local v72    # "schedSmallTask":I
    .restart local v73    # "disablePowerCollapse":Z
    .restart local v74    # "schedDownMigrate":[I
    .restart local v75    # "thermalLevel":I
    .restart local v76    # "goHispeedLoad":[I
    .restart local v77    # "hispeedFreq":[I
    .restart local v78    # "aboveHispeedDelay":[I
    .restart local v79    # "schedutilHispeedLoad":[I
    .restart local v81    # "schedutilHispeedFreq":[I
    goto :goto_54

    .line 629
    .end local v1    # "targetLoads":[I
    .end local v12    # "schedBoost":I
    .end local v13    # "cpuBandwidthMinFrequency":I
    .end local v15    # "gpuMinPowerLevel":I
    .end local v48    # "inputBoostFreq":I
    .end local v49    # "inputBoostMs":I
    .end local v53    # "schedUpMigrate":[I
    .end local v56    # "avoidSuperGamePerf":Z
    .end local v63    # "traceTypes":Ljava/lang/String;
    .end local v65    # "minNumCores":[I
    .end local v66    # "maxNumCores":[I
    .end local v71    # "gpuMaxPowerLevel":I
    .end local v72    # "schedSmallTask":I
    .end local v73    # "disablePowerCollapse":Z
    .end local v74    # "schedDownMigrate":[I
    .end local v75    # "thermalLevel":I
    .end local v76    # "goHispeedLoad":[I
    .end local v77    # "hispeedFreq":[I
    .end local v78    # "aboveHispeedDelay":[I
    .end local v79    # "schedutilHispeedLoad":[I
    .end local v81    # "schedutilHispeedFreq":[I
    .restart local v2    # "schedUpMigrate":[I
    .local v3, "targetLoads":[I
    .local v4, "schedDownMigrate":[I
    .restart local v5    # "minNumCores":[I
    .restart local v6    # "maxNumCores":[I
    .local v9, "goHispeedLoad":[I
    .local v10, "traceTypes":Ljava/lang/String;
    .local v14, "avoidSuperGamePerf":Z
    .restart local v17    # "disablePowerCollapse":Z
    .restart local v18    # "thermalLevel":I
    .restart local v19    # "cpuBandwidthMinFrequency":I
    .restart local v21    # "gpuMinPowerLevel":I
    .restart local v22    # "fanLevel":I
    .restart local v23    # "gpuMaxPowerLevel":I
    .restart local v24    # "schedUtilCpuFreqCtrl":I
    .restart local v25    # "schedBoost":I
    .restart local v26    # "inputBoostFreq":I
    .restart local v27    # "schedSmallTask":I
    .restart local v30    # "schedMostlyIdleLoad":I
    .restart local v31    # "inputBoostMs":I
    .restart local v34    # "schedMostlyIdleNRRun":I
    .restart local v36    # "schedutilHispeedFreq":[I
    .restart local v37    # "schedutilHispeedLoad":[I
    .restart local v38    # "aboveHispeedDelay":[I
    .restart local v39    # "hispeedFreq":[I
    :catchall_22
    move-exception v0

    move-object/from16 v53, v2

    move-object v1, v3

    move-object/from16 v74, v4

    move-object/from16 v65, v5

    move-object/from16 v66, v6

    move-object/from16 v76, v9

    move/from16 v56, v14

    move-object/from16 v81, v36

    move-object/from16 v79, v37

    move-object/from16 v78, v38

    move-object/from16 v77, v39

    move/from16 v9, v19

    move/from16 v43, v21

    move/from16 v42, v23

    move/from16 v12, v25

    move/from16 v13, v27

    move/from16 v14, v30

    move/from16 v15, v34

    .end local v2    # "schedUpMigrate":[I
    .end local v3    # "targetLoads":[I
    .end local v4    # "schedDownMigrate":[I
    .end local v5    # "minNumCores":[I
    .end local v6    # "maxNumCores":[I
    .end local v19    # "cpuBandwidthMinFrequency":I
    .end local v21    # "gpuMinPowerLevel":I
    .end local v23    # "gpuMaxPowerLevel":I
    .end local v25    # "schedBoost":I
    .end local v27    # "schedSmallTask":I
    .end local v30    # "schedMostlyIdleLoad":I
    .end local v34    # "schedMostlyIdleNRRun":I
    .end local v36    # "schedutilHispeedFreq":[I
    .end local v37    # "schedutilHispeedLoad":[I
    .end local v38    # "aboveHispeedDelay":[I
    .end local v39    # "hispeedFreq":[I
    .restart local v1    # "targetLoads":[I
    .local v9, "cpuBandwidthMinFrequency":I
    .restart local v12    # "schedBoost":I
    .local v13, "schedSmallTask":I
    .local v14, "schedMostlyIdleLoad":I
    .local v15, "schedMostlyIdleNRRun":I
    .restart local v42    # "gpuMaxPowerLevel":I
    .restart local v43    # "gpuMinPowerLevel":I
    .restart local v53    # "schedUpMigrate":[I
    .restart local v56    # "avoidSuperGamePerf":Z
    .restart local v65    # "minNumCores":[I
    .restart local v66    # "maxNumCores":[I
    .restart local v74    # "schedDownMigrate":[I
    .restart local v76    # "goHispeedLoad":[I
    .restart local v77    # "hispeedFreq":[I
    .restart local v78    # "aboveHispeedDelay":[I
    .restart local v79    # "schedutilHispeedLoad":[I
    .restart local v81    # "schedutilHispeedFreq":[I
    :goto_54
    :try_start_48
    monitor-exit v11
    :try_end_48
    .catchall {:try_start_48 .. :try_end_48} :catchall_23

    throw v0

    :catchall_23
    move-exception v0

    goto :goto_54
.end method

.method private forceGetCpuNode(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "node"    # Ljava/lang/String;

    .line 2208
    const/4 v0, 0x0

    .line 2209
    .local v0, "br":Ljava/io/BufferedReader;
    const/4 v1, 0x0

    .line 2211
    .local v1, "result":Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v0, v2

    .line 2212
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v2

    .line 2216
    nop

    .line 2218
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2221
    :goto_0
    goto :goto_1

    .line 2219
    :catch_0
    move-exception v2

    .line 2220
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .end local v2    # "e":Ljava/io/IOException;
    goto :goto_0

    .line 2216
    :catchall_0
    move-exception v2

    goto :goto_2

    .line 2213
    :catch_1
    move-exception v2

    .line 2214
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2216
    .end local v2    # "e":Ljava/lang/Exception;
    if-eqz v0, :cond_0

    .line 2218
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 2224
    :cond_0
    :goto_1
    return-object v1

    .line 2216
    :goto_2
    if-eqz v0, :cond_1

    .line 2218
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 2221
    goto :goto_3

    .line 2219
    :catch_2
    move-exception v3

    .line 2220
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 2221
    .end local v3    # "e":Ljava/io/IOException;
    :cond_1
    :goto_3
    throw v2
.end method

.method private forceSetCpuNode(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "node"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 2228
    iget-boolean v0, p0, Lcom/android/server/cpuperf/QComBoostController;->mDumpDebugLog:Z

    if-eqz v0, :cond_0

    .line 2229
    const-string v0, "PerformanceController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "forceSetCpuNode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2231
    :cond_0
    const/4 v0, 0x0

    .line 2233
    .local v0, "bw":Ljava/io/BufferedWriter;
    :try_start_0
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/FileWriter;

    invoke-direct {v2, p1}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    move-object v0, v1

    .line 2234
    invoke-virtual {v0, p2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2238
    nop

    .line 2240
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2243
    :goto_0
    goto :goto_1

    .line 2241
    :catch_0
    move-exception v1

    .line 2242
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .end local v1    # "e":Ljava/io/IOException;
    goto :goto_0

    .line 2238
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 2235
    :catch_1
    move-exception v1

    .line 2236
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2238
    .end local v1    # "e":Ljava/lang/Exception;
    if-eqz v0, :cond_1

    .line 2240
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 2246
    :cond_1
    :goto_1
    return-void

    .line 2238
    :goto_2
    if-eqz v0, :cond_2

    .line 2240
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 2243
    goto :goto_3

    .line 2241
    :catch_2
    move-exception v2

    .line 2242
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 2243
    .end local v2    # "e":Ljava/io/IOException;
    :cond_2
    :goto_3
    throw v1
.end method

.method private getCpuFreqNode(IZ)Ljava/lang/String;
    .locals 2
    .param p1, "cpu"    # I
    .param p2, "min"    # Z

    .line 2203
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/sys/devices/system/cpu/cpufreq/policy"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/scaling_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2204
    if-eqz p2, :cond_0

    const-string/jumbo v1, "min"

    goto :goto_0

    :cond_0
    const-string/jumbo v1, "max"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_freq"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2203
    return-object v0
.end method

.method private initData()V
    .locals 31

    .line 1699
    move-object/from16 v1, p0

    const-string v0, "PerformanceController"

    const-string/jumbo v2, "initData"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1702
    const-string/jumbo v0, "ro.vendor.gpu.overclock"

    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/server/cpuperf/QComBoostController;->mGpuOverclock:Z

    .line 1704
    new-instance v0, Ljava/io/File;

    const-string v3, "/system/etc/nubia_performance_thermal"

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v3, v0

    .line 1705
    .local v3, "configXml":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    const-string v4, "/data/system/nubia_performance_thermal"

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v4, v0

    .line 1706
    .local v4, "updateConfigXml":Ljava/io/File;
    const/4 v5, 0x0

    .line 1708
    .local v5, "str":Ljava/io/InputStream;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v6, 0x0

    if-eqz v0, :cond_3c

    .line 1712
    const/4 v0, 0x0

    .line 1713
    .local v0, "configContent":Ljava/lang/String;
    :try_start_0
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v7
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_8
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v7, :cond_0

    :try_start_1
    iget-boolean v7, v1, Lcom/android/server/cpuperf/QComBoostController;->mUseUpdateConfig:Z

    if-eqz v7, :cond_0

    .line 1714
    const-string v7, "PerformanceController"

    const-string v8, "There is an upgrade configuration file in the system!"

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1715
    const-string v7, "/data/system/nubia_performance_thermal"

    invoke-static {v7}, Landroid/util/NubiaPerfConfig;->readPerformaceConfigXml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v7

    goto :goto_0

    .line 1941
    .end local v0    # "configContent":Ljava/lang/String;
    :catchall_0
    move-exception v0

    move-object v2, v0

    move-object/from16 v25, v3

    goto/16 :goto_26

    .line 1937
    :catch_0
    move-exception v0

    move-object/from16 v25, v3

    goto/16 :goto_23

    .line 1934
    :catch_1
    move-exception v0

    move-object/from16 v25, v3

    goto/16 :goto_24

    .line 1927
    :catch_2
    move-exception v0

    move-object/from16 v25, v3

    goto/16 :goto_25

    .line 1717
    .restart local v0    # "configContent":Ljava/lang/String;
    :cond_0
    :try_start_2
    const-string v7, "/system/etc/nubia_performance_thermal"

    invoke-static {v7}, Landroid/util/NubiaPerfConfig;->readPerformaceConfigXml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v0, v7

    .line 1719
    .end local v0    # "configContent":Ljava/lang/String;
    .local v7, "configContent":Ljava/lang/String;
    :goto_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-direct {v0, v8}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object v5, v0

    .line 1720
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    move-object v8, v0

    .line 1721
    .local v8, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v8, v5, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1723
    :goto_1
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_a
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move v9, v0

    .line 1723
    .local v9, "type":I
    const/4 v10, 0x2

    const/4 v11, 0x1

    if-eq v0, v10, :cond_1

    if-eq v9, v11, :cond_1

    .line 1723
    .end local v9    # "type":I
    goto :goto_1

    .line 1727
    .restart local v9    # "type":I
    :cond_1
    if-eq v9, v10, :cond_2

    .line 1728
    :try_start_3
    const-string v0, "PerformanceController"

    const-string v10, "No start tag found in platform performance file."

    invoke-static {v0, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1941
    nop

    .line 1943
    :try_start_4
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 1946
    goto :goto_2

    .line 1944
    :catch_3
    move-exception v0

    move-object v2, v0

    .line 1945
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 1729
    .end local v0    # "e":Ljava/io/IOException;
    :goto_2
    return-void

    .line 1731
    :cond_2
    :try_start_5
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 1732
    .local v0, "outerDepth":I
    :goto_3
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v10
    :try_end_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_a
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_9
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_8
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move v9, v10

    if-eq v10, v11, :cond_39

    const/4 v10, 0x3

    if-ne v9, v10, :cond_4

    .line 1734
    :try_start_6
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v12
    :try_end_6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-le v12, v0, :cond_3

    goto :goto_4

    .line 1941
    .end local v0    # "outerDepth":I
    .end local v7    # "configContent":Ljava/lang/String;
    .end local v8    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v9    # "type":I
    :cond_3
    move-object/from16 v25, v3

    goto/16 :goto_21

    .line 1735
    .restart local v0    # "outerDepth":I
    .restart local v7    # "configContent":Ljava/lang/String;
    .restart local v8    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v9    # "type":I
    :cond_4
    :goto_4
    if-eq v9, v10, :cond_38

    const/4 v12, 0x4

    if-ne v9, v12, :cond_5

    .line 1737
    nop

    .line 1731
    move/from16 v22, v0

    move-object/from16 v25, v3

    move-object/from16 v30, v7

    goto/16 :goto_20

    .line 1739
    :cond_5
    :try_start_7
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v13

    .line 1740
    .local v13, "tagName":Ljava/lang/String;
    const-string/jumbo v14, "platform"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_37

    .line 1741
    const-string/jumbo v14, "name"

    invoke-interface {v8, v6, v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1742
    .local v14, "platformName":Ljava/lang/String;
    const-string v15, "androidVersion"

    invoke-interface {v8, v6, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 1743
    .local v17, "androidVersion":Ljava/lang/String;
    const-string/jumbo v15, "perfDuration"

    invoke-interface {v8, v6, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v1, v15}, Lcom/android/server/cpuperf/QComBoostController;->strToIntArray(Ljava/lang/String;)[I

    move-result-object v18

    .line 1744
    .local v18, "perfDuration":[I
    const-string/jumbo v15, "numCluster"

    invoke-interface {v8, v6, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    .line 1745
    .local v19, "numCluster":I
    const-string/jumbo v15, "numCore"

    invoke-interface {v8, v6, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    .line 1746
    .local v20, "numCore":I
    sget-object v15, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_37

    .line 1747
    new-instance v15, Lcom/android/server/cpuperf/QComBoostController$PerformanceData;

    move-object/from16 v21, v15

    move-object/from16 v16, v14

    invoke-direct/range {v15 .. v20}, Lcom/android/server/cpuperf/QComBoostController$PerformanceData;-><init>(Ljava/lang/String;Ljava/lang/String;[III)V

    move-object/from16 v15, v21

    iput-object v15, v1, Lcom/android/server/cpuperf/QComBoostController;->tmpPerfData:Lcom/android/server/cpuperf/QComBoostController$PerformanceData;

    .line 1748
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v15

    .line 1749
    .local v15, "platformDepth":I
    :goto_5
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2
    :try_end_7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_7} :catch_a
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_9
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_8
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move v9, v2

    if-eq v2, v11, :cond_37

    if-ne v9, v10, :cond_7

    .line 1751
    :try_start_8
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2
    :try_end_8
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-le v2, v15, :cond_6

    goto :goto_6

    .line 1926
    .end local v13    # "tagName":Ljava/lang/String;
    .end local v14    # "platformName":Ljava/lang/String;
    .end local v15    # "platformDepth":I
    .end local v17    # "androidVersion":Ljava/lang/String;
    .end local v18    # "perfDuration":[I
    .end local v19    # "numCluster":I
    .end local v20    # "numCore":I
    :cond_6
    move/from16 v22, v0

    move-object/from16 v25, v3

    move-object/from16 v30, v7

    goto/16 :goto_1f

    .line 1752
    .restart local v13    # "tagName":Ljava/lang/String;
    .restart local v14    # "platformName":Ljava/lang/String;
    .restart local v15    # "platformDepth":I
    .restart local v17    # "androidVersion":Ljava/lang/String;
    .restart local v18    # "perfDuration":[I
    .restart local v19    # "numCluster":I
    .restart local v20    # "numCore":I
    :cond_7
    :goto_6
    if-eq v9, v10, :cond_36

    if-ne v9, v12, :cond_8

    .line 1754
    nop

    .line 1748
    move/from16 v22, v0

    move-object/from16 v25, v3

    move-object/from16 v30, v7

    goto/16 :goto_1e

    .line 1756
    :cond_8
    :try_start_9
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 1757
    .end local v13    # "tagName":Ljava/lang/String;
    .local v2, "tagName":Ljava/lang/String;
    const-string v13, "Duration"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13
    :try_end_9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9 .. :try_end_9} :catch_a
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_8
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    if-eqz v13, :cond_c

    .line 1758
    :try_start_a
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v13

    .line 1759
    .local v13, "durationDepth":I
    :goto_7
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    move v9, v6

    if-eq v6, v11, :cond_c

    if-ne v9, v10, :cond_9

    .line 1761
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v6

    if-le v6, v13, :cond_c

    .line 1762
    :cond_9
    if-eq v9, v10, :cond_b

    if-ne v9, v12, :cond_a

    .line 1764
    goto :goto_8

    .line 1766
    :cond_a
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    move-object v2, v6

    .line 1767
    const-string/jumbo v6, "item"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 1768
    const-string/jumbo v6, "name"

    const/4 v12, 0x0

    invoke-interface {v8, v12, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1769
    .local v6, "name":Ljava/lang/String;
    const-string/jumbo v10, "value"

    invoke-interface {v8, v12, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1770
    .local v10, "value":Ljava/lang/String;
    iget-object v12, v1, Lcom/android/server/cpuperf/QComBoostController;->tmpPerfData:Lcom/android/server/cpuperf/QComBoostController$PerformanceData;

    iget-object v12, v12, Lcom/android/server/cpuperf/QComBoostController$PerformanceData;->packageDuration:Landroid/util/ArrayMap;

    invoke-virtual {v12, v6, v10}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 1771
    .end local v6    # "name":Ljava/lang/String;
    .end local v10    # "value":Ljava/lang/String;
    nop

    .line 1758
    :cond_b
    :goto_8
    const/4 v6, 0x0

    const/4 v10, 0x3

    const/4 v12, 0x4

    goto :goto_7

    .line 1775
    .end local v13    # "durationDepth":I
    :cond_c
    :try_start_b
    const-string v6, "NoTransitionAnimation"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_b .. :try_end_b} :catch_a
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_9
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_8
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    if-eqz v6, :cond_10

    .line 1776
    :try_start_c
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v6

    .line 1777
    .local v6, "durationDepth":I
    :cond_d
    :goto_9
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v10

    move v9, v10

    if-eq v10, v11, :cond_10

    const/4 v10, 0x3

    if-ne v9, v10, :cond_e

    .line 1779
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v10

    if-le v10, v6, :cond_10

    .line 1780
    :cond_e
    const/4 v10, 0x3

    if-eq v9, v10, :cond_d

    const/4 v10, 0x4

    if-ne v9, v10, :cond_f

    .line 1782
    goto :goto_9

    .line 1784
    :cond_f
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    move-object v2, v10

    .line 1785
    const-string/jumbo v10, "item"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d

    .line 1786
    const-string/jumbo v10, "name"

    const/4 v12, 0x0

    invoke-interface {v8, v12, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1787
    .local v10, "name":Ljava/lang/String;
    iget-object v12, v1, Lcom/android/server/cpuperf/QComBoostController;->tmpPerfData:Lcom/android/server/cpuperf/QComBoostController$PerformanceData;

    iget-object v12, v12, Lcom/android/server/cpuperf/QComBoostController$PerformanceData;->noTransitionAnimation:Ljava/util/ArrayList;

    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_c .. :try_end_c} :catch_2
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_1
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 1788
    .end local v10    # "name":Ljava/lang/String;
    goto :goto_9

    .line 1792
    .end local v6    # "durationDepth":I
    :cond_10
    :try_start_d
    const-string v6, "ViewOptimize"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_20

    .line 1793
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v6

    .line 1794
    .local v6, "viewOptimizeDepth":I
    :cond_11
    :goto_a
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v10
    :try_end_d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_d .. :try_end_d} :catch_a
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_9
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_8
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    move v9, v10

    if-eq v10, v11, :cond_20

    const/4 v10, 0x3

    if-ne v9, v10, :cond_13

    .line 1796
    :try_start_e
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v10
    :try_end_e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_e .. :try_end_e} :catch_2
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_1
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_0
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    if-le v10, v6, :cond_12

    goto :goto_b

    .line 1839
    .end local v6    # "viewOptimizeDepth":I
    :cond_12
    move/from16 v22, v0

    move-object/from16 v25, v3

    goto/16 :goto_15

    .line 1797
    .restart local v6    # "viewOptimizeDepth":I
    :cond_13
    :goto_b
    const/4 v10, 0x3

    if-eq v9, v10, :cond_1f

    const/4 v10, 0x4

    if-ne v9, v10, :cond_14

    .line 1799
    nop

    .line 1793
    move/from16 v22, v0

    move-object/from16 v25, v3

    goto/16 :goto_14

    .line 1801
    :cond_14
    :try_start_f
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    move-object v2, v10

    .line 1802
    const-string v10, "Optimize"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_11

    .line 1803
    const-string v10, "activityName"

    const/4 v12, 0x0

    invoke-interface {v8, v12, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1804
    .local v10, "activityName":Ljava/lang/String;
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v12

    .line 1805
    .local v12, "optimizeDepth":I
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 1806
    .local v13, "viewOptimizeInfo":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v11, v1, Lcom/android/server/cpuperf/QComBoostController;->tmpPerfData:Lcom/android/server/cpuperf/QComBoostController$PerformanceData;

    iget-object v11, v11, Lcom/android/server/cpuperf/QComBoostController$PerformanceData;->viewOptimizeInfos:Landroid/util/ArrayMap;

    invoke-virtual {v11, v10, v13}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1807
    :goto_c
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v11
    :try_end_f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_f .. :try_end_f} :catch_a
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_9
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_8
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    move v9, v11

    move/from16 v22, v0

    const/4 v0, 0x1

    if-eq v11, v0, :cond_1e

    .line 1807
    .end local v0    # "outerDepth":I
    .local v22, "outerDepth":I
    const/4 v0, 0x3

    if-ne v9, v0, :cond_16

    .line 1809
    :try_start_10
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0
    :try_end_10
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_10 .. :try_end_10} :catch_2
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_1
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_0
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    if-le v0, v12, :cond_15

    goto :goto_d

    .line 1835
    .end local v10    # "activityName":Ljava/lang/String;
    .end local v12    # "optimizeDepth":I
    .end local v13    # "viewOptimizeInfo":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_15
    move-object/from16 v25, v3

    goto/16 :goto_13

    .line 1810
    .restart local v10    # "activityName":Ljava/lang/String;
    .restart local v12    # "optimizeDepth":I
    .restart local v13    # "viewOptimizeInfo":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_16
    :goto_d
    const/4 v0, 0x3

    if-eq v9, v0, :cond_1d

    const/4 v0, 0x4

    if-ne v9, v0, :cond_17

    .line 1812
    nop

    .line 1807
    move-object/from16 v25, v3

    goto/16 :goto_11

    .line 1814
    :cond_17
    :try_start_11
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    .line 1815
    const-string/jumbo v0, "item"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 1816
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v0

    .line 1817
    .local v0, "attrCount":I
    const/4 v11, 0x0

    .line 1818
    .local v11, "sBuilder":Ljava/lang/StringBuilder;
    move-object/from16 v23, v2

    const/4 v2, 0x1

    if-le v0, v2, :cond_1a

    .line 1819
    .end local v2    # "tagName":Ljava/lang/String;
    .local v23, "tagName":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object v11, v2

    .line 1820
    const-string v2, "/"

    .line 1821
    .local v2, "separator":Ljava/lang/String;
    move-object/from16 v24, v2

    const-string/jumbo v2, "viewName"
    :try_end_11
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_11 .. :try_end_11} :catch_a
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_9
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_8
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    .line 1821
    .end local v2    # "separator":Ljava/lang/String;
    .local v24, "separator":Ljava/lang/String;
    move-object/from16 v25, v3

    const/4 v3, 0x0

    :try_start_12
    invoke-interface {v8, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1822
    .end local v3    # "configXml":Ljava/io/File;
    .local v2, "viewName":Ljava/lang/String;
    .local v25, "configXml":Ljava/io/File;
    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1823
    const/4 v3, 0x1

    .line 1823
    .local v3, "i":I
    :goto_e
    if-ge v3, v0, :cond_19

    .line 1824
    move/from16 v26, v0

    const-string/jumbo v0, "true"

    .line 1824
    .end local v0    # "attrCount":I
    .local v26, "attrCount":I
    move-object/from16 v27, v2

    invoke-interface {v8, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v2

    .line 1824
    .end local v2    # "viewName":Ljava/lang/String;
    .local v27, "viewName":Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1825
    invoke-interface {v8, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1826
    const-string v0, "/"

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1823
    :cond_18
    add-int/lit8 v3, v3, 0x1

    move/from16 v0, v26

    move-object/from16 v2, v27

    goto :goto_e

    .line 1830
    .end local v3    # "i":I
    .end local v24    # "separator":Ljava/lang/String;
    .end local v26    # "attrCount":I
    .end local v27    # "viewName":Ljava/lang/String;
    .restart local v0    # "attrCount":I
    :cond_19
    move/from16 v26, v0

    .line 1830
    .end local v0    # "attrCount":I
    .restart local v26    # "attrCount":I
    goto :goto_f

    .line 1830
    .end local v25    # "configXml":Ljava/io/File;
    .end local v26    # "attrCount":I
    .restart local v0    # "attrCount":I
    .local v3, "configXml":Ljava/io/File;
    :cond_1a
    move/from16 v26, v0

    move-object/from16 v25, v3

    .line 1830
    .end local v0    # "attrCount":I
    .end local v3    # "configXml":Ljava/io/File;
    .restart local v25    # "configXml":Ljava/io/File;
    .restart local v26    # "attrCount":I
    :goto_f
    if-eqz v11, :cond_1b

    .line 1831
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1833
    .end local v11    # "sBuilder":Ljava/lang/StringBuilder;
    .end local v26    # "attrCount":I
    :cond_1b
    goto :goto_10

    .line 1807
    .end local v23    # "tagName":Ljava/lang/String;
    .end local v25    # "configXml":Ljava/io/File;
    .local v2, "tagName":Ljava/lang/String;
    .restart local v3    # "configXml":Ljava/io/File;
    :cond_1c
    move-object/from16 v23, v2

    move-object/from16 v25, v3

    .line 1807
    .end local v2    # "tagName":Ljava/lang/String;
    .end local v3    # "configXml":Ljava/io/File;
    .restart local v23    # "tagName":Ljava/lang/String;
    .restart local v25    # "configXml":Ljava/io/File;
    :goto_10
    move/from16 v0, v22

    move-object/from16 v2, v23

    goto :goto_12

    .line 1807
    .end local v23    # "tagName":Ljava/lang/String;
    .end local v25    # "configXml":Ljava/io/File;
    .restart local v2    # "tagName":Ljava/lang/String;
    .restart local v3    # "configXml":Ljava/io/File;
    :cond_1d
    move-object/from16 v25, v3

    .line 1807
    .end local v3    # "configXml":Ljava/io/File;
    .restart local v25    # "configXml":Ljava/io/File;
    :goto_11
    move/from16 v0, v22

    .line 1807
    .end local v22    # "outerDepth":I
    .end local v25    # "configXml":Ljava/io/File;
    .local v0, "outerDepth":I
    .restart local v3    # "configXml":Ljava/io/File;
    :goto_12
    move-object/from16 v3, v25

    goto/16 :goto_c

    .line 1835
    .end local v0    # "outerDepth":I
    .end local v10    # "activityName":Ljava/lang/String;
    .end local v12    # "optimizeDepth":I
    .end local v13    # "viewOptimizeInfo":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v22    # "outerDepth":I
    :cond_1e
    move-object/from16 v25, v3

    .line 1835
    .end local v3    # "configXml":Ljava/io/File;
    .restart local v25    # "configXml":Ljava/io/File;
    :goto_13
    goto :goto_14

    .line 1793
    .end local v22    # "outerDepth":I
    .end local v25    # "configXml":Ljava/io/File;
    .restart local v0    # "outerDepth":I
    .restart local v3    # "configXml":Ljava/io/File;
    :cond_1f
    move/from16 v22, v0

    move-object/from16 v25, v3

    :goto_14
    move/from16 v0, v22

    move-object/from16 v3, v25

    const/4 v11, 0x1

    goto/16 :goto_a

    .line 1839
    .end local v6    # "viewOptimizeDepth":I
    :cond_20
    move/from16 v22, v0

    move-object/from16 v25, v3

    .line 1839
    .end local v0    # "outerDepth":I
    .end local v3    # "configXml":Ljava/io/File;
    .restart local v22    # "outerDepth":I
    .restart local v25    # "configXml":Ljava/io/File;
    :goto_15
    const-string v0, "PerformanceGroups"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 1840
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 1841
    .local v0, "perfGroupsDepth":I
    :cond_21
    :goto_16
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    move v9, v3

    const/4 v6, 0x1

    if-eq v3, v6, :cond_28

    const/4 v3, 0x3

    if-ne v9, v3, :cond_22

    .line 1843
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v0, :cond_28

    .line 1844
    :cond_22
    const/4 v3, 0x3

    if-eq v9, v3, :cond_21

    const/4 v3, 0x4

    if-ne v9, v3, :cond_23

    .line 1846
    goto :goto_16

    .line 1848
    :cond_23
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 1849
    const-string v3, "PerformanceGroup"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 1850
    const-string/jumbo v3, "name"

    const/4 v6, 0x0

    invoke-interface {v8, v6, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1851
    .local v3, "perfGroupName":Ljava/lang/String;
    const-string v6, "PerformanceController"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, ">>>>>>find perfGroupName name = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1852
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v6

    .line 1853
    .local v6, "groupPerfDepth":I
    new-instance v10, Lcom/android/server/cpuperf/QComBoostController$LockParameters;

    iget-object v11, v1, Lcom/android/server/cpuperf/QComBoostController;->tmpPerfData:Lcom/android/server/cpuperf/QComBoostController$PerformanceData;

    iget v11, v11, Lcom/android/server/cpuperf/QComBoostController$PerformanceData;->numCluster:I

    iget-object v12, v1, Lcom/android/server/cpuperf/QComBoostController;->tmpPerfData:Lcom/android/server/cpuperf/QComBoostController$PerformanceData;

    iget v12, v12, Lcom/android/server/cpuperf/QComBoostController$PerformanceData;->numCore:I

    invoke-direct {v10, v11, v12}, Lcom/android/server/cpuperf/QComBoostController$LockParameters;-><init>(II)V

    .line 1854
    .local v10, "lckParm":Lcom/android/server/cpuperf/QComBoostController$LockParameters;
    iget-object v11, v1, Lcom/android/server/cpuperf/QComBoostController;->tmpPerfData:Lcom/android/server/cpuperf/QComBoostController$PerformanceData;

    iget-object v11, v11, Lcom/android/server/cpuperf/QComBoostController$PerformanceData;->performanceGroups:Landroid/util/ArrayMap;

    invoke-virtual {v11, v3, v10}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1855
    :cond_24
    :goto_17
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v11

    move v9, v11

    const/4 v12, 0x1

    if-eq v11, v12, :cond_27

    const/4 v11, 0x3

    if-ne v9, v11, :cond_25

    .line 1857
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v11

    if-le v11, v6, :cond_27

    .line 1858
    :cond_25
    const/4 v11, 0x3

    if-eq v9, v11, :cond_24

    const/4 v11, 0x4

    if-ne v9, v11, :cond_26

    .line 1860
    goto :goto_17

    .line 1862
    :cond_26
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    move-object v2, v11

    .line 1863
    const-string/jumbo v11, "item"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_24

    .line 1864
    invoke-direct {v1, v8, v10}, Lcom/android/server/cpuperf/QComBoostController;->readPerfData(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/cpuperf/QComBoostController$LockParameters;)V

    goto :goto_17

    .line 1867
    .end local v3    # "perfGroupName":Ljava/lang/String;
    .end local v6    # "groupPerfDepth":I
    .end local v10    # "lckParm":Lcom/android/server/cpuperf/QComBoostController$LockParameters;
    :cond_27
    goto/16 :goto_16

    .line 1871
    .end local v0    # "perfGroupsDepth":I
    :cond_28
    const-string v0, "FullOnCpuset"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 1872
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 1873
    .local v0, "durationDepth":I
    :cond_29
    :goto_18
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    move v9, v3

    const/4 v6, 0x1

    if-eq v3, v6, :cond_2c

    const/4 v3, 0x3

    if-ne v9, v3, :cond_2a

    .line 1875
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v0, :cond_2c

    .line 1876
    :cond_2a
    const/4 v3, 0x3

    if-eq v9, v3, :cond_29

    const/4 v3, 0x4

    if-ne v9, v3, :cond_2b

    .line 1878
    goto :goto_18

    .line 1880
    :cond_2b
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 1881
    const-string/jumbo v3, "item"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_29

    .line 1882
    const-string/jumbo v3, "name"

    const/4 v6, 0x0

    invoke-interface {v8, v6, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1883
    .local v3, "name":Ljava/lang/String;
    iget-object v6, v1, Lcom/android/server/cpuperf/QComBoostController;->tmpPerfData:Lcom/android/server/cpuperf/QComBoostController$PerformanceData;

    iget-object v6, v6, Lcom/android/server/cpuperf/QComBoostController$PerformanceData;->fullOnCpuset:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1884
    .end local v3    # "name":Ljava/lang/String;
    goto :goto_18

    .line 1888
    .end local v0    # "durationDepth":I
    :cond_2c
    move-object v13, v2

    .line 1888
    .end local v2    # "tagName":Ljava/lang/String;
    .local v13, "tagName":Ljava/lang/String;
    const-string/jumbo v0, "performance"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 1889
    const-string/jumbo v0, "type"

    const/4 v2, 0x0

    invoke-interface {v8, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1890
    .local v0, "perfType":I
    const-string/jumbo v3, "name"

    invoke-interface {v8, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 1891
    .local v2, "perfName":Ljava/lang/String;
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    .line 1892
    .local v3, "perfDepth":I
    new-instance v6, Lcom/android/server/cpuperf/QComBoostController$LockParameters;

    iget-object v10, v1, Lcom/android/server/cpuperf/QComBoostController;->tmpPerfData:Lcom/android/server/cpuperf/QComBoostController$PerformanceData;

    iget v10, v10, Lcom/android/server/cpuperf/QComBoostController$PerformanceData;->numCluster:I

    iget-object v11, v1, Lcom/android/server/cpuperf/QComBoostController;->tmpPerfData:Lcom/android/server/cpuperf/QComBoostController$PerformanceData;

    iget v11, v11, Lcom/android/server/cpuperf/QComBoostController$PerformanceData;->numCore:I

    invoke-direct {v6, v10, v11}, Lcom/android/server/cpuperf/QComBoostController$LockParameters;-><init>(II)V

    .line 1893
    .local v6, "lckParm":Lcom/android/server/cpuperf/QComBoostController$LockParameters;
    iget-object v10, v1, Lcom/android/server/cpuperf/QComBoostController;->tmpPerfData:Lcom/android/server/cpuperf/QComBoostController$PerformanceData;

    iget-object v10, v10, Lcom/android/server/cpuperf/QComBoostController$PerformanceData;->perfData:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/util/ArrayMap;

    .line 1894
    .local v10, "unknownPerf":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/cpuperf/QComBoostController$LockParameters;>;"
    if-nez v10, :cond_2d

    .line 1895
    new-instance v11, Landroid/util/ArrayMap;

    invoke-direct {v11}, Landroid/util/ArrayMap;-><init>()V

    move-object v10, v11

    .line 1896
    iget-object v11, v1, Lcom/android/server/cpuperf/QComBoostController;->tmpPerfData:Lcom/android/server/cpuperf/QComBoostController$PerformanceData;

    iget-object v11, v11, Lcom/android/server/cpuperf/QComBoostController$PerformanceData;->perfData:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1898
    :cond_2d
    iget-object v11, v1, Lcom/android/server/cpuperf/QComBoostController;->tmpPerfData:Lcom/android/server/cpuperf/QComBoostController$PerformanceData;

    iget-object v11, v11, Lcom/android/server/cpuperf/QComBoostController$PerformanceData;->perfData:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/util/ArrayMap;

    invoke-virtual {v11, v2, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1899
    :goto_19
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v11

    move v9, v11

    const/4 v12, 0x1

    if-eq v11, v12, :cond_34

    const/4 v11, 0x3

    if-ne v9, v11, :cond_2f

    .line 1901
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v11

    if-le v11, v3, :cond_2e

    goto :goto_1a

    .line 1922
    .end local v0    # "perfType":I
    .end local v2    # "perfName":Ljava/lang/String;
    .end local v3    # "perfDepth":I
    .end local v6    # "lckParm":Lcom/android/server/cpuperf/QComBoostController$LockParameters;
    .end local v10    # "unknownPerf":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/cpuperf/QComBoostController$LockParameters;>;"
    :cond_2e
    move-object/from16 v30, v7

    goto/16 :goto_1d

    .line 1902
    .restart local v0    # "perfType":I
    .restart local v2    # "perfName":Ljava/lang/String;
    .restart local v3    # "perfDepth":I
    .restart local v6    # "lckParm":Lcom/android/server/cpuperf/QComBoostController$LockParameters;
    .restart local v10    # "unknownPerf":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/cpuperf/QComBoostController$LockParameters;>;"
    :cond_2f
    :goto_1a
    const/4 v11, 0x3

    if-eq v9, v11, :cond_33

    const/4 v11, 0x4

    if-ne v9, v11, :cond_30

    .line 1904
    nop

    .line 1899
    move/from16 v29, v0

    move/from16 v28, v3

    move-object/from16 v30, v7

    goto/16 :goto_1c

    .line 1906
    :cond_30
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v13, v16

    .line 1907
    const-string/jumbo v11, "item"

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_33

    .line 1908
    const-string/jumbo v11, "name"

    const/4 v12, 0x0

    invoke-interface {v8, v12, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1909
    .local v11, "name":Ljava/lang/String;
    const-string/jumbo v12, "value"

    move/from16 v28, v3

    const/4 v3, 0x0

    invoke-interface {v8, v3, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1909
    .end local v3    # "perfDepth":I
    .local v28, "perfDepth":I
    move-object v3, v12

    .line 1910
    .local v3, "value":Ljava/lang/String;
    const-string v12, "followPerformanceGroup"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_32

    .line 1911
    iget-object v12, v1, Lcom/android/server/cpuperf/QComBoostController;->tmpPerfData:Lcom/android/server/cpuperf/QComBoostController$PerformanceData;

    iget-object v12, v12, Lcom/android/server/cpuperf/QComBoostController$PerformanceData;->performanceGroups:Landroid/util/ArrayMap;

    invoke-virtual {v12, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    if-eqz v12, :cond_31

    .line 1912
    iget-object v12, v1, Lcom/android/server/cpuperf/QComBoostController;->tmpPerfData:Lcom/android/server/cpuperf/QComBoostController$PerformanceData;

    iget-object v12, v12, Lcom/android/server/cpuperf/QComBoostController$PerformanceData;->performanceGroups:Landroid/util/ArrayMap;

    invoke-virtual {v12, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/cpuperf/QComBoostController$LockParameters;

    invoke-virtual {v6, v12}, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->clone(Lcom/android/server/cpuperf/QComBoostController$LockParameters;)V

    .line 1913
    const-string v12, "PerformanceController"

    move/from16 v29, v0

    new-instance v0, Ljava/lang/StringBuilder;

    .line 1913
    .end local v0    # "perfType":I
    .local v29, "perfType":I
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v30, v7

    const-string v7, ">>>>>>Found following performanceGroup name = "

    .line 1913
    .end local v7    # "configContent":Ljava/lang/String;
    .local v30, "configContent":Ljava/lang/String;
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " for game app = "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b

    .line 1915
    .end local v29    # "perfType":I
    .end local v30    # "configContent":Ljava/lang/String;
    .restart local v0    # "perfType":I
    .restart local v7    # "configContent":Ljava/lang/String;
    :cond_31
    move/from16 v29, v0

    move-object/from16 v30, v7

    .line 1915
    .end local v0    # "perfType":I
    .end local v7    # "configContent":Ljava/lang/String;
    .restart local v29    # "perfType":I
    .restart local v30    # "configContent":Ljava/lang/String;
    const-string v0, "PerformanceController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, ">>>>>>Can not find following lock parms for app :"

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " and performanceGroup name = "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b

    .line 1918
    .end local v29    # "perfType":I
    .end local v30    # "configContent":Ljava/lang/String;
    .restart local v0    # "perfType":I
    .restart local v7    # "configContent":Ljava/lang/String;
    :cond_32
    move/from16 v29, v0

    move-object/from16 v30, v7

    .line 1918
    .end local v0    # "perfType":I
    .end local v7    # "configContent":Ljava/lang/String;
    .restart local v29    # "perfType":I
    .restart local v30    # "configContent":Ljava/lang/String;
    invoke-direct {v1, v8, v6}, Lcom/android/server/cpuperf/QComBoostController;->readPerfData(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/cpuperf/QComBoostController$LockParameters;)V
    :try_end_12
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_12 .. :try_end_12} :catch_6
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_5
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_4
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    .line 1920
    .end local v3    # "value":Ljava/lang/String;
    .end local v11    # "name":Ljava/lang/String;
    :goto_1b
    goto :goto_1c

    .line 1899
    .end local v28    # "perfDepth":I
    .end local v29    # "perfType":I
    .end local v30    # "configContent":Ljava/lang/String;
    .restart local v0    # "perfType":I
    .local v3, "perfDepth":I
    .restart local v7    # "configContent":Ljava/lang/String;
    :cond_33
    move/from16 v29, v0

    move/from16 v28, v3

    move-object/from16 v30, v7

    .line 1899
    .end local v0    # "perfType":I
    .end local v3    # "perfDepth":I
    .end local v7    # "configContent":Ljava/lang/String;
    .restart local v28    # "perfDepth":I
    .restart local v29    # "perfType":I
    .restart local v30    # "configContent":Ljava/lang/String;
    :goto_1c
    move/from16 v3, v28

    move/from16 v0, v29

    move-object/from16 v7, v30

    goto/16 :goto_19

    .line 1922
    .end local v2    # "perfName":Ljava/lang/String;
    .end local v6    # "lckParm":Lcom/android/server/cpuperf/QComBoostController$LockParameters;
    .end local v10    # "unknownPerf":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/cpuperf/QComBoostController$LockParameters;>;"
    .end local v28    # "perfDepth":I
    .end local v29    # "perfType":I
    .end local v30    # "configContent":Ljava/lang/String;
    .restart local v7    # "configContent":Ljava/lang/String;
    :cond_34
    move-object/from16 v30, v7

    .line 1922
    .end local v7    # "configContent":Ljava/lang/String;
    .restart local v30    # "configContent":Ljava/lang/String;
    :goto_1d
    goto :goto_1e

    .line 1748
    .end local v30    # "configContent":Ljava/lang/String;
    .restart local v7    # "configContent":Ljava/lang/String;
    :cond_35
    move/from16 v0, v22

    move-object/from16 v3, v25

    const/4 v2, 0x0

    const/4 v6, 0x0

    const/4 v10, 0x3

    const/4 v11, 0x1

    const/4 v12, 0x4

    .line 1748
    .end local v7    # "configContent":Ljava/lang/String;
    .restart local v30    # "configContent":Ljava/lang/String;
    goto/16 :goto_5

    .line 1937
    .end local v8    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v9    # "type":I
    .end local v13    # "tagName":Ljava/lang/String;
    .end local v14    # "platformName":Ljava/lang/String;
    .end local v15    # "platformDepth":I
    .end local v17    # "androidVersion":Ljava/lang/String;
    .end local v18    # "perfDuration":[I
    .end local v19    # "numCluster":I
    .end local v20    # "numCore":I
    .end local v22    # "outerDepth":I
    .end local v30    # "configContent":Ljava/lang/String;
    :catch_4
    move-exception v0

    goto :goto_23

    .line 1934
    :catch_5
    move-exception v0

    goto/16 :goto_24

    .line 1927
    :catch_6
    move-exception v0

    goto/16 :goto_25

    .line 1748
    .end local v25    # "configXml":Ljava/io/File;
    .local v0, "outerDepth":I
    .local v3, "configXml":Ljava/io/File;
    .restart local v7    # "configContent":Ljava/lang/String;
    .restart local v8    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v9    # "type":I
    .restart local v13    # "tagName":Ljava/lang/String;
    .restart local v14    # "platformName":Ljava/lang/String;
    .restart local v15    # "platformDepth":I
    .restart local v17    # "androidVersion":Ljava/lang/String;
    .restart local v18    # "perfDuration":[I
    .restart local v19    # "numCluster":I
    .restart local v20    # "numCore":I
    :cond_36
    move/from16 v22, v0

    move-object/from16 v25, v3

    move-object/from16 v30, v7

    :goto_1e
    move/from16 v0, v22

    move-object/from16 v3, v25

    move-object/from16 v7, v30

    const/4 v2, 0x0

    const/4 v6, 0x0

    const/4 v10, 0x3

    const/4 v11, 0x1

    const/4 v12, 0x4

    goto/16 :goto_5

    .line 1926
    .end local v13    # "tagName":Ljava/lang/String;
    .end local v14    # "platformName":Ljava/lang/String;
    .end local v15    # "platformDepth":I
    .end local v17    # "androidVersion":Ljava/lang/String;
    .end local v18    # "perfDuration":[I
    .end local v19    # "numCluster":I
    .end local v20    # "numCore":I
    :cond_37
    move/from16 v22, v0

    move-object/from16 v25, v3

    move-object/from16 v30, v7

    .line 1926
    .end local v0    # "outerDepth":I
    .end local v3    # "configXml":Ljava/io/File;
    .end local v7    # "configContent":Ljava/lang/String;
    .restart local v22    # "outerDepth":I
    .restart local v25    # "configXml":Ljava/io/File;
    .restart local v30    # "configContent":Ljava/lang/String;
    :goto_1f
    goto :goto_20

    .line 1731
    .end local v22    # "outerDepth":I
    .end local v25    # "configXml":Ljava/io/File;
    .end local v30    # "configContent":Ljava/lang/String;
    .restart local v0    # "outerDepth":I
    .restart local v3    # "configXml":Ljava/io/File;
    .restart local v7    # "configContent":Ljava/lang/String;
    :cond_38
    move/from16 v22, v0

    move-object/from16 v25, v3

    move-object/from16 v30, v7

    :goto_20
    move/from16 v0, v22

    move-object/from16 v3, v25

    move-object/from16 v7, v30

    const/4 v2, 0x0

    const/4 v6, 0x0

    const/4 v11, 0x1

    goto/16 :goto_3

    .line 1941
    .end local v0    # "outerDepth":I
    .end local v7    # "configContent":Ljava/lang/String;
    .end local v8    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v9    # "type":I
    :cond_39
    move-object/from16 v25, v3

    .line 1943
    .end local v3    # "configXml":Ljava/io/File;
    .restart local v25    # "configXml":Ljava/io/File;
    :goto_21
    :try_start_13
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_7

    .line 1946
    :goto_22
    goto/16 :goto_28

    .line 1944
    :catch_7
    move-exception v0

    move-object v2, v0

    .line 1945
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 1945
    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_22

    .line 1941
    .end local v25    # "configXml":Ljava/io/File;
    .restart local v3    # "configXml":Ljava/io/File;
    :catchall_1
    move-exception v0

    move-object/from16 v25, v3

    move-object v2, v0

    .line 1941
    .end local v3    # "configXml":Ljava/io/File;
    .restart local v25    # "configXml":Ljava/io/File;
    goto/16 :goto_26

    .line 1937
    .end local v25    # "configXml":Ljava/io/File;
    .restart local v3    # "configXml":Ljava/io/File;
    :catch_8
    move-exception v0

    move-object/from16 v25, v3

    .line 1938
    .end local v3    # "configXml":Ljava/io/File;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v25    # "configXml":Ljava/io/File;
    :goto_23
    :try_start_14
    const-string v2, "PerformanceController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error reading: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1939
    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/server/cpuperf/QComBoostController;->tmpPerfData:Lcom/android/server/cpuperf/QComBoostController$PerformanceData;
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_2

    .line 1941
    .end local v0    # "e":Ljava/lang/Exception;
    if-eqz v5, :cond_3d

    .line 1943
    :try_start_15
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_7

    goto :goto_22

    .line 1934
    .end local v25    # "configXml":Ljava/io/File;
    .restart local v3    # "configXml":Ljava/io/File;
    :catch_9
    move-exception v0

    move-object/from16 v25, v3

    .line 1935
    .end local v3    # "configXml":Ljava/io/File;
    .local v0, "e":Ljava/io/IOException;
    .restart local v25    # "configXml":Ljava/io/File;
    :goto_24
    :try_start_16
    const-string v2, "PerformanceController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error reading: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1936
    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/server/cpuperf/QComBoostController;->tmpPerfData:Lcom/android/server/cpuperf/QComBoostController$PerformanceData;
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_2

    .line 1941
    .end local v0    # "e":Ljava/io/IOException;
    if-eqz v5, :cond_3d

    .line 1943
    :try_start_17
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_7

    goto :goto_22

    .line 1927
    .end local v25    # "configXml":Ljava/io/File;
    .restart local v3    # "configXml":Ljava/io/File;
    :catch_a
    move-exception v0

    move-object/from16 v25, v3

    .line 1928
    .end local v3    # "configXml":Ljava/io/File;
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v25    # "configXml":Ljava/io/File;
    :goto_25
    :try_start_18
    const-string v2, "PerformanceController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error reading: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1929
    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/server/cpuperf/QComBoostController;->tmpPerfData:Lcom/android/server/cpuperf/QComBoostController$PerformanceData;

    .line 1930
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3a

    iget-boolean v2, v1, Lcom/android/server/cpuperf/QComBoostController;->mUseUpdateConfig:Z

    if-eqz v2, :cond_3a

    .line 1931
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 1932
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/server/cpuperf/QComBoostController;->mUseUpdateConfig:Z
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_2

    .line 1941
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :cond_3a
    if-eqz v5, :cond_3d

    .line 1943
    :try_start_19
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_7

    goto/16 :goto_22

    .line 1941
    :catchall_2
    move-exception v0

    move-object v2, v0

    :goto_26
    if-eqz v5, :cond_3b

    .line 1943
    :try_start_1a
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_b

    .line 1946
    goto :goto_27

    .line 1944
    :catch_b
    move-exception v0

    move-object v3, v0

    .line 1945
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 1946
    .end local v0    # "e":Ljava/io/IOException;
    :cond_3b
    :goto_27
    throw v2

    .line 1951
    .end local v25    # "configXml":Ljava/io/File;
    .restart local v3    # "configXml":Ljava/io/File;
    :cond_3c
    move-object/from16 v25, v3

    .line 1951
    .end local v3    # "configXml":Ljava/io/File;
    .restart local v25    # "configXml":Ljava/io/File;
    :cond_3d
    :goto_28
    iget-object v0, v1, Lcom/android/server/cpuperf/QComBoostController;->tmpPerfData:Lcom/android/server/cpuperf/QComBoostController$PerformanceData;

    if-eqz v0, :cond_40

    .line 1952
    iget-boolean v0, v1, Lcom/android/server/cpuperf/QComBoostController;->mDumpDebugLog:Z

    if-eqz v0, :cond_3e

    .line 1953
    const-string v0, "PerformanceController"

    iget-object v2, v1, Lcom/android/server/cpuperf/QComBoostController;->tmpPerfData:Lcom/android/server/cpuperf/QComBoostController$PerformanceData;

    invoke-virtual {v2}, Lcom/android/server/cpuperf/QComBoostController$PerformanceData;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1954
    :cond_3e
    iget-object v0, v1, Lcom/android/server/cpuperf/QComBoostController;->tmpPerfData:Lcom/android/server/cpuperf/QComBoostController$PerformanceData;

    invoke-direct {v1, v0}, Lcom/android/server/cpuperf/QComBoostController;->validatePerfData(Lcom/android/server/cpuperf/QComBoostController$PerformanceData;)Z

    move-result v0

    if-nez v0, :cond_3f

    .line 1955
    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/server/cpuperf/QComBoostController;->tmpPerfData:Lcom/android/server/cpuperf/QComBoostController$PerformanceData;

    goto :goto_29

    .line 1957
    :cond_3f
    sget-object v2, Lcom/android/server/cpuperf/QComBoostController;->perfObj:Ljava/lang/Object;

    monitor-enter v2

    .line 1958
    :try_start_1b
    iget-object v0, v1, Lcom/android/server/cpuperf/QComBoostController;->tmpPerfData:Lcom/android/server/cpuperf/QComBoostController$PerformanceData;

    iput-object v0, v1, Lcom/android/server/cpuperf/QComBoostController;->mPerfData:Lcom/android/server/cpuperf/QComBoostController$PerformanceData;

    .line 1959
    monitor-exit v2

    goto :goto_29

    :catchall_3
    move-exception v0

    monitor-exit v2
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_3

    throw v0

    .line 1962
    :cond_40
    :goto_29
    return-void
.end method

.method private readIntFromFile(Ljava/lang/String;)I
    .locals 5
    .param p1, "path"    # Ljava/lang/String;

    .line 2147
    invoke-direct {p0, p1}, Lcom/android/server/cpuperf/QComBoostController;->readLineFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2149
    .local v0, "line":Ljava/lang/String;
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2150
    .local v1, "result":I
    return v1

    .line 2151
    .end local v1    # "result":I
    :catch_0
    move-exception v1

    .line 2152
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "PerformanceController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to parse "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2153
    const/4 v2, 0x0

    return v2
.end method

.method private readLineFromFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "path"    # Ljava/lang/String;

    .line 2129
    const/4 v0, 0x0

    move-object v1, v0

    .line 2131
    .local v1, "br":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v1, v2

    .line 2132
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2135
    nop

    .line 2137
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 2139
    goto :goto_0

    .line 2138
    :catch_0
    move-exception v0

    .line 2132
    :goto_0
    return-object v2

    .line 2135
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_0

    .line 2137
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 2139
    goto :goto_1

    .line 2138
    :catch_1
    move-exception v2

    .line 2139
    :cond_0
    :goto_1
    throw v0

    .line 2133
    :catch_2
    move-exception v2

    .line 2135
    if-eqz v1, :cond_1

    .line 2137
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 2139
    :goto_2
    goto :goto_3

    .line 2138
    :catch_3
    move-exception v2

    goto :goto_2

    .line 2143
    :cond_1
    :goto_3
    return-object v0
.end method

.method private readPerfData(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/cpuperf/QComBoostController$LockParameters;)V
    .locals 8
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "lckParm"    # Lcom/android/server/cpuperf/QComBoostController$LockParameters;

    .line 1965
    const-string/jumbo v0, "name"

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1966
    .local v0, "name":Ljava/lang/String;
    const-string/jumbo v2, "value"

    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1967
    .local v1, "value":Ljava/lang/String;
    const-string/jumbo v2, "minNumCores"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1968
    invoke-direct {p0, v1}, Lcom/android/server/cpuperf/QComBoostController;->strToIntArray(Ljava/lang/String;)[I

    move-result-object v2

    iput-object v2, p2, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->minNumCores:[I

    goto/16 :goto_2

    .line 1969
    :cond_0
    const-string/jumbo v2, "maxNumCores"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1970
    invoke-direct {p0, v1}, Lcom/android/server/cpuperf/QComBoostController;->strToIntArray(Ljava/lang/String;)[I

    move-result-object v2

    iput-object v2, p2, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->maxNumCores:[I

    goto/16 :goto_2

    .line 1971
    :cond_1
    const-string/jumbo v2, "minFreq"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1972
    invoke-direct {p0, v1}, Lcom/android/server/cpuperf/QComBoostController;->strToIntArray(Ljava/lang/String;)[I

    move-result-object v2

    iput-object v2, p2, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->minFrequencies:[I

    goto/16 :goto_2

    .line 1973
    :cond_2
    const-string/jumbo v2, "maxFreq"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1974
    invoke-direct {p0, v1}, Lcom/android/server/cpuperf/QComBoostController;->strToIntArray(Ljava/lang/String;)[I

    move-result-object v2

    iput-object v2, p2, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->maxFrequencies:[I

    goto/16 :goto_2

    .line 1975
    :cond_3
    const-string v2, "cpubw_min_freq"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1976
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p2, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->cpuBandwidthMinFrequency:I

    goto/16 :goto_2

    .line 1977
    :cond_4
    const-string/jumbo v2, "schedBoost"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v2, :cond_9

    .line 1978
    const-string/jumbo v2, "true"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_0

    .line 1980
    :cond_5
    const-string v2, "2"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1981
    iput v4, p2, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->schedBoost:I

    goto/16 :goto_2

    .line 1982
    :cond_6
    const-string v2, "3"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1983
    iput v3, p2, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->schedBoost:I

    goto/16 :goto_2

    .line 1985
    :cond_7
    iput v6, p2, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->schedBoost:I

    goto/16 :goto_2

    .line 1979
    :cond_8
    :goto_0
    iput v5, p2, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->schedBoost:I

    goto/16 :goto_2

    .line 1987
    :cond_9
    const-string/jumbo v2, "schedSmallTask"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1988
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p2, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->schedSmallTask:I

    goto/16 :goto_2

    .line 1989
    :cond_a
    const-string/jumbo v2, "schedMostlyIdleLoad"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1990
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p2, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->schedMostlyIdleLoad:I

    goto/16 :goto_2

    .line 1991
    :cond_b
    const-string/jumbo v2, "schedMostlyIdleNRRun"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1992
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p2, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->schedMostlyIdleNRRun:I

    goto/16 :goto_2

    .line 1993
    :cond_c
    const-string/jumbo v2, "schedUpMigrate"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1994
    invoke-direct {p0, v1}, Lcom/android/server/cpuperf/QComBoostController;->strToIntArray(Ljava/lang/String;)[I

    move-result-object v2

    iput-object v2, p2, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->schedUpMigrate:[I

    goto/16 :goto_2

    .line 1995
    :cond_d
    const-string/jumbo v2, "schedDownMigrate"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1996
    invoke-direct {p0, v1}, Lcom/android/server/cpuperf/QComBoostController;->strToIntArray(Ljava/lang/String;)[I

    move-result-object v2

    iput-object v2, p2, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->schedDownMigrate:[I

    goto/16 :goto_2

    .line 1997
    :cond_e
    const-string v2, "gpuMinPowerLevel"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 1998
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p2, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->gpuMinPowerLevel:I

    goto/16 :goto_2

    .line 1999
    :cond_f
    const-string v2, "gpuMaxPowerLevel"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 2000
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p2, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->gpuMaxPowerLevel:I

    goto/16 :goto_2

    .line 2001
    :cond_10
    const-string v2, "disablePowerCollapse"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 2002
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p2, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->disablePowerCollapse:Z

    goto/16 :goto_2

    .line 2003
    :cond_11
    const-string/jumbo v2, "targetLoad"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 2004
    invoke-direct {p0, v1}, Lcom/android/server/cpuperf/QComBoostController;->strToIntArray(Ljava/lang/String;)[I

    move-result-object v2

    iput-object v2, p2, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->targetLoads:[I

    goto/16 :goto_2

    .line 2005
    :cond_12
    const-string v2, "hispeedFreq"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 2006
    invoke-direct {p0, v1}, Lcom/android/server/cpuperf/QComBoostController;->strToIntArray(Ljava/lang/String;)[I

    move-result-object v2

    iput-object v2, p2, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->hispeedFreq:[I

    goto/16 :goto_2

    .line 2007
    :cond_13
    const-string v2, "goHispeedLoad"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 2008
    invoke-direct {p0, v1}, Lcom/android/server/cpuperf/QComBoostController;->strToIntArray(Ljava/lang/String;)[I

    move-result-object v2

    iput-object v2, p2, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->goHispeedLoad:[I

    goto/16 :goto_2

    .line 2009
    :cond_14
    const-string v2, "aboveHispeedDelay"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 2010
    invoke-direct {p0, v1}, Lcom/android/server/cpuperf/QComBoostController;->strToIntArray(Ljava/lang/String;)[I

    move-result-object v2

    iput-object v2, p2, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->aboveHispeedDelay:[I

    goto/16 :goto_2

    .line 2011
    :cond_15
    const-string/jumbo v2, "thermalLevel"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 2012
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p2, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->thermalLevel:I

    goto/16 :goto_2

    .line 2013
    :cond_16
    const-string/jumbo v2, "restricted"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 2014
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p2, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->restricted:Z

    goto/16 :goto_2

    .line 2015
    :cond_17
    const-string/jumbo v2, "schedutilHispeedFreq"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 2016
    invoke-direct {p0, v1}, Lcom/android/server/cpuperf/QComBoostController;->strToIntArray(Ljava/lang/String;)[I

    move-result-object v2

    iput-object v2, p2, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->schedutilHispeedFreq:[I

    goto/16 :goto_2

    .line 2017
    :cond_18
    const-string/jumbo v2, "schedutilHispeedLoad"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 2018
    invoke-direct {p0, v1}, Lcom/android/server/cpuperf/QComBoostController;->strToIntArray(Ljava/lang/String;)[I

    move-result-object v2

    iput-object v2, p2, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->schedutilHispeedLoad:[I

    goto/16 :goto_2

    .line 2019
    :cond_19
    const-string/jumbo v2, "schedutilCpuFreqCtrl"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v7, -0x1

    if-eqz v2, :cond_1c

    .line 2020
    const-string v2, "-1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 2021
    iput v7, p2, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->schedUtilCpuFreqCtrl:I

    goto/16 :goto_2

    .line 2023
    :cond_1a
    invoke-static {v1}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 2024
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p2, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->schedUtilCpuFreqCtrl:I

    goto/16 :goto_2

    .line 2026
    :cond_1b
    iput v6, p2, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->schedUtilCpuFreqCtrl:I

    goto/16 :goto_2

    .line 2029
    :cond_1c
    const-string/jumbo v2, "inputBoostFreq"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 2030
    invoke-static {v1}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 2031
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p2, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->inputBoostFreq:I

    goto/16 :goto_2

    .line 2033
    :cond_1d
    iput v7, p2, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->inputBoostFreq:I

    goto/16 :goto_2

    .line 2035
    :cond_1e
    const-string/jumbo v2, "inputBoostTimeLimit"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 2036
    invoke-static {v1}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 2037
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p2, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->inputBoostMs:I

    goto/16 :goto_2

    .line 2039
    :cond_1f
    iput v7, p2, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->inputBoostMs:I

    goto/16 :goto_2

    .line 2041
    :cond_20
    const-string v2, "avoidSuperGamePerf"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 2042
    if-eqz v1, :cond_21

    const-string/jumbo v2, "true"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 2043
    iput-boolean v5, p2, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->avoidSuperGamePerf:Z

    goto/16 :goto_2

    .line 2045
    :cond_21
    iput-boolean v6, p2, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->avoidSuperGamePerf:Z

    goto/16 :goto_2

    .line 2047
    :cond_22
    const-string v2, "hiPerfMinFreq"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 2048
    invoke-direct {p0, v1}, Lcom/android/server/cpuperf/QComBoostController;->strToIntArray(Ljava/lang/String;)[I

    move-result-object v2

    iput-object v2, p2, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->hiPerfMinFreq:[I

    goto/16 :goto_2

    .line 2049
    :cond_23
    const-string v2, "hiPerfMaxFreq"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 2050
    invoke-direct {p0, v1}, Lcom/android/server/cpuperf/QComBoostController;->strToIntArray(Ljava/lang/String;)[I

    move-result-object v2

    iput-object v2, p2, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->hiPerfMaxFreq:[I

    goto/16 :goto_2

    .line 2051
    :cond_24
    const-string v2, "hiPerfSchedBoost"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 2052
    const-string/jumbo v2, "true"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_28

    const-string v2, "1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    goto :goto_1

    .line 2054
    :cond_25
    const-string v2, "2"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 2055
    iput v4, p2, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->hiPerfSchedBoost:I

    goto/16 :goto_2

    .line 2056
    :cond_26
    const-string v2, "3"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 2057
    iput v3, p2, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->hiPerfSchedBoost:I

    goto/16 :goto_2

    .line 2059
    :cond_27
    iput v6, p2, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->hiPerfSchedBoost:I

    goto/16 :goto_2

    .line 2053
    :cond_28
    :goto_1
    iput v5, p2, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->hiPerfSchedBoost:I

    goto/16 :goto_2

    .line 2061
    :cond_29
    const-string v2, "hiPerfSchedUpMigrate"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 2062
    invoke-direct {p0, v1}, Lcom/android/server/cpuperf/QComBoostController;->strToIntArray(Ljava/lang/String;)[I

    move-result-object v2

    iput-object v2, p2, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->hiPerfSchedUpMigrate:[I

    goto/16 :goto_2

    .line 2063
    :cond_2a
    const-string v2, "hiPerfSchedDownMigrate"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 2064
    invoke-direct {p0, v1}, Lcom/android/server/cpuperf/QComBoostController;->strToIntArray(Ljava/lang/String;)[I

    move-result-object v2

    iput-object v2, p2, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->hiPerfSchedDownMigrate:[I

    goto/16 :goto_2

    .line 2065
    :cond_2b
    const-string v2, "hiPerfSchedUtilHispeedLoad"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 2066
    invoke-direct {p0, v1}, Lcom/android/server/cpuperf/QComBoostController;->strToIntArray(Ljava/lang/String;)[I

    move-result-object v2

    iput-object v2, p2, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->hiPerfSchedUtilHispeedLoad:[I

    goto :goto_2

    .line 2067
    :cond_2c
    const-string v2, "hiPerfSchedUtilHispeedFreq"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 2068
    invoke-direct {p0, v1}, Lcom/android/server/cpuperf/QComBoostController;->strToIntArray(Ljava/lang/String;)[I

    move-result-object v2

    iput-object v2, p2, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->hiPerfSchedUtilHispeedFreq:[I

    goto :goto_2

    .line 2069
    :cond_2d
    const-string v2, "hiPerfGPUMinPowerLevel"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 2070
    invoke-static {v1}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 2071
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p2, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->hiPerfGPUMinPowerLevel:I

    goto :goto_2

    .line 2073
    :cond_2e
    iput v7, p2, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->hiPerfGPUMinPowerLevel:I

    goto :goto_2

    .line 2075
    :cond_2f
    const-string v2, "hiPerfGPUMaxPowerLevel"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31

    .line 2076
    invoke-static {v1}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_30

    .line 2077
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p2, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->hiPerfGPUMaxPowerLevel:I

    goto :goto_2

    .line 2079
    :cond_30
    iput v7, p2, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->hiPerfGPUMaxPowerLevel:I

    goto :goto_2

    .line 2081
    :cond_31
    const-string v2, "disableStorageScaling"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32

    .line 2082
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p2, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->disableStorageScaling:Z

    goto :goto_2

    .line 2083
    :cond_32
    const-string v2, "fanLevel"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_33

    .line 2084
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p2, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->fanLevel:I

    .line 2086
    :cond_33
    :goto_2
    return-void
.end method

.method private specialDisablePowerCollapse(Z)V
    .locals 7
    .param p1, "disable"    # Z

    .line 2092
    if-eqz p1, :cond_0

    const/16 v0, 0x59

    goto :goto_0

    :cond_0
    const/16 v0, 0x4e

    .line 2094
    .local v0, "value":I
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/cpuperf/QComBoostController;->mDisablePowerCollapseFOS:Ljava/io/FileOutputStream;

    if-nez v1, :cond_1

    .line 2095
    new-instance v1, Ljava/io/FileOutputStream;

    const-string v2, "/sys/module/lpm_levels/parameters/sleep_disabled"

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/cpuperf/QComBoostController;->mDisablePowerCollapseFOS:Ljava/io/FileOutputStream;

    .line 2097
    :cond_1
    iget-object v1, p0, Lcom/android/server/cpuperf/QComBoostController;->mDisablePowerCollapseFOS:Ljava/io/FileOutputStream;

    invoke-virtual {v1, v0}, Ljava/io/FileOutputStream;->write(I)V

    .line 2098
    iget-boolean v1, p0, Lcom/android/server/cpuperf/QComBoostController;->mDumpDebugLog:Z

    if-eqz v1, :cond_2

    .line 2099
    const-string v1, "PerformanceController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Power collapse disable? "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2112
    :cond_2
    goto :goto_1

    .line 2101
    :catch_0
    move-exception v1

    .line 2102
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "PerformanceController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "write error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2103
    iget-object v2, p0, Lcom/android/server/cpuperf/QComBoostController;->mDisablePowerCollapseFOS:Ljava/io/FileOutputStream;

    .line 2104
    .local v2, "temp":Ljava/io/FileOutputStream;
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/cpuperf/QComBoostController;->mDisablePowerCollapseFOS:Ljava/io/FileOutputStream;

    .line 2105
    if-eqz v2, :cond_3

    .line 2107
    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 2110
    goto :goto_1

    .line 2108
    :catch_1
    move-exception v3

    .line 2109
    .local v3, "e1":Ljava/lang/Exception;
    const-string v4, "PerformanceController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "close error: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2113
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "temp":Ljava/io/FileOutputStream;
    .end local v3    # "e1":Ljava/lang/Exception;
    :cond_3
    :goto_1
    return-void
.end method

.method private specialSetFanLevel(I)V
    .locals 3
    .param p1, "level"    # I

    .line 2175
    sget-boolean v0, Lcom/android/server/cpuperf/QComBoostController;->mIsFanChanged:Z

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 2176
    if-eq p1, v1, :cond_2

    .line 2177
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/cpuperf/QComBoostController;->mIsFanChanged:Z

    .line 2178
    const-string/jumbo v0, "sys/kernel/fan/fan_enable"

    invoke-direct {p0, v0}, Lcom/android/server/cpuperf/QComBoostController;->readIntFromFile(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/cpuperf/QComBoostController;->mPreviousFanSwitch:I

    .line 2179
    const-string/jumbo v0, "sys/kernel/fan/fan_speed_level"

    invoke-direct {p0, v0}, Lcom/android/server/cpuperf/QComBoostController;->readIntFromFile(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/cpuperf/QComBoostController;->mPreviousFanSpeed:I

    .line 2180
    const-string/jumbo v0, "sys/kernel/fan/fan_speed_level"

    invoke-direct {p0, v0, p1}, Lcom/android/server/cpuperf/QComBoostController;->writeIntToFile(Ljava/lang/String;I)V

    goto :goto_0

    .line 2183
    :cond_0
    if-eq p1, v1, :cond_1

    .line 2184
    const-string/jumbo v0, "sys/kernel/fan/fan_speed_level"

    invoke-direct {p0, v0, p1}, Lcom/android/server/cpuperf/QComBoostController;->writeIntToFile(Ljava/lang/String;I)V

    goto :goto_0

    .line 2187
    :cond_1
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/cpuperf/QComBoostController;->mIsFanChanged:Z

    .line 2188
    const-string/jumbo v1, "sys/kernel/fan/fan_enable"

    sget v2, Lcom/android/server/cpuperf/QComBoostController;->mPreviousFanSwitch:I

    invoke-direct {p0, v1, v2}, Lcom/android/server/cpuperf/QComBoostController;->writeIntToFile(Ljava/lang/String;I)V

    .line 2189
    sput v0, Lcom/android/server/cpuperf/QComBoostController;->mPreviousFanSwitch:I

    .line 2190
    const-string/jumbo v1, "sys/kernel/fan/fan_speed_level"

    sget v2, Lcom/android/server/cpuperf/QComBoostController;->mPreviousFanSpeed:I

    invoke-direct {p0, v1, v2}, Lcom/android/server/cpuperf/QComBoostController;->writeIntToFile(Ljava/lang/String;I)V

    .line 2191
    sput v0, Lcom/android/server/cpuperf/QComBoostController;->mPreviousFanSpeed:I

    .line 2194
    :cond_2
    :goto_0
    return-void
.end method

.method private specialSetThermalLevel(I)V
    .locals 3
    .param p1, "thermalLevel"    # I

    .line 2116
    iget-boolean v0, p0, Lcom/android/server/cpuperf/QComBoostController;->mDumpDebugLog:Z

    if-eqz v0, :cond_0

    .line 2117
    const-string v0, "PerformanceController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set thermalLevel parameter: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2119
    :cond_0
    if-gez p1, :cond_1

    .line 2120
    const/16 p1, 0x63

    .line 2122
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/cpuperf/QComBoostController;->mDumpDebugLog:Z

    if-eqz v0, :cond_2

    .line 2123
    const-string v0, "PerformanceController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set thermalLevel real: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2125
    :cond_2
    const-string/jumbo v0, "persist.sys.cpu.mode_type"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2126
    return-void
.end method

.method private strToIntArray(Ljava/lang/String;)[I
    .locals 4
    .param p1, "str"    # Ljava/lang/String;

    .line 1690
    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1691
    .local v0, "tmp":[Ljava/lang/String;
    array-length v1, v0

    new-array v1, v1, [I

    .line 1692
    .local v1, "array":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 1693
    aget-object v3, v0, v2

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v1, v2

    .line 1692
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1695
    .end local v2    # "i":I
    :cond_0
    return-object v1
.end method

.method private validatePerfData(Lcom/android/server/cpuperf/QComBoostController$PerformanceData;)Z
    .locals 1
    .param p1, "mData"    # Lcom/android/server/cpuperf/QComBoostController$PerformanceData;

    .line 2249
    const/4 v0, 0x1

    return v0
.end method

.method private writeIntToFile(Ljava/lang/String;I)V
    .locals 4
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "value"    # I

    .line 2158
    const/4 v0, 0x0

    .line 2159
    .local v0, "fos":Ljava/io/FileOutputStream;
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 2161
    .local v1, "strVal":Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    move-object v0, v2

    .line 2162
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2165
    nop

    .line 2167
    :try_start_1
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 2169
    :goto_0
    goto :goto_2

    .line 2168
    :catch_0
    move-exception v2

    goto :goto_0

    .line 2165
    :catchall_0
    move-exception v2

    if-eqz v0, :cond_0

    .line 2167
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 2169
    goto :goto_1

    .line 2168
    :catch_1
    move-exception v3

    .line 2169
    :cond_0
    :goto_1
    throw v2

    .line 2163
    :catch_2
    move-exception v2

    .line 2165
    if-eqz v0, :cond_1

    .line 2167
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 2172
    :cond_1
    :goto_2
    return-void
.end method


# virtual methods
.method public adjustPerformance(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/cpuperf/PerformanceController$PerformanceLock;",
            ">;)V"
        }
    .end annotation

    .line 254
    .local p1, "locks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/cpuperf/PerformanceController$PerformanceLock;>;"
    sget-object v0, Lcom/android/server/cpuperf/QComBoostController;->perfObj:Ljava/lang/Object;

    monitor-enter v0

    .line 255
    :try_start_0
    iget-object v1, p0, Lcom/android/server/cpuperf/QComBoostController;->mPerfData:Lcom/android/server/cpuperf/QComBoostController$PerformanceData;

    if-nez v1, :cond_0

    .line 256
    monitor-exit v0

    return-void

    .line 257
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 259
    invoke-direct {p0, p1}, Lcom/android/server/cpuperf/QComBoostController;->decideLockParameters(Ljava/util/ArrayList;)[I

    move-result-object v0

    .line 261
    .local v0, "parameters":[I
    iget-object v1, p0, Lcom/android/server/cpuperf/QComBoostController;->mPreviousParameters:[I

    if-eqz v1, :cond_2

    .line 262
    iget-object v1, p0, Lcom/android/server/cpuperf/QComBoostController;->mPreviousParameters:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 263
    iget-boolean v1, p0, Lcom/android/server/cpuperf/QComBoostController;->mDumpDebugLog:Z

    if-eqz v1, :cond_1

    .line 264
    const-string v1, "PerformanceController"

    const-string/jumbo v2, "parameters don\'t change. No need to release/acquire again."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    const-string v1, "PerformanceController"

    const-string v2, " "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    :cond_1
    return-void

    .line 271
    :cond_2
    iget-object v1, p0, Lcom/android/server/cpuperf/QComBoostController;->mPerfHelper:Lcom/android/server/cpuperf/PerformanceHelper;

    invoke-virtual {v1}, Lcom/android/server/cpuperf/PerformanceHelper;->perfLockRelease()[I

    .line 272
    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 273
    iget-object v2, p0, Lcom/android/server/cpuperf/QComBoostController;->mPerfHelper:Lcom/android/server/cpuperf/PerformanceHelper;

    invoke-virtual {v2, v1, v0}, Lcom/android/server/cpuperf/PerformanceHelper;->perfLockAcquire(I[I)[I

    .line 274
    iput-object v0, p0, Lcom/android/server/cpuperf/QComBoostController;->mPreviousParameters:[I

    .line 275
    iget-boolean v2, p0, Lcom/android/server/cpuperf/QComBoostController;->mDumpDebugLog:Z

    if-eqz v2, :cond_7

    .line 276
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 277
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/16 v3, 0x5b

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 279
    nop

    .line 279
    .local v1, "i":I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_4

    .line 280
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v4, v0, v1

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    if-eq v1, v3, :cond_3

    .line 282
    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 284
    .end local v1    # "i":I
    :cond_4
    const/16 v1, 0x5d

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 285
    iget-boolean v1, p0, Lcom/android/server/cpuperf/QComBoostController;->mDumpDebugLog:Z

    if-eqz v1, :cond_5

    .line 286
    const-string v1, "PerformanceController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "perfLockAcquire:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    const-string v1, "PerformanceController"

    const-string v3, " "

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    :cond_5
    goto :goto_1

    .line 292
    :cond_6
    invoke-direct {p0, v1}, Lcom/android/server/cpuperf/QComBoostController;->specialDisablePowerCollapse(Z)V

    .line 293
    const/4 v1, -0x1

    invoke-direct {p0, v1}, Lcom/android/server/cpuperf/QComBoostController;->specialSetThermalLevel(I)V

    .line 294
    invoke-direct {p0, v1}, Lcom/android/server/cpuperf/QComBoostController;->specialSetFanLevel(I)V

    .line 296
    :cond_7
    :goto_1
    return-void

    .line 257
    .end local v0    # "parameters":[I
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 2252
    sget-object v0, Lcom/android/server/cpuperf/QComBoostController;->perfObj:Ljava/lang/Object;

    monitor-enter v0

    .line 2253
    :try_start_0
    iget-object v1, p0, Lcom/android/server/cpuperf/QComBoostController;->mPerfData:Lcom/android/server/cpuperf/QComBoostController$PerformanceData;

    if-eqz v1, :cond_0

    .line 2254
    iget-object v1, p0, Lcom/android/server/cpuperf/QComBoostController;->mPerfData:Lcom/android/server/cpuperf/QComBoostController$PerformanceData;

    invoke-virtual {v1}, Lcom/android/server/cpuperf/QComBoostController$PerformanceData;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2255
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2256
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2257
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "\nmPreviousParameters: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2258
    iget-object v1, p0, Lcom/android/server/cpuperf/QComBoostController;->mPreviousParameters:[I

    if-eqz v1, :cond_2

    .line 2259
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/cpuperf/QComBoostController;->mPreviousParameters:[I

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 2260
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/cpuperf/QComBoostController;->mPreviousParameters:[I

    aget v3, v3, v1

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2261
    iget-object v2, p0, Lcom/android/server/cpuperf/QComBoostController;->mPreviousParameters:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-eq v1, v2, :cond_1

    .line 2262
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2259
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2265
    .end local v1    # "i":I
    :cond_2
    const-string v1, "]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2267
    const-string v1, "\nmGpuOverclock: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2268
    iget-boolean v1, p0, Lcom/android/server/cpuperf/QComBoostController;->mGpuOverclock:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 2269
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2271
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2274
    return-void

    .line 2255
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getAppLaunchDuration(Ljava/lang/String;I)J
    .locals 8
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "lockType"    # I

    .line 1622
    const/4 v0, 0x0

    move v1, v0

    .line 1624
    .local v1, "thirdPartyApp":Z
    const/4 v2, 0x1

    :try_start_0
    iget-object v3, p0, Lcom/android/server/cpuperf/QComBoostController;->mPms:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v3, p1, v0, v0}, Lcom/android/server/pm/PackageManagerService;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 1625
    .local v3, "ai":Landroid/content/pm/ApplicationInfo;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    xor-int/2addr v4, v2

    move v1, v4

    .line 1626
    .end local v3    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_0
    goto :goto_0

    :catch_0
    move-exception v3

    .line 1628
    :goto_0
    sget-object v3, Lcom/android/server/cpuperf/QComBoostController;->perfObj:Ljava/lang/Object;

    monitor-enter v3

    .line 1629
    :try_start_1
    iget-object v4, p0, Lcom/android/server/cpuperf/QComBoostController;->mPerfData:Lcom/android/server/cpuperf/QComBoostController$PerformanceData;

    if-nez v4, :cond_1

    .line 1630
    const-wide/16 v4, 0x12c

    monitor-exit v3

    return-wide v4

    .line 1631
    :cond_1
    iget-object v4, p0, Lcom/android/server/cpuperf/QComBoostController;->mPerfData:Lcom/android/server/cpuperf/QComBoostController$PerformanceData;

    iget-object v4, v4, Lcom/android/server/cpuperf/QComBoostController$PerformanceData;->packageDuration:Landroid/util/ArrayMap;

    invoke-virtual {v4, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x3

    const/4 v6, 0x2

    if-eqz v4, :cond_2

    .line 1632
    iget-object v4, p0, Lcom/android/server/cpuperf/QComBoostController;->mPerfData:Lcom/android/server/cpuperf/QComBoostController$PerformanceData;

    iget-object v4, v4, Lcom/android/server/cpuperf/QComBoostController$PerformanceData;->packageDuration:Landroid/util/ArrayMap;

    invoke-virtual {v4, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/server/cpuperf/QComBoostController;->strToIntArray(Ljava/lang/String;)[I

    move-result-object v4

    .line 1633
    .local v4, "pkgDuration":[I
    packed-switch p2, :pswitch_data_0

    packed-switch p2, :pswitch_data_1

    .line 1645
    iget-object v0, p0, Lcom/android/server/cpuperf/QComBoostController;->mPerfData:Lcom/android/server/cpuperf/QComBoostController$PerformanceData;

    iget-object v0, v0, Lcom/android/server/cpuperf/QComBoostController$PerformanceData;->perfDuration:[I

    aget v0, v0, v6

    int-to-long v5, v0

    monitor-exit v3

    return-wide v5

    .line 1643
    :pswitch_0
    aget v0, v4, v5

    int-to-long v5, v0

    monitor-exit v3

    return-wide v5

    .line 1641
    :pswitch_1
    aget v0, v4, v6

    int-to-long v5, v0

    monitor-exit v3

    return-wide v5

    .line 1639
    :pswitch_2
    aget v0, v4, v2

    int-to-long v5, v0

    monitor-exit v3

    return-wide v5

    .line 1636
    :pswitch_3
    aget v0, v4, v0

    int-to-long v5, v0

    monitor-exit v3

    return-wide v5

    .line 1649
    .end local v4    # "pkgDuration":[I
    :cond_2
    if-eqz v1, :cond_3

    iget-object v4, p0, Lcom/android/server/cpuperf/QComBoostController;->mPerfData:Lcom/android/server/cpuperf/QComBoostController$PerformanceData;

    iget-object v4, v4, Lcom/android/server/cpuperf/QComBoostController$PerformanceData;->packageDuration:Landroid/util/ArrayMap;

    const-string v7, "common.third.party"

    invoke-virtual {v4, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 1650
    iget-object v4, p0, Lcom/android/server/cpuperf/QComBoostController;->mPerfData:Lcom/android/server/cpuperf/QComBoostController$PerformanceData;

    iget-object v4, v4, Lcom/android/server/cpuperf/QComBoostController$PerformanceData;->packageDuration:Landroid/util/ArrayMap;

    const-string v7, "common.third.party"

    invoke-virtual {v4, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/server/cpuperf/QComBoostController;->strToIntArray(Ljava/lang/String;)[I

    move-result-object v4

    .line 1651
    .restart local v4    # "pkgDuration":[I
    packed-switch p2, :pswitch_data_2

    packed-switch p2, :pswitch_data_3

    .line 1663
    iget-object v0, p0, Lcom/android/server/cpuperf/QComBoostController;->mPerfData:Lcom/android/server/cpuperf/QComBoostController$PerformanceData;

    iget-object v0, v0, Lcom/android/server/cpuperf/QComBoostController$PerformanceData;->perfDuration:[I

    aget v0, v0, v6

    int-to-long v5, v0

    monitor-exit v3

    return-wide v5

    .line 1661
    :pswitch_4
    aget v0, v4, v5

    int-to-long v5, v0

    monitor-exit v3

    return-wide v5

    .line 1659
    :pswitch_5
    aget v0, v4, v6

    int-to-long v5, v0

    monitor-exit v3

    return-wide v5

    .line 1657
    :pswitch_6
    aget v0, v4, v2

    int-to-long v5, v0

    monitor-exit v3

    return-wide v5

    .line 1654
    :pswitch_7
    aget v0, v4, v0

    int-to-long v5, v0

    monitor-exit v3

    return-wide v5

    .line 1667
    .end local v4    # "pkgDuration":[I
    :cond_3
    packed-switch p2, :pswitch_data_4

    packed-switch p2, :pswitch_data_5

    .line 1679
    iget-object v0, p0, Lcom/android/server/cpuperf/QComBoostController;->mPerfData:Lcom/android/server/cpuperf/QComBoostController$PerformanceData;

    iget-object v0, v0, Lcom/android/server/cpuperf/QComBoostController$PerformanceData;->perfDuration:[I

    aget v0, v0, v6

    int-to-long v4, v0

    monitor-exit v3

    return-wide v4

    .line 1677
    :pswitch_8
    iget-object v0, p0, Lcom/android/server/cpuperf/QComBoostController;->mPerfData:Lcom/android/server/cpuperf/QComBoostController$PerformanceData;

    iget-object v0, v0, Lcom/android/server/cpuperf/QComBoostController$PerformanceData;->perfDuration:[I

    aget v0, v0, v5

    int-to-long v4, v0

    monitor-exit v3

    return-wide v4

    .line 1675
    :pswitch_9
    iget-object v0, p0, Lcom/android/server/cpuperf/QComBoostController;->mPerfData:Lcom/android/server/cpuperf/QComBoostController$PerformanceData;

    iget-object v0, v0, Lcom/android/server/cpuperf/QComBoostController$PerformanceData;->perfDuration:[I

    aget v0, v0, v6

    int-to-long v4, v0

    monitor-exit v3

    return-wide v4

    .line 1673
    :pswitch_a
    iget-object v0, p0, Lcom/android/server/cpuperf/QComBoostController;->mPerfData:Lcom/android/server/cpuperf/QComBoostController$PerformanceData;

    iget-object v0, v0, Lcom/android/server/cpuperf/QComBoostController$PerformanceData;->perfDuration:[I

    aget v0, v0, v2

    int-to-long v4, v0

    monitor-exit v3

    return-wide v4

    .line 1670
    :pswitch_b
    iget-object v2, p0, Lcom/android/server/cpuperf/QComBoostController;->mPerfData:Lcom/android/server/cpuperf/QComBoostController$PerformanceData;

    iget-object v2, v2, Lcom/android/server/cpuperf/QComBoostController$PerformanceData;->perfDuration:[I

    aget v0, v2, v0

    int-to-long v4, v0

    monitor-exit v3

    return-wide v4

    .line 1681
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x10
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x2
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x10
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x2
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x10
        :pswitch_b
        :pswitch_a
    .end packed-switch
.end method

.method public getAppLockParameterTag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "activityName"    # Ljava/lang/String;

    .line 892
    sget-object v0, Lcom/android/server/cpuperf/QComBoostController;->perfObj:Ljava/lang/Object;

    monitor-enter v0

    .line 893
    :try_start_0
    iget-object v1, p0, Lcom/android/server/cpuperf/QComBoostController;->mPerfData:Lcom/android/server/cpuperf/QComBoostController$PerformanceData;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 894
    monitor-exit v0

    return-object v2

    .line 895
    :cond_0
    const/4 v1, 0x0

    .line 897
    .local v1, "parameters":Lcom/android/server/cpuperf/QComBoostController$LockParameters;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 898
    .local v3, "tag":Ljava/lang/String;
    iget-boolean v4, p0, Lcom/android/server/cpuperf/QComBoostController;->mDumpDebugLog:Z

    if-eqz v4, :cond_1

    .line 899
    const-string v4, "PerformanceController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "try to getAppLockParameterTag for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 901
    :cond_1
    iget-object v4, p0, Lcom/android/server/cpuperf/QComBoostController;->mPerfData:Lcom/android/server/cpuperf/QComBoostController$PerformanceData;

    iget-object v4, v4, Lcom/android/server/cpuperf/QComBoostController$PerformanceData;->perfData:Ljava/util/HashMap;

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/cpuperf/QComBoostController$LockParameters;

    move-object v1, v4

    .line 903
    iget-boolean v4, p0, Lcom/android/server/cpuperf/QComBoostController;->mDumpDebugLog:Z

    if-eqz v4, :cond_2

    .line 904
    if-eqz v1, :cond_2

    .line 905
    const-string v4, "PerformanceController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "hasAppSpecificLockParameters, found lock parameters for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 908
    :cond_2
    if-nez v1, :cond_3

    .line 909
    iget-object v4, p0, Lcom/android/server/cpuperf/QComBoostController;->mPerfData:Lcom/android/server/cpuperf/QComBoostController$PerformanceData;

    iget-object v4, v4, Lcom/android/server/cpuperf/QComBoostController$PerformanceData;->perfData:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArrayMap;

    invoke-virtual {v4, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/cpuperf/QComBoostController$LockParameters;

    move-object v1, v4

    .line 910
    if-eqz v1, :cond_3

    .line 911
    move-object v3, p1

    .line 913
    iget-boolean v4, p0, Lcom/android/server/cpuperf/QComBoostController;->mDumpDebugLog:Z

    if-eqz v4, :cond_3

    .line 914
    const-string v4, "PerformanceController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "hasAppSpecificLockParameters, found lock parameters for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 919
    :cond_3
    if-eqz v1, :cond_4

    .line 920
    monitor-exit v0

    return-object v3

    .line 922
    :cond_4
    monitor-exit v0

    return-object v2

    .line 923
    .end local v1    # "parameters":Lcom/android/server/cpuperf/QComBoostController$LockParameters;
    .end local v3    # "tag":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getViewOptimizeInfoByActivityName(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "activityName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 927
    iget-object v0, p0, Lcom/android/server/cpuperf/QComBoostController;->mPerfData:Lcom/android/server/cpuperf/QComBoostController$PerformanceData;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 930
    :cond_0
    iget-object v0, p0, Lcom/android/server/cpuperf/QComBoostController;->mPerfData:Lcom/android/server/cpuperf/QComBoostController$PerformanceData;

    iget-object v0, v0, Lcom/android/server/cpuperf/QComBoostController$PerformanceData;->viewOptimizeInfos:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0

    .line 928
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public isInFullOnCpuset(Ljava/lang/String;)Z
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .line 2295
    const/4 v0, 0x0

    .line 2296
    .local v0, "result":Z
    sget-object v1, Lcom/android/server/cpuperf/QComBoostController;->perfObj:Ljava/lang/Object;

    monitor-enter v1

    .line 2297
    :try_start_0
    iget-object v2, p0, Lcom/android/server/cpuperf/QComBoostController;->mPerfData:Lcom/android/server/cpuperf/QComBoostController$PerformanceData;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/cpuperf/QComBoostController;->mPerfData:Lcom/android/server/cpuperf/QComBoostController$PerformanceData;

    iget-object v2, v2, Lcom/android/server/cpuperf/QComBoostController$PerformanceData;->fullOnCpuset:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2298
    const/4 v0, 0x1

    .line 2300
    :cond_0
    monitor-exit v1

    .line 2301
    return v0

    .line 2300
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public isInNoTransitionAnim(Ljava/lang/String;)Z
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .line 2286
    const/4 v0, 0x0

    .line 2287
    .local v0, "result":Z
    sget-object v1, Lcom/android/server/cpuperf/QComBoostController;->perfObj:Ljava/lang/Object;

    monitor-enter v1

    .line 2288
    :try_start_0
    iget-object v2, p0, Lcom/android/server/cpuperf/QComBoostController;->mPerfData:Lcom/android/server/cpuperf/QComBoostController$PerformanceData;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/cpuperf/QComBoostController;->mPerfData:Lcom/android/server/cpuperf/QComBoostController$PerformanceData;

    iget-object v2, v2, Lcom/android/server/cpuperf/QComBoostController$PerformanceData;->noTransitionAnimation:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2289
    const/4 v0, 0x1

    .line 2291
    :cond_0
    monitor-exit v1

    .line 2292
    return v0

    .line 2291
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public noteAppLauchForNewProcess(Ljava/lang/String;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1685
    iget-object v0, p0, Lcom/android/server/cpuperf/QComBoostController;->mPerfHelper:Lcom/android/server/cpuperf/PerformanceHelper;

    const-string v1, ""

    const/4 v2, -0x1

    invoke-virtual {v0, v2, p1, v1}, Lcom/android/server/cpuperf/PerformanceHelper;->perfIOPrefetchStart(ILjava/lang/String;Ljava/lang/String;)I

    .line 1686
    return-void
.end method

.method public reinitData()V
    .locals 2

    .line 2276
    const-string v0, "PerformanceController"

    const-string/jumbo v1, "reinitData"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2277
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/cpuperf/QComBoostController;->mUseUpdateConfig:Z

    .line 2278
    invoke-direct {p0}, Lcom/android/server/cpuperf/QComBoostController;->initData()V

    .line 2279
    iget-boolean v0, p0, Lcom/android/server/cpuperf/QComBoostController;->mUseUpdateConfig:Z

    if-nez v0, :cond_0

    .line 2281
    const-string v0, "PerformanceController"

    const-string v1, "The upgrade configuration file is broken!"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2282
    invoke-direct {p0}, Lcom/android/server/cpuperf/QComBoostController;->initData()V

    .line 2284
    :cond_0
    return-void
.end method

.method public setDebugLogEnabled(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .line 250
    iput-boolean p1, p0, Lcom/android/server/cpuperf/QComBoostController;->mDumpDebugLog:Z

    .line 251
    return-void
.end method
