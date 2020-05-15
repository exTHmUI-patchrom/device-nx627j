.class public final Lcom/android/server/am/ProcessStatsService;
.super Lcom/android/internal/app/procstats/IProcessStats$Stub;
.source "ProcessStatsService.java"


# static fields
.field static final DEBUG:Z = false

.field static final MAX_HISTORIC_STATES:I = 0x8

.field static final STATE_FILE_CHECKIN_SUFFIX:Ljava/lang/String; = ".ci"

.field static final STATE_FILE_PREFIX:Ljava/lang/String; = "state-"

.field static final STATE_FILE_SUFFIX:Ljava/lang/String; = ".bin"

.field static final TAG:Ljava/lang/String; = "ProcessStatsService"

.field static WRITE_PERIOD:J


# instance fields
.field final mAm:Lcom/android/server/am/ActivityManagerService;

.field final mBaseDir:Ljava/io/File;

.field mCommitPending:Z

.field mFile:Landroid/util/AtomicFile;

.field mInjectedScreenState:Ljava/lang/Boolean;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mAm"
    .end annotation
.end field

.field mLastMemOnlyState:I

.field mLastWriteTime:J

.field mMemFactorLowered:Z

.field mPendingWrite:Landroid/os/Parcel;

.field mPendingWriteCommitted:Z

.field mPendingWriteFile:Landroid/util/AtomicFile;

.field final mPendingWriteLock:Ljava/lang/Object;

.field mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

.field mShuttingDown:Z

.field final mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 69
    const-wide/32 v0, 0x1b7740

    sput-wide v0, Lcom/android/server/am/ProcessStatsService;->WRITE_PERIOD:J

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Ljava/io/File;)V
    .locals 2
    .param p1, "am"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "file"    # Ljava/io/File;

    .line 91
    invoke-direct {p0}, Lcom/android/internal/app/procstats/IProcessStats$Stub;-><init>()V

    .line 77
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/am/ProcessStatsService;->mLastMemOnlyState:I

    .line 80
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 81
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWriteLock:Ljava/lang/Object;

    .line 92
    iput-object p1, p0, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 93
    iput-object p2, p0, Lcom/android/server/am/ProcessStatsService;->mBaseDir:Ljava/io/File;

    .line 94
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mBaseDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 95
    new-instance v0, Lcom/android/internal/app/procstats/ProcessStats;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/internal/app/procstats/ProcessStats;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    .line 96
    invoke-direct {p0}, Lcom/android/server/am/ProcessStatsService;->updateFile()V

    .line 97
    new-instance v0, Lcom/android/server/am/ProcessStatsService$1;

    invoke-direct {v0, p0}, Lcom/android/server/am/ProcessStatsService$1;-><init>(Lcom/android/server/am/ProcessStatsService;)V

    invoke-static {v0}, Landroid/os/SystemProperties;->addChangeCallback(Ljava/lang/Runnable;)V

    .line 108
    return-void
.end method

.method private dumpAggregatedStats(Landroid/util/proto/ProtoOutputStream;JIJ)V
    .locals 9
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J
    .param p4, "aggregateHours"    # I
    .param p5, "now"    # J

    .line 1060
    mul-int/lit8 v0, p4, 0x3c

    mul-int/lit8 v0, v0, 0x3c

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    sget-wide v2, Lcom/android/internal/app/procstats/ProcessStats;->COMMIT_PERIOD:J

    const-wide/16 v4, 0x2

    div-long/2addr v2, v4

    sub-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/ProcessStatsService;->getStatsOverTime(J)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 1062
    .local v0, "pfd":Landroid/os/ParcelFileDescriptor;
    if-nez v0, :cond_0

    .line 1063
    return-void

    .line 1065
    :cond_0
    new-instance v1, Lcom/android/internal/app/procstats/ProcessStats;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/internal/app/procstats/ProcessStats;-><init>(Z)V

    .line 1066
    .local v1, "stats":Lcom/android/internal/app/procstats/ProcessStats;
    new-instance v2, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {v2, v0}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 1067
    .local v2, "stream":Ljava/io/InputStream;
    invoke-virtual {v1, v2}, Lcom/android/internal/app/procstats/ProcessStats;->read(Ljava/io/InputStream;)V

    .line 1068
    iget-object v3, v1, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 1069
    return-void

    .line 1071
    :cond_1
    move-object v3, v1

    move-object v4, p1

    move-wide v5, p2

    move-wide v7, p5

    invoke-virtual/range {v3 .. v8}, Lcom/android/internal/app/procstats/ProcessStats;->writeToProto(Landroid/util/proto/ProtoOutputStream;JJ)V

    .line 1072
    return-void
.end method

