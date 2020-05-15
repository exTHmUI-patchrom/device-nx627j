.class public Lcom/android/internal/util/ProviderAccessStats;
.super Ljava/lang/Object;
.source "ProviderAccessStats.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/util/ProviderAccessStats$PerThreadData;
    }
.end annotation


# instance fields
.field private final mAllCallingUids:Landroid/util/SparseBooleanArray;

.field private final mBatchStats:Landroid/util/SparseLongArray;

.field private final mDeleteInBatchStats:Landroid/util/SparseLongArray;

.field private final mDeleteStats:Landroid/util/SparseLongArray;

.field private final mInsertInBatchStats:Landroid/util/SparseLongArray;

.field private final mInsertStats:Landroid/util/SparseLongArray;

.field private final mLock:Ljava/lang/Object;

.field private final mOperationDurationMillis:Landroid/util/SparseLongArray;

.field private final mQueryStats:Landroid/util/SparseLongArray;

.field private final mStartUptime:J

.field private final mThreadLocal:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lcom/android/internal/util/ProviderAccessStats$PerThreadData;",
            ">;"
        }
    .end annotation
.end field

.field private final mUpdateInBatchStats:Landroid/util/SparseLongArray;

.field private final mUpdateStats:Landroid/util/SparseLongArray;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/util/ProviderAccessStats;->mLock:Ljava/lang/Object;

    .line 27
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/util/ProviderAccessStats;->mStartUptime:J

    .line 29
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/util/ProviderAccessStats;->mAllCallingUids:Landroid/util/SparseBooleanArray;

    .line 30
    new-instance v0, Landroid/util/SparseLongArray;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/util/SparseLongArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/util/ProviderAccessStats;->mQueryStats:Landroid/util/SparseLongArray;

    .line 31
    new-instance v0, Landroid/util/SparseLongArray;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Landroid/util/SparseLongArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/util/ProviderAccessStats;->mBatchStats:Landroid/util/SparseLongArray;

    .line 32
    new-instance v0, Landroid/util/SparseLongArray;

    invoke-direct {v0, v2}, Landroid/util/SparseLongArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/util/ProviderAccessStats;->mInsertStats:Landroid/util/SparseLongArray;

    .line 33
    new-instance v0, Landroid/util/SparseLongArray;

    invoke-direct {v0, v2}, Landroid/util/SparseLongArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/util/ProviderAccessStats;->mUpdateStats:Landroid/util/SparseLongArray;

    .line 34
    new-instance v0, Landroid/util/SparseLongArray;

    invoke-direct {v0, v2}, Landroid/util/SparseLongArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/util/ProviderAccessStats;->mDeleteStats:Landroid/util/SparseLongArray;

    .line 35
    new-instance v0, Landroid/util/SparseLongArray;

    invoke-direct {v0, v2}, Landroid/util/SparseLongArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/util/ProviderAccessStats;->mInsertInBatchStats:Landroid/util/SparseLongArray;

    .line 36
    new-instance v0, Landroid/util/SparseLongArray;

    invoke-direct {v0, v2}, Landroid/util/SparseLongArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/util/ProviderAccessStats;->mUpdateInBatchStats:Landroid/util/SparseLongArray;

    .line 37
    new-instance v0, Landroid/util/SparseLongArray;

    invoke-direct {v0, v2}, Landroid/util/SparseLongArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/util/ProviderAccessStats;->mDeleteInBatchStats:Landroid/util/SparseLongArray;

    .line 39
    new-instance v0, Landroid/util/SparseLongArray;

    invoke-direct {v0, v1}, Landroid/util/SparseLongArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/util/ProviderAccessStats;->mOperationDurationMillis:Landroid/util/SparseLongArray;

    .line 46
    sget-object v0, Lcom/android/internal/util/-$$Lambda$ProviderAccessStats$9AhC6lKURctNKuYjVd-wu7jn6_c;->INSTANCE:Lcom/android/internal/util/-$$Lambda$ProviderAccessStats$9AhC6lKURctNKuYjVd-wu7jn6_c;

    .line 47
    invoke-static {v0}, Ljava/lang/ThreadLocal;->withInitial(Ljava/util/function/Supplier;)Ljava/lang/ThreadLocal;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/util/ProviderAccessStats;->mThreadLocal:Ljava/lang/ThreadLocal;

    .line 46
    return-void
.end method

