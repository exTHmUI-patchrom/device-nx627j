.class public Lcom/android/server/cpuperf/TgpaHelper;
.super Ljava/lang/Object;
.source "TgpaHelper.java"


# static fields
.field public static final BOOST_TYPE_CPU:I = 0x1

.field public static final BOOST_TYPE_GPU:I = 0x2

.field public static CPUGPU_BOOST_LEVEL0:I

.field public static CPUGPU_BOOST_LEVEL4:I

.field public static CPUGPU_BOOST_LEVEL5:I

.field public static CPUGPU_BOOST_RESTORE:I


# instance fields
.field private final DEBUG:Z

.field private final TAG:Ljava/lang/String;

.field private bigClusterPath:Ljava/lang/String;

.field private littleClusterPath:Ljava/lang/String;

.field private mBatteryManager:Landroid/os/BatteryManager;

.field private mContext:Landroid/content/Context;

.field private mCpuBoostForTgpaBinder:Landroid/os/IBinder;

.field private mGpuBoostForTgpaBinder:Landroid/os/IBinder;

.field private mIsCpuPerfLockAcquired:Z

.field private mIsGpuPerfLockAcquired:Z

.field private mPackageCpuGpuBoost:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    const/4 v0, -0x1

    sput v0, Lcom/android/server/cpuperf/TgpaHelper;->CPUGPU_BOOST_RESTORE:I

    .line 35
    const/4 v0, 0x0

    sput v0, Lcom/android/server/cpuperf/TgpaHelper;->CPUGPU_BOOST_LEVEL0:I

    .line 36
    const/4 v0, 0x4

    sput v0, Lcom/android/server/cpuperf/TgpaHelper;->CPUGPU_BOOST_LEVEL4:I

    .line 37
    const/4 v0, 0x5

    sput v0, Lcom/android/server/cpuperf/TgpaHelper;->CPUGPU_BOOST_LEVEL5:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const-string v0, "debug.nubia.tgpa"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/cpuperf/TgpaHelper;->DEBUG:Z

    .line 21
    const-string v0, "TgpaHelper"

    iput-object v0, p0, Lcom/android/server/cpuperf/TgpaHelper;->TAG:Ljava/lang/String;

    .line 28
    iput-boolean v1, p0, Lcom/android/server/cpuperf/TgpaHelper;->mIsCpuPerfLockAcquired:Z

    .line 29
    iput-boolean v1, p0, Lcom/android/server/cpuperf/TgpaHelper;->mIsGpuPerfLockAcquired:Z

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/cpuperf/TgpaHelper;->mPackageCpuGpuBoost:Ljava/util/HashMap;

    .line 39
    const-string v0, "/dev/cpuset/bigcluster/tasks"

    iput-object v0, p0, Lcom/android/server/cpuperf/TgpaHelper;->bigClusterPath:Ljava/lang/String;

    .line 40
    const-string v0, "/dev/cpuset/littlecluster/tasks"

    iput-object v0, p0, Lcom/android/server/cpuperf/TgpaHelper;->littleClusterPath:Ljava/lang/String;

    .line 43
    iput-object p1, p0, Lcom/android/server/cpuperf/TgpaHelper;->mContext:Landroid/content/Context;

    .line 44
    iget-object v0, p0, Lcom/android/server/cpuperf/TgpaHelper;->mContext:Landroid/content/Context;

    const-string v1, "batterymanager"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatteryManager;

    iput-object v0, p0, Lcom/android/server/cpuperf/TgpaHelper;->mBatteryManager:Landroid/os/BatteryManager;

    .line 46
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/android/server/cpuperf/TgpaHelper;->mCpuBoostForTgpaBinder:Landroid/os/IBinder;

    .line 47
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/android/server/cpuperf/TgpaHelper;->mGpuBoostForTgpaBinder:Landroid/os/IBinder;

    .line 48
    return-void
.end method

.method private getBatteryLevel()I
    .locals 4

    .line 51
    const/4 v0, 0x0

    .line 52
    .local v0, "mBatteryLevel":I
    iget-object v1, p0, Lcom/android/server/cpuperf/TgpaHelper;->mBatteryManager:Landroid/os/BatteryManager;

    if-eqz v1, :cond_0

    .line 53
    iget-object v1, p0, Lcom/android/server/cpuperf/TgpaHelper;->mBatteryManager:Landroid/os/BatteryManager;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/BatteryManager;->getIntProperty(I)I

    move-result v0

    .line 55
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/cpuperf/TgpaHelper;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "TgpaHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clong mBatteryLevel="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    :cond_1
    return v0
.end method


