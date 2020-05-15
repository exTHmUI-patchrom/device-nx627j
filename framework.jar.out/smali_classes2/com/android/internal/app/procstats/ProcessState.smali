.class public final Lcom/android/internal/app/procstats/ProcessState;
.super Ljava/lang/Object;
.source "ProcessState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/procstats/ProcessState$PssAggr;
    }
.end annotation


# static fields
.field public static final COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/internal/app/procstats/ProcessState;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEBUG:Z = false

.field private static final DEBUG_PARCEL:Z = false

.field private static final PROCESS_STATE_TO_STATE:[I

.field private static final TAG:Ljava/lang/String; = "ProcessStats"


# instance fields
.field private mActive:Z

.field private mAvgCachedKillPss:J

.field private mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

.field private mCurState:I

.field private mDead:Z

.field private final mDurations:Lcom/android/internal/app/procstats/DurationsTable;

.field private mLastPssState:I

.field private mLastPssTime:J

.field private mMaxCachedKillPss:J

.field private mMinCachedKillPss:J

.field private mMultiPackage:Z

.field private final mName:Ljava/lang/String;

.field private mNumActiveServices:I

.field private mNumCachedKill:I

.field private mNumExcessiveCpu:I

.field private mNumStartedServices:I

.field private final mPackage:Ljava/lang/String;

.field private final mPssTable:Lcom/android/internal/app/procstats/PssTable;

.field private mStartTime:J

.field private final mStats:Lcom/android/internal/app/procstats/ProcessStats;

.field private mTmpTotalTime:J

.field private final mUid:I

.field private final mVersion:J

.field public tmpFoundSubProc:Lcom/android/internal/app/procstats/ProcessState;

.field public tmpNumInUse:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 74
    const/16 v0, 0x13

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/internal/app/procstats/ProcessState;->PROCESS_STATE_TO_STATE:[I

    .line 96
    new-instance v0, Lcom/android/internal/app/procstats/ProcessState$1;

    invoke-direct {v0}, Lcom/android/internal/app/procstats/ProcessState$1;-><init>()V

    sput-object v0, Lcom/android/internal/app/procstats/ProcessState;->COMPARATOR:Ljava/util/Comparator;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x1
        0x2
        0x2
        0x2
        0x3
        0x3
        0x4
        0x5
        0x7
        0x1
        0x8
        0x9
        0xa
        0xb
        0xc
        0xb
        0xd
    .end array-data
.end method

.method public constructor <init>(Lcom/android/internal/app/procstats/ProcessState;Ljava/lang/String;IJLjava/lang/String;J)V
    .locals 2
    .param p1, "commonProcess"    # Lcom/android/internal/app/procstats/ProcessState;
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "vers"    # J
    .param p6, "name"    # Ljava/lang/String;
    .param p7, "now"    # J

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCurState:I

    .line 135
    iput v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mLastPssState:I

    .line 177
    iget-object v0, p1, Lcom/android/internal/app/procstats/ProcessState;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    .line 178
    iput-object p6, p0, Lcom/android/internal/app/procstats/ProcessState;->mName:Ljava/lang/String;

    .line 179
    iput-object p1, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    .line 180
    iput-object p2, p0, Lcom/android/internal/app/procstats/ProcessState;->mPackage:Ljava/lang/String;

    .line 181
    iput p3, p0, Lcom/android/internal/app/procstats/ProcessState;->mUid:I

    .line 182
    iput-wide p4, p0, Lcom/android/internal/app/procstats/ProcessState;->mVersion:J

    .line 183
    iget v0, p1, Lcom/android/internal/app/procstats/ProcessState;->mCurState:I

    iput v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCurState:I

    .line 184
    iput-wide p7, p0, Lcom/android/internal/app/procstats/ProcessState;->mStartTime:J

    .line 185
    new-instance v0, Lcom/android/internal/app/procstats/DurationsTable;

    iget-object v1, p1, Lcom/android/internal/app/procstats/ProcessState;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-object v1, v1, Lcom/android/internal/app/procstats/ProcessStats;->mTableData:Lcom/android/internal/app/procstats/SparseMappingTable;

    invoke-direct {v0, v1}, Lcom/android/internal/app/procstats/DurationsTable;-><init>(Lcom/android/internal/app/procstats/SparseMappingTable;)V

    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    .line 186
    new-instance v0, Lcom/android/internal/app/procstats/PssTable;

    iget-object v1, p1, Lcom/android/internal/app/procstats/ProcessState;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-object v1, v1, Lcom/android/internal/app/procstats/ProcessStats;->mTableData:Lcom/android/internal/app/procstats/SparseMappingTable;

    invoke-direct {v0, v1}, Lcom/android/internal/app/procstats/PssTable;-><init>(Lcom/android/internal/app/procstats/SparseMappingTable;)V

    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    .line 187
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/app/procstats/ProcessStats;Ljava/lang/String;IJLjava/lang/String;)V
    .locals 2
    .param p1, "processStats"    # Lcom/android/internal/app/procstats/ProcessStats;
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "vers"    # J
    .param p6, "name"    # Ljava/lang/String;

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCurState:I

    .line 135
    iput v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mLastPssState:I

    .line 160
    iput-object p1, p0, Lcom/android/internal/app/procstats/ProcessState;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    .line 161
    iput-object p6, p0, Lcom/android/internal/app/procstats/ProcessState;->mName:Ljava/lang/String;

    .line 162
    iput-object p0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    .line 163
    iput-object p2, p0, Lcom/android/internal/app/procstats/ProcessState;->mPackage:Ljava/lang/String;

    .line 164
    iput p3, p0, Lcom/android/internal/app/procstats/ProcessState;->mUid:I

    .line 165
    iput-wide p4, p0, Lcom/android/internal/app/procstats/ProcessState;->mVersion:J

    .line 166
    new-instance v0, Lcom/android/internal/app/procstats/DurationsTable;

    iget-object v1, p1, Lcom/android/internal/app/procstats/ProcessStats;->mTableData:Lcom/android/internal/app/procstats/SparseMappingTable;

    invoke-direct {v0, v1}, Lcom/android/internal/app/procstats/DurationsTable;-><init>(Lcom/android/internal/app/procstats/SparseMappingTable;)V

    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    .line 167
    new-instance v0, Lcom/android/internal/app/procstats/PssTable;

    iget-object v1, p1, Lcom/android/internal/app/procstats/ProcessStats;->mTableData:Lcom/android/internal/app/procstats/SparseMappingTable;

    invoke-direct {v0, v1}, Lcom/android/internal/app/procstats/PssTable;-><init>(Lcom/android/internal/app/procstats/SparseMappingTable;)V

    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    .line 168
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/app/procstats/ProcessState;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/internal/app/procstats/ProcessState;

    .line 68
    iget-wide v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mTmpTotalTime:J

    return-wide v0
.end method

.method private addCachedKill(IJJJ)V
    .locals 4
    .param p1, "num"    # I
    .param p2, "minPss"    # J
    .param p4, "avgPss"    # J
    .param p6, "maxPss"    # J

    .line 523
    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    if-gtz v0, :cond_0

    .line 524
    iput p1, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    .line 525
    iput-wide p2, p0, Lcom/android/internal/app/procstats/ProcessState;->mMinCachedKillPss:J

    .line 526
    iput-wide p4, p0, Lcom/android/internal/app/procstats/ProcessState;->mAvgCachedKillPss:J

    .line 527
    iput-wide p6, p0, Lcom/android/internal/app/procstats/ProcessState;->mMaxCachedKillPss:J

    goto :goto_0

    .line 529
    :cond_0
    iget-wide v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mMinCachedKillPss:J

    cmp-long v0, p2, v0

    if-gez v0, :cond_1

    .line 530
    iput-wide p2, p0, Lcom/android/internal/app/procstats/ProcessState;->mMinCachedKillPss:J

    .line 532
    :cond_1
    iget-wide v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mMaxCachedKillPss:J

    cmp-long v0, p6, v0

    if-lez v0, :cond_2

    .line 533
    iput-wide p6, p0, Lcom/android/internal/app/procstats/ProcessState;->mMaxCachedKillPss:J

    .line 535
    :cond_2
    iget-wide v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mAvgCachedKillPss:J

    long-to-double v0, v0

    iget v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    int-to-double v2, v2

    mul-double/2addr v0, v2

    long-to-double v2, p4

    add-double/2addr v0, v2

    iget v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    add-int/2addr v2, p1

    int-to-double v2, v2

    div-double/2addr v0, v2

    double-to-long v0, v0

    iput-wide v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mAvgCachedKillPss:J

    .line 537
    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    .line 539
    :goto_0
    return-void
.end method

.method private dumpProcessSummaryDetails(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V
    .locals 17
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "label"    # Ljava/lang/String;
    .param p4, "screenStates"    # [I
    .param p5, "memStates"    # [I
    .param p6, "procStates"    # [I
    .param p7, "now"    # J
    .param p9, "totalTime"    # J
    .param p11, "full"    # Z

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move-wide/from16 v2, p9

    .line 936
    new-instance v4, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    invoke-direct {v4, v5, v6, v7}, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;-><init>([I[I[I)V

    .line 938
    .local v4, "totals":Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;
    move-object/from16 v8, p0

    move-wide/from16 v9, p7

    invoke-virtual {v8, v4, v9, v10}, Lcom/android/internal/app/procstats/ProcessState;->computeProcessData(Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;J)V

    .line 939
    iget-wide v11, v4, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->totalTime:J

    long-to-double v11, v11

    long-to-double v13, v2

    div-double/2addr v11, v13

    const-wide/high16 v13, 0x4059000000000000L    # 100.0

    mul-double/2addr v11, v13

    .line 941
    .local v11, "percentage":D
    const-wide v13, 0x3f747ae147ae147bL    # 0.005

    cmpl-double v13, v11, v13

    if-gez v13, :cond_1

    iget-wide v13, v4, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->numPss:J

    const-wide/16 v15, 0x0

    cmp-long v13, v13, v15

    if-eqz v13, :cond_0

    goto :goto_0

    .line 953
    :cond_0
    move/from16 v13, p11

    goto :goto_1

    .line 942
    :cond_1
    :goto_0
    if-eqz p2, :cond_2

    .line 943
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 945
    :cond_2
    if-eqz v1, :cond_3

    .line 946
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 948
    :cond_3
    move/from16 v13, p11

    invoke-virtual {v4, v0, v2, v3, v13}, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->print(Ljava/io/PrintWriter;JZ)V

    .line 949
    if-eqz p2, :cond_4

    .line 950
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 953
    :cond_4
    :goto_1
    return-void
.end method

.method private ensureNotDead()V
    .locals 3

    .line 269
    iget-boolean v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mDead:Z

    if-nez v0, :cond_0

    .line 270
    return-void

    .line 272
    :cond_0
    const-string v0, "ProcessStats"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ProcessState dead: name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " pkg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mPackage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " common.name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    iget-object v2, v2, Lcom/android/internal/app/procstats/ProcessState;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    return-void
.end method

.method private pullFixedProc(Landroid/util/ArrayMap;I)Lcom/android/internal/app/procstats/ProcessState;
    .locals 10
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;",
            ">;I)",
            "Lcom/android/internal/app/procstats/ProcessState;"
        }
    .end annotation

    .line 580
    .local p1, "pkgList":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;>;"
    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;

    .line 581
    .local v0, "holder":Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;
    iget-object v1, v0, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/procstats/ProcessState;

    .line 582
    .local v1, "proc":Lcom/android/internal/app/procstats/ProcessState;
    iget-boolean v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mDead:Z

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    if-eq v2, v1, :cond_0

    .line 587
    const-string v2, "ProcessStats"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Pulling dead proc: name="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/internal/app/procstats/ProcessState;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " pkg="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/internal/app/procstats/ProcessState;->mPackage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/internal/app/procstats/ProcessState;->mUid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " common.name="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    iget-object v4, v4, Lcom/android/internal/app/procstats/ProcessState;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    iget-object v4, p0, Lcom/android/internal/app/procstats/ProcessState;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-object v5, v1, Lcom/android/internal/app/procstats/ProcessState;->mPackage:Ljava/lang/String;

    iget v6, v1, Lcom/android/internal/app/procstats/ProcessState;->mUid:I

    iget-wide v7, v1, Lcom/android/internal/app/procstats/ProcessState;->mVersion:J

    iget-object v9, v1, Lcom/android/internal/app/procstats/ProcessState;->mName:Ljava/lang/String;

    invoke-virtual/range {v4 .. v9}, Lcom/android/internal/app/procstats/ProcessStats;->getProcessStateLocked(Ljava/lang/String;IJLjava/lang/String;)Lcom/android/internal/app/procstats/ProcessState;

    move-result-object v1

    .line 592
    :cond_0
    iget-boolean v2, v1, Lcom/android/internal/app/procstats/ProcessState;->mMultiPackage:Z

    if-eqz v2, :cond_4

    .line 596
    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-object v2, v2, Lcom/android/internal/app/procstats/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget v4, v1, Lcom/android/internal/app/procstats/ProcessState;->mUid:I

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/LongSparseArray;

    .line 598
    .local v2, "vpkg":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;"
    if-eqz v2, :cond_3

    .line 603
    iget-wide v3, v1, Lcom/android/internal/app/procstats/ProcessState;->mVersion:J

    invoke-virtual {v2, v3, v4}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    .line 604
    .local v3, "pkg":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    if-eqz v3, :cond_2

    .line 609
    iget-object v4, v1, Lcom/android/internal/app/procstats/ProcessState;->mName:Ljava/lang/String;

    .line 610
    .local v4, "savedName":Ljava/lang/String;
    iget-object v5, v3, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    iget-object v6, v1, Lcom/android/internal/app/procstats/ProcessState;->mName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v1, v5

    check-cast v1, Lcom/android/internal/app/procstats/ProcessState;

    .line 611
    if-eqz v1, :cond_1

    .line 615
    iput-object v1, v0, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/procstats/ProcessState;

    .end local v2    # "vpkg":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;"
    .end local v3    # "pkg":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    .end local v4    # "savedName":Ljava/lang/String;
    goto/16 :goto_0

    .line 612
    .restart local v2    # "vpkg":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;"
    .restart local v3    # "pkg":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    .restart local v4    # "savedName":Ljava/lang/String;
    :cond_1
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Didn\'t create per-package process "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " in pkg "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v3, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mPackageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v3, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mUid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 605
    .end local v4    # "savedName":Ljava/lang/String;
    :cond_2
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No existing package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 606
    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Lcom/android/internal/app/procstats/ProcessState;->mUid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " for multi-proc "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/android/internal/app/procstats/ProcessState;->mName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " version "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, v1, Lcom/android/internal/app/procstats/ProcessState;->mVersion:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 599
    .end local v3    # "pkg":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    :cond_3
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No existing package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 600
    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Lcom/android/internal/app/procstats/ProcessState;->mUid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " for multi-proc "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/android/internal/app/procstats/ProcessState;->mName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 617
    .end local v2    # "vpkg":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;"
    :cond_4
    :goto_0
    return-object v1
.end method


# virtual methods
.method public add(Lcom/android/internal/app/procstats/ProcessState;)V
    .locals 9
    .param p1, "other"    # Lcom/android/internal/app/procstats/ProcessState;

    .line 244
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    iget-object v1, p1, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v0, v1}, Lcom/android/internal/app/procstats/DurationsTable;->addDurations(Lcom/android/internal/app/procstats/DurationsTable;)V

    .line 245
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    iget-object v1, p1, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    invoke-virtual {v0, v1}, Lcom/android/internal/app/procstats/PssTable;->mergeStats(Lcom/android/internal/app/procstats/PssTable;)V

    .line 246
    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveCpu:I

    iget v1, p1, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveCpu:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveCpu:I

    .line 247
    iget v0, p1, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    if-lez v0, :cond_0

    .line 248
    iget v2, p1, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    iget-wide v3, p1, Lcom/android/internal/app/procstats/ProcessState;->mMinCachedKillPss:J

    iget-wide v5, p1, Lcom/android/internal/app/procstats/ProcessState;->mAvgCachedKillPss:J

    iget-wide v7, p1, Lcom/android/internal/app/procstats/ProcessState;->mMaxCachedKillPss:J

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, Lcom/android/internal/app/procstats/ProcessState;->addCachedKill(IJJJ)V

    .line 251
    :cond_0
    return-void
.end method

.method public addPss(JJJZIJLandroid/util/ArrayMap;)V
    .locals 26
    .param p1, "pss"    # J
    .param p3, "uss"    # J
    .param p5, "rss"    # J
    .param p7, "always"    # Z
    .param p8, "type"    # I
    .param p9, "duration"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJJZIJ",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;",
            ">;)V"
        }
    .end annotation

    .local p11, "pkgList":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;>;"
    move-object/from16 v0, p0

    .line 460
    move-object/from16 v1, p11

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/app/procstats/ProcessState;->ensureNotDead()V

    .line 461
    const-wide/16 v2, 0x1

    packed-switch p8, :pswitch_data_0

    goto :goto_0

    .line 479
    :pswitch_0
    iget-object v4, v0, Lcom/android/internal/app/procstats/ProcessState;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-wide v5, v4, Lcom/android/internal/app/procstats/ProcessStats;->mExternalSlowPssCount:J

    add-long/2addr v5, v2

    iput-wide v5, v4, Lcom/android/internal/app/procstats/ProcessStats;->mExternalSlowPssCount:J

    .line 480
    iget-object v2, v0, Lcom/android/internal/app/procstats/ProcessState;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-wide v4, v2, Lcom/android/internal/app/procstats/ProcessStats;->mExternalSlowPssTime:J

    add-long v4, v4, p9

    iput-wide v4, v2, Lcom/android/internal/app/procstats/ProcessStats;->mExternalSlowPssTime:J

    goto :goto_0

    .line 475
    :pswitch_1
    iget-object v4, v0, Lcom/android/internal/app/procstats/ProcessState;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-wide v5, v4, Lcom/android/internal/app/procstats/ProcessStats;->mExternalPssCount:J

    add-long/2addr v5, v2

    iput-wide v5, v4, Lcom/android/internal/app/procstats/ProcessStats;->mExternalPssCount:J

    .line 476
    iget-object v2, v0, Lcom/android/internal/app/procstats/ProcessState;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-wide v4, v2, Lcom/android/internal/app/procstats/ProcessStats;->mExternalPssTime:J

    add-long v4, v4, p9

    iput-wide v4, v2, Lcom/android/internal/app/procstats/ProcessStats;->mExternalPssTime:J

    .line 477
    goto :goto_0

    .line 471
    :pswitch_2
    iget-object v4, v0, Lcom/android/internal/app/procstats/ProcessState;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-wide v5, v4, Lcom/android/internal/app/procstats/ProcessStats;->mInternalAllPollPssCount:J

    add-long/2addr v5, v2

    iput-wide v5, v4, Lcom/android/internal/app/procstats/ProcessStats;->mInternalAllPollPssCount:J

    .line 472
    iget-object v2, v0, Lcom/android/internal/app/procstats/ProcessState;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-wide v4, v2, Lcom/android/internal/app/procstats/ProcessStats;->mInternalAllPollPssTime:J

    add-long v4, v4, p9

    iput-wide v4, v2, Lcom/android/internal/app/procstats/ProcessStats;->mInternalAllPollPssTime:J

    .line 473
    goto :goto_0

    .line 467
    :pswitch_3
    iget-object v4, v0, Lcom/android/internal/app/procstats/ProcessState;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-wide v5, v4, Lcom/android/internal/app/procstats/ProcessStats;->mInternalAllMemPssCount:J

    add-long/2addr v5, v2

    iput-wide v5, v4, Lcom/android/internal/app/procstats/ProcessStats;->mInternalAllMemPssCount:J

    .line 468
    iget-object v2, v0, Lcom/android/internal/app/procstats/ProcessState;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-wide v4, v2, Lcom/android/internal/app/procstats/ProcessStats;->mInternalAllMemPssTime:J

    add-long v4, v4, p9

    iput-wide v4, v2, Lcom/android/internal/app/procstats/ProcessStats;->mInternalAllMemPssTime:J

    .line 469
    goto :goto_0

    .line 463
    :pswitch_4
    iget-object v4, v0, Lcom/android/internal/app/procstats/ProcessState;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-wide v5, v4, Lcom/android/internal/app/procstats/ProcessStats;->mInternalSinglePssCount:J

    add-long/2addr v5, v2

    iput-wide v5, v4, Lcom/android/internal/app/procstats/ProcessStats;->mInternalSinglePssCount:J

    .line 464
    iget-object v2, v0, Lcom/android/internal/app/procstats/ProcessState;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-wide v4, v2, Lcom/android/internal/app/procstats/ProcessStats;->mInternalSinglePssTime:J

    add-long v4, v4, p9

    iput-wide v4, v2, Lcom/android/internal/app/procstats/ProcessStats;->mInternalSinglePssTime:J

    .line 465
    nop

    .line 483
    :goto_0
    if-nez p7, :cond_0

    .line 484
    iget v3, v0, Lcom/android/internal/app/procstats/ProcessState;->mLastPssState:I

    iget v4, v0, Lcom/android/internal/app/procstats/ProcessState;->mCurState:I

    if-ne v3, v4, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-wide v6, v0, Lcom/android/internal/app/procstats/ProcessState;->mLastPssTime:J

    const-wide/16 v8, 0x7530

    add-long/2addr v6, v8

    cmp-long v3, v4, v6

    if-gez v3, :cond_0

    .line 486
    return-void

    .line 489
    :cond_0
    iget v3, v0, Lcom/android/internal/app/procstats/ProcessState;->mCurState:I

    iput v3, v0, Lcom/android/internal/app/procstats/ProcessState;->mLastPssState:I

    .line 490
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/android/internal/app/procstats/ProcessState;->mLastPssTime:J

    .line 491
    iget v3, v0, Lcom/android/internal/app/procstats/ProcessState;->mCurState:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    .line 493
    iget-object v3, v0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    iget-object v4, v3, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    iget v5, v0, Lcom/android/internal/app/procstats/ProcessState;->mCurState:I

    const/4 v6, 0x1

    move-wide/from16 v7, p1

    move-wide/from16 v9, p1

    move-wide/from16 v11, p1

    move-wide/from16 v13, p3

    move-wide/from16 v15, p3

    move-wide/from16 v17, p3

    move-wide/from16 v19, p5

    move-wide/from16 v21, p5

    move-wide/from16 v23, p5

    invoke-virtual/range {v4 .. v24}, Lcom/android/internal/app/procstats/PssTable;->mergeStats(IIJJJJJJJJJ)V

    .line 497
    iget-object v3, v0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    iget-boolean v3, v3, Lcom/android/internal/app/procstats/ProcessState;->mMultiPackage:Z

    if-nez v3, :cond_1

    .line 498
    return-void

    .line 501
    :cond_1
    if-eqz v1, :cond_2

    .line 502
    invoke-virtual/range {p11 .. p11}, Landroid/util/ArrayMap;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "ip":I
    :goto_1
    if-ltz v3, :cond_2

    .line 503
    invoke-direct {v0, v1, v3}, Lcom/android/internal/app/procstats/ProcessState;->pullFixedProc(Landroid/util/ArrayMap;I)Lcom/android/internal/app/procstats/ProcessState;

    move-result-object v4

    iget-object v5, v4, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    iget v6, v0, Lcom/android/internal/app/procstats/ProcessState;->mCurState:I

    const/4 v7, 0x1

    move-wide/from16 v8, p1

    move-wide/from16 v10, p1

    move-wide/from16 v12, p1

    move-wide/from16 v14, p3

    move-wide/from16 v16, p3

    move-wide/from16 v18, p3

    move-wide/from16 v20, p5

    move-wide/from16 v22, p5

    move-wide/from16 v24, p5

    invoke-virtual/range {v5 .. v25}, Lcom/android/internal/app/procstats/PssTable;->mergeStats(IIJJJJJJJJJ)V

    .line 502
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 508
    .end local v3    # "ip":I
    :cond_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public aggregatePss(Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;J)V
    .locals 39
    .param p1, "data"    # Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;
    .param p2, "now"    # J

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 675
    new-instance v2, Lcom/android/internal/app/procstats/ProcessState$PssAggr;

    invoke-direct {v2}, Lcom/android/internal/app/procstats/ProcessState$PssAggr;-><init>()V

    .line 676
    .local v2, "fgPss":Lcom/android/internal/app/procstats/ProcessState$PssAggr;
    new-instance v3, Lcom/android/internal/app/procstats/ProcessState$PssAggr;

    invoke-direct {v3}, Lcom/android/internal/app/procstats/ProcessState$PssAggr;-><init>()V

    .line 677
    .local v3, "bgPss":Lcom/android/internal/app/procstats/ProcessState$PssAggr;
    new-instance v4, Lcom/android/internal/app/procstats/ProcessState$PssAggr;

    invoke-direct {v4}, Lcom/android/internal/app/procstats/ProcessState$PssAggr;-><init>()V

    .line 678
    .local v4, "cachedPss":Lcom/android/internal/app/procstats/ProcessState$PssAggr;
    const/4 v5, 0x0

    .line 679
    .local v5, "havePss":Z
    move v7, v5

    const/4 v5, 0x0

    .local v5, "i":I
    .local v7, "havePss":Z
    :goto_0
    iget-object v8, v0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v8}, Lcom/android/internal/app/procstats/DurationsTable;->getKeyCount()I

    move-result v8

    const/4 v9, 0x7

    const/4 v10, 0x2

    const-wide/16 v11, 0x0

    if-ge v5, v8, :cond_3

    .line 680
    iget-object v8, v0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v8, v5}, Lcom/android/internal/app/procstats/DurationsTable;->getKeyAt(I)I

    move-result v8

    .line 681
    .local v8, "key":I
    invoke-static {v8}, Lcom/android/internal/app/procstats/SparseMappingTable;->getIdFromKey(I)B

    move-result v13

    .line 682
    .local v13, "type":I
    rem-int/lit8 v14, v13, 0xe

    .line 683
    .local v14, "procState":I
    move/from16 v16, v7

    invoke-virtual {v0, v13}, Lcom/android/internal/app/procstats/ProcessState;->getPssSampleCount(I)J

    move-result-wide v6

    .line 684
    .end local v7    # "havePss":Z
    .local v6, "samples":J
    .local v16, "havePss":Z
    cmp-long v11, v6, v11

    if-lez v11, :cond_2

    .line 685
    invoke-virtual {v0, v13}, Lcom/android/internal/app/procstats/ProcessState;->getPssAverage(I)J

    move-result-wide v11

    .line 686
    .local v11, "avg":J
    const/16 v16, 0x1

    .line 687
    if-gt v14, v10, :cond_0

    .line 688
    invoke-virtual {v2, v11, v12, v6, v7}, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->add(JJ)V

    goto :goto_1

    .line 689
    :cond_0
    if-gt v14, v9, :cond_1

    .line 690
    invoke-virtual {v3, v11, v12, v6, v7}, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->add(JJ)V

    goto :goto_1

    .line 692
    :cond_1
    invoke-virtual {v4, v11, v12, v6, v7}, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->add(JJ)V

    .line 679
    .end local v6    # "samples":J
    .end local v8    # "key":I
    .end local v11    # "avg":J
    .end local v13    # "type":I
    .end local v14    # "procState":I
    :cond_2
    :goto_1
    move/from16 v7, v16

    .end local v16    # "havePss":Z
    .restart local v7    # "havePss":Z
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 696
    .end local v5    # "i":I
    :cond_3
    move/from16 v16, v7

    .end local v7    # "havePss":Z
    .restart local v16    # "havePss":Z
    if-nez v16, :cond_4

    .line 697
    return-void

    .line 699
    :cond_4
    const/4 v5, 0x0

    .line 700
    .local v5, "fgHasBg":Z
    const/4 v6, 0x0

    .line 701
    .local v6, "fgHasCached":Z
    const/4 v7, 0x0

    .line 702
    .local v7, "bgHasCached":Z
    iget-wide v13, v2, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    const-wide/16 v17, 0x3

    cmp-long v8, v13, v17

    if-gez v8, :cond_5

    iget-wide v13, v3, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    cmp-long v8, v13, v11

    if-lez v8, :cond_5

    .line 703
    const/4 v5, 0x1

    .line 704
    iget-wide v13, v3, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->pss:J

    iget-wide v9, v3, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    invoke-virtual {v2, v13, v14, v9, v10}, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->add(JJ)V

    .line 706
    :cond_5
    iget-wide v8, v2, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    cmp-long v8, v8, v17

    if-gez v8, :cond_6

    iget-wide v8, v4, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    cmp-long v8, v8, v11

    if-lez v8, :cond_6

    .line 707
    const/4 v6, 0x1

    .line 708
    iget-wide v8, v4, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->pss:J

    iget-wide v13, v4, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    invoke-virtual {v2, v8, v9, v13, v14}, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->add(JJ)V

    .line 710
    :cond_6
    iget-wide v8, v3, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    cmp-long v8, v8, v17

    if-gez v8, :cond_7

    iget-wide v8, v4, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    cmp-long v8, v8, v11

    if-lez v8, :cond_7

    .line 711
    const/4 v7, 0x1

    .line 712
    iget-wide v8, v4, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->pss:J

    iget-wide v13, v4, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    invoke-virtual {v3, v8, v9, v13, v14}, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->add(JJ)V

    .line 714
    :cond_7
    iget-wide v8, v3, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    cmp-long v8, v8, v17

    if-gez v8, :cond_8

    if-nez v5, :cond_8

    iget-wide v8, v2, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    cmp-long v8, v8, v11

    if-lez v8, :cond_8

    .line 715
    iget-wide v8, v2, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->pss:J

    iget-wide v13, v2, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    invoke-virtual {v3, v8, v9, v13, v14}, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->add(JJ)V

    .line 717
    :cond_8
    iget-wide v8, v4, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    cmp-long v8, v8, v17

    if-gez v8, :cond_9

    if-nez v7, :cond_9

    iget-wide v8, v3, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    cmp-long v8, v8, v11

    if-lez v8, :cond_9

    .line 718
    iget-wide v8, v3, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->pss:J

    iget-wide v13, v3, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    invoke-virtual {v4, v8, v9, v13, v14}, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->add(JJ)V

    .line 720
    :cond_9
    iget-wide v8, v4, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    cmp-long v8, v8, v17

    if-gez v8, :cond_a

    if-nez v6, :cond_a

    iget-wide v8, v2, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    cmp-long v8, v8, v11

    if-lez v8, :cond_a

    .line 721
    iget-wide v8, v2, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->pss:J

    iget-wide v13, v2, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    invoke-virtual {v4, v8, v9, v13, v14}, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->add(JJ)V

    .line 723
    :cond_a
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_2
    move v8, v15

    .end local v15    # "i":I
    .local v8, "i":I
    iget-object v9, v0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v9}, Lcom/android/internal/app/procstats/DurationsTable;->getKeyCount()I

    move-result v9

    if-ge v8, v9, :cond_f

    .line 724
    iget-object v9, v0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v9, v8}, Lcom/android/internal/app/procstats/DurationsTable;->getKeyAt(I)I

    move-result v9

    .line 725
    .local v9, "key":I
    invoke-static {v9}, Lcom/android/internal/app/procstats/SparseMappingTable;->getIdFromKey(I)B

    move-result v10

    .line 726
    .local v10, "type":I
    iget-object v13, v0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v13, v9}, Lcom/android/internal/app/procstats/DurationsTable;->getValue(I)J

    move-result-wide v13

    .line 727
    .local v13, "time":J
    iget v15, v0, Lcom/android/internal/app/procstats/ProcessState;->mCurState:I

    if-ne v15, v10, :cond_b

    .line 728
    iget-wide v11, v0, Lcom/android/internal/app/procstats/ProcessState;->mStartTime:J

    sub-long v11, p2, v11

    add-long/2addr v13, v11

    .line 730
    :cond_b
    rem-int/lit8 v11, v10, 0xe

    .line 731
    .local v11, "procState":I
    iget-object v12, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->processStateTime:[J

    aget-wide v21, v12, v11

    add-long v21, v21, v13

    aput-wide v21, v12, v11

    .line 732
    invoke-virtual {v0, v10}, Lcom/android/internal/app/procstats/ProcessState;->getPssSampleCount(I)J

    move-result-wide v21

    .line 734
    .local v21, "samples":J
    const-wide/16 v19, 0x0

    cmp-long v12, v21, v19

    if-lez v12, :cond_c

    .line 735
    invoke-virtual {v0, v10}, Lcom/android/internal/app/procstats/ProcessState;->getPssAverage(I)J

    move-result-wide v23

    .line 744
    .local v23, "avg":J
    move-wide/from16 v25, v13

    move-wide/from16 v12, v21

    move-wide/from16 v14, v23

    goto :goto_3

    .line 736
    .end local v23    # "avg":J
    :cond_c
    const/4 v12, 0x2

    if-gt v11, v12, :cond_d

    .line 737
    move-wide/from16 v25, v13

    iget-wide v12, v2, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    .line 738
    .end local v13    # "time":J
    .end local v21    # "samples":J
    .local v12, "samples":J
    .local v25, "time":J
    iget-wide v14, v2, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->pss:J

    .local v14, "avg":J
    goto :goto_3

    .line 739
    .end local v12    # "samples":J
    .end local v14    # "avg":J
    .end local v25    # "time":J
    .restart local v13    # "time":J
    .restart local v21    # "samples":J
    :cond_d
    move-wide/from16 v25, v13

    .end local v13    # "time":J
    .restart local v25    # "time":J
    const/4 v12, 0x7

    if-gt v11, v12, :cond_e

    .line 740
    iget-wide v13, v3, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    .line 741
    .end local v21    # "samples":J
    .local v13, "samples":J
    move-wide/from16 v27, v13

    iget-wide v12, v3, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->pss:J

    .line 744
    .end local v13    # "samples":J
    .local v12, "avg":J
    .local v27, "samples":J
    move-wide v14, v12

    move-wide/from16 v12, v27

    goto :goto_3

    .line 743
    .end local v12    # "avg":J
    .end local v27    # "samples":J
    .restart local v21    # "samples":J
    :cond_e
    iget-wide v12, v4, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    .line 744
    .end local v21    # "samples":J
    .local v12, "samples":J
    iget-wide v14, v4, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->pss:J

    .line 746
    .restart local v14    # "avg":J
    :goto_3
    iget-object v0, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->processStatePss:[J

    move-object/from16 v29, v2

    move-object/from16 v30, v3

    aget-wide v2, v0, v11

    .end local v2    # "fgPss":Lcom/android/internal/app/procstats/ProcessState$PssAggr;
    .end local v3    # "bgPss":Lcom/android/internal/app/procstats/ProcessState$PssAggr;
    .local v29, "fgPss":Lcom/android/internal/app/procstats/ProcessState$PssAggr;
    .local v30, "bgPss":Lcom/android/internal/app/procstats/ProcessState$PssAggr;
    long-to-double v2, v2

    iget-object v0, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->processStateSamples:[I

    aget v0, v0, v11

    move-object/from16 v31, v4

    move/from16 v32, v5

    int-to-double v4, v0

    .end local v4    # "cachedPss":Lcom/android/internal/app/procstats/ProcessState$PssAggr;
    .end local v5    # "fgHasBg":Z
    .local v31, "cachedPss":Lcom/android/internal/app/procstats/ProcessState$PssAggr;
    .local v32, "fgHasBg":Z
    mul-double/2addr v2, v4

    long-to-double v4, v14

    move/from16 v33, v6

    move/from16 v34, v7

    long-to-double v6, v12

    .end local v6    # "fgHasCached":Z
    .end local v7    # "bgHasCached":Z
    .local v33, "fgHasCached":Z
    .local v34, "bgHasCached":Z
    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-object v0, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->processStateSamples:[I

    aget v0, v0, v11

    int-to-long v4, v0

    add-long/2addr v4, v12

    long-to-double v4, v4

    div-double/2addr v2, v4

    .line 750
    .local v2, "newAvg":D
    iget-object v0, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->processStatePss:[J

    double-to-long v4, v2

    aput-wide v4, v0, v11

    .line 751
    iget-object v0, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->processStateSamples:[I

    aget v4, v0, v11

    int-to-long v4, v4

    add-long/2addr v4, v12

    long-to-int v4, v4

    aput v4, v0, v11

    .line 752
    iget-object v0, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->processStateWeight:[D

    aget-wide v4, v0, v11

    long-to-double v6, v14

    move-wide/from16 v35, v2

    move/from16 v37, v9

    move/from16 v38, v10

    move-wide/from16 v1, v25

    long-to-double v9, v1

    .end local v2    # "newAvg":D
    .end local v9    # "key":I
    .end local v10    # "type":I
    .end local v25    # "time":J
    .local v1, "time":J
    .local v35, "newAvg":D
    .local v37, "key":I
    .local v38, "type":I
    mul-double/2addr v6, v9

    add-double/2addr v4, v6

    aput-wide v4, v0, v11

    .line 723
    .end local v1    # "time":J
    .end local v11    # "procState":I
    .end local v12    # "samples":J
    .end local v14    # "avg":J
    .end local v35    # "newAvg":D
    .end local v37    # "key":I
    .end local v38    # "type":I
    add-int/lit8 v15, v8, 0x1

    .end local v8    # "i":I
    .restart local v15    # "i":I
    move-wide/from16 v11, v19

    move-object/from16 v2, v29

    move-object/from16 v3, v30

    move-object/from16 v4, v31

    move/from16 v5, v32

    move/from16 v6, v33

    move/from16 v7, v34

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    goto/16 :goto_2

    .line 754
    .end local v15    # "i":I
    .end local v29    # "fgPss":Lcom/android/internal/app/procstats/ProcessState$PssAggr;
    .end local v30    # "bgPss":Lcom/android/internal/app/procstats/ProcessState$PssAggr;
    .end local v31    # "cachedPss":Lcom/android/internal/app/procstats/ProcessState$PssAggr;
    .end local v32    # "fgHasBg":Z
    .end local v33    # "fgHasCached":Z
    .end local v34    # "bgHasCached":Z
    .local v2, "fgPss":Lcom/android/internal/app/procstats/ProcessState$PssAggr;
    .restart local v3    # "bgPss":Lcom/android/internal/app/procstats/ProcessState$PssAggr;
    .restart local v4    # "cachedPss":Lcom/android/internal/app/procstats/ProcessState$PssAggr;
    .restart local v5    # "fgHasBg":Z
    .restart local v6    # "fgHasCached":Z
    .restart local v7    # "bgHasCached":Z
    :cond_f
    move-object/from16 v29, v2

    move-object/from16 v30, v3

    move-object/from16 v31, v4

    move/from16 v32, v5

    move/from16 v33, v6

    move/from16 v34, v7

    .end local v2    # "fgPss":Lcom/android/internal/app/procstats/ProcessState$PssAggr;
    .end local v3    # "bgPss":Lcom/android/internal/app/procstats/ProcessState$PssAggr;
    .end local v4    # "cachedPss":Lcom/android/internal/app/procstats/ProcessState$PssAggr;
    .end local v5    # "fgHasBg":Z
    .end local v6    # "fgHasCached":Z
    .end local v7    # "bgHasCached":Z
    .restart local v29    # "fgPss":Lcom/android/internal/app/procstats/ProcessState$PssAggr;
    .restart local v30    # "bgPss":Lcom/android/internal/app/procstats/ProcessState$PssAggr;
    .restart local v31    # "cachedPss":Lcom/android/internal/app/procstats/ProcessState$PssAggr;
    .restart local v32    # "fgHasBg":Z
    .restart local v33    # "fgHasCached":Z
    .restart local v34    # "bgHasCached":Z
    return-void
.end method

.method public clone(J)Lcom/android/internal/app/procstats/ProcessState;
    .locals 10
    .param p1, "now"    # J

    .line 190
    new-instance v9, Lcom/android/internal/app/procstats/ProcessState;

    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mPackage:Ljava/lang/String;

    iget v3, p0, Lcom/android/internal/app/procstats/ProcessState;->mUid:I

    iget-wide v4, p0, Lcom/android/internal/app/procstats/ProcessState;->mVersion:J

    iget-object v6, p0, Lcom/android/internal/app/procstats/ProcessState;->mName:Ljava/lang/String;

    move-object v0, v9

    move-object v1, p0

    move-wide v7, p1

    invoke-direct/range {v0 .. v8}, Lcom/android/internal/app/procstats/ProcessState;-><init>(Lcom/android/internal/app/procstats/ProcessState;Ljava/lang/String;IJLjava/lang/String;J)V

    .line 191
    .local v0, "pnew":Lcom/android/internal/app/procstats/ProcessState;
    iget-object v1, v0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v1, v2}, Lcom/android/internal/app/procstats/DurationsTable;->addDurations(Lcom/android/internal/app/procstats/DurationsTable;)V

    .line 192
    iget-object v1, v0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    const/16 v3, 0xa

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/app/procstats/PssTable;->copyFrom(Lcom/android/internal/app/procstats/SparseMappingTable$Table;I)V

    .line 193
    iget v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveCpu:I

    iput v1, v0, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveCpu:I

    .line 194
    iget v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    iput v1, v0, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    .line 195
    iget-wide v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mMinCachedKillPss:J

    iput-wide v1, v0, Lcom/android/internal/app/procstats/ProcessState;->mMinCachedKillPss:J

    .line 196
    iget-wide v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mAvgCachedKillPss:J

    iput-wide v1, v0, Lcom/android/internal/app/procstats/ProcessState;->mAvgCachedKillPss:J

    .line 197
    iget-wide v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mMaxCachedKillPss:J

    iput-wide v1, v0, Lcom/android/internal/app/procstats/ProcessState;->mMaxCachedKillPss:J

    .line 198
    iget-boolean v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mActive:Z

    iput-boolean v1, v0, Lcom/android/internal/app/procstats/ProcessState;->mActive:Z

    .line 199
    iget v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumActiveServices:I

    iput v1, v0, Lcom/android/internal/app/procstats/ProcessState;->mNumActiveServices:I

    .line 200
    iget v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumStartedServices:I

    iput v1, v0, Lcom/android/internal/app/procstats/ProcessState;->mNumStartedServices:I

    .line 201
    return-object v0
.end method

.method public commitStateTime(J)V
    .locals 4
    .param p1, "now"    # J

    .line 382
    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCurState:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 383
    iget-wide v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mStartTime:J

    sub-long v0, p1, v0

    .line 384
    .local v0, "dur":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 385
    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    iget v3, p0, Lcom/android/internal/app/procstats/ProcessState;->mCurState:I

    invoke-virtual {v2, v3, v0, v1}, Lcom/android/internal/app/procstats/DurationsTable;->addDuration(IJ)V

    .line 388
    .end local v0    # "dur":J
    :cond_0
    iput-wide p1, p0, Lcom/android/internal/app/procstats/ProcessState;->mStartTime:J

    .line 389
    return-void
.end method

.method public computeProcessData(Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;J)V
    .locals 53
    .param p1, "data"    # Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;
    .param p2, "now"    # J

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 985
    const-wide/16 v2, 0x0

    iput-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->totalTime:J

    .line 986
    iput-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->maxRss:J

    iput-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->avgRss:J

    iput-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->minRss:J

    iput-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->maxUss:J

    iput-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->avgUss:J

    iput-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->minUss:J

    iput-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->maxPss:J

    iput-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->avgPss:J

    iput-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->minPss:J

    iput-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->numPss:J

    .line 989
    const/4 v5, 0x0

    .local v5, "is":I
    :goto_0
    iget-object v6, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->screenStates:[I

    array-length v6, v6

    if-ge v5, v6, :cond_a

    .line 990
    const/4 v6, 0x0

    .local v6, "im":I
    :goto_1
    iget-object v7, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->memStates:[I

    array-length v7, v7

    if-ge v6, v7, :cond_9

    .line 991
    const/4 v7, 0x0

    .local v7, "ip":I
    :goto_2
    iget-object v8, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->procStates:[I

    array-length v8, v8

    if-ge v7, v8, :cond_8

    .line 992
    iget-object v8, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->screenStates:[I

    aget v8, v8, v5

    iget-object v9, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->memStates:[I

    aget v9, v9, v6

    add-int/2addr v8, v9

    mul-int/lit8 v8, v8, 0xe

    iget-object v9, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->procStates:[I

    aget v9, v9, v7

    add-int/2addr v8, v9

    .line 994
    .local v8, "bucket":I
    iget-wide v9, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->totalTime:J

    move-wide/from16 v11, p2

    invoke-virtual {v0, v8, v11, v12}, Lcom/android/internal/app/procstats/ProcessState;->getDuration(IJ)J

    move-result-wide v13

    add-long/2addr v9, v13

    iput-wide v9, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->totalTime:J

    .line 995
    invoke-virtual {v0, v8}, Lcom/android/internal/app/procstats/ProcessState;->getPssSampleCount(I)J

    move-result-wide v9

    .line 996
    .local v9, "samples":J
    cmp-long v13, v9, v2

    if-lez v13, :cond_7

    .line 997
    invoke-virtual {v0, v8}, Lcom/android/internal/app/procstats/ProcessState;->getPssMinimum(I)J

    move-result-wide v13

    .line 998
    .local v13, "minPss":J
    move v15, v5

    invoke-virtual {v0, v8}, Lcom/android/internal/app/procstats/ProcessState;->getPssAverage(I)J

    move-result-wide v4

    .line 999
    .end local v5    # "is":I
    .local v4, "avgPss":J
    .local v15, "is":I
    invoke-virtual {v0, v8}, Lcom/android/internal/app/procstats/ProcessState;->getPssMaximum(I)J

    move-result-wide v2

    .line 1000
    .local v2, "maxPss":J
    invoke-virtual {v0, v8}, Lcom/android/internal/app/procstats/ProcessState;->getPssUssMinimum(I)J

    move-result-wide v11

    .line 1001
    .local v11, "minUss":J
    move/from16 v18, v6

    move/from16 v19, v7

    invoke-virtual {v0, v8}, Lcom/android/internal/app/procstats/ProcessState;->getPssUssAverage(I)J

    move-result-wide v6

    .line 1002
    .end local v7    # "ip":I
    .local v6, "avgUss":J
    .local v18, "im":I
    .local v19, "ip":I
    move-wide/from16 v20, v9

    invoke-virtual {v0, v8}, Lcom/android/internal/app/procstats/ProcessState;->getPssUssMaximum(I)J

    move-result-wide v9

    .line 1003
    .local v9, "maxUss":J
    .local v20, "samples":J
    move-wide/from16 v22, v9

    invoke-virtual {v0, v8}, Lcom/android/internal/app/procstats/ProcessState;->getPssRssMinimum(I)J

    move-result-wide v9

    .line 1004
    .local v9, "minRss":J
    .local v22, "maxUss":J
    move-wide/from16 v24, v9

    invoke-virtual {v0, v8}, Lcom/android/internal/app/procstats/ProcessState;->getPssRssAverage(I)J

    move-result-wide v9

    .line 1005
    .local v9, "avgRss":J
    .local v24, "minRss":J
    move-wide/from16 v26, v9

    invoke-virtual {v0, v8}, Lcom/android/internal/app/procstats/ProcessState;->getPssRssMaximum(I)J

    move-result-wide v9

    .line 1006
    .local v9, "maxRss":J
    .local v26, "avgRss":J
    move/from16 v28, v8

    move-wide/from16 v29, v9

    iget-wide v8, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->numPss:J

    .end local v8    # "bucket":I
    .end local v9    # "maxRss":J
    .local v28, "bucket":I
    .local v29, "maxRss":J
    const-wide/16 v16, 0x0

    cmp-long v8, v8, v16

    if-nez v8, :cond_0

    .line 1007
    iput-wide v13, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->minPss:J

    .line 1008
    iput-wide v4, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->avgPss:J

    .line 1009
    iput-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->maxPss:J

    .line 1010
    iput-wide v11, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->minUss:J

    .line 1011
    iput-wide v6, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->avgUss:J

    .line 1012
    move-wide/from16 v8, v22

    iput-wide v8, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->maxUss:J

    .line 1013
    .end local v22    # "maxUss":J
    .local v8, "maxUss":J
    move-wide/from16 v31, v8

    move-wide/from16 v8, v24

    iput-wide v8, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->minRss:J

    .line 1014
    .end local v24    # "minRss":J
    .local v8, "minRss":J
    .local v31, "maxUss":J
    move-wide/from16 v33, v8

    move-wide/from16 v8, v26

    iput-wide v8, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->avgRss:J

    .line 1015
    .end local v26    # "avgRss":J
    .local v8, "avgRss":J
    .local v33, "minRss":J
    move-wide/from16 v35, v8

    move-wide/from16 v8, v29

    iput-wide v8, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->maxRss:J

    .line 1042
    .end local v29    # "maxRss":J
    .local v8, "maxRss":J
    .local v35, "avgRss":J
    move-wide/from16 v45, v2

    move-wide/from16 v41, v4

    move-wide v2, v8

    move-wide/from16 v39, v13

    move-wide/from16 v4, v20

    move-wide/from16 v47, v31

    move-wide/from16 v49, v33

    move-wide/from16 v51, v35

    move-wide v8, v6

    goto/16 :goto_5

    .line 1017
    .end local v8    # "maxRss":J
    .end local v31    # "maxUss":J
    .end local v33    # "minRss":J
    .end local v35    # "avgRss":J
    .restart local v22    # "maxUss":J
    .restart local v24    # "minRss":J
    .restart local v26    # "avgRss":J
    .restart local v29    # "maxRss":J
    :cond_0
    move-wide/from16 v31, v22

    move-wide/from16 v33, v24

    move-wide/from16 v35, v26

    move-wide/from16 v8, v29

    .end local v22    # "maxUss":J
    .end local v24    # "minRss":J
    .end local v26    # "avgRss":J
    .end local v29    # "maxRss":J
    .restart local v8    # "maxRss":J
    .restart local v31    # "maxUss":J
    .restart local v33    # "minRss":J
    .restart local v35    # "avgRss":J
    move-wide/from16 v37, v8

    iget-wide v8, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->minPss:J

    .end local v8    # "maxRss":J
    .local v37, "maxRss":J
    cmp-long v8, v13, v8

    if-gez v8, :cond_1

    .line 1018
    iput-wide v13, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->minPss:J

    .line 1020
    :cond_1
    iget-wide v8, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->avgPss:J

    long-to-double v8, v8

    move-wide/from16 v39, v13

    iget-wide v13, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->numPss:J

    .end local v13    # "minPss":J
    .local v39, "minPss":J
    long-to-double v13, v13

    mul-double/2addr v8, v13

    long-to-double v13, v4

    move-wide/from16 v41, v4

    move-wide/from16 v43, v6

    move-wide/from16 v4, v20

    long-to-double v6, v4

    .end local v6    # "avgUss":J
    .end local v20    # "samples":J
    .local v4, "samples":J
    .local v41, "avgPss":J
    .local v43, "avgUss":J
    mul-double/2addr v13, v6

    add-double/2addr v8, v13

    iget-wide v6, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->numPss:J

    add-long/2addr v6, v4

    long-to-double v6, v6

    div-double/2addr v8, v6

    double-to-long v6, v8

    iput-wide v6, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->avgPss:J

    .line 1022
    iget-wide v6, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->maxPss:J

    cmp-long v6, v2, v6

    if-lez v6, :cond_2

    .line 1023
    iput-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->maxPss:J

    .line 1025
    :cond_2
    iget-wide v6, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->minUss:J

    cmp-long v6, v11, v6

    if-gez v6, :cond_3

    .line 1026
    iput-wide v11, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->minUss:J

    .line 1028
    :cond_3
    iget-wide v6, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->avgUss:J

    long-to-double v6, v6

    iget-wide v8, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->numPss:J

    long-to-double v8, v8

    mul-double/2addr v6, v8

    move-wide/from16 v8, v43

    long-to-double v13, v8

    .end local v43    # "avgUss":J
    .local v8, "avgUss":J
    move-wide/from16 v45, v2

    long-to-double v2, v4

    .end local v2    # "maxPss":J
    .local v45, "maxPss":J
    mul-double/2addr v13, v2

    add-double/2addr v6, v13

    iget-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->numPss:J

    add-long/2addr v2, v4

    long-to-double v2, v2

    div-double/2addr v6, v2

    double-to-long v2, v6

    iput-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->avgUss:J

    .line 1030
    iget-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->maxUss:J

    cmp-long v2, v31, v2

    if-lez v2, :cond_4

    .line 1031
    move-wide/from16 v2, v31

    iput-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->maxUss:J

    goto :goto_3

    .line 1033
    :cond_4
    move-wide/from16 v2, v31

    .end local v31    # "maxUss":J
    .local v2, "maxUss":J
    :goto_3
    iget-wide v6, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->minRss:J

    cmp-long v6, v33, v6

    if-gez v6, :cond_5

    .line 1034
    move-wide/from16 v6, v33

    iput-wide v6, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->minRss:J

    goto :goto_4

    .line 1036
    :cond_5
    move-wide/from16 v6, v33

    .end local v33    # "minRss":J
    .local v6, "minRss":J
    :goto_4
    iget-wide v13, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->avgRss:J

    long-to-double v13, v13

    move-wide/from16 v47, v2

    iget-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->numPss:J

    .end local v2    # "maxUss":J
    .local v47, "maxUss":J
    long-to-double v2, v2

    mul-double/2addr v13, v2

    move-wide/from16 v49, v6

    move-wide/from16 v2, v35

    long-to-double v6, v2

    .end local v6    # "minRss":J
    .end local v35    # "avgRss":J
    .local v2, "avgRss":J
    .local v49, "minRss":J
    move-wide/from16 v51, v2

    long-to-double v2, v4

    .end local v2    # "avgRss":J
    .local v51, "avgRss":J
    mul-double/2addr v6, v2

    add-double/2addr v13, v6

    iget-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->numPss:J

    add-long/2addr v2, v4

    long-to-double v2, v2

    div-double/2addr v13, v2

    double-to-long v2, v13

    iput-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->avgRss:J

    .line 1038
    iget-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->maxRss:J

    cmp-long v2, v37, v2

    if-lez v2, :cond_6

    .line 1039
    move-wide/from16 v2, v37

    iput-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->maxRss:J

    goto :goto_5

    .line 1042
    :cond_6
    move-wide/from16 v2, v37

    .end local v37    # "maxRss":J
    .local v2, "maxRss":J
    :goto_5
    iget-wide v6, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->numPss:J

    add-long/2addr v6, v4

    iput-wide v6, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->numPss:J

    .end local v2    # "maxRss":J
    .end local v4    # "samples":J
    .end local v8    # "avgUss":J
    .end local v11    # "minUss":J
    .end local v28    # "bucket":I
    .end local v39    # "minPss":J
    .end local v41    # "avgPss":J
    .end local v45    # "maxPss":J
    .end local v47    # "maxUss":J
    .end local v49    # "minRss":J
    .end local v51    # "avgRss":J
    goto :goto_6

    .line 991
    .end local v15    # "is":I
    .end local v18    # "im":I
    .end local v19    # "ip":I
    .restart local v5    # "is":I
    .local v6, "im":I
    .restart local v7    # "ip":I
    :cond_7
    move-wide/from16 v16, v2

    move v15, v5

    move/from16 v18, v6

    move/from16 v19, v7

    .end local v5    # "is":I
    .end local v6    # "im":I
    .end local v7    # "ip":I
    .restart local v15    # "is":I
    .restart local v18    # "im":I
    .restart local v19    # "ip":I
    :goto_6
    add-int/lit8 v7, v19, 0x1

    .end local v19    # "ip":I
    .restart local v7    # "ip":I
    move v5, v15

    move-wide/from16 v2, v16

    move/from16 v6, v18

    goto/16 :goto_2

    .line 990
    .end local v7    # "ip":I
    .end local v15    # "is":I
    .end local v18    # "im":I
    .restart local v5    # "is":I
    .restart local v6    # "im":I
    :cond_8
    move-wide/from16 v16, v2

    move v15, v5

    move/from16 v18, v6

    .end local v5    # "is":I
    .end local v6    # "im":I
    .restart local v15    # "is":I
    .restart local v18    # "im":I
    add-int/lit8 v6, v18, 0x1

    .end local v18    # "im":I
    .restart local v6    # "im":I
    goto/16 :goto_1

    .line 989
    .end local v6    # "im":I
    .end local v15    # "is":I
    .restart local v5    # "is":I
    :cond_9
    move-wide/from16 v16, v2

    move v15, v5

    .end local v5    # "is":I
    .restart local v15    # "is":I
    add-int/lit8 v5, v15, 0x1

    .end local v15    # "is":I
    .restart local v5    # "is":I
    goto/16 :goto_0

    .line 1047
    .end local v5    # "is":I
    :cond_a
    return-void
.end method

.method public computeProcessTimeLocked([I[I[IJ)J
    .locals 9
    .param p1, "screenStates"    # [I
    .param p2, "memStates"    # [I
    .param p3, "procStates"    # [I
    .param p4, "now"    # J

    .line 758
    const-wide/16 v0, 0x0

    .line 759
    .local v0, "totalTime":J
    const/4 v2, 0x0

    move-wide v3, v0

    move v0, v2

    .local v0, "is":I
    .local v3, "totalTime":J
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_2

    .line 760
    move v1, v2

    .local v1, "im":I
    :goto_1
    array-length v5, p2

    if-ge v1, v5, :cond_1

    .line 761
    move-wide v4, v3

    move v3, v2

    .local v3, "ip":I
    .local v4, "totalTime":J
    :goto_2
    array-length v6, p3

    if-ge v3, v6, :cond_0

    .line 762
    aget v6, p1, v0

    aget v7, p2, v1

    add-int/2addr v6, v7

    mul-int/lit8 v6, v6, 0xe

    aget v7, p3, v3

    add-int/2addr v6, v7

    .line 764
    .local v6, "bucket":I
    invoke-virtual {p0, v6, p4, p5}, Lcom/android/internal/app/procstats/ProcessState;->getDuration(IJ)J

    move-result-wide v7

    add-long/2addr v4, v7

    .line 761
    .end local v6    # "bucket":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 760
    .end local v3    # "ip":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    move-wide v3, v4

    goto :goto_1

    .line 759
    .end local v1    # "im":I
    .end local v4    # "totalTime":J
    .local v3, "totalTime":J
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 768
    .end local v0    # "is":I
    :cond_2
    iput-wide v3, p0, Lcom/android/internal/app/procstats/ProcessState;->mTmpTotalTime:J

    .line 769
    return-wide v3
.end method

.method public decActiveServices(Ljava/lang/String;)V
    .locals 3
    .param p1, "serviceName"    # Ljava/lang/String;

    .line 411
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    if-eq v0, p0, :cond_0

    .line 412
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    invoke-virtual {v0, p1}, Lcom/android/internal/app/procstats/ProcessState;->decActiveServices(Ljava/lang/String;)V

    .line 414
    :cond_0
    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumActiveServices:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumActiveServices:I

    .line 415
    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumActiveServices:I

    if-gez v0, :cond_1

    .line 416
    const-string v0, "ProcessStats"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Proc active services underrun: pkg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mPackage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " proc="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " service="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumActiveServices:I

    .line 420
    :cond_1
    return-void
.end method

.method public decStartedServices(IJLjava/lang/String;)V
    .locals 3
    .param p1, "memFactor"    # I
    .param p2, "now"    # J
    .param p4, "serviceName"    # Ljava/lang/String;

    .line 445
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    if-eq v0, p0, :cond_0

    .line 446
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/internal/app/procstats/ProcessState;->decStartedServices(IJLjava/lang/String;)V

    .line 448
    :cond_0
    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumStartedServices:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumStartedServices:I

    .line 449
    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumStartedServices:I

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCurState:I

    rem-int/lit8 v0, v0, 0xe

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    .line 450
    const/4 v0, -0x1

    invoke-virtual {p0, v0, p2, p3}, Lcom/android/internal/app/procstats/ProcessState;->setState(IJ)V

    goto :goto_0

    .line 451
    :cond_1
    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumStartedServices:I

    if-gez v0, :cond_2

    .line 452
    const-string v0, "ProcessStats"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Proc started services underrun: pkg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mPackage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumStartedServices:I

    .line 456
    :cond_2
    :goto_0
    return-void
.end method

.method public dumpAllPssCheckin(Ljava/io/PrintWriter;)V
    .locals 8
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 1218
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    invoke-virtual {v0}, Lcom/android/internal/app/procstats/PssTable;->getKeyCount()I

    move-result v0

    .line 1219
    .local v0, "N":I
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 1220
    iget-object v3, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    invoke-virtual {v3, v2}, Lcom/android/internal/app/procstats/PssTable;->getKeyAt(I)I

    move-result v3

    .line 1221
    .local v3, "key":I
    invoke-static {v3}, Lcom/android/internal/app/procstats/SparseMappingTable;->getIdFromKey(I)B

    move-result v4

    .line 1222
    .local v4, "type":I
    const/16 v5, 0x2c

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(C)V

    .line 1223
    invoke-static {p1, v4}, Lcom/android/internal/app/procstats/DumpUtils;->printProcStateTag(Ljava/io/PrintWriter;I)V

    .line 1224
    const/16 v5, 0x3a

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(C)V

    .line 1225
    iget-object v6, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    invoke-virtual {v6, v3, v1}, Lcom/android/internal/app/procstats/PssTable;->getValue(II)J

    move-result-wide v6

    invoke-virtual {p1, v6, v7}, Ljava/io/PrintWriter;->print(J)V

    .line 1226
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(C)V

    .line 1227
    iget-object v6, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    const/4 v7, 0x1

    invoke-virtual {v6, v3, v7}, Lcom/android/internal/app/procstats/PssTable;->getValue(II)J

    move-result-wide v6

    invoke-virtual {p1, v6, v7}, Ljava/io/PrintWriter;->print(J)V

    .line 1228
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(C)V

    .line 1229
    iget-object v6, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    const/4 v7, 0x2

    invoke-virtual {v6, v3, v7}, Lcom/android/internal/app/procstats/PssTable;->getValue(II)J

    move-result-wide v6

    invoke-virtual {p1, v6, v7}, Ljava/io/PrintWriter;->print(J)V

    .line 1230
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(C)V

    .line 1231
    iget-object v6, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    const/4 v7, 0x3

    invoke-virtual {v6, v3, v7}, Lcom/android/internal/app/procstats/PssTable;->getValue(II)J

    move-result-wide v6

    invoke-virtual {p1, v6, v7}, Ljava/io/PrintWriter;->print(J)V

    .line 1232
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(C)V

    .line 1233
    iget-object v6, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    const/4 v7, 0x4

    invoke-virtual {v6, v3, v7}, Lcom/android/internal/app/procstats/PssTable;->getValue(II)J

    move-result-wide v6

    invoke-virtual {p1, v6, v7}, Ljava/io/PrintWriter;->print(J)V

    .line 1234
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(C)V

    .line 1235
    iget-object v6, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    const/4 v7, 0x5

    invoke-virtual {v6, v3, v7}, Lcom/android/internal/app/procstats/PssTable;->getValue(II)J

    move-result-wide v6

    invoke-virtual {p1, v6, v7}, Ljava/io/PrintWriter;->print(J)V

    .line 1236
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(C)V

    .line 1237
    iget-object v6, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    const/4 v7, 0x6

    invoke-virtual {v6, v3, v7}, Lcom/android/internal/app/procstats/PssTable;->getValue(II)J

    move-result-wide v6

    invoke-virtual {p1, v6, v7}, Ljava/io/PrintWriter;->print(J)V

    .line 1238
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(C)V

    .line 1239
    iget-object v6, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    const/4 v7, 0x7

    invoke-virtual {v6, v3, v7}, Lcom/android/internal/app/procstats/PssTable;->getValue(II)J

    move-result-wide v6

    invoke-virtual {p1, v6, v7}, Ljava/io/PrintWriter;->print(J)V

    .line 1240
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(C)V

    .line 1241
    iget-object v6, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    const/16 v7, 0x8

    invoke-virtual {v6, v3, v7}, Lcom/android/internal/app/procstats/PssTable;->getValue(II)J

    move-result-wide v6

    invoke-virtual {p1, v6, v7}, Ljava/io/PrintWriter;->print(J)V

    .line 1242
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(C)V

    .line 1243
    iget-object v5, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    const/16 v6, 0x9

    invoke-virtual {v5, v3, v6}, Lcom/android/internal/app/procstats/PssTable;->getValue(II)J

    move-result-wide v5

    invoke-virtual {p1, v5, v6}, Ljava/io/PrintWriter;->print(J)V

    .line 1219
    .end local v3    # "key":I
    .end local v4    # "type":I
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 1245
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method public dumpAllStateCheckin(Ljava/io/PrintWriter;J)V
    .locals 8
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "now"    # J

    .line 1201
    const/4 v0, 0x0

    .line 1202
    .local v0, "didCurState":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v2}, Lcom/android/internal/app/procstats/DurationsTable;->getKeyCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1203
    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v2, v1}, Lcom/android/internal/app/procstats/DurationsTable;->getKeyAt(I)I

    move-result v2

    .line 1204
    .local v2, "key":I
    invoke-static {v2}, Lcom/android/internal/app/procstats/SparseMappingTable;->getIdFromKey(I)B

    move-result v3

    .line 1205
    .local v3, "type":I
    iget-object v4, p0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v4, v2}, Lcom/android/internal/app/procstats/DurationsTable;->getValue(I)J

    move-result-wide v4

    .line 1206
    .local v4, "time":J
    iget v6, p0, Lcom/android/internal/app/procstats/ProcessState;->mCurState:I

    if-ne v6, v3, :cond_0

    .line 1207
    const/4 v0, 0x1

    .line 1208
    iget-wide v6, p0, Lcom/android/internal/app/procstats/ProcessState;->mStartTime:J

    sub-long v6, p2, v6

    add-long/2addr v4, v6

    .line 1210
    :cond_0
    invoke-static {p1, v3, v4, v5}, Lcom/android/internal/app/procstats/DumpUtils;->printProcStateTagAndValue(Ljava/io/PrintWriter;IJ)V

    .line 1202
    .end local v2    # "key":I
    .end local v3    # "type":I
    .end local v4    # "time":J
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1212
    .end local v1    # "i":I
    :cond_1
    if-nez v0, :cond_2

    iget v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mCurState:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 1213
    iget v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mCurState:I

    iget-wide v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mStartTime:J

    sub-long v2, p2, v2

    invoke-static {p1, v1, v2, v3}, Lcom/android/internal/app/procstats/DumpUtils;->printProcStateTagAndValue(Ljava/io/PrintWriter;IJ)V

    .line 1215
    :cond_2
    return-void
.end method

.method public dumpCsv(Ljava/io/PrintWriter;Z[IZ[IZ[IJ)V
    .locals 29
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "sepScreenStates"    # Z
    .param p3, "screenStates"    # [I
    .param p4, "sepMemStates"    # Z
    .param p5, "memStates"    # [I
    .param p6, "sepProcStates"    # Z
    .param p7, "procStates"    # [I
    .param p8, "now"    # J

    move-object/from16 v0, p1

    move-object/from16 v2, p3

    move-object/from16 v4, p5

    move-object/from16 v5, p7

    .line 1052
    if-eqz p2, :cond_0

    array-length v7, v2

    goto :goto_0

    :cond_0
    const/4 v7, 0x1

    .line 1053
    .local v7, "NSS":I
    :goto_0
    if-eqz p4, :cond_1

    array-length v8, v4

    goto :goto_1

    :cond_1
    const/4 v8, 0x1

    .line 1054
    .local v8, "NMS":I
    :goto_1
    if-eqz p6, :cond_2

    array-length v9, v5

    goto :goto_2

    :cond_2
    const/4 v9, 0x1

    .line 1055
    .local v9, "NPS":I
    :goto_2
    const/4 v11, 0x0

    .local v11, "iss":I
    :goto_3
    if-ge v11, v7, :cond_11

    .line 1056
    const/4 v12, 0x0

    .local v12, "ims":I
    :goto_4
    if-ge v12, v8, :cond_10

    .line 1057
    const/4 v13, 0x0

    .local v13, "ips":I
    :goto_5
    if-ge v13, v9, :cond_f

    .line 1058
    if-eqz p2, :cond_3

    aget v14, v2, v11

    goto :goto_6

    :cond_3
    const/4 v14, 0x0

    .line 1059
    .local v14, "vsscreen":I
    :goto_6
    if-eqz p4, :cond_4

    aget v15, v4, v12

    goto :goto_7

    :cond_4
    const/4 v15, 0x0

    .line 1060
    .local v15, "vsmem":I
    :goto_7
    if-eqz p6, :cond_5

    aget v16, v5, v13

    goto :goto_8

    :cond_5
    const/16 v16, 0x0

    .line 1061
    .local v16, "vsproc":I
    :goto_8
    if-eqz p2, :cond_6

    const/4 v6, 0x1

    goto :goto_9

    :cond_6
    array-length v6, v2

    .line 1062
    .local v6, "NSA":I
    :goto_9
    if-eqz p4, :cond_7

    const/4 v10, 0x1

    goto :goto_a

    :cond_7
    array-length v10, v4

    .line 1063
    .local v10, "NMA":I
    :goto_a
    if-eqz p6, :cond_8

    move/from16 v17, v7

    const/4 v7, 0x1

    goto :goto_b

    :cond_8
    move/from16 v17, v7

    array-length v7, v5

    .line 1064
    .local v7, "NPA":I
    .local v17, "NSS":I
    :goto_b
    const-wide/16 v18, 0x0

    .line 1065
    .local v18, "totalTime":J
    move/from16 v20, v8

    move/from16 v21, v9

    move-wide/from16 v8, v18

    const/16 v18, 0x0

    .end local v9    # "NPS":I
    .local v8, "totalTime":J
    .local v18, "isa":I
    .local v20, "NMS":I
    .local v21, "NPS":I
    :goto_c
    move/from16 v22, v18

    .end local v18    # "isa":I
    .local v22, "isa":I
    move/from16 v23, v11

    move/from16 v11, v22

    if-ge v11, v6, :cond_e

    .line 1066
    .end local v22    # "isa":I
    .local v11, "isa":I
    .local v23, "iss":I
    move-wide/from16 v18, v8

    const/4 v8, 0x0

    .local v8, "ima":I
    .local v18, "totalTime":J
    :goto_d
    if-ge v8, v10, :cond_d

    .line 1067
    const/4 v9, 0x0

    .local v9, "ipa":I
    :goto_e
    if-ge v9, v7, :cond_c

    .line 1068
    if-eqz p2, :cond_9

    const/16 v22, 0x0

    goto :goto_f

    :cond_9
    aget v22, v2, v11

    .line 1069
    .local v22, "vascreen":I
    :goto_f
    if-eqz p4, :cond_a

    const/16 v24, 0x0

    goto :goto_10

    :cond_a
    aget v24, v4, v8

    .line 1070
    .local v24, "vamem":I
    :goto_10
    if-eqz p6, :cond_b

    const/16 v25, 0x0

    goto :goto_11

    :cond_b
    aget v25, v5, v9

    .line 1071
    .local v25, "vaproc":I
    :goto_11
    add-int v26, v14, v22

    add-int v26, v26, v15

    add-int v26, v26, v24

    mul-int/lit8 v26, v26, 0xe

    add-int v26, v26, v16

    add-int v1, v26, v25

    .line 1073
    .local v1, "bucket":I
    move-object/from16 v2, p0

    move-wide/from16 v3, p8

    invoke-virtual {v2, v1, v3, v4}, Lcom/android/internal/app/procstats/ProcessState;->getDuration(IJ)J

    move-result-wide v27

    add-long v18, v18, v27

    .line 1067
    .end local v1    # "bucket":I
    .end local v22    # "vascreen":I
    .end local v24    # "vamem":I
    .end local v25    # "vaproc":I
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v2, p3

    move-object/from16 v4, p5

    goto :goto_e

    .line 1066
    .end local v9    # "ipa":I
    :cond_c
    move-object/from16 v2, p0

    move-wide/from16 v3, p8

    add-int/lit8 v8, v8, 0x1

    move-object/from16 v2, p3

    move-object/from16 v4, p5

    goto :goto_d

    .line 1065
    .end local v8    # "ima":I
    :cond_d
    move-object/from16 v2, p0

    move-wide/from16 v3, p8

    add-int/lit8 v1, v11, 0x1

    .end local v11    # "isa":I
    .local v1, "isa":I
    move-wide/from16 v8, v18

    move/from16 v11, v23

    move-object/from16 v2, p3

    move-object/from16 v4, p5

    move/from16 v18, v1

    goto :goto_c

    .line 1077
    .end local v1    # "isa":I
    .end local v18    # "totalTime":J
    .local v8, "totalTime":J
    :cond_e
    move-object/from16 v2, p0

    move-wide/from16 v3, p8

    const-string v1, "\t"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1078
    invoke-virtual {v0, v8, v9}, Ljava/io/PrintWriter;->print(J)V

    .line 1057
    .end local v6    # "NSA":I
    .end local v7    # "NPA":I
    .end local v8    # "totalTime":J
    .end local v10    # "NMA":I
    .end local v14    # "vsscreen":I
    .end local v15    # "vsmem":I
    .end local v16    # "vsproc":I
    add-int/lit8 v13, v13, 0x1

    move/from16 v7, v17

    move/from16 v8, v20

    move/from16 v9, v21

    move/from16 v11, v23

    move-object/from16 v2, p3

    move-object/from16 v4, p5

    goto/16 :goto_5

    .line 1056
    .end local v13    # "ips":I
    .end local v17    # "NSS":I
    .end local v20    # "NMS":I
    .end local v21    # "NPS":I
    .end local v23    # "iss":I
    .local v7, "NSS":I
    .local v8, "NMS":I
    .local v9, "NPS":I
    .local v11, "iss":I
    :cond_f
    move-object/from16 v2, p0

    move-wide/from16 v3, p8

    move/from16 v17, v7

    move/from16 v20, v8

    move/from16 v21, v9

    move/from16 v23, v11

    .end local v7    # "NSS":I
    .end local v8    # "NMS":I
    .end local v9    # "NPS":I
    .end local v11    # "iss":I
    .restart local v17    # "NSS":I
    .restart local v20    # "NMS":I
    .restart local v21    # "NPS":I
    .restart local v23    # "iss":I
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v2, p3

    move-object/from16 v4, p5

    goto/16 :goto_4

    .line 1055
    .end local v12    # "ims":I
    .end local v17    # "NSS":I
    .end local v20    # "NMS":I
    .end local v21    # "NPS":I
    .end local v23    # "iss":I
    .restart local v7    # "NSS":I
    .restart local v8    # "NMS":I
    .restart local v9    # "NPS":I
    .restart local v11    # "iss":I
    :cond_10
    move-object/from16 v2, p0

    move-wide/from16 v3, p8

    move/from16 v17, v7

    move/from16 v20, v8

    move/from16 v21, v9

    move/from16 v23, v11

    .end local v7    # "NSS":I
    .end local v8    # "NMS":I
    .end local v9    # "NPS":I
    .end local v11    # "iss":I
    .restart local v17    # "NSS":I
    .restart local v20    # "NMS":I
    .restart local v21    # "NPS":I
    .restart local v23    # "iss":I
    add-int/lit8 v11, v23, 0x1

    .end local v23    # "iss":I
    .restart local v11    # "iss":I
    move-object/from16 v2, p3

    move-object/from16 v4, p5

    goto/16 :goto_3

    .line 1082
    .end local v11    # "iss":I
    .end local v17    # "NSS":I
    .end local v20    # "NMS":I
    .end local v21    # "NPS":I
    .restart local v7    # "NSS":I
    .restart local v8    # "NMS":I
    .restart local v9    # "NPS":I
    :cond_11
    move-object/from16 v2, p0

    move-wide/from16 v3, p8

    move/from16 v17, v7

    move/from16 v20, v8

    move/from16 v21, v9

    .end local v7    # "NSS":I
    .end local v8    # "NMS":I
    .end local v9    # "NPS":I
    .restart local v17    # "NSS":I
    .restart local v20    # "NMS":I
    .restart local v21    # "NPS":I
    return-void
.end method

.method public dumpInternalLocked(Ljava/io/PrintWriter;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "dumpAll"    # Z

    .line 956
    if-eqz p3, :cond_1

    .line 957
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "myID="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 958
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 959
    const-string v0, " mCommonProcess="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 960
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 961
    const-string v0, " mPackage="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mPackage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 962
    iget-boolean v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mMultiPackage:Z

    if-eqz v0, :cond_0

    .line 963
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mMultiPackage="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mMultiPackage:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 965
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    if-eq p0, v0, :cond_1

    .line 966
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Common Proc: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    iget-object v0, v0, Lcom/android/internal/app/procstats/ProcessState;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 967
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    iget v0, v0, Lcom/android/internal/app/procstats/ProcessState;->mUid:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 968
    const-string v0, " pkg="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    iget-object v0, v0, Lcom/android/internal/app/procstats/ProcessState;->mPackage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 971
    :cond_1
    iget-boolean v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mActive:Z

    if-eqz v0, :cond_2

    .line 972
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mActive="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mActive:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 974
    :cond_2
    iget-boolean v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mDead:Z

    if-eqz v0, :cond_3

    .line 975
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mDead="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mDead:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 977
    :cond_3
    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumActiveServices:I

    if-nez v0, :cond_4

    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumStartedServices:I

    if-eqz v0, :cond_5

    .line 978
    :cond_4
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mNumActiveServices="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumActiveServices:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 979
    const-string v0, " mNumStartedServices="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 980
    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumStartedServices:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 982
    :cond_5
    return-void
.end method

.method public dumpPackageProcCheckin(Ljava/io/PrintWriter;Ljava/lang/String;IJLjava/lang/String;J)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "vers"    # J
    .param p6, "itemName"    # Ljava/lang/String;
    .param p7, "now"    # J

    .line 1086
    const-string/jumbo v0, "pkgproc,"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1087
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1088
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1089
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(I)V

    .line 1090
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1091
    invoke-virtual {p1, p4, p5}, Ljava/io/PrintWriter;->print(J)V

    .line 1092
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1093
    invoke-static {p2, p6}, Lcom/android/internal/app/procstats/DumpUtils;->collapseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1094
    invoke-virtual {p0, p1, p7, p8}, Lcom/android/internal/app/procstats/ProcessState;->dumpAllStateCheckin(Ljava/io/PrintWriter;J)V

    .line 1095
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1096
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    invoke-virtual {v0}, Lcom/android/internal/app/procstats/PssTable;->getKeyCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 1097
    const-string/jumbo v0, "pkgpss,"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1098
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1099
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1100
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(I)V

    .line 1101
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1102
    invoke-virtual {p1, p4, p5}, Ljava/io/PrintWriter;->print(J)V

    .line 1103
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1104
    invoke-static {p2, p6}, Lcom/android/internal/app/procstats/DumpUtils;->collapseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1105
    invoke-virtual {p0, p1}, Lcom/android/internal/app/procstats/ProcessState;->dumpAllPssCheckin(Ljava/io/PrintWriter;)V

    .line 1106
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1108
    :cond_0
    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveCpu:I

    if-gtz v0, :cond_1

    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    if-lez v0, :cond_2

    .line 1109
    :cond_1
    const-string/jumbo v0, "pkgkills,"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1110
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1111
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1112
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(I)V

    .line 1113
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1114
    invoke-virtual {p1, p4, p5}, Ljava/io/PrintWriter;->print(J)V

    .line 1115
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1116
    invoke-static {p2, p6}, Lcom/android/internal/app/procstats/DumpUtils;->collapseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1117
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1118
    const-string v0, "0"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1119
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1120
    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveCpu:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1121
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1122
    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1123
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1124
    iget-wide v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mMinCachedKillPss:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 1125
    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1126
    iget-wide v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mAvgCachedKillPss:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 1127
    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1128
    iget-wide v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mMaxCachedKillPss:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 1129
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1131
    :cond_2
    return-void
.end method

.method public dumpProcCheckin(Ljava/io/PrintWriter;Ljava/lang/String;IJ)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "procName"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "now"    # J

    .line 1134
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v0}, Lcom/android/internal/app/procstats/DurationsTable;->getKeyCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 1135
    const-string/jumbo v0, "proc,"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1136
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1137
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1138
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(I)V

    .line 1139
    invoke-virtual {p0, p1, p4, p5}, Lcom/android/internal/app/procstats/ProcessState;->dumpAllStateCheckin(Ljava/io/PrintWriter;J)V

    .line 1140
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1142
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    invoke-virtual {v0}, Lcom/android/internal/app/procstats/PssTable;->getKeyCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 1143
    const-string/jumbo v0, "pss,"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1144
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1145
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1146
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(I)V

    .line 1147
    invoke-virtual {p0, p1}, Lcom/android/internal/app/procstats/ProcessState;->dumpAllPssCheckin(Ljava/io/PrintWriter;)V

    .line 1148
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1152
    :cond_1
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    invoke-virtual {v0}, Lcom/android/internal/app/procstats/PssTable;->getKeyCount()I

    move-result v0

    if-gtz v0, :cond_2

    .line 1153
    const-string/jumbo v0, "pss,"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1154
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1155
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1156
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(I)V

    .line 1158
    const/16 v0, 0x2c

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 1159
    const-string v0, "1mp"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1160
    const/16 v0, 0x3a

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 1161
    const-string v1, "0"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1162
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 1163
    const-string v1, "0"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1164
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 1165
    const-string v1, "0"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1166
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 1167
    const-string v1, "0"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1168
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 1169
    const-string v1, "0"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1170
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 1171
    const-string v1, "0"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1172
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 1173
    const-string v0, "0"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1175
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1179
    :cond_2
    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveCpu:I

    if-gtz v0, :cond_3

    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    if-lez v0, :cond_4

    .line 1180
    :cond_3
    const-string v0, "kills,"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1181
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1182
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1183
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(I)V

    .line 1184
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1185
    const-string v0, "0"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1186
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1187
    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveCpu:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1188
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1189
    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1190
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1191
    iget-wide v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mMinCachedKillPss:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 1192
    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1193
    iget-wide v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mAvgCachedKillPss:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 1194
    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1195
    iget-wide v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mMaxCachedKillPss:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 1196
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1198
    :cond_4
    return-void
.end method

.method public dumpProcessState(Ljava/io/PrintWriter;Ljava/lang/String;[I[I[IJ)V
    .locals 22
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "screenStates"    # [I
    .param p4, "memStates"    # [I
    .param p5, "procStates"    # [I
    .param p6, "now"    # J

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    .line 816
    const-wide/16 v5, 0x0

    .line 817
    .local v5, "totalTime":J
    const/4 v7, -0x1

    .line 818
    .local v7, "printedScreen":I
    move v9, v7

    move-wide v6, v5

    const/4 v5, 0x0

    .end local v7    # "printedScreen":I
    .local v5, "is":I
    .local v6, "totalTime":J
    .local v9, "printedScreen":I
    :goto_0
    array-length v10, v2

    if-ge v5, v10, :cond_8

    .line 819
    const/4 v10, -0x1

    .line 820
    .local v10, "printedMem":I
    move-wide/from16 v16, v6

    const/4 v6, 0x0

    .local v6, "im":I
    .local v16, "totalTime":J
    :goto_1
    array-length v7, v3

    if-ge v6, v7, :cond_7

    .line 821
    const/4 v7, 0x0

    .local v7, "ip":I
    :goto_2
    array-length v8, v4

    if-ge v7, v8, :cond_6

    .line 822
    aget v8, v2, v5

    .line 823
    .local v8, "iscreen":I
    aget v14, v3, v6

    .line 824
    .local v14, "imem":I
    add-int v18, v8, v14

    mul-int/lit8 v18, v18, 0xe

    aget v19, v4, v7

    add-int v11, v18, v19

    .line 825
    .local v11, "bucket":I
    iget-object v15, v0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    int-to-byte v12, v11

    invoke-virtual {v15, v12}, Lcom/android/internal/app/procstats/DurationsTable;->getValueForId(B)J

    move-result-wide v12

    .line 826
    .local v12, "time":J
    const-string v15, ""

    .line 827
    .local v15, "running":Ljava/lang/String;
    move-object/from16 v20, v15

    iget v15, v0, Lcom/android/internal/app/procstats/ProcessState;->mCurState:I

    .end local v15    # "running":Ljava/lang/String;
    .local v20, "running":Ljava/lang/String;
    if-ne v15, v11, :cond_0

    .line 828
    const-string v15, " (running)"

    .end local v20    # "running":Ljava/lang/String;
    .restart local v15    # "running":Ljava/lang/String;
    goto :goto_3

    .line 830
    .end local v15    # "running":Ljava/lang/String;
    .restart local v20    # "running":Ljava/lang/String;
    :cond_0
    move-object/from16 v15, v20

    .end local v20    # "running":Ljava/lang/String;
    .restart local v15    # "running":Ljava/lang/String;
    :goto_3
    const-wide/16 v18, 0x0

    cmp-long v20, v12, v18

    if-eqz v20, :cond_5

    .line 831
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 832
    array-length v0, v2

    move/from16 v21, v11

    const/4 v11, 0x1

    if-le v0, v11, :cond_2

    .line 833
    .end local v11    # "bucket":I
    .local v21, "bucket":I
    if-eq v9, v8, :cond_1

    .line 834
    nop

    .line 833
    move v0, v8

    goto :goto_4

    .line 834
    :cond_1
    nop

    .line 833
    const/4 v0, -0x1

    :goto_4
    invoke-static {v1, v0}, Lcom/android/internal/app/procstats/DumpUtils;->printScreenLabel(Ljava/io/PrintWriter;I)V

    .line 835
    move v9, v8

    .line 837
    :cond_2
    array-length v0, v3

    const/4 v11, 0x1

    if-le v0, v11, :cond_4

    .line 838
    nop

    .line 839
    if-eq v10, v14, :cond_3

    move v0, v14

    goto :goto_5

    :cond_3
    const/4 v0, -0x1

    .line 838
    :goto_5
    const/16 v11, 0x2f

    invoke-static {v1, v0, v11}, Lcom/android/internal/app/procstats/DumpUtils;->printMemLabel(Ljava/io/PrintWriter;IC)V

    .line 840
    move v0, v14

    .line 842
    .end local v10    # "printedMem":I
    .local v0, "printedMem":I
    move v10, v0

    .end local v0    # "printedMem":I
    .restart local v10    # "printedMem":I
    :cond_4
    sget-object v0, Lcom/android/internal/app/procstats/DumpUtils;->STATE_NAMES:[Ljava/lang/String;

    aget v11, v4, v7

    aget-object v0, v0, v11

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, ": "

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 843
    invoke-static {v12, v13, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual {v1, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 844
    add-long v16, v16, v12

    .line 821
    .end local v8    # "iscreen":I
    .end local v12    # "time":J
    .end local v14    # "imem":I
    .end local v15    # "running":Ljava/lang/String;
    .end local v21    # "bucket":I
    :cond_5
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, p0

    goto :goto_2

    .line 820
    .end local v7    # "ip":I
    :cond_6
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p0

    goto :goto_1

    .line 818
    .end local v6    # "im":I
    .end local v10    # "printedMem":I
    :cond_7
    add-int/lit8 v5, v5, 0x1

    move-wide/from16 v6, v16

    move-object/from16 v0, p0

    goto :goto_0

    .line 849
    .end local v5    # "is":I
    .end local v16    # "totalTime":J
    .local v6, "totalTime":J
    :cond_8
    const-wide/16 v10, 0x0

    cmp-long v0, v6, v10

    if-eqz v0, :cond_b

    .line 850
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 851
    array-length v0, v2

    const/4 v5, 0x1

    if-le v0, v5, :cond_9

    .line 852
    const/4 v0, -0x1

    invoke-static {v1, v0}, Lcom/android/internal/app/procstats/DumpUtils;->printScreenLabel(Ljava/io/PrintWriter;I)V

    goto :goto_6

    .line 854
    :cond_9
    const/4 v0, -0x1

    :goto_6
    array-length v8, v3

    if-le v8, v5, :cond_a

    .line 855
    const/16 v5, 0x2f

    invoke-static {v1, v0, v5}, Lcom/android/internal/app/procstats/DumpUtils;->printMemLabel(Ljava/io/PrintWriter;IC)V

    .line 857
    :cond_a
    const-string v0, "TOTAL  : "

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 858
    invoke-static {v6, v7, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 859
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 861
    :cond_b
    return-void
.end method

.method public dumpPss(Ljava/io/PrintWriter;Ljava/lang/String;[I[I[I)V
    .locals 23
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "screenStates"    # [I
    .param p4, "memStates"    # [I
    .param p5, "procStates"    # [I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    .line 865
    move-object/from16 v4, p5

    const/4 v5, 0x0

    .line 866
    .local v5, "printedHeader":Z
    const/4 v6, -0x1

    .line 867
    .local v6, "printedScreen":I
    move v8, v6

    move v6, v5

    const/4 v5, 0x0

    .local v5, "is":I
    .local v6, "printedHeader":Z
    .local v8, "printedScreen":I
    :goto_0
    array-length v9, v2

    if-ge v5, v9, :cond_8

    .line 868
    const/4 v9, -0x1

    .line 869
    .local v9, "printedMem":I
    move v12, v8

    move v8, v6

    const/4 v6, 0x0

    .local v6, "im":I
    .local v8, "printedHeader":Z
    .local v12, "printedScreen":I
    :goto_1
    array-length v13, v3

    if-ge v6, v13, :cond_7

    .line 870
    move v13, v9

    move v9, v8

    const/4 v8, 0x0

    .local v8, "ip":I
    .local v9, "printedHeader":Z
    .local v13, "printedMem":I
    :goto_2
    array-length v14, v4

    if-ge v8, v14, :cond_6

    .line 871
    aget v14, v2, v5

    .line 872
    .local v14, "iscreen":I
    aget v15, v3, v6

    .line 873
    .local v15, "imem":I
    add-int v16, v14, v15

    mul-int/lit8 v16, v16, 0xe

    aget v17, v4, v8

    add-int v7, v16, v17

    .line 874
    .local v7, "bucket":I
    invoke-virtual {v0, v7}, Lcom/android/internal/app/procstats/ProcessState;->getPssSampleCount(I)J

    move-result-wide v10

    .line 875
    .local v10, "count":J
    const-wide/16 v16, 0x0

    cmp-long v16, v10, v16

    if-lez v16, :cond_5

    .line 876
    if-nez v9, :cond_0

    .line 877
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 878
    move/from16 v20, v9

    const-string v9, "PSS/USS ("

    .end local v9    # "printedHeader":Z
    .local v20, "printedHeader":Z
    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 879
    iget-object v9, v0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    invoke-virtual {v9}, Lcom/android/internal/app/procstats/PssTable;->getKeyCount()I

    move-result v9

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(I)V

    .line 880
    const-string v9, " entries):"

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 881
    const/4 v9, 0x1

    .end local v20    # "printedHeader":Z
    .restart local v9    # "printedHeader":Z
    goto :goto_3

    .line 883
    :cond_0
    move/from16 v20, v9

    :goto_3
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 884
    move/from16 v21, v9

    const-string v9, "  "

    .end local v9    # "printedHeader":Z
    .local v21, "printedHeader":Z
    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 885
    array-length v9, v2

    const/16 v16, -0x1

    const/4 v2, 0x1

    if-le v9, v2, :cond_2

    .line 886
    nop

    .line 887
    if-eq v12, v14, :cond_1

    .line 886
    move v9, v14

    goto :goto_4

    .line 887
    :cond_1
    nop

    .line 886
    move/from16 v9, v16

    :goto_4
    invoke-static {v1, v9}, Lcom/android/internal/app/procstats/DumpUtils;->printScreenLabel(Ljava/io/PrintWriter;I)V

    .line 888
    move v12, v14

    .line 890
    :cond_2
    array-length v9, v3

    if-le v9, v2, :cond_4

    .line 891
    nop

    .line 892
    if-eq v13, v15, :cond_3

    move v2, v15

    goto :goto_5

    :cond_3
    move/from16 v2, v16

    :goto_5
    const/16 v9, 0x2f

    .line 891
    invoke-static {v1, v2, v9}, Lcom/android/internal/app/procstats/DumpUtils;->printMemLabel(Ljava/io/PrintWriter;IC)V

    .line 893
    move v2, v15

    .line 895
    .end local v13    # "printedMem":I
    .local v2, "printedMem":I
    move v13, v2

    .end local v2    # "printedMem":I
    .restart local v13    # "printedMem":I
    :cond_4
    sget-object v2, Lcom/android/internal/app/procstats/DumpUtils;->STATE_NAMES:[Ljava/lang/String;

    aget v9, v4, v8

    aget-object v2, v2, v9

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 896
    invoke-virtual {v1, v10, v11}, Ljava/io/PrintWriter;->print(J)V

    .line 897
    const-string v2, " samples "

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 898
    invoke-virtual {v0, v7}, Lcom/android/internal/app/procstats/ProcessState;->getPssMinimum(I)J

    move-result-wide v16

    const-wide/16 v18, 0x400

    mul-long v2, v16, v18

    invoke-static {v1, v2, v3}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 899
    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 900
    invoke-virtual {v0, v7}, Lcom/android/internal/app/procstats/ProcessState;->getPssAverage(I)J

    move-result-wide v2

    mul-long v2, v2, v18

    invoke-static {v1, v2, v3}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 901
    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 902
    invoke-virtual {v0, v7}, Lcom/android/internal/app/procstats/ProcessState;->getPssMaximum(I)J

    move-result-wide v2

    mul-long v2, v2, v18

    invoke-static {v1, v2, v3}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 903
    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 904
    invoke-virtual {v0, v7}, Lcom/android/internal/app/procstats/ProcessState;->getPssUssMinimum(I)J

    move-result-wide v2

    mul-long v2, v2, v18

    invoke-static {v1, v2, v3}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 905
    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 906
    invoke-virtual {v0, v7}, Lcom/android/internal/app/procstats/ProcessState;->getPssUssAverage(I)J

    move-result-wide v2

    mul-long v2, v2, v18

    invoke-static {v1, v2, v3}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 907
    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 908
    invoke-virtual {v0, v7}, Lcom/android/internal/app/procstats/ProcessState;->getPssUssMaximum(I)J

    move-result-wide v2

    mul-long v2, v2, v18

    invoke-static {v1, v2, v3}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 909
    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 910
    invoke-virtual {v0, v7}, Lcom/android/internal/app/procstats/ProcessState;->getPssRssMinimum(I)J

    move-result-wide v2

    mul-long v2, v2, v18

    invoke-static {v1, v2, v3}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 911
    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 912
    invoke-virtual {v0, v7}, Lcom/android/internal/app/procstats/ProcessState;->getPssRssAverage(I)J

    move-result-wide v2

    mul-long v2, v2, v18

    invoke-static {v1, v2, v3}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 913
    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 914
    invoke-virtual {v0, v7}, Lcom/android/internal/app/procstats/ProcessState;->getPssRssMaximum(I)J

    move-result-wide v2

    mul-long v2, v2, v18

    invoke-static {v1, v2, v3}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 915
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 870
    .end local v7    # "bucket":I
    .end local v10    # "count":J
    .end local v14    # "iscreen":I
    .end local v15    # "imem":I
    move/from16 v9, v21

    goto :goto_6

    .end local v21    # "printedHeader":Z
    .restart local v9    # "printedHeader":Z
    :cond_5
    move/from16 v20, v9

    :goto_6
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    goto/16 :goto_2

    .line 869
    .end local v8    # "ip":I
    :cond_6
    move/from16 v20, v9

    .end local v9    # "printedHeader":Z
    .restart local v20    # "printedHeader":Z
    add-int/lit8 v6, v6, 0x1

    move v9, v13

    move/from16 v8, v20

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    goto/16 :goto_1

    .line 867
    .end local v6    # "im":I
    .end local v13    # "printedMem":I
    .end local v20    # "printedHeader":Z
    .local v8, "printedHeader":Z
    :cond_7
    add-int/lit8 v5, v5, 0x1

    move v6, v8

    move v8, v12

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    goto/16 :goto_0

    .line 920
    .end local v5    # "is":I
    .end local v12    # "printedScreen":I
    .local v6, "printedHeader":Z
    .local v8, "printedScreen":I
    :cond_8
    iget v2, v0, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveCpu:I

    if-eqz v2, :cond_9

    .line 921
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "Killed for excessive CPU use: "

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 922
    iget v2, v0, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveCpu:I

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string v2, " times"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 924
    :cond_9
    iget v2, v0, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    if-eqz v2, :cond_a

    .line 925
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "Killed from cached state: "

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 926
    iget v2, v0, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string v2, " times from pss "

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 927
    iget-wide v2, v0, Lcom/android/internal/app/procstats/ProcessState;->mMinCachedKillPss:J

    const-wide/16 v9, 0x400

    mul-long/2addr v2, v9

    invoke-static {v1, v2, v3}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 928
    iget-wide v2, v0, Lcom/android/internal/app/procstats/ProcessState;->mAvgCachedKillPss:J

    mul-long/2addr v2, v9

    invoke-static {v1, v2, v3}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 929
    iget-wide v2, v0, Lcom/android/internal/app/procstats/ProcessState;->mMaxCachedKillPss:J

    mul-long/2addr v2, v9

    invoke-static {v1, v2, v3}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 931
    :cond_a
    return-void
.end method

.method public dumpSummary(Ljava/io/PrintWriter;Ljava/lang/String;[I[I[IJJ)V
    .locals 18
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "screenStates"    # [I
    .param p4, "memStates"    # [I
    .param p5, "procStates"    # [I
    .param p6, "now"    # J
    .param p8, "totalTime"    # J

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    .line 775
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 776
    const-string v0, "* "

    invoke-virtual {v13, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 777
    iget-object v0, v12, Lcom/android/internal/app/procstats/ProcessState;->mName:Ljava/lang/String;

    invoke-virtual {v13, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 778
    const-string v0, " / "

    invoke-virtual {v13, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 779
    iget v0, v12, Lcom/android/internal/app/procstats/ProcessState;->mUid:I

    invoke-static {v13, v0}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 780
    const-string v0, " / v"

    invoke-virtual {v13, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 781
    iget-wide v0, v12, Lcom/android/internal/app/procstats/ProcessState;->mVersion:J

    invoke-virtual {v13, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 782
    const-string v0, ":"

    invoke-virtual {v13, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 783
    const-string v3, "         TOTAL: "

    const/4 v11, 0x1

    move-object v0, v12

    move-object v1, v13

    move-object/from16 v2, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-wide/from16 v7, p6

    move-wide/from16 v9, p8

    invoke-direct/range {v0 .. v11}, Lcom/android/internal/app/procstats/ProcessState;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    .line 785
    const-string v3, "    Persistent: "

    const/4 v14, 0x1

    new-array v6, v14, [I

    const/4 v15, 0x0

    aput v15, v6, v15

    invoke-direct/range {v0 .. v11}, Lcom/android/internal/app/procstats/ProcessState;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    .line 787
    const-string v3, "           Top: "

    new-array v6, v14, [I

    aput v14, v6, v15

    invoke-direct/range {v0 .. v11}, Lcom/android/internal/app/procstats/ProcessState;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    .line 789
    const-string v3, "        Imp Fg: "

    new-array v6, v14, [I

    const/4 v0, 0x2

    aput v0, v6, v15

    move-object v0, v12

    invoke-direct/range {v0 .. v11}, Lcom/android/internal/app/procstats/ProcessState;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    .line 791
    const-string v3, "        Imp Bg: "

    new-array v6, v14, [I

    const/4 v11, 0x3

    aput v11, v6, v15

    const/16 v16, 0x1

    move/from16 v11, v16

    invoke-direct/range {v0 .. v11}, Lcom/android/internal/app/procstats/ProcessState;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    .line 793
    const-string v3, "        Backup: "

    new-array v6, v14, [I

    const/4 v0, 0x4

    aput v0, v6, v15

    const/4 v11, 0x1

    move-object v0, v12

    invoke-direct/range {v0 .. v11}, Lcom/android/internal/app/procstats/ProcessState;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    .line 795
    const-string v3, "     Heavy Wgt: "

    new-array v6, v14, [I

    const/16 v0, 0x8

    aput v0, v6, v15

    move-object v0, v12

    invoke-direct/range {v0 .. v11}, Lcom/android/internal/app/procstats/ProcessState;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    .line 797
    const-string v3, "       Service: "

    new-array v6, v14, [I

    const/4 v0, 0x5

    aput v0, v6, v15

    move-object v0, v12

    invoke-direct/range {v0 .. v11}, Lcom/android/internal/app/procstats/ProcessState;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    .line 799
    const-string v3, "    Service Rs: "

    new-array v6, v14, [I

    const/4 v0, 0x6

    aput v0, v6, v15

    move-object v0, v12

    invoke-direct/range {v0 .. v11}, Lcom/android/internal/app/procstats/ProcessState;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    .line 801
    const-string v3, "      Receiver: "

    new-array v6, v14, [I

    const/4 v0, 0x7

    aput v0, v6, v15

    move-object v0, v12

    invoke-direct/range {v0 .. v11}, Lcom/android/internal/app/procstats/ProcessState;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    .line 803
    const-string v3, "         Heavy: "

    new-array v6, v14, [I

    const/16 v16, 0x9

    aput v16, v6, v15

    invoke-direct/range {v0 .. v11}, Lcom/android/internal/app/procstats/ProcessState;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    .line 805
    const-string v3, "        (Home): "

    new-array v6, v14, [I

    aput v16, v6, v15

    invoke-direct/range {v0 .. v11}, Lcom/android/internal/app/procstats/ProcessState;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    .line 807
    const-string v3, "    (Last Act): "

    new-array v6, v14, [I

    const/16 v0, 0xa

    aput v0, v6, v15

    move-object v0, v12

    invoke-direct/range {v0 .. v11}, Lcom/android/internal/app/procstats/ProcessState;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    .line 809
    const-string v3, "      (Cached): "

    const/4 v0, 0x3

    new-array v6, v0, [I

    fill-array-data v6, :array_0

    move-object v0, v12

    invoke-direct/range {v0 .. v11}, Lcom/android/internal/app/procstats/ProcessState;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    .line 812
    return-void

    nop

    :array_0
    .array-data 4
        0xb
        0xc
        0xd
    .end array-data
.end method

.method public getCommonProcess()Lcom/android/internal/app/procstats/ProcessState;
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    return-object v0
.end method

.method public getDuration(IJ)J
    .locals 4
    .param p1, "state"    # I
    .param p2, "now"    # J

    .line 621
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    int-to-byte v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/app/procstats/DurationsTable;->getValueForId(B)J

    move-result-wide v0

    .line 622
    .local v0, "time":J
    iget v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mCurState:I

    if-ne v2, p1, :cond_0

    .line 623
    iget-wide v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mStartTime:J

    sub-long v2, p2, v2

    add-long/2addr v0, v2

    .line 625
    :cond_0
    return-wide v0
.end method

.method public getDurationsBucketCount()I
    .locals 1

    .line 240
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v0}, Lcom/android/internal/app/procstats/DurationsTable;->getKeyCount()I

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 205
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPackage()Ljava/lang/String;
    .locals 1

    .line 220
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mPackage:Ljava/lang/String;

    return-object v0
.end method

.method public getPssAverage(I)J
    .locals 3
    .param p1, "state"    # I

    .line 637
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    int-to-byte v1, p1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/procstats/PssTable;->getValueForId(BI)J

    move-result-wide v0

    return-wide v0
.end method

.method public getPssMaximum(I)J
    .locals 3
    .param p1, "state"    # I

    .line 641
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    int-to-byte v1, p1

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/procstats/PssTable;->getValueForId(BI)J

    move-result-wide v0

    return-wide v0
.end method

.method public getPssMinimum(I)J
    .locals 3
    .param p1, "state"    # I

    .line 633
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    int-to-byte v1, p1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/procstats/PssTable;->getValueForId(BI)J

    move-result-wide v0

    return-wide v0
.end method

.method public getPssRssAverage(I)J
    .locals 3
    .param p1, "state"    # I

    .line 661
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    int-to-byte v1, p1

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/procstats/PssTable;->getValueForId(BI)J

    move-result-wide v0

    return-wide v0
.end method

.method public getPssRssMaximum(I)J
    .locals 3
    .param p1, "state"    # I

    .line 665
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    int-to-byte v1, p1

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/procstats/PssTable;->getValueForId(BI)J

    move-result-wide v0

    return-wide v0
.end method

.method public getPssRssMinimum(I)J
    .locals 3
    .param p1, "state"    # I

    .line 657
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    int-to-byte v1, p1

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/procstats/PssTable;->getValueForId(BI)J

    move-result-wide v0

    return-wide v0
.end method

.method public getPssSampleCount(I)J
    .locals 3
    .param p1, "state"    # I

    .line 629
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    int-to-byte v1, p1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/procstats/PssTable;->getValueForId(BI)J

    move-result-wide v0

    return-wide v0
.end method

.method public getPssUssAverage(I)J
    .locals 3
    .param p1, "state"    # I

    .line 649
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    int-to-byte v1, p1

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/procstats/PssTable;->getValueForId(BI)J

    move-result-wide v0

    return-wide v0
.end method

.method public getPssUssMaximum(I)J
    .locals 3
    .param p1, "state"    # I

    .line 653
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    int-to-byte v1, p1

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/procstats/PssTable;->getValueForId(BI)J

    move-result-wide v0

    return-wide v0
.end method

.method public getPssUssMinimum(I)J
    .locals 3
    .param p1, "state"    # I

    .line 645
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    int-to-byte v1, p1

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/procstats/PssTable;->getValueForId(BI)J

    move-result-wide v0

    return-wide v0
.end method

.method public getUid()I
    .locals 1

    .line 224
    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mUid:I

    return v0
.end method

.method public getVersion()J
    .locals 2

    .line 228
    iget-wide v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mVersion:J

    return-wide v0
.end method

.method public hasAnyData()Z
    .locals 2

    .line 335
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v0}, Lcom/android/internal/app/procstats/DurationsTable;->getKeyCount()I

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCurState:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    .line 337
    invoke-virtual {v0}, Lcom/android/internal/app/procstats/PssTable;->getKeyCount()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 335
    :goto_1
    return v0
.end method

.method public incActiveServices(Ljava/lang/String;)V
    .locals 1
    .param p1, "serviceName"    # Ljava/lang/String;

    .line 398
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    if-eq v0, p0, :cond_0

    .line 399
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    invoke-virtual {v0, p1}, Lcom/android/internal/app/procstats/ProcessState;->incActiveServices(Ljava/lang/String;)V

    .line 401
    :cond_0
    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumActiveServices:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumActiveServices:I

    .line 402
    return-void
.end method

.method public incStartedServices(IJLjava/lang/String;)V
    .locals 2
    .param p1, "memFactor"    # I
    .param p2, "now"    # J
    .param p4, "serviceName"    # Ljava/lang/String;

    .line 429
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    if-eq v0, p0, :cond_0

    .line 430
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/internal/app/procstats/ProcessState;->incStartedServices(IJLjava/lang/String;)V

    .line 432
    :cond_0
    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumStartedServices:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumStartedServices:I

    .line 433
    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumStartedServices:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCurState:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 434
    const/4 v0, 0x6

    mul-int/lit8 v1, p1, 0xe

    add-int/2addr v0, v1

    invoke-virtual {p0, v0, p2, p3}, Lcom/android/internal/app/procstats/ProcessState;->setState(IJ)V

    .line 436
    :cond_1
    return-void
.end method

.method public isActive()Z
    .locals 1

    .line 331
    iget-boolean v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mActive:Z

    return v0
.end method

.method public isInUse()Z
    .locals 2

    .line 326
    iget-boolean v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mActive:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumActiveServices:I

    if-gtz v0, :cond_1

    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumStartedServices:I

    if-gtz v0, :cond_1

    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCurState:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

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

.method public isMultiPackage()Z
    .locals 1

    .line 232
    iget-boolean v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mMultiPackage:Z

    return v0
.end method

.method public makeActive()V
    .locals 1

    .line 317
    invoke-direct {p0}, Lcom/android/internal/app/procstats/ProcessState;->ensureNotDead()V

    .line 318
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mActive:Z

    .line 319
    return-void
.end method

.method public makeDead()V
    .locals 1

    .line 265
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mDead:Z

    .line 266
    return-void
.end method

.method public makeInactive()V
    .locals 1

    .line 322
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mActive:Z

    .line 323
    return-void
.end method

.method public makeStandalone()V
    .locals 0

    .line 216
    iput-object p0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    .line 217
    return-void
.end method

.method public pullFixedProc(Ljava/lang/String;)Lcom/android/internal/app/procstats/ProcessState;
    .locals 7
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 554
    iget-boolean v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mMultiPackage:Z

    if-eqz v0, :cond_3

    .line 558
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-object v0, v0, Lcom/android/internal/app/procstats/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    iget v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mUid:I

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/LongSparseArray;

    .line 559
    .local v0, "vpkg":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;"
    if-eqz v0, :cond_2

    .line 563
    iget-wide v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mVersion:J

    invoke-virtual {v0, v1, v2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    .line 564
    .local v1, "pkg":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    if-eqz v1, :cond_1

    .line 568
    iget-object v2, v1, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    iget-object v3, p0, Lcom/android/internal/app/procstats/ProcessState;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/app/procstats/ProcessState;

    .line 569
    .local v2, "proc":Lcom/android/internal/app/procstats/ProcessState;
    if-eqz v2, :cond_0

    .line 573
    return-object v2

    .line 570
    :cond_0
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Didn\'t create per-package process "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/internal/app/procstats/ProcessState;->mName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " in pkg "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " / "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/internal/app/procstats/ProcessState;->mUid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " vers "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lcom/android/internal/app/procstats/ProcessState;->mVersion:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 565
    .end local v2    # "proc":Lcom/android/internal/app/procstats/ProcessState;
    :cond_1
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Didn\'t find package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " / "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/internal/app/procstats/ProcessState;->mUid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " vers "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/android/internal/app/procstats/ProcessState;->mVersion:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 560
    .end local v1    # "pkg":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Didn\'t find package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/internal/app/procstats/ProcessState;->mUid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 575
    .end local v0    # "vpkg":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;"
    :cond_3
    return-object p0
.end method

.method public readFromParcel(Landroid/os/Parcel;Z)Z
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;
    .param p2, "fully"    # Z

    .line 291
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 292
    .local v0, "multiPackage":Z
    :goto_0
    if-eqz p2, :cond_1

    .line 293
    iput-boolean v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mMultiPackage:Z

    .line 296
    :cond_1
    iget-object v3, p0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v3, p1}, Lcom/android/internal/app/procstats/DurationsTable;->readFromParcel(Landroid/os/Parcel;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 297
    return v2

    .line 300
    :cond_2
    iget-object v3, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    invoke-virtual {v3, p1}, Lcom/android/internal/app/procstats/PssTable;->readFromParcel(Landroid/os/Parcel;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 301
    return v2

    .line 303
    :cond_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 304
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveCpu:I

    .line 305
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    .line 306
    iget v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    if-lez v2, :cond_4

    .line 307
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mMinCachedKillPss:J

    .line 308
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mAvgCachedKillPss:J

    .line 309
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mMaxCachedKillPss:J

    goto :goto_1

    .line 311
    :cond_4
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mMaxCachedKillPss:J

    iput-wide v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mAvgCachedKillPss:J

    iput-wide v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mMinCachedKillPss:J

    .line 313
    :goto_1
    return v1
.end method

.method public reportCachedKill(Landroid/util/ArrayMap;J)V
    .locals 9
    .param p2, "pss"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;",
            ">;J)V"
        }
    .end annotation

    .line 542
    .local p1, "pkgList":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;>;"
    invoke-direct {p0}, Lcom/android/internal/app/procstats/ProcessState;->ensureNotDead()V

    .line 543
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    const/4 v1, 0x1

    move-wide v2, p2

    move-wide v4, p2

    move-wide v6, p2

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/app/procstats/ProcessState;->addCachedKill(IJJJ)V

    .line 544
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    iget-boolean v0, v0, Lcom/android/internal/app/procstats/ProcessState;->mMultiPackage:Z

    if-nez v0, :cond_0

    .line 545
    return-void

    .line 548
    :cond_0
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "ip":I
    :goto_0
    if-ltz v0, :cond_1

    .line 549
    invoke-direct {p0, p1, v0}, Lcom/android/internal/app/procstats/ProcessState;->pullFixedProc(Landroid/util/ArrayMap;I)Lcom/android/internal/app/procstats/ProcessState;

    move-result-object v1

    const/4 v2, 0x1

    move-wide v3, p2

    move-wide v5, p2

    move-wide v7, p2

    invoke-direct/range {v1 .. v8}, Lcom/android/internal/app/procstats/ProcessState;->addCachedKill(IJJJ)V

    .line 548
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 551
    .end local v0    # "ip":I
    :cond_1
    return-void
.end method

.method public reportExcessiveCpu(Landroid/util/ArrayMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;",
            ">;)V"
        }
    .end annotation

    .line 511
    .local p1, "pkgList":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;>;"
    invoke-direct {p0}, Lcom/android/internal/app/procstats/ProcessState;->ensureNotDead()V

    .line 512
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    iget v1, v0, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveCpu:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveCpu:I

    .line 513
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    iget-boolean v0, v0, Lcom/android/internal/app/procstats/ProcessState;->mMultiPackage:Z

    if-nez v0, :cond_0

    .line 514
    return-void

    .line 517
    :cond_0
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "ip":I
    :goto_0
    if-ltz v0, :cond_1

    .line 518
    invoke-direct {p0, p1, v0}, Lcom/android/internal/app/procstats/ProcessState;->pullFixedProc(Landroid/util/ArrayMap;I)Lcom/android/internal/app/procstats/ProcessState;

    move-result-object v1

    iget v2, v1, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveCpu:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveCpu:I

    .line 517
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 520
    .end local v0    # "ip":I
    :cond_1
    return-void
.end method

.method public resetSafely(J)V
    .locals 3
    .param p1, "now"    # J

    .line 254
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v0}, Lcom/android/internal/app/procstats/DurationsTable;->resetTable()V

    .line 255
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    invoke-virtual {v0}, Lcom/android/internal/app/procstats/PssTable;->resetTable()V

    .line 256
    iput-wide p1, p0, Lcom/android/internal/app/procstats/ProcessState;->mStartTime:J

    .line 257
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mLastPssState:I

    .line 258
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mLastPssTime:J

    .line 259
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveCpu:I

    .line 260
    iput v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    .line 261
    iput-wide v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mMaxCachedKillPss:J

    iput-wide v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mAvgCachedKillPss:J

    iput-wide v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mMinCachedKillPss:J

    .line 262
    return-void
.end method

.method public setMultiPackage(Z)V
    .locals 0
    .param p1, "val"    # Z

    .line 236
    iput-boolean p1, p0, Lcom/android/internal/app/procstats/ProcessState;->mMultiPackage:Z

    .line 237
    return-void
.end method

.method public setState(IIJLandroid/util/ArrayMap;)V
    .locals 2
    .param p1, "state"    # I
    .param p2, "memFactor"    # I
    .param p3, "now"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJ",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;",
            ">;)V"
        }
    .end annotation

    .line 350
    .local p5, "pkgList":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;>;"
    if-gez p1, :cond_1

    .line 351
    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumStartedServices:I

    if-lez v0, :cond_0

    .line 352
    const/4 v0, 0x6

    mul-int/lit8 v1, p2, 0xe

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    move p1, v0

    goto :goto_1

    .line 354
    :cond_1
    sget-object v0, Lcom/android/internal/app/procstats/ProcessState;->PROCESS_STATE_TO_STATE:[I

    aget v0, v0, p1

    mul-int/lit8 v1, p2, 0xe

    add-int p1, v0, v1

    .line 358
    :goto_1
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    invoke-virtual {v0, p1, p3, p4}, Lcom/android/internal/app/procstats/ProcessState;->setState(IJ)V

    .line 361
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    iget-boolean v0, v0, Lcom/android/internal/app/procstats/ProcessState;->mMultiPackage:Z

    if-nez v0, :cond_2

    .line 362
    return-void

    .line 365
    :cond_2
    if-eqz p5, :cond_3

    .line 366
    invoke-virtual {p5}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "ip":I
    :goto_2
    if-ltz v0, :cond_3

    .line 367
    invoke-direct {p0, p5, v0}, Lcom/android/internal/app/procstats/ProcessState;->pullFixedProc(Landroid/util/ArrayMap;I)Lcom/android/internal/app/procstats/ProcessState;

    move-result-object v1

    invoke-virtual {v1, p1, p3, p4}, Lcom/android/internal/app/procstats/ProcessState;->setState(IJ)V

    .line 366
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 370
    .end local v0    # "ip":I
    :cond_3
    return-void
.end method

.method public setState(IJ)V
    .locals 1
    .param p1, "state"    # I
    .param p2, "now"    # J

    .line 373
    invoke-direct {p0}, Lcom/android/internal/app/procstats/ProcessState;->ensureNotDead()V

    .line 374
    iget-boolean v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mDead:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCurState:I

    if-eq v0, p1, :cond_0

    .line 376
    invoke-virtual {p0, p2, p3}, Lcom/android/internal/app/procstats/ProcessState;->commitStateTime(J)V

    .line 377
    iput p1, p0, Lcom/android/internal/app/procstats/ProcessState;->mCurState:I

    .line 379
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1249
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1250
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "ProcessState{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    .line 1251
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " pkg="

    .line 1252
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1253
    iget-boolean v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mMultiPackage:Z

    if-eqz v1, :cond_0

    const-string v1, " (multi)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1254
    :cond_0
    iget-object v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    if-eq v1, p0, :cond_1

    const-string v1, " (sub)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1255
    :cond_1
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1256
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;J)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "now"    # J

    .line 277
    iget-boolean v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mMultiPackage:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 278
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v0, p1}, Lcom/android/internal/app/procstats/DurationsTable;->writeToParcel(Landroid/os/Parcel;)V

    .line 279
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    invoke-virtual {v0, p1}, Lcom/android/internal/app/procstats/PssTable;->writeToParcel(Landroid/os/Parcel;)V

    .line 280
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 281
    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveCpu:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 282
    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 283
    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    if-lez v0, :cond_0

    .line 284
    iget-wide v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mMinCachedKillPss:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 285
    iget-wide v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mAvgCachedKillPss:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 286
    iget-wide v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mMaxCachedKillPss:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 288
    :cond_0
    return-void
.end method

.method public writeToProto(Landroid/util/proto/ProtoOutputStream;JLjava/lang/String;IJ)V
    .locals 32
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J
    .param p4, "procName"    # Ljava/lang/String;
    .param p5, "uid"    # I
    .param p6, "now"    # J

    move-object/from16 v0, p0

    move-object/from16 v10, p1

    .line 1261
    invoke-virtual/range {p1 .. p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v13

    .line 1262
    .local v13, "token":J
    const-wide v1, 0x10900000001L

    move-object/from16 v15, p4

    invoke-virtual {v10, v1, v2, v15}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1263
    const-wide v1, 0x10500000002L

    move/from16 v8, p5

    invoke-virtual {v10, v1, v2, v8}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1264
    iget v3, v0, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveCpu:I

    if-gtz v3, :cond_0

    iget v3, v0, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    if-lez v3, :cond_1

    .line 1265
    :cond_0
    const-wide v3, 0x10b00000003L

    invoke-virtual {v10, v3, v4}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v6

    .line 1266
    .local v6, "killToken":J
    const-wide v3, 0x10500000001L

    iget v5, v0, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveCpu:I

    invoke-virtual {v10, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1267
    iget v3, v0, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    invoke-virtual {v10, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1268
    iget-wide v4, v0, Lcom/android/internal/app/procstats/ProcessState;->mMinCachedKillPss:J

    iget-wide v2, v0, Lcom/android/internal/app/procstats/ProcessState;->mAvgCachedKillPss:J

    iget-wide v8, v0, Lcom/android/internal/app/procstats/ProcessState;->mMaxCachedKillPss:J

    move-object v1, v10

    move-wide/from16 v16, v2

    const-wide v2, 0x10b00000003L

    move-wide/from16 v19, v6

    move-wide/from16 v6, v16

    .end local v6    # "killToken":J
    .local v19, "killToken":J
    invoke-static/range {v1 .. v9}, Landroid/util/proto/ProtoUtils;->toAggStatsProto(Landroid/util/proto/ProtoOutputStream;JJJJ)V

    .line 1270
    move-wide/from16 v1, v19

    invoke-virtual {v10, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1274
    .end local v19    # "killToken":J
    :cond_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    move-object v9, v1

    .line 1275
    .local v9, "durationByState":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Long;>;"
    const/4 v1, 0x0

    .line 1276
    .local v1, "didCurState":Z
    move/from16 v16, v1

    const/4 v1, 0x0

    .local v1, "i":I
    .local v16, "didCurState":Z
    :goto_0
    iget-object v2, v0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v2}, Lcom/android/internal/app/procstats/DurationsTable;->getKeyCount()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 1277
    iget-object v2, v0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v2, v1}, Lcom/android/internal/app/procstats/DurationsTable;->getKeyAt(I)I

    move-result v2

    .line 1278
    .local v2, "key":I
    invoke-static {v2}, Lcom/android/internal/app/procstats/SparseMappingTable;->getIdFromKey(I)B

    move-result v3

    .line 1279
    .local v3, "type":I
    iget-object v4, v0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v4, v2}, Lcom/android/internal/app/procstats/DurationsTable;->getValue(I)J

    move-result-wide v4

    .line 1280
    .local v4, "time":J
    iget v6, v0, Lcom/android/internal/app/procstats/ProcessState;->mCurState:I

    if-ne v6, v3, :cond_2

    .line 1281
    const/4 v6, 0x1

    .line 1282
    .end local v16    # "didCurState":Z
    .local v6, "didCurState":Z
    move-object/from16 v21, v9

    iget-wide v8, v0, Lcom/android/internal/app/procstats/ProcessState;->mStartTime:J

    .end local v9    # "durationByState":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Long;>;"
    .local v21, "durationByState":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Long;>;"
    sub-long v7, p6, v8

    add-long/2addr v4, v7

    .line 1284
    move/from16 v16, v6

    goto :goto_1

    .end local v6    # "didCurState":Z
    .end local v21    # "durationByState":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Long;>;"
    .restart local v9    # "durationByState":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Long;>;"
    .restart local v16    # "didCurState":Z
    :cond_2
    move-object/from16 v21, v9

    .end local v9    # "durationByState":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Long;>;"
    .restart local v21    # "durationByState":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Long;>;"
    :goto_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    move-object/from16 v9, v21

    invoke-interface {v9, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1276
    .end local v2    # "key":I
    .end local v3    # "type":I
    .end local v4    # "time":J
    .end local v21    # "durationByState":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Long;>;"
    .restart local v9    # "durationByState":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Long;>;"
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1286
    .end local v1    # "i":I
    :cond_3
    if-nez v16, :cond_4

    iget v1, v0, Lcom/android/internal/app/procstats/ProcessState;->mCurState:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_4

    .line 1287
    iget v1, v0, Lcom/android/internal/app/procstats/ProcessState;->mCurState:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-wide v2, v0, Lcom/android/internal/app/procstats/ProcessState;->mStartTime:J

    sub-long v2, p6, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v9, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1290
    :cond_4
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    move v8, v1

    .end local v1    # "i":I
    .local v8, "i":I
    iget-object v1, v0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    invoke-virtual {v1}, Lcom/android/internal/app/procstats/PssTable;->getKeyCount()I

    move-result v1

    const-wide v6, 0x10300000004L

    const-wide v4, 0x20b00000005L

    if-ge v8, v1, :cond_6

    .line 1291
    iget-object v1, v0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    invoke-virtual {v1, v8}, Lcom/android/internal/app/procstats/PssTable;->getKeyAt(I)I

    move-result v2

    .line 1292
    .restart local v2    # "key":I
    invoke-static {v2}, Lcom/android/internal/app/procstats/SparseMappingTable;->getIdFromKey(I)B

    move-result v3

    .line 1293
    .restart local v3    # "type":I
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v9, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 1295
    nop

    .line 1290
    move/from16 v17, v8

    move-object v11, v9

    goto/16 :goto_3

    .line 1297
    :cond_5
    invoke-virtual {v10, v4, v5}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v4

    .line 1298
    .local v4, "stateToken":J
    const-wide v17, 0x10e00000001L

    const-wide v19, 0x10e00000002L

    const-wide v23, 0x10e00000003L

    move-object v1, v10

    move/from16 v25, v2

    move/from16 v26, v3

    move-wide/from16 v2, v17

    .end local v2    # "key":I
    .end local v3    # "type":I
    .local v25, "key":I
    .local v26, "type":I
    move-wide/from16 v27, v4

    move-wide/from16 v4, v19

    .end local v4    # "stateToken":J
    .local v27, "stateToken":J
    move-wide/from16 v6, v23

    move/from16 v17, v8

    const/4 v11, 0x0

    move/from16 v8, v26

    .end local v8    # "i":I
    .local v17, "i":I
    invoke-static/range {v1 .. v8}, Lcom/android/internal/app/procstats/DumpUtils;->printProcStateTagProto(Landroid/util/proto/ProtoOutputStream;JJJI)V

    .line 1304
    move/from16 v12, v26

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .end local v26    # "type":I
    .local v12, "type":I
    invoke-interface {v9, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 1305
    .local v6, "duration":J
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v9, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1306
    const-wide v2, 0x10300000004L

    invoke-virtual {v10, v2, v3, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 1308
    const-wide v1, 0x10500000005L

    iget-object v3, v0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    move/from16 v8, v25

    invoke-virtual {v3, v8, v11}, Lcom/android/internal/app/procstats/PssTable;->getValue(II)J

    move-result-wide v3

    .end local v25    # "key":I
    .local v8, "key":I
    invoke-virtual {v10, v1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 1309
    const-wide v2, 0x10b00000006L

    iget-object v1, v0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    .line 1310
    const/4 v4, 0x1

    invoke-virtual {v1, v8, v4}, Lcom/android/internal/app/procstats/PssTable;->getValue(II)J

    move-result-wide v4

    iget-object v1, v0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    const/4 v11, 0x2

    .line 1311
    invoke-virtual {v1, v8, v11}, Lcom/android/internal/app/procstats/PssTable;->getValue(II)J

    move-result-wide v18

    iget-object v1, v0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    const/4 v11, 0x3

    .line 1312
    invoke-virtual {v1, v8, v11}, Lcom/android/internal/app/procstats/PssTable;->getValue(II)J

    move-result-wide v20

    .line 1309
    move-object v1, v10

    move-wide/from16 v22, v6

    move-wide/from16 v6, v18

    .end local v6    # "duration":J
    .local v22, "duration":J
    move-object v11, v9

    move/from16 v29, v12

    move v12, v8

    move-wide/from16 v8, v20

    .end local v8    # "key":I
    .end local v9    # "durationByState":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Long;>;"
    .local v11, "durationByState":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Long;>;"
    .local v12, "key":I
    .local v29, "type":I
    invoke-static/range {v1 .. v9}, Landroid/util/proto/ProtoUtils;->toAggStatsProto(Landroid/util/proto/ProtoOutputStream;JJJJ)V

    .line 1313
    const-wide v2, 0x10b00000007L

    iget-object v1, v0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    const/4 v4, 0x4

    .line 1314
    invoke-virtual {v1, v12, v4}, Lcom/android/internal/app/procstats/PssTable;->getValue(II)J

    move-result-wide v4

    iget-object v1, v0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    const/4 v6, 0x5

    .line 1315
    invoke-virtual {v1, v12, v6}, Lcom/android/internal/app/procstats/PssTable;->getValue(II)J

    move-result-wide v6

    iget-object v1, v0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    const/4 v8, 0x6

    .line 1316
    invoke-virtual {v1, v12, v8}, Lcom/android/internal/app/procstats/PssTable;->getValue(II)J

    move-result-wide v8

    .line 1313
    move-object v1, v10

    invoke-static/range {v1 .. v9}, Landroid/util/proto/ProtoUtils;->toAggStatsProto(Landroid/util/proto/ProtoOutputStream;JJJJ)V

    .line 1317
    const-wide v2, 0x10b00000008L

    iget-object v1, v0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    const/4 v4, 0x7

    .line 1318
    invoke-virtual {v1, v12, v4}, Lcom/android/internal/app/procstats/PssTable;->getValue(II)J

    move-result-wide v4

    iget-object v1, v0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    const/16 v6, 0x8

    .line 1319
    invoke-virtual {v1, v12, v6}, Lcom/android/internal/app/procstats/PssTable;->getValue(II)J

    move-result-wide v6

    iget-object v1, v0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    const/16 v8, 0x9

    .line 1320
    invoke-virtual {v1, v12, v8}, Lcom/android/internal/app/procstats/PssTable;->getValue(II)J

    move-result-wide v8

    .line 1317
    move-object v1, v10

    invoke-static/range {v1 .. v9}, Landroid/util/proto/ProtoUtils;->toAggStatsProto(Landroid/util/proto/ProtoOutputStream;JJJJ)V

    .line 1322
    move-wide/from16 v1, v27

    invoke-virtual {v10, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1290
    .end local v12    # "key":I
    .end local v22    # "duration":J
    .end local v27    # "stateToken":J
    .end local v29    # "type":I
    :goto_3
    add-int/lit8 v1, v17, 0x1

    .end local v17    # "i":I
    .restart local v1    # "i":I
    move-object v9, v11

    goto/16 :goto_2

    .line 1325
    .end local v1    # "i":I
    .end local v11    # "durationByState":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Long;>;"
    .restart local v9    # "durationByState":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Long;>;"
    :cond_6
    move-wide v2, v6

    move-object v11, v9

    .end local v9    # "durationByState":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Long;>;"
    .restart local v11    # "durationByState":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Long;>;"
    invoke-interface {v11}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Ljava/util/Map$Entry;

    .line 1326
    .local v12, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Long;>;"
    invoke-virtual {v10, v4, v5}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v6

    .line 1327
    .local v6, "stateToken":J
    const-wide v17, 0x10e00000001L

    const-wide v19, 0x10e00000002L

    const-wide v21, 0x10e00000003L

    .line 1331
    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 1327
    move-object v1, v10

    move-wide/from16 v2, v17

    move-wide/from16 v17, v4

    move-wide/from16 v4, v19

    move-wide/from16 v30, v6

    move-wide/from16 v6, v21

    .end local v6    # "stateToken":J
    .local v30, "stateToken":J
    invoke-static/range {v1 .. v8}, Lcom/android/internal/app/procstats/DumpUtils;->printProcStateTagProto(Landroid/util/proto/ProtoOutputStream;JJJI)V

    .line 1332
    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide v3, 0x10300000004L

    invoke-virtual {v10, v3, v4, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 1333
    move-wide/from16 v1, v30

    invoke-virtual {v10, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1334
    .end local v12    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Long;>;"
    .end local v30    # "stateToken":J
    nop

    .line 1325
    move-wide v2, v3

    move-wide/from16 v4, v17

    goto :goto_4

    .line 1335
    :cond_7
    invoke-virtual {v10, v13, v14}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1336
    return-void
.end method