.method private dumpAggregatedStats(Ljava/io/PrintWriter;JJLjava/lang/String;ZZZZZ)V
    .locals 14
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "aggregateHours"    # J
    .param p4, "now"    # J
    .param p6, "reqPackage"    # Ljava/lang/String;
    .param p7, "isCompact"    # Z
    .param p8, "dumpDetails"    # Z
    .param p9, "dumpFullDetails"    # Z
    .param p10, "dumpAll"    # Z
    .param p11, "activeOnly"    # Z

    move-object v8, p1

    .line 568
    const-wide/16 v0, 0x3c

    mul-long v2, p2, v0

    mul-long/2addr v2, v0

    const-wide/16 v0, 0x3e8

    mul-long/2addr v2, v0

    sget-wide v0, Lcom/android/internal/app/procstats/ProcessStats;->COMMIT_PERIOD:J

    const-wide/16 v4, 0x2

    div-long/2addr v0, v4

    sub-long/2addr v2, v0

    move-object v9, p0

    invoke-virtual {v9, v2, v3}, Lcom/android/server/am/ProcessStatsService;->getStatsOverTime(J)Landroid/os/ParcelFileDescriptor;

    move-result-object v10

    .line 570
    .local v10, "pfd":Landroid/os/ParcelFileDescriptor;
    if-nez v10, :cond_0

    .line 571
    const-string v0, "Unable to build stats!"

    invoke-virtual {v8, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 572
    return-void

    .line 574
    :cond_0
    new-instance v0, Lcom/android/internal/app/procstats/ProcessStats;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/internal/app/procstats/ProcessStats;-><init>(Z)V

    move-object v11, v0

    .line 575
    .local v11, "stats":Lcom/android/internal/app/procstats/ProcessStats;
    new-instance v0, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {v0, v10}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    move-object v12, v0

    .line 576
    .local v12, "stream":Ljava/io/InputStream;
    invoke-virtual {v11, v12}, Lcom/android/internal/app/procstats/ProcessStats;->read(Ljava/io/InputStream;)V

    .line 577
    iget-object v0, v11, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 578
    const-string v0, "Failure reading: "

    invoke-virtual {v8, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v11, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    invoke-virtual {v8, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 579
    return-void

    .line 581
    :cond_1
    if-eqz p7, :cond_2

    .line 582
    move-object/from16 v7, p6

    invoke-virtual {v11, v8, v7}, Lcom/android/internal/app/procstats/ProcessStats;->dumpCheckinLocked(Ljava/io/PrintWriter;Ljava/lang/String;)V

    goto :goto_1

    .line 584
    :cond_2
    move-object/from16 v7, p6

    if-nez p8, :cond_4

    if-eqz p9, :cond_3

    goto :goto_0

    .line 587
    :cond_3
    move-object v0, v11

    move-object v1, v8

    move-object v2, v7

    move-wide/from16 v3, p4

    move/from16 v5, p11

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/app/procstats/ProcessStats;->dumpSummaryLocked(Ljava/io/PrintWriter;Ljava/lang/String;JZ)V

    goto :goto_1

    .line 585
    :cond_4
    :goto_0
    xor-int/lit8 v5, p9, 0x1

    move-object v0, v11

    move-object v1, v8

    move-object v2, v7

    move-wide/from16 v3, p4

    move/from16 v6, p10

    move/from16 v7, p11

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/app/procstats/ProcessStats;->dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;JZZZ)V

    .line 590
    :goto_1
    return-void
.end method

.method private static dumpHelp(Ljava/io/PrintWriter;)V
    .locals 1
    .param p0, "pw"    # Ljava/io/PrintWriter;

    .line 593
    const-string v0, "Process stats (procstats) dump options:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 594
    const-string v0, "    [--checkin|-c|--csv] [--csv-screen] [--csv-proc] [--csv-mem]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 595
    const-string v0, "    [--details] [--full-details] [--current] [--hours N] [--last N]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 596
    const-string v0, "    [--max N] --active] [--commit] [--reset] [--clear] [--write] [-h]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 597
    const-string v0, "    [--start-testing] [--stop-testing] "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 598
    const-string v0, "    [--pretend-screen-on] [--pretend-screen-off] [--stop-pretend-screen]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 599
    const-string v0, "    [<package.name>]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 600
    const-string v0, "  --checkin: perform a checkin: print and delete old committed states."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 601
    const-string v0, "  -c: print only state in checkin format."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 602
    const-string v0, "  --csv: output data suitable for putting in a spreadsheet."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 603
    const-string v0, "  --csv-screen: on, off."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 604
    const-string v0, "  --csv-mem: norm, mod, low, crit."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 605
    const-string v0, "  --csv-proc: pers, top, fore, vis, precept, backup,"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 606
    const-string v0, "    service, home, prev, cached"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 607
    const-string v0, "  --details: dump per-package details, not just summary."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 608
    const-string v0, "  --full-details: dump all timing and active state details."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 609
    const-string v0, "  --current: only dump current state."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 610
    const-string v0, "  --hours: aggregate over about N last hours."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 611
    const-string v0, "  --last: only show the last committed stats at index N (starting at 1)."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 612
    const-string v0, "  --max: for -a, max num of historical batches to print."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 613
    const-string v0, "  --active: only show currently active processes/services."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 614
    const-string v0, "  --commit: commit current stats to disk and reset to start new stats."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 615
    const-string v0, "  --reset: reset current stats, without committing."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 616
    const-string v0, "  --clear: clear all stats; does both --reset and deletes old stats."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 617
    const-string v0, "  --write: write current in-memory stats to disk."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 618
    const-string v0, "  --read: replace current stats with last-written stats."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 619
    const-string v0, "  --start-testing: clear all stats and starting high frequency pss sampling."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 620
    const-string v0, "  --stop-testing: stop high frequency pss sampling."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 621
    const-string v0, "  --pretend-screen-on: pretend screen is on."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 622
    const-string v0, "  --pretend-screen-off: pretend screen is off."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 623
    const-string v0, "  --stop-pretend-screen: forget \"pretend screen\" and use the real state."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 624
    const-string v0, "  -a: print everything."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 625
    const-string v0, "  -h: print this help text."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 626
    const-string v0, "  <package.name>: optional name of package to filter output by."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 627
    return-void
.end method

.method private dumpInner(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 43
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "args"    # [Ljava/lang/String;

    move-object/from16 v13, p0

    move-object/from16 v14, p1

    .line 647
    move-object/from16 v15, p2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    .line 649
    .local v16, "now":J
    const/4 v0, 0x0

    .line 650
    .local v0, "isCheckin":Z
    const/4 v1, 0x0

    .line 651
    .local v1, "isCompact":Z
    const/4 v2, 0x0

    .line 652
    .local v2, "isCsv":Z
    const/4 v3, 0x0

    .line 653
    .local v3, "currentOnly":Z
    const/4 v4, 0x0

    .line 654
    .local v4, "dumpDetails":Z
    const/4 v5, 0x0

    .line 655
    .local v5, "dumpFullDetails":Z
    const/4 v6, 0x0

    .line 656
    .local v6, "dumpAll":Z
    const/4 v7, 0x0

    .line 657
    .local v7, "quit":Z
    const/4 v8, 0x0

    .line 658
    .local v8, "aggregateHours":I
    const/4 v9, 0x0

    .line 659
    .local v9, "lastIndex":I
    const/4 v10, 0x2

    .line 660
    .local v10, "maxNum":I
    const/4 v11, 0x0

    .line 661
    .local v11, "activeOnly":Z
    const/4 v12, 0x0

    .line 662
    .local v12, "reqPackage":Ljava/lang/String;
    const/16 v18, 0x0

    .line 663
    .local v18, "csvSepScreenStats":Z
    move/from16 v19, v0

    const/4 v0, 0x2

    .end local v0    # "isCheckin":Z
    .local v19, "isCheckin":Z
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    .line 664
    .local v0, "csvScreenStats":[I
    const/16 v20, 0x0

    .line 665
    .local v20, "csvSepMemStats":Z
    move/from16 v21, v7

    const/4 v7, 0x1

    .end local v7    # "quit":Z
    .local v21, "quit":Z
    move-object/from16 v22, v0

    new-array v0, v7, [I

    .end local v0    # "csvScreenStats":[I
    .local v22, "csvScreenStats":[I
    move/from16 v23, v6

    const/4 v6, 0x0

    .end local v6    # "dumpAll":Z
    .local v23, "dumpAll":Z
    const/16 v24, 0x3

    aput v24, v0, v6

    .line 666
    .local v0, "csvMemStats":[I
    const/16 v24, 0x1

    .line 667
    .local v24, "csvSepProcStats":Z
    sget-object v25, Lcom/android/internal/app/procstats/ProcessStats;->ALL_PROC_STATES:[I

    .line 668
    .local v25, "csvProcStats":[I
    if-eqz v15, :cond_25

    .line 669
    move/from16 v26, v24

    move/from16 v24, v20

    move/from16 v20, v18

    move/from16 v18, v11

    move v11, v10

    move v10, v9

    move v9, v8

    move v8, v5

    move v5, v4

    move v4, v3

    move v3, v2

    move v2, v1

    move-object v1, v0

    move v0, v6

    .local v0, "i":I
    .local v1, "csvMemStats":[I
    .local v2, "isCompact":Z
    .local v3, "isCsv":Z
    .local v4, "currentOnly":Z
    .local v5, "dumpDetails":Z
    .local v8, "dumpFullDetails":Z
    .local v9, "aggregateHours":I
    .local v10, "lastIndex":I
    .local v11, "maxNum":I
    .local v18, "activeOnly":Z
    .local v20, "csvSepScreenStats":Z
    .local v24, "csvSepMemStats":Z
    .local v26, "csvSepProcStats":Z
    :goto_0
    move/from16 v27, v0

    .end local v0    # "i":I
    .local v27, "i":I
    array-length v0, v15

    move/from16 v6, v27

    if-ge v6, v0, :cond_24

    .line 670
    .end local v27    # "i":I
    .local v6, "i":I
    aget-object v7, v15, v6

    .line 671
    .local v7, "arg":Ljava/lang/String;
    const-string v0, "--checkin"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 672
    const/16 v19, 0x1

    goto/16 :goto_8

    .line 673
    :cond_0
    const-string v0, "-c"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 674
    const/4 v0, 0x1

    .line 669
    .end local v2    # "isCompact":Z
    .local v0, "isCompact":Z
    move v2, v0

    goto/16 :goto_8

    .line 675
    .end local v0    # "isCompact":Z
    .restart local v2    # "isCompact":Z
    :cond_1
    const-string v0, "--csv"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 676
    const/4 v3, 0x1

    goto/16 :goto_8

    .line 677
    :cond_2
    const-string v0, "--csv-screen"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 678
    add-int/lit8 v0, v6, 0x1

    .line 679
    .end local v6    # "i":I
    .local v0, "i":I
    array-length v6, v15

    if-lt v0, v6, :cond_3

    .line 680
    const-string v6, "Error: argument required for --csv-screen"

    invoke-virtual {v14, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 681
    invoke-static/range {p1 .. p1}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    .line 682
    return-void

    .line 684
    :cond_3
    move-object/from16 v30, v1

    const/4 v6, 0x1

    new-array v1, v6, [Z

    .line 685
    .local v1, "sep":[Z
    .local v30, "csvMemStats":[I
    move/from16 v31, v2

    new-array v2, v6, [Ljava/lang/String;

    .line 686
    .local v2, "error":[Ljava/lang/String;
    .local v31, "isCompact":Z
    sget-object v6, Lcom/android/internal/app/procstats/DumpUtils;->ADJ_SCREEN_NAMES_CSV:[Ljava/lang/String;

    move/from16 v32, v3

    const/4 v3, 0x4

    .end local v3    # "isCsv":Z
    .local v32, "isCsv":Z
    move/from16 v33, v4

    aget-object v4, v15, v0

    .end local v4    # "currentOnly":Z
    .local v33, "currentOnly":Z
    invoke-static {v6, v3, v4, v1, v2}, Lcom/android/server/am/ProcessStatsService;->parseStateList([Ljava/lang/String;ILjava/lang/String;[Z[Ljava/lang/String;)[I

    move-result-object v3

    .line 688
    .end local v22    # "csvScreenStats":[I
    .local v3, "csvScreenStats":[I
    if-nez v3, :cond_4

    .line 689
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error in \""

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, v15, v0

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\": "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x0

    aget-object v6, v2, v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 690
    invoke-static/range {p1 .. p1}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    .line 691
    return-void

    .line 693
    :cond_4
    const/4 v6, 0x0

    aget-boolean v1, v1, v6

    .line 694
    .end local v2    # "error":[Ljava/lang/String;
    .end local v20    # "csvSepScreenStats":Z
    .local v1, "csvSepScreenStats":Z
    nop

    .line 669
    move v6, v0

    move/from16 v20, v1

    move-object/from16 v22, v3

    .end local v0    # "i":I
    .end local v7    # "arg":Ljava/lang/String;
    .end local v30    # "csvMemStats":[I
    .end local v31    # "isCompact":Z
    .end local v32    # "isCsv":Z
    .end local v33    # "currentOnly":Z
    .local v1, "csvMemStats":[I
    .local v2, "isCompact":Z
    .local v3, "isCsv":Z
    .restart local v4    # "currentOnly":Z
    .restart local v6    # "i":I
    .restart local v20    # "csvSepScreenStats":Z
    .restart local v22    # "csvScreenStats":[I
    :goto_1
    move-object/from16 v1, v30

    :goto_2
    move/from16 v2, v31

    move/from16 v3, v32

    move/from16 v4, v33

    goto/16 :goto_8

    .line 694
    .restart local v7    # "arg":Ljava/lang/String;
    :cond_5
    move-object/from16 v30, v1

    move/from16 v31, v2

    move/from16 v32, v3

    move/from16 v33, v4

    .end local v1    # "csvMemStats":[I
    .end local v2    # "isCompact":Z
    .end local v3    # "isCsv":Z
    .end local v4    # "currentOnly":Z
    .restart local v30    # "csvMemStats":[I
    .restart local v31    # "isCompact":Z
    .restart local v32    # "isCsv":Z
    .restart local v33    # "currentOnly":Z
    const-string v0, "--csv-mem"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 695
    add-int/lit8 v0, v6, 0x1

    .line 696
    .end local v6    # "i":I
    .restart local v0    # "i":I
    array-length v1, v15

    if-lt v0, v1, :cond_6

    .line 697
    const-string v1, "Error: argument required for --csv-mem"

    invoke-virtual {v14, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 698
    invoke-static/range {p1 .. p1}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    .line 699
    return-void

    .line 701
    :cond_6
    const/4 v1, 0x1

    new-array v2, v1, [Z

    .line 702
    .local v2, "sep":[Z
    new-array v3, v1, [Ljava/lang/String;

    .line 703
    .local v3, "error":[Ljava/lang/String;
    sget-object v4, Lcom/android/internal/app/procstats/DumpUtils;->ADJ_MEM_NAMES_CSV:[Ljava/lang/String;

    aget-object v6, v15, v0

    invoke-static {v4, v1, v6, v2, v3}, Lcom/android/server/am/ProcessStatsService;->parseStateList([Ljava/lang/String;ILjava/lang/String;[Z[Ljava/lang/String;)[I

    move-result-object v4

    .line 705
    .end local v30    # "csvMemStats":[I
    .local v4, "csvMemStats":[I
    if-nez v4, :cond_7

    .line 706
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error in \""

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, v15, v0

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\": "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x0

    aget-object v6, v3, v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 707
    invoke-static/range {p1 .. p1}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    .line 708
    return-void

    .line 710
    :cond_7
    const/4 v6, 0x0

    aget-boolean v1, v2, v6

    .line 711
    .end local v2    # "sep":[Z
    .end local v3    # "error":[Ljava/lang/String;
    .end local v24    # "csvSepMemStats":Z
    .local v1, "csvSepMemStats":Z
    nop

    .line 669
    move v6, v0

    move/from16 v24, v1

    move-object v1, v4

    goto :goto_2

    .line 711
    .end local v0    # "i":I
    .end local v1    # "csvSepMemStats":Z
    .end local v4    # "csvMemStats":[I
    .restart local v6    # "i":I
    .restart local v24    # "csvSepMemStats":Z
    .restart local v30    # "csvMemStats":[I
    :cond_8
    const-string v0, "--csv-proc"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 712
    add-int/lit8 v0, v6, 0x1

    .line 713
    .end local v6    # "i":I
    .restart local v0    # "i":I
    array-length v1, v15

    if-lt v0, v1, :cond_9

    .line 714
    const-string v1, "Error: argument required for --csv-proc"

    invoke-virtual {v14, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 715
    invoke-static/range {p1 .. p1}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    .line 716
    return-void

    .line 718
    :cond_9
    const/4 v1, 0x1

    new-array v2, v1, [Z

    .line 719
    .restart local v2    # "sep":[Z
    new-array v3, v1, [Ljava/lang/String;

    .line 720
    .restart local v3    # "error":[Ljava/lang/String;
    sget-object v4, Lcom/android/internal/app/procstats/DumpUtils;->STATE_NAMES_CSV:[Ljava/lang/String;

    aget-object v6, v15, v0

    invoke-static {v4, v1, v6, v2, v3}, Lcom/android/server/am/ProcessStatsService;->parseStateList([Ljava/lang/String;ILjava/lang/String;[Z[Ljava/lang/String;)[I

    move-result-object v4

    .line 722
    .end local v25    # "csvProcStats":[I
    .local v4, "csvProcStats":[I
    if-nez v4, :cond_a

    .line 723
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error in \""

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, v15, v0

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\": "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x0

    aget-object v6, v3, v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 724
    invoke-static/range {p1 .. p1}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    .line 725
    return-void

    .line 727
    :cond_a
    const/4 v6, 0x0

    aget-boolean v1, v2, v6

    .line 728
    .end local v2    # "sep":[Z
    .end local v3    # "error":[Ljava/lang/String;
    .end local v26    # "csvSepProcStats":Z
    .local v1, "csvSepProcStats":Z
    nop

    .line 669
    move v6, v0

    move/from16 v26, v1

    move-object/from16 v25, v4

    goto/16 :goto_1

    .line 728
    .end local v0    # "i":I
    .end local v1    # "csvSepProcStats":Z
    .end local v4    # "csvProcStats":[I
    .restart local v6    # "i":I
    .restart local v25    # "csvProcStats":[I
    .restart local v26    # "csvSepProcStats":Z
    :cond_b
    const-string v0, "--details"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 729
    const/4 v0, 0x1

    .line 669
    .end local v5    # "dumpDetails":Z
    .local v0, "dumpDetails":Z
    move v5, v0

    goto/16 :goto_1

    .line 730
    .end local v0    # "dumpDetails":Z
    .restart local v5    # "dumpDetails":Z
    :cond_c
    const-string v0, "--full-details"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 731
    const/4 v0, 0x1

    .line 669
    .end local v8    # "dumpFullDetails":Z
    .local v0, "dumpFullDetails":Z
    move v8, v0

    goto/16 :goto_1

    .line 732
    .end local v0    # "dumpFullDetails":Z
    .restart local v8    # "dumpFullDetails":Z
    :cond_d
    const-string v0, "--hours"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 733
    add-int/lit8 v1, v6, 0x1

    .line 734
    .end local v6    # "i":I
    .local v1, "i":I
    array-length v0, v15

    if-lt v1, v0, :cond_e

    .line 735
    const-string v0, "Error: argument required for --hours"

    invoke-virtual {v14, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 736
    invoke-static/range {p1 .. p1}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    .line 737
    return-void

    .line 740
    :cond_e
    :try_start_0
    aget-object v0, v15, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v9, v0

    .line 745
    nop

    .line 669
    .end local v7    # "arg":Ljava/lang/String;
    .end local v30    # "csvMemStats":[I
    .end local v31    # "isCompact":Z
    .end local v32    # "isCsv":Z
    .end local v33    # "currentOnly":Z
    .local v1, "csvMemStats":[I
    .local v2, "isCompact":Z
    .local v3, "isCsv":Z
    .local v4, "currentOnly":Z
    .restart local v6    # "i":I
    :goto_3
    move v6, v1

    goto/16 :goto_1

    .line 741
    .end local v2    # "isCompact":Z
    .end local v3    # "isCsv":Z
    .end local v4    # "currentOnly":Z
    .end local v6    # "i":I
    .local v1, "i":I
    .restart local v7    # "arg":Ljava/lang/String;
    .restart local v30    # "csvMemStats":[I
    .restart local v31    # "isCompact":Z
    .restart local v32    # "isCsv":Z
    .restart local v33    # "currentOnly":Z
    :catch_0
    move-exception v0

    .line 742
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: --hours argument not an int -- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, v15, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 743
    invoke-static/range {p1 .. p1}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    .line 744
    return-void

    .line 746
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v1    # "i":I
    .restart local v6    # "i":I
    :cond_f
    const-string v0, "--last"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 747
    add-int/lit8 v1, v6, 0x1

    .line 748
    .end local v6    # "i":I
    .restart local v1    # "i":I
    array-length v0, v15

    if-lt v1, v0, :cond_10

    .line 749
    const-string v0, "Error: argument required for --last"

    invoke-virtual {v14, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 750
    invoke-static/range {p1 .. p1}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    .line 751
    return-void

    .line 754
    :cond_10
    :try_start_1
    aget-object v0, v15, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move v10, v0

    .line 759
    goto :goto_3

    .line 755
    :catch_1
    move-exception v0

    .line 756
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: --last argument not an int -- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, v15, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 757
    invoke-static/range {p1 .. p1}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    .line 758
    return-void

    .line 760
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v1    # "i":I
    .restart local v6    # "i":I
    :cond_11
    const-string v0, "--max"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 761
    add-int/lit8 v1, v6, 0x1

    .line 762
    .end local v6    # "i":I
    .restart local v1    # "i":I
    array-length v0, v15

    if-lt v1, v0, :cond_12

    .line 763
    const-string v0, "Error: argument required for --max"

    invoke-virtual {v14, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 764
    invoke-static/range {p1 .. p1}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    .line 765
    return-void

    .line 768
    :cond_12
    :try_start_2
    aget-object v0, v15, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    move v11, v0

    .line 773
    goto :goto_3

    .line 769
    :catch_2
    move-exception v0

    .line 770
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: --max argument not an int -- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, v15, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 771
    invoke-static/range {p1 .. p1}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    .line 772
    return-void

    .line 774
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v1    # "i":I
    .restart local v6    # "i":I
    :cond_13
    const-string v0, "--active"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 775
    const/4 v0, 0x1

    .line 776
    .end local v18    # "activeOnly":Z
    .local v0, "activeOnly":Z
    const/4 v4, 0x1

    .line 669
    .end local v33    # "currentOnly":Z
    .restart local v4    # "currentOnly":Z
    move/from16 v18, v0

    .end local v0    # "activeOnly":Z
    .end local v7    # "arg":Ljava/lang/String;
    .end local v30    # "csvMemStats":[I
    .end local v31    # "isCompact":Z
    .end local v32    # "isCsv":Z
    .local v1, "csvMemStats":[I
    .restart local v2    # "isCompact":Z
    .restart local v3    # "isCsv":Z
    .restart local v18    # "activeOnly":Z
    :goto_4
    move-object/from16 v1, v30

    move/from16 v2, v31

    move/from16 v3, v32

    goto/16 :goto_8

    .line 777
    .end local v1    # "csvMemStats":[I
    .end local v2    # "isCompact":Z
    .end local v3    # "isCsv":Z
    .end local v4    # "currentOnly":Z
    .restart local v7    # "arg":Ljava/lang/String;
    .restart local v30    # "csvMemStats":[I
    .restart local v31    # "isCompact":Z
    .restart local v32    # "isCsv":Z
    .restart local v33    # "currentOnly":Z
    :cond_14
    const-string v0, "--current"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 778
    const/4 v4, 0x1

    .end local v33    # "currentOnly":Z
    .restart local v4    # "currentOnly":Z
    goto :goto_4

    .line 779
    .end local v4    # "currentOnly":Z
    .restart local v33    # "currentOnly":Z
    :cond_15
    const-string v0, "--commit"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 780
    iget-object v1, v13, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 781
    iget-object v0, v13, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget v2, v0, Lcom/android/internal/app/procstats/ProcessStats;->mFlags:I

    const/4 v3, 0x1

    or-int/2addr v2, v3

    iput v2, v0, Lcom/android/internal/app/procstats/ProcessStats;->mFlags:I

    .line 782
    invoke-virtual {v13, v3, v3}, Lcom/android/server/am/ProcessStatsService;->writeStateLocked(ZZ)V

    .line 783
    const-string v0, "Process stats committed."

    invoke-virtual {v14, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 784
    const/16 v21, 0x1

    .line 785
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 786
    :cond_16
    const-string v0, "--reset"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 787
    iget-object v1, v13, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_5
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 788
    iget-object v0, v13, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    invoke-virtual {v0}, Lcom/android/internal/app/procstats/ProcessStats;->resetSafely()V

    .line 789
    iget-object v0, v13, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move/from16 v34, v5

    const/4 v4, 0x1

    const/4 v5, 0x0

    :try_start_6
    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/android/server/am/ActivityManagerService;->requestPssAllProcsLocked(JZZ)V

    .line 790
    .end local v5    # "dumpDetails":Z
    .local v34, "dumpDetails":Z
    const-string v0, "Process stats reset."

    invoke-virtual {v14, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 791
    const/16 v21, 0x1

    .line 792
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_7

    .end local v34    # "dumpDetails":Z
    .restart local v5    # "dumpDetails":Z
    :catchall_1
    move-exception v0

    move/from16 v34, v5

    .end local v5    # "dumpDetails":Z
    .restart local v34    # "dumpDetails":Z
    :goto_5
    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :catchall_2
    move-exception v0

    goto :goto_5

    .line 793
    .end local v34    # "dumpDetails":Z
    .restart local v5    # "dumpDetails":Z
    :cond_17
    move/from16 v34, v5

    .end local v5    # "dumpDetails":Z
    .restart local v34    # "dumpDetails":Z
    const-string v0, "--clear"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 794
    iget-object v1, v13, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_8
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 795
    iget-object v0, v13, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    invoke-virtual {v0}, Lcom/android/internal/app/procstats/ProcessStats;->resetSafely()V

    .line 796
    iget-object v0, v13, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/android/server/am/ActivityManagerService;->requestPssAllProcsLocked(JZZ)V

    .line 797
    invoke-direct {v13, v5, v4, v4}, Lcom/android/server/am/ProcessStatsService;->getCommittedFiles(IZZ)Ljava/util/ArrayList;

    move-result-object v0

    .line 798
    .local v0, "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v0, :cond_18

    .line 799
    const/4 v2, 0x0

    .local v2, "fi":I
    :goto_6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_18

    .line 800
    new-instance v3, Ljava/io/File;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 799
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 803
    .end local v2    # "fi":I
    :cond_18
    const-string v2, "All process stats cleared."

    invoke-virtual {v14, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 804
    const/16 v21, 0x1

    .line 805
    .end local v0    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto :goto_7

    :catchall_3
    move-exception v0

    :try_start_9
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 806
    :cond_19
    const-string v0, "--write"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 807
    iget-object v1, v13, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_a
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 808
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ProcessStatsService;->writeStateSyncLocked()V

    .line 809
    const-string v0, "Process stats written."

    invoke-virtual {v14, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 810
    const/16 v21, 0x1

    .line 811
    monitor-exit v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 669
    .end local v7    # "arg":Ljava/lang/String;
    .end local v30    # "csvMemStats":[I
    .end local v31    # "isCompact":Z
    .end local v32    # "isCsv":Z
    .end local v33    # "currentOnly":Z
    .end local v34    # "dumpDetails":Z
    .restart local v1    # "csvMemStats":[I
    .local v2, "isCompact":Z
    .restart local v3    # "isCsv":Z
    .restart local v4    # "currentOnly":Z
    .restart local v5    # "dumpDetails":Z
    :goto_7
    move-object/from16 v1, v30

    move/from16 v2, v31

    move/from16 v3, v32

    move/from16 v4, v33

    move/from16 v5, v34

    goto/16 :goto_8

    .line 811
    .end local v1    # "csvMemStats":[I
    .end local v2    # "isCompact":Z
    .end local v3    # "isCsv":Z
    .end local v4    # "currentOnly":Z
    .end local v5    # "dumpDetails":Z
    .restart local v7    # "arg":Ljava/lang/String;
    .restart local v30    # "csvMemStats":[I
    .restart local v31    # "isCompact":Z
    .restart local v32    # "isCsv":Z
    .restart local v33    # "currentOnly":Z
    .restart local v34    # "dumpDetails":Z
    :catchall_4
    move-exception v0

    :try_start_b
    monitor-exit v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 812
    :cond_1a
    const-string v0, "--read"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 813
    iget-object v1, v13, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_c
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 814
    iget-object v0, v13, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-object v2, v13, Lcom/android/server/am/ProcessStatsService;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v13, v0, v2}, Lcom/android/server/am/ProcessStatsService;->readLocked(Lcom/android/internal/app/procstats/ProcessStats;Landroid/util/AtomicFile;)Z

    .line 815
    const-string v0, "Process stats read."

    invoke-virtual {v14, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 816
    const/16 v21, 0x1

    .line 817
    monitor-exit v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto :goto_7

    :catchall_5
    move-exception v0

    :try_start_d
    monitor-exit v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 818
    :cond_1b
    const-string v0, "--start-testing"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 819
    iget-object v1, v13, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_e
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 820
    iget-object v0, v13, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/server/am/ActivityManagerService;->setTestPssMode(Z)V

    .line 821
    const-string v0, "Started high frequency sampling."

    invoke-virtual {v14, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 822
    const/16 v21, 0x1

    .line 823
    monitor-exit v1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto :goto_7

    :catchall_6
    move-exception v0

    :try_start_f
    monitor-exit v1
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 824
    :cond_1c
    const-string v0, "--stop-testing"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 825
    iget-object v1, v13, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_10
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 826
    iget-object v0, v13, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/server/am/ActivityManagerService;->setTestPssMode(Z)V

    .line 827
    const-string v0, "Stopped high frequency sampling."

    invoke-virtual {v14, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 828
    const/16 v21, 0x1

    .line 829
    monitor-exit v1
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_7

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto :goto_7

    :catchall_7
    move-exception v0

    :try_start_11
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_7

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 830
    :cond_1d
    const-string v0, "--pretend-screen-on"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 831
    iget-object v1, v13, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_12
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 832
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v13, Lcom/android/server/am/ProcessStatsService;->mInjectedScreenState:Ljava/lang/Boolean;

    .line 833
    monitor-exit v1
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_8

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 834
    const/16 v21, 0x1

    goto/16 :goto_7

    .line 833
    :catchall_8
    move-exception v0

    :try_start_13
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_8

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 835
    :cond_1e
    const-string v0, "--pretend-screen-off"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 836
    iget-object v1, v13, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_14
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 837
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v13, Lcom/android/server/am/ProcessStatsService;->mInjectedScreenState:Ljava/lang/Boolean;

    .line 838
    monitor-exit v1
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_9

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 839
    const/16 v21, 0x1

    goto/16 :goto_7

    .line 838
    :catchall_9
    move-exception v0

    :try_start_15
    monitor-exit v1
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_9

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 840
    :cond_1f
    const-string v0, "--stop-pretend-screen"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 841
    iget-object v1, v13, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_16
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 842
    const/4 v0, 0x0

    iput-object v0, v13, Lcom/android/server/am/ProcessStatsService;->mInjectedScreenState:Ljava/lang/Boolean;

    .line 843
    monitor-exit v1
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_a

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 844
    const/16 v21, 0x1

    goto/16 :goto_7

    .line 843
    :catchall_a
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_a

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 845
    :cond_20
    const-string v0, "-h"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 846
    invoke-static/range {p1 .. p1}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    .line 847
    return-void

    .line 848
    :cond_21
    const-string v0, "-a"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 849
    const/4 v0, 0x1

    .line 850
    .end local v34    # "dumpDetails":Z
    .local v0, "dumpDetails":Z
    const/4 v1, 0x1

    .line 669
    .end local v23    # "dumpAll":Z
    .local v1, "dumpAll":Z
    move v5, v0

    move/from16 v23, v1

    goto/16 :goto_1

    .line 851
    .end local v0    # "dumpDetails":Z
    .end local v1    # "dumpAll":Z
    .restart local v23    # "dumpAll":Z
    .restart local v34    # "dumpDetails":Z
    :cond_22
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_23

    const/4 v1, 0x0

    invoke-virtual {v7, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2d

    if-ne v0, v1, :cond_23

    .line 852
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown option: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 853
    invoke-static/range {p1 .. p1}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    .line 854
    return-void

    .line 857
    :cond_23
    move-object v0, v7

    .line 862
    .end local v12    # "reqPackage":Ljava/lang/String;
    .local v0, "reqPackage":Ljava/lang/String;
    const/4 v1, 0x1

    .line 669
    .end local v7    # "arg":Ljava/lang/String;
    .end local v34    # "dumpDetails":Z
    .local v1, "dumpDetails":Z
    move-object v12, v0

    move v5, v1

    goto/16 :goto_1

    .end local v0    # "reqPackage":Ljava/lang/String;
    .end local v30    # "csvMemStats":[I
    .end local v31    # "isCompact":Z
    .end local v32    # "isCsv":Z
    .end local v33    # "currentOnly":Z
    .local v1, "csvMemStats":[I
    .restart local v2    # "isCompact":Z
    .restart local v3    # "isCsv":Z
    .restart local v4    # "currentOnly":Z
    .restart local v5    # "dumpDetails":Z
    .restart local v12    # "reqPackage":Ljava/lang/String;
    :goto_8
    const/4 v7, 0x1

    add-int/lit8 v0, v6, 0x1

    .end local v6    # "i":I
    .local v0, "i":I
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 867
    .end local v0    # "i":I
    :cond_24
    move-object/from16 v30, v1

    move/from16 v31, v2

    move/from16 v32, v3

    move/from16 v33, v4

    move/from16 v34, v5

    move v7, v10

    move-object/from16 v10, v22

    move/from16 v22, v18

    move/from16 v18, v8

    move v8, v9

    move-object/from16 v9, v25

    move/from16 v25, v24

    move/from16 v24, v20

    move/from16 v20, v11

    move-object/from16 v11, v30

    .end local v1    # "csvMemStats":[I
    .end local v2    # "isCompact":Z
    .end local v3    # "isCsv":Z
    .end local v4    # "currentOnly":Z
    .end local v5    # "dumpDetails":Z
    .restart local v30    # "csvMemStats":[I
    .restart local v31    # "isCompact":Z
    .restart local v32    # "isCsv":Z
    .restart local v33    # "currentOnly":Z
    .restart local v34    # "dumpDetails":Z
    goto :goto_9

    .end local v26    # "csvSepProcStats":Z
    .end local v30    # "csvMemStats":[I
    .end local v31    # "isCompact":Z
    .end local v32    # "isCsv":Z
    .end local v33    # "currentOnly":Z
    .end local v34    # "dumpDetails":Z
    .local v0, "csvMemStats":[I
    .local v1, "isCompact":Z
    .local v2, "isCsv":Z
    .local v3, "currentOnly":Z
    .local v4, "dumpDetails":Z
    .local v5, "dumpFullDetails":Z
    .local v8, "aggregateHours":I
    .local v9, "lastIndex":I
    .local v10, "maxNum":I
    .local v11, "activeOnly":Z
    .local v18, "csvSepScreenStats":Z
    .local v20, "csvSepMemStats":Z
    .local v24, "csvSepProcStats":Z
    :cond_25
    move/from16 v31, v1

    move/from16 v32, v2

    move/from16 v33, v3

    move/from16 v34, v4

    move v7, v9

    move/from16 v26, v24

    move-object/from16 v9, v25

    move/from16 v24, v18

    move/from16 v25, v20

    move/from16 v18, v5

    move/from16 v20, v10

    move-object/from16 v10, v22

    move/from16 v22, v11

    move-object v11, v0

    .end local v0    # "csvMemStats":[I
    .end local v1    # "isCompact":Z
    .end local v2    # "isCsv":Z
    .end local v3    # "currentOnly":Z
    .end local v4    # "dumpDetails":Z
    .end local v5    # "dumpFullDetails":Z
    .local v7, "lastIndex":I
    .local v9, "csvProcStats":[I
    .local v10, "csvScreenStats":[I
    .local v11, "csvMemStats":[I
    .local v18, "dumpFullDetails":Z
    .local v20, "maxNum":I
    .local v22, "activeOnly":Z
    .local v24, "csvSepScreenStats":Z
    .local v25, "csvSepMemStats":Z
    .restart local v26    # "csvSepProcStats":Z
    .restart local v31    # "isCompact":Z
    .restart local v32    # "isCsv":Z
    .restart local v33    # "currentOnly":Z
    .restart local v34    # "dumpDetails":Z
    :goto_9
    if-eqz v21, :cond_26

    .line 868
    return-void

    .line 871
    :cond_26
    if-eqz v32, :cond_2a

    .line 872
    const-string v0, "Processes running summed over"

    invoke-virtual {v14, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 873
    if-nez v24, :cond_27

    .line 874
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_a
    array-length v1, v10

    if-ge v0, v1, :cond_27

    .line 875
    const-string v1, " "

    invoke-virtual {v14, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 876
    aget v1, v10, v0

    invoke-static {v14, v1}, Lcom/android/internal/app/procstats/DumpUtils;->printScreenLabelCsv(Ljava/io/PrintWriter;I)V

    .line 874
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 879
    .end local v0    # "i":I
    :cond_27
    if-nez v25, :cond_28

    .line 880
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_b
    array-length v1, v11

    if-ge v0, v1, :cond_28

    .line 881
    const-string v1, " "

    invoke-virtual {v14, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 882
    aget v1, v11, v0

    invoke-static {v14, v1}, Lcom/android/internal/app/procstats/DumpUtils;->printMemLabelCsv(Ljava/io/PrintWriter;I)V

    .line 880
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 885
    .end local v0    # "i":I
    :cond_28
    if-nez v26, :cond_29

    .line 886
    const/16 v28, 0x0

    .local v28, "i":I
    :goto_c
    move/from16 v0, v28

    .end local v28    # "i":I
    .restart local v0    # "i":I
    array-length v1, v9

    if-ge v0, v1, :cond_29

    .line 887
    const-string v1, " "

    invoke-virtual {v14, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 888
    sget-object v1, Lcom/android/internal/app/procstats/DumpUtils;->STATE_NAMES_CSV:[Ljava/lang/String;

    aget v2, v9, v0

    aget-object v1, v1, v2

    invoke-virtual {v14, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 886
    add-int/lit8 v28, v0, 0x1

    .end local v0    # "i":I
    .restart local v28    # "i":I
    goto :goto_c

    .line 891
    .end local v28    # "i":I
    :cond_29
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 892
    iget-object v6, v13, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v6

    :try_start_18
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_c

    .line 893
    const/4 v3, 0x0

    move-object v1, v13

    move-object v2, v14

    move/from16 v4, v24

    move-object v5, v10

    move-object/from16 v27, v6

    move/from16 v6, v25

    move/from16 v35, v7

    move-object v7, v11

    .end local v7    # "lastIndex":I
    .local v35, "lastIndex":I
    move/from16 v36, v8

    move/from16 v8, v26

    .end local v8    # "aggregateHours":I
    .local v36, "aggregateHours":I
    move-object/from16 v30, v9

    .end local v9    # "csvProcStats":[I
    .local v30, "csvProcStats":[I
    move-object/from16 v37, v10

    move-object/from16 v38, v11

    move-wide/from16 v10, v16

    .end local v10    # "csvScreenStats":[I
    .end local v11    # "csvMemStats":[I
    .local v37, "csvScreenStats":[I
    .local v38, "csvMemStats":[I
    move-object/from16 v39, v12

    .end local v12    # "reqPackage":Ljava/lang/String;
    .local v39, "reqPackage":Ljava/lang/String;
    :try_start_19
    invoke-virtual/range {v1 .. v12}, Lcom/android/server/am/ProcessStatsService;->dumpFilteredProcessesCsvLocked(Ljava/io/PrintWriter;Ljava/lang/String;Z[IZ[IZ[IJLjava/lang/String;)Z

    .line 913
    monitor-exit v27
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_b

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 914
    return-void

    .line 913
    :catchall_b
    move-exception v0

    goto :goto_d

    .end local v30    # "csvProcStats":[I
    .end local v35    # "lastIndex":I
    .end local v36    # "aggregateHours":I
    .end local v37    # "csvScreenStats":[I
    .end local v38    # "csvMemStats":[I
    .end local v39    # "reqPackage":Ljava/lang/String;
    .restart local v7    # "lastIndex":I
    .restart local v8    # "aggregateHours":I
    .restart local v9    # "csvProcStats":[I
    .restart local v10    # "csvScreenStats":[I
    .restart local v11    # "csvMemStats":[I
    .restart local v12    # "reqPackage":Ljava/lang/String;
    :catchall_c
    move-exception v0

    move-object/from16 v27, v6

    move/from16 v35, v7

    move/from16 v36, v8

    move-object/from16 v30, v9

    move-object/from16 v37, v10

    move-object/from16 v38, v11

    move-object/from16 v39, v12

    .end local v7    # "lastIndex":I
    .end local v8    # "aggregateHours":I
    .end local v9    # "csvProcStats":[I
    .end local v10    # "csvScreenStats":[I
    .end local v11    # "csvMemStats":[I
    .end local v12    # "reqPackage":Ljava/lang/String;
    .restart local v30    # "csvProcStats":[I
    .restart local v35    # "lastIndex":I
    .restart local v36    # "aggregateHours":I
    .restart local v37    # "csvScreenStats":[I
    .restart local v38    # "csvMemStats":[I
    .restart local v39    # "reqPackage":Ljava/lang/String;
    :goto_d
    :try_start_1a
    monitor-exit v27
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_b

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 915
    .end local v30    # "csvProcStats":[I
    .end local v35    # "lastIndex":I
    .end local v36    # "aggregateHours":I
    .end local v37    # "csvScreenStats":[I
    .end local v38    # "csvMemStats":[I
    .end local v39    # "reqPackage":Ljava/lang/String;
    .restart local v7    # "lastIndex":I
    .restart local v8    # "aggregateHours":I
    .restart local v9    # "csvProcStats":[I
    .restart local v10    # "csvScreenStats":[I
    .restart local v11    # "csvMemStats":[I
    .restart local v12    # "reqPackage":Ljava/lang/String;
    :cond_2a
    move/from16 v35, v7

    move/from16 v36, v8

    move-object/from16 v30, v9

    move-object/from16 v37, v10

    move-object/from16 v38, v11

    move-object/from16 v39, v12

    .end local v7    # "lastIndex":I
    .end local v8    # "aggregateHours":I
    .end local v9    # "csvProcStats":[I
    .end local v10    # "csvScreenStats":[I
    .end local v11    # "csvMemStats":[I
    .end local v12    # "reqPackage":Ljava/lang/String;
    .restart local v30    # "csvProcStats":[I
    .restart local v35    # "lastIndex":I
    .restart local v36    # "aggregateHours":I
    .restart local v37    # "csvScreenStats":[I
    .restart local v38    # "csvMemStats":[I
    .restart local v39    # "reqPackage":Ljava/lang/String;
    move/from16 v12, v36

    if-eqz v12, :cond_2b

    .line 916
    .end local v36    # "aggregateHours":I
    .local v12, "aggregateHours":I
    const-string v0, "AGGREGATED OVER LAST "

    invoke-virtual {v14, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v14, v12}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " HOURS:"

    invoke-virtual {v14, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 917
    int-to-long v3, v12

    move-object v1, v13

    move-object v2, v14

    move-wide/from16 v5, v16

    move-object/from16 v7, v39

    move/from16 v8, v31

    move/from16 v9, v34

    move/from16 v10, v18

    move/from16 v11, v23

    move/from16 v27, v12

    move/from16 v12, v22

    .end local v12    # "aggregateHours":I
    .local v27, "aggregateHours":I
    invoke-direct/range {v1 .. v12}, Lcom/android/server/am/ProcessStatsService;->dumpAggregatedStats(Ljava/io/PrintWriter;JJLjava/lang/String;ZZZZZ)V

    .line 919
    return-void

    .line 920
    .end local v27    # "aggregateHours":I
    .restart local v12    # "aggregateHours":I
    :cond_2b
    move/from16 v27, v12

    .end local v12    # "aggregateHours":I
    .restart local v27    # "aggregateHours":I
    move/from16 v12, v35

    if-lez v12, :cond_37

    .line 921
    .end local v35    # "lastIndex":I
    .local v12, "lastIndex":I
    const-string v0, "LAST STATS AT INDEX "

    invoke-virtual {v14, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v14, v12}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ":"

    invoke-virtual {v14, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 922
    const/4 v1, 0x0

    const/4 v7, 0x1

    invoke-direct {v13, v1, v1, v7}, Lcom/android/server/am/ProcessStatsService;->getCommittedFiles(IZZ)Ljava/util/ArrayList;

    move-result-object v0

    .line 923
    .local v0, "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v12, v1, :cond_2c

    .line 924
    const-string v1, "Only have "

    invoke-virtual {v14, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v14, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v1, " data sets"

    invoke-virtual {v14, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 925
    return-void

    .line 927
    :cond_2c
    new-instance v1, Landroid/util/AtomicFile;

    new-instance v2, Ljava/io/File;

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    move-object v9, v1

    .line 928
    .local v9, "file":Landroid/util/AtomicFile;
    new-instance v1, Lcom/android/internal/app/procstats/ProcessStats;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/internal/app/procstats/ProcessStats;-><init>(Z)V

    move-object v10, v1

    .line 929
    .local v10, "processStats":Lcom/android/internal/app/procstats/ProcessStats;
    invoke-virtual {v13, v10, v9}, Lcom/android/server/am/ProcessStatsService;->readLocked(Lcom/android/internal/app/procstats/ProcessStats;Landroid/util/AtomicFile;)Z

    .line 930
    iget-object v1, v10, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    if-eqz v1, :cond_2f

    .line 931
    if-nez v19, :cond_2d

    if-eqz v31, :cond_2e

    :cond_2d
    const-string v1, "err,"

    invoke-virtual {v14, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 932
    :cond_2e
    const-string v1, "Failure reading "

    invoke-virtual {v14, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v14, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 933
    const-string v1, "; "

    invoke-virtual {v14, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, v10, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    invoke-virtual {v14, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 934
    return-void

    .line 936
    :cond_2f
    invoke-virtual {v9}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    .line 937
    .local v11, "fileStr":Ljava/lang/String;
    const-string v1, ".ci"

    invoke-virtual {v11, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v29

    .line 938
    .local v29, "checkedIn":Z
    if-nez v19, :cond_36

    if-eqz v31, :cond_30

    goto :goto_11

    .line 942
    :cond_30
    const-string v1, "COMMITTED STATS FROM "

    invoke-virtual {v14, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 943
    iget-object v1, v10, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartClockStr:Ljava/lang/String;

    invoke-virtual {v14, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 944
    if-eqz v29, :cond_31

    const-string v1, " (checked in)"

    invoke-virtual {v14, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 945
    :cond_31
    const-string v1, ":"

    invoke-virtual {v14, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 946
    if-nez v34, :cond_34

    if-eqz v18, :cond_32

    goto :goto_f

    .line 953
    :cond_32
    move-object v1, v10

    move-object v2, v14

    move-object/from16 v3, v39

    move-wide/from16 v4, v16

    move/from16 v6, v22

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/app/procstats/ProcessStats;->dumpSummaryLocked(Ljava/io/PrintWriter;Ljava/lang/String;JZ)V

    .line 956
    .end local v39    # "reqPackage":Ljava/lang/String;
    .local v8, "reqPackage":Ljava/lang/String;
    :cond_33
    :goto_e
    move-object/from16 v8, v39

    goto :goto_12

    .line 947
    .end local v8    # "reqPackage":Ljava/lang/String;
    .restart local v39    # "reqPackage":Ljava/lang/String;
    :cond_34
    :goto_f
    if-nez v18, :cond_35

    move v6, v7

    goto :goto_10

    :cond_35
    const/4 v6, 0x0

    :goto_10
    move-object v1, v10

    move-object v2, v14

    move-object/from16 v3, v39

    move-wide/from16 v4, v16

    move/from16 v7, v23

    move/from16 v8, v22

    invoke-virtual/range {v1 .. v8}, Lcom/android/internal/app/procstats/ProcessStats;->dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;JZZZ)V

    .line 949
    if-eqz v23, :cond_33

    .line 950
    const-string v1, "  mFile="

    invoke-virtual {v14, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, v13, Lcom/android/server/am/ProcessStatsService;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v1}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_e

    .line 940
    :cond_36
    :goto_11
    move-object/from16 v8, v39

    invoke-virtual {v10, v14, v8}, Lcom/android/internal/app/procstats/ProcessStats;->dumpCheckinLocked(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 956
    .end local v39    # "reqPackage":Ljava/lang/String;
    .restart local v8    # "reqPackage":Ljava/lang/String;
    :goto_12
    return-void

    .line 959
    .end local v0    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v8    # "reqPackage":Ljava/lang/String;
    .end local v9    # "file":Landroid/util/AtomicFile;
    .end local v10    # "processStats":Lcom/android/internal/app/procstats/ProcessStats;
    .end local v11    # "fileStr":Ljava/lang/String;
    .end local v29    # "checkedIn":Z
    .restart local v39    # "reqPackage":Ljava/lang/String;
    :cond_37
    move-object/from16 v8, v39

    const/4 v7, 0x1

    .end local v39    # "reqPackage":Ljava/lang/String;
    .restart local v8    # "reqPackage":Ljava/lang/String;
    const/4 v1, 0x0

    .line 960
    .local v1, "sepNeeded":Z
    if-nez v23, :cond_39

    if-eqz v19, :cond_38

    goto :goto_13

    .line 1023
    :cond_38
    move v9, v1

    move/from16 v35, v7

    const/16 v39, 0x0

    goto/16 :goto_1e

    .line 961
    :cond_39
    :goto_13
    iget-object v0, v13, Lcom/android/server/am/ProcessStatsService;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 963
    if-nez v19, :cond_3a

    move v0, v7

    goto :goto_14

    :cond_3a
    const/4 v0, 0x0

    :goto_14
    const/4 v2, 0x0

    :try_start_1b
    invoke-direct {v13, v2, v2, v0}, Lcom/android/server/am/ProcessStatsService;->getCommittedFiles(IZZ)Ljava/util/ArrayList;

    move-result-object v0
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_17

    move-object v9, v0

    .line 964
    .local v9, "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v9, :cond_46

    .line 965
    if-eqz v19, :cond_3b

    const/4 v6, 0x0

    goto :goto_15

    :cond_3b
    :try_start_1c
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int v6, v0, v20

    :goto_15
    move v0, v6

    .line 966
    .local v0, "start":I
    if-gez v0, :cond_3c

    .line 967
    const/4 v0, 0x0

    .line 969
    .end local v0    # "start":I
    .local v10, "start":I
    :cond_3c
    move v10, v0

    move v0, v10

    .local v0, "i":I
    :goto_16
    move v11, v0

    .end local v0    # "i":I
    .local v11, "i":I
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_10

    if-ge v11, v0, :cond_46

    .line 972
    :try_start_1d
    new-instance v0, Landroid/util/AtomicFile;

    new-instance v2, Ljava/io/File;

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 973
    .local v0, "file":Landroid/util/AtomicFile;
    new-instance v2, Lcom/android/internal/app/procstats/ProcessStats;
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_1d} :catch_8
    .catchall {:try_start_1d .. :try_end_1d} :catchall_10

    const/4 v6, 0x0

    :try_start_1e
    invoke-direct {v2, v6}, Lcom/android/internal/app/procstats/ProcessStats;-><init>(Z)V

    move-object v4, v2

    .line 974
    .local v4, "processStats":Lcom/android/internal/app/procstats/ProcessStats;
    invoke-virtual {v13, v4, v0}, Lcom/android/server/am/ProcessStatsService;->readLocked(Lcom/android/internal/app/procstats/ProcessStats;Landroid/util/AtomicFile;)Z

    .line 975
    iget-object v2, v4, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    if-eqz v2, :cond_3f

    .line 976
    if-nez v19, :cond_3d

    if-eqz v31, :cond_3e

    :cond_3d
    const-string v2, "err,"

    invoke-virtual {v14, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 977
    :cond_3e
    const-string v2, "Failure reading "

    invoke-virtual {v14, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v14, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 978
    const-string v2, "; "

    invoke-virtual {v14, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, v4, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    invoke-virtual {v14, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 980
    new-instance v2, Ljava/io/File;

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 981
    nop

    .line 969
    move/from16 v39, v6

    move/from16 v35, v7

    goto/16 :goto_1d

    .line 983
    :cond_3f
    invoke-virtual {v0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    move-object v5, v2

    .line 984
    .local v5, "fileStr":Ljava/lang/String;
    const-string v2, ".ci"

    invoke-virtual {v5, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    move/from16 v28, v2

    .line 985
    .local v28, "checkedIn":Z
    if-nez v19, :cond_44

    if-eqz v31, :cond_40

    .line 987
    move-object/from16 v40, v4

    move-object/from16 v41, v5

    move/from16 v39, v6

    move/from16 v35, v7

    move-object/from16 v42, v8

    goto/16 :goto_1a

    .line 989
    :cond_40
    if-eqz v1, :cond_41

    .line 990
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_1e} :catch_7
    .catchall {:try_start_1e .. :try_end_1e} :catchall_10

    goto :goto_17

    .line 992
    :cond_41
    const/4 v1, 0x1

    .line 994
    .end local v1    # "sepNeeded":Z
    .local v29, "sepNeeded":Z
    :goto_17
    move/from16 v29, v1

    :try_start_1f
    const-string v1, "COMMITTED STATS FROM "

    invoke-virtual {v14, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 995
    iget-object v1, v4, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartClockStr:Ljava/lang/String;

    invoke-virtual {v14, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_1f} :catch_5
    .catchall {:try_start_1f .. :try_end_1f} :catchall_f

    .line 996
    if-eqz v28, :cond_42

    :try_start_20
    const-string v1, " (checked in)"

    invoke-virtual {v14, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_20} :catch_3
    .catchall {:try_start_20 .. :try_end_20} :catchall_d

    goto :goto_18

    .line 1020
    .end local v0    # "file":Landroid/util/AtomicFile;
    .end local v4    # "processStats":Lcom/android/internal/app/procstats/ProcessStats;
    .end local v5    # "fileStr":Ljava/lang/String;
    .end local v9    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v10    # "start":I
    .end local v11    # "i":I
    .end local v28    # "checkedIn":Z
    :catchall_d
    move-exception v0

    move-object/from16 v28, v8

    move/from16 v35, v12

    move/from16 v1, v29

    goto/16 :goto_27

    .line 1013
    .restart local v9    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v10    # "start":I
    .restart local v11    # "i":I
    :catch_3
    move-exception v0

    move/from16 v39, v6

    move/from16 v35, v7

    move/from16 v1, v29

    goto/16 :goto_1c

    .line 997
    .restart local v0    # "file":Landroid/util/AtomicFile;
    .restart local v4    # "processStats":Lcom/android/internal/app/procstats/ProcessStats;
    .restart local v5    # "fileStr":Ljava/lang/String;
    .restart local v28    # "checkedIn":Z
    :cond_42
    :goto_18
    :try_start_21
    const-string v1, ":"

    invoke-virtual {v14, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_21} :catch_5
    .catchall {:try_start_21 .. :try_end_21} :catchall_f

    .line 1001
    if-eqz v18, :cond_43

    .line 1002
    const/16 v35, 0x0

    const/16 v36, 0x0

    move-object v1, v4

    move-object v2, v14

    move-object v3, v8

    move-object/from16 v40, v4

    move-object/from16 v41, v5

    move-wide/from16 v4, v16

    .end local v4    # "processStats":Lcom/android/internal/app/procstats/ProcessStats;
    .end local v5    # "fileStr":Ljava/lang/String;
    .local v40, "processStats":Lcom/android/internal/app/procstats/ProcessStats;
    .local v41, "fileStr":Ljava/lang/String;
    move/from16 v39, v6

    move/from16 v6, v35

    move/from16 v35, v7

    move/from16 v7, v36

    move-object/from16 v42, v8

    move/from16 v8, v22

    .end local v8    # "reqPackage":Ljava/lang/String;
    .local v42, "reqPackage":Ljava/lang/String;
    :try_start_22
    invoke-virtual/range {v1 .. v8}, Lcom/android/internal/app/procstats/ProcessStats;->dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;JZZZ)V

    goto :goto_19

    .line 1020
    .end local v0    # "file":Landroid/util/AtomicFile;
    .end local v9    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v10    # "start":I
    .end local v11    # "i":I
    .end local v28    # "checkedIn":Z
    .end local v40    # "processStats":Lcom/android/internal/app/procstats/ProcessStats;
    .end local v41    # "fileStr":Ljava/lang/String;
    :catchall_e
    move-exception v0

    move/from16 v35, v12

    move/from16 v1, v29

    move-object/from16 v28, v42

    goto/16 :goto_27

    .line 1013
    .restart local v9    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v10    # "start":I
    .restart local v11    # "i":I
    :catch_4
    move-exception v0

    move/from16 v1, v29

    move-object/from16 v8, v42

    goto/16 :goto_1c

    .line 1005
    .end local v42    # "reqPackage":Ljava/lang/String;
    .restart local v0    # "file":Landroid/util/AtomicFile;
    .restart local v4    # "processStats":Lcom/android/internal/app/procstats/ProcessStats;
    .restart local v5    # "fileStr":Ljava/lang/String;
    .restart local v8    # "reqPackage":Ljava/lang/String;
    .restart local v28    # "checkedIn":Z
    :cond_43
    move-object/from16 v40, v4

    move-object/from16 v41, v5

    move/from16 v39, v6

    move/from16 v35, v7

    move-object/from16 v42, v8

    .end local v4    # "processStats":Lcom/android/internal/app/procstats/ProcessStats;
    .end local v5    # "fileStr":Ljava/lang/String;
    .end local v8    # "reqPackage":Ljava/lang/String;
    .restart local v40    # "processStats":Lcom/android/internal/app/procstats/ProcessStats;
    .restart local v41    # "fileStr":Ljava/lang/String;
    .restart local v42    # "reqPackage":Ljava/lang/String;
    move-object/from16 v1, v40

    move-object v2, v14

    move-object/from16 v3, v42

    move-wide/from16 v4, v16

    move/from16 v6, v22

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/app/procstats/ProcessStats;->dumpSummaryLocked(Ljava/io/PrintWriter;Ljava/lang/String;JZ)V
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_22} :catch_4
    .catchall {:try_start_22 .. :try_end_22} :catchall_e

    .line 1008
    :goto_19
    move/from16 v1, v29

    move-object/from16 v2, v40

    move-object/from16 v8, v42

    goto :goto_1b

    .line 1020
    .end local v0    # "file":Landroid/util/AtomicFile;
    .end local v9    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v10    # "start":I
    .end local v11    # "i":I
    .end local v28    # "checkedIn":Z
    .end local v40    # "processStats":Lcom/android/internal/app/procstats/ProcessStats;
    .end local v41    # "fileStr":Ljava/lang/String;
    .end local v42    # "reqPackage":Ljava/lang/String;
    .restart local v8    # "reqPackage":Ljava/lang/String;
    :catchall_f
    move-exception v0

    move-object/from16 v28, v8

    move/from16 v35, v12

    move/from16 v1, v29

    .end local v8    # "reqPackage":Ljava/lang/String;
    .restart local v42    # "reqPackage":Ljava/lang/String;
    goto/16 :goto_27

    .line 1013
    .end local v42    # "reqPackage":Ljava/lang/String;
    .restart local v8    # "reqPackage":Ljava/lang/String;
    .restart local v9    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v10    # "start":I
    .restart local v11    # "i":I
    :catch_5
    move-exception v0

    move/from16 v39, v6

    move/from16 v35, v7

    move/from16 v1, v29

    .end local v8    # "reqPackage":Ljava/lang/String;
    .restart local v42    # "reqPackage":Ljava/lang/String;
    goto :goto_1c

    .line 987
    .end local v29    # "sepNeeded":Z
    .end local v42    # "reqPackage":Ljava/lang/String;
    .restart local v0    # "file":Landroid/util/AtomicFile;
    .restart local v1    # "sepNeeded":Z
    .restart local v4    # "processStats":Lcom/android/internal/app/procstats/ProcessStats;
    .restart local v5    # "fileStr":Ljava/lang/String;
    .restart local v8    # "reqPackage":Ljava/lang/String;
    .restart local v28    # "checkedIn":Z
    :cond_44
    move-object/from16 v40, v4

    move-object/from16 v41, v5

    move/from16 v39, v6

    move/from16 v35, v7

    move-object/from16 v42, v8

    .end local v4    # "processStats":Lcom/android/internal/app/procstats/ProcessStats;
    .end local v5    # "fileStr":Ljava/lang/String;
    .end local v8    # "reqPackage":Ljava/lang/String;
    .restart local v40    # "processStats":Lcom/android/internal/app/procstats/ProcessStats;
    .restart local v41    # "fileStr":Ljava/lang/String;
    .restart local v42    # "reqPackage":Ljava/lang/String;
    :goto_1a
    move-object/from16 v2, v40

    move-object/from16 v8, v42

    :try_start_23
    invoke-virtual {v2, v14, v8}, Lcom/android/internal/app/procstats/ProcessStats;->dumpCheckinLocked(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 1008
    .end local v40    # "processStats":Lcom/android/internal/app/procstats/ProcessStats;
    .end local v42    # "reqPackage":Ljava/lang/String;
    .local v2, "processStats":Lcom/android/internal/app/procstats/ProcessStats;
    .restart local v8    # "reqPackage":Ljava/lang/String;
    :goto_1b
    if-eqz v19, :cond_45

    .line 1010
    invoke-virtual {v0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v3

    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v6, v41

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .end local v41    # "fileStr":Ljava/lang/String;
    .local v6, "fileStr":Ljava/lang/String;
    const-string v7, ".ci"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_23} :catch_6
    .catchall {:try_start_23 .. :try_end_23} :catchall_10

    .line 1016
    .end local v0    # "file":Landroid/util/AtomicFile;
    .end local v2    # "processStats":Lcom/android/internal/app/procstats/ProcessStats;
    .end local v6    # "fileStr":Ljava/lang/String;
    .end local v28    # "checkedIn":Z
    :cond_45
    goto :goto_1d

    .line 1013
    :catch_6
    move-exception v0

    goto :goto_1c

    :catch_7
    move-exception v0

    move/from16 v39, v6

    move/from16 v35, v7

    goto :goto_1c

    :catch_8
    move-exception v0

    move/from16 v35, v7

    const/16 v39, 0x0

    .line 1014
    .local v0, "e":Ljava/lang/Throwable;
    :goto_1c
    :try_start_24
    const-string v2, "**** FAILURE DUMPING STATE: "

    invoke-virtual {v14, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v14, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1015
    invoke-virtual {v0, v14}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_10

    .line 969
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_1d
    add-int/lit8 v0, v11, 0x1

    .end local v11    # "i":I
    .local v0, "i":I
    move/from16 v7, v35

    goto/16 :goto_16

    .line 1020
    .end local v0    # "i":I
    .end local v9    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v10    # "start":I
    :catchall_10
    move-exception v0

    move-object/from16 v28, v8

    move/from16 v35, v12

    goto/16 :goto_27

    :cond_46
    move/from16 v35, v7

    const/16 v39, 0x0

    iget-object v0, v13, Lcom/android/server/am/ProcessStatsService;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1021
    nop

    .line 1023
    move v9, v1

    .end local v1    # "sepNeeded":Z
    .local v9, "sepNeeded":Z
    :goto_1e
    if-nez v19, :cond_4f

    .line 1024
    iget-object v10, v13, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v10

    :try_start_25
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_15

    .line 1025
    if-eqz v31, :cond_47

    .line 1026
    :try_start_26
    iget-object v0, v13, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    invoke-virtual {v0, v14, v8}, Lcom/android/internal/app/procstats/ProcessStats;->dumpCheckinLocked(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 1043
    move-object/from16 v28, v8

    move/from16 v29, v9

    goto :goto_23

    :catchall_11
    move-exception v0

    move-object/from16 v28, v8

    .end local v8    # "reqPackage":Ljava/lang/String;
    .end local v12    # "lastIndex":I
    .local v28, "reqPackage":Ljava/lang/String;
    .restart local v35    # "lastIndex":I
    :goto_1f
    move/from16 v35, v12

    goto/16 :goto_25

    .line 1028
    .end local v28    # "reqPackage":Ljava/lang/String;
    .end local v35    # "lastIndex":I
    .restart local v8    # "reqPackage":Ljava/lang/String;
    .restart local v12    # "lastIndex":I
    :cond_47
    if-eqz v9, :cond_48

    .line 1029
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_11

    .line 1031
    :cond_48
    :try_start_27
    const-string v0, "CURRENT STATS:"

    invoke-virtual {v14, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_15

    .line 1032
    if-nez v34, :cond_4a

    if-eqz v18, :cond_49

    goto :goto_20

    .line 1039
    :cond_49
    :try_start_28
    iget-object v1, v13, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    move-object v2, v14

    move-object v3, v8

    move-wide/from16 v4, v16

    move/from16 v6, v22

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/app/procstats/ProcessStats;->dumpSummaryLocked(Ljava/io/PrintWriter;Ljava/lang/String;JZ)V
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_11

    .line 1041
    move-object/from16 v28, v8

    goto :goto_22

    .line 1033
    :cond_4a
    :goto_20
    :try_start_29
    iget-object v1, v13, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_15

    if-nez v18, :cond_4b

    move/from16 v6, v35

    goto :goto_21

    :cond_4b
    move/from16 v6, v39

    :goto_21
    move-object v2, v14

    move-object v3, v8

    move-wide/from16 v4, v16

    move/from16 v7, v23

    move-object/from16 v28, v8

    move/from16 v8, v22

    .end local v8    # "reqPackage":Ljava/lang/String;
    .restart local v28    # "reqPackage":Ljava/lang/String;
    :try_start_2a
    invoke-virtual/range {v1 .. v8}, Lcom/android/internal/app/procstats/ProcessStats;->dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;JZZZ)V
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_14

    .line 1035
    if-eqz v23, :cond_4c

    .line 1036
    :try_start_2b
    const-string v0, "  mFile="

    invoke-virtual {v14, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v13, Lcom/android/server/am/ProcessStatsService;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_12

    goto :goto_22

    .line 1043
    :catchall_12
    move-exception v0

    goto :goto_1f

    .line 1041
    :cond_4c
    :goto_22
    const/4 v0, 0x1

    .line 1043
    .end local v9    # "sepNeeded":Z
    .local v0, "sepNeeded":Z
    move/from16 v29, v0

    .end local v0    # "sepNeeded":Z
    .restart local v29    # "sepNeeded":Z
    :goto_23
    :try_start_2c
    monitor-exit v10
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_13

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1044
    if-nez v33, :cond_4e

    .line 1045
    if-eqz v29, :cond_4d

    .line 1046
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1048
    :cond_4d
    const-string v0, "AGGREGATED OVER LAST 24 HOURS:"

    invoke-virtual {v14, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1049
    const-wide/16 v3, 0x18

    move-object v1, v13

    move-object v2, v14

    move-wide/from16 v5, v16

    move-object/from16 v7, v28

    move/from16 v8, v31

    move/from16 v9, v34

    move/from16 v10, v18

    move/from16 v11, v23

    move/from16 v35, v12

    move/from16 v12, v22

    .end local v12    # "lastIndex":I
    .restart local v35    # "lastIndex":I
    invoke-direct/range {v1 .. v12}, Lcom/android/server/am/ProcessStatsService;->dumpAggregatedStats(Ljava/io/PrintWriter;JJLjava/lang/String;ZZZZZ)V

    .line 1051
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1052
    const-string v0, "AGGREGATED OVER LAST 3 HOURS:"

    invoke-virtual {v14, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1053
    const-wide/16 v3, 0x3

    invoke-direct/range {v1 .. v12}, Lcom/android/server/am/ProcessStatsService;->dumpAggregatedStats(Ljava/io/PrintWriter;JJLjava/lang/String;ZZZZZ)V

    goto :goto_26

    .line 1057
    .end local v35    # "lastIndex":I
    .restart local v12    # "lastIndex":I
    :cond_4e
    move/from16 v35, v12

    .end local v12    # "lastIndex":I
    .restart local v35    # "lastIndex":I
    goto :goto_26

    .line 1043
    .end local v35    # "lastIndex":I
    .restart local v12    # "lastIndex":I
    :catchall_13
    move-exception v0

    move/from16 v35, v12

    move/from16 v9, v29

    .end local v12    # "lastIndex":I
    .end local v29    # "sepNeeded":Z
    .restart local v9    # "sepNeeded":Z
    .restart local v35    # "lastIndex":I
    :goto_24
    goto :goto_25

    .end local v35    # "lastIndex":I
    .restart local v12    # "lastIndex":I
    :catchall_14
    move-exception v0

    move/from16 v35, v12

    goto :goto_24

    .end local v28    # "reqPackage":Ljava/lang/String;
    .restart local v8    # "reqPackage":Ljava/lang/String;
    :catchall_15
    move-exception v0

    move-object/from16 v28, v8

    move/from16 v35, v12

    .end local v8    # "reqPackage":Ljava/lang/String;
    .end local v12    # "lastIndex":I
    .restart local v28    # "reqPackage":Ljava/lang/String;
    .restart local v35    # "lastIndex":I
    :goto_25
    :try_start_2d
    monitor-exit v10
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_16

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :catchall_16
    move-exception v0

    goto :goto_25

    .line 1057
    .end local v28    # "reqPackage":Ljava/lang/String;
    .end local v35    # "lastIndex":I
    .restart local v8    # "reqPackage":Ljava/lang/String;
    .restart local v12    # "lastIndex":I
    :cond_4f
    move-object/from16 v28, v8

    move/from16 v35, v12

    move/from16 v29, v9

    .end local v8    # "reqPackage":Ljava/lang/String;
    .end local v9    # "sepNeeded":Z
    .end local v12    # "lastIndex":I
    .restart local v28    # "reqPackage":Ljava/lang/String;
    .restart local v29    # "sepNeeded":Z
    .restart local v35    # "lastIndex":I
    :goto_26
    return-void

    .line 1020
    .end local v28    # "reqPackage":Ljava/lang/String;
    .end local v29    # "sepNeeded":Z
    .end local v35    # "lastIndex":I
    .restart local v1    # "sepNeeded":Z
    .restart local v8    # "reqPackage":Ljava/lang/String;
    .restart local v12    # "lastIndex":I
    :catchall_17
    move-exception v0

    move-object/from16 v28, v8

    move/from16 v35, v12

    .end local v8    # "reqPackage":Ljava/lang/String;
    .end local v12    # "lastIndex":I
    .restart local v28    # "reqPackage":Ljava/lang/String;
    .restart local v35    # "lastIndex":I
    :goto_27
    iget-object v2, v13, Lcom/android/server/am/ProcessStatsService;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    :array_0
    .array-data 4
        0x0
        0x4
    .end array-data
.end method

.method private dumpProto(Ljava/io/FileDescriptor;)V
    .locals 14
    .param p1, "fd"    # Ljava/io/FileDescriptor;

    .line 1075
    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v0, p1}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 1079
    .local v0, "proto":Landroid/util/proto/ProtoOutputStream;
    iget-object v7, p0, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v7

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1080
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 1081
    .local v5, "now":J
    iget-object v1, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    const-wide v3, 0x10b00000001L

    move-object v2, v0

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/app/procstats/ProcessStats;->writeToProto(Landroid/util/proto/ProtoOutputStream;JJ)V

    .line 1082
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1085
    const-wide v9, 0x10b00000002L

    const/4 v11, 0x3

    move-object v7, p0

    move-object v8, v0

    move-wide v12, v5

    invoke-direct/range {v7 .. v13}, Lcom/android/server/am/ProcessStatsService;->dumpAggregatedStats(Landroid/util/proto/ProtoOutputStream;JIJ)V

    .line 1088
    const-wide v9, 0x10b00000003L

    const/16 v11, 0x18

    invoke-direct/range {v7 .. v13}, Lcom/android/server/am/ProcessStatsService;->dumpAggregatedStats(Landroid/util/proto/ProtoOutputStream;JIJ)V

    .line 1090
    invoke-virtual {v0}, Landroid/util/proto/ProtoOutputStream;->flush()V

    .line 1091
    return-void

    .line 1082
    .end local v5    # "now":J
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method private getCommittedFiles(IZZ)Ljava/util/ArrayList;
    .locals 7
    .param p1, "minNum"    # I
    .param p2, "inclCurrent"    # Z
    .param p3, "inclCheckedIn"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZZ)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 361
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mBaseDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 362
    .local v0, "files":[Ljava/io/File;
    if-eqz v0, :cond_4

    array-length v1, v0

    if-gt v1, p1, :cond_0

    goto :goto_2

    .line 365
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 366
    .local v1, "filesArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/android/server/am/ProcessStatsService;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v2}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 368
    .local v2, "currentFile":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_3

    .line 369
    aget-object v4, v0, v3

    .line 370
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    .line 372
    .local v5, "fileStr":Ljava/lang/String;
    if-nez p3, :cond_1

    const-string v6, ".ci"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 374
    goto :goto_1

    .line 376
    :cond_1
    if-nez p2, :cond_2

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 378
    goto :goto_1

    .line 380
    :cond_2
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 368
    .end local v4    # "file":Ljava/io/File;
    .end local v5    # "fileStr":Ljava/lang/String;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 382
    .end local v3    # "i":I
    :cond_3
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 383
    return-object v1

    .line 363
    .end local v1    # "filesArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2    # "currentFile":Ljava/lang/String;
    :cond_4
    :goto_2
    const/4 v1, 0x0

    return-object v1
.end method

.method static parseStateList([Ljava/lang/String;ILjava/lang/String;[Z[Ljava/lang/String;)[I
    .locals 10
    .param p0, "states"    # [Ljava/lang/String;
    .param p1, "mult"    # I
    .param p2, "arg"    # Ljava/lang/String;
    .param p3, "outSep"    # [Z
    .param p4, "outError"    # [Ljava/lang/String;

    .line 416
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 417
    .local v0, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .line 418
    .local v1, "lastPos":I
    const/4 v2, 0x0

    move v3, v1

    move v1, v2

    .line 418
    .local v1, "i":I
    .local v3, "lastPos":I
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-gt v1, v4, :cond_8

    .line 419
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_0

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    goto :goto_1

    :cond_0
    move v4, v2

    .line 420
    .local v4, "c":C
    :goto_1
    const/16 v5, 0x2c

    if-eq v4, v5, :cond_1

    const/16 v6, 0x2b

    if-eq v4, v6, :cond_1

    const/16 v6, 0x20

    if-eq v4, v6, :cond_1

    if-eqz v4, :cond_1

    .line 421
    goto :goto_6

    .line 423
    :cond_1
    if-ne v4, v5, :cond_2

    const/4 v5, 0x1

    goto :goto_2

    :cond_2
    move v5, v2

    .line 424
    .local v5, "isSep":Z
    :goto_2
    const/4 v6, 0x0

    if-nez v3, :cond_3

    .line 426
    aput-boolean v5, p3, v2

    goto :goto_3

    .line 427
    :cond_3
    if-eqz v4, :cond_4

    aget-boolean v7, p3, v2

    if-eq v7, v5, :cond_4

    .line 428
    const-string/jumbo v7, "inconsistent separators (can\'t mix \',\' with \'+\')"

    aput-object v7, p4, v2

    .line 429
    return-object v6

    .line 431
    :cond_4
    :goto_3
    add-int/lit8 v7, v1, -0x1

    if-ge v3, v7, :cond_7

    .line 432
    invoke-virtual {p2, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 433
    .local v7, "str":Ljava/lang/String;
    move v8, v2

    .line 433
    .local v8, "j":I
    :goto_4
    array-length v9, p0

    if-ge v8, v9, :cond_6

    .line 434
    aget-object v9, p0, v8

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 435
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 436
    const/4 v7, 0x0

    .line 437
    goto :goto_5

    .line 433
    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 440
    .end local v8    # "j":I
    :cond_6
    :goto_5
    if-eqz v7, :cond_7

    .line 441
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "invalid word \""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, p4, v2

    .line 442
    return-object v6

    .line 445
    .end local v7    # "str":Ljava/lang/String;
    :cond_7
    add-int/lit8 v3, v1, 0x1

    .line 418
    .end local v4    # "c":C
    .end local v5    # "isSep":Z
    :goto_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 448
    .end local v1    # "i":I
    :cond_8
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [I

    .line 449
    .local v1, "finalRes":[I
    nop

    .line 449
    .local v2, "i":I
    :goto_7
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_9

    .line 450
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    mul-int/2addr v4, p1

    aput v4, v1, v2

    .line 449
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 452
    .end local v2    # "i":I
    :cond_9
    return-object v1
.end method

.method private updateFile()V
    .locals 5

    .line 260
    new-instance v0, Landroid/util/AtomicFile;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/am/ProcessStatsService;->mBaseDir:Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "state-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-object v4, v4, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartClockStr:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".bin"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mFile:Landroid/util/AtomicFile;

    .line 262
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/ProcessStatsService;->mLastWriteTime:J

    .line 263
    return-void
.end method

.method private writeStateLocked(Z)V
    .locals 2
    .param p1, "sync"    # Z

    .line 215
    iget-boolean v0, p0, Lcom/android/server/am/ProcessStatsService;->mShuttingDown:Z

    if-eqz v0, :cond_0

    .line 216
    return-void

    .line 218
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/am/ProcessStatsService;->mCommitPending:Z

    .line 219
    .local v0, "commitPending":Z
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/am/ProcessStatsService;->mCommitPending:Z

    .line 220
    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/ProcessStatsService;->writeStateLocked(ZZ)V

    .line 221
    return-void
.end method


# virtual methods
.method public addSysMemUsageLocked(JJJJJ)V
    .locals 12
    .param p1, "cachedMem"    # J
    .param p3, "freeMem"    # J
    .param p5, "zramMem"    # J
    .param p7, "kernelMem"    # J
    .param p9, "nativeMem"    # J

    .line 183
    move-object v0, p0

    iget-object v1, v0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    move-wide v2, p1

    move-wide v4, p3

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    move-wide/from16 v10, p9

    invoke-virtual/range {v1 .. v11}, Lcom/android/internal/app/procstats/ProcessStats;->addSysMemUsage(JJJJJ)V

    .line 184
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 631
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-string v1, "ProcessStatsService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpAndUsageStatsPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 632
    return-void

    .line 634
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 636
    .local v0, "ident":J
    :try_start_0
    array-length v2, p3

    if-lez v2, :cond_1

    const-string v2, "--proto"

    const/4 v3, 0x0

    aget-object v3, p3, v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 637
    invoke-direct {p0, p1}, Lcom/android/server/am/ProcessStatsService;->dumpProto(Ljava/io/FileDescriptor;)V

    goto :goto_0

    .line 639
    :cond_1
    invoke-direct {p0, p2, p3}, Lcom/android/server/am/ProcessStatsService;->dumpInner(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 642
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 643
    nop

    .line 644
    return-void

    .line 642
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method dumpFilteredProcessesCsvLocked(Ljava/io/PrintWriter;Ljava/lang/String;Z[IZ[IZ[IJLjava/lang/String;)Z
    .locals 20
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "header"    # Ljava/lang/String;
    .param p3, "sepScreenStates"    # Z
    .param p4, "screenStates"    # [I
    .param p5, "sepMemStates"    # Z
    .param p6, "memStates"    # [I
    .param p7, "sepProcStates"    # Z
    .param p8, "procStates"    # [I
    .param p9, "now"    # J
    .param p11, "reqPackage"    # Ljava/lang/String;

    .line 401
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    const/4 v9, 0x0

    move-object/from16 v2, p4

    move-object/from16 v3, p6

    move-object/from16 v4, p8

    move-object/from16 v5, p8

    move-wide/from16 v6, p9

    move-object/from16 v8, p11

    invoke-virtual/range {v1 .. v9}, Lcom/android/internal/app/procstats/ProcessStats;->collectProcessesLocked([I[I[I[IJLjava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v1

    .line 403
    .local v1, "procs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/app/procstats/ProcessState;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 404
    if-eqz p2, :cond_0

    .line 405
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 407
    :cond_0
    move-object/from16 v10, p1

    move-object v11, v1

    move/from16 v12, p3

    move-object/from16 v13, p4

    move/from16 v14, p5

    move-object/from16 v15, p6

    move/from16 v16, p7

    move-object/from16 v17, p8

    move-wide/from16 v18, p9

    invoke-static/range {v10 .. v19}, Lcom/android/internal/app/procstats/DumpUtils;->dumpProcessListCsv(Ljava/io/PrintWriter;Ljava/util/ArrayList;Z[IZ[IZ[IJ)V

    .line 409
    const/4 v3, 0x1

    return v3

    .line 411
    :cond_1
    const/4 v3, 0x0

    return v3
.end method

.method public getCurrentMemoryState()I
    .locals 2

    .line 560
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 561
    iget v1, p0, Lcom/android/server/am/ProcessStatsService;->mLastMemOnlyState:I

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return v1

    .line 562
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public getCurrentStats(Ljava/util/List;)[B
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/ParcelFileDescriptor;",
            ">;)[B"
        }
    .end annotation

    .line 456
    .local p1, "historic":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelFileDescriptor;>;"
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.PACKAGE_USAGE_STATS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 459
    .local v0, "current":Landroid/os/Parcel;
    iget-object v1, p0, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 460
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 461
    .local v2, "now":J
    iget-object v4, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iput-wide v5, v4, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndRealtime:J

    .line 462
    iget-object v4, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    iput-wide v2, v4, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndUptime:J

    .line 463
    iget-object v4, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v2, v3, v5}, Lcom/android/internal/app/procstats/ProcessStats;->writeToParcel(Landroid/os/Parcel;JI)V

    .line 464
    .end local v2    # "now":J
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 465
    iget-object v1, p0, Lcom/android/server/am/ProcessStatsService;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 467
    if-eqz p1, :cond_0

    .line 468
    const/4 v1, 0x1

    :try_start_1
    invoke-direct {p0, v5, v5, v1}, Lcom/android/server/am/ProcessStatsService;->getCommittedFiles(IZZ)Ljava/util/ArrayList;

    move-result-object v2

    .line 469
    .local v2, "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v2, :cond_0

    .line 470
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sub-int/2addr v3, v1

    .local v3, "i":I
    :goto_0
    move v1, v3

    .end local v3    # "i":I
    .local v1, "i":I
    if-ltz v1, :cond_0

    .line 472
    :try_start_2
    new-instance v3, Ljava/io/File;

    .line 473
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/high16 v4, 0x10000000

    .line 472
    invoke-static {v3, v4}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    .line 474
    .local v3, "pfd":Landroid/os/ParcelFileDescriptor;
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 477
    .end local v3    # "pfd":Landroid/os/ParcelFileDescriptor;
    goto :goto_1

    .line 475
    :catch_0
    move-exception v3

    .line 476
    .local v3, "e":Ljava/io/IOException;
    :try_start_3
    const-string v4, "ProcessStatsService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failure opening procstat file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 470
    .end local v3    # "e":Ljava/io/IOException;
    :goto_1
    add-int/lit8 v3, v1, -0x1

    .end local v1    # "i":I
    .local v3, "i":I
    goto :goto_0

    .line 482
    .end local v2    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "i":I
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/android/server/am/ProcessStatsService;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1

    :cond_0
    iget-object v1, p0, Lcom/android/server/am/ProcessStatsService;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 483
    nop

    .line 484
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object v1

    return-object v1

    .line 464
    :catchall_1
    move-exception v2

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v2
.end method

.method public getMemFactorLocked()I
    .locals 2

    .line 178
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget v0, v0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactor:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget v0, v0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactor:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getProcessStateLocked(Ljava/lang/String;IJLjava/lang/String;)Lcom/android/internal/app/procstats/ProcessState;
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "versionCode"    # J
    .param p5, "processName"    # Ljava/lang/String;

    .line 125
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/app/procstats/ProcessStats;->getProcessStateLocked(Ljava/lang/String;IJLjava/lang/String;)Lcom/android/internal/app/procstats/ProcessState;

    move-result-object v0

    return-object v0
.end method

.method public getServiceStateLocked(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;)Lcom/android/internal/app/procstats/ServiceState;
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "versionCode"    # J
    .param p5, "processName"    # Ljava/lang/String;
    .param p6, "className"    # Ljava/lang/String;

    .line 130
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/app/procstats/ProcessStats;->getServiceStateLocked(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;)Lcom/android/internal/app/procstats/ServiceState;

    move-result-object v0

    return-object v0
.end method

.method public getStatsOverTime(J)Landroid/os/ParcelFileDescriptor;
    .locals 16
    .param p1, "minTime"    # J

    move-object/from16 v1, p0

    .line 488
    iget-object v0, v1, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.PACKAGE_USAGE_STATS"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 492
    .local v2, "current":Landroid/os/Parcel;
    iget-object v4, v1, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 493
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 494
    .local v5, "now":J
    iget-object v0, v1, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    iput-wide v7, v0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndRealtime:J

    .line 495
    iget-object v0, v1, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    iput-wide v5, v0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndUptime:J

    .line 496
    iget-object v0, v1, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    const/4 v7, 0x0

    invoke-virtual {v0, v2, v5, v6, v7}, Lcom/android/internal/app/procstats/ProcessStats;->writeToParcel(Landroid/os/Parcel;JI)V

    .line 497
    iget-object v0, v1, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-wide v8, v0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndRealtime:J

    iget-object v0, v1, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-wide v10, v0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartRealtime:J

    sub-long/2addr v8, v10

    .line 499
    .end local v5    # "now":J
    .local v8, "curTime":J
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 500
    iget-object v0, v1, Lcom/android/server/am/ProcessStatsService;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 502
    cmp-long v0, v8, p1

    if-gez v0, :cond_2

    .line 504
    const/4 v0, 0x1

    :try_start_1
    invoke-direct {v1, v7, v7, v0}, Lcom/android/server/am/ProcessStatsService;->getCommittedFiles(IZZ)Ljava/util/ArrayList;

    move-result-object v4

    .line 505
    .local v4, "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_2

    .line 506
    invoke-virtual {v2, v7}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 507
    sget-object v5, Lcom/android/internal/app/procstats/ProcessStats;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/app/procstats/ProcessStats;

    .line 508
    .local v5, "stats":Lcom/android/internal/app/procstats/ProcessStats;
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 509
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    sub-int/2addr v6, v0

    .local v6, "i":I
    :goto_0
    move v0, v6

    .line 510
    .end local v6    # "i":I
    .local v0, "i":I
    if-ltz v0, :cond_1

    iget-wide v10, v5, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndRealtime:J

    iget-wide v12, v5, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartRealtime:J

    sub-long/2addr v10, v12

    cmp-long v6, v10, p1

    if-gez v6, :cond_1

    .line 512
    new-instance v6, Landroid/util/AtomicFile;

    new-instance v10, Ljava/io/File;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v10}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 513
    .local v6, "file":Landroid/util/AtomicFile;
    add-int/lit8 v0, v0, -0x1

    .line 514
    new-instance v10, Lcom/android/internal/app/procstats/ProcessStats;

    invoke-direct {v10, v7}, Lcom/android/internal/app/procstats/ProcessStats;-><init>(Z)V

    .line 515
    .local v10, "moreStats":Lcom/android/internal/app/procstats/ProcessStats;
    invoke-virtual {v1, v10, v6}, Lcom/android/server/am/ProcessStatsService;->readLocked(Lcom/android/internal/app/procstats/ProcessStats;Landroid/util/AtomicFile;)Z

    .line 516
    iget-object v11, v10, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    if-nez v11, :cond_0

    .line 517
    invoke-virtual {v5, v10}, Lcom/android/internal/app/procstats/ProcessStats;->add(Lcom/android/internal/app/procstats/ProcessStats;)V

    .line 518
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 519
    .local v11, "sb":Ljava/lang/StringBuilder;
    const-string v12, "Added stats: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 520
    iget-object v12, v10, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartClockStr:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 521
    const-string v12, ", over "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 522
    iget-wide v12, v10, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndRealtime:J
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-wide v14, v8

    :try_start_2
    iget-wide v7, v10, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartRealtime:J

    .end local v8    # "curTime":J
    .local v14, "curTime":J
    sub-long/2addr v12, v7

    invoke-static {v12, v13, v11}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 524
    const-string v7, "ProcessStatsService"

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    .end local v11    # "sb":Ljava/lang/StringBuilder;
    nop

    .line 530
    .end local v6    # "file":Landroid/util/AtomicFile;
    .end local v10    # "moreStats":Lcom/android/internal/app/procstats/ProcessStats;
    goto :goto_1

    .line 526
    .end local v14    # "curTime":J
    .restart local v6    # "file":Landroid/util/AtomicFile;
    .restart local v8    # "curTime":J
    .restart local v10    # "moreStats":Lcom/android/internal/app/procstats/ProcessStats;
    :cond_0
    move-wide v14, v8

    .end local v8    # "curTime":J
    .restart local v14    # "curTime":J
    const-string v7, "ProcessStatsService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failure reading "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v9, v0, 0x1

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "; "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v10, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    nop

    .line 509
    .end local v6    # "file":Landroid/util/AtomicFile;
    .end local v10    # "moreStats":Lcom/android/internal/app/procstats/ProcessStats;
    :goto_1
    move v6, v0

    move-wide v8, v14

    const/4 v7, 0x0

    goto/16 :goto_0

    .line 531
    .end local v14    # "curTime":J
    .restart local v8    # "curTime":J
    :cond_1
    move-wide v14, v8

    .end local v8    # "curTime":J
    .restart local v14    # "curTime":J
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v6

    move-object v2, v6

    .line 532
    const/4 v6, 0x0

    invoke-virtual {v5, v2, v6}, Lcom/android/internal/app/procstats/ProcessStats;->writeToParcel(Landroid/os/Parcel;I)V

    .end local v0    # "i":I
    .end local v4    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v5    # "stats":Lcom/android/internal/app/procstats/ProcessStats;
    goto :goto_2

    .line 554
    .end local v14    # "curTime":J
    .restart local v8    # "curTime":J
    :catchall_0
    move-exception v0

    move-wide v14, v8

    .end local v8    # "curTime":J
    .restart local v14    # "curTime":J
    goto :goto_4

    .line 551
    .end local v14    # "curTime":J
    .restart local v8    # "curTime":J
    :catch_0
    move-exception v0

    move-wide v14, v8

    .end local v8    # "curTime":J
    .restart local v14    # "curTime":J
    goto :goto_3

    .line 535
    .end local v14    # "curTime":J
    .restart local v8    # "curTime":J
    :cond_2
    move-wide v14, v8

    .end local v8    # "curTime":J
    .restart local v14    # "curTime":J
    :goto_2
    invoke-virtual {v2}, Landroid/os/Parcel;->marshall()[B

    move-result-object v0

    .line 536
    .local v0, "outData":[B
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 537
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    .line 538
    .local v4, "fds":[Landroid/os/ParcelFileDescriptor;
    new-instance v5, Lcom/android/server/am/ProcessStatsService$3;

    const-string v6, "ProcessStats pipe output"

    invoke-direct {v5, v1, v6, v4, v0}, Lcom/android/server/am/ProcessStatsService$3;-><init>(Lcom/android/server/am/ProcessStatsService;Ljava/lang/String;[Landroid/os/ParcelFileDescriptor;[B)V

    .line 549
    .local v5, "thr":Ljava/lang/Thread;
    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    .line 550
    const/4 v6, 0x0

    aget-object v6, v4, v6
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 554
    iget-object v3, v1, Lcom/android/server/am/ProcessStatsService;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 550
    return-object v6

    .line 554
    .end local v0    # "outData":[B
    .end local v4    # "fds":[Landroid/os/ParcelFileDescriptor;
    .end local v5    # "thr":Ljava/lang/Thread;
    :catchall_1
    move-exception v0

    goto :goto_4

    .line 551
    :catch_1
    move-exception v0

    .line 552
    .local v0, "e":Ljava/io/IOException;
    :goto_3
    :try_start_3
    const-string v4, "ProcessStatsService"

    const-string v5, "Failed building output pipe"

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 554
    .end local v0    # "e":Ljava/io/IOException;
    iget-object v0, v1, Lcom/android/server/am/ProcessStatsService;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 555
    nop

    .line 556
    return-object v3

    .line 554
    :goto_4
    iget-object v3, v1, Lcom/android/server/am/ProcessStatsService;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    .line 499
    .end local v14    # "curTime":J
    :catchall_2
    move-exception v0

    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public isMemFactorLowered()Z
    .locals 1

    .line 135
    iget-boolean v0, p0, Lcom/android/server/am/ProcessStatsService;->mMemFactorLowered:Z

    return v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 114
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/internal/app/procstats/IProcessStats$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 115
    :catch_0
    move-exception v0

    .line 116
    .local v0, "e":Ljava/lang/RuntimeException;
    instance-of v1, v0, Ljava/lang/SecurityException;

    if-nez v1, :cond_0

    .line 117
    const-string v1, "ProcessStatsService"

    const-string v2, "Process Stats Crash"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 119
    :cond_0
    throw v0
.end method

.method performWriteState(J)V
    .locals 8
    .param p1, "initialTime"    # J

    .line 269
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWriteLock:Ljava/lang/Object;

    monitor-enter v0

    .line 270
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWrite:Landroid/os/Parcel;

    .line 271
    .local v1, "data":Landroid/os/Parcel;
    iget-object v2, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWriteFile:Landroid/util/AtomicFile;

    .line 272
    .local v2, "file":Landroid/util/AtomicFile;
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWriteCommitted:Z

    .line 273
    if-nez v1, :cond_0

    .line 274
    monitor-exit v0

    return-void

    .line 276
    :cond_0
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWrite:Landroid/os/Parcel;

    .line 277
    iput-object v3, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWriteFile:Landroid/util/AtomicFile;

    .line 278
    iget-object v4, p0, Lcom/android/server/am/ProcessStatsService;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 279
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 281
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 282
    .local v4, "startTime":J
    move-object v0, v3

    .line 284
    .local v0, "stream":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {v2}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v3

    move-object v0, v3

    .line 285
    invoke-virtual {v1}, Landroid/os/Parcel;->marshall()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 286
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    .line 287
    invoke-virtual {v2, v0}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    .line 288
    const-string/jumbo v3, "procstats"

    .line 289
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v4

    add-long/2addr v6, p1

    .line 288
    invoke-static {v3, v6, v7}, Lcom/android/internal/logging/EventLogTags;->writeCommitSysConfigFile(Ljava/lang/String;J)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 295
    :catchall_0
    move-exception v3

    goto :goto_1

    .line 291
    :catch_0
    move-exception v3

    .line 292
    .local v3, "e":Ljava/io/IOException;
    :try_start_2
    const-string v6, "ProcessStatsService"

    const-string v7, "Error writing process statistics"

    invoke-static {v6, v7, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 293
    invoke-virtual {v2, v0}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 295
    .end local v3    # "e":Ljava/io/IOException;
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 296
    invoke-virtual {p0}, Lcom/android/server/am/ProcessStatsService;->trimHistoricStatesWriteLocked()V

    .line 297
    iget-object v3, p0, Lcom/android/server/am/ProcessStatsService;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 298
    nop

    .line 299
    return-void

    .line 295
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 296
    invoke-virtual {p0}, Lcom/android/server/am/ProcessStatsService;->trimHistoricStatesWriteLocked()V

    .line 297
    iget-object v6, p0, Lcom/android/server/am/ProcessStatsService;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v3

    .line 279
    .end local v0    # "stream":Ljava/io/FileOutputStream;
    .end local v1    # "data":Landroid/os/Parcel;
    .end local v2    # "file":Landroid/util/AtomicFile;
    .end local v4    # "startTime":J
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method readLocked(Lcom/android/internal/app/procstats/ProcessStats;Landroid/util/AtomicFile;)Z
    .locals 5
    .param p1, "stats"    # Lcom/android/internal/app/procstats/ProcessStats;
    .param p2, "file"    # Landroid/util/AtomicFile;

    .line 303
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p2}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v1

    .line 304
    .local v1, "stream":Ljava/io/FileInputStream;
    invoke-virtual {p1, v1}, Lcom/android/internal/app/procstats/ProcessStats;->read(Ljava/io/InputStream;)V

    .line 305
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 306
    iget-object v2, p1, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 307
    const-string v2, "ProcessStatsService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ignoring existing stats; "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 349
    return v0

    .line 355
    .end local v1    # "stream":Ljava/io/FileInputStream;
    :cond_0
    nop

    .line 356
    const/4 v0, 0x1

    return v0

    .line 351
    :catch_0
    move-exception v1

    .line 352
    .local v1, "e":Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "caught exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    .line 353
    const-string v2, "ProcessStatsService"

    const-string v3, "Error reading process statistics"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 354
    return v0
.end method

.method public setMemFactorLocked(IZJ)Z
    .locals 11
    .param p1, "memFactor"    # I
    .param p2, "screenOn"    # Z
    .param p3, "now"    # J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mAm"
    .end annotation

    .line 140
    iget v0, p0, Lcom/android/server/am/ProcessStatsService;->mLastMemOnlyState:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge p1, v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/server/am/ProcessStatsService;->mMemFactorLowered:Z

    .line 141
    iput p1, p0, Lcom/android/server/am/ProcessStatsService;->mLastMemOnlyState:I

    .line 142
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mInjectedScreenState:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    .line 143
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mInjectedScreenState:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 145
    :cond_1
    if-eqz p2, :cond_2

    .line 146
    add-int/lit8 p1, p1, 0x4

    .line 148
    :cond_2
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget v0, v0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactor:I

    if-eq p1, v0, :cond_8

    .line 149
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget v0, v0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactor:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    .line 150
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-object v0, v0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactorDurations:[J

    iget-object v1, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget v1, v1, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactor:I

    aget-wide v3, v0, v1

    iget-object v5, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-wide v5, v5, Lcom/android/internal/app/procstats/ProcessStats;->mStartTime:J

    sub-long v5, p3, v5

    add-long/2addr v3, v5

    aput-wide v3, v0, v1

    .line 153
    :cond_3
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    iput p1, v0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactor:I

    .line 154
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    iput-wide p3, v0, Lcom/android/internal/app/procstats/ProcessStats;->mStartTime:J

    .line 155
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-object v0, v0, Lcom/android/internal/app/procstats/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    .line 156
    invoke-virtual {v0}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v0

    .line 157
    .local v0, "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;>;"
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v1

    sub-int/2addr v1, v2

    .local v1, "ipkg":I
    :goto_1
    if-ltz v1, :cond_7

    .line 158
    nop

    .line 159
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseArray;

    .line 160
    .local v3, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;"
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v4

    sub-int/2addr v4, v2

    .local v4, "iuid":I
    :goto_2
    if-ltz v4, :cond_6

    .line 161
    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/LongSparseArray;

    .line 162
    .local v5, "vers":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;"
    invoke-virtual {v5}, Landroid/util/LongSparseArray;->size()I

    move-result v6

    sub-int/2addr v6, v2

    .local v6, "iver":I
    :goto_3
    if-ltz v6, :cond_5

    .line 163
    invoke-virtual {v5, v6}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    .line 164
    .local v7, "pkg":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    iget-object v8, v7, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    .line 165
    .local v8, "services":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/app/procstats/ServiceState;>;"
    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    move-result v9

    sub-int/2addr v9, v2

    .local v9, "isvc":I
    :goto_4
    if-ltz v9, :cond_4

    .line 166
    invoke-virtual {v8, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/internal/app/procstats/ServiceState;

    .line 167
    .local v10, "service":Lcom/android/internal/app/procstats/ServiceState;
    invoke-virtual {v10, p1, p3, p4}, Lcom/android/internal/app/procstats/ServiceState;->setMemFactor(IJ)V

    .line 165
    .end local v10    # "service":Lcom/android/internal/app/procstats/ServiceState;
    add-int/lit8 v9, v9, -0x1

    goto :goto_4

    .line 162
    .end local v7    # "pkg":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    .end local v8    # "services":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/app/procstats/ServiceState;>;"
    .end local v9    # "isvc":I
    :cond_4
    add-int/lit8 v6, v6, -0x1

    goto :goto_3

    .line 160
    .end local v5    # "vers":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;"
    .end local v6    # "iver":I
    :cond_5
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    .line 157
    .end local v3    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;"
    .end local v4    # "iuid":I
    :cond_6
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 172
    .end local v1    # "ipkg":I
    :cond_7
    return v2

    .line 174
    .end local v0    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;>;"
    :cond_8
    return v1
.end method

.method public shouldWriteNowLocked(J)Z
    .locals 8
    .param p1, "now"    # J

    .line 187
    iget-wide v0, p0, Lcom/android/server/am/ProcessStatsService;->mLastWriteTime:J

    sget-wide v2, Lcom/android/server/am/ProcessStatsService;->WRITE_PERIOD:J

    add-long/2addr v0, v2

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    .line 188
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-wide v2, v2, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartRealtime:J

    sget-wide v4, Lcom/android/internal/app/procstats/ProcessStats;->COMMIT_PERIOD:J

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    if-lez v0, :cond_0

    .line 190
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-wide v4, v0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartUptime:J

    sget-wide v6, Lcom/android/internal/app/procstats/ProcessStats;->COMMIT_UPTIME_PERIOD:J

    add-long/2addr v4, v6

    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    .line 192
    iput-boolean v1, p0, Lcom/android/server/am/ProcessStatsService;->mCommitPending:Z

    .line 194
    :cond_0
    return v1

    .line 196
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public shutdownLocked()V
    .locals 2

    .line 200
    const-string v0, "ProcessStatsService"

    const-string v1, "Writing process stats before shutdown..."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget v1, v0, Lcom/android/internal/app/procstats/ProcessStats;->mFlags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Lcom/android/internal/app/procstats/ProcessStats;->mFlags:I

    .line 202
    invoke-virtual {p0}, Lcom/android/server/am/ProcessStatsService;->writeStateSyncLocked()V

    .line 203
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/ProcessStatsService;->mShuttingDown:Z

    .line 204
    return-void
.end method

.method public trimHistoricStatesWriteLocked()V
    .locals 7

    .line 387
    const/4 v0, 0x0

    const/16 v1, 0x8

    const/4 v2, 0x1

    invoke-direct {p0, v1, v0, v2}, Lcom/android/server/am/ProcessStatsService;->getCommittedFiles(IZZ)Ljava/util/ArrayList;

    move-result-object v2

    .line 388
    .local v2, "filesArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v2, :cond_0

    .line 389
    return-void

    .line 391
    :cond_0
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, v1, :cond_1

    .line 392
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 393
    .local v3, "file":Ljava/lang/String;
    const-string v4, "ProcessStatsService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Pruning old procstats: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 395
    .end local v3    # "file":Ljava/lang/String;
    goto :goto_0

    .line 396
    :cond_1
    return-void
.end method

.method public writeStateAsyncLocked()V
    .locals 1

    .line 207
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/am/ProcessStatsService;->writeStateLocked(Z)V

    .line 208
    return-void
.end method

.method public writeStateLocked(ZZ)V
    .locals 8
    .param p1, "sync"    # Z
    .param p2, "commit"    # Z

    .line 225
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWriteLock:Ljava/lang/Object;

    monitor-enter v0

    .line 226
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 227
    .local v1, "now":J
    iget-object v3, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWrite:Landroid/os/Parcel;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWriteCommitted:Z

    if-nez v3, :cond_2

    .line 228
    :cond_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWrite:Landroid/os/Parcel;

    .line 229
    iget-object v3, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iput-wide v6, v3, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndRealtime:J

    .line 230
    iget-object v3, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    iput-wide v1, v3, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndUptime:J

    .line 231
    if-eqz p2, :cond_1

    .line 232
    iget-object v3, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget v6, v3, Lcom/android/internal/app/procstats/ProcessStats;->mFlags:I

    or-int/2addr v6, v5

    iput v6, v3, Lcom/android/internal/app/procstats/ProcessStats;->mFlags:I

    .line 234
    :cond_1
    iget-object v3, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-object v6, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWrite:Landroid/os/Parcel;

    invoke-virtual {v3, v6, v4}, Lcom/android/internal/app/procstats/ProcessStats;->writeToParcel(Landroid/os/Parcel;I)V

    .line 235
    new-instance v3, Landroid/util/AtomicFile;

    iget-object v6, p0, Lcom/android/server/am/ProcessStatsService;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v6}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v6

    invoke-direct {v3, v6}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v3, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWriteFile:Landroid/util/AtomicFile;

    .line 236
    iput-boolean p2, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWriteCommitted:Z

    .line 238
    :cond_2
    if-eqz p2, :cond_3

    .line 239
    iget-object v3, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    invoke-virtual {v3}, Lcom/android/internal/app/procstats/ProcessStats;->resetSafely()V

    .line 240
    invoke-direct {p0}, Lcom/android/server/am/ProcessStatsService;->updateFile()V

    .line 241
    iget-object v3, p0, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7, v5, v4}, Lcom/android/server/am/ActivityManagerService;->requestPssAllProcsLocked(JZZ)V

    .line 243
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/server/am/ProcessStatsService;->mLastWriteTime:J

    .line 244
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    .line 246
    .local v3, "totalTime":J
    if-nez p1, :cond_4

    .line 247
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v5

    new-instance v6, Lcom/android/server/am/ProcessStatsService$2;

    invoke-direct {v6, p0, v3, v4}, Lcom/android/server/am/ProcessStatsService$2;-><init>(Lcom/android/server/am/ProcessStatsService;J)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 252
    monitor-exit v0

    return-void

    .line 254
    .end local v1    # "now":J
    :cond_4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 256
    invoke-virtual {p0, v3, v4}, Lcom/android/server/am/ProcessStatsService;->performWriteState(J)V

    .line 257
    return-void

    .line 254
    .end local v3    # "totalTime":J
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public writeStateSyncLocked()V
    .locals 1

    .line 211
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/am/ProcessStatsService;->writeStateLocked(Z)V

    .line 212
    return-void
.end method