# virtual methods
.method public acquirePerformanceLockForTgpa(IILjava/lang/String;)V
    .locals 16
    .param p1, "boostType"    # I
    .param p2, "boostLevel"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    move-object/from16 v0, p0

    move/from16 v1, p2

    .line 116
    move-object/from16 v2, p3

    and-int/lit8 v3, p1, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_0

    move v3, v5

    goto :goto_0

    :cond_0
    move v3, v4

    .line 117
    .local v3, "mBoostTypeCpu":Z
    :goto_0
    and-int/lit8 v6, p1, 0x2

    if-eqz v6, :cond_1

    move v6, v5

    goto :goto_1

    :cond_1
    move v6, v4

    .line 118
    .local v6, "mBoostTypeGpu":Z
    :goto_1
    sget v7, Lcom/android/server/cpuperf/TgpaHelper;->CPUGPU_BOOST_RESTORE:I

    .line 119
    .local v7, "mBoostLevel":I
    sget v8, Lcom/android/server/cpuperf/TgpaHelper;->CPUGPU_BOOST_RESTORE:I

    if-eq v1, v8, :cond_3

    .line 120
    sget v8, Lcom/android/server/cpuperf/TgpaHelper;->CPUGPU_BOOST_LEVEL4:I

    if-lt v1, v8, :cond_2

    sget v8, Lcom/android/server/cpuperf/TgpaHelper;->CPUGPU_BOOST_LEVEL4:I

    goto :goto_2

    :cond_2
    sget v8, Lcom/android/server/cpuperf/TgpaHelper;->CPUGPU_BOOST_LEVEL0:I

    :goto_2
    move v7, v8

    .line 123
    :cond_3
    iget-boolean v8, v0, Lcom/android/server/cpuperf/TgpaHelper;->DEBUG:Z

    if-eqz v8, :cond_4

    const-string v8, "TgpaHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "clong acquirePerformanceLockForTgpa mBoostLevel="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    :cond_4
    iget-object v8, v0, Lcom/android/server/cpuperf/TgpaHelper;->mPackageCpuGpuBoost:Ljava/util/HashMap;

    invoke-virtual {v8, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/HashMap;

    .line 126
    .local v8, "packageCpuGpuBoost":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const/4 v9, 0x2

    if-nez v8, :cond_7

    .line 128
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    move-object v8, v10

    .line 129
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v8, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v8, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    if-eqz v3, :cond_5

    .line 132
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v8, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    :cond_5
    if-eqz v6, :cond_6

    .line 135
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v8, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    :cond_6
    iget-object v10, v0, Lcom/android/server/cpuperf/TgpaHelper;->mPackageCpuGpuBoost:Ljava/util/HashMap;

    invoke-virtual {v10, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 140
    :cond_7
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 141
    .local v10, "lastCpuBoostLevel":I
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 143
    .local v11, "lastGpuBoostLevel":I
    iget-boolean v12, v0, Lcom/android/server/cpuperf/TgpaHelper;->DEBUG:Z

    if-eqz v12, :cond_8

    const-string v12, "TgpaHelper"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "clong acquirePerformanceLockForTgpa lastCpuBoostLevel="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, "/lastGpuBoostLevel="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :cond_8
    if-eqz v3, :cond_9

    if-eq v10, v7, :cond_9

    sget v12, Lcom/android/server/cpuperf/TgpaHelper;->CPUGPU_BOOST_RESTORE:I

    if-eq v7, v12, :cond_9

    .line 147
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v8, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    :cond_9
    if-eqz v6, :cond_a

    if-eq v11, v7, :cond_a

    sget v12, Lcom/android/server/cpuperf/TgpaHelper;->CPUGPU_BOOST_RESTORE:I

    if-eq v7, v12, :cond_a

    .line 150
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v8, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    .end local v10    # "lastCpuBoostLevel":I
    .end local v11    # "lastGpuBoostLevel":I
    :cond_a
    :goto_3
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 155
    .local v10, "cpuBoostLevel":I
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 157
    .local v9, "gpuBoostLevel":I
    iget-boolean v11, v0, Lcom/android/server/cpuperf/TgpaHelper;->DEBUG:Z

    if-eqz v11, :cond_b

    const-string v11, "TgpaHelper"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "clong acquirePerformanceLockForTgpa packageName="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "/cpuBoostLevel:="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, "/gpuBoostLevel="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    :cond_b
    sget v11, Lcom/android/server/cpuperf/TgpaHelper;->CPUGPU_BOOST_LEVEL4:I

    const-wide/16 v12, 0x0

    if-ne v10, v11, :cond_c

    .line 160
    iget-boolean v11, v0, Lcom/android/server/cpuperf/TgpaHelper;->mIsCpuPerfLockAcquired:Z

    if-nez v11, :cond_d

    iget-object v11, v0, Lcom/android/server/cpuperf/TgpaHelper;->mCpuBoostForTgpaBinder:Landroid/os/IBinder;

    if-eqz v11, :cond_d

    .line 161
    iget-object v11, v0, Lcom/android/server/cpuperf/TgpaHelper;->mCpuBoostForTgpaBinder:Landroid/os/IBinder;

    const-string v14, "com.tgpa.gameboost.cpu"

    const/16 v4, 0x65

    invoke-static {v11, v14, v4, v12, v13}, Landroid/os/BSPApplicationManager$Trigger;->acquirePerformanceLock(Landroid/os/IBinder;Ljava/lang/String;IJ)V

    .line 166
    iput-boolean v5, v0, Lcom/android/server/cpuperf/TgpaHelper;->mIsCpuPerfLockAcquired:Z

    .line 167
    iget-boolean v4, v0, Lcom/android/server/cpuperf/TgpaHelper;->DEBUG:Z

    if-eqz v4, :cond_d

    const-string v4, "TgpaHelper"

    const-string v11, "clong acquirePerformanceLockForTgpa----Cpu due to tgpa game"

    invoke-static {v4, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 170
    :cond_c
    iget-boolean v4, v0, Lcom/android/server/cpuperf/TgpaHelper;->mIsCpuPerfLockAcquired:Z

    if-eqz v4, :cond_d

    iget-object v4, v0, Lcom/android/server/cpuperf/TgpaHelper;->mCpuBoostForTgpaBinder:Landroid/os/IBinder;

    if-eqz v4, :cond_d

    .line 171
    iget-object v4, v0, Lcom/android/server/cpuperf/TgpaHelper;->mCpuBoostForTgpaBinder:Landroid/os/IBinder;

    invoke-static {v4}, Landroid/os/BSPApplicationManager$Trigger;->releasePerformanceLock(Landroid/os/IBinder;)V

    .line 172
    const/4 v4, 0x0

    iput-boolean v4, v0, Lcom/android/server/cpuperf/TgpaHelper;->mIsCpuPerfLockAcquired:Z

    .line 173
    iget-boolean v4, v0, Lcom/android/server/cpuperf/TgpaHelper;->DEBUG:Z

    if-eqz v4, :cond_d

    const-string v4, "TgpaHelper"

    const-string v11, "clong releasePerformanceLockForTgpa----Cpu due to tgpa game"

    invoke-static {v4, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    :cond_d
    :goto_4
    sget v4, Lcom/android/server/cpuperf/TgpaHelper;->CPUGPU_BOOST_LEVEL4:I

    if-ne v9, v4, :cond_e

    .line 178
    iget-boolean v4, v0, Lcom/android/server/cpuperf/TgpaHelper;->mIsGpuPerfLockAcquired:Z

    if-nez v4, :cond_f

    iget-object v4, v0, Lcom/android/server/cpuperf/TgpaHelper;->mGpuBoostForTgpaBinder:Landroid/os/IBinder;

    if-eqz v4, :cond_f

    .line 179
    iget-object v4, v0, Lcom/android/server/cpuperf/TgpaHelper;->mGpuBoostForTgpaBinder:Landroid/os/IBinder;

    const-string v11, "com.tgpa.gameboost.gpu"

    const/16 v14, 0x66

    invoke-static {v4, v11, v14, v12, v13}, Landroid/os/BSPApplicationManager$Trigger;->acquirePerformanceLock(Landroid/os/IBinder;Ljava/lang/String;IJ)V

    .line 184
    iput-boolean v5, v0, Lcom/android/server/cpuperf/TgpaHelper;->mIsGpuPerfLockAcquired:Z

    .line 185
    iget-boolean v4, v0, Lcom/android/server/cpuperf/TgpaHelper;->DEBUG:Z

    if-eqz v4, :cond_f

    const-string v4, "TgpaHelper"

    const-string v5, "clong acquirePerformanceLockForTgpa----Gpu due to tgpa game"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 188
    :cond_e
    iget-boolean v4, v0, Lcom/android/server/cpuperf/TgpaHelper;->mIsGpuPerfLockAcquired:Z

    if-eqz v4, :cond_f

    iget-object v4, v0, Lcom/android/server/cpuperf/TgpaHelper;->mGpuBoostForTgpaBinder:Landroid/os/IBinder;

    if-eqz v4, :cond_f

    .line 189
    iget-object v4, v0, Lcom/android/server/cpuperf/TgpaHelper;->mGpuBoostForTgpaBinder:Landroid/os/IBinder;

    invoke-static {v4}, Landroid/os/BSPApplicationManager$Trigger;->releasePerformanceLock(Landroid/os/IBinder;)V

    .line 190
    const/4 v4, 0x0

    iput-boolean v4, v0, Lcom/android/server/cpuperf/TgpaHelper;->mIsGpuPerfLockAcquired:Z

    .line 191
    iget-boolean v4, v0, Lcom/android/server/cpuperf/TgpaHelper;->DEBUG:Z

    if-eqz v4, :cond_f

    const-string v4, "TgpaHelper"

    const-string v5, "clong releasePerformanceLockForTgpa----Gpu due to tgpa game"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    :cond_f
    :goto_5
    return-void
.end method

.method public canBoostForTgpa()Z
    .locals 6

    .line 69
    const/4 v0, 0x1

    .line 70
    .local v0, "boost":Z
    const/4 v1, 0x0

    .local v1, "batteryLevel":I
    const/4 v2, 0x0

    .line 74
    .local v2, "skinTemp":I
    iget-boolean v3, p0, Lcom/android/server/cpuperf/TgpaHelper;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "TgpaHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "clong canBoostForTgpa boost="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    :cond_0
    return v0
.end method

.method public releasePerformanceLockForTgpa()V
    .locals 3

    .line 102
    iget-boolean v0, p0, Lcom/android/server/cpuperf/TgpaHelper;->mIsCpuPerfLockAcquired:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/cpuperf/TgpaHelper;->mCpuBoostForTgpaBinder:Landroid/os/IBinder;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/android/server/cpuperf/TgpaHelper;->mCpuBoostForTgpaBinder:Landroid/os/IBinder;

    invoke-static {v0}, Landroid/os/BSPApplicationManager$Trigger;->releasePerformanceLock(Landroid/os/IBinder;)V

    .line 104
    iput-boolean v1, p0, Lcom/android/server/cpuperf/TgpaHelper;->mIsCpuPerfLockAcquired:Z

    .line 105
    iget-boolean v0, p0, Lcom/android/server/cpuperf/TgpaHelper;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "TgpaHelper"

    const-string v2, "clong releasePerformanceLockForTgpa----Cpu due to background"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/cpuperf/TgpaHelper;->mIsGpuPerfLockAcquired:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/cpuperf/TgpaHelper;->mGpuBoostForTgpaBinder:Landroid/os/IBinder;

    if-eqz v0, :cond_1

    .line 108
    iget-object v0, p0, Lcom/android/server/cpuperf/TgpaHelper;->mGpuBoostForTgpaBinder:Landroid/os/IBinder;

    invoke-static {v0}, Landroid/os/BSPApplicationManager$Trigger;->releasePerformanceLock(Landroid/os/IBinder;)V

    .line 109
    iput-boolean v1, p0, Lcom/android/server/cpuperf/TgpaHelper;->mIsGpuPerfLockAcquired:Z

    .line 110
    iget-boolean v0, p0, Lcom/android/server/cpuperf/TgpaHelper;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "TgpaHelper"

    const-string v1, "clong releasePerformanceLockForTgpa----Gpu due to background"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    :cond_1
    return-void
.end method

.method public setThreadCpusetForTgpa(IZ)I
    .locals 6
    .param p1, "tid"    # I
    .param p2, "bigCluster"    # Z

    .line 79
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/server/cpuperf/TgpaHelper;->bigClusterPath:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/cpuperf/TgpaHelper;->littleClusterPath:Ljava/lang/String;

    .line 80
    .local v0, "path":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 82
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    .line 83
    iget-boolean v2, p0, Lcom/android/server/cpuperf/TgpaHelper;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "TgpaHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " doesn\'t exist"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :cond_1
    const/4 v2, 0x1

    return v2

    .line 87
    :cond_2
    const/4 v2, 0x0

    .line 89
    .local v2, "bw":Ljava/io/BufferedWriter;
    :try_start_0
    new-instance v3, Ljava/io/BufferedWriter;

    new-instance v4, Ljava/io/FileWriter;

    invoke-direct {v4, v1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    move-object v2, v3

    .line 90
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 91
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->newLine()V

    .line 92
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->flush()V

    .line 93
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    goto :goto_1

    .line 94
    :catch_0
    move-exception v3

    .line 95
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 97
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_1
    iget-boolean v3, p0, Lcom/android/server/cpuperf/TgpaHelper;->DEBUG:Z

    if-eqz v3, :cond_3

    const-string v3, "TgpaHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setThreadCpusetForTgpa tid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " bigCluster="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " success"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :cond_3
    const/4 v3, 0x0

    return v3
.end method
