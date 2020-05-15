.class public Lcom/android/server/cpuperf/PerformanceController;
.super Ljava/lang/Object;
.source "PerformanceController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/cpuperf/PerformanceController$PausingActivityRunnable;,
        Lcom/android/server/cpuperf/PerformanceController$ResumingActivityRunnable;,
        Lcom/android/server/cpuperf/PerformanceController$ResumedAppDieRunnable;,
        Lcom/android/server/cpuperf/PerformanceController$BinderDeathRunnable;,
        Lcom/android/server/cpuperf/PerformanceController$ReleasePerformanceLockRunnable;,
        Lcom/android/server/cpuperf/PerformanceController$AdjustPerformanceRunnable;,
        Lcom/android/server/cpuperf/PerformanceController$AcquirePerformanceLockRunnable;,
        Lcom/android/server/cpuperf/PerformanceController$BinderDeathCallback;,
        Lcom/android/server/cpuperf/PerformanceController$PerformanceLock;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PerformanceController"


# instance fields
.field private mAdjustPerformanceRunnable:Lcom/android/server/cpuperf/PerformanceController$AdjustPerformanceRunnable;

.field private mCPUControl:Lcom/android/server/cpuperf/QComBoostController;

.field private mContext:Landroid/content/Context;

.field private mDumpDebugLog:Z

.field private mDumpFinish:Ljava/util/concurrent/locks/Condition;

.field private mDumpLock:Ljava/util/concurrent/locks/Lock;

.field private mDumpSimpleFinish:Ljava/util/concurrent/locks/Condition;

.field private mDumpSimpleLock:Ljava/util/concurrent/locks/Lock;

.field private mDumpSimpleTemp:Ljava/lang/String;

.field private mDumpTemp:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mLocks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/cpuperf/PerformanceController$PerformanceLock;",
            ">;"
        }
    .end annotation
.end field

.field private mPackageActivityToBinders:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field private mPerfHelper:Lcom/android/server/cpuperf/PerformanceHelper;

