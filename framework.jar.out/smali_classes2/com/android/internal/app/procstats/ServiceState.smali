.class public final Lcom/android/internal/app/procstats/ServiceState;
.super Ljava/lang/Object;
.source "ServiceState.java"


# static fields
.field private static final DEBUG:Z = false

.field public static final SERVICE_BOUND:I = 0x2

.field public static final SERVICE_COUNT:I = 0x4

.field public static final SERVICE_EXEC:I = 0x3

.field public static final SERVICE_RUN:I = 0x0

.field public static final SERVICE_STARTED:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ProcessStats"


# instance fields
.field private mBoundCount:I

.field private mBoundStartTime:J

.field private mBoundState:I

.field private final mDurations:Lcom/android/internal/app/procstats/DurationsTable;

.field private mExecCount:I

.field private mExecStartTime:J

.field private mExecState:I

.field private final mName:Ljava/lang/String;

.field private mOwner:Ljava/lang/Object;

.field private final mPackage:Ljava/lang/String;

.field private mProc:Lcom/android/internal/app/procstats/ProcessState;

.field private final mProcessName:Ljava/lang/String;

.field private mRestarting:Z

.field private mRunCount:I

.field private mRunStartTime:J

.field private mRunState:I

.field private mStarted:Z

.field private mStartedCount:I

.field private mStartedStartTime:J

.field private mStartedState:I


# direct methods
.method public constructor <init>(Lcom/android/internal/app/procstats/ProcessStats;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/app/procstats/ProcessState;)V
    .locals 2
    .param p1, "processStats"    # Lcom/android/internal/app/procstats/ProcessStats;
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "processName"    # Ljava/lang/String;
    .param p5, "proc"    # Lcom/android/internal/app/procstats/ProcessState;

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mRunState:I

    .line 71
    iput v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mStartedState:I

    .line 75
    iput v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mBoundState:I

    .line 79
    iput v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mExecState:I

    .line 84
    iput-object p2, p0, Lcom/android/internal/app/procstats/ServiceState;->mPackage:Ljava/lang/String;

    .line 85
    iput-object p3, p0, Lcom/android/internal/app/procstats/ServiceState;->mName:Ljava/lang/String;

    .line 86
    iput-object p4, p0, Lcom/android/internal/app/procstats/ServiceState;->mProcessName:Ljava/lang/String;

    .line 87
    iput-object p5, p0, Lcom/android/internal/app/procstats/ServiceState;->mProc:Lcom/android/internal/app/procstats/ProcessState;

    .line 88
    new-instance v0, Lcom/android/internal/app/procstats/DurationsTable;

    iget-object v1, p1, Lcom/android/internal/app/procstats/ProcessStats;->mTableData:Lcom/android/internal/app/procstats/SparseMappingTable;

    invoke-direct {v0, v1}, Lcom/android/internal/app/procstats/DurationsTable;-><init>(Lcom/android/internal/app/procstats/SparseMappingTable;)V

    iput-object v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    .line 89
    return-void
.end method

