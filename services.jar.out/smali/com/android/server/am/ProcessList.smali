.class public final Lcom/android/server/am/ProcessList;
.super Ljava/lang/Object;
.source "ProcessList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/ProcessList$ProcStateMemTracker;
    }
.end annotation


# static fields
.field static final BACKUP_APP_ADJ:I = 0x12c

.field static final CACHED_APP_MAX_ADJ:I = 0x38a

.field static final CACHED_APP_MIN_ADJ:I = 0x384

.field static final FOREGROUND_APP_ADJ:I = 0x0

.field static final HEAVY_WEIGHT_APP_ADJ:I = 0x190

.field static final HOME_APP_ADJ:I = 0x258

.field static final INVALID_ADJ:I = -0x2710

.field static final LMK_PROCPRIO:B = 0x1t

.field static final LMK_PROCPURGE:B = 0x3t

.field static final LMK_PROCREMOVE:B = 0x2t

.field static final LMK_TARGET:B = 0x0t

.field static final MAX_EMPTY_TIME:J = 0x1b7740L

.field static final MIN_CACHED_APPS:I = 0x2

.field static final MIN_CRASH_INTERVAL:I = 0xea60

.field static final NATIVE_ADJ:I = -0x3e8

.field static final PAGE_SIZE:I = 0x1000

.field static final PERCEPTIBLE_APP_ADJ:I = 0xc8

.field static final PERCEPTIBLE_RECENT_FOREGROUND_APP_ADJ:I = 0x32

.field static final PERSISTENT_PROC_ADJ:I = -0x320

.field static final PERSISTENT_SERVICE_ADJ:I = -0x2bc

.field static final PREVIOUS_APP_ADJ:I = 0x2bc

.field public static final PROC_MEM_CACHED:I = 0x4

.field public static final PROC_MEM_IMPORTANT:I = 0x2

.field public static final PROC_MEM_NUM:I = 0x5

.field public static final PROC_MEM_PERSISTENT:I = 0x0

.field public static final PROC_MEM_SERVICE:I = 0x3

.field public static final PROC_MEM_TOP:I = 0x1

.field public static final PSS_ALL_INTERVAL:I = 0x124f80

.field private static final PSS_FIRST_ASLEEP_BACKGROUND_INTERVAL:I = 0x7530

.field private static final PSS_FIRST_ASLEEP_CACHED_INTERVAL:I = 0xea60

.field private static final PSS_FIRST_ASLEEP_PERSISTENT_INTERVAL:I = 0xea60

.field private static final PSS_FIRST_ASLEEP_TOP_INTERVAL:I = 0x4e20

.field private static final PSS_FIRST_BACKGROUND_INTERVAL:I = 0x4e20

.field private static final PSS_FIRST_CACHED_INTERVAL:I = 0x4e20

.field private static final PSS_FIRST_PERSISTENT_INTERVAL:I = 0x7530

.field private static final PSS_FIRST_TOP_INTERVAL:I = 0x2710

.field public static final PSS_MAX_INTERVAL:I = 0x36ee80

.field public static final PSS_MIN_TIME_FROM_STATE_CHANGE:I = 0x3a98

.field public static final PSS_SAFE_TIME_FROM_STATE_CHANGE:I = 0x3e8

.field private static final PSS_SAME_CACHED_INTERVAL:I = 0x927c0

.field private static final PSS_SAME_IMPORTANT_INTERVAL:I = 0x927c0

.field private static final PSS_SAME_PERSISTENT_INTERVAL:I = 0x927c0

.field private static final PSS_SAME_SERVICE_INTERVAL:I = 0x493e0

.field private static final PSS_SAME_TOP_INTERVAL:I = 0xea60

.field private static final PSS_TEST_FIRST_BACKGROUND_INTERVAL:I = 0x1388

.field private static final PSS_TEST_FIRST_TOP_INTERVAL:I = 0xbb8

.field public static final PSS_TEST_MIN_TIME_FROM_STATE_CHANGE:I = 0x2710

.field private static final PSS_TEST_SAME_BACKGROUND_INTERVAL:I = 0x3a98

.field private static final PSS_TEST_SAME_IMPORTANT_INTERVAL:I = 0x2710

.field static final SCHED_GROUP_BACKGROUND:I = 0x0

.field static final SCHED_GROUP_BIG_CLUSTER:I = 0x8

.field static final SCHED_GROUP_DEFAULT:I = 0x2

.field static final SCHED_GROUP_RESTRICTED:I = 0x1

.field static final SCHED_GROUP_TOP_APP:I = 0x3

.field static final SCHED_GROUP_TOP_APP_BOUND:I = 0x4

.field static final SERVICE_ADJ:I = 0x1f4

.field static final SERVICE_B_ADJ:I = 0x320

.field static final SYSTEM_ADJ:I = -0x384

.field private static final TAG:Ljava/lang/String; = "ActivityManager"

.field static final TRIM_CRITICAL_THRESHOLD:I = 0x3

.field static final TRIM_LOW_THRESHOLD:I = 0x5

.field static final UNKNOWN_ADJ:I = 0x3e9

.field static final VISIBLE_APP_ADJ:I = 0x64

.field static final VISIBLE_APP_LAYER_MAX:I = 0x63