.method private incrementStats(ILandroid/util/SparseLongArray;)V
    .locals 5
    .param p1, "callingUid"    # I
    .param p2, "stats"    # Landroid/util/SparseLongArray;

    .line 50
    iget-object v0, p0, Lcom/android/internal/util/ProviderAccessStats;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 51
    :try_start_0
    invoke-virtual {p2, p1}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v1

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    invoke-virtual {p2, p1, v1, v2}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 52
    iget-object v1, p0, Lcom/android/internal/util/ProviderAccessStats;->mAllCallingUids:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 53
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    iget-object v0, p0, Lcom/android/internal/util/ProviderAccessStats;->mThreadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/ProviderAccessStats$PerThreadData;

    .line 56
    .local v0, "data":Lcom/android/internal/util/ProviderAccessStats$PerThreadData;
    iget v1, v0, Lcom/android/internal/util/ProviderAccessStats$PerThreadData;->nestCount:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/android/internal/util/ProviderAccessStats$PerThreadData;->nestCount:I

    .line 57
    iget v1, v0, Lcom/android/internal/util/ProviderAccessStats$PerThreadData;->nestCount:I

    if-ne v1, v2, :cond_0

    .line 58
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/internal/util/ProviderAccessStats$PerThreadData;->startUptimeMillis:J

    .line 60
    :cond_0
    return-void

    .line 53
    .end local v0    # "data":Lcom/android/internal/util/ProviderAccessStats$PerThreadData;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private incrementStats(IZLandroid/util/SparseLongArray;Landroid/util/SparseLongArray;)V
    .locals 1
    .param p1, "callingUid"    # I
    .param p2, "inBatch"    # Z
    .param p3, "statsNonBatch"    # Landroid/util/SparseLongArray;
    .param p4, "statsInBatch"    # Landroid/util/SparseLongArray;

    .line 64
    if-eqz p2, :cond_0

    move-object v0, p4

    goto :goto_0

    :cond_0
    move-object v0, p3

    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/android/internal/util/ProviderAccessStats;->incrementStats(ILandroid/util/SparseLongArray;)V

    .line 65
    return-void
.end method