.method private dumpStats(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIJJJZ)V
    .locals 21
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "prefixInner"    # Ljava/lang/String;
    .param p4, "headerPrefix"    # Ljava/lang/String;
    .param p5, "header"    # Ljava/lang/String;
    .param p6, "count"    # I
    .param p7, "serviceType"    # I
    .param p8, "state"    # I
    .param p9, "startTime"    # J
    .param p11, "now"    # J
    .param p13, "totalTime"    # J
    .param p15, "dumpAll"    # Z

    move-object/from16 v9, p1

    move-object/from16 v10, p5

    move/from16 v11, p6

    .line 390
    if-eqz v11, :cond_1

    .line 391
    if-eqz p15, :cond_0

    .line 392
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 393
    const-string v0, " op count "

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v9, v11}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ":"

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 394
    move-object/from16 v0, p0

    move-object v1, v9

    move-object/from16 v2, p3

    move/from16 v3, p7

    move/from16 v4, p8

    move-wide/from16 v5, p9

    move-wide/from16 v7, p11

    invoke-virtual/range {v0 .. v8}, Lcom/android/internal/app/procstats/ServiceState;->dumpTime(Ljava/io/PrintWriter;Ljava/lang/String;IIJJ)J

    goto :goto_0

    .line 396
    :cond_0
    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v12, p0

    move/from16 v15, p7

    move/from16 v16, p8

    move-wide/from16 v17, p9

    move-wide/from16 v19, p11

    invoke-virtual/range {v12 .. v20}, Lcom/android/internal/app/procstats/ServiceState;->dumpTime(Ljava/io/PrintWriter;Ljava/lang/String;IIJJ)J

    move-result-wide v0

    .line 397
    .local v0, "myTime":J
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v2, p4

    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 398
    const-string v3, " count "

    invoke-virtual {v9, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v9, v11}, Ljava/io/PrintWriter;->print(I)V

    .line 399
    const-string v3, " / time "

    invoke-virtual {v9, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 400
    long-to-double v3, v0

    move-wide/from16 v5, p13

    long-to-double v7, v5

    div-double/2addr v3, v7

    invoke-static {v9, v3, v4}, Lcom/android/internal/app/procstats/DumpUtils;->printPercent(Ljava/io/PrintWriter;D)V

    .line 401
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .end local v0    # "myTime":J
    goto :goto_1

    .line 404
    :cond_1
    :goto_0
    move-object/from16 v2, p4

    move-wide/from16 v5, p13

    :goto_1
    return-void
.end method

.method private dumpTimeCheckin(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;IIIJJ)V
    .locals 18
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "uid"    # I
    .param p5, "vers"    # J
    .param p7, "serviceName"    # Ljava/lang/String;
    .param p8, "serviceType"    # I
    .param p9, "opCount"    # I
    .param p10, "curState"    # I
    .param p11, "curStartTime"    # J
    .param p13, "now"    # J

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p9

    move/from16 v3, p10

    .line 459
    if-gtz v2, :cond_0

    .line 460
    return-void

    .line 462
    :cond_0
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 463
    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 464
    move-object/from16 v4, p3

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 465
    const-string v5, ","

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 466
    move/from16 v5, p4

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 467
    const-string v6, ","

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 468
    move-wide/from16 v6, p5

    invoke-virtual {v1, v6, v7}, Ljava/io/PrintWriter;->print(J)V

    .line 469
    const-string v8, ","

    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 470
    move-object/from16 v8, p7

    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 471
    const-string v9, ","

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 472
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 473
    const/4 v9, 0x0

    .line 474
    .local v9, "didCurState":Z
    iget-object v10, v0, Lcom/android/internal/app/procstats/ServiceState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v10}, Lcom/android/internal/app/procstats/DurationsTable;->getKeyCount()I

    move-result v10

    .line 475
    .local v10, "N":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    if-ge v11, v10, :cond_3

    .line 476
    iget-object v2, v0, Lcom/android/internal/app/procstats/ServiceState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v2, v11}, Lcom/android/internal/app/procstats/DurationsTable;->getKeyAt(I)I

    move-result v2

    .line 477
    .local v2, "key":I
    iget-object v4, v0, Lcom/android/internal/app/procstats/ServiceState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v4, v2}, Lcom/android/internal/app/procstats/DurationsTable;->getValue(I)J

    move-result-wide v12

    .line 478
    .local v12, "time":J
    invoke-static {v2}, Lcom/android/internal/app/procstats/SparseMappingTable;->getIdFromKey(I)B

    move-result v4

    .line 479
    .local v4, "type":I
    div-int/lit8 v0, v4, 0x4

    .line 480
    .local v0, "memFactor":I
    rem-int/lit8 v4, v4, 0x4

    .line 481
    move v14, v2

    move/from16 v2, p8

    if-eq v4, v2, :cond_1

    .line 482
    .end local v2    # "key":I
    .local v14, "key":I
    goto :goto_1

    .line 484
    :cond_1
    if-ne v3, v0, :cond_2

    .line 485
    const/4 v9, 0x1

    .line 486
    sub-long v15, p13, p11

    add-long/2addr v12, v15

    .line 488
    .end local v12    # "time":J
    .local v4, "time":J
    .local v17, "type":I
    :cond_2
    move/from16 v17, v4

    move-wide v4, v12

    invoke-static {v1, v0, v4, v5}, Lcom/android/internal/app/procstats/DumpUtils;->printAdjTagAndValue(Ljava/io/PrintWriter;IJ)V

    .line 475
    .end local v0    # "memFactor":I
    .end local v4    # "time":J
    .end local v14    # "key":I
    .end local v17    # "type":I
    :goto_1
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v0, p0

    move/from16 v2, p9

    move-object/from16 v4, p3

    move/from16 v5, p4

    goto :goto_0

    .line 490
    .end local v11    # "i":I
    :cond_3
    move/from16 v2, p8

    if-nez v9, :cond_4

    const/4 v0, -0x1

    if-eq v3, v0, :cond_4

    .line 491
    sub-long v4, p13, p11

    invoke-static {v1, v3, v4, v5}, Lcom/android/internal/app/procstats/DumpUtils;->printAdjTagAndValue(Ljava/io/PrintWriter;IJ)V

    .line 493
    :cond_4
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 494
    return-void
.end method

.method private updateRunning(IJ)V
    .locals 5
    .param p1, "memFactor"    # I
    .param p2, "now"    # J

    .line 263
    iget v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mStartedState:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mBoundState:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mExecState:I

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 264
    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, p1

    .line 265
    .local v0, "state":I
    :goto_1
    iget v2, p0, Lcom/android/internal/app/procstats/ServiceState;->mRunState:I

    if-eq v2, v0, :cond_4

    .line 266
    iget v2, p0, Lcom/android/internal/app/procstats/ServiceState;->mRunState:I

    if-eq v2, v1, :cond_2

    .line 267
    iget-object v1, p0, Lcom/android/internal/app/procstats/ServiceState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/internal/app/procstats/ServiceState;->mRunState:I

    mul-int/lit8 v3, v3, 0x4

    add-int/2addr v2, v3

    iget-wide v3, p0, Lcom/android/internal/app/procstats/ServiceState;->mRunStartTime:J

    sub-long v3, p2, v3

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/internal/app/procstats/DurationsTable;->addDuration(IJ)V

    goto :goto_2

    .line 269
    :cond_2
    if-eq v0, v1, :cond_3

    .line 270
    iget v1, p0, Lcom/android/internal/app/procstats/ServiceState;->mRunCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/app/procstats/ServiceState;->mRunCount:I

    .line 272
    :cond_3
    :goto_2
    iput v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mRunState:I

    .line 273
    iput-wide p2, p0, Lcom/android/internal/app/procstats/ServiceState;->mRunStartTime:J

    .line 275
    :cond_4
    return-void
.end method


# virtual methods
.method public add(Lcom/android/internal/app/procstats/ServiceState;)V
    .locals 2
    .param p1, "other"    # Lcom/android/internal/app/procstats/ServiceState;

    .line 204
    iget-object v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    iget-object v1, p1, Lcom/android/internal/app/procstats/ServiceState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v0, v1}, Lcom/android/internal/app/procstats/DurationsTable;->addDurations(Lcom/android/internal/app/procstats/DurationsTable;)V

    .line 205
    iget v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mRunCount:I

    iget v1, p1, Lcom/android/internal/app/procstats/ServiceState;->mRunCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mRunCount:I

    .line 206
    iget v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mStartedCount:I

    iget v1, p1, Lcom/android/internal/app/procstats/ServiceState;->mStartedCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mStartedCount:I

    .line 207
    iget v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mBoundCount:I

    iget v1, p1, Lcom/android/internal/app/procstats/ServiceState;->mBoundCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mBoundCount:I

    .line 208
    iget v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mExecCount:I

    iget v1, p1, Lcom/android/internal/app/procstats/ServiceState;->mExecCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mExecCount:I

    .line 209
    return-void
