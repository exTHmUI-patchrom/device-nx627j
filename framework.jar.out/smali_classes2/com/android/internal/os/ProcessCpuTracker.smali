.class public Lcom/android/internal/os/ProcessCpuTracker;
.super Ljava/lang/Object;
.source "ProcessCpuTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/ProcessCpuTracker$Stats;,
        Lcom/android/internal/os/ProcessCpuTracker$FilterStats;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final LOAD_AVERAGE_FORMAT:[I

.field private static final PROCESS_FULL_STATS_FORMAT:[I

.field static final PROCESS_FULL_STAT_MAJOR_FAULTS:I = 0x2

.field static final PROCESS_FULL_STAT_MINOR_FAULTS:I = 0x1

.field static final PROCESS_FULL_STAT_STIME:I = 0x4

.field static final PROCESS_FULL_STAT_UTIME:I = 0x3

.field static final PROCESS_FULL_STAT_VSIZE:I = 0x5

.field private static final PROCESS_STATS_FORMAT:[I

.field static final PROCESS_STAT_MAJOR_FAULTS:I = 0x1

.field static final PROCESS_STAT_MINOR_FAULTS:I = 0x0

.field static final PROCESS_STAT_STIME:I = 0x3

.field static final PROCESS_STAT_UTIME:I = 0x2

.field private static final SYSTEM_CPU_FORMAT:[I

.field private static final TAG:Ljava/lang/String; = "ProcessCpuTracker"

.field private static final localLOGV:Z = false

.field private static final sLoadComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/internal/os/ProcessCpuTracker$Stats;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBaseIdleTime:J

.field private mBaseIoWaitTime:J

.field private mBaseIrqTime:J

.field private mBaseSoftIrqTime:J

.field private mBaseSystemTime:J

.field private mBaseUserTime:J

.field private mBuffer:[B

.field private mCurPids:[I

.field private mCurThreadPids:[I

.field private mCurrentSampleRealTime:J

.field private mCurrentSampleTime:J

.field private mCurrentSampleWallTime:J

.field private mFirst:Z

.field private final mIncludeThreads:Z

.field private final mJiffyMillis:J

.field private mLastSampleRealTime:J

.field private mLastSampleTime:J

.field private mLastSampleWallTime:J

.field private mLoad1:F

.field private mLoad15:F

.field private mLoad5:F

.field private final mLoadAverageData:[F

.field private final mProcStats:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/os/ProcessCpuTracker$Stats;",
            ">;"
        }
    .end annotation
.end field

.field private final mProcessFullStatsData:[J

.field private final mProcessFullStatsStringData:[Ljava/lang/String;

.field private final mProcessStatsData:[J

.field private mRelIdleTime:I

.field private mRelIoWaitTime:I

.field private mRelIrqTime:I

.field private mRelSoftIrqTime:I

.field private mRelStatsAreGood:Z

.field private mRelSystemTime:I

.field private mRelUserTime:I

.field private final mSinglePidStatsData:[J

.field private final mSystemCpuData:[J

.field private final mWorkingProcs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/os/ProcessCpuTracker$Stats;",
            ">;"
        }
    .end annotation
.end field

.field private mWorkingProcsSorted:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 51
    const/16 v0, 0xf

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/internal/os/ProcessCpuTracker;->PROCESS_STATS_FORMAT:[I

    .line 81
    const/16 v0, 0x17

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/internal/os/ProcessCpuTracker;->PROCESS_FULL_STATS_FORMAT:[I

    .line 116
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/internal/os/ProcessCpuTracker;->SYSTEM_CPU_FORMAT:[I

    .line 129
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/android/internal/os/ProcessCpuTracker;->LOAD_AVERAGE_FORMAT:[I

    .line 277
    new-instance v0, Lcom/android/internal/os/ProcessCpuTracker$1;

    invoke-direct {v0}, Lcom/android/internal/os/ProcessCpuTracker$1;-><init>()V

    sput-object v0, Lcom/android/internal/os/ProcessCpuTracker;->sLoadComparator:Ljava/util/Comparator;

    return-void

    nop

    :array_0
    .array-data 4
        0x20
        0x220
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x2020
        0x20
        0x2020
        0x20
        0x2020
        0x2020
    .end array-data

    :array_1
    .array-data 4
        0x20
        0x1220
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x2020
        0x20
        0x2020
        0x20
        0x2020
        0x2020
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x2020
    .end array-data

    :array_2
    .array-data 4
        0x120
        0x2020
        0x2020
        0x2020
        0x2020
        0x2020
        0x2020
        0x2020
    .end array-data

    :array_3
    .array-data 4
        0x4020
        0x4020
        0x4020
    .end array-data
.end method

.method public constructor <init>(Z)V
    .locals 4
    .param p1, "includeThreads"    # Z

    .line 296
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    const/4 v0, 0x4

    new-array v1, v0, [J

    iput-object v1, p0, Lcom/android/internal/os/ProcessCpuTracker;->mProcessStatsData:[J

    .line 79
    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mSinglePidStatsData:[J

    .line 113
    const/4 v0, 0x6

    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lcom/android/internal/os/ProcessCpuTracker;->mProcessFullStatsStringData:[Ljava/lang/String;

    .line 114
    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mProcessFullStatsData:[J

    .line 127
    const/4 v0, 0x7

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mSystemCpuData:[J

    .line 135
    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mLoadAverageData:[F

    .line 142
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mLoad1:F

    .line 143
    iput v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mLoad5:F

    .line 144
    iput v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mLoad15:F

    .line 174
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mProcStats:Ljava/util/ArrayList;

    .line 175
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mWorkingProcs:Ljava/util/ArrayList;

    .line 178
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mFirst:Z

    .line 180
    const/16 v0, 0x1000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mBuffer:[B

    .line 297
    iput-boolean p1, p0, Lcom/android/internal/os/ProcessCpuTracker;->mIncludeThreads:Z

    .line 298
    sget v0, Landroid/system/OsConstants;->_SC_CLK_TCK:I

    invoke-static {v0}, Landroid/system/Os;->sysconf(I)J

    move-result-wide v0

    .line 299
    .local v0, "jiffyHz":J
    const-wide/16 v2, 0x3e8

    div-long/2addr v2, v0

    iput-wide v2, p0, Lcom/android/internal/os/ProcessCpuTracker;->mJiffyMillis:J

    .line 300
    return-void
.end method

.method private collectStats(Ljava/lang/String;IZ[ILjava/util/ArrayList;)[I
    .locals 34
    .param p1, "statsFile"    # Ljava/lang/String;
    .param p2, "parentPid"    # I
    .param p3, "first"    # Z
    .param p4, "curPids"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IZ[I",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/os/ProcessCpuTracker$Stats;",
            ">;)[I"
        }
    .end annotation

    .local p5, "allProcs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/ProcessCpuTracker$Stats;>;"
    move-object/from16 v6, p0

    move/from16 v7, p2

    .line 417
    move-object/from16 v8, p5

    move-object/from16 v9, p1

    move-object/from16 v10, p4

    invoke-static {v9, v10}, Landroid/os/Process;->getPids(Ljava/lang/String;[I)[I

    move-result-object v11

    .line 418
    .local v11, "pids":[I
    const/4 v12, 0x0

    if-nez v11, :cond_0

    move v0, v12

    goto :goto_0

    :cond_0
    array-length v0, v11

    :goto_0
    move v13, v0

    .line 419
    .local v13, "NP":I
    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 420
    .local v0, "NS":I
    const/4 v1, 0x0

    .line 421
    .local v1, "curStatsIndex":I
    move v14, v0

    move v0, v12

    .local v0, "i":I
    .local v14, "NS":I
    :goto_1
    move v15, v0

    .end local v0    # "i":I
    .local v15, "i":I
    if-ge v15, v13, :cond_11

    .line 422
    aget v4, v11, v15

    .line 423
    .local v4, "pid":I
    if-gez v4, :cond_1

    .line 424
    move v13, v4

    .line 425
    nop

    .line 582
    move v9, v7

    move-object/from16 v33, v11

    const/4 v11, 0x1

    goto/16 :goto_c

    .line 427
    :cond_1
    const/4 v0, 0x0

    if-ge v1, v14, :cond_2

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    goto :goto_2

    :cond_2
    move-object v2, v0

    :goto_2
    move-object v3, v2

    .line 429
    .local v3, "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    const/16 v16, 0x2

    if-eqz v3, :cond_9

    iget v2, v3, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    if-ne v2, v4, :cond_9

    .line 431
    iput-boolean v12, v3, Lcom/android/internal/os/ProcessCpuTracker$Stats;->added:Z

    .line 432
    iput-boolean v12, v3, Lcom/android/internal/os/ProcessCpuTracker$Stats;->working:Z

    .line 433
    add-int/lit8 v18, v1, 0x1

    .line 438
    .end local v1    # "curStatsIndex":I
    .local v18, "curStatsIndex":I
    iget-boolean v1, v3, Lcom/android/internal/os/ProcessCpuTracker$Stats;->interesting:Z

    if-eqz v1, :cond_8

    .line 439
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 441
    .local v1, "uptime":J
    iget-object v5, v6, Lcom/android/internal/os/ProcessCpuTracker;->mProcessStatsData:[J

    .line 442
    .local v5, "procStats":[J
    iget-object v12, v3, Lcom/android/internal/os/ProcessCpuTracker$Stats;->statFile:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v12

    move-wide/from16 v19, v1

    sget-object v1, Lcom/android/internal/os/ProcessCpuTracker;->PROCESS_STATS_FORMAT:[I

    .end local v1    # "uptime":J
    .local v19, "uptime":J
    invoke-static {v12, v1, v0, v5, v0}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    move-result v0

    if-nez v0, :cond_3

    .line 444
    nop

    .line 421
    move-object/from16 v33, v11

    move/from16 v25, v13

    move/from16 v26, v14

    move/from16 v27, v15

    .end local v3    # "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    .end local v4    # "pid":I
    .end local v5    # "procStats":[J
    .end local v11    # "pids":[I
    .end local v13    # "NP":I
    .end local v14    # "NS":I
    .end local v15    # "i":I
    .end local v19    # "uptime":J
    .local v25, "NP":I
    .local v26, "NS":I
    .local v27, "i":I
    .local v33, "pids":[I
    :goto_3
    const/4 v11, 0x1

    goto/16 :goto_6

    .line 447
    .end local v25    # "NP":I
    .end local v26    # "NS":I
    .end local v27    # "i":I
    .end local v33    # "pids":[I
    .restart local v3    # "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    .restart local v4    # "pid":I
    .restart local v5    # "procStats":[J
    .restart local v11    # "pids":[I
    .restart local v13    # "NP":I
    .restart local v14    # "NS":I
    .restart local v15    # "i":I
    .restart local v19    # "uptime":J
    :cond_3
    const/4 v0, 0x0

    aget-wide v1, v5, v0

    .line 448
    .local v1, "minfaults":J
    const/4 v0, 0x1

    aget-wide v9, v5, v0

    .line 449
    .local v9, "majfaults":J
    aget-wide v21, v5, v16

    move-wide/from16 v23, v1

    iget-wide v0, v6, Lcom/android/internal/os/ProcessCpuTracker;->mJiffyMillis:J

    .end local v1    # "minfaults":J
    .local v23, "minfaults":J
    mul-long v1, v21, v0

    .line 450
    .local v1, "utime":J
    const/4 v0, 0x3

    aget-wide v16, v5, v0

    move/from16 v25, v13

    iget-wide v12, v6, Lcom/android/internal/os/ProcessCpuTracker;->mJiffyMillis:J

    .end local v13    # "NP":I
    .restart local v25    # "NP":I
    mul-long v12, v12, v16

    .line 452
    .local v12, "stime":J
    move/from16 v26, v14

    move/from16 v27, v15

    iget-wide v14, v3, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_utime:J

    .end local v14    # "NS":I
    .end local v15    # "i":I
    .restart local v26    # "NS":I
    .restart local v27    # "i":I
    cmp-long v0, v1, v14

    if-nez v0, :cond_5

    iget-wide v14, v3, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_stime:J

    cmp-long v0, v12, v14

    if-nez v0, :cond_5

    .line 453
    const/4 v0, 0x0

    iput v0, v3, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_utime:I

    .line 454
    iput v0, v3, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_stime:I

    .line 455
    iput v0, v3, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_minfaults:I

    .line 456
    iput v0, v3, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_majfaults:I

    .line 457
    iget-boolean v14, v3, Lcom/android/internal/os/ProcessCpuTracker$Stats;->active:Z

    if-eqz v14, :cond_4

    .line 458
    iput-boolean v0, v3, Lcom/android/internal/os/ProcessCpuTracker$Stats;->active:Z

    .line 421
    .end local v1    # "utime":J
    .end local v3    # "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    .end local v4    # "pid":I
    .end local v5    # "procStats":[J
    .end local v9    # "majfaults":J
    .end local v11    # "pids":[I
    .end local v12    # "stime":J
    .end local v19    # "uptime":J
    .end local v23    # "minfaults":J
    .restart local v33    # "pids":[I
    :cond_4
    move-object/from16 v33, v11

    goto :goto_3

    .line 463
    .end local v33    # "pids":[I
    .restart local v1    # "utime":J
    .restart local v3    # "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    .restart local v4    # "pid":I
    .restart local v5    # "procStats":[J
    .restart local v9    # "majfaults":J
    .restart local v11    # "pids":[I
    .restart local v12    # "stime":J
    .restart local v19    # "uptime":J
    .restart local v23    # "minfaults":J
    :cond_5
    iget-boolean v0, v3, Lcom/android/internal/os/ProcessCpuTracker$Stats;->active:Z

    if-nez v0, :cond_6

    .line 464
    const/4 v14, 0x1

    iput-boolean v14, v3, Lcom/android/internal/os/ProcessCpuTracker$Stats;->active:Z

    goto :goto_4

    .line 467
    :cond_6
    const/4 v14, 0x1

    :goto_4
    if-gez v7, :cond_7

    .line 468
    iget-object v0, v3, Lcom/android/internal/os/ProcessCpuTracker$Stats;->cmdlineFile:Ljava/lang/String;

    invoke-direct {v6, v3, v0}, Lcom/android/internal/os/ProcessCpuTracker;->getName(Lcom/android/internal/os/ProcessCpuTracker$Stats;Ljava/lang/String;)V

    .line 469
    iget-object v0, v3, Lcom/android/internal/os/ProcessCpuTracker$Stats;->threadStats:Ljava/util/ArrayList;

    if-eqz v0, :cond_7

    .line 470
    iget-object v15, v3, Lcom/android/internal/os/ProcessCpuTracker$Stats;->threadsDir:Ljava/lang/String;

    const/16 v16, 0x0

    iget-object v0, v6, Lcom/android/internal/os/ProcessCpuTracker;->mCurThreadPids:[I

    iget-object v14, v3, Lcom/android/internal/os/ProcessCpuTracker$Stats;->threadStats:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object v0, v6

    move-wide/from16 v28, v9

    move-wide/from16 v7, v19

    move-wide/from16 v30, v23

    move-wide v9, v1

    move-object v1, v15

    .end local v1    # "utime":J
    .end local v19    # "uptime":J
    .end local v23    # "minfaults":J
    .local v7, "uptime":J
    .local v9, "utime":J
    .local v28, "majfaults":J
    .local v30, "minfaults":J
    move v2, v4

    move-object v15, v3

    move/from16 v3, v16

    .end local v3    # "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    .local v15, "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    move/from16 v32, v4

    move-object/from16 v4, v17

    .end local v4    # "pid":I
    .local v32, "pid":I
    move-object/from16 v16, v5

    move-object/from16 v33, v11

    const/4 v11, 0x1

    move-object v5, v14

    .end local v5    # "procStats":[J
    .end local v11    # "pids":[I
    .local v16, "procStats":[J
    .restart local v33    # "pids":[I
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/os/ProcessCpuTracker;->collectStats(Ljava/lang/String;IZ[ILjava/util/ArrayList;)[I

    move-result-object v0

    iput-object v0, v6, Lcom/android/internal/os/ProcessCpuTracker;->mCurThreadPids:[I

    goto :goto_5

    .line 481
    .end local v7    # "uptime":J
    .end local v15    # "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    .end local v16    # "procStats":[J
    .end local v28    # "majfaults":J
    .end local v30    # "minfaults":J
    .end local v32    # "pid":I
    .end local v33    # "pids":[I
    .restart local v1    # "utime":J
    .restart local v3    # "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    .restart local v4    # "pid":I
    .restart local v5    # "procStats":[J
    .local v9, "majfaults":J
    .restart local v11    # "pids":[I
    .restart local v19    # "uptime":J
    .restart local v23    # "minfaults":J
    :cond_7
    move-object v15, v3

    move/from16 v32, v4

    move-object/from16 v16, v5

    move-wide/from16 v28, v9

    move-object/from16 v33, v11

    move v11, v14

    move-wide/from16 v7, v19

    move-wide/from16 v30, v23

    move-wide v9, v1

    .end local v1    # "utime":J
    .end local v3    # "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    .end local v4    # "pid":I
    .end local v5    # "procStats":[J
    .end local v11    # "pids":[I
    .end local v19    # "uptime":J
    .end local v23    # "minfaults":J
    .restart local v7    # "uptime":J
    .local v9, "utime":J
    .restart local v15    # "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    .restart local v16    # "procStats":[J
    .restart local v28    # "majfaults":J
    .restart local v30    # "minfaults":J
    .restart local v32    # "pid":I
    .restart local v33    # "pids":[I
    :goto_5
    iget-wide v0, v15, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_uptime:J

    sub-long v0, v7, v0

    iput-wide v0, v15, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_uptime:J

    .line 482
    iput-wide v7, v15, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_uptime:J

    .line 483
    iget-wide v0, v15, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_utime:J

    sub-long v0, v9, v0

    long-to-int v0, v0

    iput v0, v15, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_utime:I

    .line 484
    iget-wide v0, v15, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_stime:J

    sub-long v0, v12, v0

    long-to-int v0, v0

    iput v0, v15, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_stime:I

    .line 485
    iput-wide v9, v15, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_utime:J

    .line 486
    iput-wide v12, v15, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_stime:J

    .line 487
    iget-wide v0, v15, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_minfaults:J

    sub-long v0, v30, v0

    long-to-int v0, v0

    iput v0, v15, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_minfaults:I

    .line 488
    iget-wide v0, v15, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_majfaults:J

    sub-long v0, v28, v0

    long-to-int v0, v0

    iput v0, v15, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_majfaults:I

    .line 489
    move-wide/from16 v0, v30

    iput-wide v0, v15, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_minfaults:J

    .line 490
    .end local v30    # "minfaults":J
    .local v0, "minfaults":J
    move-wide/from16 v2, v28

    iput-wide v2, v15, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_majfaults:J

    .line 491
    .end local v28    # "majfaults":J
    .local v2, "majfaults":J
    iput-boolean v11, v15, Lcom/android/internal/os/ProcessCpuTracker$Stats;->working:Z

    .line 492
    .end local v0    # "minfaults":J
    .end local v2    # "majfaults":J
    .end local v7    # "uptime":J
    .end local v9    # "utime":J
    .end local v12    # "stime":J
    .end local v16    # "procStats":[J
    goto :goto_6

    .line 421
    .end local v25    # "NP":I
    .end local v26    # "NS":I
    .end local v27    # "i":I
    .end local v32    # "pid":I
    .end local v33    # "pids":[I
    .restart local v11    # "pids":[I
    .restart local v13    # "NP":I
    .restart local v14    # "NS":I
    .local v15, "i":I
    :cond_8
    move-object/from16 v33, v11

    move/from16 v25, v13

    move/from16 v26, v14

    move/from16 v27, v15

    const/4 v11, 0x1

    .end local v11    # "pids":[I
    .end local v13    # "NP":I
    .end local v14    # "NS":I
    .end local v15    # "i":I
    .restart local v25    # "NP":I
    .restart local v26    # "NS":I
    .restart local v27    # "i":I
    .restart local v33    # "pids":[I
    :goto_6
    move/from16 v1, v18

    move/from16 v14, v26

    move-object/from16 v8, p5

    .end local v18    # "curStatsIndex":I
    .end local v26    # "NS":I
    .local v1, "curStatsIndex":I
    .restart local v14    # "NS":I
    :goto_7
    move/from16 v9, p2

    goto/16 :goto_b

    .line 497
    .end local v25    # "NP":I
    .end local v27    # "i":I
    .end local v33    # "pids":[I
    .restart local v3    # "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    .restart local v4    # "pid":I
    .restart local v11    # "pids":[I
    .restart local v13    # "NP":I
    .restart local v15    # "i":I
    :cond_9
    move/from16 v32, v4

    move-object/from16 v33, v11

    move/from16 v25, v13

    move/from16 v26, v14

    move/from16 v27, v15

    const/4 v11, 0x1

    move-object v15, v3

    .end local v3    # "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    .end local v4    # "pid":I
    .end local v11    # "pids":[I
    .end local v13    # "NP":I
    .end local v14    # "NS":I
    .local v15, "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    .restart local v25    # "NP":I
    .restart local v26    # "NS":I
    .restart local v27    # "i":I
    .restart local v32    # "pid":I
    .restart local v33    # "pids":[I
    if-eqz v15, :cond_b

    iget v2, v15, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    move/from16 v7, v32

    if-le v2, v7, :cond_a

    .line 499
    .end local v32    # "pid":I
    .local v7, "pid":I
    move-object/from16 v8, p5

    goto :goto_8

    .line 565
    :cond_a
    const/4 v0, 0x0

    iput v0, v15, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_utime:I

    .line 566
    iput v0, v15, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_stime:I

    .line 567
    iput v0, v15, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_minfaults:I

    .line 568
    iput v0, v15, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_majfaults:I

    .line 569
    iput-boolean v11, v15, Lcom/android/internal/os/ProcessCpuTracker$Stats;->removed:Z

    .line 570
    iput-boolean v11, v15, Lcom/android/internal/os/ProcessCpuTracker$Stats;->working:Z

    .line 571
    move-object/from16 v8, p5

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 572
    add-int/lit8 v14, v26, -0x1

    .line 578
    .end local v26    # "NS":I
    .restart local v14    # "NS":I
    add-int/lit8 v0, v27, -0x1

    .line 579
    .end local v27    # "i":I
    .local v0, "i":I
    nop

    .line 421
    move/from16 v27, v0

    goto :goto_7

    .line 499
    .end local v0    # "i":I
    .end local v7    # "pid":I
    .end local v14    # "NS":I
    .restart local v26    # "NS":I
    .restart local v27    # "i":I
    .restart local v32    # "pid":I
    :cond_b
    move/from16 v7, v32

    move-object/from16 v8, p5

    .end local v32    # "pid":I
    .restart local v7    # "pid":I
    :goto_8
    new-instance v2, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    iget-boolean v3, v6, Lcom/android/internal/os/ProcessCpuTracker;->mIncludeThreads:Z

    move/from16 v9, p2

    invoke-direct {v2, v7, v9, v3}, Lcom/android/internal/os/ProcessCpuTracker$Stats;-><init>(IIZ)V

    move-object v10, v2

    .line 500
    .end local v15    # "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    .local v10, "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    invoke-virtual {v8, v1, v10}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 501
    add-int/lit8 v12, v1, 0x1

    .line 502
    .end local v1    # "curStatsIndex":I
    .local v12, "curStatsIndex":I
    add-int/lit8 v14, v26, 0x1

    .line 507
    .end local v26    # "NS":I
    .restart local v14    # "NS":I
    iget-object v13, v6, Lcom/android/internal/os/ProcessCpuTracker;->mProcessFullStatsStringData:[Ljava/lang/String;

    .line 508
    .local v13, "procStatsString":[Ljava/lang/String;
    iget-object v15, v6, Lcom/android/internal/os/ProcessCpuTracker;->mProcessFullStatsData:[J

    .line 509
    .local v15, "procStats":[J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, v10, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_uptime:J

    .line 510
    iget-object v1, v10, Lcom/android/internal/os/ProcessCpuTracker$Stats;->statFile:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    .line 512
    .local v5, "path":Ljava/lang/String;
    sget-object v1, Lcom/android/internal/os/ProcessCpuTracker;->PROCESS_FULL_STATS_FORMAT:[I

    invoke-static {v5, v1, v13, v15, v0}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 518
    const/4 v0, 0x5

    aget-wide v0, v15, v0

    iput-wide v0, v10, Lcom/android/internal/os/ProcessCpuTracker$Stats;->vsize:J

    .line 520
    iput-boolean v11, v10, Lcom/android/internal/os/ProcessCpuTracker$Stats;->interesting:Z

    .line 521
    const/4 v0, 0x0

    aget-object v1, v13, v0

    iput-object v1, v10, Lcom/android/internal/os/ProcessCpuTracker$Stats;->baseName:Ljava/lang/String;

    .line 522
    aget-wide v0, v15, v11

    iput-wide v0, v10, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_minfaults:J

    .line 523
    aget-wide v0, v15, v16

    iput-wide v0, v10, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_majfaults:J

    .line 524
    const/4 v0, 0x3

    aget-wide v0, v15, v0

    iget-wide v2, v6, Lcom/android/internal/os/ProcessCpuTracker;->mJiffyMillis:J

    mul-long/2addr v0, v2

    iput-wide v0, v10, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_utime:J

    .line 525
    const/4 v0, 0x4

    aget-wide v0, v15, v0

    iget-wide v2, v6, Lcom/android/internal/os/ProcessCpuTracker;->mJiffyMillis:J

    mul-long/2addr v0, v2

    iput-wide v0, v10, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_stime:J

    goto :goto_9

    .line 532
    :cond_c
    const-string v0, "ProcessCpuTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Skipping unknown process pid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    const-string v0, "<unknown>"

    iput-object v0, v10, Lcom/android/internal/os/ProcessCpuTracker$Stats;->baseName:Ljava/lang/String;

    .line 534
    const-wide/16 v0, 0x0

    iput-wide v0, v10, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_stime:J

    iput-wide v0, v10, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_utime:J

    .line 535
    iput-wide v0, v10, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_majfaults:J

    iput-wide v0, v10, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_minfaults:J

    .line 538
    :goto_9
    if-gez v9, :cond_e

    .line 539
    iget-object v0, v10, Lcom/android/internal/os/ProcessCpuTracker$Stats;->cmdlineFile:Ljava/lang/String;

    invoke-direct {v6, v10, v0}, Lcom/android/internal/os/ProcessCpuTracker;->getName(Lcom/android/internal/os/ProcessCpuTracker$Stats;Ljava/lang/String;)V

    .line 540
    iget-object v0, v10, Lcom/android/internal/os/ProcessCpuTracker$Stats;->threadStats:Ljava/util/ArrayList;

    if-eqz v0, :cond_d

    .line 541
    iget-object v1, v10, Lcom/android/internal/os/ProcessCpuTracker$Stats;->threadsDir:Ljava/lang/String;

    const/4 v3, 0x1

    iget-object v4, v6, Lcom/android/internal/os/ProcessCpuTracker;->mCurThreadPids:[I

    iget-object v2, v10, Lcom/android/internal/os/ProcessCpuTracker$Stats;->threadStats:Ljava/util/ArrayList;

    move-object v0, v6

    move-object/from16 v16, v2

    move v2, v7

    move-object/from16 v17, v5

    move-object/from16 v5, v16

    .end local v5    # "path":Ljava/lang/String;
    .local v17, "path":Ljava/lang/String;
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/os/ProcessCpuTracker;->collectStats(Ljava/lang/String;IZ[ILjava/util/ArrayList;)[I

    move-result-object v0

    iput-object v0, v6, Lcom/android/internal/os/ProcessCpuTracker;->mCurThreadPids:[I

    goto :goto_a

    .line 553
    .end local v17    # "path":Ljava/lang/String;
    .restart local v5    # "path":Ljava/lang/String;
    :cond_d
    move-object/from16 v17, v5

    .end local v5    # "path":Ljava/lang/String;
    .restart local v17    # "path":Ljava/lang/String;
    goto :goto_a

    .line 544
    .end local v17    # "path":Ljava/lang/String;
    .restart local v5    # "path":Ljava/lang/String;
    :cond_e
    move-object/from16 v17, v5

    .end local v5    # "path":Ljava/lang/String;
    .restart local v17    # "path":Ljava/lang/String;
    iget-boolean v0, v10, Lcom/android/internal/os/ProcessCpuTracker$Stats;->interesting:Z

    if-eqz v0, :cond_f

    .line 545
    iget-object v0, v10, Lcom/android/internal/os/ProcessCpuTracker$Stats;->baseName:Ljava/lang/String;

    iput-object v0, v10, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    .line 546
    iget-object v0, v10, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    invoke-virtual {v6, v0}, Lcom/android/internal/os/ProcessCpuTracker;->onMeasureProcessName(Ljava/lang/String;)I

    move-result v0

    iput v0, v10, Lcom/android/internal/os/ProcessCpuTracker$Stats;->nameWidth:I

    .line 553
    :cond_f
    :goto_a
    const/4 v0, 0x0

    iput v0, v10, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_utime:I

    .line 554
    iput v0, v10, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_stime:I

    .line 555
    iput v0, v10, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_minfaults:I

    .line 556
    iput v0, v10, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_majfaults:I

    .line 557
    iput-boolean v11, v10, Lcom/android/internal/os/ProcessCpuTracker$Stats;->added:Z

    .line 558
    if-nez p3, :cond_10

    iget-boolean v1, v10, Lcom/android/internal/os/ProcessCpuTracker$Stats;->interesting:Z

    if-eqz v1, :cond_10

    .line 559
    iput-boolean v11, v10, Lcom/android/internal/os/ProcessCpuTracker$Stats;->working:Z

    .line 421
    .end local v7    # "pid":I
    .end local v10    # "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    .end local v13    # "procStatsString":[Ljava/lang/String;
    .end local v15    # "procStats":[J
    .end local v17    # "path":Ljava/lang/String;
    :cond_10
    move v1, v12

    .end local v12    # "curStatsIndex":I
    .restart local v1    # "curStatsIndex":I
    :goto_b
    add-int/lit8 v2, v27, 0x1

    .end local v27    # "i":I
    .local v2, "i":I
    move v0, v2

    move v7, v9

    move/from16 v13, v25

    move-object/from16 v11, v33

    move-object/from16 v9, p1

    move-object/from16 v10, p4

    const/4 v12, 0x0

    goto/16 :goto_1

    .line 582
    .end local v2    # "i":I
    .end local v25    # "NP":I
    .end local v33    # "pids":[I
    .restart local v11    # "pids":[I
    .local v13, "NP":I
    :cond_11
    move v9, v7

    move-object/from16 v33, v11

    move/from16 v25, v13

    move/from16 v26, v14

    const/4 v11, 0x1

    .end local v11    # "pids":[I
    .restart local v33    # "pids":[I
    :goto_c
    if-ge v1, v14, :cond_12

    .line 584
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    .line 585
    .local v2, "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    const/4 v3, 0x0

    iput v3, v2, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_utime:I

    .line 586
    iput v3, v2, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_stime:I

    .line 587
    iput v3, v2, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_minfaults:I

    .line 588
    iput v3, v2, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_majfaults:I

    .line 589
    iput-boolean v11, v2, Lcom/android/internal/os/ProcessCpuTracker$Stats;->removed:Z

    .line 590
    iput-boolean v11, v2, Lcom/android/internal/os/ProcessCpuTracker$Stats;->working:Z

    .line 591
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 592
    add-int/lit8 v14, v14, -0x1

    .line 594
    .end local v2    # "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    goto :goto_c

    .line 596
    :cond_12
    return-object v33
.end method

.method private getName(Lcom/android/internal/os/ProcessCpuTracker$Stats;Ljava/lang/String;)V
    .locals 5
    .param p1, "st"    # Lcom/android/internal/os/ProcessCpuTracker$Stats;
    .param p2, "cmdlineFile"    # Ljava/lang/String;

    .line 897
    iget-object v0, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    .line 898
    .local v0, "newName":Ljava/lang/String;
    iget-object v1, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    const-string v2, "app_process"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    const-string v2, "<pre-initialized>"

    .line 899
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 900
    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, p2, v1}, Lcom/android/internal/os/ProcessCpuTracker;->readFile(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v1

    .line 901
    .local v1, "cmdName":Ljava/lang/String;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_1

    .line 902
    move-object v0, v1

    .line 903
    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 904
    .local v2, "i":I
    if-lez v2, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v3

    if-ge v2, v4, :cond_1

    .line 905
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 908
    .end local v2    # "i":I
    :cond_1
    if-nez v0, :cond_2

    .line 909
    iget-object v0, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->baseName:Ljava/lang/String;

    .line 912
    .end local v1    # "cmdName":Ljava/lang/String;
    :cond_2
    iget-object v1, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 913
    :cond_3
    iput-object v0, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    .line 914
    iget-object v1, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/internal/os/ProcessCpuTracker;->onMeasureProcessName(Ljava/lang/String;)I

    move-result v1

    iput v1, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->nameWidth:I

    .line 916
    :cond_4
    return-void
.end method

.method private printProcessCPU(Ljava/io/PrintWriter;Ljava/lang/String;ILjava/lang/String;IIIIIIII)V
    .locals 18
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "pid"    # I
    .param p4, "label"    # Ljava/lang/String;
    .param p5, "totalTime"    # I
    .param p6, "user"    # I
    .param p7, "system"    # I
    .param p8, "iowait"    # I
    .param p9, "irq"    # I
    .param p10, "softIrq"    # I
    .param p11, "minFaults"    # I
    .param p12, "majFaults"    # I

    move-object/from16 v6, p1

    move/from16 v7, p3

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    move/from16 v12, p10

    move/from16 v13, p11

    .line 822
    move/from16 v14, p12

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 823
    if-nez p5, :cond_0

    const/4 v0, 0x1

    .line 824
    .end local p5    # "totalTime":I
    .local v0, "totalTime":I
    move v15, v0

    goto :goto_0

    .end local v0    # "totalTime":I
    .restart local p5    # "totalTime":I
    :cond_0
    move/from16 v15, p5

    .end local p5    # "totalTime":I
    .local v15, "totalTime":I
    :goto_0
    add-int v0, v8, v9

    add-int/2addr v0, v10

    add-int/2addr v0, v11

    add-int/2addr v0, v12

    int-to-long v2, v0

    int-to-long v4, v15

    move-object/from16 v0, p0

    move-object v1, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/os/ProcessCpuTracker;->printRatio(Ljava/io/PrintWriter;JJ)V

    .line 825
    const-string v0, "% "

    invoke-virtual {v6, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 826
    if-ltz v7, :cond_1

    .line 827
    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->print(I)V

    .line 828
    const-string v0, "/"

    invoke-virtual {v6, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 830
    :cond_1
    move-object/from16 v4, p4

    invoke-virtual {v6, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 831
    const-string v0, ": "

    invoke-virtual {v6, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 832
    int-to-long v2, v8

    int-to-long v0, v15

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    move-object v1, v6

    move-wide/from16 v4, v16

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/os/ProcessCpuTracker;->printRatio(Ljava/io/PrintWriter;JJ)V

    .line 833
    const-string v0, "% user + "

    invoke-virtual {v6, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 834
    int-to-long v2, v9

    int-to-long v4, v15

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/os/ProcessCpuTracker;->printRatio(Ljava/io/PrintWriter;JJ)V

    .line 835
    const-string v0, "% kernel"

    invoke-virtual {v6, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 836
    if-lez v10, :cond_2

    .line 837
    const-string v0, " + "

    invoke-virtual {v6, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 838
    int-to-long v2, v10

    int-to-long v4, v15

    move-object/from16 v0, p0

    move-object v1, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/os/ProcessCpuTracker;->printRatio(Ljava/io/PrintWriter;JJ)V

    .line 839
    const-string v0, "% iowait"

    invoke-virtual {v6, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 841
    :cond_2
    if-lez v11, :cond_3

    .line 842
    const-string v0, " + "

    invoke-virtual {v6, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 843
    int-to-long v2, v11

    int-to-long v4, v15

    move-object/from16 v0, p0

    move-object v1, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/os/ProcessCpuTracker;->printRatio(Ljava/io/PrintWriter;JJ)V

    .line 844
    const-string v0, "% irq"

    invoke-virtual {v6, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 846
    :cond_3
    if-lez v12, :cond_4

    .line 847
    const-string v0, " + "

    invoke-virtual {v6, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 848
    int-to-long v2, v12

    int-to-long v4, v15

    move-object/from16 v0, p0

    move-object v1, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/os/ProcessCpuTracker;->printRatio(Ljava/io/PrintWriter;JJ)V

    .line 849
    const-string v0, "% softirq"

    invoke-virtual {v6, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 851
    :cond_4
    if-gtz v13, :cond_5

    if-lez v14, :cond_7

    .line 852
    :cond_5
    const-string v0, " / faults:"

    invoke-virtual {v6, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 853
    if-lez v13, :cond_6

    .line 854
    const-string v0, " "

    invoke-virtual {v6, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 855
    invoke-virtual {v6, v13}, Ljava/io/PrintWriter;->print(I)V

    .line 856
    const-string v0, " minor"

    invoke-virtual {v6, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 858
    :cond_6
    if-lez v14, :cond_7

    .line 859
    const-string v0, " "

    invoke-virtual {v6, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 860
    invoke-virtual {v6, v14}, Ljava/io/PrintWriter;->print(I)V

    .line 861
    const-string v0, " major"

    invoke-virtual {v6, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 864
    :cond_7
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 865
    return-void
.end method

.method private printRatio(Ljava/io/PrintWriter;JJ)V
    .locals 8
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "numerator"    # J
    .param p4, "denominator"    # J

    .line 807
    const-wide/16 v0, 0x3e8

    mul-long/2addr v0, p2

    div-long/2addr v0, p4

    .line 808
    .local v0, "thousands":J
    const-wide/16 v2, 0xa

    div-long v4, v0, v2

    .line 809
    .local v4, "hundreds":J
    invoke-virtual {p1, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    .line 810
    cmp-long v6, v4, v2

    if-gez v6, :cond_0

    .line 811
    mul-long/2addr v2, v4

    sub-long v2, v0, v2

    .line 812
    .local v2, "remainder":J
    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-eqz v6, :cond_0

    .line 813
    const/16 v6, 0x2e

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(C)V

    .line 814
    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    .line 817
    .end local v2    # "remainder":J
    :cond_0
    return-void
.end method

.method private readFile(Ljava/lang/String;C)Ljava/lang/String;
    .locals 8
    .param p1, "file"    # Ljava/lang/String;
    .param p2, "endChar"    # C

    .line 871
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 872
    .local v0, "savedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    const/4 v1, 0x0

    move-object v2, v1

    .line 874
    .local v2, "is":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    .line 875
    iget-object v3, p0, Lcom/android/internal/os/ProcessCpuTracker;->mBuffer:[B

    invoke-virtual {v2, v3}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    .line 876
    .local v3, "len":I
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 878
    if-lez v3, :cond_2

    .line 880
    const/4 v4, 0x0

    move v5, v4

    .local v5, "i":I
    :goto_0
    if-ge v5, v3, :cond_1

    .line 881
    iget-object v6, p0, Lcom/android/internal/os/ProcessCpuTracker;->mBuffer:[B

    aget-byte v6, v6, v5

    if-ne v6, p2, :cond_0

    .line 882
    goto :goto_1

    .line 880
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 885
    :cond_1
    :goto_1
    new-instance v6, Ljava/lang/String;

    iget-object v7, p0, Lcom/android/internal/os/ProcessCpuTracker;->mBuffer:[B

    invoke-direct {v6, v7, v4, v5}, Ljava/lang/String;-><init>([BII)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 890
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 891
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 885
    return-object v6

    .line 890
    .end local v3    # "len":I
    .end local v5    # "i":I
    :catchall_0
    move-exception v1

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 891
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v1

    .line 888
    :catch_0
    move-exception v3

    goto :goto_2

    .line 887
    :catch_1
    move-exception v3

    .line 890
    :cond_2
    :goto_2
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 891
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 892
    nop

    .line 893
    return-object v1
.end method


# virtual methods
.method final buildWorkingProcs()V
    .locals 8

    .line 672
    iget-boolean v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mWorkingProcsSorted:Z

    if-nez v0, :cond_4

    .line 673
    iget-object v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mWorkingProcs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 674
    iget-object v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mProcStats:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 675
    .local v0, "N":I
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    const/4 v3, 0x1

    if-ge v2, v0, :cond_3

    .line 676
    iget-object v4, p0, Lcom/android/internal/os/ProcessCpuTracker;->mProcStats:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    .line 677
    .local v4, "stats":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    iget-boolean v5, v4, Lcom/android/internal/os/ProcessCpuTracker$Stats;->working:Z

    if-eqz v5, :cond_2

    .line 678
    iget-object v5, p0, Lcom/android/internal/os/ProcessCpuTracker;->mWorkingProcs:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 679
    iget-object v5, v4, Lcom/android/internal/os/ProcessCpuTracker$Stats;->threadStats:Ljava/util/ArrayList;

    if-eqz v5, :cond_2

    iget-object v5, v4, Lcom/android/internal/os/ProcessCpuTracker$Stats;->threadStats:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-le v5, v3, :cond_2

    .line 680
    iget-object v3, v4, Lcom/android/internal/os/ProcessCpuTracker$Stats;->workingThreads:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 681
    iget-object v3, v4, Lcom/android/internal/os/ProcessCpuTracker$Stats;->threadStats:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 682
    .local v3, "M":I
    move v5, v1

    .local v5, "j":I
    :goto_1
    if-ge v5, v3, :cond_1

    .line 683
    iget-object v6, v4, Lcom/android/internal/os/ProcessCpuTracker$Stats;->threadStats:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    .line 684
    .local v6, "tstats":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    iget-boolean v7, v6, Lcom/android/internal/os/ProcessCpuTracker$Stats;->working:Z

    if-eqz v7, :cond_0

    .line 685
    iget-object v7, v4, Lcom/android/internal/os/ProcessCpuTracker$Stats;->workingThreads:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 682
    .end local v6    # "tstats":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 688
    .end local v5    # "j":I
    :cond_1
    iget-object v5, v4, Lcom/android/internal/os/ProcessCpuTracker$Stats;->workingThreads:Ljava/util/ArrayList;

    sget-object v6, Lcom/android/internal/os/ProcessCpuTracker;->sLoadComparator:Ljava/util/Comparator;

    invoke-static {v5, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 675
    .end local v3    # "M":I
    .end local v4    # "stats":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 692
    .end local v2    # "i":I
    :cond_3
    iget-object v1, p0, Lcom/android/internal/os/ProcessCpuTracker;->mWorkingProcs:Ljava/util/ArrayList;

    sget-object v2, Lcom/android/internal/os/ProcessCpuTracker;->sLoadComparator:Ljava/util/Comparator;

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 693
    iput-boolean v3, p0, Lcom/android/internal/os/ProcessCpuTracker;->mWorkingProcsSorted:Z

    .line 695
    .end local v0    # "N":I
    :cond_4
    return-void
.end method

.method public final countStats()I
    .locals 1

    .line 698
    iget-object v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mProcStats:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final countWorkingStats()I
    .locals 1

    .line 718
    invoke-virtual {p0}, Lcom/android/internal/os/ProcessCpuTracker;->buildWorkingProcs()V

    .line 719
    iget-object v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mWorkingProcs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getCpuTimeForPid(I)J
    .locals 7
    .param p1, "pid"    # I

    .line 604
    iget-object v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mSinglePidStatsData:[J

    monitor-enter v0

    .line 605
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/proc/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/stat"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 606
    .local v1, "statFile":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/internal/os/ProcessCpuTracker;->mSinglePidStatsData:[J

    .line 607
    .local v2, "statsData":[J
    sget-object v3, Lcom/android/internal/os/ProcessCpuTracker;->PROCESS_STATS_FORMAT:[I

    const/4 v4, 0x0

    invoke-static {v1, v3, v4, v2, v4}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 609
    const/4 v3, 0x2

    aget-wide v3, v2, v3

    const/4 v5, 0x3

    aget-wide v5, v2, v5

    add-long/2addr v3, v5

    .line 611
    .local v3, "time":J
    iget-wide v5, p0, Lcom/android/internal/os/ProcessCpuTracker;->mJiffyMillis:J

    mul-long/2addr v5, v3

    monitor-exit v0

    return-wide v5

    .line 613
    .end local v3    # "time":J
    :cond_0
    const-wide/16 v3, 0x0

    monitor-exit v0

    return-wide v3

    .line 614
    .end local v1    # "statFile":Ljava/lang/String;
    .end local v2    # "statsData":[J
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final getLastIdleTime()I
    .locals 1

    .line 656
    iget v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mRelIdleTime:I

    return v0
.end method

.method public final getLastIoWaitTime()I
    .locals 1

    .line 635
    iget v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mRelIoWaitTime:I

    return v0
.end method

.method public final getLastIrqTime()I
    .locals 1

    .line 642
    iget v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mRelIrqTime:I

    return v0
.end method

.method public final getLastSoftIrqTime()I
    .locals 1

    .line 649
    iget v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mRelSoftIrqTime:I

    return v0
.end method

.method public final getLastSystemTime()I
    .locals 1

    .line 628
    iget v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mRelSystemTime:I

    return v0
.end method

.method public final getLastUserTime()I
    .locals 1

    .line 621
    iget v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mRelUserTime:I

    return v0
.end method

.method public final getStats(I)Lcom/android/internal/os/ProcessCpuTracker$Stats;
    .locals 1
    .param p1, "index"    # I

    .line 702
    iget-object v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mProcStats:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    return-object v0
.end method

.method public final getStats(Lcom/android/internal/os/ProcessCpuTracker$FilterStats;)Ljava/util/List;
    .locals 5
    .param p1, "filter"    # Lcom/android/internal/os/ProcessCpuTracker$FilterStats;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/os/ProcessCpuTracker$FilterStats;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/internal/os/ProcessCpuTracker$Stats;",
            ">;"
        }
    .end annotation

    .line 706
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/internal/os/ProcessCpuTracker;->mProcStats:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 707
    .local v0, "statses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/ProcessCpuTracker$Stats;>;"
    iget-object v1, p0, Lcom/android/internal/os/ProcessCpuTracker;->mProcStats:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 708
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "p":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 709
    iget-object v3, p0, Lcom/android/internal/os/ProcessCpuTracker;->mProcStats:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    .line 710
    .local v3, "stats":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    invoke-interface {p1, v3}, Lcom/android/internal/os/ProcessCpuTracker$FilterStats;->needed(Lcom/android/internal/os/ProcessCpuTracker$Stats;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 711
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 708
    .end local v3    # "stats":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 714
    .end local v2    # "p":I
    :cond_1
    return-object v0
.end method

.method public final getTotalCpuPercent()F
    .locals 3

    .line 664
    iget v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mRelUserTime:I

    iget v1, p0, Lcom/android/internal/os/ProcessCpuTracker;->mRelSystemTime:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/internal/os/ProcessCpuTracker;->mRelIrqTime:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/internal/os/ProcessCpuTracker;->mRelIdleTime:I

    add-int/2addr v0, v1

    .line 665
    .local v0, "denom":I
    if-gtz v0, :cond_0

    .line 666
    const/4 v1, 0x0

    return v1

    .line 668
    :cond_0
    iget v1, p0, Lcom/android/internal/os/ProcessCpuTracker;->mRelUserTime:I

    iget v2, p0, Lcom/android/internal/os/ProcessCpuTracker;->mRelSystemTime:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/internal/os/ProcessCpuTracker;->mRelIrqTime:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v1, v2

    int-to-float v2, v0

    div-float/2addr v1, v2

    return v1
.end method

.method public final getWorkingStats(I)Lcom/android/internal/os/ProcessCpuTracker$Stats;
    .locals 1
    .param p1, "index"    # I

    .line 723
    iget-object v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mWorkingProcs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    return-object v0
.end method

.method public final hasGoodLastStats()Z
    .locals 1

    .line 660
    iget-boolean v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mRelStatsAreGood:Z

    return v0
.end method

.method public init()V
    .locals 1

    .line 311
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mFirst:Z

    .line 312
    invoke-virtual {p0}, Lcom/android/internal/os/ProcessCpuTracker;->update()V

    .line 313
    return-void
.end method

.method public onLoadChanged(FFF)V
    .locals 0
    .param p1, "load1"    # F
    .param p2, "load5"    # F
    .param p3, "load15"    # F

    .line 303
    return-void
.end method

.method public onMeasureProcessName(Ljava/lang/String;)I
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 306
    const/4 v0, 0x0

    return v0
.end method

.method public final printCurrentLoad()Ljava/lang/String;
    .locals 4

    .line 727
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 728
    .local v0, "sw":Ljava/io/StringWriter;
    new-instance v1, Lcom/android/internal/util/FastPrintWriter;

    const/4 v2, 0x0

    const/16 v3, 0x80

    invoke-direct {v1, v0, v2, v3}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/Writer;ZI)V

    .line 729
    .local v1, "pw":Ljava/io/PrintWriter;
    const-string v2, "Load: "

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 730
    iget v2, p0, Lcom/android/internal/os/ProcessCpuTracker;->mLoad1:F

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(F)V

    .line 731
    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 732
    iget v2, p0, Lcom/android/internal/os/ProcessCpuTracker;->mLoad5:F

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(F)V

    .line 733
    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 734
    iget v2, p0, Lcom/android/internal/os/ProcessCpuTracker;->mLoad15:F

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(F)V

    .line 735
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    .line 736
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public final printCurrentState(J)Ljava/lang/String;
    .locals 33
    .param p1, "now"    # J

    move-object/from16 v13, p0

    .line 740
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    move-object v12, v0

    .line 742
    .local v12, "sdf":Ljava/text/SimpleDateFormat;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/os/ProcessCpuTracker;->buildWorkingProcs()V

    .line 744
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    move-object v11, v0

    .line 745
    .local v11, "sw":Ljava/io/StringWriter;
    new-instance v0, Lcom/android/internal/util/FastPrintWriter;

    const/4 v10, 0x0

    const/16 v1, 0x400

    invoke-direct {v0, v11, v10, v1}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/Writer;ZI)V

    move-object v9, v0

    .line 747
    .local v9, "pw":Ljava/io/PrintWriter;
    const-string v0, "CPU usage from "

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 748
    iget-wide v0, v13, Lcom/android/internal/os/ProcessCpuTracker;->mLastSampleTime:J

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 749
    iget-wide v0, v13, Lcom/android/internal/os/ProcessCpuTracker;->mLastSampleTime:J

    sub-long v0, p1, v0

    invoke-virtual {v9, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 750
    const-string/jumbo v0, "ms to "

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 751
    iget-wide v0, v13, Lcom/android/internal/os/ProcessCpuTracker;->mCurrentSampleTime:J

    sub-long v0, p1, v0

    invoke-virtual {v9, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 752
    const-string/jumbo v0, "ms ago"

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    .line 754
    :cond_0
    iget-wide v0, v13, Lcom/android/internal/os/ProcessCpuTracker;->mLastSampleTime:J

    sub-long v0, v0, p1

    invoke-virtual {v9, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 755
    const-string/jumbo v0, "ms to "

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 756
    iget-wide v0, v13, Lcom/android/internal/os/ProcessCpuTracker;->mCurrentSampleTime:J

    sub-long v0, v0, p1

    invoke-virtual {v9, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 757
    const-string/jumbo v0, "ms later"

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 759
    :goto_0
    const-string v0, " ("

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 760
    new-instance v0, Ljava/util/Date;

    iget-wide v1, v13, Lcom/android/internal/os/ProcessCpuTracker;->mLastSampleWallTime:J

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v12, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 761
    const-string v0, " to "

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 762
    new-instance v0, Ljava/util/Date;

    iget-wide v1, v13, Lcom/android/internal/os/ProcessCpuTracker;->mCurrentSampleWallTime:J

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v12, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 763
    const-string v0, ")"

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 765
    iget-wide v0, v13, Lcom/android/internal/os/ProcessCpuTracker;->mCurrentSampleTime:J

    iget-wide v2, v13, Lcom/android/internal/os/ProcessCpuTracker;->mLastSampleTime:J

    sub-long v14, v0, v2

    .line 766
    .local v14, "sampleTime":J
    iget-wide v0, v13, Lcom/android/internal/os/ProcessCpuTracker;->mCurrentSampleRealTime:J

    iget-wide v2, v13, Lcom/android/internal/os/ProcessCpuTracker;->mLastSampleRealTime:J

    sub-long v16, v0, v2

    .line 767
    .local v16, "sampleRealTime":J
    const-wide/16 v0, 0x0

    cmp-long v2, v16, v0

    const-wide/16 v3, 0x64

    if-lez v2, :cond_1

    mul-long v0, v14, v3

    div-long v0, v0, v16

    nop

    :cond_1
    move-wide v7, v0

    .line 768
    .local v7, "percAwake":J
    cmp-long v0, v7, v3

    if-eqz v0, :cond_2

    .line 769
    const-string v0, " with "

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 770
    invoke-virtual {v9, v7, v8}, Ljava/io/PrintWriter;->print(J)V

    .line 771
    const-string v0, "% awake"

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 773
    :cond_2
    const-string v0, ":"

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 775
    iget v0, v13, Lcom/android/internal/os/ProcessCpuTracker;->mRelUserTime:I

    iget v1, v13, Lcom/android/internal/os/ProcessCpuTracker;->mRelSystemTime:I

    add-int/2addr v0, v1

    iget v1, v13, Lcom/android/internal/os/ProcessCpuTracker;->mRelIoWaitTime:I

    add-int/2addr v0, v1

    iget v1, v13, Lcom/android/internal/os/ProcessCpuTracker;->mRelIrqTime:I

    add-int/2addr v0, v1

    iget v1, v13, Lcom/android/internal/os/ProcessCpuTracker;->mRelSoftIrqTime:I

    add-int/2addr v0, v1

    iget v1, v13, Lcom/android/internal/os/ProcessCpuTracker;->mRelIdleTime:I

    add-int v18, v0, v1

    .line 781
    .local v18, "totalTime":I
    iget-object v0, v13, Lcom/android/internal/os/ProcessCpuTracker;->mWorkingProcs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 782
    .local v6, "N":I
    move v0, v10

    .line 782
    .local v0, "i":I
    :goto_1
    move v5, v0

    .line 782
    .end local v0    # "i":I
    .local v5, "i":I
    if-ge v5, v6, :cond_8

    .line 783
    iget-object v0, v13, Lcom/android/internal/os/ProcessCpuTracker;->mWorkingProcs:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    .line 784
    .local v4, "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    iget-boolean v0, v4, Lcom/android/internal/os/ProcessCpuTracker$Stats;->added:Z

    if-eqz v0, :cond_3

    const-string v0, " +"

    :goto_2
    move-object v2, v0

    goto :goto_3

    :cond_3
    iget-boolean v0, v4, Lcom/android/internal/os/ProcessCpuTracker$Stats;->removed:Z

    if-eqz v0, :cond_4

    const-string v0, " -"

    goto :goto_2

    :cond_4
    const-string v0, "  "

    goto :goto_2

    :goto_3
    iget v3, v4, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    iget-object v1, v4, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    move-object/from16 v19, v11

    iget-wide v10, v4, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_uptime:J

    .end local v11    # "sw":Ljava/io/StringWriter;
    .local v19, "sw":Ljava/io/StringWriter;
    long-to-int v10, v10

    iget v11, v4, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_utime:I

    iget v0, v4, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_stime:I

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-wide/from16 v24, v7

    iget v8, v4, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_minfaults:I

    .line 784
    .end local v7    # "percAwake":J
    .local v24, "percAwake":J
    iget v7, v4, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_majfaults:I

    move/from16 v26, v0

    move-object v0, v13

    move-object/from16 v27, v1

    move-object v1, v9

    move-object/from16 v28, v4

    move-object/from16 v4, v27

    .line 784
    .end local v4    # "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    .local v28, "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    move/from16 v27, v5

    move v5, v10

    .line 784
    .end local v5    # "i":I
    .local v27, "i":I
    move/from16 v29, v6

    move v6, v11

    .line 784
    .end local v6    # "N":I
    .local v29, "N":I
    move/from16 v30, v7

    move/from16 v7, v26

    move v11, v8

    move/from16 v8, v21

    move-object v10, v9

    move/from16 v9, v22

    .line 784
    .end local v9    # "pw":Ljava/io/PrintWriter;
    .local v10, "pw":Ljava/io/PrintWriter;
    move-object/from16 v31, v10

    const/16 v20, 0x0

    move/from16 v10, v23

    .line 784
    .end local v10    # "pw":Ljava/io/PrintWriter;
    .local v31, "pw":Ljava/io/PrintWriter;
    move-object/from16 v32, v19

    .line 784
    .end local v19    # "sw":Ljava/io/StringWriter;
    .local v32, "sw":Ljava/io/StringWriter;
    move-object/from16 v19, v12

    move/from16 v12, v30

    .line 784
    .end local v12    # "sdf":Ljava/text/SimpleDateFormat;
    .local v19, "sdf":Ljava/text/SimpleDateFormat;
    invoke-direct/range {v0 .. v12}, Lcom/android/internal/os/ProcessCpuTracker;->printProcessCPU(Ljava/io/PrintWriter;Ljava/lang/String;ILjava/lang/String;IIIIIIII)V

    .line 787
    move-object/from16 v12, v28

    iget-boolean v0, v12, Lcom/android/internal/os/ProcessCpuTracker$Stats;->removed:Z

    .line 787
    .end local v28    # "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    .local v12, "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    if-nez v0, :cond_7

    iget-object v0, v12, Lcom/android/internal/os/ProcessCpuTracker$Stats;->workingThreads:Ljava/util/ArrayList;

    if-eqz v0, :cond_7

    .line 788
    iget-object v0, v12, Lcom/android/internal/os/ProcessCpuTracker$Stats;->workingThreads:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 789
    .local v11, "M":I
    move/from16 v0, v20

    .line 789
    .local v0, "j":I
    :goto_4
    move v10, v0

    .line 789
    .end local v0    # "j":I
    .local v10, "j":I
    if-ge v10, v11, :cond_7

    .line 790
    iget-object v0, v12, Lcom/android/internal/os/ProcessCpuTracker$Stats;->workingThreads:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    .line 791
    .local v9, "tst":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    nop

    .line 792
    iget-boolean v0, v9, Lcom/android/internal/os/ProcessCpuTracker$Stats;->added:Z

    if-eqz v0, :cond_5

    const-string v0, "   +"

    :goto_5
    move-object v2, v0

    goto :goto_6

    :cond_5
    iget-boolean v0, v9, Lcom/android/internal/os/ProcessCpuTracker$Stats;->removed:Z

    if-eqz v0, :cond_6

    const-string v0, "   -"

    goto :goto_5

    :cond_6
    const-string v0, "    "

    goto :goto_5

    :goto_6
    iget v3, v9, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    iget-object v4, v9, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    iget-wide v0, v12, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_uptime:J

    long-to-int v5, v0

    iget v6, v9, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_utime:I

    iget v7, v9, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_stime:I

    const/4 v8, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v26, 0x0

    .line 791
    move-object v0, v13

    move-object/from16 v1, v31

    move-object/from16 v28, v9

    move/from16 v9, v21

    .line 791
    .end local v9    # "tst":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    .local v28, "tst":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    move/from16 v21, v10

    move/from16 v10, v22

    .line 791
    .end local v10    # "j":I
    .local v21, "j":I
    move/from16 v22, v11

    move/from16 v11, v23

    .line 791
    .end local v11    # "M":I
    .local v22, "M":I
    move-object/from16 v23, v12

    move/from16 v12, v26

    .line 791
    .end local v12    # "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    .local v23, "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    invoke-direct/range {v0 .. v12}, Lcom/android/internal/os/ProcessCpuTracker;->printProcessCPU(Ljava/io/PrintWriter;Ljava/lang/String;ILjava/lang/String;IIIIIIII)V

    .line 789
    .end local v28    # "tst":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    add-int/lit8 v0, v21, 0x1

    .line 789
    .end local v21    # "j":I
    .restart local v0    # "j":I
    move/from16 v11, v22

    move-object/from16 v12, v23

    goto :goto_4

    .line 782
    .end local v0    # "j":I
    .end local v22    # "M":I
    .end local v23    # "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    :cond_7
    add-int/lit8 v0, v27, 0x1

    .line 782
    .end local v27    # "i":I
    .local v0, "i":I
    move-object/from16 v12, v19

    move/from16 v10, v20

    move-wide/from16 v7, v24

    move/from16 v6, v29

    move-object/from16 v9, v31

    move-object/from16 v11, v32

    goto/16 :goto_1

    .line 799
    .end local v0    # "i":I
    .end local v19    # "sdf":Ljava/text/SimpleDateFormat;
    .end local v24    # "percAwake":J
    .end local v29    # "N":I
    .end local v31    # "pw":Ljava/io/PrintWriter;
    .end local v32    # "sw":Ljava/io/StringWriter;
    .restart local v6    # "N":I
    .restart local v7    # "percAwake":J
    .local v9, "pw":Ljava/io/PrintWriter;
    .local v11, "sw":Ljava/io/StringWriter;
    .local v12, "sdf":Ljava/text/SimpleDateFormat;
    :cond_8
    move/from16 v29, v6

    move-wide/from16 v24, v7

    move-object/from16 v31, v9

    move-object/from16 v32, v11

    move-object/from16 v19, v12

    .line 799
    .end local v6    # "N":I
    .end local v7    # "percAwake":J
    .end local v9    # "pw":Ljava/io/PrintWriter;
    .end local v11    # "sw":Ljava/io/StringWriter;
    .end local v12    # "sdf":Ljava/text/SimpleDateFormat;
    .restart local v19    # "sdf":Ljava/text/SimpleDateFormat;
    .restart local v24    # "percAwake":J
    .restart local v29    # "N":I
    .restart local v31    # "pw":Ljava/io/PrintWriter;
    .restart local v32    # "sw":Ljava/io/StringWriter;
    const-string v2, ""

    const/4 v3, -0x1

    const-string v4, "TOTAL"

    iget v6, v13, Lcom/android/internal/os/ProcessCpuTracker;->mRelUserTime:I

    iget v7, v13, Lcom/android/internal/os/ProcessCpuTracker;->mRelSystemTime:I

    iget v8, v13, Lcom/android/internal/os/ProcessCpuTracker;->mRelIoWaitTime:I

    iget v9, v13, Lcom/android/internal/os/ProcessCpuTracker;->mRelIrqTime:I

    iget v10, v13, Lcom/android/internal/os/ProcessCpuTracker;->mRelSoftIrqTime:I

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v0, v13

    move-object/from16 v1, v31

    move/from16 v5, v18

    invoke-direct/range {v0 .. v12}, Lcom/android/internal/os/ProcessCpuTracker;->printProcessCPU(Ljava/io/PrintWriter;Ljava/lang/String;ILjava/lang/String;IIIIIIII)V

    .line 802
    move-object/from16 v0, v31

    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 803
    .end local v31    # "pw":Ljava/io/PrintWriter;
    .local v0, "pw":Ljava/io/PrintWriter;
    move-object/from16 v1, v32

    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v2

    .line 803
    .end local v32    # "sw":Ljava/io/StringWriter;
    .local v1, "sw":Ljava/io/StringWriter;
    return-object v2
.end method

.method public update()V
    .locals 26

    .line 318
    move-object/from16 v7, p0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 319
    .local v8, "nowUptime":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    .line 320
    .local v10, "nowRealtime":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 322
    .local v12, "nowWallTime":J
    iget-object v14, v7, Lcom/android/internal/os/ProcessCpuTracker;->mSystemCpuData:[J

    .line 323
    .local v14, "sysCpu":[J
    const-string v0, "/proc/stat"

    sget-object v1, Lcom/android/internal/os/ProcessCpuTracker;->SYSTEM_CPU_FORMAT:[I

    const/4 v15, 0x0

    invoke-static {v0, v1, v15, v14, v15}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    move-result v0

    const/16 v16, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    if-eqz v0, :cond_0

    .line 326
    aget-wide v0, v14, v5

    aget-wide v2, v14, v6

    add-long/2addr v0, v2

    iget-wide v2, v7, Lcom/android/internal/os/ProcessCpuTracker;->mJiffyMillis:J

    mul-long/2addr v0, v2

    .line 328
    .local v0, "usertime":J
    aget-wide v2, v14, v16

    iget-wide v5, v7, Lcom/android/internal/os/ProcessCpuTracker;->mJiffyMillis:J

    mul-long/2addr v2, v5

    .line 330
    .local v2, "systemtime":J
    const/4 v4, 0x3

    aget-wide v4, v14, v4

    move-wide/from16 v18, v12

    iget-wide v12, v7, Lcom/android/internal/os/ProcessCpuTracker;->mJiffyMillis:J

    .end local v12    # "nowWallTime":J
    .local v18, "nowWallTime":J
    mul-long/2addr v4, v12

    .line 332
    .local v4, "idletime":J
    const/4 v6, 0x4

    aget-wide v12, v14, v6

    move-wide/from16 v20, v10

    iget-wide v10, v7, Lcom/android/internal/os/ProcessCpuTracker;->mJiffyMillis:J

    .end local v10    # "nowRealtime":J
    .local v20, "nowRealtime":J
    mul-long/2addr v12, v10

    .line 333
    .local v12, "iowaittime":J
    const/4 v6, 0x5

    aget-wide v10, v14, v6

    move-wide/from16 v22, v8

    iget-wide v8, v7, Lcom/android/internal/os/ProcessCpuTracker;->mJiffyMillis:J

    .end local v8    # "nowUptime":J
    .local v22, "nowUptime":J
    mul-long/2addr v10, v8

    .line 334
    .local v10, "irqtime":J
    const/4 v6, 0x6

    aget-wide v8, v14, v6

    move-object/from16 v24, v14

    iget-wide v14, v7, Lcom/android/internal/os/ProcessCpuTracker;->mJiffyMillis:J

    .end local v14    # "sysCpu":[J
    .local v24, "sysCpu":[J
    mul-long/2addr v8, v14

    .line 341
    .local v8, "softirqtime":J
    iget-wide v14, v7, Lcom/android/internal/os/ProcessCpuTracker;->mBaseUserTime:J

    sub-long v14, v0, v14

    long-to-int v6, v14

    iput v6, v7, Lcom/android/internal/os/ProcessCpuTracker;->mRelUserTime:I

    .line 342
    iget-wide v14, v7, Lcom/android/internal/os/ProcessCpuTracker;->mBaseSystemTime:J

    sub-long v14, v2, v14

    long-to-int v6, v14

    iput v6, v7, Lcom/android/internal/os/ProcessCpuTracker;->mRelSystemTime:I

    .line 343
    iget-wide v14, v7, Lcom/android/internal/os/ProcessCpuTracker;->mBaseIoWaitTime:J

    sub-long v14, v12, v14

    long-to-int v6, v14

    iput v6, v7, Lcom/android/internal/os/ProcessCpuTracker;->mRelIoWaitTime:I

    .line 344
    iget-wide v14, v7, Lcom/android/internal/os/ProcessCpuTracker;->mBaseIrqTime:J

    sub-long v14, v10, v14

    long-to-int v6, v14

    iput v6, v7, Lcom/android/internal/os/ProcessCpuTracker;->mRelIrqTime:I

    .line 345
    iget-wide v14, v7, Lcom/android/internal/os/ProcessCpuTracker;->mBaseSoftIrqTime:J

    sub-long v14, v8, v14

    long-to-int v6, v14

    iput v6, v7, Lcom/android/internal/os/ProcessCpuTracker;->mRelSoftIrqTime:I

    .line 346
    iget-wide v14, v7, Lcom/android/internal/os/ProcessCpuTracker;->mBaseIdleTime:J

    sub-long v14, v4, v14

    long-to-int v6, v14

    iput v6, v7, Lcom/android/internal/os/ProcessCpuTracker;->mRelIdleTime:I

    .line 347
    const/4 v6, 0x1

    iput-boolean v6, v7, Lcom/android/internal/os/ProcessCpuTracker;->mRelStatsAreGood:Z

    .line 359
    iput-wide v0, v7, Lcom/android/internal/os/ProcessCpuTracker;->mBaseUserTime:J

    .line 360
    iput-wide v2, v7, Lcom/android/internal/os/ProcessCpuTracker;->mBaseSystemTime:J

    .line 361
    iput-wide v12, v7, Lcom/android/internal/os/ProcessCpuTracker;->mBaseIoWaitTime:J

    .line 362
    iput-wide v10, v7, Lcom/android/internal/os/ProcessCpuTracker;->mBaseIrqTime:J

    .line 363
    iput-wide v8, v7, Lcom/android/internal/os/ProcessCpuTracker;->mBaseSoftIrqTime:J

    .line 364
    iput-wide v4, v7, Lcom/android/internal/os/ProcessCpuTracker;->mBaseIdleTime:J

    .end local v0    # "usertime":J
    .end local v2    # "systemtime":J
    .end local v4    # "idletime":J
    .end local v8    # "softirqtime":J
    .end local v10    # "irqtime":J
    .end local v12    # "iowaittime":J
    goto :goto_0

    .line 379
    .end local v18    # "nowWallTime":J
    .end local v20    # "nowRealtime":J
    .end local v22    # "nowUptime":J
    .end local v24    # "sysCpu":[J
    .local v8, "nowUptime":J
    .local v10, "nowRealtime":J
    .local v12, "nowWallTime":J
    .restart local v14    # "sysCpu":[J
    :cond_0
    move-wide/from16 v22, v8

    move-wide/from16 v20, v10

    move-wide/from16 v18, v12

    move-object/from16 v24, v14

    .end local v8    # "nowUptime":J
    .end local v10    # "nowRealtime":J
    .end local v12    # "nowWallTime":J
    .end local v14    # "sysCpu":[J
    .restart local v18    # "nowWallTime":J
    .restart local v20    # "nowRealtime":J
    .restart local v22    # "nowUptime":J
    .restart local v24    # "sysCpu":[J
    :goto_0
    iget-wide v0, v7, Lcom/android/internal/os/ProcessCpuTracker;->mCurrentSampleTime:J

    iput-wide v0, v7, Lcom/android/internal/os/ProcessCpuTracker;->mLastSampleTime:J

    .line 380
    move-wide/from16 v8, v22

    iput-wide v8, v7, Lcom/android/internal/os/ProcessCpuTracker;->mCurrentSampleTime:J

    .line 381
    .end local v22    # "nowUptime":J
    .restart local v8    # "nowUptime":J
    iget-wide v0, v7, Lcom/android/internal/os/ProcessCpuTracker;->mCurrentSampleRealTime:J

    iput-wide v0, v7, Lcom/android/internal/os/ProcessCpuTracker;->mLastSampleRealTime:J

    .line 382
    move-wide/from16 v10, v20

    iput-wide v10, v7, Lcom/android/internal/os/ProcessCpuTracker;->mCurrentSampleRealTime:J

    .line 383
    .end local v20    # "nowRealtime":J
    .restart local v10    # "nowRealtime":J
    iget-wide v0, v7, Lcom/android/internal/os/ProcessCpuTracker;->mCurrentSampleWallTime:J

    iput-wide v0, v7, Lcom/android/internal/os/ProcessCpuTracker;->mLastSampleWallTime:J

    .line 384
    move-wide/from16 v12, v18

    iput-wide v12, v7, Lcom/android/internal/os/ProcessCpuTracker;->mCurrentSampleWallTime:J

    .line 386
    .end local v18    # "nowWallTime":J
    .restart local v12    # "nowWallTime":J
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    move-object v14, v0

    .line 388
    .local v14, "savedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :try_start_0
    const-string v2, "/proc"

    const/4 v3, -0x1

    iget-boolean v4, v7, Lcom/android/internal/os/ProcessCpuTracker;->mFirst:Z

    iget-object v5, v7, Lcom/android/internal/os/ProcessCpuTracker;->mCurPids:[I

    iget-object v0, v7, Lcom/android/internal/os/ProcessCpuTracker;->mProcStats:Ljava/util/ArrayList;

    move-object v1, v7

    const/4 v15, 0x0

    move/from16 v17, v6

    move-object v6, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/os/ProcessCpuTracker;->collectStats(Ljava/lang/String;IZ[ILjava/util/ArrayList;)[I

    move-result-object v0

    iput-object v0, v7, Lcom/android/internal/os/ProcessCpuTracker;->mCurPids:[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 390
    invoke-static {v14}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 391
    nop

    .line 393
    iget-object v0, v7, Lcom/android/internal/os/ProcessCpuTracker;->mLoadAverageData:[F

    .line 394
    .local v0, "loadAverages":[F
    const-string v1, "/proc/loadavg"

    sget-object v2, Lcom/android/internal/os/ProcessCpuTracker;->LOAD_AVERAGE_FORMAT:[I

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, v3, v0}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 396
    aget v1, v0, v15

    .line 397
    .local v1, "load1":F
    aget v2, v0, v17

    .line 398
    .local v2, "load5":F
    aget v3, v0, v16

    .line 399
    .local v3, "load15":F
    iget v4, v7, Lcom/android/internal/os/ProcessCpuTracker;->mLoad1:F

    cmpl-float v4, v1, v4

    if-nez v4, :cond_1

    iget v4, v7, Lcom/android/internal/os/ProcessCpuTracker;->mLoad5:F

    cmpl-float v4, v2, v4

    if-nez v4, :cond_1

    iget v4, v7, Lcom/android/internal/os/ProcessCpuTracker;->mLoad15:F

    cmpl-float v4, v3, v4

    if-eqz v4, :cond_2

    .line 400
    :cond_1
    iput v1, v7, Lcom/android/internal/os/ProcessCpuTracker;->mLoad1:F

    .line 401
    iput v2, v7, Lcom/android/internal/os/ProcessCpuTracker;->mLoad5:F

    .line 402
    iput v3, v7, Lcom/android/internal/os/ProcessCpuTracker;->mLoad15:F

    .line 403
    invoke-virtual {v7, v1, v2, v3}, Lcom/android/internal/os/ProcessCpuTracker;->onLoadChanged(FFF)V

    .line 410
    .end local v1    # "load1":F
    .end local v2    # "load5":F
    .end local v3    # "load15":F
    :cond_2
    iput-boolean v15, v7, Lcom/android/internal/os/ProcessCpuTracker;->mWorkingProcsSorted:Z

    .line 411
    iput-boolean v15, v7, Lcom/android/internal/os/ProcessCpuTracker;->mFirst:Z

    .line 412
    return-void

    .line 390
    .end local v0    # "loadAverages":[F
    :catchall_0
    move-exception v0

    invoke-static {v14}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v0
.end method