.field private mTgpaHelper:Lcom/android/server/cpuperf/TgpaHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/cpuperf/PerformanceController;->mDumpDebugLog:Z

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/cpuperf/PerformanceController;->mLocks:Ljava/util/ArrayList;

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/cpuperf/PerformanceController;->mPackageActivityToBinders:Ljava/util/HashMap;

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/cpuperf/PerformanceController;->mCPUControl:Lcom/android/server/cpuperf/QComBoostController;

    .line 38
    new-instance v1, Lcom/android/server/cpuperf/PerformanceController$AdjustPerformanceRunnable;

    invoke-direct {v1, p0, v0}, Lcom/android/server/cpuperf/PerformanceController$AdjustPerformanceRunnable;-><init>(Lcom/android/server/cpuperf/PerformanceController;Lcom/android/server/cpuperf/PerformanceController$1;)V

    iput-object v1, p0, Lcom/android/server/cpuperf/PerformanceController;->mAdjustPerformanceRunnable:Lcom/android/server/cpuperf/PerformanceController$AdjustPerformanceRunnable;

    .line 40
    new-instance v0, Lcom/android/server/cpuperf/PerformanceHelper;

    invoke-direct {v0}, Lcom/android/server/cpuperf/PerformanceHelper;-><init>()V

    iput-object v0, p0, Lcom/android/server/cpuperf/PerformanceController;->mPerfHelper:Lcom/android/server/cpuperf/PerformanceHelper;

    .line 43
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/cpuperf/PerformanceController;->mDumpSimpleTemp:Ljava/lang/String;

    .line 44
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/android/server/cpuperf/PerformanceController;->mDumpSimpleLock:Ljava/util/concurrent/locks/Lock;

    .line 45
    iget-object v0, p0, Lcom/android/server/cpuperf/PerformanceController;->mDumpSimpleLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/cpuperf/PerformanceController;->mDumpSimpleFinish:Ljava/util/concurrent/locks/Condition;

    .line 46
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/cpuperf/PerformanceController;->mDumpTemp:Ljava/lang/String;

    .line 47
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/android/server/cpuperf/PerformanceController;->mDumpLock:Ljava/util/concurrent/locks/Lock;

    .line 48
    iget-object v0, p0, Lcom/android/server/cpuperf/PerformanceController;->mDumpLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/cpuperf/PerformanceController;->mDumpFinish:Ljava/util/concurrent/locks/Condition;

    .line 51
    iput-object p1, p0, Lcom/android/server/cpuperf/PerformanceController;->mContext:Landroid/content/Context;

    .line 52
    iput-object p2, p0, Lcom/android/server/cpuperf/PerformanceController;->mHandler:Landroid/os/Handler;

    .line 54
    iget-object v0, p0, Lcom/android/server/cpuperf/PerformanceController;->mPerfHelper:Lcom/android/server/cpuperf/PerformanceHelper;

    invoke-static {}, Lcom/android/server/cpuperf/PerformanceHelper;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    new-instance v0, Lcom/android/server/cpuperf/QComBoostController;

    iget-object v1, p0, Lcom/android/server/cpuperf/PerformanceController;->mPerfHelper:Lcom/android/server/cpuperf/PerformanceHelper;

    invoke-direct {v0, v1}, Lcom/android/server/cpuperf/QComBoostController;-><init>(Lcom/android/server/cpuperf/PerformanceHelper;)V

    iput-object v0, p0, Lcom/android/server/cpuperf/PerformanceController;->mCPUControl:Lcom/android/server/cpuperf/QComBoostController;

    .line 56
    new-instance v0, Lcom/android/server/cpuperf/TgpaHelper;

    iget-object v1, p0, Lcom/android/server/cpuperf/PerformanceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/cpuperf/TgpaHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/cpuperf/PerformanceController;->mTgpaHelper:Lcom/android/server/cpuperf/TgpaHelper;

    .line 57
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 58
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "cn.nubia.cpudebugtool.broadcast"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 59
    iget-object v1, p0, Lcom/android/server/cpuperf/PerformanceController;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/cpuperf/PerformanceController$1;

    invoke-direct {v2, p0}, Lcom/android/server/cpuperf/PerformanceController$1;-><init>(Lcom/android/server/cpuperf/PerformanceController;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 66
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/cpuperf/PerformanceController;)Lcom/android/server/cpuperf/QComBoostController;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/cpuperf/PerformanceController;

    .line 27
    iget-object v0, p0, Lcom/android/server/cpuperf/PerformanceController;->mCPUControl:Lcom/android/server/cpuperf/QComBoostController;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/cpuperf/PerformanceController;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/cpuperf/PerformanceController;

    .line 27
    iget-object v0, p0, Lcom/android/server/cpuperf/PerformanceController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/cpuperf/PerformanceController;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/cpuperf/PerformanceController;

    .line 27
    iget-object v0, p0, Lcom/android/server/cpuperf/PerformanceController;->mLocks:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/cpuperf/PerformanceController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/cpuperf/PerformanceController;

    .line 27
    iget-boolean v0, p0, Lcom/android/server/cpuperf/PerformanceController;->mDumpDebugLog:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/cpuperf/PerformanceController;)Lcom/android/server/cpuperf/PerformanceController$AdjustPerformanceRunnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/cpuperf/PerformanceController;

    .line 27
    iget-object v0, p0, Lcom/android/server/cpuperf/PerformanceController;->mAdjustPerformanceRunnable:Lcom/android/server/cpuperf/PerformanceController$AdjustPerformanceRunnable;

    return-object v0
.end method

.method private hasQComBoostFrameworkFeature()Z
    .locals 2

    .line 80
    :try_start_0
    const-string v0, "android.util.BoostFramework"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    nop

    .line 85
    const/4 v0, 0x1

    return v0

    .line 81
    :catch_0
    move-exception v0

    .line 82
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    return v1
.end method