.end method

.method public applyNewOwner(Ljava/lang/Object;)V
    .locals 5
    .param p1, "newOwner"    # Ljava/lang/Object;

    .line 128
    iget-object v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mOwner:Ljava/lang/Object;

    if-eq v0, p1, :cond_4

    .line 129
    iget-object v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mOwner:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 130
    iput-object p1, p0, Lcom/android/internal/app/procstats/ServiceState;->mOwner:Ljava/lang/Object;

    .line 131
    iget-object v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mProc:Lcom/android/internal/app/procstats/ProcessState;

    iget-object v1, p0, Lcom/android/internal/app/procstats/ServiceState;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/internal/app/procstats/ProcessState;->incActiveServices(Ljava/lang/String;)V

    goto :goto_0

    .line 135
    :cond_0
    iput-object p1, p0, Lcom/android/internal/app/procstats/ServiceState;->mOwner:Ljava/lang/Object;

    .line 136
    iget-boolean v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mStarted:Z

    const/4 v1, -0x1

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mBoundState:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mExecState:I

    if-eq v0, v1, :cond_4

    .line 137
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 138
    .local v2, "now":J
    iget-boolean v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mStarted:Z

    const/4 v4, 0x0

    if-eqz v0, :cond_2

    .line 142
    invoke-virtual {p0, v4, v4, v2, v3}, Lcom/android/internal/app/procstats/ServiceState;->setStarted(ZIJ)V

    .line 144
    :cond_2
    iget v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mBoundState:I

    if-eq v0, v1, :cond_3

    .line 148
    invoke-virtual {p0, v4, v4, v2, v3}, Lcom/android/internal/app/procstats/ServiceState;->setBound(ZIJ)V

    .line 150
    :cond_3
    iget v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mExecState:I

    if-eq v0, v1, :cond_4

    .line 154
    invoke-virtual {p0, v4, v4, v2, v3}, Lcom/android/internal/app/procstats/ServiceState;->setExecuting(ZIJ)V

    .line 159
    .end local v2    # "now":J
    :cond_4
    :goto_0
    return-void
.end method

.method public clearCurrentOwner(Ljava/lang/Object;Z)V
    .locals 7
    .param p1, "owner"    # Ljava/lang/Object;
    .param p2, "silently"    # Z

    .line 162
    iget-object v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mOwner:Ljava/lang/Object;

    if-ne v0, p1, :cond_7

    .line 163
    iget-object v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mProc:Lcom/android/internal/app/procstats/ProcessState;

    iget-object v1, p0, Lcom/android/internal/app/procstats/ServiceState;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/internal/app/procstats/ProcessState;->decActiveServices(Ljava/lang/String;)V

    .line 164
    iget-boolean v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mStarted:Z

    const/4 v1, -0x1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mBoundState:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mExecState:I

    if-eq v0, v1, :cond_6

    .line 165
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 166
    .local v2, "now":J
    iget-boolean v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mStarted:Z

    const/4 v4, 0x0

    if-eqz v0, :cond_2

    .line 167
    if-nez p2, :cond_1

    .line 168
    const-string v0, "ProcessStats"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Service owner "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " cleared while started: pkg="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/internal/app/procstats/ServiceState;->mPackage:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " service="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/internal/app/procstats/ServiceState;->mName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " proc="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/internal/app/procstats/ServiceState;->mProc:Lcom/android/internal/app/procstats/ProcessState;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    :cond_1
    invoke-virtual {p0, v4, v4, v2, v3}, Lcom/android/internal/app/procstats/ServiceState;->setStarted(ZIJ)V

    .line 174
    :cond_2
    iget v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mBoundState:I

    if-eq v0, v1, :cond_4

    .line 175
    if-nez p2, :cond_3

    .line 176
    const-string v0, "ProcessStats"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Service owner "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " cleared while bound: pkg="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/internal/app/procstats/ServiceState;->mPackage:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " service="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/internal/app/procstats/ServiceState;->mName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " proc="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/internal/app/procstats/ServiceState;->mProc:Lcom/android/internal/app/procstats/ProcessState;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    :cond_3
    invoke-virtual {p0, v4, v4, v2, v3}, Lcom/android/internal/app/procstats/ServiceState;->setBound(ZIJ)V

    .line 182
    :cond_4
    iget v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mExecState:I

    if-eq v0, v1, :cond_6

    .line 183
    if-nez p2, :cond_5

    .line 184
    const-string v0, "ProcessStats"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Service owner "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " cleared while exec: pkg="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/internal/app/procstats/ServiceState;->mPackage:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " service="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/internal/app/procstats/ServiceState;->mName:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " proc="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/internal/app/procstats/ServiceState;->mProc:Lcom/android/internal/app/procstats/ProcessState;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    :cond_5
    invoke-virtual {p0, v4, v4, v2, v3}, Lcom/android/internal/app/procstats/ServiceState;->setExecuting(ZIJ)V

    .line 191
    .end local v2    # "now":J
    :cond_6
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mOwner:Ljava/lang/Object;

    .line 193
    :cond_7
    return-void
.end method

