.class public final Lcom/android/internal/app/procstats/ProcessStats;
.super Ljava/lang/Object;
.source "ProcessStats.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;,
        Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;,
        Lcom/android/internal/app/procstats/ProcessStats$PackageState;,
        Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;
    }
.end annotation


# static fields
.field public static final ADD_PSS_EXTERNAL:I = 0x3

.field public static final ADD_PSS_EXTERNAL_SLOW:I = 0x4

.field public static final ADD_PSS_INTERNAL_ALL_MEM:I = 0x1

.field public static final ADD_PSS_INTERNAL_ALL_POLL:I = 0x2

.field public static final ADD_PSS_INTERNAL_SINGLE:I = 0x0

.field public static final ADJ_COUNT:I = 0x8

.field public static final ADJ_MEM_FACTOR_COUNT:I = 0x4

.field public static final ADJ_MEM_FACTOR_CRITICAL:I = 0x3

.field public static final ADJ_MEM_FACTOR_LOW:I = 0x2

.field public static final ADJ_MEM_FACTOR_MODERATE:I = 0x1

.field public static final ADJ_MEM_FACTOR_NORMAL:I = 0x0

.field public static final ADJ_NOTHING:I = -0x1

.field public static final ADJ_SCREEN_MOD:I = 0x4

.field public static final ADJ_SCREEN_OFF:I = 0x0

.field public static final ADJ_SCREEN_ON:I = 0x4