.method public static synthetic lambda$dump$1(Lcom/android/server/cpuperf/PerformanceController;)V
    .locals 4

    .line 531
    iget-object v0, p0, Lcom/android/server/cpuperf/PerformanceController;->mDumpLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 533
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 534
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "\nCurrent PerformanceLocks:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 535
    const-string v1, "Type\tTag\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 536
    iget-object v1, p0, Lcom/android/server/cpuperf/PerformanceController;->mLocks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/cpuperf/PerformanceController$PerformanceLock;

    .line 537
    .local v2, "pl":Lcom/android/server/cpuperf/PerformanceController$PerformanceLock;
    iget v3, v2, Lcom/android/server/cpuperf/PerformanceController$PerformanceLock;->mType:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 538
    const-string v3, "\t"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 539
    iget-object v3, v2, Lcom/android/server/cpuperf/PerformanceController$PerformanceLock;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 540
    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 541
    .end local v2    # "pl":Lcom/android/server/cpuperf/PerformanceController$PerformanceLock;
    goto :goto_0

    .line 542
    :cond_0
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 543
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/cpuperf/PerformanceController;->mDumpTemp:Ljava/lang/String;

    .line 544
    iget-object v1, p0, Lcom/android/server/cpuperf/PerformanceController;->mDumpFinish:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 546
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    iget-object v0, p0, Lcom/android/server/cpuperf/PerformanceController;->mDumpLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 547
    nop

    .line 548
    return-void

    .line 546
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/server/cpuperf/PerformanceController;->mDumpLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public static synthetic lambda$dumpSimple$0(Lcom/android/server/cpuperf/PerformanceController;)V
    .locals 5

    .line 494
    iget-object v0, p0, Lcom/android/server/cpuperf/PerformanceController;->mDumpSimpleLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 496
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 497
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/android/server/cpuperf/PerformanceController;->mLocks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/cpuperf/PerformanceController$PerformanceLock;

    .line 498
    .local v2, "pl":Lcom/android/server/cpuperf/PerformanceController$PerformanceLock;
    iget v3, v2, Lcom/android/server/cpuperf/PerformanceController$PerformanceLock;->mType:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 499
    const-string v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 500
    new-instance v3, Ljava/lang/StringBuffer;

    iget-object v4, v2, Lcom/android/server/cpuperf/PerformanceController$PerformanceLock;->mTag:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->reverse()Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 501
    const-string v3, "; "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 502
    .end local v2    # "pl":Lcom/android/server/cpuperf/PerformanceController$PerformanceLock;
    goto :goto_0

    .line 503
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/cpuperf/PerformanceController;->mDumpSimpleTemp:Ljava/lang/String;

    .line 504
    iget-object v1, p0, Lcom/android/server/cpuperf/PerformanceController;->mDumpSimpleFinish:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 506
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    iget-object v0, p0, Lcom/android/server/cpuperf/PerformanceController;->mDumpSimpleLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 507
    nop

    .line 508
    return-void

    .line 506
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/server/cpuperf/PerformanceController;->mDumpSimpleLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method private stringArgsToArray(Ljava/lang/String;)[I
    .locals 6
    .param p1, "args"    # Ljava/lang/String;

    .line 559
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 560
    .local v0, "argsArray":[Ljava/lang/String;
    array-length v1, v0

    new-array v1, v1, [I

    .line 561
    .local v1, "result":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_1

    .line 562
    aget-object v3, v0, v2

    const-string v4, "0x"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 563
    aget-object v3, v0, v2

    const-string v4, "0x"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v1, v2

    goto :goto_1

    .line 565
    :cond_0
    aget-object v3, v0, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v1, v2

    .line 561
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 568
    .end local v2    # "i":I
    :cond_1
    return-object v1
.end method


# virtual methods
.method public acquirePerformanceLock(Landroid/os/IBinder;Ljava/lang/String;IJ)V
    .locals 9
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "type"    # I
    .param p4, "duration"    # J

    .line 102
    if-nez p1, :cond_0

    .line 103
    const-string v0, "PerformanceController"

    const-string/jumbo v1, "token can not be null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    return-void

    .line 106
    :cond_0
    new-instance v0, Lcom/android/server/cpuperf/PerformanceController$AcquirePerformanceLockRunnable;

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move-wide v7, p4

    invoke-direct/range {v2 .. v8}, Lcom/android/server/cpuperf/PerformanceController$AcquirePerformanceLockRunnable;-><init>(Lcom/android/server/cpuperf/PerformanceController;Landroid/os/IBinder;Ljava/lang/String;IJ)V

    .line 107
    .local v0, "aplr":Lcom/android/server/cpuperf/PerformanceController$AcquirePerformanceLockRunnable;
    iget-object v1, p0, Lcom/android/server/cpuperf/PerformanceController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 108
    return-void
.end method

.method public boostForTgpa(IILjava/lang/String;)I
    .locals 2
    .param p1, "boostType"    # I
    .param p2, "boostLevel"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .line 163
    iget-object v0, p0, Lcom/android/server/cpuperf/PerformanceController;->mTgpaHelper:Lcom/android/server/cpuperf/TgpaHelper;

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/android/server/cpuperf/PerformanceController;->mTgpaHelper:Lcom/android/server/cpuperf/TgpaHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/cpuperf/TgpaHelper;->acquirePerformanceLockForTgpa(IILjava/lang/String;)V

    .line 165
    const-string v0, "PerformanceController"

    const-string v1, "clong boostForTgpa"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    const/4 v0, 0x0

    return v0

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/android/server/cpuperf/PerformanceController;->mTgpaHelper:Lcom/android/server/cpuperf/TgpaHelper;

    sget v1, Lcom/android/server/cpuperf/TgpaHelper;->CPUGPU_BOOST_LEVEL0:I

    invoke-virtual {v0, p1, v1, p3}, Lcom/android/server/cpuperf/TgpaHelper;->acquirePerformanceLockForTgpa(IILjava/lang/String;)V

    .line 169
    const-string v0, "PerformanceController"

    const-string v1, "clong fail to boostForTgpa"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    const/4 v0, 0x1

    return v0
.end method

.method public debugAcquire(ILjava/lang/String;)[I
    .locals 2
    .param p1, "duration"    # I
    .param p2, "args"    # Ljava/lang/String;

    .line 572
    iget-object v0, p0, Lcom/android/server/cpuperf/PerformanceController;->mPerfHelper:Lcom/android/server/cpuperf/PerformanceHelper;

    invoke-direct {p0, p2}, Lcom/android/server/cpuperf/PerformanceController;->stringArgsToArray(Ljava/lang/String;)[I

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/cpuperf/PerformanceHelper;->perfLockAcquireDebug(I[I)[I

    move-result-object v0

    return-object v0
.end method

.method public debugRelease(Ljava/lang/String;)[I
    .locals 2
    .param p1, "args"    # Ljava/lang/String;

    .line 576
    iget-object v0, p0, Lcom/android/server/cpuperf/PerformanceController;->mPerfHelper:Lcom/android/server/cpuperf/PerformanceHelper;

    invoke-direct {p0, p1}, Lcom/android/server/cpuperf/PerformanceController;->stringArgsToArray(Ljava/lang/String;)[I

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/cpuperf/PerformanceHelper;->perfLockReleaseDebug([I)[I

    move-result-object v0

    return-object v0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 520
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/cpuperf/PerformanceController;->setDebugLogEnabled(Z)V

    .line 521
    iget-object v1, p0, Lcom/android/server/cpuperf/PerformanceController;->mCPUControl:Lcom/android/server/cpuperf/QComBoostController;

    if-eqz v1, :cond_0

    .line 522
    iget-object v1, p0, Lcom/android/server/cpuperf/PerformanceController;->mCPUControl:Lcom/android/server/cpuperf/QComBoostController;

    invoke-virtual {v1, v0}, Lcom/android/server/cpuperf/QComBoostController;->setDebugLogEnabled(Z)V

    .line 523
    iget-object v1, p0, Lcom/android/server/cpuperf/PerformanceController;->mCPUControl:Lcom/android/server/cpuperf/QComBoostController;

    invoke-virtual {v1, p1}, Lcom/android/server/cpuperf/QComBoostController;->dump(Ljava/io/PrintWriter;)V

    .line 525
    :cond_0
    iget-object v1, p0, Lcom/android/server/cpuperf/PerformanceController;->mPerfHelper:Lcom/android/server/cpuperf/PerformanceHelper;

    if-eqz v1, :cond_1

    .line 526
    iget-object v1, p0, Lcom/android/server/cpuperf/PerformanceController;->mPerfHelper:Lcom/android/server/cpuperf/PerformanceHelper;

    invoke-virtual {v1, v0}, Lcom/android/server/cpuperf/PerformanceHelper;->setDebugLogEnabled(Z)V

    .line 528
    :cond_1
    iget-object v0, p0, Lcom/android/server/cpuperf/PerformanceController;->mDumpLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 530
    :try_start_0
    iget-object v0, p0, Lcom/android/server/cpuperf/PerformanceController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/cpuperf/-$$Lambda$PerformanceController$1NlPZZdDRWqQ7v99B_goz8sOAbA;

    invoke-direct {v1, p0}, Lcom/android/server/cpuperf/-$$Lambda$PerformanceController$1NlPZZdDRWqQ7v99B_goz8sOAbA;-><init>(Lcom/android/server/cpuperf/PerformanceController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 549
    iget-object v0, p0, Lcom/android/server/cpuperf/PerformanceController;->mDumpFinish:Ljava/util/concurrent/locks/Condition;

    const-wide/32 v1, 0x1dcd6500

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 553
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 550
    :catch_0
    move-exception v0

    .line 551
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 553
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_0
    iget-object v0, p0, Lcom/android/server/cpuperf/PerformanceController;->mDumpLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 554
    nop

    .line 555
    iget-object v0, p0, Lcom/android/server/cpuperf/PerformanceController;->mDumpTemp:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 556
    return-void

    .line 553
    :goto_1
    iget-object v1, p0, Lcom/android/server/cpuperf/PerformanceController;->mDumpLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public dumpSimple()Ljava/lang/String;
    .locals 3

    .line 491
    iget-object v0, p0, Lcom/android/server/cpuperf/PerformanceController;->mDumpSimpleLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 493
    :try_start_0
    iget-object v0, p0, Lcom/android/server/cpuperf/PerformanceController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/cpuperf/-$$Lambda$PerformanceController$cB5iJlILn0uK9EZFKnDIu90VRCE;

    invoke-direct {v1, p0}, Lcom/android/server/cpuperf/-$$Lambda$PerformanceController$cB5iJlILn0uK9EZFKnDIu90VRCE;-><init>(Lcom/android/server/cpuperf/PerformanceController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 509
    iget-object v0, p0, Lcom/android/server/cpuperf/PerformanceController;->mDumpSimpleFinish:Ljava/util/concurrent/locks/Condition;

    const-wide/32 v1, 0x1dcd6500

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 513
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 510
    :catch_0
    move-exception v0

    .line 511
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 513
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_0
    iget-object v0, p0, Lcom/android/server/cpuperf/PerformanceController;->mDumpSimpleLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 514
    nop

    .line 515
    iget-object v0, p0, Lcom/android/server/cpuperf/PerformanceController;->mDumpSimpleTemp:Ljava/lang/String;

    return-object v0

    .line 513
    :goto_1
    iget-object v1, p0, Lcom/android/server/cpuperf/PerformanceController;->mDumpSimpleLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
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

    .line 133
    iget-object v0, p0, Lcom/android/server/cpuperf/PerformanceController;->mCPUControl:Lcom/android/server/cpuperf/QComBoostController;

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/android/server/cpuperf/PerformanceController;->mCPUControl:Lcom/android/server/cpuperf/QComBoostController;

    invoke-virtual {v0, p1}, Lcom/android/server/cpuperf/QComBoostController;->getViewOptimizeInfoByActivityName(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 136
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public isInFullOnCpuset(Ljava/lang/String;)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 126
    const/4 v0, 0x0

    .line 127
    .local v0, "result":Z
    iget-object v1, p0, Lcom/android/server/cpuperf/PerformanceController;->mCPUControl:Lcom/android/server/cpuperf/QComBoostController;

    if-eqz v1, :cond_0

    .line 128
    iget-object v1, p0, Lcom/android/server/cpuperf/PerformanceController;->mCPUControl:Lcom/android/server/cpuperf/QComBoostController;

    invoke-virtual {v1, p1}, Lcom/android/server/cpuperf/QComBoostController;->isInFullOnCpuset(Ljava/lang/String;)Z

    move-result v0

    .line 129
    :cond_0
    return v0
.end method

.method public isInNoTransitionAnim(Ljava/lang/String;)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 120
    const/4 v0, 0x0

    .line 121
    .local v0, "result":Z
    iget-object v1, p0, Lcom/android/server/cpuperf/PerformanceController;->mCPUControl:Lcom/android/server/cpuperf/QComBoostController;

    if-eqz v1, :cond_0

    .line 122
    iget-object v1, p0, Lcom/android/server/cpuperf/PerformanceController;->mCPUControl:Lcom/android/server/cpuperf/QComBoostController;

    invoke-virtual {v1, p1}, Lcom/android/server/cpuperf/QComBoostController;->isInNoTransitionAnim(Ljava/lang/String;)Z

    move-result v0

    .line 123
    :cond_0
    return v0
.end method

.method public noteAppBackground(ILjava/lang/String;ILjava/lang/String;J)V
    .locals 1
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "pid"    # I
    .param p4, "processName"    # Ljava/lang/String;
    .param p5, "timestamp"    # J

    .line 147
    iget-object v0, p0, Lcom/android/server/cpuperf/PerformanceController;->mTgpaHelper:Lcom/android/server/cpuperf/TgpaHelper;

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/android/server/cpuperf/PerformanceController;->mTgpaHelper:Lcom/android/server/cpuperf/TgpaHelper;

    invoke-virtual {v0}, Lcom/android/server/cpuperf/TgpaHelper;->releasePerformanceLockForTgpa()V

    .line 150
    :cond_0
    return-void
.end method

.method public noteAppForeground(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;JZ)V
    .locals 3
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "pid"    # I
    .param p4, "processName"    # Ljava/lang/String;
    .param p5, "caller"    # Ljava/lang/String;
    .param p6, "timestamp"    # J
    .param p8, "isColdLaunch"    # Z

    .line 141
    iget-object v0, p0, Lcom/android/server/cpuperf/PerformanceController;->mTgpaHelper:Lcom/android/server/cpuperf/TgpaHelper;

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/android/server/cpuperf/PerformanceController;->mTgpaHelper:Lcom/android/server/cpuperf/TgpaHelper;

    const/4 v1, 0x3

    sget v2, Lcom/android/server/cpuperf/TgpaHelper;->CPUGPU_BOOST_RESTORE:I

    invoke-virtual {v0, v1, v2, p2}, Lcom/android/server/cpuperf/TgpaHelper;->acquirePerformanceLockForTgpa(IILjava/lang/String;)V

    .line 144
    :cond_0
    return-void
.end method

.method public notePausingActivity(IILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "uid"    # I
    .param p2, "stackId"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "activityName"    # Ljava/lang/String;

    .line 94
    iget-object v0, p0, Lcom/android/server/cpuperf/PerformanceController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/cpuperf/PerformanceController$PausingActivityRunnable;

    invoke-direct {v1, p0, p3, p4}, Lcom/android/server/cpuperf/PerformanceController$PausingActivityRunnable;-><init>(Lcom/android/server/cpuperf/PerformanceController;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 95
    return-void
.end method

.method public noteResumedAppDie(IILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "uid"    # I
    .param p2, "stackId"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "activityName"    # Ljava/lang/String;

    .line 98
    iget-object v0, p0, Lcom/android/server/cpuperf/PerformanceController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/cpuperf/PerformanceController$ResumedAppDieRunnable;

    invoke-direct {v1, p0, p3, p4}, Lcom/android/server/cpuperf/PerformanceController$ResumedAppDieRunnable;-><init>(Lcom/android/server/cpuperf/PerformanceController;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 99
    return-void
.end method

.method public noteResumingActivity(IILjava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "uid"    # I
    .param p2, "stackId"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "activityName"    # Ljava/lang/String;
    .param p5, "isHomeActivity"    # Z

    .line 90
    iget-object v0, p0, Lcom/android/server/cpuperf/PerformanceController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/cpuperf/PerformanceController$ResumingActivityRunnable;

    invoke-direct {v1, p0, p3, p4}, Lcom/android/server/cpuperf/PerformanceController$ResumingActivityRunnable;-><init>(Lcom/android/server/cpuperf/PerformanceController;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 91
    return-void
.end method

.method public releasePerformanceLock(Landroid/os/IBinder;)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;

    .line 111
    if-nez p1, :cond_0

    .line 112
    const-string v0, "PerformanceController"

    const-string/jumbo v1, "token can not be null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    return-void

    .line 115
    :cond_0
    new-instance v0, Lcom/android/server/cpuperf/PerformanceController$ReleasePerformanceLockRunnable;

    invoke-direct {v0, p0, p1}, Lcom/android/server/cpuperf/PerformanceController$ReleasePerformanceLockRunnable;-><init>(Lcom/android/server/cpuperf/PerformanceController;Landroid/os/IBinder;)V

    .line 116
    .local v0, "rplr":Lcom/android/server/cpuperf/PerformanceController$ReleasePerformanceLockRunnable;
    iget-object v1, p0, Lcom/android/server/cpuperf/PerformanceController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 117
    return-void
.end method

.method public reloadPreformanceConfiguration()V
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/android/server/cpuperf/PerformanceController;->mCPUControl:Lcom/android/server/cpuperf/QComBoostController;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/android/server/cpuperf/PerformanceController;->mCPUControl:Lcom/android/server/cpuperf/QComBoostController;

    invoke-virtual {v0}, Lcom/android/server/cpuperf/QComBoostController;->reinitData()V

    .line 72
    :cond_0
    return-void
.end method

.method public setDebugLogEnabled(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .line 75
    iput-boolean p1, p0, Lcom/android/server/cpuperf/PerformanceController;->mDumpDebugLog:Z

    .line 76
    return-void
.end method

.method public setThreadCpusetForTgpa(IZ)I
    .locals 3
    .param p1, "tid"    # I
    .param p2, "bigCluster"    # Z

    .line 153
    iget-object v0, p0, Lcom/android/server/cpuperf/PerformanceController;->mTgpaHelper:Lcom/android/server/cpuperf/TgpaHelper;

    if-eqz v0, :cond_0

    .line 154
    const-string v0, "PerformanceController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clong setThreadCpusetForTgpa tid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/bigCluster="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    iget-object v0, p0, Lcom/android/server/cpuperf/PerformanceController;->mTgpaHelper:Lcom/android/server/cpuperf/TgpaHelper;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/cpuperf/TgpaHelper;->setThreadCpusetForTgpa(IZ)I

    move-result v0

    return v0

    .line 157
    :cond_0
    const-string v0, "PerformanceController"

    const-string v1, "clong fail to setThreadCpusetForTgpa"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    const/4 v0, 0x1

    return v0
.end method