.method public commitStateTime(J)V
    .locals 5
    .param p1, "now"    # J

    .line 240
    iget v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mRunState:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 241
    iget-object v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/internal/app/procstats/ServiceState;->mRunState:I

    mul-int/lit8 v3, v3, 0x4

    add-int/2addr v2, v3

    iget-wide v3, p0, Lcom/android/internal/app/procstats/ServiceState;->mRunStartTime:J

    sub-long v3, p1, v3

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/internal/app/procstats/DurationsTable;->addDuration(IJ)V

    .line 243
    iput-wide p1, p0, Lcom/android/internal/app/procstats/ServiceState;->mRunStartTime:J

    .line 245
    :cond_0
    iget v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mStartedState:I

    if-eq v0, v1, :cond_1

    .line 246
    iget-object v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    const/4 v2, 0x1

    iget v3, p0, Lcom/android/internal/app/procstats/ServiceState;->mStartedState:I

    mul-int/lit8 v3, v3, 0x4

    add-int/2addr v2, v3

    iget-wide v3, p0, Lcom/android/internal/app/procstats/ServiceState;->mStartedStartTime:J

    sub-long v3, p1, v3

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/internal/app/procstats/DurationsTable;->addDuration(IJ)V

    .line 248
    iput-wide p1, p0, Lcom/android/internal/app/procstats/ServiceState;->mStartedStartTime:J

    .line 250
    :cond_1
    iget v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mBoundState:I

    if-eq v0, v1, :cond_2

    .line 251
    iget-object v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    const/4 v2, 0x2

    iget v3, p0, Lcom/android/internal/app/procstats/ServiceState;->mBoundState:I

    mul-int/lit8 v3, v3, 0x4

    add-int/2addr v2, v3

    iget-wide v3, p0, Lcom/android/internal/app/procstats/ServiceState;->mBoundStartTime:J

    sub-long v3, p1, v3

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/internal/app/procstats/DurationsTable;->addDuration(IJ)V

    .line 253
    iput-wide p1, p0, Lcom/android/internal/app/procstats/ServiceState;->mBoundStartTime:J

    .line 255
    :cond_2
    iget v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mExecState:I

    if-eq v0, v1, :cond_3

    .line 256
    iget-object v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    const/4 v1, 0x3

    iget v2, p0, Lcom/android/internal/app/procstats/ServiceState;->mExecState:I

    mul-int/lit8 v2, v2, 0x4

    add-int/2addr v1, v2

    iget-wide v2, p0, Lcom/android/internal/app/procstats/ServiceState;->mExecStartTime:J

    sub-long v2, p1, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/app/procstats/DurationsTable;->addDuration(IJ)V

    .line 258
    iput-wide p1, p0, Lcom/android/internal/app/procstats/ServiceState;->mExecStartTime:J

    .line 260
    :cond_3
    return-void
.end method

.method public dumpStats(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJZZ)V
    .locals 20
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "prefixInner"    # Ljava/lang/String;
    .param p4, "headerPrefix"    # Ljava/lang/String;
    .param p5, "now"    # J
    .param p7, "totalTime"    # J
    .param p9, "dumpSummary"    # Z
    .param p10, "dumpAll"    # Z

    move-object/from16 v15, p0

    move-object/from16 v13, p1

    .line 363
    const-string v5, "Running"

    iget v6, v15, Lcom/android/internal/app/procstats/ServiceState;->mRunCount:I

    iget v8, v15, Lcom/android/internal/app/procstats/ServiceState;->mRunState:I

    iget-wide v9, v15, Lcom/android/internal/app/procstats/ServiceState;->mRunStartTime:J

    const/16 v16, 0x1

    const/16 v17, 0x0

    if-eqz p9, :cond_1

    if-eqz p10, :cond_0

    goto :goto_0

    :cond_0
    move/from16 v18, v17

    goto :goto_1

    :cond_1
    :goto_0
    move/from16 v18, v16

    :goto_1
    const/4 v7, 0x0

    move-object v0, v15

    move-object v1, v13

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-wide/from16 v11, p5

    move-wide/from16 v13, p7

    move/from16 v15, v18

    invoke-direct/range {v0 .. v15}, Lcom/android/internal/app/procstats/ServiceState;->dumpStats(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIJJJZ)V

    .line 366
    const-string v5, "Started"

    move-object/from16 v15, p0

    iget v6, v15, Lcom/android/internal/app/procstats/ServiceState;->mStartedCount:I

    const/4 v7, 0x1

    iget v8, v15, Lcom/android/internal/app/procstats/ServiceState;->mStartedState:I

    iget-wide v9, v15, Lcom/android/internal/app/procstats/ServiceState;->mStartedStartTime:J

    if-eqz p9, :cond_3

    if-eqz p10, :cond_2

    goto :goto_2

    :cond_2
    move/from16 v18, v17

    goto :goto_3

    :cond_3
    :goto_2
    move/from16 v18, v16

    :goto_3
    move-object v0, v15

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-wide/from16 v11, p5

    move-wide/from16 v13, p7

    move/from16 v15, v18

    invoke-direct/range {v0 .. v15}, Lcom/android/internal/app/procstats/ServiceState;->dumpStats(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIJJJZ)V

    .line 369
    const-string v5, "Bound"

    move-object/from16 v15, p0

    iget v6, v15, Lcom/android/internal/app/procstats/ServiceState;->mBoundCount:I

    const/4 v7, 0x2

    iget v8, v15, Lcom/android/internal/app/procstats/ServiceState;->mBoundState:I

    iget-wide v9, v15, Lcom/android/internal/app/procstats/ServiceState;->mBoundStartTime:J

    if-eqz p9, :cond_5

    if-eqz p10, :cond_4

    goto :goto_4

    :cond_4
    move/from16 v18, v17

    goto :goto_5

    :cond_5
    :goto_4
    move/from16 v18, v16

    :goto_5
    move-object v0, v15

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-wide/from16 v11, p5

    move-wide/from16 v13, p7

    move/from16 v15, v18

    invoke-direct/range {v0 .. v15}, Lcom/android/internal/app/procstats/ServiceState;->dumpStats(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIJJJZ)V

    .line 372
    const-string v5, "Executing"

    move-object/from16 v15, p0

    iget v6, v15, Lcom/android/internal/app/procstats/ServiceState;->mExecCount:I

    const/4 v7, 0x3

    iget v8, v15, Lcom/android/internal/app/procstats/ServiceState;->mExecState:I

    iget-wide v9, v15, Lcom/android/internal/app/procstats/ServiceState;->mExecStartTime:J

    if-eqz p9, :cond_7

    if-eqz p10, :cond_6

    goto :goto_6

    :cond_6
    goto :goto_7

    :cond_7
    :goto_6
    move/from16 v17, v16

    :goto_7
    move-object v0, v15

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-wide/from16 v11, p5

    move-wide/from16 v13, p7

    move/from16 v15, v17

    invoke-direct/range {v0 .. v15}, Lcom/android/internal/app/procstats/ServiceState;->dumpStats(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIJJJZ)V

    .line 375
    if-eqz p10, :cond_a

    .line 376
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/procstats/ServiceState;->mOwner:Ljava/lang/Object;

    if-eqz v1, :cond_8

    .line 377
    const-string v1, "        mOwner="

    move-object/from16 v2, p1

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/android/internal/app/procstats/ServiceState;->mOwner:Ljava/lang/Object;

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_8

    .line 379
    :cond_8
    move-object/from16 v2, p1

    :goto_8
    iget-boolean v1, v0, Lcom/android/internal/app/procstats/ServiceState;->mStarted:Z

    if-nez v1, :cond_9

    iget-boolean v1, v0, Lcom/android/internal/app/procstats/ServiceState;->mRestarting:Z

    if-eqz v1, :cond_b

    .line 380
    :cond_9
    const-string v1, "        mStarted="

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, v0, Lcom/android/internal/app/procstats/ServiceState;->mStarted:Z

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 381
    const-string v1, " mRestarting="

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, v0, Lcom/android/internal/app/procstats/ServiceState;->mRestarting:Z

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->println(Z)V

    goto :goto_9

    .line 384
    :cond_a
    move-object/from16 v2, p1

    move-object/from16 v0, p0

    :cond_b
    :goto_9
    return-void