.field public static final ALL_MEM_ADJ:[I

.field public static final ALL_PROC_STATES:[I

.field public static final ALL_SCREEN_ADJ:[I

.field public static final BACKGROUND_PROC_STATES:[I

.field static final BAD_TABLE:[I

.field public static COMMIT_PERIOD:J = 0x0L

.field public static COMMIT_UPTIME_PERIOD:J = 0x0L

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/internal/app/procstats/ProcessStats;",
            ">;"
        }
    .end annotation
.end field

.field static final DEBUG:Z = false

.field static final DEBUG_PARCEL:Z = false

.field public static final FLAG_COMPLETE:I = 0x1

.field public static final FLAG_SHUTDOWN:I = 0x2

.field public static final FLAG_SYSPROPS:I = 0x4

.field private static final MAGIC:I = 0x50535454

.field public static final NON_CACHED_PROC_STATES:[I

.field private static final PARCEL_VERSION:I = 0x1b

.field public static final PSS_AVERAGE:I = 0x2

.field public static final PSS_COUNT:I = 0xa

.field public static final PSS_MAXIMUM:I = 0x3

.field public static final PSS_MINIMUM:I = 0x1

.field public static final PSS_RSS_AVERAGE:I = 0x8

.field public static final PSS_RSS_MAXIMUM:I = 0x9

.field public static final PSS_RSS_MINIMUM:I = 0x7

.field public static final PSS_SAMPLE_COUNT:I = 0x0

.field public static final PSS_USS_AVERAGE:I = 0x5

.field public static final PSS_USS_MAXIMUM:I = 0x6

.field public static final PSS_USS_MINIMUM:I = 0x4

.field public static final SERVICE_NAME:Ljava/lang/String; = "procstats"

.field public static final STATE_BACKUP:I = 0x4

.field public static final STATE_CACHED_ACTIVITY:I = 0xb

.field public static final STATE_CACHED_ACTIVITY_CLIENT:I = 0xc

.field public static final STATE_CACHED_EMPTY:I = 0xd

.field public static final STATE_COUNT:I = 0xe

.field public static final STATE_HEAVY_WEIGHT:I = 0x8

.field public static final STATE_HOME:I = 0x9

.field public static final STATE_IMPORTANT_BACKGROUND:I = 0x3

.field public static final STATE_IMPORTANT_FOREGROUND:I = 0x2

.field public static final STATE_LAST_ACTIVITY:I = 0xa

.field public static final STATE_NOTHING:I = -0x1

.field public static final STATE_PERSISTENT:I = 0x0

.field public static final STATE_RECEIVER:I = 0x7

.field public static final STATE_SERVICE:I = 0x5

.field public static final STATE_SERVICE_RESTARTING:I = 0x6

.field public static final STATE_TOP:I = 0x1

.field public static final SYS_MEM_USAGE_CACHED_AVERAGE:I = 0x2

.field public static final SYS_MEM_USAGE_CACHED_MAXIMUM:I = 0x3

.field public static final SYS_MEM_USAGE_CACHED_MINIMUM:I = 0x1

.field public static final SYS_MEM_USAGE_COUNT:I = 0x10

.field public static final SYS_MEM_USAGE_FREE_AVERAGE:I = 0x5

.field public static final SYS_MEM_USAGE_FREE_MAXIMUM:I = 0x6

.field public static final SYS_MEM_USAGE_FREE_MINIMUM:I = 0x4

.field public static final SYS_MEM_USAGE_KERNEL_AVERAGE:I = 0xb

.field public static final SYS_MEM_USAGE_KERNEL_MAXIMUM:I = 0xc

.field public static final SYS_MEM_USAGE_KERNEL_MINIMUM:I = 0xa

.field public static final SYS_MEM_USAGE_NATIVE_AVERAGE:I = 0xe

.field public static final SYS_MEM_USAGE_NATIVE_MAXIMUM:I = 0xf

.field public static final SYS_MEM_USAGE_NATIVE_MINIMUM:I = 0xd

.field public static final SYS_MEM_USAGE_SAMPLE_COUNT:I = 0x0

.field public static final SYS_MEM_USAGE_ZRAM_AVERAGE:I = 0x8

.field public static final SYS_MEM_USAGE_ZRAM_MAXIMUM:I = 0x9

.field public static final SYS_MEM_USAGE_ZRAM_MINIMUM:I = 0x7

.field public static final TAG:Ljava/lang/String; = "ProcessStats"

.field private static final sPageTypeRegex:Ljava/util/regex/Pattern;


# instance fields
.field mCommonStringToIndex:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mExternalPssCount:J

.field public mExternalPssTime:J

.field public mExternalSlowPssCount:J

.field public mExternalSlowPssTime:J

.field public mFlags:I

.field mHasSwappedOutPss:Z

.field mIndexToCommonString:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mInternalAllMemPssCount:J

.field public mInternalAllMemPssTime:J

.field public mInternalAllPollPssCount:J

.field public mInternalAllPollPssTime:J

.field public mInternalSinglePssCount:J

.field public mInternalSinglePssTime:J

.field public mMemFactor:I

.field public final mMemFactorDurations:[J

.field public final mPackages:Lcom/android/internal/app/ProcessMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/app/ProcessMap<",
            "Landroid/util/LongSparseArray<",
            "Lcom/android/internal/app/procstats/ProcessStats$PackageState;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mPageTypeLabels:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mPageTypeSizes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "[I>;"
        }
    .end annotation
.end field

.field private final mPageTypeZones:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final mProcesses:Lcom/android/internal/app/ProcessMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/app/ProcessMap<",
            "Lcom/android/internal/app/procstats/ProcessState;",
            ">;"
        }
    .end annotation
.end field

.field public mReadError:Ljava/lang/String;

.field mRunning:Z

.field mRuntime:Ljava/lang/String;

.field public mStartTime:J

.field public final mSysMemUsage:Lcom/android/internal/app/procstats/SysMemUsageTable;

.field public final mSysMemUsageArgs:[J

.field public final mTableData:Lcom/android/internal/app/procstats/SparseMappingTable;

.field public mTimePeriodEndRealtime:J

.field public mTimePeriodEndUptime:J

.field public mTimePeriodStartClock:J

.field public mTimePeriodStartClockStr:Ljava/lang/String;

.field public mTimePeriodStartRealtime:J

.field public mTimePeriodStartUptime:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 61
    const-wide/32 v0, 0xa4cb80

    sput-wide v0, Lcom/android/internal/app/procstats/ProcessStats;->COMMIT_PERIOD:J

    .line 66
    const-wide/32 v0, 0x36ee80

    sput-wide v0, Lcom/android/internal/app/procstats/ProcessStats;->COMMIT_UPTIME_PERIOD:J

    .line 136
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/internal/app/procstats/ProcessStats;->ALL_MEM_ADJ:[I

    .line 139
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/internal/app/procstats/ProcessStats;->ALL_SCREEN_ADJ:[I

    .line 141
    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/internal/app/procstats/ProcessStats;->NON_CACHED_PROC_STATES:[I

    .line 147
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/android/internal/app/procstats/ProcessStats;->BACKGROUND_PROC_STATES:[I

    .line 152
    const/16 v0, 0xe

    new-array v0, v0, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/android/internal/app/procstats/ProcessStats;->ALL_PROC_STATES:[I

    .line 216
    const-string v0, "^Node\\s+(\\d+),.*. type\\s+(\\w+)\\s+([\\s\\d]+?)\\s*$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/internal/app/procstats/ProcessStats;->sPageTypeRegex:Ljava/util/regex/Pattern;

    .line 354
    new-instance v0, Lcom/android/internal/app/procstats/ProcessStats$1;

    invoke-direct {v0}, Lcom/android/internal/app/procstats/ProcessStats$1;-><init>()V

    sput-object v0, Lcom/android/internal/app/procstats/ProcessStats;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 571
    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/internal/app/procstats/ProcessStats;->BAD_TABLE:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0x3
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x4
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
    .end array-data

    :array_3
    .array-data 4
        0x2
        0x3
        0x4
        0x8
        0x5
        0x6
        0x7
    .end array-data

    :array_4
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
    .end array-data
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    new-instance v0, Lcom/android/internal/app/ProcessMap;

    invoke-direct {v0}, Lcom/android/internal/app/ProcessMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    .line 169
    new-instance v0, Lcom/android/internal/app/ProcessMap;

    invoke-direct {v0}, Lcom/android/internal/app/ProcessMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    .line 171
    const/16 v0, 0x8

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactorDurations:[J

    .line 172
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactor:I

    .line 205
    new-instance v0, Lcom/android/internal/app/procstats/SparseMappingTable;

    invoke-direct {v0}, Lcom/android/internal/app/procstats/SparseMappingTable;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mTableData:Lcom/android/internal/app/procstats/SparseMappingTable;

    .line 207
    const/16 v0, 0x10

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mSysMemUsageArgs:[J

    .line 208
    new-instance v0, Lcom/android/internal/app/procstats/SysMemUsageTable;

    iget-object v1, p0, Lcom/android/internal/app/procstats/ProcessStats;->mTableData:Lcom/android/internal/app/procstats/SparseMappingTable;

    invoke-direct {v0, v1}, Lcom/android/internal/app/procstats/SysMemUsageTable;-><init>(Lcom/android/internal/app/procstats/SparseMappingTable;)V

    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mSysMemUsage:Lcom/android/internal/app/procstats/SysMemUsageTable;

    .line 218
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeZones:Ljava/util/ArrayList;

    .line 219
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeLabels:Ljava/util/ArrayList;

    .line 220
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeSizes:Ljava/util/ArrayList;

    .line 235
    invoke-virtual {p0}, Lcom/android/internal/app/procstats/ProcessStats;->reset()V

    .line 236
    invoke-virtual {p0, p1}, Lcom/android/internal/app/procstats/ProcessStats;->readFromParcel(Landroid/os/Parcel;)V

    .line 237
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2
    .param p1, "running"    # Z

    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    new-instance v0, Lcom/android/internal/app/ProcessMap;

    invoke-direct {v0}, Lcom/android/internal/app/ProcessMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    .line 169
    new-instance v0, Lcom/android/internal/app/ProcessMap;

    invoke-direct {v0}, Lcom/android/internal/app/ProcessMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    .line 171
    const/16 v0, 0x8

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactorDurations:[J

    .line 172
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactor:I

    .line 205
    new-instance v0, Lcom/android/internal/app/procstats/SparseMappingTable;

    invoke-direct {v0}, Lcom/android/internal/app/procstats/SparseMappingTable;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mTableData:Lcom/android/internal/app/procstats/SparseMappingTable;

    .line 207
    const/16 v0, 0x10

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mSysMemUsageArgs:[J

    .line 208
    new-instance v0, Lcom/android/internal/app/procstats/SysMemUsageTable;

    iget-object v1, p0, Lcom/android/internal/app/procstats/ProcessStats;->mTableData:Lcom/android/internal/app/procstats/SparseMappingTable;

    invoke-direct {v0, v1}, Lcom/android/internal/app/procstats/SysMemUsageTable;-><init>(Lcom/android/internal/app/procstats/SparseMappingTable;)V

    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mSysMemUsage:Lcom/android/internal/app/procstats/SysMemUsageTable;

    .line 218
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeZones:Ljava/util/ArrayList;

    .line 219
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeLabels:Ljava/util/ArrayList;

    .line 220
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeSizes:Ljava/util/ArrayList;

    .line 223
    iput-boolean p1, p0, Lcom/android/internal/app/procstats/ProcessStats;->mRunning:Z

    .line 224
    invoke-virtual {p0}, Lcom/android/internal/app/procstats/ProcessStats;->reset()V

    .line 225
    if-eqz p1, :cond_0

    .line 228
    new-instance v0, Landroid/os/Debug$MemoryInfo;

    invoke-direct {v0}, Landroid/os/Debug$MemoryInfo;-><init>()V

    .line 229
    .local v0, "info":Landroid/os/Debug$MemoryInfo;
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {v1, v0}, Landroid/os/Debug;->getMemoryInfo(ILandroid/os/Debug$MemoryInfo;)V

    .line 230
    invoke-virtual {v0}, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/app/procstats/ProcessStats;->mHasSwappedOutPss:Z

    .line 232
    .end local v0    # "info":Landroid/os/Debug$MemoryInfo;
    :cond_0
    return-void
.end method

.method private buildTimePeriodStartClockStr()V
    .locals 3

    .line 567
    const-string/jumbo v0, "yyyy-MM-dd-HH-mm-ss"

    iget-wide v1, p0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartClock:J

    invoke-static {v0, v1, v2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v0

    .line 568
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartClockStr:Ljava/lang/String;

    .line 569
    return-void
.end method

.method private dumpFragmentationLocked(Ljava/io/PrintWriter;)V
    .locals 10
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 1482
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1483
    const-string v0, "Available pages by page size:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1484
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeLabels:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1485
    .local v0, "NPAGETYPES":I
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 1486
    const-string v3, "Zone %3d  %14s "

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeZones:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v4, v1

    iget-object v5, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeLabels:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-virtual {p1, v3, v4}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 1487
    iget-object v3, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeSizes:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    .line 1488
    .local v3, "sizes":[I
    if-nez v3, :cond_0

    move v4, v1

    goto :goto_1

    :cond_0
    array-length v4, v3

    .line 1489
    .local v4, "N":I
    :goto_1
    move v5, v1

    .local v5, "j":I
    :goto_2
    if-ge v5, v4, :cond_1

    .line 1490
    const-string v7, "%6d"

    new-array v8, v6, [Ljava/lang/Object;

    aget v9, v3, v5

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v1

    invoke-virtual {p1, v7, v8}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 1489
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 1492
    .end local v5    # "j":I
    :cond_1
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1485
    .end local v3    # "sizes":[I
    .end local v4    # "N":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1494
    .end local v2    # "i":I
    :cond_2
    return-void
.end method

.method private readCheckedInt(Landroid/os/Parcel;ILjava/lang/String;)Z
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;
    .param p2, "val"    # I
    .param p3, "what"    # Ljava/lang/String;

    .line 895
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move v1, v0

    .local v1, "got":I
    if-eq v0, p2, :cond_0

    .line 896
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    .line 897
    const/4 v0, 0x0

    return v0

    .line 899
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private readCommonString(Landroid/os/Parcel;I)Ljava/lang/String;
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;
    .param p2, "version"    # I

    .line 724
    const/16 v0, 0x9

    if-gt p2, v0, :cond_0

    .line 725
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 727
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 728
    .local v0, "index":I
    if-ltz v0, :cond_1

    .line 729
    iget-object v1, p0, Lcom/android/internal/app/procstats/ProcessStats;->mIndexToCommonString:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1

    .line 731
    :cond_1
    not-int v0, v0

    .line 732
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 733
    .local v1, "name":Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessStats;->mIndexToCommonString:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gt v2, v0, :cond_2

    .line 734
    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessStats;->mIndexToCommonString:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 736
    :cond_2
    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessStats;->mIndexToCommonString:Ljava/util/ArrayList;

    invoke-virtual {v2, v0, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 737
    return-object v1
.end method

.method private readCompactedLongArray(Landroid/os/Parcel;I[JI)V
    .locals 8
    .param p1, "in"    # Landroid/os/Parcel;
    .param p2, "version"    # I
    .param p3, "array"    # [J
    .param p4, "num"    # I

    .line 687
    const/16 v0, 0xa

    if-gt p2, v0, :cond_0

    .line 688
    invoke-virtual {p1, p3}, Landroid/os/Parcel;->readLongArray([J)V

    .line 689
    return-void

    .line 691
    :cond_0
    array-length v0, p3

    .line 692
    .local v0, "alen":I
    if-gt p4, v0, :cond_4

    .line 696
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p4, :cond_2

    .line 697
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 698
    .local v2, "val":I
    if-ltz v2, :cond_1

    .line 699
    int-to-long v3, v2

    aput-wide v3, p3, v1

    goto :goto_1

    .line 701
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 702
    .local v3, "bottom":I
    not-int v4, v2

    int-to-long v4, v4

    const/16 v6, 0x20

    shl-long/2addr v4, v6

    int-to-long v6, v3

    or-long/2addr v4, v6

    aput-wide v4, p3, v1

    .line 696
    .end local v2    # "val":I
    .end local v3    # "bottom":I
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 705
    :cond_2
    :goto_2
    if-ge v1, v0, :cond_3

    .line 706
    const-wide/16 v2, 0x0

    aput-wide v2, p3, v1

    .line 707
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 709
    :cond_3
    return-void

    .line 693
    .end local v1    # "i":I
    :cond_4
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bad array lengths: got "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " array is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static readFully(Ljava/io/InputStream;[I)[B
    .locals 6
    .param p0, "stream"    # Ljava/io/InputStream;
    .param p1, "outLen"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 903
    const/4 v0, 0x0

    .line 904
    .local v0, "pos":I
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v1

    .line 905
    .local v1, "initialAvail":I
    if-lez v1, :cond_0

    add-int/lit8 v2, v1, 0x1

    goto :goto_0

    :cond_0
    const/16 v2, 0x4000

    :goto_0
    new-array v2, v2, [B

    .line 907
    .local v2, "data":[B
    :goto_1
    array-length v3, v2

    sub-int/2addr v3, v0

    invoke-virtual {p0, v2, v0, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    .line 910
    .local v3, "amt":I
    const/4 v4, 0x0

    if-gez v3, :cond_1

    .line 913
    aput v0, p1, v4

    .line 914
    return-object v2

    .line 916
    :cond_1
    add-int/2addr v0, v3

    .line 917
    array-length v5, v2

    if-lt v0, v5, :cond_2

    .line 918
    add-int/lit16 v5, v0, 0x4000

    new-array v5, v5, [B

    .line 921
    .local v5, "newData":[B
    invoke-static {v2, v4, v5, v4, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 922
    move-object v2, v5

    .line 924
    .end local v3    # "amt":I
    .end local v5    # "newData":[B
    :cond_2
    goto :goto_1
.end method

.method private resetCommon()V
    .locals 3

    .line 529
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartClock:J

    .line 530
    invoke-direct {p0}, Lcom/android/internal/app/procstats/ProcessStats;->buildTimePeriodStartClockStr()V

    .line 531
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndRealtime:J

    iput-wide v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartRealtime:J

    .line 532
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndUptime:J

    iput-wide v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartUptime:J

    .line 533
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mInternalSinglePssCount:J

    .line 534
    iput-wide v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mInternalSinglePssTime:J

    .line 535
    iput-wide v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mInternalAllMemPssCount:J

    .line 536
    iput-wide v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mInternalAllMemPssTime:J

    .line 537
    iput-wide v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mInternalAllPollPssCount:J

    .line 538
    iput-wide v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mInternalAllPollPssTime:J

    .line 539
    iput-wide v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mExternalPssCount:J

    .line 540
    iput-wide v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mExternalPssTime:J

    .line 541
    iput-wide v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mExternalSlowPssCount:J

    .line 542
    iput-wide v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mExternalSlowPssTime:J

    .line 543
    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessStats;->mTableData:Lcom/android/internal/app/procstats/SparseMappingTable;

    invoke-virtual {v2}, Lcom/android/internal/app/procstats/SparseMappingTable;->reset()V

    .line 544
    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactorDurations:[J

    invoke-static {v2, v0, v1}, Ljava/util/Arrays;->fill([JJ)V

    .line 545
    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessStats;->mSysMemUsage:Lcom/android/internal/app/procstats/SysMemUsageTable;

    invoke-virtual {v2}, Lcom/android/internal/app/procstats/SysMemUsageTable;->resetTable()V

    .line 546
    iput-wide v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mStartTime:J

    .line 547
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    .line 548
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mFlags:I

    .line 549
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/app/procstats/ProcessStats;->evaluateSystemProperties(Z)Z

    .line 550
    invoke-virtual {p0}, Lcom/android/internal/app/procstats/ProcessStats;->updateFragmentation()V

    .line 551
    return-void
.end method

.method private static splitAndParseNumbers(Ljava/lang/String;)[I
    .locals 11
    .param p0, "s"    # Ljava/lang/String;

    .line 625
    const/4 v0, 0x0

    .line 626
    .local v0, "digit":Z
    const/4 v1, 0x0

    .line 627
    .local v1, "count":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 629
    .local v2, "N":I
    const/4 v3, 0x0

    move v4, v0

    move v0, v3

    .local v0, "i":I
    .local v4, "digit":Z
    :goto_0
    const/16 v5, 0x39

    const/16 v6, 0x30

    if-ge v0, v2, :cond_2

    .line 630
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 631
    .local v7, "c":C
    if-lt v7, v6, :cond_0

    if-gt v7, v5, :cond_0

    .line 632
    if-nez v4, :cond_1

    .line 633
    const/4 v4, 0x1

    .line 634
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 637
    :cond_0
    const/4 v4, 0x0

    .line 629
    .end local v7    # "c":C
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 641
    .end local v0    # "i":I
    :cond_2
    new-array v0, v1, [I

    .line 642
    .local v0, "result":[I
    const/4 v7, 0x0

    .line 643
    .local v7, "p":I
    const/4 v8, 0x0

    .line 644
    .local v8, "val":I
    nop

    .local v3, "i":I
    :goto_2
    if-ge v3, v2, :cond_6

    .line 645
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v9

    .line 646
    .local v9, "c":C
    if-lt v9, v6, :cond_4

    if-gt v9, v5, :cond_4

    .line 647
    if-nez v4, :cond_3

    .line 648
    const/4 v4, 0x1

    .line 649
    add-int/lit8 v8, v9, -0x30

    goto :goto_3

    .line 651
    :cond_3
    mul-int/lit8 v8, v8, 0xa

    .line 652
    add-int/lit8 v10, v9, -0x30

    add-int/2addr v8, v10

    goto :goto_3

    .line 655
    :cond_4
    if-eqz v4, :cond_5

    .line 656
    const/4 v4, 0x0

    .line 657
    add-int/lit8 v10, v7, 0x1

    .local v10, "p":I
    aput v8, v0, v7

    .line 644
    .end local v7    # "p":I
    .end local v9    # "c":C
    move v7, v10

    .end local v10    # "p":I
    .restart local v7    # "p":I
    :cond_5
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 661
    .end local v3    # "i":I
    :cond_6
    if-lez v1, :cond_7

    .line 662
    add-int/lit8 v3, v1, -0x1

    aput v8, v0, v3

    .line 664
    :cond_7
    return-object v0
.end method

.method private writeCommonString(Landroid/os/Parcel;Ljava/lang/String;)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "name"    # Ljava/lang/String;

    .line 712
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mCommonStringToIndex:Landroid/util/ArrayMap;

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 713
    .local v0, "index":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 714
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 715
    return-void

    .line 717
    :cond_0
    iget-object v1, p0, Lcom/android/internal/app/procstats/ProcessStats;->mCommonStringToIndex:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 718
    iget-object v1, p0, Lcom/android/internal/app/procstats/ProcessStats;->mCommonStringToIndex:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 719
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    not-int v1, v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 720
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 721
    return-void
.end method

.method private writeCompactedLongArray(Landroid/os/Parcel;[JI)V
    .locals 7
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "array"    # [J
    .param p3, "num"    # I

    .line 669
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_2

    .line 670
    aget-wide v1, p2, v0

    .line 671
    .local v1, "val":J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-gez v3, :cond_0

    .line 672
    const-string v3, "ProcessStats"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Time val negative: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    const-wide/16 v1, 0x0

    .line 675
    :cond_0
    const-wide/32 v3, 0x7fffffff

    cmp-long v5, v1, v3

    if-gtz v5, :cond_1

    .line 676
    long-to-int v3, v1

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 678
    :cond_1
    const/16 v5, 0x20

    shr-long v5, v1, v5

    and-long/2addr v3, v5

    long-to-int v3, v3

    not-int v3, v3

    .line 679
    .local v3, "top":I
    const-wide v4, 0xffffffffL

    and-long/2addr v4, v1

    long-to-int v4, v4

    .line 680
    .local v4, "bottom":I
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 681
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 669
    .end local v1    # "val":J
    .end local v3    # "top":I
    .end local v4    # "bottom":I
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 684
    .end local v0    # "i":I
    :cond_2
    return-void
.end method


# virtual methods
.method public add(Lcom/android/internal/app/procstats/ProcessStats;)V
    .locals 32
    .param p1, "other"    # Lcom/android/internal/app/procstats/ProcessStats;

    move-object/from16 v7, p0

    .line 240
    move-object/from16 v8, p1

    iget-object v0, v8, Lcom/android/internal/app/procstats/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    .line 241
    invoke-virtual {v0}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v9

    .line 242
    .local v9, "pkgMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;>;"
    const/4 v0, 0x0

    .local v0, "ip":I
    :goto_0
    move v11, v0

    .end local v0    # "ip":I
    .local v11, "ip":I
    invoke-virtual {v9}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-ge v11, v0, :cond_6

    .line 243
    invoke-virtual {v9, v11}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Ljava/lang/String;

    .line 244
    .local v12, "pkgName":Ljava/lang/String;
    invoke-virtual {v9, v11}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Landroid/util/SparseArray;

    .line 245
    .local v13, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;"
    const/4 v0, 0x0

    .local v0, "iu":I
    :goto_1
    move v14, v0

    .end local v0    # "iu":I
    .local v14, "iu":I
    invoke-virtual {v13}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v14, v0, :cond_5

    .line 246
    invoke-virtual {v13, v14}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v15

    .line 247
    .local v15, "uid":I
    invoke-virtual {v13, v14}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/util/LongSparseArray;

    .line 248
    .local v6, "versions":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;"
    const/4 v0, 0x0

    .local v0, "iv":I
    :goto_2
    move v5, v0

    .end local v0    # "iv":I
    .local v5, "iv":I
    invoke-virtual {v6}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    if-ge v5, v0, :cond_4

    .line 249
    invoke-virtual {v6, v5}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v3

    .line 250
    .local v3, "vers":J
    invoke-virtual {v6, v5}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    .line 251
    .local v2, "otherState":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    iget-object v0, v2, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 252
    .local v1, "NPROCS":I
    iget-object v0, v2, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 253
    .local v0, "NSRVS":I
    const/16 v16, 0x0

    .local v16, "iproc":I
    :goto_3
    move/from16 v17, v16

    .end local v16    # "iproc":I
    .local v17, "iproc":I
    move/from16 v10, v17

    if-ge v10, v1, :cond_2

    .line 254
    .end local v17    # "iproc":I
    .local v10, "iproc":I
    move/from16 v19, v0

    iget-object v0, v2, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    .end local v0    # "NSRVS":I
    .local v19, "NSRVS":I
    invoke-virtual {v0, v10}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/procstats/ProcessState;

    .line 255
    .local v0, "otherProc":Lcom/android/internal/app/procstats/ProcessState;
    move/from16 v20, v1

    invoke-virtual {v0}, Lcom/android/internal/app/procstats/ProcessState;->getCommonProcess()Lcom/android/internal/app/procstats/ProcessState;

    move-result-object v1

    .end local v1    # "NPROCS":I
    .local v20, "NPROCS":I
    if-eq v1, v0, :cond_1

    .line 258
    nop

    .line 259
    invoke-virtual {v0}, Lcom/android/internal/app/procstats/ProcessState;->getName()Ljava/lang/String;

    move-result-object v16

    .line 258
    move-object/from16 v21, v6

    move/from16 v1, v19

    move-object v6, v0

    move-object v0, v7

    .end local v0    # "otherProc":Lcom/android/internal/app/procstats/ProcessState;
    .end local v19    # "NSRVS":I
    .local v1, "NSRVS":I
    .local v6, "otherProc":Lcom/android/internal/app/procstats/ProcessState;
    .local v21, "versions":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;"
    move-object/from16 v22, v9

    move/from16 v17, v20

    move v9, v1

    move-object v1, v12

    .end local v1    # "NSRVS":I
    .end local v20    # "NPROCS":I
    .local v9, "NSRVS":I
    .local v17, "NPROCS":I
    .local v22, "pkgMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;>;"
    move-object/from16 v23, v13

    move-object v13, v2

    move v2, v15

    .end local v2    # "otherState":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    .local v13, "otherState":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    .local v23, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;"
    move-wide/from16 v24, v3

    .end local v3    # "vers":J
    .local v24, "vers":J
    move/from16 v19, v5

    move-object/from16 v5, v16

    .end local v5    # "iv":I
    .local v19, "iv":I
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/app/procstats/ProcessStats;->getProcessStateLocked(Ljava/lang/String;IJLjava/lang/String;)Lcom/android/internal/app/procstats/ProcessState;

    move-result-object v0

    .line 260
    .local v0, "thisProc":Lcom/android/internal/app/procstats/ProcessState;
    invoke-virtual {v0}, Lcom/android/internal/app/procstats/ProcessState;->getCommonProcess()Lcom/android/internal/app/procstats/ProcessState;

    move-result-object v1

    if-ne v1, v0, :cond_0

    .line 262
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/app/procstats/ProcessState;->setMultiPackage(Z)V

    .line 263
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 264
    .local v1, "now":J
    move-wide/from16 v3, v24

    invoke-virtual {v7, v12, v15, v3, v4}, Lcom/android/internal/app/procstats/ProcessStats;->getPackageStateLocked(Ljava/lang/String;IJ)Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    move-result-object v5

    .line 266
    .end local v24    # "vers":J
    .restart local v3    # "vers":J
    .local v5, "pkgState":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/procstats/ProcessState;->clone(J)Lcom/android/internal/app/procstats/ProcessState;

    move-result-object v0

    .line 267
    move-wide/from16 v26, v1

    iget-object v1, v5, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    .end local v1    # "now":J
    .local v26, "now":J
    invoke-virtual {v0}, Lcom/android/internal/app/procstats/ProcessState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .end local v5    # "pkgState":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    .end local v26    # "now":J
    goto :goto_4

    .line 269
    .end local v3    # "vers":J
    .restart local v24    # "vers":J
    :cond_0
    move-wide/from16 v3, v24

    .end local v24    # "vers":J
    .restart local v3    # "vers":J
    :goto_4
    invoke-virtual {v0, v6}, Lcom/android/internal/app/procstats/ProcessState;->add(Lcom/android/internal/app/procstats/ProcessState;)V

    .end local v0    # "thisProc":Lcom/android/internal/app/procstats/ProcessState;
    .end local v6    # "otherProc":Lcom/android/internal/app/procstats/ProcessState;
    goto :goto_5

    .line 253
    .end local v17    # "NPROCS":I
    .end local v21    # "versions":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;"
    .end local v22    # "pkgMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;>;"
    .end local v23    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;"
    .restart local v2    # "otherState":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    .local v5, "iv":I
    .local v6, "versions":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;"
    .local v9, "pkgMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;>;"
    .local v13, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;"
    .local v19, "NSRVS":I
    .restart local v20    # "NPROCS":I
    :cond_1
    move-object/from16 v21, v6

    move-object/from16 v22, v9

    move-object/from16 v23, v13

    move/from16 v9, v19

    move/from16 v17, v20

    move-object v13, v2

    move/from16 v19, v5

    .end local v2    # "otherState":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    .end local v5    # "iv":I
    .end local v6    # "versions":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;"
    .end local v20    # "NPROCS":I
    .local v9, "NSRVS":I
    .local v13, "otherState":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    .restart local v17    # "NPROCS":I
    .local v19, "iv":I
    .restart local v21    # "versions":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;"
    .restart local v22    # "pkgMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;>;"
    .restart local v23    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;"
    :goto_5
    add-int/lit8 v16, v10, 0x1

    .end local v10    # "iproc":I
    .restart local v16    # "iproc":I
    move v0, v9

    move-object v2, v13

    move/from16 v1, v17

    move/from16 v5, v19

    move-object/from16 v6, v21

    move-object/from16 v9, v22

    move-object/from16 v13, v23

    goto :goto_3

    .line 272
    .end local v16    # "iproc":I
    .end local v17    # "NPROCS":I
    .end local v19    # "iv":I
    .end local v21    # "versions":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;"
    .end local v22    # "pkgMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;>;"
    .end local v23    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;"
    .local v0, "NSRVS":I
    .local v1, "NPROCS":I
    .restart local v2    # "otherState":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    .restart local v5    # "iv":I
    .restart local v6    # "versions":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;"
    .local v9, "pkgMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;>;"
    .local v13, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;"
    :cond_2
    move/from16 v17, v1

    move/from16 v19, v5

    move-object/from16 v21, v6

    move-object/from16 v22, v9

    move-object/from16 v23, v13

    move v9, v0

    move-object v13, v2

    .end local v0    # "NSRVS":I
    .end local v1    # "NPROCS":I
    .end local v2    # "otherState":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    .end local v5    # "iv":I
    .end local v6    # "versions":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;"
    .local v9, "NSRVS":I
    .local v13, "otherState":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    .restart local v17    # "NPROCS":I
    .restart local v19    # "iv":I
    .restart local v21    # "versions":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;"
    .restart local v22    # "pkgMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;>;"
    .restart local v23    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;"
    const/4 v0, 0x0

    .local v0, "isvc":I
    :goto_6
    move v10, v0

    .end local v0    # "isvc":I
    .local v10, "isvc":I
    if-ge v10, v9, :cond_3

    .line 273
    iget-object v0, v13, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v0, v10}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/android/internal/app/procstats/ServiceState;

    .line 276
    .local v6, "otherSvc":Lcom/android/internal/app/procstats/ServiceState;
    nop

    .line 277
    invoke-virtual {v6}, Lcom/android/internal/app/procstats/ServiceState;->getProcessName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6}, Lcom/android/internal/app/procstats/ServiceState;->getName()Ljava/lang/String;

    move-result-object v16

    .line 276
    move-object v0, v7

    move-object v1, v12

    move v2, v15

    move-wide/from16 v24, v3

    .end local v3    # "vers":J
    .restart local v24    # "vers":J
    move/from16 v28, v9

    move-object/from16 v20, v21

    move-object v9, v6

    move-object/from16 v6, v16

    .end local v6    # "otherSvc":Lcom/android/internal/app/procstats/ServiceState;
    .end local v21    # "versions":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;"
    .local v9, "otherSvc":Lcom/android/internal/app/procstats/ServiceState;
    .local v20, "versions":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;"
    .local v28, "NSRVS":I
    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/app/procstats/ProcessStats;->getServiceStateLocked(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;)Lcom/android/internal/app/procstats/ServiceState;

    move-result-object v0

    .line 278
    .local v0, "thisSvc":Lcom/android/internal/app/procstats/ServiceState;
    invoke-virtual {v0, v9}, Lcom/android/internal/app/procstats/ServiceState;->add(Lcom/android/internal/app/procstats/ServiceState;)V

    .line 272
    .end local v0    # "thisSvc":Lcom/android/internal/app/procstats/ServiceState;
    .end local v9    # "otherSvc":Lcom/android/internal/app/procstats/ServiceState;
    add-int/lit8 v0, v10, 0x1

    .end local v10    # "isvc":I
    .local v0, "isvc":I
    move/from16 v9, v28

    goto :goto_6

    .line 248
    .end local v0    # "isvc":I
    .end local v13    # "otherState":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    .end local v17    # "NPROCS":I
    .end local v20    # "versions":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;"
    .end local v24    # "vers":J
    .end local v28    # "NSRVS":I
    .restart local v21    # "versions":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;"
    :cond_3
    move-object/from16 v20, v21

    .end local v21    # "versions":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;"
    .restart local v20    # "versions":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;"
    add-int/lit8 v0, v19, 0x1

    .end local v19    # "iv":I
    .local v0, "iv":I
    move-object/from16 v6, v20

    move-object/from16 v9, v22

    move-object/from16 v13, v23

    goto/16 :goto_2

    .line 245
    .end local v0    # "iv":I
    .end local v15    # "uid":I
    .end local v20    # "versions":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;"
    .end local v22    # "pkgMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;>;"
    .end local v23    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;"
    .local v9, "pkgMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;>;"
    .local v13, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;"
    :cond_4
    move-object/from16 v22, v9

    move-object/from16 v23, v13

    .end local v9    # "pkgMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;>;"
    .end local v13    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;"
    .restart local v22    # "pkgMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;>;"
    .restart local v23    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;"
    add-int/lit8 v0, v14, 0x1

    .end local v14    # "iu":I
    .local v0, "iu":I
    goto/16 :goto_1

    .line 242
    .end local v0    # "iu":I
    .end local v12    # "pkgName":Ljava/lang/String;
    .end local v22    # "pkgMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;>;"
    .end local v23    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;"
    .restart local v9    # "pkgMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;>;"
    :cond_5
    move-object/from16 v22, v9

    .end local v9    # "pkgMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;>;"
    .restart local v22    # "pkgMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;>;"
    add-int/lit8 v0, v11, 0x1

    .end local v11    # "ip":I
    .local v0, "ip":I
    goto/16 :goto_0

    .line 284
    .end local v0    # "ip":I
    .end local v22    # "pkgMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;>;"
    .restart local v9    # "pkgMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;>;"
    :cond_6
    move-object/from16 v22, v9

    .end local v9    # "pkgMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;>;"
    .restart local v22    # "pkgMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;>;"
    iget-object v0, v8, Lcom/android/internal/app/procstats/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v0}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v9

    .line 285
    .local v9, "procMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessState;>;>;"
    const/4 v0, 0x0

    .restart local v0    # "ip":I
    :goto_7
    move v10, v0

    .end local v0    # "ip":I
    .local v10, "ip":I
    invoke-virtual {v9}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-ge v10, v0, :cond_a

    .line 286
    invoke-virtual {v9, v10}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Landroid/util/SparseArray;

    .line 287
    .local v11, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessState;>;"
    const/4 v0, 0x0

    .local v0, "iu":I
    :goto_8
    move v12, v0

    .end local v0    # "iu":I
    .local v12, "iu":I
    invoke-virtual {v11}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v12, v0, :cond_9

    .line 288
    invoke-virtual {v11, v12}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v13

    .line 289
    .local v13, "uid":I
    invoke-virtual {v11, v12}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Lcom/android/internal/app/procstats/ProcessState;

    .line 290
    .local v14, "otherProc":Lcom/android/internal/app/procstats/ProcessState;
    invoke-virtual {v14}, Lcom/android/internal/app/procstats/ProcessState;->getName()Ljava/lang/String;

    move-result-object v15

    .line 291
    .local v15, "name":Ljava/lang/String;
    invoke-virtual {v14}, Lcom/android/internal/app/procstats/ProcessState;->getPackage()Ljava/lang/String;

    move-result-object v6

    .line 292
    .local v6, "pkg":Ljava/lang/String;
    invoke-virtual {v14}, Lcom/android/internal/app/procstats/ProcessState;->getVersion()J

    move-result-wide v4

    .line 293
    .local v4, "vers":J
    iget-object v0, v7, Lcom/android/internal/app/procstats/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v0, v15, v13}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Lcom/android/internal/app/procstats/ProcessState;

    .line 295
    .local v16, "thisProc":Lcom/android/internal/app/procstats/ProcessState;
    if-nez v16, :cond_7

    .line 297
    new-instance v17, Lcom/android/internal/app/procstats/ProcessState;

    move-object/from16 v0, v17

    move-object v1, v7

    move-object v2, v6

    move v3, v13

    move-wide/from16 v29, v4

    .end local v4    # "vers":J
    .local v29, "vers":J
    move-object/from16 v31, v9

    move-object v9, v6

    move-object v6, v15

    .end local v6    # "pkg":Ljava/lang/String;
    .local v9, "pkg":Ljava/lang/String;
    .local v31, "procMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessState;>;>;"
    invoke-direct/range {v0 .. v6}, Lcom/android/internal/app/procstats/ProcessState;-><init>(Lcom/android/internal/app/procstats/ProcessStats;Ljava/lang/String;IJLjava/lang/String;)V

    .line 298
    .end local v16    # "thisProc":Lcom/android/internal/app/procstats/ProcessState;
    .local v0, "thisProc":Lcom/android/internal/app/procstats/ProcessState;
    iget-object v1, v7, Lcom/android/internal/app/procstats/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v1, v15, v13, v0}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    .line 299
    move-wide/from16 v1, v29

    invoke-virtual {v7, v9, v13, v1, v2}, Lcom/android/internal/app/procstats/ProcessStats;->getPackageStateLocked(Ljava/lang/String;IJ)Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    move-result-object v3

    .line 300
    .end local v29    # "vers":J
    .local v1, "vers":J
    .local v3, "thisState":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    iget-object v4, v3, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v4, v15}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 301
    iget-object v4, v3, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v4, v15, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .end local v3    # "thisState":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    goto :goto_9

    .line 304
    .end local v0    # "thisProc":Lcom/android/internal/app/procstats/ProcessState;
    .end local v1    # "vers":J
    .end local v31    # "procMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessState;>;>;"
    .restart local v4    # "vers":J
    .restart local v6    # "pkg":Ljava/lang/String;
    .local v9, "procMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessState;>;>;"
    .restart local v16    # "thisProc":Lcom/android/internal/app/procstats/ProcessState;
    :cond_7
    move-wide v1, v4

    move-object/from16 v31, v9

    move-object v9, v6

    move-object/from16 v0, v16

    .end local v4    # "vers":J
    .end local v6    # "pkg":Ljava/lang/String;
    .end local v16    # "thisProc":Lcom/android/internal/app/procstats/ProcessState;
    .restart local v0    # "thisProc":Lcom/android/internal/app/procstats/ProcessState;
    .restart local v1    # "vers":J
    .local v9, "pkg":Ljava/lang/String;
    .restart local v31    # "procMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessState;>;>;"
    :cond_8
    :goto_9
    invoke-virtual {v0, v14}, Lcom/android/internal/app/procstats/ProcessState;->add(Lcom/android/internal/app/procstats/ProcessState;)V

    .line 287
    .end local v0    # "thisProc":Lcom/android/internal/app/procstats/ProcessState;
    .end local v1    # "vers":J
    .end local v9    # "pkg":Ljava/lang/String;
    .end local v13    # "uid":I
    .end local v14    # "otherProc":Lcom/android/internal/app/procstats/ProcessState;
    .end local v15    # "name":Ljava/lang/String;
    add-int/lit8 v0, v12, 0x1

    .end local v12    # "iu":I
    .local v0, "iu":I
    move-object/from16 v9, v31

    goto :goto_8

    .line 285
    .end local v0    # "iu":I
    .end local v11    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessState;>;"
    .end local v31    # "procMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessState;>;>;"
    .local v9, "procMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessState;>;>;"
    :cond_9
    move-object/from16 v31, v9

    .end local v9    # "procMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessState;>;>;"
    .restart local v31    # "procMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessState;>;>;"
    add-int/lit8 v0, v10, 0x1

    .end local v10    # "ip":I
    .local v0, "ip":I
    goto :goto_7

    .line 308
    .end local v0    # "ip":I
    .end local v31    # "procMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessState;>;>;"
    .restart local v9    # "procMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessState;>;>;"
    :cond_a
    move-object/from16 v31, v9

    .end local v9    # "procMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessState;>;>;"
    .restart local v31    # "procMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessState;>;>;"
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_a
    move/from16 v0, v18

    .end local v18    # "i":I
    .local v0, "i":I
    const/16 v1, 0x8

    if-ge v0, v1, :cond_b

    .line 312
    iget-object v1, v7, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactorDurations:[J

    aget-wide v2, v1, v0

    iget-object v4, v8, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactorDurations:[J

    aget-wide v4, v4, v0

    add-long/2addr v2, v4

    aput-wide v2, v1, v0

    .line 308
    add-int/lit8 v18, v0, 0x1

    .end local v0    # "i":I
    .restart local v18    # "i":I
    goto :goto_a

    .line 315
    .end local v18    # "i":I
    :cond_b
    iget-object v0, v7, Lcom/android/internal/app/procstats/ProcessStats;->mSysMemUsage:Lcom/android/internal/app/procstats/SysMemUsageTable;

    iget-object v1, v8, Lcom/android/internal/app/procstats/ProcessStats;->mSysMemUsage:Lcom/android/internal/app/procstats/SysMemUsageTable;

    invoke-virtual {v0, v1}, Lcom/android/internal/app/procstats/SysMemUsageTable;->mergeStats(Lcom/android/internal/app/procstats/SysMemUsageTable;)V

    .line 317
    iget-wide v0, v8, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartClock:J

    iget-wide v2, v7, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartClock:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_c

    .line 318
    iget-wide v0, v8, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartClock:J

    iput-wide v0, v7, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartClock:J

    .line 319
    iget-object v0, v8, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartClockStr:Ljava/lang/String;

    iput-object v0, v7, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartClockStr:Ljava/lang/String;

    .line 321
    :cond_c
    iget-wide v0, v7, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndRealtime:J

    iget-wide v2, v8, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndRealtime:J

    iget-wide v4, v8, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartRealtime:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, v7, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndRealtime:J

    .line 322
    iget-wide v0, v7, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndUptime:J

    iget-wide v2, v8, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndUptime:J

    iget-wide v4, v8, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartUptime:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, v7, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndUptime:J

    .line 324
    iget-wide v0, v7, Lcom/android/internal/app/procstats/ProcessStats;->mInternalSinglePssCount:J

    iget-wide v2, v8, Lcom/android/internal/app/procstats/ProcessStats;->mInternalSinglePssCount:J

    add-long/2addr v0, v2

    iput-wide v0, v7, Lcom/android/internal/app/procstats/ProcessStats;->mInternalSinglePssCount:J

    .line 325
    iget-wide v0, v7, Lcom/android/internal/app/procstats/ProcessStats;->mInternalSinglePssTime:J

    iget-wide v2, v8, Lcom/android/internal/app/procstats/ProcessStats;->mInternalSinglePssTime:J

    add-long/2addr v0, v2

    iput-wide v0, v7, Lcom/android/internal/app/procstats/ProcessStats;->mInternalSinglePssTime:J

    .line 326
    iget-wide v0, v7, Lcom/android/internal/app/procstats/ProcessStats;->mInternalAllMemPssCount:J

    iget-wide v2, v8, Lcom/android/internal/app/procstats/ProcessStats;->mInternalAllMemPssCount:J

    add-long/2addr v0, v2

    iput-wide v0, v7, Lcom/android/internal/app/procstats/ProcessStats;->mInternalAllMemPssCount:J

    .line 327
    iget-wide v0, v7, Lcom/android/internal/app/procstats/ProcessStats;->mInternalAllMemPssTime:J

    iget-wide v2, v8, Lcom/android/internal/app/procstats/ProcessStats;->mInternalAllMemPssTime:J

    add-long/2addr v0, v2

    iput-wide v0, v7, Lcom/android/internal/app/procstats/ProcessStats;->mInternalAllMemPssTime:J

    .line 328
    iget-wide v0, v7, Lcom/android/internal/app/procstats/ProcessStats;->mInternalAllPollPssCount:J

    iget-wide v2, v8, Lcom/android/internal/app/procstats/ProcessStats;->mInternalAllPollPssCount:J

    add-long/2addr v0, v2

    iput-wide v0, v7, Lcom/android/internal/app/procstats/ProcessStats;->mInternalAllPollPssCount:J

    .line 329
    iget-wide v0, v7, Lcom/android/internal/app/procstats/ProcessStats;->mInternalAllPollPssTime:J

    iget-wide v2, v8, Lcom/android/internal/app/procstats/ProcessStats;->mInternalAllPollPssTime:J

    add-long/2addr v0, v2

    iput-wide v0, v7, Lcom/android/internal/app/procstats/ProcessStats;->mInternalAllPollPssTime:J

    .line 330
    iget-wide v0, v7, Lcom/android/internal/app/procstats/ProcessStats;->mExternalPssCount:J

    iget-wide v2, v8, Lcom/android/internal/app/procstats/ProcessStats;->mExternalPssCount:J

    add-long/2addr v0, v2

    iput-wide v0, v7, Lcom/android/internal/app/procstats/ProcessStats;->mExternalPssCount:J

    .line 331
    iget-wide v0, v7, Lcom/android/internal/app/procstats/ProcessStats;->mExternalPssTime:J

    iget-wide v2, v8, Lcom/android/internal/app/procstats/ProcessStats;->mExternalPssTime:J

    add-long/2addr v0, v2

    iput-wide v0, v7, Lcom/android/internal/app/procstats/ProcessStats;->mExternalPssTime:J

    .line 332
    iget-wide v0, v7, Lcom/android/internal/app/procstats/ProcessStats;->mExternalSlowPssCount:J

    iget-wide v2, v8, Lcom/android/internal/app/procstats/ProcessStats;->mExternalSlowPssCount:J

    add-long/2addr v0, v2

    iput-wide v0, v7, Lcom/android/internal/app/procstats/ProcessStats;->mExternalSlowPssCount:J

    .line 333
    iget-wide v0, v7, Lcom/android/internal/app/procstats/ProcessStats;->mExternalSlowPssTime:J

    iget-wide v2, v8, Lcom/android/internal/app/procstats/ProcessStats;->mExternalSlowPssTime:J

    add-long/2addr v0, v2

    iput-wide v0, v7, Lcom/android/internal/app/procstats/ProcessStats;->mExternalSlowPssTime:J

    .line 335
    iget-boolean v0, v7, Lcom/android/internal/app/procstats/ProcessStats;->mHasSwappedOutPss:Z

    iget-boolean v1, v8, Lcom/android/internal/app/procstats/ProcessStats;->mHasSwappedOutPss:Z

    or-int/2addr v0, v1

    iput-boolean v0, v7, Lcom/android/internal/app/procstats/ProcessStats;->mHasSwappedOutPss:Z

    .line 336
    return-void
.end method

.method public addSysMemUsage(JJJJJ)V
    .locals 5
    .param p1, "cachedMem"    # J
    .param p3, "freeMem"    # J
    .param p5, "zramMem"    # J
    .param p7, "kernelMem"    # J
    .param p9, "nativeMem"    # J

    .line 340
    iget v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactor:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 341
    iget v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactor:I

    mul-int/lit8 v0, v0, 0xe

    .line 342
    .local v0, "state":I
    iget-object v1, p0, Lcom/android/internal/app/procstats/ProcessStats;->mSysMemUsageArgs:[J

    const-wide/16 v2, 0x1

    const/4 v4, 0x0

    aput-wide v2, v1, v4

    .line 343
    move v1, v4

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x3

    if-ge v1, v2, :cond_0

    .line 344
    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessStats;->mSysMemUsageArgs:[J

    const/4 v3, 0x1

    add-int/2addr v3, v1

    aput-wide p1, v2, v3

    .line 345
    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessStats;->mSysMemUsageArgs:[J

    const/4 v3, 0x4

    add-int/2addr v3, v1

    aput-wide p3, v2, v3

    .line 346
    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessStats;->mSysMemUsageArgs:[J

    const/4 v3, 0x7

    add-int/2addr v3, v1

    aput-wide p5, v2, v3

    .line 347
    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessStats;->mSysMemUsageArgs:[J

    const/16 v3, 0xa

    add-int/2addr v3, v1

    aput-wide p7, v2, v3

    .line 348
    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessStats;->mSysMemUsageArgs:[J

    const/16 v3, 0xd

    add-int/2addr v3, v1

    aput-wide p9, v2, v3

    .line 343
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 350
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/android/internal/app/procstats/ProcessStats;->mSysMemUsage:Lcom/android/internal/app/procstats/SysMemUsageTable;

    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessStats;->mSysMemUsageArgs:[J

    invoke-virtual {v1, v0, v2, v4}, Lcom/android/internal/app/procstats/SysMemUsageTable;->mergeStats(I[JI)V

    .line 352
    .end local v0    # "state":I
    :cond_1
    return-void
.end method

.method public collectProcessesLocked([I[I[I[IJLjava/lang/String;Z)Ljava/util/ArrayList;
    .locals 19
    .param p1, "screenStates"    # [I
    .param p2, "memStates"    # [I
    .param p3, "procStates"    # [I
    .param p4, "sortProcStates"    # [I
    .param p5, "now"    # J
    .param p7, "reqPackage"    # Ljava/lang/String;
    .param p8, "activeOnly"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I[I[I[IJ",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/app/procstats/ProcessState;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p7

    .line 1628
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 1629
    .local v1, "foundProcs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/internal/app/procstats/ProcessState;>;"
    move-object/from16 v2, p0

    iget-object v3, v2, Lcom/android/internal/app/procstats/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    .line 1630
    invoke-virtual {v3}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v3

    .line 1631
    .local v3, "pkgMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;>;"
    const/4 v5, 0x0

    .local v5, "ip":I
    :goto_0
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v6

    if-ge v5, v6, :cond_7

    .line 1632
    invoke-virtual {v3, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1633
    .local v6, "pkgName":Ljava/lang/String;
    invoke-virtual {v3, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/SparseArray;

    .line 1634
    .local v7, "procs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;"
    const/4 v8, 0x0

    .local v8, "iu":I
    :goto_1
    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v9

    if-ge v8, v9, :cond_6

    .line 1635
    invoke-virtual {v7, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/LongSparseArray;

    .line 1636
    .local v9, "vpkgs":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;"
    invoke-virtual {v9}, Landroid/util/LongSparseArray;->size()I

    move-result v10

    .line 1637
    .local v10, "NVERS":I
    const/4 v11, 0x0

    .local v11, "iv":I
    :goto_2
    if-ge v11, v10, :cond_5

    .line 1638
    invoke-virtual {v9, v11}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    .line 1639
    .local v12, "state":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    iget-object v13, v12, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v13}, Landroid/util/ArrayMap;->size()I

    move-result v13

    .line 1640
    .local v13, "NPROCS":I
    if-eqz v0, :cond_1

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    goto :goto_3

    :cond_0
    const/4 v14, 0x0

    goto :goto_4

    :cond_1
    :goto_3
    const/4 v14, 0x1

    .line 1641
    .local v14, "pkgMatch":Z
    :goto_4
    const/4 v15, 0x0

    .local v15, "iproc":I
    :goto_5
    if-ge v15, v13, :cond_4

    .line 1642
    iget-object v4, v12, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v4, v15}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/app/procstats/ProcessState;

    .line 1643
    .local v4, "proc":Lcom/android/internal/app/procstats/ProcessState;
    if-nez v14, :cond_2

    invoke-virtual {v4}, Lcom/android/internal/app/procstats/ProcessState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1644
    goto :goto_6

    .line 1646
    :cond_2
    if-eqz p8, :cond_3

    invoke-virtual {v4}, Lcom/android/internal/app/procstats/ProcessState;->isInUse()Z

    move-result v17

    if-nez v17, :cond_3

    .line 1647
    goto :goto_6

    .line 1649
    :cond_3
    invoke-virtual {v4}, Lcom/android/internal/app/procstats/ProcessState;->getCommonProcess()Lcom/android/internal/app/procstats/ProcessState;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1641
    .end local v4    # "proc":Lcom/android/internal/app/procstats/ProcessState;
    :goto_6
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p7

    move-object/from16 v2, p0

    goto :goto_5

    .line 1637
    .end local v12    # "state":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    .end local v13    # "NPROCS":I
    .end local v14    # "pkgMatch":Z
    .end local v15    # "iproc":I
    :cond_4
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v0, p7

    move-object/from16 v2, p0

    goto :goto_2

    .line 1634
    .end local v9    # "vpkgs":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;"
    .end local v10    # "NVERS":I
    .end local v11    # "iv":I
    :cond_5
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v0, p7

    move-object/from16 v2, p0

    goto :goto_1

    .line 1631
    .end local v6    # "pkgName":Ljava/lang/String;
    .end local v7    # "procs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;"
    .end local v8    # "iu":I
    :cond_6
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p7

    move-object/from16 v2, p0

    goto/16 :goto_0

    .line 1654
    .end local v5    # "ip":I
    :cond_7
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v4

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 1655
    .local v0, "outProcs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/app/procstats/ProcessState;>;"
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_7
    move/from16 v4, v16

    .end local v16    # "i":I
    .local v4, "i":I
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v5

    if-ge v4, v5, :cond_a

    .line 1656
    invoke-virtual {v1, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/app/procstats/ProcessState;

    .line 1657
    .local v5, "proc":Lcom/android/internal/app/procstats/ProcessState;
    move-object v6, v5

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-wide/from16 v10, p5

    invoke-virtual/range {v6 .. v11}, Lcom/android/internal/app/procstats/ProcessState;->computeProcessTimeLocked([I[I[IJ)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_8

    .line 1658
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1659
    move-object/from16 v12, p3

    move-object/from16 v13, p4

    if-eq v12, v13, :cond_9

    .line 1660
    move-object v6, v5

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object v9, v13

    move-wide/from16 v10, p5

    invoke-virtual/range {v6 .. v11}, Lcom/android/internal/app/procstats/ProcessState;->computeProcessTimeLocked([I[I[IJ)J

    .end local v5    # "proc":Lcom/android/internal/app/procstats/ProcessState;
    goto :goto_8

    .line 1655
    :cond_8
    move-object/from16 v12, p3

    move-object/from16 v13, p4

    :cond_9
    :goto_8
    add-int/lit8 v16, v4, 0x1

    .end local v4    # "i":I
    .restart local v16    # "i":I
    goto :goto_7

    .line 1664
    .end local v16    # "i":I
    :cond_a
    move-object/from16 v12, p3

    move-object/from16 v13, p4

    sget-object v4, Lcom/android/internal/app/procstats/ProcessState;->COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1665
    return-object v0
.end method

.method public computeTotalMemoryUse(Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;J)V
    .locals 26
    .param p1, "data"    # Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;
    .param p2, "now"    # J

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 366
    move-wide/from16 v2, p2

    const-wide/16 v4, 0x0

    iput-wide v4, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->totalTime:J

    .line 367
    const/4 v6, 0x0

    move v7, v6

    .local v7, "i":I
    :goto_0
    const/16 v8, 0xe

    const-wide/16 v9, 0x0

    if-ge v7, v8, :cond_0

    .line 368
    iget-object v8, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->processStateWeight:[D

    aput-wide v9, v8, v7

    .line 369
    iget-object v8, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->processStatePss:[J

    aput-wide v4, v8, v7

    .line 370
    iget-object v8, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->processStateTime:[J

    aput-wide v4, v8, v7

    .line 371
    iget-object v8, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->processStateSamples:[I

    aput v6, v8, v7

    .line 367
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 373
    .end local v7    # "i":I
    :cond_0
    move v7, v6

    .restart local v7    # "i":I
    :goto_1
    const/16 v8, 0x10

    if-ge v7, v8, :cond_1

    .line 374
    iget-object v8, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemUsage:[J

    aput-wide v4, v8, v7

    .line 373
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 376
    .end local v7    # "i":I
    :cond_1
    iput-wide v9, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemCachedWeight:D

    .line 377
    iput-wide v9, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemFreeWeight:D

    .line 378
    iput-wide v9, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemZRamWeight:D

    .line 379
    iput-wide v9, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemKernelWeight:D

    .line 380
    iput-wide v9, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemNativeWeight:D

    .line 381
    iput v6, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemSamples:I

    .line 382
    iget-object v4, v0, Lcom/android/internal/app/procstats/ProcessStats;->mSysMemUsage:Lcom/android/internal/app/procstats/SysMemUsageTable;

    invoke-virtual {v4}, Lcom/android/internal/app/procstats/SysMemUsageTable;->getTotalMemUsage()[J

    move-result-object v4

    .line 383
    .local v4, "totalMemUsage":[J
    move v5, v6

    .local v5, "is":I
    :goto_2
    iget-object v7, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->screenStates:[I

    array-length v7, v7

    if-ge v5, v7, :cond_5

    .line 384
    move v7, v6

    .local v7, "im":I
    :goto_3
    iget-object v8, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->memStates:[I

    array-length v8, v8

    if-ge v7, v8, :cond_4

    .line 385
    iget-object v8, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->screenStates:[I

    aget v8, v8, v5

    iget-object v9, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->memStates:[I

    aget v9, v9, v7

    add-int/2addr v8, v9

    .line 386
    .local v8, "memBucket":I
    mul-int/lit8 v9, v8, 0xe

    .line 387
    .local v9, "stateBucket":I
    iget-object v10, v0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactorDurations:[J

    aget-wide v10, v10, v8

    .line 388
    .local v10, "memTime":J
    iget v12, v0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactor:I

    if-ne v12, v8, :cond_2

    .line 389
    iget-wide v12, v0, Lcom/android/internal/app/procstats/ProcessStats;->mStartTime:J

    sub-long v12, v2, v12

    add-long/2addr v10, v12

    .line 391
    :cond_2
    iget-wide v12, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->totalTime:J

    add-long/2addr v12, v10

    iput-wide v12, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->totalTime:J

    .line 392
    iget-object v12, v0, Lcom/android/internal/app/procstats/ProcessStats;->mSysMemUsage:Lcom/android/internal/app/procstats/SysMemUsageTable;

    int-to-byte v13, v9

    invoke-virtual {v12, v13}, Lcom/android/internal/app/procstats/SysMemUsageTable;->getKey(B)I

    move-result v12

    .line 393
    .local v12, "sysKey":I
    move-object v13, v4

    .line 394
    .local v13, "longs":[J
    const/4 v14, 0x0

    .line 395
    .local v14, "idx":I
    const/4 v15, -0x1

    if-eq v12, v15, :cond_3

    .line 396
    iget-object v15, v0, Lcom/android/internal/app/procstats/ProcessStats;->mSysMemUsage:Lcom/android/internal/app/procstats/SysMemUsageTable;

    invoke-virtual {v15, v12}, Lcom/android/internal/app/procstats/SysMemUsageTable;->getArrayForKey(I)[J

    move-result-object v15

    .line 397
    .local v15, "tmpLongs":[J
    invoke-static {v12}, Lcom/android/internal/app/procstats/SparseMappingTable;->getIndexFromKey(I)I

    move-result v16

    .line 398
    .local v16, "tmpIndex":I
    add-int/lit8 v17, v16, 0x0

    aget-wide v17, v15, v17

    const-wide/16 v19, 0x3

    cmp-long v17, v17, v19

    if-ltz v17, :cond_3

    .line 399
    move-object/from16 v21, v4

    iget-object v4, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemUsage:[J

    .end local v4    # "totalMemUsage":[J
    .local v21, "totalMemUsage":[J
    invoke-static {v4, v6, v13, v14}, Lcom/android/internal/app/procstats/SysMemUsageTable;->mergeSysMemUsage([JI[JI)V

    .line 400
    move-object v13, v15

    .line 401
    move/from16 v14, v16

    .end local v15    # "tmpLongs":[J
    .end local v16    # "tmpIndex":I
    goto :goto_4

    .line 404
    .end local v21    # "totalMemUsage":[J
    .restart local v4    # "totalMemUsage":[J
    :cond_3
    move-object/from16 v21, v4

    .end local v4    # "totalMemUsage":[J
    .restart local v21    # "totalMemUsage":[J
    :goto_4
    move/from16 v22, v7

    iget-wide v6, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemCachedWeight:D

    .end local v7    # "im":I
    .local v22, "im":I
    add-int/lit8 v4, v14, 0x2

    move/from16 v23, v8

    move/from16 v24, v9

    aget-wide v8, v13, v4

    .end local v8    # "memBucket":I
    .end local v9    # "stateBucket":I
    .local v23, "memBucket":I
    .local v24, "stateBucket":I
    long-to-double v8, v8

    long-to-double v2, v10

    mul-double/2addr v8, v2

    add-double/2addr v6, v8

    iput-wide v6, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemCachedWeight:D

    .line 406
    iget-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemFreeWeight:D

    add-int/lit8 v4, v14, 0x5

    aget-wide v6, v13, v4

    long-to-double v6, v6

    long-to-double v8, v10

    mul-double/2addr v6, v8

    add-double/2addr v2, v6

    iput-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemFreeWeight:D

    .line 408
    iget-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemZRamWeight:D

    add-int/lit8 v4, v14, 0x8

    aget-wide v6, v13, v4

    long-to-double v6, v6

    long-to-double v8, v10

    mul-double/2addr v6, v8

    add-double/2addr v2, v6

    iput-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemZRamWeight:D

    .line 410
    iget-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemKernelWeight:D

    add-int/lit8 v4, v14, 0xb

    aget-wide v6, v13, v4

    long-to-double v6, v6

    long-to-double v8, v10

    mul-double/2addr v6, v8

    add-double/2addr v2, v6

    iput-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemKernelWeight:D

    .line 412
    iget-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemNativeWeight:D

    add-int/lit8 v4, v14, 0xe

    aget-wide v6, v13, v4

    long-to-double v6, v6

    long-to-double v8, v10

    mul-double/2addr v6, v8

    add-double/2addr v2, v6

    iput-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemNativeWeight:D

    .line 414
    iget v2, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemSamples:I

    int-to-long v2, v2

    add-int/lit8 v4, v14, 0x0

    aget-wide v6, v13, v4

    add-long/2addr v2, v6

    long-to-int v2, v2

    iput v2, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemSamples:I

    .line 384
    .end local v10    # "memTime":J
    .end local v12    # "sysKey":I
    .end local v13    # "longs":[J
    .end local v14    # "idx":I
    .end local v23    # "memBucket":I
    .end local v24    # "stateBucket":I
    add-int/lit8 v7, v22, 0x1

    .end local v22    # "im":I
    .restart local v7    # "im":I
    move-object/from16 v4, v21

    move-wide/from16 v2, p2

    const/4 v6, 0x0

    goto/16 :goto_3

    .line 383
    .end local v7    # "im":I
    .end local v21    # "totalMemUsage":[J
    .restart local v4    # "totalMemUsage":[J
    :cond_4
    move-object/from16 v21, v4

    .end local v4    # "totalMemUsage":[J
    .restart local v21    # "totalMemUsage":[J
    add-int/lit8 v5, v5, 0x1

    move-wide/from16 v2, p2

    const/4 v6, 0x0

    goto/16 :goto_2

    .line 417
    .end local v5    # "is":I
    .end local v21    # "totalMemUsage":[J
    .restart local v4    # "totalMemUsage":[J
    :cond_5
    move-object/from16 v21, v4

    .end local v4    # "totalMemUsage":[J
    .restart local v21    # "totalMemUsage":[J
    iget-boolean v2, v0, Lcom/android/internal/app/procstats/ProcessStats;->mHasSwappedOutPss:Z

    iput-boolean v2, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->hasSwappedOutPss:Z

    .line 418
    iget-object v2, v0, Lcom/android/internal/app/procstats/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v2}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v2

    .line 419
    .local v2, "procMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessState;>;>;"
    const/4 v3, 0x0

    .local v3, "iproc":I
    :goto_5
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v3, v4, :cond_7

    .line 420
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/SparseArray;

    .line 421
    .local v4, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessState;>;"
    const/4 v5, 0x0

    .local v5, "iu":I
    :goto_6
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v5, v6, :cond_6

    .line 422
    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/app/procstats/ProcessState;

    .line 423
    .local v6, "proc":Lcom/android/internal/app/procstats/ProcessState;
    move-wide/from16 v7, p2

    invoke-virtual {v6, v1, v7, v8}, Lcom/android/internal/app/procstats/ProcessState;->aggregatePss(Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;J)V

    .line 421
    .end local v6    # "proc":Lcom/android/internal/app/procstats/ProcessState;
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 419
    .end local v4    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessState;>;"
    .end local v5    # "iu":I
    :cond_6
    move-wide/from16 v7, p2

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 426
    .end local v3    # "iproc":I
    :cond_7
    move-wide/from16 v7, p2

    return-void
.end method

.method public describeContents()I
    .locals 1

    .line 742
    const/4 v0, 0x0

    return v0
.end method

.method public dumpCheckinLocked(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 30
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "reqPackage"    # Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v10, p1

    .line 1669
    move-object/from16 v11, p2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    .line 1670
    .local v12, "now":J
    iget-object v1, v0, Lcom/android/internal/app/procstats/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    .line 1671
    invoke-virtual {v1}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v14

    .line 1672
    .local v14, "pkgMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;>;"
    const-string/jumbo v1, "vers,5"

    invoke-virtual {v10, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1673
    const-string/jumbo v1, "period,"

    invoke-virtual {v10, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartClockStr:Ljava/lang/String;

    invoke-virtual {v10, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1674
    const-string v1, ","

    invoke-virtual {v10, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v1, v0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartRealtime:J

    invoke-virtual {v10, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    const-string v1, ","

    invoke-virtual {v10, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1675
    iget-boolean v1, v0, Lcom/android/internal/app/procstats/ProcessStats;->mRunning:Z

    if-eqz v1, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    goto :goto_0

    :cond_0
    iget-wide v1, v0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndRealtime:J

    :goto_0
    invoke-virtual {v10, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    .line 1676
    const/4 v1, 0x1

    .line 1677
    .local v1, "partial":Z
    iget v2, v0, Lcom/android/internal/app/procstats/ProcessStats;->mFlags:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_1

    .line 1678
    const-string v2, ",shutdown"

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1679
    const/4 v1, 0x0

    .line 1681
    :cond_1
    iget v2, v0, Lcom/android/internal/app/procstats/ProcessStats;->mFlags:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_2

    .line 1682
    const-string v2, ",sysprops"

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1683
    const/4 v1, 0x0

    .line 1685
    :cond_2
    iget v2, v0, Lcom/android/internal/app/procstats/ProcessStats;->mFlags:I

    const/4 v15, 0x1

    and-int/2addr v2, v15

    if-eqz v2, :cond_3

    .line 1686
    const-string v2, ",complete"

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1687
    const/4 v1, 0x0

    .line 1689
    .end local v1    # "partial":Z
    .local v16, "partial":Z
    :cond_3
    move/from16 v16, v1

    if-eqz v16, :cond_4

    .line 1690
    const-string v1, ",partial"

    invoke-virtual {v10, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1692
    :cond_4
    iget-boolean v1, v0, Lcom/android/internal/app/procstats/ProcessStats;->mHasSwappedOutPss:Z

    if-eqz v1, :cond_5

    .line 1693
    const-string v1, ",swapped-out-pss"

    invoke-virtual {v10, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1695
    :cond_5
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1696
    const-string v1, "config,"

    invoke-virtual {v10, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/android/internal/app/procstats/ProcessStats;->mRuntime:Ljava/lang/String;

    invoke-virtual {v10, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1697
    const/16 v17, 0x0

    move/from16 v1, v17

    .line 1697
    .local v1, "ip":I
    :goto_1
    move v8, v1

    .line 1697
    .end local v1    # "ip":I
    .local v8, "ip":I
    invoke-virtual {v14}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v8, v1, :cond_b

    .line 1698
    invoke-virtual {v14, v8}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Ljava/lang/String;

    .line 1699
    .local v9, "pkgName":Ljava/lang/String;
    if-eqz v11, :cond_6

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 1700
    nop

    .line 1697
    move/from16 v22, v8

    move-object/from16 v24, v14

    goto/16 :goto_6

    .line 1702
    :cond_6
    invoke-virtual {v14, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/util/SparseArray;

    .line 1703
    .local v7, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;"
    move/from16 v1, v17

    .line 1703
    .local v1, "iu":I
    :goto_2
    move v5, v1

    .line 1703
    .end local v1    # "iu":I
    .local v5, "iu":I
    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v5, v1, :cond_a

    .line 1704
    invoke-virtual {v7, v5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v18

    .line 1705
    .local v18, "uid":I
    invoke-virtual {v7, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/util/LongSparseArray;

    .line 1706
    .local v6, "vpkgs":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;"
    move/from16 v1, v17

    .line 1706
    .local v1, "iv":I
    :goto_3
    move v4, v1

    .line 1706
    .end local v1    # "iv":I
    .local v4, "iv":I
    invoke-virtual {v6}, Landroid/util/LongSparseArray;->size()I

    move-result v1

    if-ge v4, v1, :cond_9

    .line 1707
    invoke-virtual {v6, v4}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v19

    .line 1708
    .local v19, "vers":J
    invoke-virtual {v6, v4}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    .line 1709
    .local v3, "pkgState":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    iget-object v1, v3, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .line 1710
    .local v2, "NPROCS":I
    iget-object v1, v3, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 1711
    .local v1, "NSRVS":I
    move/from16 v21, v17

    .line 1711
    .local v21, "iproc":I
    :goto_4
    move/from16 v22, v21

    .line 1711
    .end local v21    # "iproc":I
    .local v22, "iproc":I
    move/from16 v15, v22

    if-ge v15, v2, :cond_7

    .line 1712
    .end local v22    # "iproc":I
    .local v15, "iproc":I
    move/from16 v23, v1

    iget-object v1, v3, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    .line 1712
    .end local v1    # "NSRVS":I
    .local v23, "NSRVS":I
    invoke-virtual {v1, v15}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v21, v1

    check-cast v21, Lcom/android/internal/app/procstats/ProcessState;

    .line 1713
    .local v21, "proc":Lcom/android/internal/app/procstats/ProcessState;
    iget-object v1, v3, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    .line 1714
    invoke-virtual {v1, v15}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v22, v1

    check-cast v22, Ljava/lang/String;

    .line 1713
    move/from16 v11, v23

    move-object/from16 v1, v21

    .line 1713
    .end local v23    # "NSRVS":I
    .local v11, "NSRVS":I
    move/from16 v23, v2

    move-object v2, v10

    .line 1713
    .end local v2    # "NPROCS":I
    .local v23, "NPROCS":I
    move-object/from16 v24, v14

    move-object v14, v3

    move-object v3, v9

    .line 1713
    .end local v3    # "pkgState":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    .local v14, "pkgState":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    .local v24, "pkgMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;>;"
    move/from16 v25, v4

    move/from16 v4, v18

    .line 1713
    .end local v4    # "iv":I
    .local v25, "iv":I
    move/from16 v26, v5

    move-object/from16 v27, v6

    move-wide/from16 v5, v19

    .line 1713
    .end local v5    # "iu":I
    .end local v6    # "vpkgs":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;"
    .local v26, "iu":I
    .local v27, "vpkgs":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;"
    move-object/from16 v28, v7

    move-object/from16 v7, v22

    .line 1713
    .end local v7    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;"
    .local v28, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;"
    move/from16 v22, v8

    move-object v0, v9

    move-wide v8, v12

    .line 1713
    .end local v8    # "ip":I
    .end local v9    # "pkgName":Ljava/lang/String;
    .local v0, "pkgName":Ljava/lang/String;
    .local v22, "ip":I
    invoke-virtual/range {v1 .. v9}, Lcom/android/internal/app/procstats/ProcessState;->dumpPackageProcCheckin(Ljava/io/PrintWriter;Ljava/lang/String;IJLjava/lang/String;J)V

    .line 1711
    .end local v21    # "proc":Lcom/android/internal/app/procstats/ProcessState;
    add-int/lit8 v21, v15, 0x1

    .line 1711
    .end local v15    # "iproc":I
    .local v21, "iproc":I
    move-object v9, v0

    move v1, v11

    move-object v3, v14

    move/from16 v8, v22

    move/from16 v2, v23

    move-object/from16 v14, v24

    move/from16 v4, v25

    move/from16 v5, v26

    move-object/from16 v6, v27

    move-object/from16 v7, v28

    move-object/from16 v0, p0

    move-object/from16 v11, p2

    const/4 v15, 0x1

    goto :goto_4

    .line 1716
    .end local v0    # "pkgName":Ljava/lang/String;
    .end local v11    # "NSRVS":I
    .end local v21    # "iproc":I
    .end local v22    # "ip":I
    .end local v23    # "NPROCS":I
    .end local v24    # "pkgMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;>;"
    .end local v25    # "iv":I
    .end local v26    # "iu":I
    .end local v27    # "vpkgs":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;"
    .end local v28    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;"
    .restart local v1    # "NSRVS":I
    .restart local v2    # "NPROCS":I
    .restart local v3    # "pkgState":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    .restart local v4    # "iv":I
    .restart local v5    # "iu":I
    .restart local v6    # "vpkgs":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;"
    .restart local v7    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;"
    .restart local v8    # "ip":I
    .restart local v9    # "pkgName":Ljava/lang/String;
    .local v14, "pkgMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;>;"
    :cond_7
    move v11, v1

    move/from16 v23, v2

    move/from16 v25, v4

    move/from16 v26, v5

    move-object/from16 v27, v6

    move-object/from16 v28, v7

    move/from16 v22, v8

    move-object v0, v9

    move-object/from16 v24, v14

    move-object v14, v3

    .end local v1    # "NSRVS":I
    .end local v2    # "NPROCS":I
    .end local v3    # "pkgState":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    .end local v4    # "iv":I
    .end local v5    # "iu":I
    .end local v6    # "vpkgs":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;"
    .end local v7    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;"
    .end local v8    # "ip":I
    .end local v9    # "pkgName":Ljava/lang/String;
    .restart local v0    # "pkgName":Ljava/lang/String;
    .restart local v11    # "NSRVS":I
    .local v14, "pkgState":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    .restart local v22    # "ip":I
    .restart local v23    # "NPROCS":I
    .restart local v24    # "pkgMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;>;"
    .restart local v25    # "iv":I
    .restart local v26    # "iu":I
    .restart local v27    # "vpkgs":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;"
    .restart local v28    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;"
    move/from16 v1, v17

    .line 1716
    .local v1, "isvc":I
    :goto_5
    move v15, v1

    .line 1716
    .end local v1    # "isvc":I
    .local v15, "isvc":I
    if-ge v15, v11, :cond_8

    .line 1717
    iget-object v1, v14, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    .line 1718
    invoke-virtual {v1, v15}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1717
    invoke-static {v0, v1}, Lcom/android/internal/app/procstats/DumpUtils;->collapseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 1719
    .local v21, "serviceName":Ljava/lang/String;
    iget-object v1, v14, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v1, v15}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v29, v1

    check-cast v29, Lcom/android/internal/app/procstats/ServiceState;

    .line 1720
    .local v29, "svc":Lcom/android/internal/app/procstats/ServiceState;
    move-object/from16 v1, v29

    move-object v2, v10

    move-object v3, v0

    move/from16 v4, v18

    move-wide/from16 v5, v19

    move-object/from16 v7, v21

    move-wide v8, v12

    invoke-virtual/range {v1 .. v9}, Lcom/android/internal/app/procstats/ServiceState;->dumpTimesCheckin(Ljava/io/PrintWriter;Ljava/lang/String;IJLjava/lang/String;J)V

    .line 1716
    .end local v21    # "serviceName":Ljava/lang/String;
    .end local v29    # "svc":Lcom/android/internal/app/procstats/ServiceState;
    add-int/lit8 v1, v15, 0x1

    .line 1716
    .end local v15    # "isvc":I
    .restart local v1    # "isvc":I
    goto :goto_5

    .line 1706
    .end local v1    # "isvc":I
    .end local v11    # "NSRVS":I
    .end local v14    # "pkgState":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    .end local v19    # "vers":J
    .end local v23    # "NPROCS":I
    :cond_8
    add-int/lit8 v1, v25, 0x1

    .line 1706
    .end local v25    # "iv":I
    .local v1, "iv":I
    move-object v9, v0

    move/from16 v8, v22

    move-object/from16 v14, v24

    move/from16 v5, v26

    move-object/from16 v6, v27

    move-object/from16 v7, v28

    move-object/from16 v0, p0

    move-object/from16 v11, p2

    const/4 v15, 0x1

    goto/16 :goto_3

    .line 1703
    .end local v0    # "pkgName":Ljava/lang/String;
    .end local v1    # "iv":I
    .end local v18    # "uid":I
    .end local v22    # "ip":I
    .end local v24    # "pkgMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;>;"
    .end local v26    # "iu":I
    .end local v27    # "vpkgs":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;"
    .end local v28    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;"
    .restart local v5    # "iu":I
    .restart local v7    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;"
    .restart local v8    # "ip":I
    .restart local v9    # "pkgName":Ljava/lang/String;
    .local v14, "pkgMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;>;"
    :cond_9
    move/from16 v26, v5

    move-object/from16 v28, v7

    move/from16 v22, v8

    move-object v0, v9

    move-object/from16 v24, v14

    .line 1703
    .end local v5    # "iu":I
    .end local v7    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;"
    .end local v8    # "ip":I
    .end local v9    # "pkgName":Ljava/lang/String;
    .end local v14    # "pkgMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;>;"
    .restart local v0    # "pkgName":Ljava/lang/String;
    .restart local v22    # "ip":I
    .restart local v24    # "pkgMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;>;"
    .restart local v26    # "iu":I
    .restart local v28    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;"
    add-int/lit8 v1, v26, 0x1

    .line 1703
    .end local v26    # "iu":I
    .local v1, "iu":I
    move-object/from16 v0, p0

    move-object/from16 v11, p2

    const/4 v15, 0x1

    goto/16 :goto_2

    .line 1697
    .end local v0    # "pkgName":Ljava/lang/String;
    .end local v1    # "iu":I
    .end local v22    # "ip":I
    .end local v24    # "pkgMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;>;"
    .end local v28    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;"
    .restart local v8    # "ip":I
    .restart local v14    # "pkgMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;>;"
    :cond_a
    move/from16 v22, v8

    move-object/from16 v24, v14

    .line 1697
    .end local v8    # "ip":I
    .end local v14    # "pkgMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;>;"
    .restart local v22    # "ip":I
    .restart local v24    # "pkgMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;>;"
    :goto_6
    add-int/lit8 v1, v22, 0x1

    .line 1697
    .end local v22    # "ip":I
    .local v1, "ip":I
    move-object/from16 v14, v24

    move-object/from16 v0, p0

    move-object/from16 v11, p2

    const/4 v15, 0x1

    goto/16 :goto_1

    .line 1726
    .end local v1    # "ip":I
    .end local v24    # "pkgMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;>;"
    .restart local v14    # "pkgMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;>;"
    :cond_b
    move-object/from16 v24, v14

    .line 1726
    .end local v14    # "pkgMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;>;"
    .restart local v24    # "pkgMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;>;"
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/procstats/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v1}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v9

    .line 1727
    .local v9, "procMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessState;>;>;"
    move/from16 v1, v17

    .line 1727
    .restart local v1    # "ip":I
    :goto_7
    move v7, v1

    .line 1727
    .end local v1    # "ip":I
    .local v7, "ip":I
    invoke-virtual {v9}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v7, v1, :cond_d

    .line 1728
    invoke-virtual {v9, v7}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Ljava/lang/String;

    .line 1729
    .local v8, "procName":Ljava/lang/String;
    invoke-virtual {v9, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroid/util/SparseArray;

    .line 1730
    .local v11, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessState;>;"
    move/from16 v1, v17

    .line 1730
    .local v1, "iu":I
    :goto_8
    move v14, v1

    .line 1730
    .end local v1    # "iu":I
    .local v14, "iu":I
    invoke-virtual {v11}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v14, v1, :cond_c

    .line 1731
    invoke-virtual {v11, v14}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v15

    .line 1732
    .local v15, "uid":I
    invoke-virtual {v11, v14}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v18, v1

    check-cast v18, Lcom/android/internal/app/procstats/ProcessState;

    .line 1733
    .local v18, "procState":Lcom/android/internal/app/procstats/ProcessState;
    move-object/from16 v1, v18

    move-object v2, v10

    move-object v3, v8

    move v4, v15

    move-wide v5, v12

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/app/procstats/ProcessState;->dumpProcCheckin(Ljava/io/PrintWriter;Ljava/lang/String;IJ)V

    .line 1730
    .end local v15    # "uid":I
    .end local v18    # "procState":Lcom/android/internal/app/procstats/ProcessState;
    add-int/lit8 v1, v14, 0x1

    .line 1730
    .end local v14    # "iu":I
    .restart local v1    # "iu":I
    goto :goto_8

    .line 1727
    .end local v1    # "iu":I
    .end local v8    # "procName":Ljava/lang/String;
    .end local v11    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessState;>;"
    :cond_c
    add-int/lit8 v1, v7, 0x1

    .line 1727
    .end local v7    # "ip":I
    .local v1, "ip":I
    goto :goto_7

    .line 1736
    .end local v1    # "ip":I
    :cond_d
    const-string/jumbo v1, "total"

    invoke-virtual {v10, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1737
    const-string v2, ","

    iget-object v3, v0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactorDurations:[J

    iget v4, v0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactor:I

    iget-wide v5, v0, Lcom/android/internal/app/procstats/ProcessStats;->mStartTime:J

    move-object v1, v10

    move-wide v7, v12

    invoke-static/range {v1 .. v8}, Lcom/android/internal/app/procstats/DumpUtils;->dumpAdjTimesCheckin(Ljava/io/PrintWriter;Ljava/lang/String;[JIJJ)V

    .line 1738
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1739
    iget-object v1, v0, Lcom/android/internal/app/procstats/ProcessStats;->mSysMemUsage:Lcom/android/internal/app/procstats/SysMemUsageTable;

    invoke-virtual {v1}, Lcom/android/internal/app/procstats/SysMemUsageTable;->getKeyCount()I

    move-result v1

    .line 1740
    .local v1, "sysMemUsageCount":I
    if-lez v1, :cond_10

    .line 1741
    const-string/jumbo v2, "sysmemusage"

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1742
    move/from16 v2, v17

    .line 1742
    .local v2, "i":I
    :goto_9
    if-ge v2, v1, :cond_10

    .line 1743
    iget-object v3, v0, Lcom/android/internal/app/procstats/ProcessStats;->mSysMemUsage:Lcom/android/internal/app/procstats/SysMemUsageTable;

    invoke-virtual {v3, v2}, Lcom/android/internal/app/procstats/SysMemUsageTable;->getKeyAt(I)I

    move-result v3

    .line 1744
    .local v3, "key":I
    invoke-static {v3}, Lcom/android/internal/app/procstats/SparseMappingTable;->getIdFromKey(I)B

    move-result v4

    .line 1745
    .local v4, "type":I
    const-string v5, ","

    invoke-virtual {v10, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1746
    invoke-static {v10, v4}, Lcom/android/internal/app/procstats/DumpUtils;->printProcStateTag(Ljava/io/PrintWriter;I)V

    .line 1747
    move/from16 v5, v17

    .line 1747
    .local v5, "j":I
    :goto_a
    const/16 v6, 0x10

    if-ge v5, v6, :cond_f

    .line 1748
    const/4 v6, 0x1

    if-le v5, v6, :cond_e

    .line 1749
    const-string v7, ":"

    invoke-virtual {v10, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1751
    :cond_e
    iget-object v7, v0, Lcom/android/internal/app/procstats/ProcessStats;->mSysMemUsage:Lcom/android/internal/app/procstats/SysMemUsageTable;

    invoke-virtual {v7, v3, v5}, Lcom/android/internal/app/procstats/SysMemUsageTable;->getValue(II)J

    move-result-wide v7

    invoke-virtual {v10, v7, v8}, Ljava/io/PrintWriter;->print(J)V

    .line 1747
    add-int/lit8 v5, v5, 0x1

    goto :goto_a

    .line 1742
    .end local v3    # "key":I
    .end local v4    # "type":I
    .end local v5    # "j":I
    :cond_f
    const/4 v6, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 1755
    .end local v2    # "i":I
    :cond_10
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1756
    new-instance v2, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;

    sget-object v3, Lcom/android/internal/app/procstats/ProcessStats;->ALL_SCREEN_ADJ:[I

    sget-object v4, Lcom/android/internal/app/procstats/ProcessStats;->ALL_MEM_ADJ:[I

    invoke-direct {v2, v3, v4}, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;-><init>([I[I)V

    .line 1758
    .local v2, "totalMem":Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;
    invoke-virtual {v0, v2, v12, v13}, Lcom/android/internal/app/procstats/ProcessStats;->computeTotalMemoryUse(Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;J)V

    .line 1759
    const-string/jumbo v3, "weights,"

    invoke-virtual {v10, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1760
    iget-wide v3, v2, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->totalTime:J

    invoke-virtual {v10, v3, v4}, Ljava/io/PrintWriter;->print(J)V

    .line 1761
    const-string v3, ","

    invoke-virtual {v10, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1762
    iget-wide v3, v2, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemCachedWeight:D

    invoke-virtual {v10, v3, v4}, Ljava/io/PrintWriter;->print(D)V

    .line 1763
    const-string v3, ":"

    invoke-virtual {v10, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1764
    iget v3, v2, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemSamples:I

    invoke-virtual {v10, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 1765
    const-string v3, ","

    invoke-virtual {v10, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1766
    iget-wide v3, v2, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemFreeWeight:D

    invoke-virtual {v10, v3, v4}, Ljava/io/PrintWriter;->print(D)V

    .line 1767
    const-string v3, ":"

    invoke-virtual {v10, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1768
    iget v3, v2, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemSamples:I

    invoke-virtual {v10, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 1769
    const-string v3, ","

    invoke-virtual {v10, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1770
    iget-wide v3, v2, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemZRamWeight:D

    invoke-virtual {v10, v3, v4}, Ljava/io/PrintWriter;->print(D)V

    .line 1771
    const-string v3, ":"

    invoke-virtual {v10, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1772
    iget v3, v2, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemSamples:I

    invoke-virtual {v10, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 1773
    const-string v3, ","

    invoke-virtual {v10, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1774
    iget-wide v3, v2, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemKernelWeight:D

    invoke-virtual {v10, v3, v4}, Ljava/io/PrintWriter;->print(D)V

    .line 1775
    const-string v3, ":"

    invoke-virtual {v10, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1776
    iget v3, v2, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemSamples:I

    invoke-virtual {v10, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 1777
    const-string v3, ","

    invoke-virtual {v10, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1778
    iget-wide v3, v2, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemNativeWeight:D

    invoke-virtual {v10, v3, v4}, Ljava/io/PrintWriter;->print(D)V

    .line 1779
    const-string v3, ":"

    invoke-virtual {v10, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1780
    iget v3, v2, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemSamples:I

    invoke-virtual {v10, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 1781
    move/from16 v3, v17

    .line 1781
    .local v3, "i":I
    :goto_b
    const/16 v4, 0xe

    if-ge v3, v4, :cond_11

    .line 1782
    const-string v4, ","

    invoke-virtual {v10, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1783
    iget-object v4, v2, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->processStateWeight:[D

    aget-wide v4, v4, v3

    invoke-virtual {v10, v4, v5}, Ljava/io/PrintWriter;->print(D)V

    .line 1784
    const-string v4, ":"

    invoke-virtual {v10, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1785
    iget-object v4, v2, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->processStateSamples:[I

    aget v4, v4, v3

    invoke-virtual {v10, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 1781
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 1787
    .end local v3    # "i":I
    :cond_11
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1789
    iget-object v3, v0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeLabels:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1790
    .local v3, "NPAGETYPES":I
    move/from16 v4, v17

    .line 1790
    .local v4, "i":I
    :goto_c
    if-ge v4, v3, :cond_15

    .line 1791
    const-string v5, "availablepages,"

    invoke-virtual {v10, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1792
    iget-object v5, v0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeLabels:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v10, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1793
    const-string v5, ","

    invoke-virtual {v10, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1794
    iget-object v5, v0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeZones:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v10, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 1795
    const-string v5, ","

    invoke-virtual {v10, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1796
    iget-object v5, v0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeSizes:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [I

    .line 1797
    .local v5, "sizes":[I
    if-nez v5, :cond_12

    move/from16 v6, v17

    goto :goto_d

    :cond_12
    array-length v6, v5

    .line 1798
    .local v6, "N":I
    :goto_d
    move/from16 v7, v17

    .line 1798
    .local v7, "j":I
    :goto_e
    if-ge v7, v6, :cond_14

    .line 1799
    if-eqz v7, :cond_13

    .line 1800
    const-string v8, ","

    invoke-virtual {v10, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1802
    :cond_13
    aget v8, v5, v7

    invoke-virtual {v10, v8}, Ljava/io/PrintWriter;->print(I)V

    .line 1798
    add-int/lit8 v7, v7, 0x1

    goto :goto_e

    .line 1804
    .end local v7    # "j":I
    :cond_14
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1790
    .end local v5    # "sizes":[I
    .end local v6    # "N":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    .line 1806
    .end local v4    # "i":I
    :cond_15
    return-void
.end method

.method dumpFilteredSummaryLocked(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;[I[I[I[IJJLjava/lang/String;Z)V
    .locals 12
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "header"    # Ljava/lang/String;
    .param p3, "prefix"    # Ljava/lang/String;
    .param p4, "screenStates"    # [I
    .param p5, "memStates"    # [I
    .param p6, "procStates"    # [I
    .param p7, "sortProcStates"    # [I
    .param p8, "now"    # J
    .param p10, "totalTime"    # J
    .param p12, "reqPackage"    # Ljava/lang/String;
    .param p13, "activeOnly"    # Z

    .line 1613
    move-object v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    move-object/from16 v4, p7

    move-wide/from16 v5, p8

    move-object/from16 v7, p12

    move/from16 v8, p13

    invoke-virtual/range {v0 .. v8}, Lcom/android/internal/app/procstats/ProcessStats;->collectProcessesLocked([I[I[I[IJLjava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v0

    .line 1615
    .local v0, "procs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/app/procstats/ProcessState;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 1616
    if-eqz p2, :cond_0

    .line 1617
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1618
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1620
    :cond_0
    move-object v1, p1

    move-object v2, p3

    move-object v3, v0

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p7

    move-wide/from16 v7, p8

    move-wide/from16 v9, p10

    invoke-static/range {v1 .. v10}, Lcom/android/internal/app/procstats/DumpUtils;->dumpProcessSummaryLocked(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/util/ArrayList;[I[I[IJJ)V

    .line 1623
    :cond_1
    return-void
.end method

.method public dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;JZZZ)V
    .locals 37
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "reqPackage"    # Ljava/lang/String;
    .param p3, "now"    # J
    .param p5, "dumpSummary"    # Z
    .param p6, "dumpAll"    # Z
    .param p7, "activeOnly"    # Z

    move-object/from16 v6, p0

    move-object/from16 v5, p1

    move-object/from16 v4, p2

    move/from16 v3, p6

    .line 1286
    iget-object v9, v6, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactorDurations:[J

    iget v10, v6, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactor:I

    iget-wide v11, v6, Lcom/android/internal/app/procstats/ProcessStats;->mStartTime:J

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-wide/from16 v13, p3

    invoke-static/range {v7 .. v14}, Lcom/android/internal/app/procstats/DumpUtils;->dumpSingleTime(Ljava/io/PrintWriter;Ljava/lang/String;[JIJJ)J

    move-result-wide v18

    .line 1288
    .local v18, "totalTime":J
    const/4 v0, 0x0

    .line 1289
    .local v0, "sepNeeded":Z
    iget-object v1, v6, Lcom/android/internal/app/procstats/ProcessStats;->mSysMemUsage:Lcom/android/internal/app/procstats/SysMemUsageTable;

    invoke-virtual {v1}, Lcom/android/internal/app/procstats/SysMemUsageTable;->getKeyCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 1290
    const-string v1, "System memory usage:"

    invoke-virtual {v5, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1291
    iget-object v1, v6, Lcom/android/internal/app/procstats/ProcessStats;->mSysMemUsage:Lcom/android/internal/app/procstats/SysMemUsageTable;

    const-string v2, "  "

    sget-object v7, Lcom/android/internal/app/procstats/ProcessStats;->ALL_SCREEN_ADJ:[I

    sget-object v8, Lcom/android/internal/app/procstats/ProcessStats;->ALL_MEM_ADJ:[I

    invoke-virtual {v1, v5, v2, v7, v8}, Lcom/android/internal/app/procstats/SysMemUsageTable;->dump(Ljava/io/PrintWriter;Ljava/lang/String;[I[I)V

    .line 1292
    const/4 v0, 0x1

    .line 1294
    :cond_0
    iget-object v1, v6, Lcom/android/internal/app/procstats/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v1}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v2

    .line 1295
    .local v2, "pkgMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;>;"
    const/4 v1, 0x0

    .line 1296
    .local v1, "printedHeader":Z
    const/16 v20, 0x0

    move v7, v0

    move/from16 v0, v20

    .local v0, "ip":I
    .local v7, "sepNeeded":Z
    :goto_0
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v8

    if-ge v0, v8, :cond_1a

    .line 1297
    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v8

    move-object v15, v8

    check-cast v15, Ljava/lang/String;

    .line 1298
    .local v15, "pkgName":Ljava/lang/String;
    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    move-object v13, v8

    check-cast v13, Landroid/util/SparseArray;

    .line 1299
    .local v13, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;"
    move v8, v7

    move v7, v1

    move/from16 v1, v20

    .local v1, "iu":I
    .local v7, "printedHeader":Z
    .local v8, "sepNeeded":Z
    :goto_1
    invoke-virtual {v13}, Landroid/util/SparseArray;->size()I

    move-result v9

    if-ge v1, v9, :cond_19

    .line 1300
    invoke-virtual {v13, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v14

    .line 1301
    .local v14, "uid":I
    invoke-virtual {v13, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    move-object v12, v9

    check-cast v12, Landroid/util/LongSparseArray;

    .line 1302
    .local v12, "vpkgs":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;"
    move v9, v8

    move v8, v7

    move/from16 v7, v20

    .local v7, "iv":I
    .local v8, "printedHeader":Z
    .local v9, "sepNeeded":Z
    :goto_2
    move v11, v7

    .end local v7    # "iv":I
    .local v11, "iv":I
    invoke-virtual {v12}, Landroid/util/LongSparseArray;->size()I

    move-result v7

    if-ge v11, v7, :cond_18

    .line 1303
    move/from16 v22, v1

    move-object/from16 v21, v2

    invoke-virtual {v12, v11}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v1

    .line 1304
    .end local v2    # "pkgMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;>;"
    .local v1, "vers":J
    .local v21, "pkgMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;>;"
    .local v22, "iu":I
    invoke-virtual {v12, v11}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    move-object v10, v7

    check-cast v10, Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    .line 1305
    .local v10, "pkgState":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    iget-object v7, v10, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v7

    .line 1306
    .local v7, "NPROCS":I
    move/from16 v23, v0

    iget-object v0, v10, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    .end local v0    # "ip":I
    .local v23, "ip":I
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 1307
    .local v0, "NSRVS":I
    if-eqz v4, :cond_2

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1

    goto :goto_3

    :cond_1
    move/from16 v16, v20

    goto :goto_4

    :cond_2
    :goto_3
    const/16 v16, 0x1

    :goto_4
    move/from16 v24, v16

    .line 1308
    .local v24, "pkgMatch":Z
    if-nez v24, :cond_5

    .line 1309
    const/16 v16, 0x0

    .line 1310
    .local v16, "procMatch":Z
    move/from16 v17, v20

    .local v17, "iproc":I
    :goto_5
    move/from16 v25, v17

    .end local v17    # "iproc":I
    .local v25, "iproc":I
    move/from16 v26, v11

    move/from16 v11, v25

    if-ge v11, v7, :cond_4

    .line 1311
    .end local v25    # "iproc":I
    .local v11, "iproc":I
    .local v26, "iv":I
    move-object/from16 v27, v12

    iget-object v12, v10, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    .end local v12    # "vpkgs":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;"
    .local v27, "vpkgs":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;"
    invoke-virtual {v12, v11}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/app/procstats/ProcessState;

    .line 1312
    .local v12, "proc":Lcom/android/internal/app/procstats/ProcessState;
    move-object/from16 v28, v13

    invoke-virtual {v12}, Lcom/android/internal/app/procstats/ProcessState;->getName()Ljava/lang/String;

    move-result-object v13

    .end local v13    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;"
    .local v28, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;"
    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 1313
    const/16 v16, 0x1

    .line 1314
    goto :goto_6

    .line 1310
    .end local v12    # "proc":Lcom/android/internal/app/procstats/ProcessState;
    :cond_3
    add-int/lit8 v17, v11, 0x1

    .end local v11    # "iproc":I
    .restart local v17    # "iproc":I
    move/from16 v11, v26

    move-object/from16 v12, v27

    move-object/from16 v13, v28

    goto :goto_5

    .line 1317
    .end local v17    # "iproc":I
    .end local v27    # "vpkgs":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;"
    .end local v28    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;"
    .local v12, "vpkgs":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;"
    .restart local v13    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;"
    :cond_4
    move-object/from16 v27, v12

    move-object/from16 v28, v13

    .end local v12    # "vpkgs":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;"
    .end local v13    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;"
    .restart local v27    # "vpkgs":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;"
    .restart local v28    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;"
    :goto_6
    if-nez v16, :cond_6

    .line 1318
    nop

    .line 1302
    move/from16 v31, v14

    move-object/from16 v32, v15

    goto/16 :goto_16

    .line 1321
    .end local v16    # "procMatch":Z
    .end local v26    # "iv":I
    .end local v27    # "vpkgs":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;"
    .end local v28    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;"
    .local v11, "iv":I
    .restart local v12    # "vpkgs":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;"
    .restart local v13    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;"
    :cond_5
    move/from16 v26, v11

    move-object/from16 v27, v12

    move-object/from16 v28, v13

    .end local v11    # "iv":I
    .end local v12    # "vpkgs":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;"
    .end local v13    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;"
    .restart local v26    # "iv":I
    .restart local v27    # "vpkgs":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;"
    .restart local v28    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;"
    :cond_6
    if-gtz v7, :cond_8

    if-lez v0, :cond_7

    goto :goto_8

    .line 1332
    .end local v8    # "printedHeader":Z
    .end local v9    # "sepNeeded":Z
    .local v25, "sepNeeded":Z
    .local v29, "printedHeader":Z
    :cond_7
    :goto_7
    move/from16 v29, v8

    move/from16 v25, v9

    goto :goto_9

    .line 1322
    .end local v25    # "sepNeeded":Z
    .end local v29    # "printedHeader":Z
    .restart local v8    # "printedHeader":Z
    .restart local v9    # "sepNeeded":Z
    :cond_8
    :goto_8
    if-nez v8, :cond_a

    .line 1323
    if-eqz v9, :cond_9

    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1324
    :cond_9
    const-string v11, "Per-Package Stats:"

    invoke-virtual {v5, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1325
    const/4 v8, 0x1

    .line 1326
    const/4 v9, 0x1

    .line 1328
    :cond_a
    const-string v11, "  * "

    invoke-virtual {v5, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v5, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v11, " / "

    invoke-virtual {v5, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1329
    invoke-static {v5, v14}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    const-string v11, " / v"

    invoke-virtual {v5, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1330
    invoke-virtual {v5, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    const-string v11, ":"

    invoke-virtual {v5, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_7

    .line 1332
    .end local v8    # "printedHeader":Z
    .end local v9    # "sepNeeded":Z
    .restart local v25    # "sepNeeded":Z
    .restart local v29    # "printedHeader":Z
    :goto_9
    if-eqz p5, :cond_f

    if-eqz v3, :cond_b

    .line 1333
    move v6, v7

    move-object v3, v10

    move/from16 v31, v14

    move-object/from16 v32, v15

    goto/16 :goto_c

    .line 1360
    :cond_b
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    move-object v13, v8

    .line 1361
    .local v13, "procs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/app/procstats/ProcessState;>;"
    move/from16 v8, v20

    .local v8, "iproc":I
    :goto_a
    if-ge v8, v7, :cond_e

    .line 1362
    iget-object v9, v10, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v9, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/app/procstats/ProcessState;

    .line 1363
    .local v9, "proc":Lcom/android/internal/app/procstats/ProcessState;
    if-nez v24, :cond_c

    invoke-virtual {v9}, Lcom/android/internal/app/procstats/ProcessState;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_c

    .line 1364
    goto :goto_b

    .line 1366
    :cond_c
    if-eqz p7, :cond_d

    invoke-virtual {v9}, Lcom/android/internal/app/procstats/ProcessState;->isInUse()Z

    move-result v11

    if-nez v11, :cond_d

    .line 1367
    goto :goto_b

    .line 1369
    :cond_d
    invoke-virtual {v13, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1361
    .end local v9    # "proc":Lcom/android/internal/app/procstats/ProcessState;
    :goto_b
    add-int/lit8 v8, v8, 0x1

    goto :goto_a

    .line 1371
    .end local v8    # "iproc":I
    :cond_e
    const-string v8, "      "

    sget-object v11, Lcom/android/internal/app/procstats/ProcessStats;->ALL_SCREEN_ADJ:[I

    sget-object v12, Lcom/android/internal/app/procstats/ProcessStats;->ALL_MEM_ADJ:[I

    sget-object v16, Lcom/android/internal/app/procstats/ProcessStats;->NON_CACHED_PROC_STATES:[I

    move v9, v7

    move-object v7, v5

    .end local v7    # "NPROCS":I
    .local v9, "NPROCS":I
    move v6, v9

    move-object v9, v13

    .end local v9    # "NPROCS":I
    .local v6, "NPROCS":I
    move-object v3, v10

    move-object v10, v11

    .end local v10    # "pkgState":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    .local v3, "pkgState":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    move-object v11, v12

    move-object/from16 v12, v16

    move-object/from16 v17, v13

    move/from16 v31, v14

    move-wide/from16 v13, p3

    .end local v13    # "procs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/app/procstats/ProcessState;>;"
    .end local v14    # "uid":I
    .local v17, "procs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/app/procstats/ProcessState;>;"
    .local v31, "uid":I
    move-object/from16 v32, v15

    move-wide/from16 v15, v18

    .end local v15    # "pkgName":Ljava/lang/String;
    .local v32, "pkgName":Ljava/lang/String;
    invoke-static/range {v7 .. v16}, Lcom/android/internal/app/procstats/DumpUtils;->dumpProcessSummaryLocked(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/util/ArrayList;[I[I[IJJ)V

    .line 1375
    .end local v17    # "procs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/app/procstats/ProcessState;>;"
    move v14, v0

    move-wide/from16 v34, v1

    move-object v13, v3

    move-object v11, v4

    move-object v9, v5

    move/from16 v12, p6

    goto/16 :goto_11

    .line 1333
    .end local v3    # "pkgState":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    .end local v6    # "NPROCS":I
    .end local v31    # "uid":I
    .end local v32    # "pkgName":Ljava/lang/String;
    .restart local v7    # "NPROCS":I
    .restart local v10    # "pkgState":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    .restart local v14    # "uid":I
    .restart local v15    # "pkgName":Ljava/lang/String;
    :cond_f
    move v6, v7

    move-object v3, v10

    move/from16 v31, v14

    move-object/from16 v32, v15

    .end local v7    # "NPROCS":I
    .end local v10    # "pkgState":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    .end local v14    # "uid":I
    .end local v15    # "pkgName":Ljava/lang/String;
    .restart local v3    # "pkgState":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    .restart local v6    # "NPROCS":I
    .restart local v31    # "uid":I
    .restart local v32    # "pkgName":Ljava/lang/String;
    :goto_c
    move/from16 v7, v20

    .local v7, "iproc":I
    :goto_d
    move v15, v7

    .end local v7    # "iproc":I
    .local v15, "iproc":I
    if-ge v15, v6, :cond_13

    .line 1334
    iget-object v7, v3, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v7, v15}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    move-object v13, v7

    check-cast v13, Lcom/android/internal/app/procstats/ProcessState;

    .line 1335
    .local v13, "proc":Lcom/android/internal/app/procstats/ProcessState;
    if-nez v24, :cond_10

    invoke-virtual {v13}, Lcom/android/internal/app/procstats/ProcessState;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_10

    .line 1336
    nop

    .line 1333
    .end local v0    # "NSRVS":I
    .end local v1    # "vers":J
    .end local v3    # "pkgState":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    .local v13, "pkgState":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    .local v14, "NSRVS":I
    .local v34, "vers":J
    :goto_e
    move v14, v0

    move-wide/from16 v34, v1

    move-object v13, v3

    move-object v11, v4

    move-object v9, v5

    move/from16 v12, p6

    goto/16 :goto_10

    .line 1338
    .end local v14    # "NSRVS":I
    .end local v34    # "vers":J
    .restart local v0    # "NSRVS":I
    .restart local v1    # "vers":J
    .restart local v3    # "pkgState":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    .local v13, "proc":Lcom/android/internal/app/procstats/ProcessState;
    :cond_10
    if-eqz p7, :cond_11

    invoke-virtual {v13}, Lcom/android/internal/app/procstats/ProcessState;->isInUse()Z

    move-result v7

    if-nez v7, :cond_11

    .line 1339
    const-string v7, "      (Not active: "

    invoke-virtual {v5, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1340
    iget-object v7, v3, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v7, v15}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, ")"

    invoke-virtual {v5, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1341
    goto :goto_e

    .line 1343
    :cond_11
    const-string v7, "      Process "

    invoke-virtual {v5, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1344
    iget-object v7, v3, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v7, v15}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1345
    invoke-virtual {v13}, Lcom/android/internal/app/procstats/ProcessState;->getCommonProcess()Lcom/android/internal/app/procstats/ProcessState;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/app/procstats/ProcessState;->isMultiPackage()Z

    move-result v7

    if-eqz v7, :cond_12

    .line 1346
    const-string v7, " (multi, "

    invoke-virtual {v5, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_f

    .line 1348
    :cond_12
    const-string v7, " (unique, "

    invoke-virtual {v5, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1350
    :goto_f
    invoke-virtual {v13}, Lcom/android/internal/app/procstats/ProcessState;->getDurationsBucketCount()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/io/PrintWriter;->print(I)V

    .line 1351
    const-string v7, " entries)"

    invoke-virtual {v5, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1352
    const-string v7, ":"

    invoke-virtual {v5, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1353
    const-string v9, "        "

    sget-object v10, Lcom/android/internal/app/procstats/ProcessStats;->ALL_SCREEN_ADJ:[I

    sget-object v11, Lcom/android/internal/app/procstats/ProcessStats;->ALL_MEM_ADJ:[I

    sget-object v12, Lcom/android/internal/app/procstats/ProcessStats;->ALL_PROC_STATES:[I

    move-object v7, v13

    move-object v8, v5

    move-object/from16 v33, v13

    move-wide/from16 v13, p3

    .end local v13    # "proc":Lcom/android/internal/app/procstats/ProcessState;
    .local v33, "proc":Lcom/android/internal/app/procstats/ProcessState;
    invoke-virtual/range {v7 .. v14}, Lcom/android/internal/app/procstats/ProcessState;->dumpProcessState(Ljava/io/PrintWriter;Ljava/lang/String;[I[I[IJ)V

    .line 1355
    const-string v7, "        "

    sget-object v8, Lcom/android/internal/app/procstats/ProcessStats;->ALL_SCREEN_ADJ:[I

    sget-object v9, Lcom/android/internal/app/procstats/ProcessStats;->ALL_MEM_ADJ:[I

    sget-object v10, Lcom/android/internal/app/procstats/ProcessStats;->ALL_PROC_STATES:[I

    move v14, v0

    move-object/from16 v0, v33

    .end local v0    # "NSRVS":I
    .restart local v14    # "NSRVS":I
    move-wide/from16 v34, v1

    move-object v1, v5

    .end local v1    # "vers":J
    .restart local v34    # "vers":J
    move-object v2, v7

    move-object v13, v3

    move/from16 v12, p6

    move-object v3, v8

    .end local v3    # "pkgState":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    .local v13, "pkgState":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    move-object v11, v4

    move-object v4, v9

    move-object v9, v5

    move-object v5, v10

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/app/procstats/ProcessState;->dumpPss(Ljava/io/PrintWriter;Ljava/lang/String;[I[I[I)V

    .line 1357
    const-string v0, "        "

    move-object/from16 v1, v33

    invoke-virtual {v1, v9, v0, v12}, Lcom/android/internal/app/procstats/ProcessState;->dumpInternalLocked(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 1333
    .end local v33    # "proc":Lcom/android/internal/app/procstats/ProcessState;
    :goto_10
    add-int/lit8 v7, v15, 0x1

    .end local v15    # "iproc":I
    .restart local v7    # "iproc":I
    move-object v5, v9

    move-object v4, v11

    move-object v3, v13

    move v0, v14

    move-wide/from16 v1, v34

    goto/16 :goto_d

    .line 1375
    .end local v7    # "iproc":I
    .end local v13    # "pkgState":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    .end local v14    # "NSRVS":I
    .end local v34    # "vers":J
    .restart local v0    # "NSRVS":I
    .restart local v1    # "vers":J
    .restart local v3    # "pkgState":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    :cond_13
    move v14, v0

    move-wide/from16 v34, v1

    move-object v13, v3

    move-object v11, v4

    move-object v9, v5

    move/from16 v12, p6

    .end local v0    # "NSRVS":I
    .end local v1    # "vers":J
    .end local v3    # "pkgState":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    .restart local v13    # "pkgState":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    .restart local v14    # "NSRVS":I
    .restart local v34    # "vers":J
    :goto_11
    move/from16 v0, v20

    .local v0, "isvc":I
    :goto_12
    if-ge v0, v14, :cond_17

    .line 1376
    iget-object v1, v13, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/procstats/ServiceState;

    .line 1377
    .local v1, "svc":Lcom/android/internal/app/procstats/ServiceState;
    if-nez v24, :cond_14

    invoke-virtual {v1}, Lcom/android/internal/app/procstats/ServiceState;->getProcessName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14

    .line 1378
    nop

    .line 1375
    .end local v1    # "svc":Lcom/android/internal/app/procstats/ServiceState;
    .end local v13    # "pkgState":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    .end local v14    # "NSRVS":I
    .local v2, "pkgState":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    .local v30, "NSRVS":I
    :goto_13
    move-object v5, v9

    move-object v4, v11

    move v3, v12

    move-object v2, v13

    move/from16 v30, v14

    goto/16 :goto_15

    .line 1380
    .end local v2    # "pkgState":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    .end local v30    # "NSRVS":I
    .restart local v1    # "svc":Lcom/android/internal/app/procstats/ServiceState;
    .restart local v13    # "pkgState":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    .restart local v14    # "NSRVS":I
    :cond_14
    if-eqz p7, :cond_15

    invoke-virtual {v1}, Lcom/android/internal/app/procstats/ServiceState;->isInUse()Z

    move-result v2

    if-nez v2, :cond_15

    .line 1381
    const-string v2, "      (Not active: "

    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1382
    iget-object v2, v13, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, ")"

    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1383
    goto :goto_13

    .line 1385
    :cond_15
    if-eqz v12, :cond_16

    .line 1386
    const-string v2, "      Service "

    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_14

    .line 1388
    :cond_16
    const-string v2, "      * "

    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1390
    :goto_14
    iget-object v2, v13, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1391
    const-string v2, ":"

    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1392
    const-string v2, "        Process: "

    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/internal/app/procstats/ServiceState;->getProcessName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1393
    const-string v2, "        "

    const-string v10, "          "

    const-string v3, "    "

    move-object v7, v1

    move-object v8, v9

    move-object v5, v9

    move-object v9, v2

    move-object v4, v11

    move-object v11, v3

    move v3, v12

    move-object v2, v13

    move-wide/from16 v12, p3

    .end local v13    # "pkgState":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    .restart local v2    # "pkgState":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    move/from16 v30, v14

    move-wide/from16 v14, v18

    .end local v14    # "NSRVS":I
    .restart local v30    # "NSRVS":I
    move/from16 v16, p5

    move/from16 v17, v3

    invoke-virtual/range {v7 .. v17}, Lcom/android/internal/app/procstats/ServiceState;->dumpStats(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJZZ)V

    .line 1375
    .end local v1    # "svc":Lcom/android/internal/app/procstats/ServiceState;
    :goto_15
    add-int/lit8 v0, v0, 0x1

    move-object v13, v2

    move v12, v3

    move-object v11, v4

    move-object v9, v5

    move/from16 v14, v30

    goto/16 :goto_12

    .line 1302
    .end local v0    # "isvc":I
    .end local v2    # "pkgState":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    .end local v6    # "NPROCS":I
    .end local v24    # "pkgMatch":Z
    .end local v30    # "NSRVS":I
    .end local v34    # "vers":J
    :cond_17
    move-object v5, v9

    move-object v4, v11

    move v3, v12

    move/from16 v9, v25

    move/from16 v8, v29

    .end local v25    # "sepNeeded":Z
    .end local v29    # "printedHeader":Z
    .local v8, "printedHeader":Z
    .local v9, "sepNeeded":Z
    :goto_16
    add-int/lit8 v7, v26, 0x1

    .end local v26    # "iv":I
    .local v7, "iv":I
    move-object/from16 v2, v21

    move/from16 v1, v22

    move/from16 v0, v23

    move-object/from16 v12, v27

    move-object/from16 v13, v28

    move/from16 v14, v31

    move-object/from16 v15, v32

    move-object/from16 v6, p0

    goto/16 :goto_2

    .line 1299
    .end local v7    # "iv":I
    .end local v21    # "pkgMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;>;"
    .end local v22    # "iu":I
    .end local v23    # "ip":I
    .end local v27    # "vpkgs":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;"
    .end local v28    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;"
    .end local v31    # "uid":I
    .end local v32    # "pkgName":Ljava/lang/String;
    .local v0, "ip":I
    .local v1, "iu":I
    .local v2, "pkgMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;>;"
    .local v13, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;"
    .local v15, "pkgName":Ljava/lang/String;
    :cond_18
    move/from16 v23, v0

    move/from16 v22, v1

    move-object/from16 v21, v2

    move-object/from16 v28, v13

    move-object/from16 v32, v15

    .end local v0    # "ip":I
    .end local v1    # "iu":I
    .end local v2    # "pkgMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;>;"
    .end local v13    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;"
    .end local v15    # "pkgName":Ljava/lang/String;
    .restart local v21    # "pkgMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;>;"
    .restart local v22    # "iu":I
    .restart local v23    # "ip":I
    .restart local v28    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;"
    .restart local v32    # "pkgName":Ljava/lang/String;
    add-int/lit8 v1, v22, 0x1

    .end local v22    # "iu":I
    .restart local v1    # "iu":I
    move v7, v8

    move v8, v9

    move-object/from16 v6, p0

    goto/16 :goto_1

    .line 1296
    .end local v1    # "iu":I
    .end local v9    # "sepNeeded":Z
    .end local v21    # "pkgMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;>;"
    .end local v23    # "ip":I
    .end local v28    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;"
    .end local v32    # "pkgName":Ljava/lang/String;
    .restart local v0    # "ip":I
    .restart local v2    # "pkgMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;>;"
    .local v7, "printedHeader":Z
    .local v8, "sepNeeded":Z
    :cond_19
    move/from16 v23, v0

    move-object/from16 v21, v2

    .end local v0    # "ip":I
    .end local v2    # "pkgMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;>;"
    .restart local v21    # "pkgMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;>;"
    .restart local v23    # "ip":I
    add-int/lit8 v0, v23, 0x1

    .end local v23    # "ip":I
    .restart local v0    # "ip":I
    move v1, v7

    move v7, v8

    move-object/from16 v6, p0

    goto/16 :goto_0

    .line 1400
    .end local v0    # "ip":I
    .end local v8    # "sepNeeded":Z
    .end local v21    # "pkgMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;>;"
    .local v1, "printedHeader":Z
    .restart local v2    # "pkgMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;>;"
    .local v7, "sepNeeded":Z
    :cond_1a
    move-object/from16 v21, v2

    .end local v2    # "pkgMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;>;"
    .restart local v21    # "pkgMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;>;"
    move-object/from16 v6, p0

    iget-object v0, v6, Lcom/android/internal/app/procstats/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v0}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v15

    .line 1401
    .local v15, "procMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessState;>;>;"
    const/4 v0, 0x0

    .line 1402
    .end local v1    # "printedHeader":Z
    .local v0, "printedHeader":Z
    const/4 v1, 0x0

    .local v1, "numShownProcs":I
    const/4 v2, 0x0

    .line 1403
    .local v2, "numTotalProcs":I
    move v10, v0

    move v8, v2

    move v9, v7

    move/from16 v0, v20

    move v7, v1

    .end local v1    # "numShownProcs":I
    .end local v2    # "numTotalProcs":I
    .local v0, "ip":I
    .local v7, "numShownProcs":I
    .local v8, "numTotalProcs":I
    .restart local v9    # "sepNeeded":Z
    .local v10, "printedHeader":Z
    :goto_17
    move v2, v0

    .end local v0    # "ip":I
    .local v2, "ip":I
    invoke-virtual {v15}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-ge v2, v0, :cond_22

    .line 1404
    invoke-virtual {v15, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    .line 1405
    .local v1, "procName":Ljava/lang/String;
    invoke-virtual {v15, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    .line 1406
    .local v0, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessState;>;"
    move v11, v10

    move v10, v7

    move/from16 v7, v20

    .local v7, "iu":I
    .local v10, "numShownProcs":I
    .local v11, "printedHeader":Z
    :goto_18
    move v13, v7

    .end local v7    # "iu":I
    .local v13, "iu":I
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-ge v13, v7, :cond_21

    .line 1407
    invoke-virtual {v0, v13}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v14

    .line 1408
    .local v14, "uid":I
    add-int/lit8 v16, v8, 0x1

    .line 1409
    .end local v8    # "numTotalProcs":I
    .local v16, "numTotalProcs":I
    invoke-virtual {v0, v13}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    move-object v12, v7

    check-cast v12, Lcom/android/internal/app/procstats/ProcessState;

    .line 1410
    .local v12, "proc":Lcom/android/internal/app/procstats/ProcessState;
    invoke-virtual {v12}, Lcom/android/internal/app/procstats/ProcessState;->hasAnyData()Z

    move-result v7

    if-eqz v7, :cond_1b

    .line 1411
    goto :goto_19

    .line 1413
    :cond_1b
    invoke-virtual {v12}, Lcom/android/internal/app/procstats/ProcessState;->isMultiPackage()Z

    move-result v7

    if-nez v7, :cond_1c

    .line 1414
    goto :goto_19

    .line 1416
    :cond_1c
    if-eqz v4, :cond_1d

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1d

    .line 1417
    invoke-virtual {v12}, Lcom/android/internal/app/procstats/ProcessState;->getPackage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1d

    .line 1418
    nop

    .line 1406
    .end local v12    # "proc":Lcom/android/internal/app/procstats/ProcessState;
    .end local v14    # "uid":I
    :goto_19
    move-object v12, v0

    move v14, v2

    move v7, v3

    move-object v8, v5

    move/from16 v24, v13

    move-object v13, v1

    goto/16 :goto_1c

    .line 1420
    .restart local v12    # "proc":Lcom/android/internal/app/procstats/ProcessState;
    .restart local v14    # "uid":I
    :cond_1d
    add-int/lit8 v17, v10, 0x1

    .line 1421
    .end local v10    # "numShownProcs":I
    .local v17, "numShownProcs":I
    if-eqz v9, :cond_1e

    .line 1422
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1424
    :cond_1e
    const/16 v22, 0x1

    .line 1425
    .end local v9    # "sepNeeded":Z
    .local v22, "sepNeeded":Z
    if-nez v11, :cond_1f

    .line 1426
    const-string v7, "Multi-Package Common Processes:"

    invoke-virtual {v5, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1427
    const/4 v7, 0x1

    .line 1429
    .end local v11    # "printedHeader":Z
    .local v7, "printedHeader":Z
    move/from16 v23, v7

    goto :goto_1a

    .end local v7    # "printedHeader":Z
    .restart local v11    # "printedHeader":Z
    :cond_1f
    move/from16 v23, v11

    .end local v11    # "printedHeader":Z
    .local v23, "printedHeader":Z
    :goto_1a
    if-eqz p7, :cond_20

    invoke-virtual {v12}, Lcom/android/internal/app/procstats/ProcessState;->isInUse()Z

    move-result v7

    if-nez v7, :cond_20

    .line 1430
    const-string v7, "      (Not active: "

    invoke-virtual {v5, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, ")"

    invoke-virtual {v5, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1431
    nop

    .line 1406
    move-object v12, v0

    move v14, v2

    move v7, v3

    move-object v8, v5

    move/from16 v24, v13

    move-object v13, v1

    goto :goto_1b

    .line 1433
    :cond_20
    const-string v7, "  * "

    invoke-virtual {v5, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, " / "

    invoke-virtual {v5, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1434
    invoke-static {v5, v14}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 1435
    const-string v7, " ("

    invoke-virtual {v5, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v12}, Lcom/android/internal/app/procstats/ProcessState;->getDurationsBucketCount()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/io/PrintWriter;->print(I)V

    .line 1436
    const-string v7, " entries)"

    invoke-virtual {v5, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, ":"

    invoke-virtual {v5, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1437
    const-string v9, "        "

    sget-object v10, Lcom/android/internal/app/procstats/ProcessStats;->ALL_SCREEN_ADJ:[I

    sget-object v11, Lcom/android/internal/app/procstats/ProcessStats;->ALL_MEM_ADJ:[I

    sget-object v24, Lcom/android/internal/app/procstats/ProcessStats;->ALL_PROC_STATES:[I

    move-object v7, v12

    move-object v8, v5

    move-object/from16 v36, v12

    move-object/from16 v12, v24

    .end local v12    # "proc":Lcom/android/internal/app/procstats/ProcessState;
    .local v36, "proc":Lcom/android/internal/app/procstats/ProcessState;
    move/from16 v24, v13

    move/from16 v25, v14

    move-wide/from16 v13, p3

    .end local v13    # "iu":I
    .end local v14    # "uid":I
    .local v24, "iu":I
    .local v25, "uid":I
    invoke-virtual/range {v7 .. v14}, Lcom/android/internal/app/procstats/ProcessState;->dumpProcessState(Ljava/io/PrintWriter;Ljava/lang/String;[I[I[IJ)V

    .line 1439
    const-string v7, "        "

    sget-object v8, Lcom/android/internal/app/procstats/ProcessStats;->ALL_SCREEN_ADJ:[I

    sget-object v9, Lcom/android/internal/app/procstats/ProcessStats;->ALL_MEM_ADJ:[I

    sget-object v10, Lcom/android/internal/app/procstats/ProcessStats;->ALL_PROC_STATES:[I

    move-object v12, v0

    move-object/from16 v0, v36

    .end local v0    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessState;>;"
    .local v12, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessState;>;"
    move-object v13, v1

    move-object v1, v5

    .end local v1    # "procName":Ljava/lang/String;
    .local v13, "procName":Ljava/lang/String;
    move v14, v2

    move-object v2, v7

    .end local v2    # "ip":I
    .local v14, "ip":I
    move v7, v3

    move-object v3, v8

    move-object v4, v9

    move-object v8, v5

    move-object v5, v10

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/app/procstats/ProcessState;->dumpPss(Ljava/io/PrintWriter;Ljava/lang/String;[I[I[I)V

    .line 1440
    const-string v0, "        "

    move-object/from16 v1, v36

    invoke-virtual {v1, v8, v0, v7}, Lcom/android/internal/app/procstats/ProcessState;->dumpInternalLocked(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 1406
    .end local v25    # "uid":I
    .end local v36    # "proc":Lcom/android/internal/app/procstats/ProcessState;
    :goto_1b
    move/from16 v10, v17

    move/from16 v9, v22

    move/from16 v11, v23

    .end local v17    # "numShownProcs":I
    .end local v22    # "sepNeeded":Z
    .end local v23    # "printedHeader":Z
    .restart local v9    # "sepNeeded":Z
    .restart local v10    # "numShownProcs":I
    .restart local v11    # "printedHeader":Z
    :goto_1c
    add-int/lit8 v0, v24, 0x1

    .end local v24    # "iu":I
    .local v0, "iu":I
    move-object/from16 v4, p2

    move v3, v7

    move-object v5, v8

    move-object v1, v13

    move v2, v14

    move/from16 v8, v16

    move v7, v0

    move-object v0, v12

    goto/16 :goto_18

    .line 1403
    .end local v0    # "iu":I
    .end local v12    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessState;>;"
    .end local v13    # "procName":Ljava/lang/String;
    .end local v14    # "ip":I
    .end local v16    # "numTotalProcs":I
    .restart local v2    # "ip":I
    .restart local v8    # "numTotalProcs":I
    :cond_21
    move v14, v2

    move v7, v3

    .end local v2    # "ip":I
    .restart local v14    # "ip":I
    add-int/lit8 v0, v14, 0x1

    .end local v14    # "ip":I
    .local v0, "ip":I
    move-object/from16 v4, p2

    move v7, v10

    move v10, v11

    goto/16 :goto_17

    .line 1443
    .end local v0    # "ip":I
    .end local v11    # "printedHeader":Z
    .local v7, "numShownProcs":I
    .local v10, "printedHeader":Z
    :cond_22
    move v11, v3

    if-eqz v11, :cond_23

    .line 1444
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1445
    const-string v0, "  Total procs: "

    invoke-virtual {v5, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v5, v7}, Ljava/io/PrintWriter;->print(I)V

    .line 1446
    const-string v0, " shown of "

    invoke-virtual {v5, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v5, v8}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " total"

    invoke-virtual {v5, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1449
    :cond_23
    if-eqz v9, :cond_24

    .line 1450
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1452
    :cond_24
    if-eqz p5, :cond_25

    .line 1453
    const-string v0, "Summary:"

    invoke-virtual {v5, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1454
    move-object v0, v6

    move-object v1, v5

    move-object/from16 v2, p2

    move-wide/from16 v3, p3

    move-object v12, v5

    move/from16 v5, p7

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/app/procstats/ProcessStats;->dumpSummaryLocked(Ljava/io/PrintWriter;Ljava/lang/String;JZ)V

    .line 1459
    move-wide/from16 v0, p3

    goto :goto_1d

    .line 1456
    :cond_25
    move-object v12, v5

    move-wide/from16 v0, p3

    invoke-virtual {v6, v12, v0, v1}, Lcom/android/internal/app/procstats/ProcessStats;->dumpTotalsLocked(Ljava/io/PrintWriter;J)V

    .line 1459
    :goto_1d
    if-eqz v11, :cond_26

    .line 1460
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1461
    const-string v2, "Internal state:"

    invoke-virtual {v12, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1466
    const-string v2, "  mRunning="

    invoke-virtual {v12, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, v6, Lcom/android/internal/app/procstats/ProcessStats;->mRunning:Z

    invoke-virtual {v12, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 1469
    :cond_26
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/app/procstats/ProcessStats;->dumpFragmentationLocked(Ljava/io/PrintWriter;)V

    .line 1470
    return-void
.end method

.method public dumpSummaryLocked(Ljava/io/PrintWriter;Ljava/lang/String;JZ)V
    .locals 17
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "reqPackage"    # Ljava/lang/String;
    .param p3, "now"    # J
    .param p5, "activeOnly"    # Z

    move-object/from16 v14, p0

    .line 1473
    iget-object v2, v14, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactorDurations:[J

    iget v3, v14, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactor:I

    iget-wide v4, v14, Lcom/android/internal/app/procstats/ProcessStats;->mStartTime:J

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-wide/from16 v6, p3

    invoke-static/range {v0 .. v7}, Lcom/android/internal/app/procstats/DumpUtils;->dumpSingleTime(Ljava/io/PrintWriter;Ljava/lang/String;[JIJJ)J

    move-result-wide v15

    .line 1475
    .local v15, "totalTime":J
    const-string v3, "  "

    sget-object v4, Lcom/android/internal/app/procstats/ProcessStats;->ALL_SCREEN_ADJ:[I

    sget-object v5, Lcom/android/internal/app/procstats/ProcessStats;->ALL_MEM_ADJ:[I

    sget-object v6, Lcom/android/internal/app/procstats/ProcessStats;->ALL_PROC_STATES:[I

    sget-object v7, Lcom/android/internal/app/procstats/ProcessStats;->NON_CACHED_PROC_STATES:[I

    const/4 v2, 0x0

    move-object v0, v14

    move-object/from16 v1, p1

    move-wide/from16 v8, p3

    move-wide v10, v15

    move-object/from16 v12, p2

    move/from16 v13, p5

    invoke-virtual/range {v0 .. v13}, Lcom/android/internal/app/procstats/ProcessStats;->dumpFilteredSummaryLocked(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;[I[I[I[IJJLjava/lang/String;Z)V

    .line 1477
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1478
    move-object/from16 v0, p1

    move-wide/from16 v1, p3

    invoke-virtual {v14, v0, v1, v2}, Lcom/android/internal/app/procstats/ProcessStats;->dumpTotalsLocked(Ljava/io/PrintWriter;J)V

    .line 1479
    return-void
.end method

.method dumpTotalsLocked(Ljava/io/PrintWriter;J)V
    .locals 20
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "now"    # J

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    .line 1514
    const-string v0, "Run time Stats:"

    invoke-virtual {v12, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1515
    const-string v1, "  "

    iget-object v2, v11, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactorDurations:[J

    iget v3, v11, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactor:I

    iget-wide v4, v11, Lcom/android/internal/app/procstats/ProcessStats;->mStartTime:J

    move-object v0, v12

    move-wide/from16 v6, p2

    invoke-static/range {v0 .. v7}, Lcom/android/internal/app/procstats/DumpUtils;->dumpSingleTime(Ljava/io/PrintWriter;Ljava/lang/String;[JIJJ)J

    .line 1516
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1517
    const-string v0, "Memory usage:"

    invoke-virtual {v12, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1518
    new-instance v0, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;

    sget-object v1, Lcom/android/internal/app/procstats/ProcessStats;->ALL_SCREEN_ADJ:[I

    sget-object v2, Lcom/android/internal/app/procstats/ProcessStats;->ALL_MEM_ADJ:[I

    invoke-direct {v0, v1, v2}, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;-><init>([I[I)V

    move-object v13, v0

    .line 1520
    .local v13, "totalMem":Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;
    move-wide/from16 v14, p2

    invoke-virtual {v11, v13, v14, v15}, Lcom/android/internal/app/procstats/ProcessStats;->computeTotalMemoryUse(Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;J)V

    .line 1521
    const-wide/16 v16, 0x0

    .line 1522
    .local v16, "totalPss":J
    const-string v2, "  "

    const-string v3, "Kernel "

    iget-wide v4, v13, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemKernelWeight:D

    iget-wide v6, v13, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->totalTime:J

    iget v10, v13, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemSamples:I

    move-object v0, v11

    move-object v1, v12

    move-wide/from16 v8, v16

    invoke-virtual/range {v0 .. v10}, Lcom/android/internal/app/procstats/ProcessStats;->printMemoryCategory(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;DJJI)J

    move-result-wide v16

    .line 1524
    const-string v2, "  "

    const-string v3, "Native "

    iget-wide v4, v13, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemNativeWeight:D

    iget-wide v6, v13, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->totalTime:J

    iget v10, v13, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemSamples:I

    move-wide/from16 v8, v16

    invoke-virtual/range {v0 .. v10}, Lcom/android/internal/app/procstats/ProcessStats;->printMemoryCategory(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;DJJI)J

    move-result-wide v0

    .line 1526
    .end local v16    # "totalPss":J
    .local v0, "totalPss":J
    const/4 v2, 0x0

    move-wide/from16 v16, v0

    .line 1526
    .end local v0    # "totalPss":J
    .local v2, "i":I
    .restart local v16    # "totalPss":J
    :goto_0
    move v10, v2

    .line 1526
    .end local v2    # "i":I
    .local v10, "i":I
    const/16 v0, 0xe

    const/4 v8, 0x6

    if-ge v10, v0, :cond_1

    .line 1528
    if-eq v10, v8, :cond_0

    .line 1529
    const-string v2, "  "

    sget-object v0, Lcom/android/internal/app/procstats/DumpUtils;->STATE_NAMES:[Ljava/lang/String;

    aget-object v3, v0, v10

    iget-object v0, v13, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->processStateWeight:[D

    aget-wide v4, v0, v10

    iget-wide v6, v13, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->totalTime:J

    iget-object v0, v13, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->processStateSamples:[I

    aget v18, v0, v10

    move-object v0, v11

    move-object v1, v12

    move-wide/from16 v8, v16

    move/from16 v19, v10

    move/from16 v10, v18

    .end local v10    # "i":I
    .local v19, "i":I
    invoke-virtual/range {v0 .. v10}, Lcom/android/internal/app/procstats/ProcessStats;->printMemoryCategory(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;DJJI)J

    move-result-wide v16

    goto :goto_1

    .line 1526
    .end local v19    # "i":I
    .restart local v10    # "i":I
    :cond_0
    move/from16 v19, v10

    .line 1526
    .end local v10    # "i":I
    .restart local v19    # "i":I
    :goto_1
    add-int/lit8 v2, v19, 0x1

    .line 1526
    .end local v19    # "i":I
    .restart local v2    # "i":I
    goto :goto_0

    .line 1534
    .end local v2    # "i":I
    :cond_1
    const-string v2, "  "

    const-string v3, "Cached "

    iget-wide v4, v13, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemCachedWeight:D

    iget-wide v6, v13, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->totalTime:J

    iget v10, v13, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemSamples:I

    move-object v0, v11

    move-object v1, v12

    move/from16 v18, v8

    move-wide/from16 v8, v16

    invoke-virtual/range {v0 .. v10}, Lcom/android/internal/app/procstats/ProcessStats;->printMemoryCategory(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;DJJI)J

    move-result-wide v16

    .line 1536
    const-string v2, "  "

    const-string v3, "Free   "

    iget-wide v4, v13, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemFreeWeight:D

    iget-wide v6, v13, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->totalTime:J

    iget v10, v13, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemSamples:I

    move-wide/from16 v8, v16

    invoke-virtual/range {v0 .. v10}, Lcom/android/internal/app/procstats/ProcessStats;->printMemoryCategory(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;DJJI)J

    move-result-wide v16

    .line 1538
    const-string v2, "  "

    const-string v3, "Z-Ram  "

    iget-wide v4, v13, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemZRamWeight:D

    iget-wide v6, v13, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->totalTime:J

    iget v10, v13, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemSamples:I

    move-wide/from16 v8, v16

    invoke-virtual/range {v0 .. v10}, Lcom/android/internal/app/procstats/ProcessStats;->printMemoryCategory(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;DJJI)J

    move-result-wide v8

    .line 1540
    .end local v16    # "totalPss":J
    .local v8, "totalPss":J
    const-string v0, "  TOTAL  : "

    invoke-virtual {v12, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1541
    invoke-static {v12, v8, v9}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 1542
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1543
    const-string v2, "  "

    sget-object v0, Lcom/android/internal/app/procstats/DumpUtils;->STATE_NAMES:[Ljava/lang/String;

    aget-object v3, v0, v18

    iget-object v0, v13, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->processStateWeight:[D

    aget-wide v4, v0, v18

    iget-wide v6, v13, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->totalTime:J

    iget-object v0, v13, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->processStateSamples:[I

    aget v10, v0, v18

    move-object v0, v11

    move-wide/from16 v16, v8

    .end local v8    # "totalPss":J
    .restart local v16    # "totalPss":J
    invoke-virtual/range {v0 .. v10}, Lcom/android/internal/app/procstats/ProcessStats;->printMemoryCategory(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;DJJI)J

    .line 1546
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1547
    const-string v0, "PSS collection stats:"

    invoke-virtual {v12, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1548
    const-string v0, "  Internal Single: "

    invoke-virtual {v12, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1549
    iget-wide v0, v11, Lcom/android/internal/app/procstats/ProcessStats;->mInternalSinglePssCount:J

    invoke-virtual {v12, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 1550
    const-string/jumbo v0, "x over "

    invoke-virtual {v12, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1551
    iget-wide v0, v11, Lcom/android/internal/app/procstats/ProcessStats;->mInternalSinglePssTime:J

    invoke-static {v0, v1, v12}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1552
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1553
    const-string v0, "  Internal All Procs (Memory Change): "

    invoke-virtual {v12, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1554
    iget-wide v0, v11, Lcom/android/internal/app/procstats/ProcessStats;->mInternalAllMemPssCount:J

    invoke-virtual {v12, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 1555
    const-string/jumbo v0, "x over "

    invoke-virtual {v12, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1556
    iget-wide v0, v11, Lcom/android/internal/app/procstats/ProcessStats;->mInternalAllMemPssTime:J

    invoke-static {v0, v1, v12}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1557
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1558
    const-string v0, "  Internal All Procs (Polling): "

    invoke-virtual {v12, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1559
    iget-wide v0, v11, Lcom/android/internal/app/procstats/ProcessStats;->mInternalAllPollPssCount:J

    invoke-virtual {v12, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 1560
    const-string/jumbo v0, "x over "

    invoke-virtual {v12, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1561
    iget-wide v0, v11, Lcom/android/internal/app/procstats/ProcessStats;->mInternalAllPollPssTime:J

    invoke-static {v0, v1, v12}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1562
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1563
    const-string v0, "  External: "

    invoke-virtual {v12, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1564
    iget-wide v0, v11, Lcom/android/internal/app/procstats/ProcessStats;->mExternalPssCount:J

    invoke-virtual {v12, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 1565
    const-string/jumbo v0, "x over "

    invoke-virtual {v12, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1566
    iget-wide v0, v11, Lcom/android/internal/app/procstats/ProcessStats;->mExternalPssTime:J

    invoke-static {v0, v1, v12}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1567
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1568
    const-string v0, "  External Slow: "

    invoke-virtual {v12, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1569
    iget-wide v0, v11, Lcom/android/internal/app/procstats/ProcessStats;->mExternalSlowPssCount:J

    invoke-virtual {v12, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 1570
    const-string/jumbo v0, "x over "

    invoke-virtual {v12, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1571
    iget-wide v0, v11, Lcom/android/internal/app/procstats/ProcessStats;->mExternalSlowPssTime:J

    invoke-static {v0, v1, v12}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1572
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1573
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1574
    const-string v0, "          Start time: "

    invoke-virtual {v12, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1575
    const-string/jumbo v0, "yyyy-MM-dd HH:mm:ss"

    iget-wide v1, v11, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartClock:J

    invoke-static {v0, v1, v2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 1576
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1577
    const-string v0, "        Total uptime: "

    invoke-virtual {v12, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1579
    iget-boolean v0, v11, Lcom/android/internal/app/procstats/ProcessStats;->mRunning:Z

    if-eqz v0, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    goto :goto_2

    :cond_2
    iget-wide v0, v11, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndUptime:J

    :goto_2
    iget-wide v2, v11, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartUptime:J

    sub-long/2addr v0, v2

    .line 1578
    invoke-static {v0, v1, v12}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1581
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1582
    const-string v0, "  Total elapsed time: "

    invoke-virtual {v12, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1584
    iget-boolean v0, v11, Lcom/android/internal/app/procstats/ProcessStats;->mRunning:Z

    if-eqz v0, :cond_3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    goto :goto_3

    :cond_3
    iget-wide v0, v11, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndRealtime:J

    :goto_3
    iget-wide v2, v11, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartRealtime:J

    sub-long/2addr v0, v2

    .line 1583
    invoke-static {v0, v1, v12}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1586
    const/4 v0, 0x1

    .line 1587
    .local v0, "partial":Z
    iget v1, v11, Lcom/android/internal/app/procstats/ProcessStats;->mFlags:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_4

    .line 1588
    const-string v1, " (shutdown)"

    invoke-virtual {v12, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1589
    const/4 v0, 0x0

    .line 1591
    :cond_4
    iget v1, v11, Lcom/android/internal/app/procstats/ProcessStats;->mFlags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_5

    .line 1592
    const-string v1, " (sysprops)"

    invoke-virtual {v12, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1593
    const/4 v0, 0x0

    .line 1595
    :cond_5
    iget v1, v11, Lcom/android/internal/app/procstats/ProcessStats;->mFlags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_6

    .line 1596
    const-string v1, " (complete)"

    invoke-virtual {v12, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1597
    const/4 v0, 0x0

    .line 1599
    :cond_6
    if-eqz v0, :cond_7

    .line 1600
    const-string v1, " (partial)"

    invoke-virtual {v12, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1602
    :cond_7
    iget-boolean v1, v11, Lcom/android/internal/app/procstats/ProcessStats;->mHasSwappedOutPss:Z

    if-eqz v1, :cond_8

    .line 1603
    const-string v1, " (swapped-out-pss)"

    invoke-virtual {v12, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1605
    :cond_8
    const/16 v1, 0x20

    invoke-virtual {v12, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 1606
    iget-object v1, v11, Lcom/android/internal/app/procstats/ProcessStats;->mRuntime:Ljava/lang/String;

    invoke-virtual {v12, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1607
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1608
    return-void
.end method

.method public evaluateSystemProperties(Z)Z
    .locals 3
    .param p1, "update"    # Z

    .line 554
    const/4 v0, 0x0

    .line 555
    .local v0, "changed":Z
    const-string/jumbo v1, "persist.sys.dalvik.vm.lib.2"

    .line 556
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v2

    invoke-virtual {v2}, Ldalvik/system/VMRuntime;->vmLibrary()Ljava/lang/String;

    move-result-object v2

    .line 555
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 557
    .local v1, "runtime":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessStats;->mRuntime:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 558
    const/4 v0, 0x1

    .line 559
    if-eqz p1, :cond_0

    .line 560
    iput-object v1, p0, Lcom/android/internal/app/procstats/ProcessStats;->mRuntime:Ljava/lang/String;

    .line 563
    :cond_0
    return v0
.end method

.method public getPackageStateLocked(Ljava/lang/String;IJ)Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "vers"    # J

    .line 1184
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/LongSparseArray;

    .line 1185
    .local v0, "vpkg":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;"
    if-nez v0, :cond_0

    .line 1186
    new-instance v1, Landroid/util/LongSparseArray;

    invoke-direct {v1}, Landroid/util/LongSparseArray;-><init>()V

    move-object v0, v1

    .line 1187
    iget-object v1, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v1, p1, p2, v0}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    .line 1189
    :cond_0
    invoke-virtual {v0, p3, p4}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    .line 1190
    .local v1, "as":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    if-eqz v1, :cond_1

    .line 1191
    return-object v1

    .line 1193
    :cond_1
    new-instance v2, Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    invoke-direct {v2, p1, p2}, Lcom/android/internal/app/procstats/ProcessStats$PackageState;-><init>(Ljava/lang/String;I)V

    move-object v1, v2

    .line 1194
    invoke-virtual {v0, p3, p4, v1}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1195
    return-object v1
.end method

.method public getProcessStateLocked(Ljava/lang/String;IJLjava/lang/String;)Lcom/android/internal/app/procstats/ProcessState;
    .locals 19
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "vers"    # J
    .param p5, "processName"    # Ljava/lang/String;

    move-object/from16 v7, p0

    move/from16 v15, p2

    .line 1200
    move-object/from16 v14, p5

    invoke-virtual/range {p0 .. p4}, Lcom/android/internal/app/procstats/ProcessStats;->getPackageStateLocked(Ljava/lang/String;IJ)Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    move-result-object v12

    .line 1201
    .local v12, "pkgState":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    iget-object v0, v12, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v0, v14}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Lcom/android/internal/app/procstats/ProcessState;

    .line 1202
    .local v17, "ps":Lcom/android/internal/app/procstats/ProcessState;
    if-eqz v17, :cond_0

    .line 1203
    return-object v17

    .line 1205
    :cond_0
    iget-object v0, v7, Lcom/android/internal/app/procstats/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v0, v14, v15}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/android/internal/app/procstats/ProcessState;

    .line 1206
    .local v8, "commonProc":Lcom/android/internal/app/procstats/ProcessState;
    if-nez v8, :cond_1

    .line 1207
    new-instance v9, Lcom/android/internal/app/procstats/ProcessState;

    move-object v0, v9

    move-object v1, v7

    move-object/from16 v2, p1

    move v3, v15

    move-wide/from16 v4, p3

    move-object v6, v14

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/app/procstats/ProcessState;-><init>(Lcom/android/internal/app/procstats/ProcessStats;Ljava/lang/String;IJLjava/lang/String;)V

    .line 1208
    .end local v8    # "commonProc":Lcom/android/internal/app/procstats/ProcessState;
    .local v0, "commonProc":Lcom/android/internal/app/procstats/ProcessState;
    iget-object v1, v7, Lcom/android/internal/app/procstats/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v1, v14, v15, v0}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1211
    .end local v0    # "commonProc":Lcom/android/internal/app/procstats/ProcessState;
    .restart local v8    # "commonProc":Lcom/android/internal/app/procstats/ProcessState;
    :cond_1
    move-object v0, v8

    .end local v8    # "commonProc":Lcom/android/internal/app/procstats/ProcessState;
    .restart local v0    # "commonProc":Lcom/android/internal/app/procstats/ProcessState;
    :goto_0
    invoke-virtual {v0}, Lcom/android/internal/app/procstats/ProcessState;->isMultiPackage()Z

    move-result v1

    if-nez v1, :cond_6

    .line 1212
    invoke-virtual {v0}, Lcom/android/internal/app/procstats/ProcessState;->getPackage()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, p1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/android/internal/app/procstats/ProcessState;->getVersion()J

    move-result-wide v3

    cmp-long v1, p3, v3

    if-nez v1, :cond_2

    .line 1215
    move-object v1, v0

    .line 1263
    .end local v17    # "ps":Lcom/android/internal/app/procstats/ProcessState;
    .local v1, "ps":Lcom/android/internal/app/procstats/ProcessState;
    move-object v7, v12

    goto/16 :goto_3

    .line 1222
    .end local v1    # "ps":Lcom/android/internal/app/procstats/ProcessState;
    .restart local v17    # "ps":Lcom/android/internal/app/procstats/ProcessState;
    :cond_2
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/app/procstats/ProcessState;->setMultiPackage(Z)V

    .line 1227
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 1230
    .local v3, "now":J
    invoke-virtual {v0}, Lcom/android/internal/app/procstats/ProcessState;->getPackage()Ljava/lang/String;

    move-result-object v8

    .line 1231
    invoke-virtual {v0}, Lcom/android/internal/app/procstats/ProcessState;->getVersion()J

    move-result-wide v9

    .line 1230
    invoke-virtual {v7, v8, v15, v9, v10}, Lcom/android/internal/app/procstats/ProcessStats;->getPackageStateLocked(Ljava/lang/String;IJ)Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    move-result-object v13

    .line 1232
    .local v13, "commonPkgState":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    if-eqz v13, :cond_5

    .line 1233
    invoke-virtual {v0, v3, v4}, Lcom/android/internal/app/procstats/ProcessState;->clone(J)Lcom/android/internal/app/procstats/ProcessState;

    move-result-object v8

    .line 1236
    .local v8, "cloned":Lcom/android/internal/app/procstats/ProcessState;
    iget-object v9, v13, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Lcom/android/internal/app/procstats/ProcessState;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1239
    iget-object v9, v13, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v9}, Landroid/util/ArrayMap;->size()I

    move-result v9

    sub-int/2addr v9, v1

    .local v9, "i":I
    :goto_1
    move v1, v9

    .end local v9    # "i":I
    .local v1, "i":I
    if-ltz v1, :cond_4

    .line 1240
    iget-object v9, v13, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v9, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/app/procstats/ServiceState;

    .line 1241
    .local v9, "ss":Lcom/android/internal/app/procstats/ServiceState;
    invoke-virtual {v9}, Lcom/android/internal/app/procstats/ServiceState;->getProcess()Lcom/android/internal/app/procstats/ProcessState;

    move-result-object v10

    if-ne v10, v0, :cond_3

    .line 1243
    invoke-virtual {v9, v8}, Lcom/android/internal/app/procstats/ServiceState;->setProcess(Lcom/android/internal/app/procstats/ProcessState;)V

    .line 1239
    .end local v9    # "ss":Lcom/android/internal/app/procstats/ServiceState;
    :cond_3
    add-int/lit8 v9, v1, -0x1

    .end local v1    # "i":I
    .local v9, "i":I
    goto :goto_1

    .line 1248
    .end local v8    # "cloned":Lcom/android/internal/app/procstats/ProcessState;
    .end local v9    # "i":I
    :cond_4
    goto :goto_2

    .line 1249
    :cond_5
    const-string v1, "ProcessStats"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Cloning proc state: no package state "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/internal/app/procstats/ProcessState;->getPackage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " for proc "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1250
    invoke-virtual {v0}, Lcom/android/internal/app/procstats/ProcessState;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1249
    invoke-static {v1, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1253
    :goto_2
    new-instance v1, Lcom/android/internal/app/procstats/ProcessState;

    move-object v8, v1

    move-object v9, v0

    move-object v10, v2

    move v11, v15

    move-object v7, v12

    move-object/from16 v18, v13

    move-wide/from16 v12, p3

    .end local v12    # "pkgState":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    .end local v13    # "commonPkgState":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    .local v7, "pkgState":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    .local v18, "commonPkgState":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    move-object/from16 v14, p5

    move-wide v15, v3

    invoke-direct/range {v8 .. v16}, Lcom/android/internal/app/procstats/ProcessState;-><init>(Lcom/android/internal/app/procstats/ProcessState;Ljava/lang/String;IJLjava/lang/String;J)V

    .line 1255
    .end local v3    # "now":J
    .end local v17    # "ps":Lcom/android/internal/app/procstats/ProcessState;
    .end local v18    # "commonPkgState":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    .local v1, "ps":Lcom/android/internal/app/procstats/ProcessState;
    goto :goto_3

    .line 1259
    .end local v1    # "ps":Lcom/android/internal/app/procstats/ProcessState;
    .end local v7    # "pkgState":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    .restart local v12    # "pkgState":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    .restart local v17    # "ps":Lcom/android/internal/app/procstats/ProcessState;
    :cond_6
    move-object/from16 v2, p1

    move-object v7, v12

    .end local v12    # "pkgState":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    .restart local v7    # "pkgState":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    new-instance v1, Lcom/android/internal/app/procstats/ProcessState;

    .line 1260
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v15

    move-object v8, v1

    move-object v9, v0

    move-object v10, v2

    move/from16 v11, p2

    move-wide/from16 v12, p3

    move-object/from16 v14, p5

    invoke-direct/range {v8 .. v16}, Lcom/android/internal/app/procstats/ProcessState;-><init>(Lcom/android/internal/app/procstats/ProcessState;Ljava/lang/String;IJLjava/lang/String;J)V

    .line 1263
    .end local v17    # "ps":Lcom/android/internal/app/procstats/ProcessState;
    .restart local v1    # "ps":Lcom/android/internal/app/procstats/ProcessState;
    :goto_3
    iget-object v3, v7, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    move-object/from16 v4, p5

    invoke-virtual {v3, v4, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1265
    return-object v1
.end method

.method public getServiceStateLocked(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;)Lcom/android/internal/app/procstats/ServiceState;
    .locals 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "vers"    # J
    .param p5, "processName"    # Ljava/lang/String;
    .param p6, "className"    # Ljava/lang/String;

    .line 1270
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/app/procstats/ProcessStats;->getPackageStateLocked(Ljava/lang/String;IJ)Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    move-result-object v0

    .line 1271
    .local v0, "as":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    iget-object v1, v0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v1, p6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/procstats/ServiceState;

    .line 1272
    .local v1, "ss":Lcom/android/internal/app/procstats/ServiceState;
    if-eqz v1, :cond_0

    .line 1274
    return-object v1

    .line 1276
    :cond_0
    if-eqz p5, :cond_1

    .line 1277
    invoke-virtual/range {p0 .. p5}, Lcom/android/internal/app/procstats/ProcessStats;->getProcessStateLocked(Ljava/lang/String;IJLjava/lang/String;)Lcom/android/internal/app/procstats/ProcessState;

    move-result-object v2

    :goto_0
    move-object v8, v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 1278
    .local v8, "ps":Lcom/android/internal/app/procstats/ProcessState;
    :goto_1
    new-instance v2, Lcom/android/internal/app/procstats/ServiceState;

    move-object v3, v2

    move-object v4, p0

    move-object v5, p1

    move-object v6, p6

    move-object v7, p5

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/app/procstats/ServiceState;-><init>(Lcom/android/internal/app/procstats/ProcessStats;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/app/procstats/ProcessState;)V

    move-object v1, v2

    .line 1279
    iget-object v2, v0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v2, p6, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1281
    return-object v1
.end method

.method printMemoryCategory(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;DJJI)J
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "label"    # Ljava/lang/String;
    .param p4, "memWeight"    # D
    .param p6, "totalTime"    # J
    .param p8, "curTotalMem"    # J
    .param p10, "samples"    # I

    .line 1498
    const-wide/16 v0, 0x0

    cmpl-double v0, p4, v0

    if-eqz v0, :cond_0

    .line 1499
    const-wide/high16 v0, 0x4090000000000000L    # 1024.0

    mul-double/2addr v0, p4

    long-to-double v2, p6

    div-double/2addr v0, v2

    double-to-long v0, v0

    .line 1500
    .local v0, "mem":J
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1501
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1502
    const-string v2, ": "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1503
    invoke-static {p1, v0, v1}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 1504
    const-string v2, " ("

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1505
    invoke-virtual {p1, p10}, Ljava/io/PrintWriter;->print(I)V

    .line 1506
    const-string v2, " samples)"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1507
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1508
    add-long v2, p8, v0

    return-wide v2

    .line 1510
    .end local v0    # "mem":J
    :cond_0
    return-wide p8
.end method

.method public read(Ljava/io/InputStream;)V
    .locals 5
    .param p1, "stream"    # Ljava/io/InputStream;

    .line 929
    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [I

    .line 930
    .local v0, "len":[I
    invoke-static {p1, v0}, Lcom/android/internal/app/procstats/ProcessStats;->readFully(Ljava/io/InputStream;[I)[B

    move-result-object v1

    .line 931
    .local v1, "raw":[B
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 932
    .local v2, "in":Landroid/os/Parcel;
    const/4 v3, 0x0

    aget v4, v0, v3

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 933
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 934
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 936
    invoke-virtual {p0, v2}, Lcom/android/internal/app/procstats/ProcessStats;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 939
    .end local v0    # "len":[I
    .end local v1    # "raw":[B
    .end local v2    # "in":Landroid/os/Parcel;
    goto :goto_0

    .line 937
    :catch_0
    move-exception v0

    .line 938
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "caught exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    .line 940
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    return-void
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 34
    .param p1, "in"    # Landroid/os/Parcel;

    move-object/from16 v7, p0

    .line 943
    move-object/from16 v8, p1

    iget-object v0, v7, Lcom/android/internal/app/procstats/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v0}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-gtz v0, :cond_1

    iget-object v0, v7, Lcom/android/internal/app/procstats/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    .line 944
    invoke-virtual {v0}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v10

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v9

    :goto_1
    move v11, v0

    .line 945
    .local v11, "hadData":Z
    if-eqz v11, :cond_2

    .line 946
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/procstats/ProcessStats;->resetSafely()V

    .line 949
    :cond_2
    const v0, 0x50535454

    const-string/jumbo v1, "magic number"

    invoke-direct {v7, v8, v0, v1}, Lcom/android/internal/app/procstats/ProcessStats;->readCheckedInt(Landroid/os/Parcel;ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 950
    return-void

    .line 952
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 953
    .local v12, "version":I
    const/16 v0, 0x1b

    if-eq v12, v0, :cond_4

    .line 954
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bad version: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    .line 955
    return-void

    .line 957
    :cond_4
    const/16 v0, 0xe

    const-string/jumbo v1, "state count"

    invoke-direct {v7, v8, v0, v1}, Lcom/android/internal/app/procstats/ProcessStats;->readCheckedInt(Landroid/os/Parcel;ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 958
    return-void

    .line 960
    :cond_5
    const/16 v0, 0x8

    const-string v1, "adj count"

    invoke-direct {v7, v8, v0, v1}, Lcom/android/internal/app/procstats/ProcessStats;->readCheckedInt(Landroid/os/Parcel;ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 961
    return-void

    .line 963
    :cond_6
    const/16 v0, 0xa

    const-string/jumbo v1, "pss count"

    invoke-direct {v7, v8, v0, v1}, Lcom/android/internal/app/procstats/ProcessStats;->readCheckedInt(Landroid/os/Parcel;ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 964
    return-void

    .line 966
    :cond_7
    const/16 v0, 0x10

    const-string/jumbo v1, "sys mem usage count"

    invoke-direct {v7, v8, v0, v1}, Lcom/android/internal/app/procstats/ProcessStats;->readCheckedInt(Landroid/os/Parcel;ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 967
    return-void

    .line 969
    :cond_8
    const/16 v0, 0x1000

    const-string/jumbo v1, "longs size"

    invoke-direct {v7, v8, v0, v1}, Lcom/android/internal/app/procstats/ProcessStats;->readCheckedInt(Landroid/os/Parcel;ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 970
    return-void

    .line 973
    :cond_9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v7, Lcom/android/internal/app/procstats/ProcessStats;->mIndexToCommonString:Ljava/util/ArrayList;

    .line 975
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, v7, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartClock:J

    .line 976
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/app/procstats/ProcessStats;->buildTimePeriodStartClockStr()V

    .line 977
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, v7, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartRealtime:J

    .line 978
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, v7, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndRealtime:J

    .line 979
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, v7, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartUptime:J

    .line 980
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, v7, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndUptime:J

    .line 981
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, v7, Lcom/android/internal/app/procstats/ProcessStats;->mInternalSinglePssCount:J

    .line 982
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, v7, Lcom/android/internal/app/procstats/ProcessStats;->mInternalSinglePssTime:J

    .line 983
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, v7, Lcom/android/internal/app/procstats/ProcessStats;->mInternalAllMemPssCount:J

    .line 984
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, v7, Lcom/android/internal/app/procstats/ProcessStats;->mInternalAllMemPssTime:J

    .line 985
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, v7, Lcom/android/internal/app/procstats/ProcessStats;->mInternalAllPollPssCount:J

    .line 986
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, v7, Lcom/android/internal/app/procstats/ProcessStats;->mInternalAllPollPssTime:J

    .line 987
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, v7, Lcom/android/internal/app/procstats/ProcessStats;->mExternalPssCount:J

    .line 988
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, v7, Lcom/android/internal/app/procstats/ProcessStats;->mExternalPssTime:J

    .line 989
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, v7, Lcom/android/internal/app/procstats/ProcessStats;->mExternalSlowPssCount:J

    .line 990
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, v7, Lcom/android/internal/app/procstats/ProcessStats;->mExternalSlowPssTime:J

    .line 991
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/android/internal/app/procstats/ProcessStats;->mRuntime:Ljava/lang/String;

    .line 992
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_a

    move v0, v9

    goto :goto_2

    :cond_a
    move v0, v10

    :goto_2
    iput-boolean v0, v7, Lcom/android/internal/app/procstats/ProcessStats;->mHasSwappedOutPss:Z

    .line 993
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, v7, Lcom/android/internal/app/procstats/ProcessStats;->mFlags:I

    .line 994
    iget-object v0, v7, Lcom/android/internal/app/procstats/ProcessStats;->mTableData:Lcom/android/internal/app/procstats/SparseMappingTable;

    invoke-virtual {v0, v8}, Lcom/android/internal/app/procstats/SparseMappingTable;->readFromParcel(Landroid/os/Parcel;)V

    .line 995
    iget-object v0, v7, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactorDurations:[J

    iget-object v1, v7, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactorDurations:[J

    array-length v1, v1

    invoke-direct {v7, v8, v12, v0, v1}, Lcom/android/internal/app/procstats/ProcessStats;->readCompactedLongArray(Landroid/os/Parcel;I[JI)V

    .line 996
    iget-object v0, v7, Lcom/android/internal/app/procstats/ProcessStats;->mSysMemUsage:Lcom/android/internal/app/procstats/SysMemUsageTable;

    invoke-virtual {v0, v8}, Lcom/android/internal/app/procstats/SysMemUsageTable;->readFromParcel(Landroid/os/Parcel;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 997
    return-void

    .line 1000
    :cond_b
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1001
    .local v0, "NPROC":I
    if-gez v0, :cond_c

    .line 1002
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad process count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    .line 1003
    return-void

    .line 1005
    :cond_c
    move v6, v0

    .line 1005
    .end local v0    # "NPROC":I
    .local v6, "NPROC":I
    :goto_3
    if-lez v6, :cond_16

    .line 1006
    add-int/lit8 v14, v6, -0x1

    .line 1007
    .end local v6    # "NPROC":I
    .local v14, "NPROC":I
    invoke-direct {v7, v8, v12}, Lcom/android/internal/app/procstats/ProcessStats;->readCommonString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v15

    .line 1008
    .local v15, "procName":Ljava/lang/String;
    if-nez v15, :cond_d

    .line 1009
    const-string v0, "bad process name"

    iput-object v0, v7, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    .line 1010
    return-void

    .line 1012
    :cond_d
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1013
    .local v0, "NUID":I
    if-gez v0, :cond_e

    .line 1014
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad uid count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    .line 1015
    return-void

    .line 1017
    :cond_e
    :goto_4
    if-lez v0, :cond_15

    .line 1018
    add-int/lit8 v16, v0, -0x1

    .line 1019
    .end local v0    # "NUID":I
    .local v16, "NUID":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1020
    .local v6, "uid":I
    if-gez v6, :cond_f

    .line 1021
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bad uid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    .line 1022
    return-void

    .line 1024
    :cond_f
    invoke-direct {v7, v8, v12}, Lcom/android/internal/app/procstats/ProcessStats;->readCommonString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v17

    .line 1025
    .local v17, "pkgName":Ljava/lang/String;
    if-nez v17, :cond_10

    .line 1026
    const-string v0, "bad process package name"

    iput-object v0, v7, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    .line 1027
    return-void

    .line 1029
    :cond_10
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v18

    .line 1030
    .local v18, "vers":J
    if-eqz v11, :cond_11

    iget-object v0, v7, Lcom/android/internal/app/procstats/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v0, v15, v6}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/procstats/ProcessState;

    goto :goto_5

    :cond_11
    const/4 v0, 0x0

    :goto_5
    move-object v4, v0

    .line 1031
    .local v4, "proc":Lcom/android/internal/app/procstats/ProcessState;
    if-eqz v4, :cond_13

    .line 1032
    invoke-virtual {v4, v8, v10}, Lcom/android/internal/app/procstats/ProcessState;->readFromParcel(Landroid/os/Parcel;Z)Z

    move-result v0

    if-nez v0, :cond_12

    .line 1033
    return-void

    .line 1043
    :cond_12
    move v13, v6

    goto :goto_6

    .line 1036
    :cond_13
    new-instance v20, Lcom/android/internal/app/procstats/ProcessState;

    move-object/from16 v0, v20

    move-object v1, v7

    move-object/from16 v2, v17

    move v3, v6

    move-object/from16 v21, v4

    move-wide/from16 v4, v18

    .line 1036
    .end local v4    # "proc":Lcom/android/internal/app/procstats/ProcessState;
    .local v21, "proc":Lcom/android/internal/app/procstats/ProcessState;
    move v13, v6

    move-object v6, v15

    .line 1036
    .end local v6    # "uid":I
    .local v13, "uid":I
    invoke-direct/range {v0 .. v6}, Lcom/android/internal/app/procstats/ProcessState;-><init>(Lcom/android/internal/app/procstats/ProcessStats;Ljava/lang/String;IJLjava/lang/String;)V

    move-object/from16 v4, v20

    .line 1037
    .end local v21    # "proc":Lcom/android/internal/app/procstats/ProcessState;
    .restart local v4    # "proc":Lcom/android/internal/app/procstats/ProcessState;
    invoke-virtual {v4, v8, v9}, Lcom/android/internal/app/procstats/ProcessState;->readFromParcel(Landroid/os/Parcel;Z)Z

    move-result v0

    if-nez v0, :cond_14

    .line 1038
    return-void

    .line 1043
    :cond_14
    :goto_6
    iget-object v0, v7, Lcom/android/internal/app/procstats/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v0, v15, v13, v4}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    .line 1044
    .end local v4    # "proc":Lcom/android/internal/app/procstats/ProcessState;
    .end local v13    # "uid":I
    .end local v17    # "pkgName":Ljava/lang/String;
    .end local v18    # "vers":J
    nop

    .line 1017
    move/from16 v0, v16

    goto :goto_4

    .line 1045
    .end local v15    # "procName":Ljava/lang/String;
    .end local v16    # "NUID":I
    :cond_15
    nop

    .line 1005
    move v6, v14

    goto/16 :goto_3

    .line 1049
    .end local v14    # "NPROC":I
    .local v6, "NPROC":I
    :cond_16
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1050
    .local v0, "NPKG":I
    if-gez v0, :cond_17

    .line 1051
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad package count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    .line 1052
    return-void

    .line 1054
    :cond_17
    :goto_7
    if-lez v0, :cond_2f

    .line 1055
    add-int/lit8 v13, v0, -0x1

    .line 1056
    .end local v0    # "NPKG":I
    .local v13, "NPKG":I
    invoke-direct {v7, v8, v12}, Lcom/android/internal/app/procstats/ProcessStats;->readCommonString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v14

    .line 1057
    .local v14, "pkgName":Ljava/lang/String;
    if-nez v14, :cond_18

    .line 1058
    const-string v0, "bad package name"

    iput-object v0, v7, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    .line 1059
    return-void

    .line 1061
    :cond_18
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1062
    .local v0, "NUID":I
    if-gez v0, :cond_19

    .line 1063
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad uid count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    .line 1064
    return-void

    .line 1066
    :cond_19
    :goto_8
    if-lez v0, :cond_2e

    .line 1067
    add-int/lit8 v15, v0, -0x1

    .line 1068
    .end local v0    # "NUID":I
    .local v15, "NUID":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1069
    .local v5, "uid":I
    if-gez v5, :cond_1a

    .line 1070
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bad uid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    .line 1071
    return-void

    .line 1073
    :cond_1a
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1074
    .local v0, "NVERS":I
    if-gez v0, :cond_1b

    .line 1075
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad versions count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    .line 1076
    return-void

    .line 1078
    :cond_1b
    :goto_9
    if-lez v0, :cond_2d

    .line 1079
    add-int/lit8 v16, v0, -0x1

    .line 1080
    .end local v0    # "NVERS":I
    .local v16, "NVERS":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 1081
    .local v2, "vers":J
    new-instance v0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    invoke-direct {v0, v14, v5}, Lcom/android/internal/app/procstats/ProcessStats$PackageState;-><init>(Ljava/lang/String;I)V

    move-object v1, v0

    .line 1082
    .local v1, "pkgState":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    iget-object v0, v7, Lcom/android/internal/app/procstats/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v0, v14, v5}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/LongSparseArray;

    .line 1083
    .local v0, "vpkg":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;"
    if-nez v0, :cond_1c

    .line 1084
    new-instance v4, Landroid/util/LongSparseArray;

    invoke-direct {v4}, Landroid/util/LongSparseArray;-><init>()V

    move-object v0, v4

    .line 1085
    iget-object v4, v7, Lcom/android/internal/app/procstats/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v4, v14, v5, v0}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    .line 1087
    :cond_1c
    invoke-virtual {v0, v2, v3, v1}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1088
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1089
    .local v4, "NPROCS":I
    if-gez v4, :cond_1d

    .line 1090
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "bad package process count: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v7, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    .line 1091
    return-void

    .line 1093
    :cond_1d
    move/from16 v17, v4

    .line 1093
    .end local v4    # "NPROCS":I
    .local v17, "NPROCS":I
    :goto_a
    if-lez v17, :cond_25

    .line 1094
    add-int/lit8 v17, v17, -0x1

    .line 1095
    invoke-direct {v7, v8, v12}, Lcom/android/internal/app/procstats/ProcessStats;->readCommonString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v4

    .line 1096
    .local v4, "procName":Ljava/lang/String;
    if-nez v4, :cond_1e

    .line 1097
    const-string v9, "bad package process name"

    iput-object v9, v7, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    .line 1098
    return-void

    .line 1100
    :cond_1e
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 1103
    .local v18, "hasProc":I
    iget-object v9, v7, Lcom/android/internal/app/procstats/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v9, v4, v5}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/app/procstats/ProcessState;

    .line 1106
    .local v9, "commonProc":Lcom/android/internal/app/procstats/ProcessState;
    if-nez v9, :cond_1f

    .line 1107
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v31, v0

    const-string/jumbo v0, "no common proc: "

    .line 1107
    .end local v0    # "vpkg":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;"
    .local v31, "vpkg":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;"
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    .line 1108
    return-void

    .line 1110
    .end local v31    # "vpkg":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;"
    .restart local v0    # "vpkg":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;"
    :cond_1f
    move-object/from16 v31, v0

    .line 1110
    .end local v0    # "vpkg":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;"
    .restart local v31    # "vpkg":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;"
    if-eqz v18, :cond_24

    .line 1115
    if-eqz v11, :cond_20

    iget-object v0, v1, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/procstats/ProcessState;

    goto :goto_b

    :cond_20
    const/4 v0, 0x0

    .line 1116
    .local v0, "proc":Lcom/android/internal/app/procstats/ProcessState;
    :goto_b
    if-eqz v0, :cond_22

    .line 1117
    invoke-virtual {v0, v8, v10}, Lcom/android/internal/app/procstats/ProcessState;->readFromParcel(Landroid/os/Parcel;Z)Z

    move-result v19

    if-nez v19, :cond_21

    .line 1118
    return-void

    .line 1129
    :cond_21
    const/4 v10, 0x1

    goto :goto_c

    .line 1121
    :cond_22
    new-instance v19, Lcom/android/internal/app/procstats/ProcessState;

    const-wide/16 v29, 0x0

    move-object/from16 v22, v19

    move-object/from16 v23, v9

    move-object/from16 v24, v14

    move/from16 v25, v5

    move-wide/from16 v26, v2

    move-object/from16 v28, v4

    invoke-direct/range {v22 .. v30}, Lcom/android/internal/app/procstats/ProcessState;-><init>(Lcom/android/internal/app/procstats/ProcessState;Ljava/lang/String;IJLjava/lang/String;J)V

    move-object/from16 v0, v19

    .line 1123
    const/4 v10, 0x1

    invoke-virtual {v0, v8, v10}, Lcom/android/internal/app/procstats/ProcessState;->readFromParcel(Landroid/os/Parcel;Z)Z

    move-result v19

    if-nez v19, :cond_23

    .line 1124
    return-void

    .line 1129
    :cond_23
    :goto_c
    iget-object v10, v1, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v10, v4, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1130
    .end local v0    # "proc":Lcom/android/internal/app/procstats/ProcessState;
    goto :goto_d

    .line 1133
    :cond_24
    iget-object v0, v1, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v0, v4, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1135
    .end local v4    # "procName":Ljava/lang/String;
    .end local v9    # "commonProc":Lcom/android/internal/app/procstats/ProcessState;
    .end local v18    # "hasProc":I
    :goto_d
    nop

    .line 1093
    move-object/from16 v0, v31

    const/4 v9, 0x1

    const/4 v10, 0x0

    goto :goto_a

    .line 1136
    .end local v31    # "vpkg":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;"
    .local v0, "vpkg":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;"
    :cond_25
    move-object/from16 v31, v0

    .line 1136
    .end local v0    # "vpkg":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;"
    .restart local v31    # "vpkg":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;"
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1137
    .local v0, "NSRVS":I
    if-gez v0, :cond_26

    .line 1138
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "bad package service count: "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v7, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    .line 1139
    return-void

    .line 1141
    :cond_26
    :goto_e
    if-lez v0, :cond_2c

    .line 1142
    add-int/lit8 v9, v0, -0x1

    .line 1143
    .end local v0    # "NSRVS":I
    .local v9, "NSRVS":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 1144
    .local v10, "serviceName":Ljava/lang/String;
    if-nez v10, :cond_27

    .line 1145
    const-string v0, "bad package service name"

    iput-object v0, v7, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    .line 1146
    return-void

    .line 1148
    :cond_27
    const/16 v0, 0x9

    if-le v12, v0, :cond_28

    invoke-direct {v7, v8, v12}, Lcom/android/internal/app/procstats/ProcessStats;->readCommonString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    goto :goto_f

    :cond_28
    const/4 v4, 0x0

    .line 1149
    .local v4, "processName":Ljava/lang/String;
    :goto_f
    if-eqz v11, :cond_29

    iget-object v0, v1, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v0, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/procstats/ServiceState;

    goto :goto_10

    :cond_29
    const/4 v0, 0x0

    :goto_10
    move-object/from16 v18, v0

    .line 1150
    .local v18, "serv":Lcom/android/internal/app/procstats/ServiceState;
    if-nez v18, :cond_2a

    .line 1151
    new-instance v19, Lcom/android/internal/app/procstats/ServiceState;

    const/16 v20, 0x0

    move-object/from16 v21, v31

    move-object/from16 v0, v19

    .line 1151
    .end local v31    # "vpkg":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;"
    .local v21, "vpkg":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;"
    move-object/from16 v33, v1

    move-object v1, v7

    .line 1151
    .end local v1    # "pkgState":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    .local v33, "pkgState":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    move-wide/from16 v22, v2

    move-object v2, v14

    .line 1151
    .end local v2    # "vers":J
    .local v22, "vers":J
    move-object v3, v10

    move/from16 v24, v5

    move-object/from16 v5, v20

    .line 1151
    .end local v5    # "uid":I
    .local v24, "uid":I
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/app/procstats/ServiceState;-><init>(Lcom/android/internal/app/procstats/ProcessStats;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/app/procstats/ProcessState;)V

    move-object/from16 v18, v19

    .line 1153
    move-object/from16 v0, v18

    goto :goto_11

    .line 1153
    .end local v21    # "vpkg":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;"
    .end local v22    # "vers":J
    .end local v24    # "uid":I
    .end local v33    # "pkgState":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    .restart local v1    # "pkgState":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    .restart local v2    # "vers":J
    .restart local v5    # "uid":I
    .restart local v31    # "vpkg":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;"
    :cond_2a
    move-object/from16 v33, v1

    move-wide/from16 v22, v2

    move/from16 v24, v5

    move-object/from16 v21, v31

    move-object/from16 v0, v18

    .line 1153
    .end local v1    # "pkgState":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    .end local v2    # "vers":J
    .end local v5    # "uid":I
    .end local v18    # "serv":Lcom/android/internal/app/procstats/ServiceState;
    .end local v31    # "vpkg":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;"
    .local v0, "serv":Lcom/android/internal/app/procstats/ServiceState;
    .restart local v21    # "vpkg":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;"
    .restart local v22    # "vers":J
    .restart local v24    # "uid":I
    .restart local v33    # "pkgState":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    :goto_11
    invoke-virtual {v0, v8}, Lcom/android/internal/app/procstats/ServiceState;->readFromParcel(Landroid/os/Parcel;)Z

    move-result v1

    if-nez v1, :cond_2b

    .line 1154
    return-void

    .line 1158
    :cond_2b
    move-object/from16 v1, v33

    iget-object v2, v1, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    .line 1158
    .end local v33    # "pkgState":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    .restart local v1    # "pkgState":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    invoke-virtual {v2, v10, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1159
    .end local v0    # "serv":Lcom/android/internal/app/procstats/ServiceState;
    .end local v4    # "processName":Ljava/lang/String;
    .end local v10    # "serviceName":Ljava/lang/String;
    nop

    .line 1141
    move v0, v9

    move-object/from16 v31, v21

    move-wide/from16 v2, v22

    move/from16 v5, v24

    goto :goto_e

    .line 1160
    .end local v1    # "pkgState":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    .end local v9    # "NSRVS":I
    .end local v17    # "NPROCS":I
    .end local v21    # "vpkg":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;"
    .end local v22    # "vers":J
    .end local v24    # "uid":I
    .restart local v5    # "uid":I
    :cond_2c
    move/from16 v24, v5

    .line 1078
    .end local v5    # "uid":I
    .restart local v24    # "uid":I
    move/from16 v0, v16

    const/4 v9, 0x1

    const/4 v10, 0x0

    goto/16 :goto_9

    .line 1161
    .end local v16    # "NVERS":I
    .end local v24    # "uid":I
    :cond_2d
    nop

    .line 1066
    move v0, v15

    const/4 v9, 0x1

    const/4 v10, 0x0

    goto/16 :goto_8

    .line 1162
    .end local v14    # "pkgName":Ljava/lang/String;
    .end local v15    # "NUID":I
    :cond_2e
    nop

    .line 1054
    move v0, v13

    const/4 v9, 0x1

    const/4 v10, 0x0

    goto/16 :goto_7

    .line 1165
    .end local v13    # "NPKG":I
    .local v0, "NPKG":I
    :cond_2f
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1166
    .local v1, "NPAGETYPES":I
    iget-object v2, v7, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeZones:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1167
    iget-object v2, v7, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeZones:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 1168
    iget-object v2, v7, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeLabels:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1169
    iget-object v2, v7, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeLabels:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 1170
    iget-object v2, v7, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeSizes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1171
    iget-object v2, v7, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeSizes:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 1172
    const/16 v32, 0x0

    .line 1172
    .local v32, "i":I
    :goto_12
    move/from16 v2, v32

    .line 1172
    .end local v32    # "i":I
    .local v2, "i":I
    if-ge v2, v1, :cond_30

    .line 1173
    iget-object v3, v7, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeZones:Ljava/util/ArrayList;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1174
    iget-object v3, v7, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeLabels:Ljava/util/ArrayList;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1175
    iget-object v3, v7, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeSizes:Ljava/util/ArrayList;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1172
    add-int/lit8 v32, v2, 0x1

    .line 1172
    .end local v2    # "i":I
    .restart local v32    # "i":I
    goto :goto_12

    .line 1178
    .end local v32    # "i":I
    :cond_30
    const/4 v2, 0x0

    iput-object v2, v7, Lcom/android/internal/app/procstats/ProcessStats;->mIndexToCommonString:Ljava/util/ArrayList;

    .line 1181
    return-void
.end method

.method public reset()V
    .locals 2

    .line 430
    invoke-direct {p0}, Lcom/android/internal/app/procstats/ProcessStats;->resetCommon()V

    .line 431
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v0}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 432
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v0}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 433
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactor:I

    .line 434
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mStartTime:J

    .line 436
    return-void
.end method

.method public resetSafely()V
    .locals 15

    .line 440
    invoke-direct {p0}, Lcom/android/internal/app/procstats/ProcessStats;->resetCommon()V

    .line 443
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 444
    .local v0, "now":J
    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v2}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v2

    .line 445
    .local v2, "procMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessState;>;>;"
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    .local v3, "ip":I
    :goto_0
    if-ltz v3, :cond_1

    .line 446
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/SparseArray;

    .line 447
    .local v5, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessState;>;"
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v6

    sub-int/2addr v6, v4

    .local v6, "iu":I
    :goto_1
    if-ltz v6, :cond_0

    .line 448
    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/app/procstats/ProcessState;

    const/4 v8, 0x0

    iput v8, v7, Lcom/android/internal/app/procstats/ProcessState;->tmpNumInUse:I

    .line 447
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    .line 445
    .end local v5    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessState;>;"
    .end local v6    # "iu":I
    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 454
    .end local v3    # "ip":I
    :cond_1
    iget-object v3, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    .line 455
    invoke-virtual {v3}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v3

    .line 456
    .local v3, "pkgMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;>;"
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v5

    sub-int/2addr v5, v4

    .local v5, "ip":I
    :goto_2
    if-ltz v5, :cond_b

    .line 457
    invoke-virtual {v3, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/SparseArray;

    .line 458
    .local v6, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;"
    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v7

    sub-int/2addr v7, v4

    .local v7, "iu":I
    :goto_3
    if-ltz v7, :cond_9

    .line 459
    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/LongSparseArray;

    .line 460
    .local v8, "vpkgs":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;"
    invoke-virtual {v8}, Landroid/util/LongSparseArray;->size()I

    move-result v9

    sub-int/2addr v9, v4

    .local v9, "iv":I
    :goto_4
    if-ltz v9, :cond_7

    .line 461
    invoke-virtual {v8, v9}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    .line 462
    .local v10, "pkgState":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    iget-object v11, v10, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v11}, Landroid/util/ArrayMap;->size()I

    move-result v11

    sub-int/2addr v11, v4

    .local v11, "iproc":I
    :goto_5
    if-ltz v11, :cond_3

    .line 463
    iget-object v12, v10, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v12, v11}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/app/procstats/ProcessState;

    .line 464
    .local v12, "ps":Lcom/android/internal/app/procstats/ProcessState;
    invoke-virtual {v12}, Lcom/android/internal/app/procstats/ProcessState;->isInUse()Z

    move-result v13

    if-eqz v13, :cond_2

    .line 465
    invoke-virtual {v12, v0, v1}, Lcom/android/internal/app/procstats/ProcessState;->resetSafely(J)V

    .line 466
    invoke-virtual {v12}, Lcom/android/internal/app/procstats/ProcessState;->getCommonProcess()Lcom/android/internal/app/procstats/ProcessState;

    move-result-object v13

    iget v14, v13, Lcom/android/internal/app/procstats/ProcessState;->tmpNumInUse:I

    add-int/2addr v14, v4

    iput v14, v13, Lcom/android/internal/app/procstats/ProcessState;->tmpNumInUse:I

    .line 467
    invoke-virtual {v12}, Lcom/android/internal/app/procstats/ProcessState;->getCommonProcess()Lcom/android/internal/app/procstats/ProcessState;

    move-result-object v13

    iput-object v12, v13, Lcom/android/internal/app/procstats/ProcessState;->tmpFoundSubProc:Lcom/android/internal/app/procstats/ProcessState;

    goto :goto_6

    .line 469
    :cond_2
    iget-object v13, v10, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v13, v11}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/app/procstats/ProcessState;

    invoke-virtual {v13}, Lcom/android/internal/app/procstats/ProcessState;->makeDead()V

    .line 470
    iget-object v13, v10, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v13, v11}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 462
    .end local v12    # "ps":Lcom/android/internal/app/procstats/ProcessState;
    :goto_6
    add-int/lit8 v11, v11, -0x1

    goto :goto_5

    .line 473
    .end local v11    # "iproc":I
    :cond_3
    iget-object v11, v10, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v11}, Landroid/util/ArrayMap;->size()I

    move-result v11

    sub-int/2addr v11, v4

    .local v11, "isvc":I
    :goto_7
    if-ltz v11, :cond_5

    .line 474
    iget-object v12, v10, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v12, v11}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/app/procstats/ServiceState;

    .line 475
    .local v12, "ss":Lcom/android/internal/app/procstats/ServiceState;
    invoke-virtual {v12}, Lcom/android/internal/app/procstats/ServiceState;->isInUse()Z

    move-result v13

    if-eqz v13, :cond_4

    .line 476
    invoke-virtual {v12, v0, v1}, Lcom/android/internal/app/procstats/ServiceState;->resetSafely(J)V

    goto :goto_8

    .line 478
    :cond_4
    iget-object v13, v10, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v13, v11}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 473
    .end local v12    # "ss":Lcom/android/internal/app/procstats/ServiceState;
    :goto_8
    add-int/lit8 v11, v11, -0x1

    goto :goto_7

    .line 481
    .end local v11    # "isvc":I
    :cond_5
    iget-object v11, v10, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v11}, Landroid/util/ArrayMap;->size()I

    move-result v11

    if-gtz v11, :cond_6

    iget-object v11, v10, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v11}, Landroid/util/ArrayMap;->size()I

    move-result v11

    if-gtz v11, :cond_6

    .line 482
    invoke-virtual {v8, v9}, Landroid/util/LongSparseArray;->removeAt(I)V

    .line 460
    .end local v10    # "pkgState":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    :cond_6
    add-int/lit8 v9, v9, -0x1

    goto :goto_4

    .line 485
    .end local v9    # "iv":I
    :cond_7
    invoke-virtual {v8}, Landroid/util/LongSparseArray;->size()I

    move-result v9

    if-gtz v9, :cond_8

    .line 486
    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->removeAt(I)V

    .line 458
    .end local v8    # "vpkgs":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;"
    :cond_8
    add-int/lit8 v7, v7, -0x1

    goto/16 :goto_3

    .line 489
    .end local v7    # "iu":I
    :cond_9
    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-gtz v7, :cond_a

    .line 490
    invoke-virtual {v3, v5}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 456
    .end local v6    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;"
    :cond_a
    add-int/lit8 v5, v5, -0x1

    goto/16 :goto_2

    .line 495
    .end local v5    # "ip":I
    :cond_b
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v5

    sub-int/2addr v5, v4

    .restart local v5    # "ip":I
    :goto_9
    if-ltz v5, :cond_11

    .line 496
    invoke-virtual {v2, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/SparseArray;

    .line 497
    .local v6, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessState;>;"
    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v7

    sub-int/2addr v7, v4

    .restart local v7    # "iu":I
    :goto_a
    if-ltz v7, :cond_f

    .line 498
    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/app/procstats/ProcessState;

    .line 499
    .local v8, "ps":Lcom/android/internal/app/procstats/ProcessState;
    invoke-virtual {v8}, Lcom/android/internal/app/procstats/ProcessState;->isInUse()Z

    move-result v9

    if-nez v9, :cond_d

    iget v9, v8, Lcom/android/internal/app/procstats/ProcessState;->tmpNumInUse:I

    if-lez v9, :cond_c

    goto :goto_b

    .line 515
    :cond_c
    invoke-virtual {v8}, Lcom/android/internal/app/procstats/ProcessState;->makeDead()V

    .line 516
    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->removeAt(I)V

    .end local v8    # "ps":Lcom/android/internal/app/procstats/ProcessState;
    goto :goto_c

    .line 506
    .restart local v8    # "ps":Lcom/android/internal/app/procstats/ProcessState;
    :cond_d
    :goto_b
    invoke-virtual {v8}, Lcom/android/internal/app/procstats/ProcessState;->isActive()Z

    move-result v9

    if-nez v9, :cond_e

    invoke-virtual {v8}, Lcom/android/internal/app/procstats/ProcessState;->isMultiPackage()Z

    move-result v9

    if-eqz v9, :cond_e

    iget v9, v8, Lcom/android/internal/app/procstats/ProcessState;->tmpNumInUse:I

    if-ne v9, v4, :cond_e

    .line 508
    iget-object v8, v8, Lcom/android/internal/app/procstats/ProcessState;->tmpFoundSubProc:Lcom/android/internal/app/procstats/ProcessState;

    .line 509
    invoke-virtual {v8}, Lcom/android/internal/app/procstats/ProcessState;->makeStandalone()V

    .line 510
    invoke-virtual {v6, v7, v8}, Landroid/util/SparseArray;->setValueAt(ILjava/lang/Object;)V

    goto :goto_c

    .line 512
    :cond_e
    invoke-virtual {v8, v0, v1}, Lcom/android/internal/app/procstats/ProcessState;->resetSafely(J)V

    .line 497
    .end local v8    # "ps":Lcom/android/internal/app/procstats/ProcessState;
    :goto_c
    add-int/lit8 v7, v7, -0x1

    goto :goto_a

    .line 519
    .end local v7    # "iu":I
    :cond_f
    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-gtz v7, :cond_10

    .line 520
    invoke-virtual {v2, v5}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 495
    .end local v6    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessState;>;"
    :cond_10
    add-int/lit8 v5, v5, -0x1

    goto :goto_9

    .line 524
    .end local v5    # "ip":I
    :cond_11
    iput-wide v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mStartTime:J

    .line 526
    return-void
.end method

.method public updateFragmentation()V
    .locals 6

    .line 579
    const/4 v0, 0x0

    .line 581
    .local v0, "reader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    const-string v3, "/proc/pagetypeinfo"

    invoke-direct {v2, v3}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v0, v1

    .line 582
    sget-object v1, Lcom/android/internal/app/procstats/ProcessStats;->sPageTypeRegex:Ljava/util/regex/Pattern;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 583
    .local v1, "matcher":Ljava/util/regex/Matcher;
    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeZones:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 584
    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeLabels:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 585
    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeSizes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 587
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 588
    .local v2, "line":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 589
    nop

    .line 608
    .end local v1    # "matcher":Ljava/util/regex/Matcher;
    .end local v2    # "line":Ljava/lang/String;
    nop

    .line 610
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 612
    :goto_1
    goto :goto_2

    .line 611
    :catch_0
    move-exception v1

    goto :goto_1

    .line 615
    :goto_2
    return-void

    .line 591
    .restart local v1    # "matcher":Ljava/util/regex/Matcher;
    .restart local v2    # "line":Ljava/lang/String;
    :cond_0
    :try_start_2
    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->reset(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 592
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 593
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xa

    invoke-static {v3, v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v3

    .line 594
    .local v3, "zone":Ljava/lang/Integer;
    if-nez v3, :cond_1

    .line 595
    goto :goto_0

    .line 597
    :cond_1
    iget-object v4, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeZones:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 598
    iget-object v4, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeLabels:Ljava/util/ArrayList;

    const/4 v5, 0x2

    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 599
    iget-object v4, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeSizes:Ljava/util/ArrayList;

    const/4 v5, 0x3

    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/app/procstats/ProcessStats;->splitAndParseNumbers(Ljava/lang/String;)[I

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 601
    .end local v2    # "line":Ljava/lang/String;
    .end local v3    # "zone":Ljava/lang/Integer;
    :cond_2
    goto :goto_0

    .line 608
    .end local v1    # "matcher":Ljava/util/regex/Matcher;
    :catchall_0
    move-exception v1

    goto :goto_4

    .line 602
    :catch_1
    move-exception v1

    .line 603
    .local v1, "ex":Ljava/io/IOException;
    :try_start_3
    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeZones:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 604
    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeLabels:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 605
    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeSizes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 608
    if-eqz v0, :cond_3

    .line 610
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 612
    goto :goto_3

    .line 611
    :catch_2
    move-exception v2

    .line 606
    :cond_3
    :goto_3
    return-void

    .line 608
    .end local v1    # "ex":Ljava/io/IOException;
    :goto_4
    if-eqz v0, :cond_4

    .line 610
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 612
    goto :goto_5

    .line 611
    :catch_3
    move-exception v2

    .line 612
    :cond_4
    :goto_5
    throw v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 747
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/android/internal/app/procstats/ProcessStats;->writeToParcel(Landroid/os/Parcel;JI)V

    .line 748
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;JI)V
    .locals 28
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "now"    # J
    .param p4, "flags"    # I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    .line 752
    const v4, 0x50535454

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 753
    const/16 v4, 0x1b

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 754
    const/16 v4, 0xe

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 755
    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 756
    const/16 v4, 0xa

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 757
    const/16 v4, 0x10

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 758
    const/16 v4, 0x1000

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 760
    new-instance v4, Landroid/util/ArrayMap;

    iget-object v5, v0, Lcom/android/internal/app/procstats/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v5}, Lcom/android/internal/app/ProcessMap;->size()I

    move-result v5

    invoke-direct {v4, v5}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v4, v0, Lcom/android/internal/app/procstats/ProcessStats;->mCommonStringToIndex:Landroid/util/ArrayMap;

    .line 763
    iget-object v4, v0, Lcom/android/internal/app/procstats/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v4}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v4

    .line 764
    .local v4, "procMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessState;>;>;"
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v5

    .line 765
    .local v5, "NPROC":I
    const/4 v7, 0x0

    .local v7, "ip":I
    :goto_0
    if-ge v7, v5, :cond_1

    .line 766
    invoke-virtual {v4, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/SparseArray;

    .line 767
    .local v8, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessState;>;"
    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v9

    .line 768
    .local v9, "NUID":I
    const/4 v10, 0x0

    .local v10, "iu":I
    :goto_1
    if-ge v10, v9, :cond_0

    .line 769
    invoke-virtual {v8, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/internal/app/procstats/ProcessState;

    invoke-virtual {v11, v2, v3}, Lcom/android/internal/app/procstats/ProcessState;->commitStateTime(J)V

    .line 768
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 765
    .end local v8    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessState;>;"
    .end local v9    # "NUID":I
    .end local v10    # "iu":I
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 772
    .end local v7    # "ip":I
    :cond_1
    iget-object v7, v0, Lcom/android/internal/app/procstats/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    .line 773
    invoke-virtual {v7}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v7

    .line 774
    .local v7, "pkgMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;>;"
    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v8

    .line 775
    .local v8, "NPKG":I
    const/4 v9, 0x0

    .local v9, "ip":I
    :goto_2
    if-ge v9, v8, :cond_7

    .line 776
    invoke-virtual {v7, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/util/SparseArray;

    .line 777
    .local v10, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;"
    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    move-result v11

    .line 778
    .local v11, "NUID":I
    const/4 v12, 0x0

    .local v12, "iu":I
    :goto_3
    if-ge v12, v11, :cond_6

    .line 779
    invoke-virtual {v10, v12}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/util/LongSparseArray;

    .line 780
    .local v13, "vpkgs":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;"
    invoke-virtual {v13}, Landroid/util/LongSparseArray;->size()I

    move-result v14

    .line 781
    .local v14, "NVERS":I
    const/4 v15, 0x0

    .local v15, "iv":I
    :goto_4
    if-ge v15, v14, :cond_5

    .line 782
    invoke-virtual {v13, v15}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v6, v16

    check-cast v6, Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    .line 783
    .local v6, "pkgState":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    move-object/from16 v17, v10

    iget-object v10, v6, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    .end local v10    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;"
    .local v17, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;"
    invoke-virtual {v10}, Landroid/util/ArrayMap;->size()I

    move-result v10

    .line 784
    .local v10, "NPROCS":I
    const/16 v16, 0x0

    .local v16, "iproc":I
    :goto_5
    move/from16 v18, v16

    .end local v16    # "iproc":I
    .local v18, "iproc":I
    move/from16 v19, v11

    move/from16 v11, v18

    if-ge v11, v10, :cond_3

    .line 785
    .end local v18    # "iproc":I
    .local v11, "iproc":I
    .local v19, "NUID":I
    move/from16 v20, v10

    iget-object v10, v6, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    .end local v10    # "NPROCS":I
    .local v20, "NPROCS":I
    invoke-virtual {v10, v11}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/internal/app/procstats/ProcessState;

    .line 786
    .local v10, "proc":Lcom/android/internal/app/procstats/ProcessState;
    move-object/from16 v21, v13

    invoke-virtual {v10}, Lcom/android/internal/app/procstats/ProcessState;->getCommonProcess()Lcom/android/internal/app/procstats/ProcessState;

    move-result-object v13

    .end local v13    # "vpkgs":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;"
    .local v21, "vpkgs":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;"
    if-eq v13, v10, :cond_2

    .line 787
    invoke-virtual {v10, v2, v3}, Lcom/android/internal/app/procstats/ProcessState;->commitStateTime(J)V

    .line 784
    .end local v10    # "proc":Lcom/android/internal/app/procstats/ProcessState;
    :cond_2
    add-int/lit8 v16, v11, 0x1

    .end local v11    # "iproc":I
    .restart local v16    # "iproc":I
    move/from16 v11, v19

    move/from16 v10, v20

    move-object/from16 v13, v21

    goto :goto_5

    .line 790
    .end local v16    # "iproc":I
    .end local v20    # "NPROCS":I
    .end local v21    # "vpkgs":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;"
    .local v10, "NPROCS":I
    .restart local v13    # "vpkgs":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;"
    :cond_3
    move/from16 v20, v10

    move-object/from16 v21, v13

    .end local v10    # "NPROCS":I
    .end local v13    # "vpkgs":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;"
    .restart local v20    # "NPROCS":I
    .restart local v21    # "vpkgs":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;"
    iget-object v10, v6, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v10}, Landroid/util/ArrayMap;->size()I

    move-result v10

    .line 791
    .local v10, "NSRVS":I
    const/4 v11, 0x0

    .local v11, "isvc":I
    :goto_6
    if-ge v11, v10, :cond_4

    .line 792
    iget-object v13, v6, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v13, v11}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/app/procstats/ServiceState;

    invoke-virtual {v13, v2, v3}, Lcom/android/internal/app/procstats/ServiceState;->commitStateTime(J)V

    .line 791
    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    .line 781
    .end local v6    # "pkgState":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    .end local v10    # "NSRVS":I
    .end local v11    # "isvc":I
    .end local v20    # "NPROCS":I
    :cond_4
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v10, v17

    move/from16 v11, v19

    move-object/from16 v13, v21

    goto :goto_4

    .line 778
    .end local v14    # "NVERS":I
    .end local v15    # "iv":I
    .end local v17    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;"
    .end local v19    # "NUID":I
    .end local v21    # "vpkgs":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;"
    .local v10, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;"
    .local v11, "NUID":I
    :cond_5
    move-object/from16 v17, v10

    move/from16 v19, v11

    .end local v10    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;"
    .end local v11    # "NUID":I
    .restart local v17    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;"
    .restart local v19    # "NUID":I
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 775
    .end local v12    # "iu":I
    .end local v17    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;"
    .end local v19    # "NUID":I
    :cond_6
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_2

    .line 798
    .end local v9    # "ip":I
    :cond_7
    iget-wide v9, v0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartClock:J

    invoke-virtual {v1, v9, v10}, Landroid/os/Parcel;->writeLong(J)V

    .line 799
    iget-wide v9, v0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartRealtime:J

    invoke-virtual {v1, v9, v10}, Landroid/os/Parcel;->writeLong(J)V

    .line 800
    iget-wide v9, v0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndRealtime:J

    invoke-virtual {v1, v9, v10}, Landroid/os/Parcel;->writeLong(J)V

    .line 801
    iget-wide v9, v0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartUptime:J

    invoke-virtual {v1, v9, v10}, Landroid/os/Parcel;->writeLong(J)V

    .line 802
    iget-wide v9, v0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndUptime:J

    invoke-virtual {v1, v9, v10}, Landroid/os/Parcel;->writeLong(J)V

    .line 803
    iget-wide v9, v0, Lcom/android/internal/app/procstats/ProcessStats;->mInternalSinglePssCount:J

    invoke-virtual {v1, v9, v10}, Landroid/os/Parcel;->writeLong(J)V

    .line 804
    iget-wide v9, v0, Lcom/android/internal/app/procstats/ProcessStats;->mInternalSinglePssTime:J

    invoke-virtual {v1, v9, v10}, Landroid/os/Parcel;->writeLong(J)V

    .line 805
    iget-wide v9, v0, Lcom/android/internal/app/procstats/ProcessStats;->mInternalAllMemPssCount:J

    invoke-virtual {v1, v9, v10}, Landroid/os/Parcel;->writeLong(J)V

    .line 806
    iget-wide v9, v0, Lcom/android/internal/app/procstats/ProcessStats;->mInternalAllMemPssTime:J

    invoke-virtual {v1, v9, v10}, Landroid/os/Parcel;->writeLong(J)V

    .line 807
    iget-wide v9, v0, Lcom/android/internal/app/procstats/ProcessStats;->mInternalAllPollPssCount:J

    invoke-virtual {v1, v9, v10}, Landroid/os/Parcel;->writeLong(J)V

    .line 808
    iget-wide v9, v0, Lcom/android/internal/app/procstats/ProcessStats;->mInternalAllPollPssTime:J

    invoke-virtual {v1, v9, v10}, Landroid/os/Parcel;->writeLong(J)V

    .line 809
    iget-wide v9, v0, Lcom/android/internal/app/procstats/ProcessStats;->mExternalPssCount:J

    invoke-virtual {v1, v9, v10}, Landroid/os/Parcel;->writeLong(J)V

    .line 810
    iget-wide v9, v0, Lcom/android/internal/app/procstats/ProcessStats;->mExternalPssTime:J

    invoke-virtual {v1, v9, v10}, Landroid/os/Parcel;->writeLong(J)V

    .line 811
    iget-wide v9, v0, Lcom/android/internal/app/procstats/ProcessStats;->mExternalSlowPssCount:J

    invoke-virtual {v1, v9, v10}, Landroid/os/Parcel;->writeLong(J)V

    .line 812
    iget-wide v9, v0, Lcom/android/internal/app/procstats/ProcessStats;->mExternalSlowPssTime:J

    invoke-virtual {v1, v9, v10}, Landroid/os/Parcel;->writeLong(J)V

    .line 813
    iget-object v6, v0, Lcom/android/internal/app/procstats/ProcessStats;->mRuntime:Ljava/lang/String;

    invoke-virtual {v1, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 814
    iget-boolean v6, v0, Lcom/android/internal/app/procstats/ProcessStats;->mHasSwappedOutPss:Z

    invoke-virtual {v1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 815
    iget v6, v0, Lcom/android/internal/app/procstats/ProcessStats;->mFlags:I

    invoke-virtual {v1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 817
    iget-object v6, v0, Lcom/android/internal/app/procstats/ProcessStats;->mTableData:Lcom/android/internal/app/procstats/SparseMappingTable;

    invoke-virtual {v6, v1}, Lcom/android/internal/app/procstats/SparseMappingTable;->writeToParcel(Landroid/os/Parcel;)V

    .line 819
    iget v6, v0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactor:I

    const/4 v9, -0x1

    if-eq v6, v9, :cond_8

    .line 820
    iget-object v6, v0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactorDurations:[J

    iget v9, v0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactor:I

    aget-wide v10, v6, v9

    iget-wide v12, v0, Lcom/android/internal/app/procstats/ProcessStats;->mStartTime:J

    sub-long v12, v2, v12

    add-long/2addr v10, v12

    aput-wide v10, v6, v9

    .line 821
    iput-wide v2, v0, Lcom/android/internal/app/procstats/ProcessStats;->mStartTime:J

    .line 823
    :cond_8
    iget-object v6, v0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactorDurations:[J

    iget-object v9, v0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactorDurations:[J

    array-length v9, v9

    invoke-direct {v0, v1, v6, v9}, Lcom/android/internal/app/procstats/ProcessStats;->writeCompactedLongArray(Landroid/os/Parcel;[JI)V

    .line 825
    iget-object v6, v0, Lcom/android/internal/app/procstats/ProcessStats;->mSysMemUsage:Lcom/android/internal/app/procstats/SysMemUsageTable;

    invoke-virtual {v6, v1}, Lcom/android/internal/app/procstats/SysMemUsageTable;->writeToParcel(Landroid/os/Parcel;)V

    .line 827
    invoke-virtual {v1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 828
    const/4 v6, 0x0

    .local v6, "ip":I
    :goto_7
    if-ge v6, v5, :cond_a

    .line 829
    invoke-virtual {v4, v6}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-direct {v0, v1, v9}, Lcom/android/internal/app/procstats/ProcessStats;->writeCommonString(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 830
    invoke-virtual {v4, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/SparseArray;

    .line 831
    .local v9, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessState;>;"
    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v10

    .line 832
    .local v10, "NUID":I
    invoke-virtual {v1, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 833
    const/4 v11, 0x0

    .local v11, "iu":I
    :goto_8
    if-ge v11, v10, :cond_9

    .line 834
    invoke-virtual {v9, v11}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v12

    invoke-virtual {v1, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 835
    invoke-virtual {v9, v11}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/app/procstats/ProcessState;

    .line 836
    .local v12, "proc":Lcom/android/internal/app/procstats/ProcessState;
    invoke-virtual {v12}, Lcom/android/internal/app/procstats/ProcessState;->getPackage()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v0, v1, v13}, Lcom/android/internal/app/procstats/ProcessStats;->writeCommonString(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 837
    invoke-virtual {v12}, Lcom/android/internal/app/procstats/ProcessState;->getVersion()J

    move-result-wide v13

    invoke-virtual {v1, v13, v14}, Landroid/os/Parcel;->writeLong(J)V

    .line 838
    invoke-virtual {v12, v1, v2, v3}, Lcom/android/internal/app/procstats/ProcessState;->writeToParcel(Landroid/os/Parcel;J)V

    .line 833
    .end local v12    # "proc":Lcom/android/internal/app/procstats/ProcessState;
    add-int/lit8 v11, v11, 0x1

    goto :goto_8

    .line 828
    .end local v9    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessState;>;"
    .end local v10    # "NUID":I
    .end local v11    # "iu":I
    :cond_9
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    .line 841
    .end local v6    # "ip":I
    :cond_a
    invoke-virtual {v1, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 842
    const/4 v6, 0x0

    .restart local v6    # "ip":I
    :goto_9
    if-ge v6, v8, :cond_10

    .line 843
    invoke-virtual {v7, v6}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-direct {v0, v1, v9}, Lcom/android/internal/app/procstats/ProcessStats;->writeCommonString(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 844
    invoke-virtual {v7, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/SparseArray;

    .line 845
    .local v9, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;"
    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v10

    .line 846
    .restart local v10    # "NUID":I
    invoke-virtual {v1, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 847
    const/4 v11, 0x0

    .restart local v11    # "iu":I
    :goto_a
    if-ge v11, v10, :cond_f

    .line 848
    invoke-virtual {v9, v11}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v12

    invoke-virtual {v1, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 849
    invoke-virtual {v9, v11}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/util/LongSparseArray;

    .line 850
    .local v12, "vpkgs":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;"
    invoke-virtual {v12}, Landroid/util/LongSparseArray;->size()I

    move-result v13

    .line 851
    .local v13, "NVERS":I
    invoke-virtual {v1, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 852
    const/4 v14, 0x0

    .local v14, "iv":I
    :goto_b
    if-ge v14, v13, :cond_e

    .line 853
    move-object/from16 v22, v4

    move/from16 v23, v5

    invoke-virtual {v12, v14}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v4

    .end local v4    # "procMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessState;>;>;"
    .end local v5    # "NPROC":I
    .local v22, "procMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessState;>;>;"
    .local v23, "NPROC":I
    invoke-virtual {v1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 854
    invoke-virtual {v12, v14}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    .line 855
    .local v4, "pkgState":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    iget-object v5, v4, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    .line 856
    .local v5, "NPROCS":I
    invoke-virtual {v1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 857
    const/4 v15, 0x0

    .local v15, "iproc":I
    :goto_c
    if-ge v15, v5, :cond_c

    .line 858
    move/from16 v24, v5

    iget-object v5, v4, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    .end local v5    # "NPROCS":I
    .local v24, "NPROCS":I
    invoke-virtual {v5, v15}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {v0, v1, v5}, Lcom/android/internal/app/procstats/ProcessStats;->writeCommonString(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 859
    iget-object v5, v4, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v5, v15}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/app/procstats/ProcessState;

    .line 860
    .local v5, "proc":Lcom/android/internal/app/procstats/ProcessState;
    move-object/from16 v25, v7

    invoke-virtual {v5}, Lcom/android/internal/app/procstats/ProcessState;->getCommonProcess()Lcom/android/internal/app/procstats/ProcessState;

    move-result-object v7

    .end local v7    # "pkgMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;>;"
    .local v25, "pkgMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;>;"
    if-ne v7, v5, :cond_b

    .line 862
    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_d

    .line 865
    :cond_b
    const/4 v7, 0x0

    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 866
    invoke-virtual {v5, v1, v2, v3}, Lcom/android/internal/app/procstats/ProcessState;->writeToParcel(Landroid/os/Parcel;J)V

    .line 857
    .end local v5    # "proc":Lcom/android/internal/app/procstats/ProcessState;
    :goto_d
    add-int/lit8 v15, v15, 0x1

    move/from16 v5, v24

    move-object/from16 v7, v25

    goto :goto_c

    .line 869
    .end local v15    # "iproc":I
    .end local v24    # "NPROCS":I
    .end local v25    # "pkgMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;>;"
    .local v5, "NPROCS":I
    .restart local v7    # "pkgMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;>;"
    :cond_c
    move/from16 v24, v5

    move-object/from16 v25, v7

    .end local v5    # "NPROCS":I
    .end local v7    # "pkgMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;>;"
    .restart local v24    # "NPROCS":I
    .restart local v25    # "pkgMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;>;"
    iget-object v5, v4, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    .line 870
    .local v5, "NSRVS":I
    invoke-virtual {v1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 871
    const/4 v7, 0x0

    .local v7, "isvc":I
    :goto_e
    if-ge v7, v5, :cond_d

    .line 872
    iget-object v15, v4, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v15, v7}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-virtual {v1, v15}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 873
    iget-object v15, v4, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v15, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/internal/app/procstats/ServiceState;

    .line 874
    .local v15, "svc":Lcom/android/internal/app/procstats/ServiceState;
    move-object/from16 v27, v4

    invoke-virtual {v15}, Lcom/android/internal/app/procstats/ServiceState;->getProcessName()Ljava/lang/String;

    move-result-object v4

    .end local v4    # "pkgState":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    .local v27, "pkgState":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    invoke-direct {v0, v1, v4}, Lcom/android/internal/app/procstats/ProcessStats;->writeCommonString(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 875
    invoke-virtual {v15, v1, v2, v3}, Lcom/android/internal/app/procstats/ServiceState;->writeToParcel(Landroid/os/Parcel;J)V

    .line 871
    .end local v15    # "svc":Lcom/android/internal/app/procstats/ServiceState;
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v4, v27

    goto :goto_e

    .line 852
    .end local v5    # "NSRVS":I
    .end local v7    # "isvc":I
    .end local v24    # "NPROCS":I
    .end local v27    # "pkgState":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    :cond_d
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v4, v22

    move/from16 v5, v23

    move-object/from16 v7, v25

    goto/16 :goto_b

    .line 847
    .end local v12    # "vpkgs":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;"
    .end local v13    # "NVERS":I
    .end local v14    # "iv":I
    .end local v22    # "procMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessState;>;>;"
    .end local v23    # "NPROC":I
    .end local v25    # "pkgMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;>;"
    .local v4, "procMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessState;>;>;"
    .local v5, "NPROC":I
    .local v7, "pkgMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;>;"
    :cond_e
    move-object/from16 v22, v4

    move/from16 v23, v5

    move-object/from16 v25, v7

    .end local v4    # "procMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessState;>;>;"
    .end local v5    # "NPROC":I
    .end local v7    # "pkgMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;>;"
    .restart local v22    # "procMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessState;>;>;"
    .restart local v23    # "NPROC":I
    .restart local v25    # "pkgMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;>;"
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_a

    .line 842
    .end local v9    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;"
    .end local v10    # "NUID":I
    .end local v11    # "iu":I
    .end local v22    # "procMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessState;>;>;"
    .end local v23    # "NPROC":I
    .end local v25    # "pkgMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;>;"
    .restart local v4    # "procMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessState;>;>;"
    .restart local v5    # "NPROC":I
    .restart local v7    # "pkgMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;>;"
    :cond_f
    move-object/from16 v22, v4

    move/from16 v23, v5

    move-object/from16 v25, v7

    .end local v4    # "procMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessState;>;>;"
    .end local v5    # "NPROC":I
    .end local v7    # "pkgMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;>;"
    .restart local v22    # "procMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessState;>;>;"
    .restart local v23    # "NPROC":I
    .restart local v25    # "pkgMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;>;"
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_9

    .line 882
    .end local v6    # "ip":I
    .end local v22    # "procMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessState;>;>;"
    .end local v23    # "NPROC":I
    .end local v25    # "pkgMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;>;"
    .restart local v4    # "procMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessState;>;>;"
    .restart local v5    # "NPROC":I
    .restart local v7    # "pkgMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;>;"
    :cond_10
    move-object/from16 v22, v4

    move/from16 v23, v5

    move-object/from16 v25, v7

    .end local v4    # "procMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessState;>;>;"
    .end local v5    # "NPROC":I
    .end local v7    # "pkgMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;>;"
    .restart local v22    # "procMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessState;>;>;"
    .restart local v23    # "NPROC":I
    .restart local v25    # "pkgMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;>;"
    iget-object v4, v0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeLabels:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 883
    .local v4, "NPAGETYPES":I
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 884
    const/16 v26, 0x0

    .local v26, "i":I
    :goto_f
    move/from16 v5, v26

    .end local v26    # "i":I
    .local v5, "i":I
    if-ge v5, v4, :cond_11

    .line 885
    iget-object v6, v0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeZones:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 886
    iget-object v6, v0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeLabels:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v1, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 887
    iget-object v6, v0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeSizes:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [I

    invoke-virtual {v1, v6}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 884
    add-int/lit8 v26, v5, 0x1

    .end local v5    # "i":I
    .restart local v26    # "i":I
    goto :goto_f

    .line 890
    .end local v26    # "i":I
    :cond_11
    const/4 v5, 0x0

    iput-object v5, v0, Lcom/android/internal/app/procstats/ProcessStats;->mCommonStringToIndex:Landroid/util/ArrayMap;

    .line 891
    return-void
.end method

.method public writeToProto(Landroid/util/proto/ProtoOutputStream;JJ)V
    .locals 22
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J
    .param p4, "now"    # J

    move-object/from16 v0, p0

    move-object/from16 v9, p1

    .line 1809
    iget-object v1, v0, Lcom/android/internal/app/procstats/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    .line 1810
    invoke-virtual {v1}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v10

    .line 1812
    .local v10, "pkgMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;>;"
    invoke-virtual/range {p1 .. p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v11

    .line 1813
    .local v11, "token":J
    iget-wide v1, v0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartRealtime:J

    const-wide v3, 0x10300000001L

    invoke-virtual {v9, v3, v4, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 1814
    nop

    .line 1815
    iget-boolean v1, v0, Lcom/android/internal/app/procstats/ProcessStats;->mRunning:Z

    if-eqz v1, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    goto :goto_0

    :cond_0
    iget-wide v1, v0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndRealtime:J

    .line 1814
    :goto_0
    const-wide v3, 0x10300000002L

    invoke-virtual {v9, v3, v4, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 1816
    const-wide v1, 0x10300000003L

    iget-wide v3, v0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartUptime:J

    invoke-virtual {v9, v1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 1817
    const-wide v1, 0x10300000004L

    iget-wide v3, v0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndUptime:J

    invoke-virtual {v9, v1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 1818
    const-wide v1, 0x10900000005L

    iget-object v3, v0, Lcom/android/internal/app/procstats/ProcessStats;->mRuntime:Ljava/lang/String;

    invoke-virtual {v9, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1819
    const-wide v1, 0x10800000006L

    iget-boolean v3, v0, Lcom/android/internal/app/procstats/ProcessStats;->mHasSwappedOutPss:Z

    invoke-virtual {v9, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1820
    const/4 v1, 0x1

    .line 1821
    .local v1, "partial":Z
    iget v2, v0, Lcom/android/internal/app/procstats/ProcessStats;->mFlags:I

    const/4 v3, 0x2

    and-int/2addr v2, v3

    const-wide v4, 0x20e00000007L

    if-eqz v2, :cond_1

    .line 1822
    const/4 v2, 0x3

    invoke-virtual {v9, v4, v5, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1823
    const/4 v1, 0x0

    .line 1825
    :cond_1
    iget v2, v0, Lcom/android/internal/app/procstats/ProcessStats;->mFlags:I

    const/4 v6, 0x4

    and-int/2addr v2, v6

    if-eqz v2, :cond_2

    .line 1826
    invoke-virtual {v9, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1827
    const/4 v1, 0x0

    .line 1829
    :cond_2
    iget v2, v0, Lcom/android/internal/app/procstats/ProcessStats;->mFlags:I

    const/4 v6, 0x1

    and-int/2addr v2, v6

    if-eqz v2, :cond_3

    .line 1830
    invoke-virtual {v9, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1831
    const/4 v1, 0x0

    .line 1833
    .end local v1    # "partial":Z
    .local v13, "partial":Z
    :cond_3
    move v13, v1

    if-eqz v13, :cond_4

    .line 1834
    invoke-virtual {v9, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1837
    :cond_4
    iget-object v1, v0, Lcom/android/internal/app/procstats/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v1}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v14

    .line 1838
    .local v14, "procMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessState;>;>;"
    const/4 v15, 0x0

    move v1, v15

    .local v1, "ip":I
    :goto_1
    move v7, v1

    .end local v1    # "ip":I
    .local v7, "ip":I
    invoke-virtual {v14}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v7, v1, :cond_6

    .line 1839
    invoke-virtual {v14, v7}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v16, v1

    check-cast v16, Ljava/lang/String;

    .line 1840
    .local v16, "procName":Ljava/lang/String;
    invoke-virtual {v14, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/util/SparseArray;

    .line 1841
    .local v8, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessState;>;"
    move v1, v15

    .local v1, "iu":I
    :goto_2
    move v6, v1

    .end local v1    # "iu":I
    .local v6, "iu":I
    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v6, v1, :cond_5

    .line 1842
    invoke-virtual {v8, v6}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v17

    .line 1843
    .local v17, "uid":I
    invoke-virtual {v8, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v18, v1

    check-cast v18, Lcom/android/internal/app/procstats/ProcessState;

    .line 1844
    .local v18, "procState":Lcom/android/internal/app/procstats/ProcessState;
    const-wide v3, 0x20b00000008L

    move-object/from16 v1, v18

    move-object v2, v9

    move-object/from16 v5, v16

    move/from16 v19, v6

    move/from16 v6, v17

    .end local v6    # "iu":I
    .local v19, "iu":I
    move/from16 v20, v7

    move-object/from16 v21, v8

    move-wide/from16 v7, p4

    .end local v7    # "ip":I
    .end local v8    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessState;>;"
    .local v20, "ip":I
    .local v21, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessState;>;"
    invoke-virtual/range {v1 .. v8}, Lcom/android/internal/app/procstats/ProcessState;->writeToProto(Landroid/util/proto/ProtoOutputStream;JLjava/lang/String;IJ)V

    .line 1841
    .end local v17    # "uid":I
    .end local v18    # "procState":Lcom/android/internal/app/procstats/ProcessState;
    add-int/lit8 v1, v19, 0x1

    .end local v19    # "iu":I
    .restart local v1    # "iu":I
    move/from16 v7, v20

    move-object/from16 v8, v21

    goto :goto_2

    .line 1838
    .end local v1    # "iu":I
    .end local v16    # "procName":Ljava/lang/String;
    .end local v20    # "ip":I
    .end local v21    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessState;>;"
    .restart local v7    # "ip":I
    :cond_5
    move/from16 v20, v7

    .end local v7    # "ip":I
    .restart local v20    # "ip":I
    add-int/lit8 v1, v20, 0x1

    .end local v20    # "ip":I
    .local v1, "ip":I
    goto :goto_1

    .line 1847
    .end local v1    # "ip":I
    :cond_6
    invoke-virtual {v9, v11, v12}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1848
    return-void
.end method