.method static synthetic lambda$new$0()Lcom/android/internal/util/ProviderAccessStats$PerThreadData;
    .locals 2

    .line 47
    new-instance v0, Lcom/android/internal/util/ProviderAccessStats$PerThreadData;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/internal/util/ProviderAccessStats$PerThreadData;-><init>(Lcom/android/internal/util/ProviderAccessStats$1;)V

    return-object v0
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 11
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 103
    iget-object v0, p0, Lcom/android/internal/util/ProviderAccessStats;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 104
    :try_start_0
    const-string v1, "  Process uptime: "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 105
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/internal/util/ProviderAccessStats;->mStartUptime:J

    sub-long/2addr v1, v3

    const-wide/32 v3, 0xea60

    div-long/2addr v1, v3

    invoke-virtual {p1, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    .line 106
    const-string v1, " minutes"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 109
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 110
    const-string v1, "Client activities:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 112
    const-string v1, "  UID        Query  Insert Update Delete   Batch Insert Update Delete          Sec"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 114
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/internal/util/ProviderAccessStats;->mAllCallingUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 115
    iget-object v3, p0, Lcom/android/internal/util/ProviderAccessStats;->mAllCallingUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    .line 116
    .local v3, "uid":I
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 117
    const-string v4, "  %-9d %6d  %6d %6d %6d  %6d %6d %6d %6d %12.3f"

    const/16 v5, 0xa

    new-array v5, v5, [Ljava/lang/Object;

    .line 119
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    iget-object v6, p0, Lcom/android/internal/util/ProviderAccessStats;->mQueryStats:Landroid/util/SparseLongArray;

    .line 120
    invoke-virtual {v6, v3}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v5, v7

    const/4 v6, 0x2

    iget-object v7, p0, Lcom/android/internal/util/ProviderAccessStats;->mInsertStats:Landroid/util/SparseLongArray;

    .line 121
    invoke-virtual {v7, v3}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    iget-object v7, p0, Lcom/android/internal/util/ProviderAccessStats;->mUpdateStats:Landroid/util/SparseLongArray;

    .line 122
    invoke-virtual {v7, v3}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x4

    iget-object v7, p0, Lcom/android/internal/util/ProviderAccessStats;->mDeleteStats:Landroid/util/SparseLongArray;

    .line 123
    invoke-virtual {v7, v3}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x5

    iget-object v7, p0, Lcom/android/internal/util/ProviderAccessStats;->mBatchStats:Landroid/util/SparseLongArray;

    .line 124
    invoke-virtual {v7, v3}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x6

    iget-object v7, p0, Lcom/android/internal/util/ProviderAccessStats;->mInsertInBatchStats:Landroid/util/SparseLongArray;

    .line 125
    invoke-virtual {v7, v3}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x7

    iget-object v7, p0, Lcom/android/internal/util/ProviderAccessStats;->mUpdateInBatchStats:Landroid/util/SparseLongArray;

    .line 126
    invoke-virtual {v7, v3}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    const/16 v6, 0x8

    iget-object v7, p0, Lcom/android/internal/util/ProviderAccessStats;->mDeleteInBatchStats:Landroid/util/SparseLongArray;

    .line 127
    invoke-virtual {v7, v3}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    const/16 v6, 0x9

    iget-object v7, p0, Lcom/android/internal/util/ProviderAccessStats;->mOperationDurationMillis:Landroid/util/SparseLongArray;

    .line 128
    invoke-virtual {v7, v3}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v7

    long-to-double v7, v7

    const-wide v9, 0x408f400000000000L    # 1000.0

    div-double/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    aput-object v7, v5, v6

    .line 117
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 114
    .end local v3    # "uid":I
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 131
    .end local v2    # "i":I
    :cond_0
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 132
    monitor-exit v0

    .line 133
    return-void

    .line 132
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public finishOperation(I)V
    .locals 7
    .param p1, "callingUid"    # I

    .line 88
    iget-object v0, p0, Lcom/android/internal/util/ProviderAccessStats;->mThreadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/ProviderAccessStats$PerThreadData;

    .line 89
    .local v0, "data":Lcom/android/internal/util/ProviderAccessStats$PerThreadData;
    iget v1, v0, Lcom/android/internal/util/ProviderAccessStats$PerThreadData;->nestCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/android/internal/util/ProviderAccessStats$PerThreadData;->nestCount:I

    .line 90
    iget v1, v0, Lcom/android/internal/util/ProviderAccessStats$PerThreadData;->nestCount:I

    if-nez v1, :cond_0

    .line 93
    const-wide/16 v1, 0x1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-wide v5, v0, Lcom/android/internal/util/ProviderAccessStats$PerThreadData;->startUptimeMillis:J

    sub-long/2addr v3, v5

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    .line 95
    .local v1, "duration":J
    iget-object v3, p0, Lcom/android/internal/util/ProviderAccessStats;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 96
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/util/ProviderAccessStats;->mOperationDurationMillis:Landroid/util/SparseLongArray;

    iget-object v5, p0, Lcom/android/internal/util/ProviderAccessStats;->mOperationDurationMillis:Landroid/util/SparseLongArray;

    .line 97
    invoke-virtual {v5, p1}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v5

    add-long/2addr v5, v1

    .line 96
    invoke-virtual {v4, p1, v5, v6}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 98
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 100
    .end local v1    # "duration":J
    :cond_0
    :goto_0
    return-void
.end method

.method public final incrementBatchStats(I)V
    .locals 1
    .param p1, "callingUid"    # I

    .line 84
    iget-object v0, p0, Lcom/android/internal/util/ProviderAccessStats;->mBatchStats:Landroid/util/SparseLongArray;

    invoke-direct {p0, p1, v0}, Lcom/android/internal/util/ProviderAccessStats;->incrementStats(ILandroid/util/SparseLongArray;)V

    .line 85
    return-void
.end method

.method public final incrementDeleteStats(IZ)V
    .locals 2
    .param p1, "callingUid"    # I
    .param p2, "inBatch"    # Z

    .line 76
    iget-object v0, p0, Lcom/android/internal/util/ProviderAccessStats;->mDeleteStats:Landroid/util/SparseLongArray;

    iget-object v1, p0, Lcom/android/internal/util/ProviderAccessStats;->mDeleteInBatchStats:Landroid/util/SparseLongArray;

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/internal/util/ProviderAccessStats;->incrementStats(IZLandroid/util/SparseLongArray;Landroid/util/SparseLongArray;)V

    .line 77
    return-void
.end method

.method public final incrementInsertStats(IZ)V
    .locals 2
    .param p1, "callingUid"    # I
    .param p2, "inBatch"    # Z

    .line 68
    iget-object v0, p0, Lcom/android/internal/util/ProviderAccessStats;->mInsertStats:Landroid/util/SparseLongArray;

    iget-object v1, p0, Lcom/android/internal/util/ProviderAccessStats;->mInsertInBatchStats:Landroid/util/SparseLongArray;

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/internal/util/ProviderAccessStats;->incrementStats(IZLandroid/util/SparseLongArray;Landroid/util/SparseLongArray;)V

    .line 69
    return-void
.end method

.method public final incrementQueryStats(I)V
    .locals 1
    .param p1, "callingUid"    # I

    .line 80
    iget-object v0, p0, Lcom/android/internal/util/ProviderAccessStats;->mQueryStats:Landroid/util/SparseLongArray;

    invoke-direct {p0, p1, v0}, Lcom/android/internal/util/ProviderAccessStats;->incrementStats(ILandroid/util/SparseLongArray;)V

    .line 81
    return-void
.end method

.method public final incrementUpdateStats(IZ)V
    .locals 2
    .param p1, "callingUid"    # I
    .param p2, "inBatch"    # Z

    .line 72
    iget-object v0, p0, Lcom/android/internal/util/ProviderAccessStats;->mUpdateStats:Landroid/util/SparseLongArray;

    iget-object v1, p0, Lcom/android/internal/util/ProviderAccessStats;->mUpdateInBatchStats:Landroid/util/SparseLongArray;

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/internal/util/ProviderAccessStats;->incrementStats(IZLandroid/util/SparseLongArray;Landroid/util/SparseLongArray;)V

    .line 73
    return-void
.end method