.end method

.method public dumpTime(Ljava/io/PrintWriter;Ljava/lang/String;IIJJ)J
    .locals 20
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "serviceType"    # I
    .param p4, "curState"    # I
    .param p5, "curStartTime"    # J
    .param p7, "now"    # J

    move-object/from16 v0, p1

    .line 408
    const-wide/16 v1, 0x0

    .line 409
    .local v1, "totalTime":J
    const/4 v3, -0x1

    .line 410
    .local v3, "printedScreen":I
    const/4 v4, 0x0

    move v5, v3

    move-wide v2, v1

    move v1, v4

    .end local v3    # "printedScreen":I
    .local v1, "iscreen":I
    .local v2, "totalTime":J
    .local v5, "printedScreen":I
    :goto_0
    const/16 v6, 0x8

    const-wide/16 v7, 0x0

    if-ge v1, v6, :cond_6

    .line 411
    const/4 v6, -0x1

    .line 412
    .local v6, "printedMem":I
    move-wide v9, v2

    move v2, v4

    .local v2, "imem":I
    .local v9, "totalTime":J
    :goto_1
    const/4 v3, 0x4

    if-ge v2, v3, :cond_5

    .line 413
    add-int v3, v2, v1

    .line 414
    .local v3, "state":I
    move-object/from16 v11, p0

    move/from16 v12, p3

    move/from16 v13, p4

    move-wide/from16 v14, p5

    move/from16 v16, v3

    move-wide/from16 v17, p7

    invoke-virtual/range {v11 .. v18}, Lcom/android/internal/app/procstats/ServiceState;->getDuration(IIJIJ)J

    move-result-wide v11

    .line 415
    .local v11, "time":J
    const-string v13, ""

    .line 416
    .local v13, "running":Ljava/lang/String;
    move/from16 v14, p4

    if-ne v14, v3, :cond_0

    if-eqz v0, :cond_0

    .line 417
    const-string v13, " (running)"

    .line 419
    :cond_0
    cmp-long v15, v11, v7

    if-eqz v15, :cond_4

    .line 420
    if-eqz v0, :cond_3

    .line 421
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 422
    if-eq v5, v1, :cond_1

    .line 423
    nop

    .line 422
    move v15, v1

    goto :goto_2

    .line 423
    :cond_1
    nop

    .line 422
    const/4 v15, -0x1

    :goto_2
    invoke-static {v0, v15}, Lcom/android/internal/app/procstats/DumpUtils;->printScreenLabel(Ljava/io/PrintWriter;I)V

    .line 424
    move v5, v1

    .line 425
    if-eq v6, v2, :cond_2

    move v15, v2

    goto :goto_3

    :cond_2
    const/4 v15, -0x1

    :goto_3
    invoke-static {v0, v15, v4}, Lcom/android/internal/app/procstats/DumpUtils;->printMemLabel(Ljava/io/PrintWriter;IC)V

    .line 427
    move v6, v2

    .line 428
    const-string v15, ": "

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 429
    invoke-static {v11, v12, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 431
    :cond_3
    add-long/2addr v9, v11

    .line 412
    .end local v3    # "state":I
    .end local v11    # "time":J
    .end local v13    # "running":Ljava/lang/String;
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 410
    .end local v2    # "imem":I
    .end local v6    # "printedMem":I
    :cond_5
    move/from16 v14, p4

    add-int/lit8 v1, v1, 0x4

    move-wide v2, v9

    goto :goto_0

    .line 435
    .end local v1    # "iscreen":I
    .end local v9    # "totalTime":J
    .local v2, "totalTime":J
    :cond_6
    move/from16 v14, p4

    cmp-long v1, v2, v7

    if-eqz v1, :cond_7

    if-eqz v0, :cond_7

    .line 436
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 437
    const-string v1, "    TOTAL: "

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 438
    invoke-static {v2, v3, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 439
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 441
    :cond_7
    return-wide v2
.end method

.method public dumpTimesCheckin(Ljava/io/PrintWriter;Ljava/lang/String;IJLjava/lang/String;J)V
    .locals 16
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "vers"    # J
    .param p6, "serviceName"    # Ljava/lang/String;
    .param p7, "now"    # J

    move-object/from16 v15, p0

    .line 446
    const-string/jumbo v2, "pkgsvc-run"

    iget v9, v15, Lcom/android/internal/app/procstats/ServiceState;->mRunCount:I

    iget v10, v15, Lcom/android/internal/app/procstats/ServiceState;->mRunState:I

    iget-wide v11, v15, Lcom/android/internal/app/procstats/ServiceState;->mRunStartTime:J

    const/4 v8, 0x0

    move-object v0, v15

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-wide/from16 v5, p4

    move-object/from16 v7, p6

    move-wide/from16 v13, p7

    invoke-direct/range {v0 .. v14}, Lcom/android/internal/app/procstats/ServiceState;->dumpTimeCheckin(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;IIIJJ)V

    .line 448
    const-string/jumbo v2, "pkgsvc-start"

    iget v9, v15, Lcom/android/internal/app/procstats/ServiceState;->mStartedCount:I

    iget v10, v15, Lcom/android/internal/app/procstats/ServiceState;->mStartedState:I

    iget-wide v11, v15, Lcom/android/internal/app/procstats/ServiceState;->mStartedStartTime:J

    const/4 v8, 0x1

    invoke-direct/range {v0 .. v14}, Lcom/android/internal/app/procstats/ServiceState;->dumpTimeCheckin(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;IIIJJ)V

    .line 450
    const-string/jumbo v2, "pkgsvc-bound"

    iget v9, v15, Lcom/android/internal/app/procstats/ServiceState;->mBoundCount:I

    iget v10, v15, Lcom/android/internal/app/procstats/ServiceState;->mBoundState:I

    iget-wide v11, v15, Lcom/android/internal/app/procstats/ServiceState;->mBoundStartTime:J

    const/4 v8, 0x2

    invoke-direct/range {v0 .. v14}, Lcom/android/internal/app/procstats/ServiceState;->dumpTimeCheckin(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;IIIJJ)V

    .line 452
    const-string/jumbo v2, "pkgsvc-exec"

    iget v9, v15, Lcom/android/internal/app/procstats/ServiceState;->mExecCount:I

    iget v10, v15, Lcom/android/internal/app/procstats/ServiceState;->mExecState:I

    iget-wide v11, v15, Lcom/android/internal/app/procstats/ServiceState;->mExecStartTime:J

    const/4 v8, 0x3

    invoke-direct/range {v0 .. v14}, Lcom/android/internal/app/procstats/ServiceState;->dumpTimeCheckin(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;IIIJJ)V

    .line 454
    return-void
.end method

.method public getDuration(IIJIJ)J
    .locals 5
    .param p1, "opType"    # I
    .param p2, "curState"    # I
    .param p3, "startTime"    # J
    .param p5, "memFactor"    # I
    .param p6, "now"    # J

    .line 353
    mul-int/lit8 v0, p5, 0x4

    add-int/2addr v0, p1

    .line 354
    .local v0, "state":I
    iget-object v1, p0, Lcom/android/internal/app/procstats/ServiceState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    int-to-byte v2, v0

    invoke-virtual {v1, v2}, Lcom/android/internal/app/procstats/DurationsTable;->getValueForId(B)J

    move-result-wide v1

    .line 355
    .local v1, "time":J
    if-ne p2, p5, :cond_0

    .line 356
    sub-long v3, p6, p3

    add-long/2addr v1, v3

    .line 358
    :cond_0
    return-wide v1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPackage()Ljava/lang/String;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mPackage:Ljava/lang/String;

    return-object v0
.end method

.method public getProcess()Lcom/android/internal/app/procstats/ProcessState;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mProc:Lcom/android/internal/app/procstats/ProcessState;

    return-object v0
.end method

.method public getProcessName()Ljava/lang/String;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mProcessName:Ljava/lang/String;

    return-object v0
.end method

.method public isInUse()Z
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mOwner:Ljava/lang/Object;

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mRestarting:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isRestarting()Z
    .locals 1

    .line 200
    iget-boolean v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mRestarting:Z

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)Z
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 229
    iget-object v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v0, p1}, Lcom/android/internal/app/procstats/DurationsTable;->readFromParcel(Landroid/os/Parcel;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 230
    const/4 v0, 0x0

    return v0

    .line 232
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mRunCount:I

    .line 233
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mStartedCount:I

    .line 234
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mBoundCount:I

    .line 235
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mExecCount:I

    .line 236
    const/4 v0, 0x1

    return v0
.end method

.method public resetSafely(J)V
    .locals 4
    .param p1, "now"    # J

    .line 212
    iget-object v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v0}, Lcom/android/internal/app/procstats/DurationsTable;->resetTable()V

    .line 213
    iget v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mRunState:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mRunCount:I

    .line 214
    iget v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mStartedState:I

    if-eq v0, v3, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    iput v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mStartedCount:I

    .line 215
    iget v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mBoundState:I

    if-eq v0, v3, :cond_2

    move v0, v2

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_2
    iput v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mBoundCount:I

    .line 216
    iget v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mExecState:I

    if-eq v0, v3, :cond_3

    move v1, v2

    nop

    :cond_3
    iput v1, p0, Lcom/android/internal/app/procstats/ServiceState;->mExecCount:I

    .line 217
    iput-wide p1, p0, Lcom/android/internal/app/procstats/ServiceState;->mExecStartTime:J

    iput-wide p1, p0, Lcom/android/internal/app/procstats/ServiceState;->mBoundStartTime:J

    iput-wide p1, p0, Lcom/android/internal/app/procstats/ServiceState;->mStartedStartTime:J

    iput-wide p1, p0, Lcom/android/internal/app/procstats/ServiceState;->mRunStartTime:J

    .line 218
    return-void