.field private static final sFirstAsleepPssTimes:[J

.field private static final sFirstAwakePssTimes:[J

.field private static sLmkdOutputStream:Ljava/io/OutputStream;

.field private static sLmkdSocket:Landroid/net/LocalSocket;

.field private static final sProcStateToProcMem:[I

.field private static final sSameAsleepPssTimes:[J

.field private static final sSameAwakePssTimes:[J

.field private static final sTestFirstPssTimes:[J

.field private static final sTestSamePssTimes:[J


# instance fields
.field private mCachedRestoreLevel:J

.field private mHaveDisplaySize:Z

.field private final mOomAdj:[I

.field private final mOomMinFree:[I

.field private final mOomMinFreeHigh:[I

.field private final mOomMinFreeLow:[I

.field private final mTotalMemMb:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 598
    const/16 v0, 0x13

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/am/ProcessList;->sProcStateToProcMem:[I

    .line 620
    const/4 v0, 0x5

    new-array v1, v0, [J

    fill-array-data v1, :array_1

    sput-object v1, Lcom/android/server/am/ProcessList;->sFirstAwakePssTimes:[J

    .line 628
    new-array v1, v0, [J

    fill-array-data v1, :array_2

    sput-object v1, Lcom/android/server/am/ProcessList;->sSameAwakePssTimes:[J

    .line 636
    new-array v1, v0, [J

    fill-array-data v1, :array_3

    sput-object v1, Lcom/android/server/am/ProcessList;->sFirstAsleepPssTimes:[J

    .line 644
    new-array v1, v0, [J

    fill-array-data v1, :array_4

    sput-object v1, Lcom/android/server/am/ProcessList;->sSameAsleepPssTimes:[J

    .line 652
    new-array v1, v0, [J

    fill-array-data v1, :array_5

    sput-object v1, Lcom/android/server/am/ProcessList;->sTestFirstPssTimes:[J

    .line 660
    new-array v0, v0, [J

    fill-array-data v0, :array_6

    sput-object v0, Lcom/android/server/am/ProcessList;->sTestSamePssTimes:[J

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
        0x2
        0x2
        0x2
        0x3
        0x4
        0x1
        0x2
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
    .end array-data

    :array_1
    .array-data 8
        0x7530
        0x2710
        0x4e20
        0x4e20
        0x4e20
    .end array-data

    :array_2
    .array-data 8
        0x927c0
        0xea60
        0x927c0
        0x493e0
        0x927c0
    .end array-data

    :array_3
    .array-data 8
        0xea60
        0x4e20
        0x7530
        0x7530
        0xea60
    .end array-data

    :array_4
    .array-data 8
        0x927c0
        0xea60
        0x927c0
        0x493e0
        0x927c0
    .end array-data

    :array_5
    .array-data 8
        0xbb8
        0xbb8
        0x1388
        0x1388
        0x1388
    .end array-data

    :array_6
    .array-data 8
        0x3a98
        0x2710
        0x2710
        0x3a98
        0x3a98
    .end array-data
.end method

.method constructor <init>()V
    .locals 5

    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 182
    const/4 v0, 0x6

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    .line 188
    new-array v1, v0, [I

    fill-array-data v1, :array_1

    iput-object v1, p0, Lcom/android/server/am/ProcessList;->mOomMinFreeLow:[I

    .line 194
    new-array v0, v0, [I

    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/android/server/am/ProcessList;->mOomMinFreeHigh:[I

    .line 199
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    .line 211
    new-instance v0, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {v0}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    .line 212
    .local v0, "minfo":Lcom/android/internal/util/MemInfoReader;
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    .line 213
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getTotalSize()J

    move-result-wide v1

    const-wide/32 v3, 0x100000

    div-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/server/am/ProcessList;->mTotalMemMb:J

    .line 214
    const/4 v1, 0x0

    invoke-direct {p0, v1, v1, v1}, Lcom/android/server/am/ProcessList;->updateOomLevels(IIZ)V

    .line 215
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x64
        0xc8
        0x12c
        0x384
        0x38a
    .end array-data

    :array_1
    .array-data 4
        0x3000
        0x4800
        0x6000
        0x9000
        0xa800
        0xc000
    .end array-data

    :array_2
    .array-data 4
        0x12000
        0x16800
        0x1b000
        0x1f800
        0x24000
        0x2d000
    .end array-data
.end method

.method public static abortNextPssTime(Lcom/android/server/am/ProcessList$ProcStateMemTracker;)V
    .locals 1
    .param p0, "tracker"    # Lcom/android/server/am/ProcessList$ProcStateMemTracker;

    .line 737
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingMemState:I

    .line 738
    return-void
.end method

.method public static appendRamKb(Ljava/lang/StringBuilder;J)V
    .locals 4
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "ramKb"    # J

    .line 516
    const/4 v0, 0x0

    .local v0, "j":I
    const/16 v1, 0xa

    .local v1, "fact":I
    :goto_0
    const/4 v2, 0x6

    if-ge v0, v2, :cond_1

    .line 517
    int-to-long v2, v1

    cmp-long v2, p1, v2

    if-gez v2, :cond_0

    .line 518
    const/16 v2, 0x20

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 516
    :cond_0
    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v1, v1, 0xa

    goto :goto_0

    .line 521
    .end local v0    # "j":I
    .end local v1    # "fact":I
    :cond_1
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 522
    return-void
.end method

.method private static buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;
    .locals 2
    .param p0, "prefix"    # Ljava/lang/String;
    .param p1, "space"    # Ljava/lang/String;
    .param p2, "val"    # I
    .param p3, "base"    # I

    .line 355
    if-ne p2, p3, :cond_1

    .line 356
    if-nez p1, :cond_0

    return-object p0

    .line 357
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 359
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-int v1, p2, p3

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static commitNextPssTime(Lcom/android/server/am/ProcessList$ProcStateMemTracker;)V
    .locals 3
    .param p0, "tracker"    # Lcom/android/server/am/ProcessList$ProcStateMemTracker;

    .line 728
    iget v0, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingMemState:I

    if-ltz v0, :cond_0

    .line 729
    iget-object v0, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mHighestMem:[I

    iget v1, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingMemState:I

    iget v2, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingHighestMemState:I

    aput v2, v0, v1

    .line 730
    iget-object v0, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mScalingFactor:[F

    iget v1, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingMemState:I

    iget v2, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingScalingFactor:F

    aput v2, v0, v1

    .line 731
    iget v0, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingHighestMemState:I

    iput v0, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mTotalHighestMem:I

    .line 732
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingMemState:I

    .line 734
    :cond_0
    return-void
.end method

.method public static computeEmptyProcessLimit(I)I
    .locals 1
    .param p0, "totalProcessLimit"    # I

    .line 351
    div-int/lit8 v0, p0, 0x2

    return v0
.end method

.method public static computeNextPssTime(ILcom/android/server/am/ProcessList$ProcStateMemTracker;ZZJ)J
    .locals 8
    .param p0, "procState"    # I
    .param p1, "tracker"    # Lcom/android/server/am/ProcessList$ProcStateMemTracker;
    .param p2, "test"    # Z
    .param p3, "sleeping"    # Z
    .param p4, "now"    # J

    .line 744
    sget-object v0, Lcom/android/server/am/ProcessList;->sProcStateToProcMem:[I

    aget v0, v0, p0

    .line 745
    .local v0, "memState":I
    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz p1, :cond_3

    .line 746
    iget v2, p1, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mTotalHighestMem:I

    if-ge v0, v2, :cond_0

    .line 747
    move v2, v0

    goto :goto_0

    :cond_0
    iget v2, p1, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mTotalHighestMem:I

    .line 748
    .local v2, "highestMemState":I
    :goto_0
    iget-object v3, p1, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mHighestMem:[I

    aget v3, v3, v0

    if-ge v2, v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    .line 749
    .local v3, "first":Z
    :goto_1
    iput v0, p1, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingMemState:I

    .line 750
    iput v2, p1, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingHighestMemState:I

    .line 751
    if-eqz v3, :cond_2

    .line 752
    move v4, v1

    .local v4, "scalingFactor":F
    iput v1, p1, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingScalingFactor:F

    goto :goto_2

    .line 754
    .end local v4    # "scalingFactor":F
    :cond_2
    iget-object v1, p1, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mScalingFactor:[F

    aget v1, v1, v0

    .line 755
    .local v1, "scalingFactor":F
    const/high16 v4, 0x3fc00000    # 1.5f

    mul-float/2addr v4, v1

    iput v4, p1, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingScalingFactor:F

    .line 757
    .end local v2    # "highestMemState":I
    :goto_2
    goto :goto_3

    .line 758
    .end local v1    # "scalingFactor":F
    .end local v3    # "first":Z
    :cond_3
    const/4 v3, 0x1

    .line 759
    .restart local v3    # "first":Z
    nop

    .line 761
    .restart local v1    # "scalingFactor":F
    :goto_3
    if-eqz p2, :cond_5

    .line 762
    if-eqz v3, :cond_4

    .line 763
    sget-object v2, Lcom/android/server/am/ProcessList;->sTestFirstPssTimes:[J

    goto :goto_4

    .line 764
    :cond_4
    sget-object v2, Lcom/android/server/am/ProcessList;->sTestSamePssTimes:[J

    goto :goto_4

    .line 765
    :cond_5
    if-eqz v3, :cond_7

    .line 766
    if-eqz p3, :cond_6

    sget-object v2, Lcom/android/server/am/ProcessList;->sFirstAsleepPssTimes:[J

    goto :goto_4

    :cond_6
    sget-object v2, Lcom/android/server/am/ProcessList;->sFirstAwakePssTimes:[J

    goto :goto_4

    .line 767
    :cond_7
    if-eqz p3, :cond_8

    sget-object v2, Lcom/android/server/am/ProcessList;->sSameAsleepPssTimes:[J

    goto :goto_4

    :cond_8
    sget-object v2, Lcom/android/server/am/ProcessList;->sSameAwakePssTimes:[J

    .line 768
    .local v2, "table":[J
    :goto_4
    aget-wide v4, v2, v0

    long-to-float v4, v4

    mul-float/2addr v4, v1

    float-to-long v4, v4

    .line 769
    .local v4, "delay":J
    const-wide/32 v6, 0x36ee80

    cmp-long v6, v4, v6

    if-lez v6, :cond_9

    .line 770
    const-wide/32 v4, 0x36ee80

    .line 772
    :cond_9
    add-long v6, p4, v4

    return-wide v6
.end method

.method public static makeOomAdjString(I)Ljava/lang/String;
    .locals 3
    .param p0, "setAdj"    # I

    .line 363
    const/16 v0, 0x384

    if-lt p0, v0, :cond_0

    .line 364
    const-string v1, "cch"

    const-string v2, "  "

    invoke-static {v1, v2, p0, v0}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 365
    :cond_0
    const/16 v0, 0x320

    const/4 v1, 0x0

    if-lt p0, v0, :cond_1

    .line 366
    const-string/jumbo v2, "svcb "

    invoke-static {v2, v1, p0, v0}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 367
    :cond_1
    const/16 v0, 0x2bc

    if-lt p0, v0, :cond_2

    .line 368
    const-string/jumbo v2, "prev "

    invoke-static {v2, v1, p0, v0}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 369
    :cond_2
    const/16 v0, 0x258

    if-lt p0, v0, :cond_3

    .line 370
    const-string v2, "home "

    invoke-static {v2, v1, p0, v0}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 371
    :cond_3
    const/16 v0, 0x1f4

    if-lt p0, v0, :cond_4

    .line 372
    const-string/jumbo v2, "svc  "

    invoke-static {v2, v1, p0, v0}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 373
    :cond_4
    const/16 v0, 0x190

    if-lt p0, v0, :cond_5

    .line 374
    const-string v2, "hvy  "

    invoke-static {v2, v1, p0, v0}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 375
    :cond_5
    const/16 v0, 0x12c

    if-lt p0, v0, :cond_6

    .line 376
    const-string v2, "bkup "

    invoke-static {v2, v1, p0, v0}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 377
    :cond_6
    const/16 v0, 0xc8

    if-lt p0, v0, :cond_7

    .line 378
    const-string/jumbo v2, "prcp "

    invoke-static {v2, v1, p0, v0}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 379
    :cond_7
    const/16 v0, 0x64

    if-lt p0, v0, :cond_8

    .line 380
    const-string/jumbo v2, "vis  "

    invoke-static {v2, v1, p0, v0}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 381
    :cond_8
    if-ltz p0, :cond_9

    .line 382
    const-string v0, "fore "

    const/4 v2, 0x0

    invoke-static {v0, v1, p0, v2}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 383
    :cond_9
    const/16 v0, -0x2bc

    if-lt p0, v0, :cond_a

    .line 384
    const-string/jumbo v2, "psvc "

    invoke-static {v2, v1, p0, v0}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 385
    :cond_a
    const/16 v0, -0x320

    if-lt p0, v0, :cond_b

    .line 386
    const-string/jumbo v2, "pers "

    invoke-static {v2, v1, p0, v0}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 387
    :cond_b
    const/16 v0, -0x384

    if-lt p0, v0, :cond_c

    .line 388
    const-string/jumbo v2, "sys  "

    invoke-static {v2, v1, p0, v0}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 389
    :cond_c
    const/16 v0, -0x3e8

    if-lt p0, v0, :cond_d

    .line 390
    const-string/jumbo v2, "ntv  "

    invoke-static {v2, v1, p0, v0}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 392
    :cond_d
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static makeProcStateProtoEnum(I)I
    .locals 1
    .param p0, "curProcState"    # I

    .line 467
    packed-switch p0, :pswitch_data_0

    .line 511
    const/16 v0, 0x3e6

    return v0

    .line 507
    :pswitch_0
    const/16 v0, 0x3fb

    return v0

    .line 505
    :pswitch_1
    const/16 v0, 0x3fa

    return v0

    .line 503
    :pswitch_2
    const/16 v0, 0x3f9

    return v0

    .line 501
    :pswitch_3
    const/16 v0, 0x3f8

    return v0

    .line 499
    :pswitch_4
    const/16 v0, 0x3f7

    return v0

    .line 497
    :pswitch_5
    const/16 v0, 0x3f6

    return v0

    .line 495
    :pswitch_6
    const/16 v0, 0x3f5

    return v0

    .line 489
    :pswitch_7
    const/16 v0, 0x3f4

    return v0

    .line 479
    :pswitch_8
    const/16 v0, 0x3f3

    return v0

    .line 493
    :pswitch_9
    const/16 v0, 0x3f2

    return v0

    .line 491
    :pswitch_a
    const/16 v0, 0x3f1

    return v0

    .line 487
    :pswitch_b
    const/16 v0, 0x3f0

    return v0

    .line 485
    :pswitch_c
    const/16 v0, 0x3ef

    return v0

    .line 483
    :pswitch_d
    const/16 v0, 0x3ee

    return v0

    .line 481
    :pswitch_e
    const/16 v0, 0x3ed

    return v0

    .line 475
    :pswitch_f
    const/16 v0, 0x3ec

    return v0

    .line 477
    :pswitch_10
    const/16 v0, 0x3eb

    return v0

    .line 473
    :pswitch_11
    const/16 v0, 0x3ea

    return v0

    .line 471
    :pswitch_12
    const/16 v0, 0x3e9

    return v0

    .line 469
    :pswitch_13
    const/16 v0, 0x3e8

    return v0

    .line 509
    :pswitch_14
    const/16 v0, 0x3e7

    return v0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static makeProcStateString(I)Ljava/lang/String;
    .locals 1
    .param p0, "curProcState"    # I

    .line 398
    packed-switch p0, :pswitch_data_0

    .line 460
    const-string v0, "??"

    goto :goto_0

    .line 457
    :pswitch_0
    const-string v0, "NONE"

    .line 458
    .local v0, "procState":Ljava/lang/String;
    goto :goto_0

    .line 454
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_1
    const-string v0, "CEM "

    .line 455
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    .line 451
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_2
    const-string v0, "CRE "

    .line 452
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    .line 448
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_3
    const-string v0, "CACC"

    .line 449
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    .line 445
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_4
    const-string v0, "CAC "

    .line 446
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    .line 442
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_5
    const-string v0, "LAST"

    .line 443
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    .line 439
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_6
    const-string v0, "HOME"

    .line 440
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    .line 436
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_7
    const-string v0, "HVY "

    .line 437
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    .line 433
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_8
    const-string v0, "TPSL"

    .line 434
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    .line 430
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_9
    const-string v0, "RCVR"

    .line 431
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    .line 427
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_a
    const-string v0, "SVC "

    .line 428
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    .line 424
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_b
    const-string v0, "BKUP"

    .line 425
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    .line 421
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_c
    const-string v0, "TRNB"

    .line 422
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    .line 418
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_d
    const-string v0, "IMPB"

    .line 419
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    .line 415
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_e
    const-string v0, "IMPF"

    .line 416
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    .line 412
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_f
    const-string v0, "BFGS"

    .line 413
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    .line 409
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_10
    const-string v0, "FGS "

    .line 410
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    .line 406
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_11
    const-string v0, "TOP "

    .line 407
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    .line 403
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_12
    const-string v0, "PERU"

    .line 404
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    .line 400
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_13
    const-string v0, "PER "

    .line 401
    .restart local v0    # "procState":Ljava/lang/String;
    nop

    .line 460
    :goto_0
    nop

    .line 463
    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static minTimeFromStateChange(Z)J
    .locals 2
    .param p0, "test"    # Z

    .line 724
    if-eqz p0, :cond_0

    const-wide/16 v0, 0x2710

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x3a98

    :goto_0
    return-wide v0
.end method

.method private static openLmkdSocket()Z
    .locals 4

    .line 840
    :try_start_0
    new-instance v0, Landroid/net/LocalSocket;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/net/LocalSocket;-><init>(I)V

    sput-object v0, Lcom/android/server/am/ProcessList;->sLmkdSocket:Landroid/net/LocalSocket;

    .line 841
    sget-object v0, Lcom/android/server/am/ProcessList;->sLmkdSocket:Landroid/net/LocalSocket;

    new-instance v1, Landroid/net/LocalSocketAddress;

    const-string/jumbo v2, "lmkd"

    sget-object v3, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v1, v2, v3}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    invoke-virtual {v0, v1}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    .line 844
    sget-object v0, Lcom/android/server/am/ProcessList;->sLmkdSocket:Landroid/net/LocalSocket;

    invoke-virtual {v0}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/ProcessList;->sLmkdOutputStream:Ljava/io/OutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 849
    nop

    .line 851
    const/4 v0, 0x1

    return v0

    .line 845
    :catch_0
    move-exception v0

    .line 846
    .local v0, "ex":Ljava/io/IOException;
    const-string v1, "ActivityManager"

    const-string/jumbo v2, "lowmemorykiller daemon socket open failed"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    const/4 v1, 0x0

    sput-object v1, Lcom/android/server/am/ProcessList;->sLmkdSocket:Landroid/net/LocalSocket;

    .line 848
    const/4 v1, 0x0

    return v1
.end method

.method public static procStatesDifferForMem(II)Z
    .locals 2
    .param p0, "procState1"    # I
    .param p1, "procState2"    # I

    .line 720
    sget-object v0, Lcom/android/server/am/ProcessList;->sProcStateToProcMem:[I

    aget v0, v0, p0

    sget-object v1, Lcom/android/server/am/ProcessList;->sProcStateToProcMem:[I

    aget v1, v1, p1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static final remove(I)V
    .locals 2
    .param p0, "pid"    # I

    .line 829
    if-gtz p0, :cond_0

    .line 830
    return-void

    .line 832
    :cond_0
    const/16 v0, 0x8

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 833
    .local v0, "buf":Ljava/nio/ByteBuffer;
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 834
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 835
    invoke-static {v0}, Lcom/android/server/am/ProcessList;->writeLmkd(Ljava/nio/ByteBuffer;)V

    .line 836
    return-void
.end method

.method public static final setOomAdj(III)V
    .locals 9
    .param p0, "pid"    # I
    .param p1, "uid"    # I
    .param p2, "amt"    # I

    .line 804
    if-gtz p0, :cond_0

    .line 805
    return-void

    .line 807
    :cond_0
    const/16 v0, 0x3e9

    if-ne p2, v0, :cond_1

    .line 808
    return-void

    .line 810
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 811
    .local v0, "start":J
    const/16 v2, 0x10

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 812
    .local v2, "buf":Ljava/nio/ByteBuffer;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 813
    invoke-virtual {v2, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 814
    invoke-virtual {v2, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 815
    invoke-virtual {v2, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 816
    invoke-static {v2}, Lcom/android/server/am/ProcessList;->writeLmkd(Ljava/nio/ByteBuffer;)V

    .line 817
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 818
    .local v3, "now":J
    sub-long v5, v3, v0

    const-wide/16 v7, 0xfa

    cmp-long v5, v5, v7

    if-lez v5, :cond_2

    .line 819
    const-string v5, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SLOW OOM ADJ: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v7, v3, v0

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "ms for pid "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 822
    :cond_2
    return-void
.end method

.method private updateOomLevels(IIZ)V
    .locals 22
    .param p1, "displayWidth"    # I
    .param p2, "displayHeight"    # I
    .param p3, "write"    # Z

    move-object/from16 v0, p0

    .line 243
    iget-wide v3, v0, Lcom/android/server/am/ProcessList;->mTotalMemMb:J

    const-wide/16 v5, 0x15e

    sub-long/2addr v3, v5

    long-to-float v3, v3

    const/high16 v4, 0x43af0000    # 350.0f

    div-float/2addr v3, v4

    .line 245
    .local v3, "scaleMem":F
    iget-wide v4, v0, Lcom/android/server/am/ProcessList;->mTotalMemMb:J

    long-to-float v4, v4

    const/high16 v5, 0x44800000    # 1024.0f

    div-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    .line 248
    .local v4, "totalMemGb":I
    const v5, 0x5dc00

    .line 249
    .local v5, "minSize":I
    const v6, 0xfa000

    .line 250
    .local v6, "maxSize":I
    mul-int v7, p1, p2

    int-to-float v7, v7

    int-to-float v8, v5

    sub-float/2addr v7, v8

    sub-int v8, v6, v5

    int-to-float v8, v8

    div-float/2addr v7, v8

    .line 257
    .local v7, "scaleDisp":F
    cmpl-float v8, v3, v7

    if-lez v8, :cond_0

    move v8, v3

    goto :goto_0

    :cond_0
    move v8, v7

    .line 258
    .local v8, "scale":F
    :goto_0
    const/4 v9, 0x0

    cmpg-float v9, v8, v9

    if-gez v9, :cond_1

    const/4 v8, 0x0

    goto :goto_1

    .line 259
    :cond_1
    const/high16 v9, 0x3f800000    # 1.0f

    cmpl-float v9, v8, v9

    if-lez v9, :cond_2

    const/high16 v8, 0x3f800000    # 1.0f

    .line 260
    :cond_2
    :goto_1
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x10e005c

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    .line 262
    .local v9, "minfree_adj":I
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x10e005b

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v10

    .line 268
    .local v10, "minfree_abs":I
    sget-object v11, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    array-length v11, v11

    if-lez v11, :cond_3

    const/4 v11, 0x1

    goto :goto_2

    :cond_3
    const/4 v11, 0x0

    .line 270
    .local v11, "is64bit":Z
    :goto_2
    const/4 v14, 0x0

    .line 270
    .local v14, "i":I
    :goto_3
    iget-object v15, v0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    array-length v15, v15

    const/16 v16, 0x2

    if-ge v14, v15, :cond_8

    .line 271
    iget-object v15, v0, Lcom/android/server/am/ProcessList;->mOomMinFreeLow:[I

    aget v15, v15, v14

    .line 272
    .local v15, "low":I
    iget-object v12, v0, Lcom/android/server/am/ProcessList;->mOomMinFreeHigh:[I

    aget v12, v12, v14

    .line 273
    .local v12, "high":I
    if-eqz v11, :cond_5

    .line 275
    const/4 v13, 0x4

    if-ne v14, v13, :cond_4

    mul-int/lit8 v18, v12, 0x3

    div-int/lit8 v12, v18, 0x2

    goto :goto_4

    .line 276
    :cond_4
    const/4 v13, 0x5

    if-ne v14, v13, :cond_5

    mul-int/lit8 v13, v12, 0x7

    const/16 v16, 0x4

    div-int/lit8 v12, v13, 0x4

    .line 279
    :cond_5
    :goto_4
    iget-object v13, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    move/from16 v19, v3

    int-to-float v3, v15

    .line 279
    .end local v3    # "scaleMem":F
    .local v19, "scaleMem":F
    move/from16 v20, v4

    sub-int v4, v12, v15

    .line 279
    .end local v4    # "totalMemGb":I
    .local v20, "totalMemGb":I
    int-to-float v4, v4

    mul-float/2addr v4, v8

    add-float/2addr v3, v4

    float-to-int v3, v3

    aput v3, v13, v14

    .line 281
    const/4 v3, 0x4

    if-eq v14, v3, :cond_7

    const/4 v3, 0x5

    if-ne v14, v3, :cond_6

    goto :goto_5

    .line 284
    :cond_6
    iget-object v3, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    aget v4, v3, v14

    const v13, 0x19000

    add-int/2addr v4, v13

    aput v4, v3, v14

    .line 284
    .end local v12    # "high":I
    .end local v15    # "low":I
    goto :goto_6

    .line 282
    .restart local v12    # "high":I
    .restart local v15    # "low":I
    :cond_7
    :goto_5
    iget-object v3, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    aget v4, v3, v14

    const v13, 0x4b000

    add-int/2addr v4, v13

    aput v4, v3, v14

    .line 270
    .end local v12    # "high":I
    .end local v15    # "low":I
    :goto_6
    add-int/lit8 v14, v14, 0x1

    move/from16 v3, v19

    move/from16 v4, v20

    goto :goto_3

    .line 289
    .end local v14    # "i":I
    .end local v19    # "scaleMem":F
    .end local v20    # "totalMemGb":I
    .restart local v3    # "scaleMem":F
    .restart local v4    # "totalMemGb":I
    :cond_8
    move/from16 v19, v3

    move/from16 v20, v4

    .line 289
    .end local v3    # "scaleMem":F
    .end local v4    # "totalMemGb":I
    .restart local v19    # "scaleMem":F
    .restart local v20    # "totalMemGb":I
    if-ltz v10, :cond_9

    .line 290
    const/4 v3, 0x0

    .line 290
    .local v3, "i":I
    :goto_7
    iget-object v4, v0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    array-length v4, v4

    if-ge v3, v4, :cond_9

    .line 291
    iget-object v4, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    int-to-float v12, v10

    iget-object v13, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    aget v13, v13, v3

    int-to-float v13, v13

    mul-float/2addr v12, v13

    iget-object v13, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    iget-object v14, v0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    array-length v14, v14

    const/4 v15, 0x1

    sub-int/2addr v14, v15

    aget v13, v13, v14

    int-to-float v13, v13

    div-float/2addr v12, v13

    float-to-int v12, v12

    aput v12, v4, v3

    .line 290
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 296
    .end local v3    # "i":I
    :cond_9
    if-eqz v9, :cond_b

    .line 297
    const/4 v3, 0x0

    .line 297
    .restart local v3    # "i":I
    :goto_8
    iget-object v4, v0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    array-length v4, v4

    if-ge v3, v4, :cond_b

    .line 298
    iget-object v4, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    aget v12, v4, v3

    int-to-float v13, v9

    iget-object v14, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    aget v14, v14, v3

    int-to-float v14, v14

    mul-float/2addr v13, v14

    iget-object v14, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    iget-object v15, v0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    array-length v15, v15

    const/16 v17, 0x1

    add-int/lit8 v15, v15, -0x1

    aget v14, v14, v15

    int-to-float v14, v14

    div-float/2addr v13, v14

    float-to-int v13, v13

    add-int/2addr v12, v13

    aput v12, v4, v3

    .line 300
    iget-object v4, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    aget v4, v4, v3

    if-gez v4, :cond_a

    .line 301
    iget-object v4, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    const/4 v12, 0x0

    aput v12, v4, v3

    .line 297
    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 309
    .end local v3    # "i":I
    :cond_b
    const/16 v3, 0x38a

    invoke-virtual {v0, v3}, Lcom/android/server/am/ProcessList;->getMemLevel(I)J

    move-result-wide v3

    const-wide/16 v12, 0x400

    div-long/2addr v3, v12

    const-wide/16 v12, 0x3

    div-long/2addr v3, v12

    iput-wide v3, v0, Lcom/android/server/am/ProcessList;->mCachedRestoreLevel:J

    .line 314
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->isMonkey()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 315
    const-string v3, "debug.nubia.addfree"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v13

    goto :goto_9

    :cond_c
    const/4 v13, 0x0

    :goto_9
    move v3, v13

    .line 316
    .local v3, "addfree_size":I
    mul-int v4, p1, p2

    const/4 v12, 0x4

    mul-int/2addr v4, v12

    const/4 v12, 0x3

    add-int/2addr v12, v3

    mul-int/2addr v4, v12

    div-int/lit16 v4, v4, 0x400

    .line 321
    .local v4, "reserve":I
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x10e0049

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v12

    .line 322
    .local v12, "reserve_adj":I
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x10e0048

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v13

    .line 324
    .local v13, "reserve_abs":I
    if-ltz v13, :cond_d

    .line 325
    move v4, v13

    .line 328
    :cond_d
    if-eqz v12, :cond_e

    .line 329
    add-int/2addr v4, v12

    .line 330
    if-gez v4, :cond_e

    .line 331
    const/4 v4, 0x0

    .line 335
    :cond_e
    if-eqz p3, :cond_10

    .line 336
    iget-object v15, v0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    array-length v15, v15

    mul-int v16, v16, v15

    const/4 v15, 0x1

    add-int/lit8 v16, v16, 0x1

    const/4 v15, 0x4

    mul-int v15, v15, v16

    invoke-static {v15}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v15

    .line 337
    .local v15, "buf":Ljava/nio/ByteBuffer;
    const/4 v1, 0x0

    invoke-virtual {v15, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 338
    nop

    .line 338
    .local v1, "i":I
    :goto_a
    iget-object v2, v0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    array-length v2, v2

    if-ge v1, v2, :cond_f

    .line 339
    iget-object v2, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    aget v2, v2, v1

    mul-int/lit16 v2, v2, 0x400

    div-int/lit16 v2, v2, 0x1000

    invoke-virtual {v15, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 340
    iget-object v2, v0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    aget v2, v2, v1

    invoke-virtual {v15, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 338
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 343
    .end local v1    # "i":I
    :cond_f
    invoke-static {v15}, Lcom/android/server/am/ProcessList;->writeLmkd(Ljava/nio/ByteBuffer;)V

    .line 344
    const-string/jumbo v1, "sys.sysctl.extra_free_kbytes"

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    .end local v15    # "buf":Ljava/nio/ByteBuffer;
    :cond_10
    return-void
.end method

.method private static writeLmkd(Ljava/nio/ByteBuffer;)V
    .locals 3
    .param p0, "buf"    # Ljava/nio/ByteBuffer;

    .line 874
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_3

    .line 875
    sget-object v2, Lcom/android/server/am/ProcessList;->sLmkdSocket:Landroid/net/LocalSocket;

    if-nez v2, :cond_1

    .line 876
    invoke-static {}, Lcom/android/server/am/ProcessList;->openLmkdSocket()Z

    move-result v2

    if-nez v2, :cond_0

    .line 878
    const-wide/16 v1, 0x3e8

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 880
    goto :goto_1

    .line 879
    :catch_0
    move-exception v1

    .line 881
    goto :goto_1

    .line 885
    :cond_0
    const/4 v2, 0x4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 886
    .local v2, "purge_buf":Ljava/nio/ByteBuffer;
    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 887
    invoke-static {v2}, Lcom/android/server/am/ProcessList;->writeLmkdCommand(Ljava/nio/ByteBuffer;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 889
    goto :goto_1

    .line 892
    .end local v2    # "purge_buf":Ljava/nio/ByteBuffer;
    :cond_1
    invoke-static {p0}, Lcom/android/server/am/ProcessList;->writeLmkdCommand(Ljava/nio/ByteBuffer;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 893
    return-void

    .line 874
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 896
    .end local v0    # "i":I
    :cond_3
    return-void
.end method

.method private static writeLmkdCommand(Ljava/nio/ByteBuffer;)Z
    .locals 4
    .param p0, "buf"    # Ljava/nio/ByteBuffer;

    .line 857
    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/android/server/am/ProcessList;->sLmkdOutputStream:Ljava/io/OutputStream;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    invoke-virtual {v1, v2, v0, v3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 868
    nop

    .line 869
    const/4 v0, 0x1

    return v0

    .line 858
    :catch_0
    move-exception v1

    .line 859
    .local v1, "ex":Ljava/io/IOException;
    const-string v2, "ActivityManager"

    const-string v3, "Error writing to lowmemorykiller socket"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 862
    :try_start_1
    sget-object v2, Lcom/android/server/am/ProcessList;->sLmkdSocket:Landroid/net/LocalSocket;

    invoke-virtual {v2}, Landroid/net/LocalSocket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 864
    goto :goto_0

    .line 863
    :catch_1
    move-exception v2

    .line 866
    :goto_0
    const/4 v2, 0x0

    sput-object v2, Lcom/android/server/am/ProcessList;->sLmkdSocket:Landroid/net/LocalSocket;

    .line 867
    return v0
.end method


# virtual methods
.method applyDisplaySize(Lcom/android/server/wm/WindowManagerService;)V
    .locals 4
    .param p1, "wm"    # Lcom/android/server/wm/WindowManagerService;

    .line 218
    iget-boolean v0, p0, Lcom/android/server/am/ProcessList;->mHaveDisplaySize:Z

    if-nez v0, :cond_0

    .line 219
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 221
    .local v0, "p":Landroid/graphics/Point;
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Lcom/android/server/wm/WindowManagerService;->getBaseDisplaySize(ILandroid/graphics/Point;)V

    .line 222
    iget v1, v0, Landroid/graphics/Point;->x:I

    if-eqz v1, :cond_0

    iget v1, v0, Landroid/graphics/Point;->y:I

    if-eqz v1, :cond_0

    .line 223
    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v2, v0, Landroid/graphics/Point;->y:I

    const/4 v3, 0x1

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/am/ProcessList;->updateOomLevels(IIZ)V

    .line 224
    iput-boolean v3, p0, Lcom/android/server/am/ProcessList;->mHaveDisplaySize:Z

    .line 227
    .end local v0    # "p":Landroid/graphics/Point;
    :cond_0
    return-void
.end method

.method getCachedRestoreThresholdKb()J
    .locals 2

    .line 789
    iget-wide v0, p0, Lcom/android/server/am/ProcessList;->mCachedRestoreLevel:J

    return-wide v0
.end method

.method getMemLevel(I)J
    .locals 3
    .param p1, "adjustment"    # I

    .line 776
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 777
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    aget v1, v1, v0

    if-gt p1, v1, :cond_0

    .line 778
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    aget v1, v1, v0

    mul-int/lit16 v1, v1, 0x400

    int-to-long v1, v1

    return-wide v1

    .line 776
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 781
    .end local v0    # "i":I
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    mul-int/lit16 v0, v0, 0x400

    int-to-long v0, v0

    return-wide v0
.end method

.method nubiaApplyDisplaySize(Lcom/android/server/wm/WindowManagerService;)V
    .locals 4
    .param p1, "wm"    # Lcom/android/server/wm/WindowManagerService;

    .line 231
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 233
    .local v0, "p":Landroid/graphics/Point;
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Lcom/android/server/wm/WindowManagerService;->getBaseDisplaySize(ILandroid/graphics/Point;)V

    .line 234
    iget v1, v0, Landroid/graphics/Point;->x:I

    if-eqz v1, :cond_0

    iget v1, v0, Landroid/graphics/Point;->y:I

    if-eqz v1, :cond_0

    .line 235
    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v2, v0, Landroid/graphics/Point;->y:I

    const/4 v3, 0x1

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/am/ProcessList;->updateOomLevels(IIZ)V

    .line 237
    :cond_0
    return-void
.end method

.method updateLmkLevelsOnMonkey(Z)V
    .locals 7
    .param p1, "isMonkeyRunning"    # Z

    .line 904
    const/4 v0, 0x2

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-nez p1, :cond_1

    .line 905
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    array-length v3, v3

    mul-int/2addr v0, v3

    add-int/lit8 v0, v0, 0x1

    mul-int/2addr v1, v0

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 906
    .local v0, "buf":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 907
    nop

    .local v2, "i":I
    :goto_0
    move v1, v2

    .end local v2    # "i":I
    .local v1, "i":I
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 908
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    aget v2, v2, v1

    mul-int/lit16 v2, v2, 0x400

    div-int/lit16 v2, v2, 0x1000

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 909
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    aget v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 907
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_0

    .line 911
    .end local v2    # "i":I
    :cond_0
    invoke-static {v0}, Lcom/android/server/am/ProcessList;->writeLmkd(Ljava/nio/ByteBuffer;)V

    .line 912
    return-void

    .line 916
    .end local v0    # "buf":Ljava/nio/ByteBuffer;
    :cond_1
    const/4 v3, 0x0

    .line 917
    .local v3, "adjustMem":I
    new-instance v4, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {v4}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    .line 918
    .local v4, "minfo":Lcom/android/internal/util/MemInfoReader;
    invoke-virtual {v4}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    .line 919
    invoke-virtual {v4}, Lcom/android/internal/util/MemInfoReader;->getTotalSize()J

    move-result-wide v5

    long-to-float v5, v5

    const/high16 v6, 0x4e800000

    div-float/2addr v5, v6

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v5, v5

    .line 921
    .local v5, "totalMemGb":I
    const/4 v6, 0x6

    if-lt v5, v6, :cond_2

    .line 922
    const v3, 0x7d000

    goto :goto_1

    .line 924
    :cond_2
    const v3, 0x32000

    .line 927
    :goto_1
    iget-object v6, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    array-length v6, v6

    mul-int/2addr v0, v6

    add-int/lit8 v0, v0, 0x1

    mul-int/2addr v1, v0

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 928
    .restart local v0    # "buf":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 929
    nop

    .restart local v2    # "i":I
    :goto_2
    move v1, v2

    .end local v2    # "i":I
    .restart local v1    # "i":I
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    array-length v2, v2

    if-ge v1, v2, :cond_3

    .line 930
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    aget v2, v2, v1

    add-int/2addr v2, v3

    mul-int/lit16 v2, v2, 0x400

    div-int/lit16 v2, v2, 0x1000

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 931
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    aget v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 929
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_2

    .line 933
    .end local v2    # "i":I
    :cond_3
    invoke-static {v0}, Lcom/android/server/am/ProcessList;->writeLmkd(Ljava/nio/ByteBuffer;)V

    .line 934
    return-void
.end method

.method updateMinFreeByMLock()V
    .locals 0

    .line 900
    return-void
.end method
