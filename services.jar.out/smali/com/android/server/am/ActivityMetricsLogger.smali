.class Lcom/android/server/am/ActivityMetricsLogger;
.super Ljava/lang/Object;
.source "ActivityMetricsLogger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;,
        Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;,
        Lcom/android/server/am/ActivityMetricsLogger$H;
    }
.end annotation


# static fields
.field private static final INVALID_DELAY:I = -0x1

.field private static final INVALID_START_TIME:J = -0x1L

.field private static final INVALID_TRANSITION_TYPE:I = -0x1

.field private static final MSG_CHECK_VISIBILITY:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ActivityManager"

.field private static final TRON_WINDOW_STATE_VARZ_STRINGS:[Ljava/lang/String;

.field private static final WINDOW_STATE_ASSISTANT:I = 0x3

.field private static final WINDOW_STATE_FREEFORM:I = 0x2

.field private static final WINDOW_STATE_INVALID:I = -0x1

.field private static final WINDOW_STATE_SIDE_BY_SIDE:I = 0x1

.field private static final WINDOW_STATE_STANDARD:I


# instance fields
.field private mArtManagerInternal:Landroid/content/pm/dex/ArtManagerInternal;

.field private final mContext:Landroid/content/Context;

.field private mCurrentTransitionDelayMs:I

.field private mCurrentTransitionDeviceUptime:I

.field private mCurrentTransitionStartTime:J

.field private mDrawingTraceActive:Z

.field private final mHandler:Lcom/android/server/am/ActivityMetricsLogger$H;

.field private mLastLogTimeSecs:J

.field private mLastTransitionStartTime:J

.field private final mLastWindowingModeTransitionInfo:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mLoggedTransitionStarting:Z

.field private final mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field private final mStringBuilder:Ljava/lang/StringBuilder;

.field private final mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

.field private mWindowState:I

.field private final mWindowingModeTransitionInfo:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 137
    const-string/jumbo v0, "window_time_0"

    const-string/jumbo v1, "window_time_1"

    const-string/jumbo v2, "window_time_2"

    const-string/jumbo v3, "window_time_3"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/ActivityMetricsLogger;->TRON_WINDOW_STATE_VARZ_STRINGS:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/android/server/am/ActivityStackSupervisor;Landroid/content/Context;Landroid/os/Looper;)V
    .locals 4
    .param p1, "supervisor"    # Lcom/android/server/am/ActivityStackSupervisor;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "looper"    # Landroid/os/Looper;

    .line 250
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/ActivityMetricsLogger;->mWindowState:I

    .line 144
    new-instance v0, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {v0}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityMetricsLogger;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 146
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/am/ActivityMetricsLogger;->mCurrentTransitionStartTime:J

    .line 147
    iput-wide v0, p0, Lcom/android/server/am/ActivityMetricsLogger;->mLastTransitionStartTime:J

    .line 153
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityMetricsLogger;->mWindowingModeTransitionInfo:Landroid/util/SparseArray;

    .line 155
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityMetricsLogger;->mLastWindowingModeTransitionInfo:Landroid/util/SparseArray;

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityMetricsLogger;->mStringBuilder:Ljava/lang/StringBuilder;

    .line 251
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/ActivityMetricsLogger;->mLastLogTimeSecs:J

    .line 252
    iput-object p1, p0, Lcom/android/server/am/ActivityMetricsLogger;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    .line 253
    iput-object p2, p0, Lcom/android/server/am/ActivityMetricsLogger;->mContext:Landroid/content/Context;

    .line 254
    new-instance v0, Lcom/android/server/am/ActivityMetricsLogger$H;

    invoke-direct {v0, p0, p3}, Lcom/android/server/am/ActivityMetricsLogger$H;-><init>(Lcom/android/server/am/ActivityMetricsLogger;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/am/ActivityMetricsLogger;->mHandler:Lcom/android/server/am/ActivityMetricsLogger$H;

    .line 255
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/am/ActivityMetricsLogger;Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityRecord;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/ActivityMetricsLogger;
    .param p1, "x1"    # Lcom/android/server/am/TaskRecord;
    .param p2, "x2"    # Lcom/android/server/am/ActivityRecord;

    .line 117
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/ActivityMetricsLogger;->checkVisibility(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityRecord;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/am/ActivityMetricsLogger;Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/ActivityMetricsLogger;
    .param p1, "x1"    # Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;

    .line 117
    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityMetricsLogger;->getTransitionType(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;)I

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/am/ActivityMetricsLogger;Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ProcessRecord;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/ActivityMetricsLogger;
    .param p1, "x1"    # Lcom/android/server/am/ActivityRecord;

    .line 117
    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityMetricsLogger;->findProcessForActivity(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    return-object v0
.end method

.method private allWindowsDrawn()Z
    .locals 3

    .line 550
    iget-object v0, p0, Lcom/android/server/am/ActivityMetricsLogger;->mWindowingModeTransitionInfo:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "index":I
    :goto_0
    if-ltz v0, :cond_1

    .line 551
    iget-object v2, p0, Lcom/android/server/am/ActivityMetricsLogger;->mWindowingModeTransitionInfo:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;

    invoke-static {v2}, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$1100(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 552
    const/4 v1, 0x0

    return v1

    .line 550
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 555
    .end local v0    # "index":I
    :cond_1
    return v1
.end method

.method private calculateCurrentDelay()I
    .locals 4

    .line 577
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/am/ActivityMetricsLogger;->mCurrentTransitionStartTime:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method private calculateDelay(J)I
    .locals 2
    .param p1, "timestamp"    # J

    .line 582
    iget-wide v0, p0, Lcom/android/server/am/ActivityMetricsLogger;->mCurrentTransitionStartTime:J

    sub-long v0, p1, v0

    long-to-int v0, v0

    return v0
.end method

.method private checkVisibility(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityRecord;)V
    .locals 4
    .param p1, "t"    # Lcom/android/server/am/TaskRecord;
    .param p2, "r"    # Lcom/android/server/am/ActivityRecord;

    .line 513
    iget-object v0, p0, Lcom/android/server/am/ActivityMetricsLogger;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 515
    iget-object v1, p0, Lcom/android/server/am/ActivityMetricsLogger;->mWindowingModeTransitionInfo:Landroid/util/SparseArray;

    .line 516
    invoke-virtual {p2}, Lcom/android/server/am/ActivityRecord;->getWindowingMode()I

    move-result v2

    .line 515
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;

    .line 520
    .local v1, "info":Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;
    if-eqz v1, :cond_1

    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityMetricsLogger;->hasVisibleNonFinishingActivity(Lcom/android/server/am/TaskRecord;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 523
    invoke-direct {p0, v1}, Lcom/android/server/am/ActivityMetricsLogger;->logAppTransitionCancel(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;)V

    .line 524
    iget-object v2, p0, Lcom/android/server/am/ActivityMetricsLogger;->mWindowingModeTransitionInfo:Landroid/util/SparseArray;

    invoke-virtual {p2}, Lcom/android/server/am/ActivityRecord;->getWindowingMode()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->remove(I)V

    .line 525
    iget-object v2, p0, Lcom/android/server/am/ActivityMetricsLogger;->mWindowingModeTransitionInfo:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 526
    const/4 v2, 0x1

    invoke-direct {p0, v2, v1}, Lcom/android/server/am/ActivityMetricsLogger;->reset(ZLcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;)V

    .line 528
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/am/ActivityMetricsLogger;->stopFullyDrawnTraceIfNeeded()V

    .line 530
    .end local v1    # "info":Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 531
    return-void

    .line 530
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method private convertAppStartTransitionType(I)I
    .locals 1
    .param p1, "tronType"    # I

    .line 777
    const/4 v0, 0x7

    if-ne p1, v0, :cond_0

    .line 778
    const/4 v0, 0x3

    return v0

    .line 780
    :cond_0
    const/16 v0, 0x8

    if-ne p1, v0, :cond_1

    .line 781
    const/4 v0, 0x1

    return v0

    .line 783
    :cond_1
    const/16 v0, 0x9

    if-ne p1, v0, :cond_2

    .line 784
    const/4 v0, 0x2

    return v0

    .line 786
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private dumpLaunchActivity(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)V
    .locals 4
    .param p1, "info"    # Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;

    .line 758
    invoke-static {p1}, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->access$1400(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->packageName:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_1

    .line 762
    :cond_0
    iget v0, p1, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->windowsDrawnDelayMs:I

    int-to-long v0, v0

    sget-wide v2, Landroid/app/ActivityThread;->sLaunchActivityMinThreshold:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    iget v0, p1, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->windowsDrawnDelayMs:I

    int-to-long v0, v0

    sget-wide v2, Landroid/app/ActivityThread;->sLaunchActivityMaxThreshold:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    iget-object v0, p1, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->packageName:Ljava/lang/String;

    sget-object v1, Landroid/app/ActivityThread;->sLaunchActivity:Ljava/lang/String;

    .line 764
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 765
    const/16 v0, 0x18dc

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dumpLaunchActivity windowsDrawnDelayMs = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->windowsDrawnDelayMs:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", ComponentName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 768
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->dumpSystraceWhenStuck()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 771
    goto :goto_0

    .line 769
    :catch_0
    move-exception v0

    .line 770
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 773
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    return-void

    .line 759
    :cond_2
    :goto_1
    return-void
.end method

.method private dumpSystraceIfNeeded(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)V
    .locals 6
    .param p1, "info"    # Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;

    .line 719
    invoke-static {p1}, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->access$1400(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p1, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->packageName:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_2

    .line 722
    :cond_0
    const-string v0, "debug.nubia.systrace_launch"

    const/4 v1, -0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 723
    .local v0, "threshold":I
    if-gez v0, :cond_1

    .line 724
    return-void

    .line 726
    :cond_1
    const-string v1, "debug.nubia.systrace_launch_pkg"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 727
    .local v1, "temp":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    .line 728
    return-void

    .line 730
    :cond_2
    const-string v2, "*"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 731
    iget v2, p1, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->windowsDrawnDelayMs:I

    if-le v2, v0, :cond_5

    .line 732
    const-string v2, "ActivityManager"

    const-string v3, "dump systrace for slow_activity_launch"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    iget-object v2, p0, Lcom/android/server/am/ActivityMetricsLogger;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v2, v2, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->dumpSystrace()V

    goto :goto_1

    .line 736
    :cond_3
    new-instance v2, Ljava/util/StringTokenizer;

    const-string v3, ":"

    invoke-direct {v2, v1, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 737
    .local v2, "st":Ljava/util/StringTokenizer;
    :goto_0
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 738
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    .line 739
    .local v3, "name":Ljava/lang/String;
    iget-object v4, p1, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 741
    iget v4, p1, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->windowsDrawnDelayMs:I

    if-le v4, v0, :cond_5

    .line 742
    const-string v4, "ActivityManager"

    const-string v5, "dump systrace for slow_activity_launch"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    iget-object v4, p0, Lcom/android/server/am/ActivityMetricsLogger;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v4, v4, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->dumpSystrace()V

    goto :goto_1

    .line 748
    .end local v3    # "name":Ljava/lang/String;
    :cond_4
    goto :goto_0

    .line 750
    .end local v2    # "st":Ljava/util/StringTokenizer;
    :cond_5
    :goto_1
    return-void

    .line 720
    .end local v0    # "threshold":I
    .end local v1    # "temp":Ljava/lang/String;
    :cond_6
    :goto_2
    return-void
.end method

.method private findProcessForActivity(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ProcessRecord;
    .locals 3
    .param p1, "launchedActivity"    # Lcom/android/server/am/ActivityRecord;

    .line 967
    if-eqz p1, :cond_0

    .line 968
    iget-object v0, p0, Lcom/android/server/am/ActivityMetricsLogger;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessNames:Lcom/android/internal/app/ProcessMap;

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    goto :goto_0

    .line 970
    :cond_0
    const/4 v0, 0x0

    .line 967
    :goto_0
    return-object v0
.end method

.method private getArtManagerInternal()Landroid/content/pm/dex/ArtManagerInternal;
    .locals 1

    .line 974
    iget-object v0, p0, Lcom/android/server/am/ActivityMetricsLogger;->mArtManagerInternal:Landroid/content/pm/dex/ArtManagerInternal;

    if-nez v0, :cond_0

    .line 978
    const-class v0, Landroid/content/pm/dex/ArtManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/dex/ArtManagerInternal;

    iput-object v0, p0, Lcom/android/server/am/ActivityMetricsLogger;->mArtManagerInternal:Landroid/content/pm/dex/ArtManagerInternal;

    .line 980
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityMetricsLogger;->mArtManagerInternal:Landroid/content/pm/dex/ArtManagerInternal;

    return-object v0
.end method

.method private getTransitionType(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;)I
    .locals 2
    .param p1, "info"    # Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;

    .line 928
    invoke-static {p1}, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$900(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 929
    invoke-static {p1}, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$1000(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;)I

    move-result v0

    if-nez v0, :cond_0

    .line 930
    const/16 v0, 0x8

    return v0

    .line 931
    :cond_0
    invoke-static {p1}, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$1000(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 932
    const/16 v0, 0x9

    return v0

    .line 934
    :cond_1
    invoke-static {p1}, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$1000(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;)I

    move-result v0

    if-nez v0, :cond_2

    .line 935
    const/4 v0, 0x7

    return v0

    .line 937
    :cond_2
    const/4 v0, -0x1

    return v0
.end method

.method private hasStartedActivity(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;)Z
    .locals 5
    .param p1, "record"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "launchedActivity"    # Lcom/android/server/am/ActivityRecord;

    .line 333
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    .line 334
    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 335
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .line 336
    .local v3, "activity":Lcom/android/server/am/ActivityRecord;
    if-ne p2, v3, :cond_0

    .line 337
    goto :goto_1

    .line 339
    :cond_0
    iget-boolean v4, v3, Lcom/android/server/am/ActivityRecord;->stopped:Z

    if-nez v4, :cond_1

    .line 340
    return v2

    .line 334
    .end local v3    # "activity":Lcom/android/server/am/ActivityRecord;
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 343
    .end local v1    # "i":I
    :cond_2
    const/4 v1, 0x0

    return v1
.end method

.method private hasVisibleNonFinishingActivity(Lcom/android/server/am/TaskRecord;)Z
    .locals 4
    .param p1, "t"    # Lcom/android/server/am/TaskRecord;

    .line 503
    iget-object v0, p1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 504
    iget-object v2, p1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    .line 505
    .local v2, "r":Lcom/android/server/am/ActivityRecord;
    iget-boolean v3, v2, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-eqz v3, :cond_0

    iget-boolean v3, v2, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v3, :cond_0

    .line 506
    return v1

    .line 503
    .end local v2    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 509
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private isAnyTransitionActive()Z
    .locals 4

    .line 559
    iget-wide v0, p0, Lcom/android/server/am/ActivityMetricsLogger;->mCurrentTransitionStartTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ActivityMetricsLogger;->mWindowingModeTransitionInfo:Landroid/util/SparseArray;

    .line 560
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 559
    :goto_0
    return v0
.end method

.method private isLoggableResultCode(I)Z
    .locals 1
    .param p1, "resultCode"    # I

    .line 419
    if-eqz p1, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

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

.method public static synthetic lambda$logAppTransitionMultiEvents$0(Lcom/android/server/am/ActivityMetricsLogger;IILcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)V
    .locals 0
    .param p1, "currentTransitionDeviceUptime"    # I
    .param p2, "currentTransitionDelayMs"    # I
    .param p3, "infoSnapshot"    # Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;

    .line 618
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/am/ActivityMetricsLogger;->logAppTransition(IILcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)V

    return-void
.end method

.method public static synthetic lambda$logAppTransitionMultiEvents$1(Lcom/android/server/am/ActivityMetricsLogger;Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)V
    .locals 0
    .param p1, "infoSnapshot"    # Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;

    .line 620
    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityMetricsLogger;->logAppDisplayed(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)V

    return-void
.end method

.method public static synthetic lambda$logAppTransitionReportedDrawn$2(Lcom/android/server/am/ActivityMetricsLogger;Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)V
    .locals 0
    .param p1, "infoSnapshot"    # Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;

    .line 820
    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityMetricsLogger;->logAppFullyDrawn(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)V

    return-void
.end method

.method private logAppDisplayed(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)V
    .locals 5
    .param p1, "info"    # Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;

    .line 689
    iget v0, p1, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->type:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    iget v0, p1, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->type:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    .line 690
    return-void

    .line 693
    :cond_0
    const/16 v0, 0x7539

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p1, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->userId:I

    .line 694
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    iget v4, p1, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->activityRecordIdHashCode:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    const/4 v2, 0x2

    iget-object v4, p1, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->launchedActivityShortComponentName:Ljava/lang/String;

    aput-object v4, v1, v2

    const/4 v2, 0x3

    iget v4, p1, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->windowsDrawnDelayMs:I

    .line 695
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    .line 693
    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 697
    iget-object v0, p0, Lcom/android/server/am/ActivityMetricsLogger;->mStringBuilder:Ljava/lang/StringBuilder;

    .line 698
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 699
    const-string v1, "Displayed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 700
    iget-object v1, p1, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->launchedActivityShortComponentName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 701
    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 702
    iget v1, p1, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->windowsDrawnDelayMs:I

    int-to-long v1, v1

    invoke-static {v1, v2, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 703
    const-string v1, "ActivityManager"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityMetricsLogger;->dumpSystraceIfNeeded(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)V

    .line 710
    sget-boolean v1, Landroid/app/ActivityThread;->sDebugStuckValueEnable:Z

    if-eqz v1, :cond_1

    .line 711
    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityMetricsLogger;->dumpLaunchActivity(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)V

    .line 714
    :cond_1
    return-void
.end method

.method private logAppFullyDrawn(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)V
    .locals 3
    .param p1, "info"    # Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;

    .line 825
    iget v0, p1, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->type:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    iget v0, p1, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->type:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    .line 826
    return-void

    .line 829
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityMetricsLogger;->mStringBuilder:Ljava/lang/StringBuilder;

    .line 830
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 831
    const-string v1, "Fully drawn "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 832
    iget-object v1, p1, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->launchedActivityShortComponentName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 833
    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 834
    iget v1, p1, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->windowsFullyDrawnDelayMs:I

    int-to-long v1, v1

    invoke-static {v1, v2, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 835
    const-string v1, "ActivityManager"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 836
    return-void
.end method

.method private logAppStartMemoryStateCapture(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)V
    .locals 20
    .param p1, "info"    # Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;

    .line 941
    invoke-static/range {p1 .. p1}, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->access$2200(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    if-nez v0, :cond_0

    .line 943
    return-void

    .line 946
    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->access$2200(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    iget v0, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    .line 947
    .local v0, "pid":I
    invoke-static/range {p1 .. p1}, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->access$1400(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 948
    .local v1, "uid":I
    invoke-static {v1, v0}, Lcom/android/server/am/MemoryStatUtil;->readMemoryStatFromFilesystem(II)Lcom/android/server/am/MemoryStatUtil$MemoryStat;

    move-result-object v14

    .line 949
    .local v14, "memoryStat":Lcom/android/server/am/MemoryStatUtil$MemoryStat;
    if-nez v14, :cond_1

    .line 951
    return-void

    .line 954
    :cond_1
    const/16 v2, 0x37

    .line 957
    invoke-static/range {p1 .. p1}, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->access$2300(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v15, p1

    iget-object v5, v15, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->launchedActivityName:Ljava/lang/String;

    iget-wide v6, v14, Lcom/android/server/am/MemoryStatUtil$MemoryStat;->pgfault:J

    iget-wide v8, v14, Lcom/android/server/am/MemoryStatUtil$MemoryStat;->pgmajfault:J

    iget-wide v10, v14, Lcom/android/server/am/MemoryStatUtil$MemoryStat;->rssInBytes:J

    iget-wide v12, v14, Lcom/android/server/am/MemoryStatUtil$MemoryStat;->cacheInBytes:J

    move-wide/from16 v16, v12

    iget-wide v12, v14, Lcom/android/server/am/MemoryStatUtil$MemoryStat;->swapInBytes:J

    .line 954
    move v3, v1

    move-wide/from16 v18, v12

    move-wide/from16 v12, v16

    move-object/from16 v16, v14

    move-wide/from16 v14, v18

    .end local v14    # "memoryStat":Lcom/android/server/am/MemoryStatUtil$MemoryStat;
    .local v16, "memoryStat":Lcom/android/server/am/MemoryStatUtil$MemoryStat;
    invoke-static/range {v2 .. v15}, Landroid/util/StatsLog;->write(IILjava/lang/String;Ljava/lang/String;JJJJJ)I

    .line 964
    return-void
.end method

.method private logAppTransition(IILcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)V
    .locals 25
    .param p1, "currentTransitionDeviceUptime"    # I
    .param p2, "currentTransitionDelayMs"    # I
    .param p3, "info"    # Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;

    move-object/from16 v0, p0

    .line 629
    move-object/from16 v1, p3

    new-instance v2, Landroid/metrics/LogMaker;

    const/16 v3, 0x2f9

    invoke-direct {v2, v3}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 630
    .local v2, "builder":Landroid/metrics/LogMaker;
    iget-object v3, v1, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/metrics/LogMaker;->setPackageName(Ljava/lang/String;)Landroid/metrics/LogMaker;

    .line 631
    iget v3, v1, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->type:I

    invoke-virtual {v2, v3}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    .line 632
    iget-object v3, v1, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->launchedActivityName:Ljava/lang/String;

    const/16 v4, 0x367

    invoke-virtual {v2, v4, v3}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 633
    invoke-static/range {p3 .. p3}, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->access$1400(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/pm/ApplicationInfo;->isInstantApp()Z

    move-result v3

    .line 634
    .local v3, "isInstantApp":Z
    invoke-static/range {p3 .. p3}, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->access$1500(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 635
    const/16 v4, 0x388

    .line 636
    invoke-static/range {p3 .. p3}, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->access$1500(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)Ljava/lang/String;

    move-result-object v5

    .line 635
    invoke-virtual {v2, v4, v5}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 638
    :cond_0
    invoke-static/range {p3 .. p3}, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->access$1600(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)Ljava/lang/String;

    move-result-object v15

    .line 639
    .local v15, "launchToken":Ljava/lang/String;
    if-eqz v15, :cond_1

    .line 640
    const/16 v4, 0x387

    invoke-virtual {v2, v4, v15}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 642
    :cond_1
    const/16 v4, 0x389

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 643
    const/16 v4, 0x145

    .line 644
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 643
    invoke-virtual {v2, v4, v5}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 645
    const/16 v4, 0x13f

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 646
    invoke-static/range {p3 .. p3}, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->access$1700(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    .line 647
    invoke-static/range {p3 .. p3}, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->access$1800(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    .line 648
    const/16 v4, 0x141

    .line 649
    invoke-static/range {p3 .. p3}, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->access$1800(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 648
    invoke-virtual {v2, v4, v6}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 651
    :cond_2
    invoke-static/range {p3 .. p3}, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->access$1900(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)I

    move-result v4

    if-eq v4, v5, :cond_3

    .line 652
    const/16 v4, 0x3b1

    .line 653
    invoke-static/range {p3 .. p3}, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->access$1900(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 652
    invoke-virtual {v2, v4, v5}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 655
    :cond_3
    const/16 v4, 0x142

    iget v5, v1, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->windowsDrawnDelayMs:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 656
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/ActivityMetricsLogger;->getArtManagerInternal()Landroid/content/pm/dex/ArtManagerInternal;

    move-result-object v14

    .line 658
    .local v14, "artManagerInternal":Landroid/content/pm/dex/ArtManagerInternal;
    if-eqz v14, :cond_5

    invoke-static/range {p3 .. p3}, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->access$2000(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_4

    goto :goto_0

    .line 660
    :cond_4
    nop

    .line 661
    invoke-static/range {p3 .. p3}, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->access$1400(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .line 662
    invoke-static/range {p3 .. p3}, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->access$2000(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)Ljava/lang/String;

    move-result-object v5

    .line 660
    invoke-virtual {v14, v4, v5}, Landroid/content/pm/dex/ArtManagerInternal;->getPackageOptimizationInfo(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)Landroid/content/pm/dex/PackageOptimizationInfo;

    move-result-object v4

    goto :goto_1

    .line 659
    :cond_5
    :goto_0
    invoke-static {}, Landroid/content/pm/dex/PackageOptimizationInfo;->createWithNoInfo()Landroid/content/pm/dex/PackageOptimizationInfo;

    move-result-object v4

    .line 660
    :goto_1
    move-object v13, v4

    .line 663
    .local v13, "packageOptimizationInfo":Landroid/content/pm/dex/PackageOptimizationInfo;
    const/16 v4, 0x529

    .line 664
    invoke-virtual {v13}, Landroid/content/pm/dex/PackageOptimizationInfo;->getCompilationReason()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 663
    invoke-virtual {v2, v4, v5}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 665
    const/16 v4, 0x528

    .line 666
    invoke-virtual {v13}, Landroid/content/pm/dex/PackageOptimizationInfo;->getCompilationFilter()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 665
    invoke-virtual {v2, v4, v5}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 667
    iget-object v4, v0, Lcom/android/server/am/ActivityMetricsLogger;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {v4, v2}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 668
    nop

    .line 670
    invoke-static/range {p3 .. p3}, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->access$1400(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v6, v1, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->packageName:Ljava/lang/String;

    iget v7, v1, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->type:I

    .line 672
    invoke-direct {v0, v7}, Lcom/android/server/am/ActivityMetricsLogger;->convertAppStartTransitionType(I)I

    move-result v7

    iget-object v8, v1, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->launchedActivityName:Ljava/lang/String;

    .line 674
    invoke-static/range {p3 .. p3}, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->access$1500(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)Ljava/lang/String;

    move-result-object v9

    move/from16 v11, p1

    mul-int/lit16 v10, v11, 0x3e8

    move/from16 v22, v5

    int-to-long v4, v10

    .line 677
    invoke-static/range {p3 .. p3}, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->access$1700(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)I

    move-result v16

    .line 679
    invoke-static/range {p3 .. p3}, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->access$1800(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)I

    move-result v17

    .line 680
    invoke-static/range {p3 .. p3}, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->access$1900(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)I

    move-result v18

    iget v12, v1, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->windowsDrawnDelayMs:I

    .line 683
    invoke-virtual {v13}, Landroid/content/pm/dex/PackageOptimizationInfo;->getCompilationReason()I

    move-result v19

    .line 684
    invoke-virtual {v13}, Landroid/content/pm/dex/PackageOptimizationInfo;->getCompilationFilter()I

    move-result v20

    .line 668
    move-wide/from16 v23, v4

    const/16 v4, 0x30

    move/from16 v5, v22

    move v10, v3

    move/from16 v21, v12

    move-wide/from16 v11, v23

    move-object/from16 v22, v13

    move/from16 v13, v16

    .end local v13    # "packageOptimizationInfo":Landroid/content/pm/dex/PackageOptimizationInfo;
    .local v22, "packageOptimizationInfo":Landroid/content/pm/dex/PackageOptimizationInfo;
    move-object/from16 v23, v14

    move/from16 v14, p2

    .end local v14    # "artManagerInternal":Landroid/content/pm/dex/ArtManagerInternal;
    .local v23, "artManagerInternal":Landroid/content/pm/dex/ArtManagerInternal;
    move-object/from16 v24, v15

    move/from16 v15, v17

    .end local v15    # "launchToken":Ljava/lang/String;
    .local v24, "launchToken":Ljava/lang/String;
    move/from16 v16, v18

    move/from16 v17, v21

    move-object/from16 v18, v24

    invoke-static/range {v4 .. v20}, Landroid/util/StatsLog;->write(IILjava/lang/String;ILjava/lang/String;Ljava/lang/String;ZJIIIIILjava/lang/String;II)I

    .line 685
    invoke-direct {v0, v1}, Lcom/android/server/am/ActivityMetricsLogger;->logAppStartMemoryStateCapture(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)V

    .line 686
    return-void
.end method

.method private logAppTransitionCancel(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;)V
    .locals 7
    .param p1, "info"    # Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;

    .line 586
    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityMetricsLogger;->getTransitionType(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;)I

    move-result v0

    .line 587
    .local v0, "type":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 588
    return-void

    .line 590
    :cond_0
    new-instance v1, Landroid/metrics/LogMaker;

    const/16 v2, 0x478

    invoke-direct {v1, v2}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 591
    .local v1, "builder":Landroid/metrics/LogMaker;
    invoke-static {p1}, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$100(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;)Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/metrics/LogMaker;->setPackageName(Ljava/lang/String;)Landroid/metrics/LogMaker;

    .line 592
    invoke-virtual {v1, v0}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    .line 593
    const/16 v2, 0x367

    invoke-static {p1}, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$100(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;)Lcom/android/server/am/ActivityRecord;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 594
    iget-object v2, p0, Lcom/android/server/am/ActivityMetricsLogger;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {v2, v1}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 595
    const/16 v2, 0x31

    .line 597
    invoke-static {p1}, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$100(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;)Lcom/android/server/am/ActivityRecord;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 598
    invoke-static {p1}, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$100(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;)Lcom/android/server/am/ActivityRecord;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    .line 599
    invoke-direct {p0, v0}, Lcom/android/server/am/ActivityMetricsLogger;->convertAppStartTransitionType(I)I

    move-result v5

    .line 600
    invoke-static {p1}, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$100(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;)Lcom/android/server/am/ActivityRecord;

    move-result-object v6

    iget-object v6, v6, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 595
    invoke-static {v2, v3, v4, v5, v6}, Landroid/util/StatsLog;->write(IILjava/lang/String;ILjava/lang/String;)I

    .line 601
    return-void
.end method

.method private logAppTransitionMultiEvents()V
    .locals 9

    .line 605
    iget-object v0, p0, Lcom/android/server/am/ActivityMetricsLogger;->mWindowingModeTransitionInfo:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "index":I
    :goto_0
    if-ltz v0, :cond_1

    .line 606
    iget-object v1, p0, Lcom/android/server/am/ActivityMetricsLogger;->mWindowingModeTransitionInfo:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;

    .line 607
    .local v1, "info":Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;
    invoke-direct {p0, v1}, Lcom/android/server/am/ActivityMetricsLogger;->getTransitionType(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;)I

    move-result v2

    .line 608
    .local v2, "type":I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 609
    return-void

    .line 614
    :cond_0
    new-instance v3, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v1, v4}, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;-><init>(Lcom/android/server/am/ActivityMetricsLogger;Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;Lcom/android/server/am/ActivityMetricsLogger$1;)V

    .line 616
    .local v3, "infoSnapshot":Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;
    iget v5, p0, Lcom/android/server/am/ActivityMetricsLogger;->mCurrentTransitionDeviceUptime:I

    .line 617
    .local v5, "currentTransitionDeviceUptime":I
    iget v6, p0, Lcom/android/server/am/ActivityMetricsLogger;->mCurrentTransitionDelayMs:I

    .line 618
    .local v6, "currentTransitionDelayMs":I
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v7

    new-instance v8, Lcom/android/server/am/-$$Lambda$ActivityMetricsLogger$EXtnEt47a9lJOX0u5R1TXhfh0XE;

    invoke-direct {v8, p0, v5, v6, v3}, Lcom/android/server/am/-$$Lambda$ActivityMetricsLogger$EXtnEt47a9lJOX0u5R1TXhfh0XE;-><init>(Lcom/android/server/am/ActivityMetricsLogger;IILcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)V

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 620
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v7

    new-instance v8, Lcom/android/server/am/-$$Lambda$ActivityMetricsLogger$EC9JWHkuhz-8G6tyBRq_BEve0P4;

    invoke-direct {v8, p0, v3}, Lcom/android/server/am/-$$Lambda$ActivityMetricsLogger$EC9JWHkuhz-8G6tyBRq_BEve0P4;-><init>(Lcom/android/server/am/ActivityMetricsLogger;Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)V

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 622
    invoke-static {v1}, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$100(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;)Lcom/android/server/am/ActivityRecord;

    move-result-object v7

    iget-object v7, v7, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iput-object v4, v7, Landroid/content/pm/ActivityInfo;->launchToken:Ljava/lang/String;

    .line 605
    .end local v1    # "info":Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;
    .end local v2    # "type":I
    .end local v3    # "infoSnapshot":Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;
    .end local v5    # "currentTransitionDeviceUptime":I
    .end local v6    # "currentTransitionDelayMs":I
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 624
    .end local v0    # "index":I
    :cond_1
    return-void
.end method

.method private notifyActivityLaunched(ILcom/android/server/am/ActivityRecord;ZZ)V
    .locals 8
    .param p1, "resultCode"    # I
    .param p2, "launchedActivity"    # Lcom/android/server/am/ActivityRecord;
    .param p3, "processRunning"    # Z
    .param p4, "processSwitch"    # Z

    .line 360
    iget-object v0, p0, Lcom/android/server/am/ActivityMetricsLogger;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->setActivityStartingLocked(Z)V

    .line 368
    if-eqz p2, :cond_0

    .line 369
    invoke-virtual {p2}, Lcom/android/server/am/ActivityRecord;->getWindowingMode()I

    move-result v0

    goto :goto_0

    .line 370
    :cond_0
    move v0, v1

    .line 371
    .local v0, "windowingMode":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/am/ActivityMetricsLogger;->mWindowingModeTransitionInfo:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;

    .line 372
    .local v2, "info":Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;
    iget-wide v3, p0, Lcom/android/server/am/ActivityMetricsLogger;->mCurrentTransitionStartTime:J

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-nez v3, :cond_1

    .line 374
    return-void

    .line 377
    :cond_1
    const/4 v3, 0x1

    if-eqz p2, :cond_2

    iget-boolean v4, p2, Lcom/android/server/am/ActivityRecord;->drawn:Z

    if-eqz v4, :cond_2

    .line 379
    invoke-direct {p0, v3, v2}, Lcom/android/server/am/ActivityMetricsLogger;->reset(ZLcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;)V

    .line 380
    return-void

    .line 383
    :cond_2
    if-eqz p2, :cond_3

    if-eqz v2, :cond_3

    .line 386
    invoke-static {v2, p2}, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$102(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    .line 387
    return-void

    .line 390
    :cond_3
    iget-object v4, p0, Lcom/android/server/am/ActivityMetricsLogger;->mWindowingModeTransitionInfo:Landroid/util/SparseArray;

    .line 391
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-lez v4, :cond_4

    if-nez v2, :cond_4

    move v1, v3

    nop

    .line 392
    .local v1, "otherWindowModesLaunching":Z
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityMetricsLogger;->isLoggableResultCode(I)Z

    move-result v4

    if-eqz v4, :cond_5

    if-eqz p2, :cond_5

    if-eqz p4, :cond_5

    if-nez v0, :cond_6

    :cond_5
    if-nez v1, :cond_6

    .line 395
    invoke-direct {p0, v3, v2}, Lcom/android/server/am/ActivityMetricsLogger;->reset(ZLcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;)V

    .line 396
    return-void

    .line 397
    :cond_6
    if-eqz v1, :cond_7

    .line 399
    return-void

    .line 404
    :cond_7
    new-instance v3, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;-><init>(Lcom/android/server/am/ActivityMetricsLogger;Lcom/android/server/am/ActivityMetricsLogger$1;)V

    .line 405
    .local v3, "newInfo":Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;
    invoke-static {v3, p2}, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$102(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    .line 406
    invoke-static {v3, p3}, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$902(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;Z)Z

    .line 407
    invoke-static {v3, p1}, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$1002(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;I)I

    .line 408
    iget-object v4, p0, Lcom/android/server/am/ActivityMetricsLogger;->mWindowingModeTransitionInfo:Landroid/util/SparseArray;

    invoke-virtual {v4, v0, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 409
    iget-object v4, p0, Lcom/android/server/am/ActivityMetricsLogger;->mLastWindowingModeTransitionInfo:Landroid/util/SparseArray;

    invoke-virtual {v4, v0, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 410
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    long-to-int v4, v4

    iput v4, p0, Lcom/android/server/am/ActivityMetricsLogger;->mCurrentTransitionDeviceUptime:I

    .line 411
    invoke-direct {p0, v3}, Lcom/android/server/am/ActivityMetricsLogger;->startTraces(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;)V

    .line 412
    return-void
.end method

.method private reset(ZLcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;)V
    .locals 2
    .param p1, "abort"    # Z
    .param p2, "info"    # Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;

    .line 565
    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/android/server/am/ActivityMetricsLogger;->isAnyTransitionActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 566
    invoke-direct {p0}, Lcom/android/server/am/ActivityMetricsLogger;->logAppTransitionMultiEvents()V

    .line 568
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/am/ActivityMetricsLogger;->stopLaunchTrace(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;)V

    .line 569
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/am/ActivityMetricsLogger;->mCurrentTransitionStartTime:J

    .line 570
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/am/ActivityMetricsLogger;->mCurrentTransitionDelayMs:I

    .line 571
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/ActivityMetricsLogger;->mLoggedTransitionStarting:Z

    .line 572
    iget-object v0, p0, Lcom/android/server/am/ActivityMetricsLogger;->mWindowingModeTransitionInfo:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 573
    return-void
.end method

.method private startTraces(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;)V
    .locals 5
    .param p1, "info"    # Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;

    .line 992
    if-nez p1, :cond_0

    .line 993
    return-void

    .line 995
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/am/ActivityMetricsLogger;->stopFullyDrawnTraceIfNeeded()V

    .line 996
    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityMetricsLogger;->getTransitionType(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;)I

    move-result v0

    .line 997
    .local v0, "transitionType":I
    invoke-static {p1}, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$2400(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;)Z

    move-result v1

    if-nez v1, :cond_1

    const/16 v1, 0x8

    if-eq v0, v1, :cond_2

    :cond_1
    const/4 v1, 0x7

    if-ne v0, v1, :cond_3

    .line 999
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "launching: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1000
    invoke-static {p1}, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$100(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;)Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 999
    const/4 v2, 0x0

    const-wide/16 v3, 0x40

    invoke-static {v3, v4, v1, v2}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 1001
    const-string v1, "drawing"

    invoke-static {v3, v4, v1, v2}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 1002
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/am/ActivityMetricsLogger;->mDrawingTraceActive:Z

    .line 1003
    invoke-static {p1, v1}, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$2402(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;Z)Z

    .line 1005
    :cond_3
    return-void
.end method

.method private stopLaunchTrace(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;)V
    .locals 4
    .param p1, "info"    # Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;

    .line 1008
    if-nez p1, :cond_0

    .line 1009
    return-void

    .line 1011
    :cond_0
    invoke-static {p1}, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$2400(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1012
    const-wide/16 v0, 0x40

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "launching: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1013
    invoke-static {p1}, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$100(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;)Lcom/android/server/am/ActivityRecord;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1012
    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 1014
    invoke-static {p1, v3}, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$2402(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;Z)Z

    .line 1016
    :cond_1
    return-void
.end method


# virtual methods
.method logActivityStart(Landroid/content/Intent;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;ILjava/lang/String;IZIIZILjava/lang/String;IZLjava/lang/String;Z)V
    .locals 15
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "callerApp"    # Lcom/android/server/am/ProcessRecord;
    .param p3, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p4, "callingUid"    # I
    .param p5, "callingPackage"    # Ljava/lang/String;
    .param p6, "callingUidProcState"    # I
    .param p7, "callingUidHasAnyVisibleWindow"    # Z
    .param p8, "realCallingUid"    # I
    .param p9, "realCallingUidProcState"    # I
    .param p10, "realCallingUidHasAnyVisibleWindow"    # Z
    .param p11, "targetUid"    # I
    .param p12, "targetPackage"    # Ljava/lang/String;
    .param p13, "targetUidProcState"    # I
    .param p14, "targetUidHasAnyVisibleWindow"    # Z
    .param p15, "targetWhitelistTag"    # Ljava/lang/String;
    .param p16, "comingFromPendingIntent"    # Z

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    .line 847
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 848
    .local v2, "nowElapsed":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 849
    .local v4, "nowUptime":J
    new-instance v6, Landroid/metrics/LogMaker;

    const/16 v7, 0x5e9

    invoke-direct {v6, v7}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 850
    .local v6, "builder":Landroid/metrics/LogMaker;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Landroid/metrics/LogMaker;->setTimestamp(J)Landroid/metrics/LogMaker;

    .line 851
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/16 v8, 0x5ea

    invoke-virtual {v6, v8, v7}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 852
    const/16 v7, 0x5eb

    move-object/from16 v8, p5

    invoke-virtual {v6, v7, v8}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 853
    nop

    .line 854
    invoke-static/range {p6 .. p6}, Landroid/app/ActivityManager;->processStateAmToProto(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 853
    const/16 v9, 0x5ec

    invoke-virtual {v6, v9, v7}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 855
    nop

    .line 856
    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 855
    const/16 v9, 0x5ed

    invoke-virtual {v6, v9, v7}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 857
    const/16 v7, 0x5ee

    invoke-static/range {p8 .. p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v7, v9}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 858
    const/16 v7, 0x5ef

    .line 859
    invoke-static/range {p9 .. p9}, Landroid/app/ActivityManager;->processStateAmToProto(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 858
    invoke-virtual {v6, v7, v9}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 860
    const/16 v7, 0x5f0

    .line 861
    invoke-static/range {p10 .. p10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 860
    invoke-virtual {v6, v7, v9}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 862
    const/16 v7, 0x5f1

    invoke-static/range {p11 .. p11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v7, v9}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 863
    const/16 v7, 0x5f2

    move-object/from16 v9, p12

    invoke-virtual {v6, v7, v9}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 864
    const/16 v7, 0x5f3

    .line 865
    invoke-static/range {p13 .. p13}, Landroid/app/ActivityManager;->processStateAmToProto(I)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 864
    invoke-virtual {v6, v7, v10}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 866
    const/16 v7, 0x5f4

    .line 867
    invoke-static/range {p14 .. p14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 866
    invoke-virtual {v6, v7, v10}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 868
    const/16 v7, 0x5f5

    move-object/from16 v10, p15

    invoke-virtual {v6, v7, v10}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 869
    const/16 v7, 0x5f6

    iget-object v11, v1, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    invoke-virtual {v6, v7, v11}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 870
    const/16 v7, 0x5f7

    invoke-static/range {p16 .. p16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v6, v7, v11}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 871
    const/16 v7, 0x5f8

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v7, v11}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 872
    const-wide/16 v11, 0x0

    if-eqz v0, :cond_2

    .line 873
    const/16 v7, 0x5f9

    iget-object v13, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v6, v7, v13}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 874
    const/16 v7, 0x5fa

    iget v13, v0, Lcom/android/server/am/ProcessRecord;->curProcState:I

    .line 875
    invoke-static {v13}, Landroid/app/ActivityManager;->processStateAmToProto(I)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    .line 874
    invoke-virtual {v6, v7, v13}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 876
    const/16 v7, 0x5fb

    .line 877
    iget-boolean v13, v0, Lcom/android/server/am/ProcessRecord;->hasClientActivities:Z

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    .line 876
    invoke-virtual {v6, v7, v13}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 878
    const/16 v7, 0x5fc

    .line 879
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/am/ProcessRecord;->hasForegroundServices()Z

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    .line 878
    invoke-virtual {v6, v7, v13}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 880
    const/16 v7, 0x5fd

    .line 881
    iget-boolean v13, v0, Lcom/android/server/am/ProcessRecord;->foregroundActivities:Z

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    .line 880
    invoke-virtual {v6, v7, v13}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 882
    const/16 v7, 0x5fe

    iget-boolean v13, v0, Lcom/android/server/am/ProcessRecord;->hasTopUi:Z

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v6, v7, v13}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 883
    const/16 v7, 0x5ff

    .line 884
    iget-boolean v13, v0, Lcom/android/server/am/ProcessRecord;->hasOverlayUi:Z

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    .line 883
    invoke-virtual {v6, v7, v13}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 885
    const/16 v7, 0x600

    .line 886
    iget-boolean v13, v0, Lcom/android/server/am/ProcessRecord;->pendingUiClean:Z

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    .line 885
    invoke-virtual {v6, v7, v13}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 887
    iget-wide v13, v0, Lcom/android/server/am/ProcessRecord;->interactionEventTime:J

    cmp-long v7, v13, v11

    if-eqz v7, :cond_0

    .line 888
    const/16 v7, 0x601

    iget-wide v13, v0, Lcom/android/server/am/ProcessRecord;->interactionEventTime:J

    sub-long v13, v2, v13

    .line 889
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    .line 888
    invoke-virtual {v6, v7, v13}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 891
    :cond_0
    iget-wide v13, v0, Lcom/android/server/am/ProcessRecord;->fgInteractionTime:J

    cmp-long v7, v13, v11

    if-eqz v7, :cond_1

    .line 892
    const/16 v7, 0x602

    iget-wide v13, v0, Lcom/android/server/am/ProcessRecord;->fgInteractionTime:J

    sub-long v13, v2, v13

    .line 893
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    .line 892
    invoke-virtual {v6, v7, v13}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 895
    :cond_1
    iget-wide v13, v0, Lcom/android/server/am/ProcessRecord;->whenUnimportant:J

    cmp-long v7, v13, v11

    if-eqz v7, :cond_2

    .line 896
    const/16 v7, 0x603

    iget-wide v13, v0, Lcom/android/server/am/ProcessRecord;->whenUnimportant:J

    sub-long v13, v4, v13

    .line 897
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    .line 896
    invoke-virtual {v6, v7, v13}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 900
    :cond_2
    const/16 v7, 0x604

    iget-object v13, v1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v13, v13, Landroid/content/pm/ActivityInfo;->launchMode:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v6, v7, v13}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 901
    const/16 v7, 0x605

    iget-object v13, v1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v13, v13, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    invoke-virtual {v6, v7, v13}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 902
    const/16 v7, 0x606

    iget-object v13, v1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v13, v13, Landroid/content/pm/ActivityInfo;->flags:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v6, v7, v13}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 903
    const/16 v7, 0x607

    iget-object v13, v1, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v13}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v7, v13}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 904
    const/16 v7, 0x608

    iget-object v13, v1, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    invoke-virtual {v6, v7, v13}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 905
    const/16 v7, 0x609

    iget-object v13, v1, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {v6, v7, v13}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 906
    const/16 v7, 0x60a

    iget-boolean v13, v1, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v6, v7, v13}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 907
    const/16 v7, 0x60b

    iget-boolean v13, v1, Lcom/android/server/am/ActivityRecord;->noDisplay:Z

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v6, v7, v13}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 908
    iget-wide v13, v1, Lcom/android/server/am/ActivityRecord;->lastVisibleTime:J

    cmp-long v7, v13, v11

    if-eqz v7, :cond_3

    .line 909
    const/16 v7, 0x60c

    iget-wide v13, v1, Lcom/android/server/am/ActivityRecord;->lastVisibleTime:J

    sub-long v13, v4, v13

    .line 910
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    .line 909
    invoke-virtual {v6, v7, v13}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 912
    :cond_3
    iget-object v7, v1, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    if-eqz v7, :cond_4

    .line 913
    const/16 v7, 0x60d

    iget-object v13, v1, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    iget-object v13, v13, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7, v13}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 914
    const/16 v7, 0x60e

    iget-object v13, v1, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    iget-object v13, v13, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    invoke-virtual {v6, v7, v13}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 917
    :cond_4
    const/16 v7, 0x60f

    iget-boolean v13, v1, Lcom/android/server/am/ActivityRecord;->visible:Z

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v6, v7, v13}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 918
    const/16 v7, 0x610

    .line 919
    iget-boolean v13, v1, Lcom/android/server/am/ActivityRecord;->visibleIgnoringKeyguard:Z

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    .line 918
    invoke-virtual {v6, v7, v13}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 920
    iget-wide v13, v1, Lcom/android/server/am/ActivityRecord;->lastLaunchTime:J

    cmp-long v7, v13, v11

    if-eqz v7, :cond_5

    .line 921
    const/16 v7, 0x611

    iget-wide v11, v1, Lcom/android/server/am/ActivityRecord;->lastLaunchTime:J

    sub-long v11, v4, v11

    .line 922
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    .line 921
    invoke-virtual {v6, v7, v11}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 924
    :cond_5
    move-object v7, p0

    iget-object v11, v7, Lcom/android/server/am/ActivityMetricsLogger;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {v11, v6}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 925
    return-void
.end method

.method logAppTransitionReportedDrawn(Lcom/android/server/am/ActivityRecord;Z)Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;
    .locals 18
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "restoredFromBundle"    # Z

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    .line 791
    iget-object v0, v6, Lcom/android/server/am/ActivityMetricsLogger;->mLastWindowingModeTransitionInfo:Landroid/util/SparseArray;

    .line 792
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->getWindowingMode()I

    move-result v1

    .line 791
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;

    .line 793
    .local v8, "info":Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;
    if-nez v8, :cond_0

    .line 794
    const/4 v0, 0x0

    return-object v0

    .line 796
    :cond_0
    new-instance v0, Landroid/metrics/LogMaker;

    const/16 v1, 0x442

    invoke-direct {v0, v1}, Landroid/metrics/LogMaker;-><init>(I)V

    move-object v9, v0

    .line 797
    .local v9, "builder":Landroid/metrics/LogMaker;
    iget-object v0, v7, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v0}, Landroid/metrics/LogMaker;->setPackageName(Ljava/lang/String;)Landroid/metrics/LogMaker;

    .line 798
    const/16 v0, 0x367

    iget-object v1, v7, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v9, v0, v1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 799
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, v6, Lcom/android/server/am/ActivityMetricsLogger;->mLastTransitionStartTime:J

    sub-long v4, v0, v2

    .line 800
    .local v4, "startupTimeMs":J
    const/16 v0, 0x443

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 801
    if-eqz p2, :cond_1

    .line 802
    const/16 v0, 0xd

    goto :goto_0

    .line 803
    :cond_1
    const/16 v0, 0xc

    .line 801
    :goto_0
    invoke-virtual {v9, v0}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    .line 804
    const/16 v0, 0x144

    .line 805
    invoke-static {v8}, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$900(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 804
    invoke-virtual {v9, v0, v1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 806
    iget-object v0, v6, Lcom/android/server/am/ActivityMetricsLogger;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {v0, v9}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 807
    const/16 v10, 0x32

    .line 809
    invoke-static {v8}, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$100(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v11, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 810
    invoke-static {v8}, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$100(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    iget-object v12, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    .line 811
    if-eqz p2, :cond_2

    .line 812
    const/4 v0, 0x1

    .line 814
    :goto_1
    move v13, v0

    goto :goto_2

    .line 813
    :cond_2
    const/4 v0, 0x2

    goto :goto_1

    .line 814
    :goto_2
    invoke-static {v8}, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$100(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v14, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 815
    invoke-static {v8}, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$900(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;)Z

    move-result v15

    .line 807
    move-wide/from16 v16, v4

    invoke-static/range {v10 .. v17}, Landroid/util/StatsLog;->write(IILjava/lang/String;ILjava/lang/String;ZJ)I

    .line 817
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityMetricsLogger;->stopFullyDrawnTraceIfNeeded()V

    .line 818
    new-instance v10, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;

    long-to-int v11, v4

    const/4 v12, 0x0

    move-object v0, v10

    move-object v1, v6

    move-object v2, v8

    move-object v3, v7

    move-wide v13, v4

    move v4, v11

    .end local v4    # "startupTimeMs":J
    .local v13, "startupTimeMs":J
    move-object v5, v12

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;-><init>(Lcom/android/server/am/ActivityMetricsLogger;Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;Lcom/android/server/am/ActivityRecord;ILcom/android/server/am/ActivityMetricsLogger$1;)V

    .line 820
    .local v0, "infoSnapshot":Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/server/am/-$$Lambda$ActivityMetricsLogger$hV69RM6bGwI03lqB25i1eiypVyE;

    invoke-direct {v2, v6, v0}, Lcom/android/server/am/-$$Lambda$ActivityMetricsLogger$hV69RM6bGwI03lqB25i1eiypVyE;-><init>(Lcom/android/server/am/ActivityMetricsLogger;Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 821
    return-object v0
.end method

.method logWindowState()V
    .locals 7

    .line 258
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 259
    .local v0, "now":J
    iget v2, p0, Lcom/android/server/am/ActivityMetricsLogger;->mWindowState:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 263
    iget-object v2, p0, Lcom/android/server/am/ActivityMetricsLogger;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/android/server/am/ActivityMetricsLogger;->TRON_WINDOW_STATE_VARZ_STRINGS:[Ljava/lang/String;

    iget v5, p0, Lcom/android/server/am/ActivityMetricsLogger;->mWindowState:I

    aget-object v4, v4, v5

    iget-wide v5, p0, Lcom/android/server/am/ActivityMetricsLogger;->mLastLogTimeSecs:J

    sub-long v5, v0, v5

    long-to-int v5, v5

    invoke-static {v2, v4, v5}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 266
    :cond_0
    iput-wide v0, p0, Lcom/android/server/am/ActivityMetricsLogger;->mLastLogTimeSecs:J

    .line 268
    iput v3, p0, Lcom/android/server/am/ActivityMetricsLogger;->mWindowState:I

    .line 269
    iget-object v2, p0, Lcom/android/server/am/ActivityMetricsLogger;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStackSupervisor;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v2

    .line 270
    .local v2, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->isActivityTypeAssistant()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 271
    const/4 v3, 0x3

    iput v3, p0, Lcom/android/server/am/ActivityMetricsLogger;->mWindowState:I

    .line 272
    return-void

    .line 275
    :cond_1
    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->getWindowingMode()I

    move-result v3

    .line 276
    .local v3, "windowingMode":I
    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 277
    iget-object v5, p0, Lcom/android/server/am/ActivityMetricsLogger;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v5, v2}, Lcom/android/server/am/ActivityStackSupervisor;->findStackBehind(Lcom/android/server/am/ActivityStack;)Lcom/android/server/am/ActivityStack;

    move-result-object v2

    .line 278
    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->getWindowingMode()I

    move-result v3

    .line 280
    :cond_2
    const/4 v5, 0x1

    if-eq v3, v5, :cond_4

    packed-switch v3, :pswitch_data_0

    .line 292
    if-nez v3, :cond_3

    goto :goto_0

    .line 293
    :cond_3
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown windowing mode for stack="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " windowingMode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 289
    :pswitch_0
    iput v4, p0, Lcom/android/server/am/ActivityMetricsLogger;->mWindowState:I

    .line 290
    goto :goto_0

    .line 286
    :pswitch_1
    iput v5, p0, Lcom/android/server/am/ActivityMetricsLogger;->mWindowState:I

    .line 287
    goto :goto_0

    .line 282
    :cond_4
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/server/am/ActivityMetricsLogger;->mWindowState:I

    .line 283
    nop

    .line 297
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method notifyActivityLaunched(ILcom/android/server/am/ActivityRecord;)V
    .locals 5
    .param p1, "resultCode"    # I
    .param p2, "launchedActivity"    # Lcom/android/server/am/ActivityRecord;

    .line 319
    invoke-direct {p0, p2}, Lcom/android/server/am/ActivityMetricsLogger;->findProcessForActivity(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    .line 320
    .local v0, "processRecord":Lcom/android/server/am/ProcessRecord;
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    .line 326
    .local v3, "processRunning":Z
    :goto_0
    if-eqz v0, :cond_2

    .line 327
    invoke-direct {p0, v0, p2}, Lcom/android/server/am/ActivityMetricsLogger;->hasStartedActivity(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    goto :goto_2

    :cond_2
    :goto_1
    move v1, v2

    .line 329
    .local v1, "processSwitch":Z
    :goto_2
    invoke-direct {p0, p1, p2, v3, v1}, Lcom/android/server/am/ActivityMetricsLogger;->notifyActivityLaunched(ILcom/android/server/am/ActivityRecord;ZZ)V

    .line 330
    return-void
.end method

.method notifyActivityLaunching()V
    .locals 2

    .line 304
    invoke-direct {p0}, Lcom/android/server/am/ActivityMetricsLogger;->isAnyTransitionActive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 306
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/ActivityMetricsLogger;->mCurrentTransitionStartTime:J

    .line 307
    iget-wide v0, p0, Lcom/android/server/am/ActivityMetricsLogger;->mCurrentTransitionStartTime:J

    iput-wide v0, p0, Lcom/android/server/am/ActivityMetricsLogger;->mLastTransitionStartTime:J

    .line 309
    :cond_0
    return-void
.end method

.method notifyBindApplication(Lcom/android/server/am/ProcessRecord;)V
    .locals 4
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 539
    iget-object v0, p0, Lcom/android/server/am/ActivityMetricsLogger;->mWindowingModeTransitionInfo:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 540
    iget-object v1, p0, Lcom/android/server/am/ActivityMetricsLogger;->mWindowingModeTransitionInfo:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;

    .line 543
    .local v1, "info":Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;
    invoke-static {v1}, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$100(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;)Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-ne v2, v3, :cond_0

    .line 544
    invoke-direct {p0}, Lcom/android/server/am/ActivityMetricsLogger;->calculateCurrentDelay()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$402(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;I)I

    .line 539
    .end local v1    # "info":Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 547
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method notifyStartingWindowDrawn(IJ)V
    .locals 2
    .param p1, "windowingMode"    # I
    .param p2, "timestamp"    # J

    .line 446
    iget-object v0, p0, Lcom/android/server/am/ActivityMetricsLogger;->mWindowingModeTransitionInfo:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;

    .line 447
    .local v0, "info":Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;
    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$1300(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 450
    :cond_0
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$1302(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;Z)Z

    .line 451
    invoke-direct {p0, p2, p3}, Lcom/android/server/am/ActivityMetricsLogger;->calculateDelay(J)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$302(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;I)I

    .line 452
    return-void

    .line 448
    :cond_1
    :goto_0
    return-void
.end method

.method notifyTransitionStarting(Landroid/util/SparseIntArray;J)V
    .locals 4
    .param p1, "windowingModeToReason"    # Landroid/util/SparseIntArray;
    .param p2, "timestamp"    # J

    .line 461
    invoke-direct {p0}, Lcom/android/server/am/ActivityMetricsLogger;->isAnyTransitionActive()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/android/server/am/ActivityMetricsLogger;->mLoggedTransitionStarting:Z

    if-eqz v0, :cond_0

    goto :goto_2

    .line 465
    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/android/server/am/ActivityMetricsLogger;->calculateDelay(J)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/ActivityMetricsLogger;->mCurrentTransitionDelayMs:I

    .line 466
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/ActivityMetricsLogger;->mLoggedTransitionStarting:Z

    .line 467
    invoke-virtual {p1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    sub-int/2addr v1, v0

    .local v1, "index":I
    :goto_0
    move v0, v1

    .end local v1    # "index":I
    .local v0, "index":I
    if-ltz v0, :cond_2

    .line 468
    invoke-virtual {p1, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v1

    .line 469
    .local v1, "windowingMode":I
    iget-object v2, p0, Lcom/android/server/am/ActivityMetricsLogger;->mWindowingModeTransitionInfo:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;

    .line 471
    .local v2, "info":Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;
    if-nez v2, :cond_1

    .line 472
    goto :goto_1

    .line 474
    :cond_1
    invoke-virtual {p1, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$202(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;I)I

    .line 467
    .end local v1    # "windowingMode":I
    .end local v2    # "info":Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;
    :goto_1
    add-int/lit8 v1, v0, -0x1

    .end local v0    # "index":I
    .local v1, "index":I
    goto :goto_0

    .line 476
    .end local v1    # "index":I
    :cond_2
    invoke-direct {p0}, Lcom/android/server/am/ActivityMetricsLogger;->allWindowsDrawn()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 477
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/am/ActivityMetricsLogger;->reset(ZLcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;)V

    .line 479
    :cond_3
    return-void

    .line 462
    :cond_4
    :goto_2
    return-void
.end method

.method notifyVisibilityChanged(Lcom/android/server/am/ActivityRecord;)V
    .locals 5
    .param p1, "activityRecord"    # Lcom/android/server/am/ActivityRecord;

    .line 487
    iget-object v0, p0, Lcom/android/server/am/ActivityMetricsLogger;->mWindowingModeTransitionInfo:Landroid/util/SparseArray;

    .line 488
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getWindowingMode()I

    move-result v1

    .line 487
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;

    .line 489
    .local v0, "info":Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;
    if-nez v0, :cond_0

    .line 490
    return-void

    .line 492
    :cond_0
    invoke-static {v0}, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$100(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;)Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    if-eq v1, p1, :cond_1

    .line 493
    return-void

    .line 495
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v1

    .line 496
    .local v1, "t":Lcom/android/server/am/TaskRecord;
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v2

    .line 497
    .local v2, "args":Lcom/android/internal/os/SomeArgs;
    iput-object v1, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 498
    iput-object p1, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 499
    iget-object v3, p0, Lcom/android/server/am/ActivityMetricsLogger;->mHandler:Lcom/android/server/am/ActivityMetricsLogger$H;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v2}, Lcom/android/server/am/ActivityMetricsLogger$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 500
    return-void
.end method

.method notifyWindowsDrawn(IJ)Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;
    .locals 3
    .param p1, "windowingMode"    # I
    .param p2, "timestamp"    # J

    .line 428
    iget-object v0, p0, Lcom/android/server/am/ActivityMetricsLogger;->mWindowingModeTransitionInfo:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;

    .line 429
    .local v0, "info":Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;
    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-static {v0}, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$1100(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 432
    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/android/server/am/ActivityMetricsLogger;->calculateDelay(J)I

    move-result v2

    invoke-static {v0, v2}, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$502(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;I)I

    .line 433
    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$1102(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;Z)Z

    .line 434
    new-instance v2, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;

    invoke-direct {v2, p0, v0, v1}, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;-><init>(Lcom/android/server/am/ActivityMetricsLogger;Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;Lcom/android/server/am/ActivityMetricsLogger$1;)V

    move-object v1, v2

    .line 436
    .local v1, "infoSnapshot":Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;
    invoke-direct {p0}, Lcom/android/server/am/ActivityMetricsLogger;->allWindowsDrawn()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/server/am/ActivityMetricsLogger;->mLoggedTransitionStarting:Z

    if-eqz v2, :cond_1

    .line 437
    const/4 v2, 0x0

    invoke-direct {p0, v2, v0}, Lcom/android/server/am/ActivityMetricsLogger;->reset(ZLcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;)V

    .line 439
    :cond_1
    return-object v1

    .line 430
    .end local v1    # "infoSnapshot":Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;
    :cond_2
    :goto_0
    return-object v1
.end method

.method stopFullyDrawnTraceIfNeeded()V
    .locals 4

    .line 1019
    iget-boolean v0, p0, Lcom/android/server/am/ActivityMetricsLogger;->mDrawingTraceActive:Z

    if-eqz v0, :cond_0

    .line 1020
    const-wide/16 v0, 0x40

    const-string v2, "drawing"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 1021
    iput-boolean v3, p0, Lcom/android/server/am/ActivityMetricsLogger;->mDrawingTraceActive:Z

    .line 1023
    :cond_0
    return-void
.end method