.end method

.method public setBound(ZIJ)V
    .locals 5
    .param p1, "bound"    # Z
    .param p2, "memFactor"    # I
    .param p3, "now"    # J

    .line 316
    iget-object v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mOwner:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 317
    const-string v0, "ProcessStats"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Binding service "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " without owner"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    :cond_0
    const/4 v0, -0x1

    if-eqz p1, :cond_1

    move v1, p2

    goto :goto_0

    :cond_1
    move v1, v0

    .line 320
    .local v1, "state":I
    :goto_0
    iget v2, p0, Lcom/android/internal/app/procstats/ServiceState;->mBoundState:I

    if-eq v2, v1, :cond_4

    .line 321
    iget v2, p0, Lcom/android/internal/app/procstats/ServiceState;->mBoundState:I

    if-eq v2, v0, :cond_2

    .line 322
    iget-object v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    const/4 v2, 0x2

    iget v3, p0, Lcom/android/internal/app/procstats/ServiceState;->mBoundState:I

    mul-int/lit8 v3, v3, 0x4

    add-int/2addr v2, v3

    iget-wide v3, p0, Lcom/android/internal/app/procstats/ServiceState;->mBoundStartTime:J

    sub-long v3, p3, v3

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/internal/app/procstats/DurationsTable;->addDuration(IJ)V

    goto :goto_1

    .line 324
    :cond_2
    if-eqz p1, :cond_3

    .line 325
    iget v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mBoundCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mBoundCount:I

    .line 327
    :cond_3
    :goto_1
    iput v1, p0, Lcom/android/internal/app/procstats/ServiceState;->mBoundState:I

    .line 328
    iput-wide p3, p0, Lcom/android/internal/app/procstats/ServiceState;->mBoundStartTime:J

    .line 329
    invoke-direct {p0, p2, p3, p4}, Lcom/android/internal/app/procstats/ServiceState;->updateRunning(IJ)V

    .line 331
    :cond_4
    return-void
.end method

.method public setExecuting(ZIJ)V
    .locals 5
    .param p1, "executing"    # Z
    .param p2, "memFactor"    # I
    .param p3, "now"    # J

    .line 334
    iget-object v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mOwner:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 335
    const-string v0, "ProcessStats"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Executing service "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " without owner"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    :cond_0
    const/4 v0, -0x1

    if-eqz p1, :cond_1

    move v1, p2

    goto :goto_0

    :cond_1
    move v1, v0

    .line 338
    .local v1, "state":I
    :goto_0
    iget v2, p0, Lcom/android/internal/app/procstats/ServiceState;->mExecState:I

    if-eq v2, v1, :cond_4

    .line 339
    iget v2, p0, Lcom/android/internal/app/procstats/ServiceState;->mExecState:I

    if-eq v2, v0, :cond_2

    .line 340
    iget-object v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    const/4 v2, 0x3

    iget v3, p0, Lcom/android/internal/app/procstats/ServiceState;->mExecState:I

    mul-int/lit8 v3, v3, 0x4

    add-int/2addr v2, v3

    iget-wide v3, p0, Lcom/android/internal/app/procstats/ServiceState;->mExecStartTime:J

    sub-long v3, p3, v3

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/internal/app/procstats/DurationsTable;->addDuration(IJ)V

    goto :goto_1

    .line 342
    :cond_2
    if-eqz p1, :cond_3

    .line 343
    iget v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mExecCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mExecCount:I

    .line 345
    :cond_3
    :goto_1
    iput v1, p0, Lcom/android/internal/app/procstats/ServiceState;->mExecState:I

    .line 346
    iput-wide p3, p0, Lcom/android/internal/app/procstats/ServiceState;->mExecStartTime:J

    .line 347
    invoke-direct {p0, p2, p3, p4}, Lcom/android/internal/app/procstats/ServiceState;->updateRunning(IJ)V

    .line 349
    :cond_4
    return-void
.end method

.method public setMemFactor(IJ)V
    .locals 3
    .param p1, "memFactor"    # I
    .param p2, "now"    # J

    .line 112
    invoke-virtual {p0}, Lcom/android/internal/app/procstats/ServiceState;->isRestarting()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 113
    invoke-virtual {p0, v1, p1, p2, p3}, Lcom/android/internal/app/procstats/ServiceState;->setRestarting(ZIJ)V

    goto :goto_0

    .line 114
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/app/procstats/ServiceState;->isInUse()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 115
    iget v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mStartedState:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 116
    invoke-virtual {p0, v1, p1, p2, p3}, Lcom/android/internal/app/procstats/ServiceState;->setStarted(ZIJ)V

    .line 118
    :cond_1
    iget v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mBoundState:I

    if-eq v0, v2, :cond_2

    .line 119
    invoke-virtual {p0, v1, p1, p2, p3}, Lcom/android/internal/app/procstats/ServiceState;->setBound(ZIJ)V

    .line 121
    :cond_2
    iget v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mExecState:I

    if-eq v0, v2, :cond_3

    .line 122
    invoke-virtual {p0, v1, p1, p2, p3}, Lcom/android/internal/app/procstats/ServiceState;->setExecuting(ZIJ)V

    .line 125
    :cond_3
    :goto_0
    return-void
.end method

.method public setProcess(Lcom/android/internal/app/procstats/ProcessState;)V
    .locals 0
    .param p1, "proc"    # Lcom/android/internal/app/procstats/ProcessState;

    .line 108
    iput-object p1, p0, Lcom/android/internal/app/procstats/ServiceState;->mProc:Lcom/android/internal/app/procstats/ProcessState;

    .line 109
    return-void
.end method

.method public setRestarting(ZIJ)V
    .locals 0
    .param p1, "restarting"    # Z
    .param p2, "memFactor"    # I
    .param p3, "now"    # J

    .line 286
    iput-boolean p1, p0, Lcom/android/internal/app/procstats/ServiceState;->mRestarting:Z

    .line 287
    invoke-virtual {p0, p2, p3, p4}, Lcom/android/internal/app/procstats/ServiceState;->updateStartedState(IJ)V

    .line 288
    return-void
.end method

.method public setStarted(ZIJ)V
    .locals 3
    .param p1, "started"    # Z
    .param p2, "memFactor"    # I
    .param p3, "now"    # J

    .line 278
    iget-object v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mOwner:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 279
    const-string v0, "ProcessStats"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Starting service "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " without owner"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    :cond_0
    iput-boolean p1, p0, Lcom/android/internal/app/procstats/ServiceState;->mStarted:Z

    .line 282
    invoke-virtual {p0, p2, p3, p4}, Lcom/android/internal/app/procstats/ServiceState;->updateStartedState(IJ)V

    .line 283
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 498
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ServiceState{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/app/procstats/ServiceState;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " pkg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/app/procstats/ServiceState;->mPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " proc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 500
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 498
    return-object v0
.end method

.method public updateStartedState(IJ)V
    .locals 7
    .param p1, "memFactor"    # I
    .param p2, "now"    # J

    .line 291
    iget v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mStartedState:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-eq v0, v2, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v1

    .line 292
    .local v0, "wasStarted":Z
    :goto_0
    iget-boolean v4, p0, Lcom/android/internal/app/procstats/ServiceState;->mStarted:Z

    if-nez v4, :cond_2

    iget-boolean v4, p0, Lcom/android/internal/app/procstats/ServiceState;->mRestarting:Z

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    goto :goto_2

    :cond_2
    :goto_1
    move v1, v3

    .line 293
    .local v1, "started":Z
    :goto_2
    if-eqz v1, :cond_3

    move v4, p1

    goto :goto_3

    :cond_3
    move v4, v2

    .line 294
    .local v4, "state":I
    :goto_3
    iget v5, p0, Lcom/android/internal/app/procstats/ServiceState;->mStartedState:I

    if-eq v5, v4, :cond_8

    .line 295
    iget v5, p0, Lcom/android/internal/app/procstats/ServiceState;->mStartedState:I

    if-eq v5, v2, :cond_4

    .line 296
    iget-object v2, p0, Lcom/android/internal/app/procstats/ServiceState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    iget v5, p0, Lcom/android/internal/app/procstats/ServiceState;->mStartedState:I

    mul-int/lit8 v5, v5, 0x4

    add-int/2addr v3, v5

    iget-wide v5, p0, Lcom/android/internal/app/procstats/ServiceState;->mStartedStartTime:J

    sub-long v5, p2, v5

    invoke-virtual {v2, v3, v5, v6}, Lcom/android/internal/app/procstats/DurationsTable;->addDuration(IJ)V

    goto :goto_4

    .line 298
    :cond_4
    if-eqz v1, :cond_5

    .line 299
    iget v2, p0, Lcom/android/internal/app/procstats/ServiceState;->mStartedCount:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/android/internal/app/procstats/ServiceState;->mStartedCount:I

    .line 301
    :cond_5
    :goto_4
    iput v4, p0, Lcom/android/internal/app/procstats/ServiceState;->mStartedState:I

    .line 302
    iput-wide p2, p0, Lcom/android/internal/app/procstats/ServiceState;->mStartedStartTime:J

    .line 303
    iget-object v2, p0, Lcom/android/internal/app/procstats/ServiceState;->mProc:Lcom/android/internal/app/procstats/ProcessState;

    iget-object v3, p0, Lcom/android/internal/app/procstats/ServiceState;->mPackage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/internal/app/procstats/ProcessState;->pullFixedProc(Ljava/lang/String;)Lcom/android/internal/app/procstats/ProcessState;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/app/procstats/ServiceState;->mProc:Lcom/android/internal/app/procstats/ProcessState;

    .line 304
    if-eq v0, v1, :cond_7

    .line 305
    if-eqz v1, :cond_6

    .line 306
    iget-object v2, p0, Lcom/android/internal/app/procstats/ServiceState;->mProc:Lcom/android/internal/app/procstats/ProcessState;

    iget-object v3, p0, Lcom/android/internal/app/procstats/ServiceState;->mName:Ljava/lang/String;

    invoke-virtual {v2, p1, p2, p3, v3}, Lcom/android/internal/app/procstats/ProcessState;->incStartedServices(IJLjava/lang/String;)V

    goto :goto_5

    .line 308
    :cond_6
    iget-object v2, p0, Lcom/android/internal/app/procstats/ServiceState;->mProc:Lcom/android/internal/app/procstats/ProcessState;

    iget-object v3, p0, Lcom/android/internal/app/procstats/ServiceState;->mName:Ljava/lang/String;

    invoke-virtual {v2, p1, p2, p3, v3}, Lcom/android/internal/app/procstats/ProcessState;->decStartedServices(IJLjava/lang/String;)V

    .line 311
    :cond_7
    :goto_5
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/app/procstats/ServiceState;->updateRunning(IJ)V

    .line 313
    :cond_8
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;J)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "now"    # J

    .line 221
    iget-object v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v0, p1}, Lcom/android/internal/app/procstats/DurationsTable;->writeToParcel(Landroid/os/Parcel;)V

    .line 222
    iget v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mRunCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 223
    iget v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mStartedCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 224
    iget v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mBoundCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 225
    iget v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mExecCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 226
    return-void
.end method
