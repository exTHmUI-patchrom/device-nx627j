.class Lcom/android/internal/app/ResolverComparator;
.super Ljava/lang/Object;
.source "ResolverComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/ResolverComparator$ResolverRankerServiceConnection;,
        Lcom/android/internal/app/ResolverComparator$AfterCompute;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;",
        ">;"
    }
.end annotation


# static fields
.field private static final CONNECTION_COST_TIMEOUT_MILLIS:I = 0xc8

.field private static final DEBUG:Z = false

.field private static final NUM_OF_TOP_ANNOTATIONS_TO_USE:I = 0x3

.field private static final RECENCY_MULTIPLIER:F = 2.0f

.field private static final RECENCY_TIME_PERIOD:J = 0x2932e00L

.field private static final RESOLVER_RANKER_RESULT_TIMEOUT:I = 0x1

.field private static final RESOLVER_RANKER_SERVICE_RESULT:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ResolverComparator"

.field private static final USAGE_STATS_PERIOD:J = 0x240c8400L

.field private static final WATCHDOG_TIMEOUT_MILLIS:I = 0x1f4


# instance fields
.field private mAction:Ljava/lang/String;

.field private mAfterCompute:Lcom/android/internal/app/ResolverComparator$AfterCompute;

.field private mAnnotations:[Ljava/lang/String;

.field private final mCollator:Ljava/text/Collator;

.field private mConnectSignal:Ljava/util/concurrent/CountDownLatch;

.field private mConnection:Lcom/android/internal/app/ResolverComparator$ResolverRankerServiceConnection;

.field private mContentType:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private final mCurrentTime:J

.field private final mHandler:Landroid/os/Handler;

.field private final mHttp:Z

.field private final mLock:Ljava/lang/Object;

.field private final mPm:Landroid/content/pm/PackageManager;

.field private mRanker:Landroid/service/resolver/IResolverRankerService;

.field private mRankerServiceName:Landroid/content/ComponentName;

.field private final mReferrerPackage:Ljava/lang/String;

.field private mResolvedRankerName:Landroid/content/ComponentName;

.field private final mSinceTime:J

.field private final mStats:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/app/usage/UsageStats;",
            ">;"
        }
    .end annotation
.end field

.field private mTargets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/service/resolver/ResolverTarget;",
            ">;"
        }
    .end annotation
.end field

.field private final mTargetsDict:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Landroid/content/ComponentName;",
            "Landroid/service/resolver/ResolverTarget;",
            ">;"
        }
    .end annotation
.end field

.field private final mUsm:Landroid/app/usage/UsageStatsManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Lcom/android/internal/app/ResolverComparator$AfterCompute;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "referrerPackage"    # Ljava/lang/String;
    .param p4, "afterCompute"    # Lcom/android/internal/app/ResolverComparator$AfterCompute;

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/ResolverComparator;->mTargetsDict:Ljava/util/LinkedHashMap;

    .line 100
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/ResolverComparator;->mLock:Ljava/lang/Object;

    .line 113
    new-instance v0, Lcom/android/internal/app/ResolverComparator$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/internal/app/ResolverComparator$1;-><init>(Lcom/android/internal/app/ResolverComparator;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/internal/app/ResolverComparator;->mHandler:Landroid/os/Handler;

    .line 170
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v0}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/ResolverComparator;->mCollator:Ljava/text/Collator;

    .line 171
    invoke-virtual {p2}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 172
    .local v0, "scheme":Ljava/lang/String;
    const-string v1, "http"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "https"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    iput-boolean v1, p0, Lcom/android/internal/app/ResolverComparator;->mHttp:Z

    .line 173
    iput-object p3, p0, Lcom/android/internal/app/ResolverComparator;->mReferrerPackage:Ljava/lang/String;

    .line 174
    iput-object p4, p0, Lcom/android/internal/app/ResolverComparator;->mAfterCompute:Lcom/android/internal/app/ResolverComparator$AfterCompute;

    .line 175
    iput-object p1, p0, Lcom/android/internal/app/ResolverComparator;->mContext:Landroid/content/Context;

    .line 177
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/app/ResolverComparator;->mPm:Landroid/content/pm/PackageManager;

    .line 178
    const-string/jumbo v1, "usagestats"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/usage/UsageStatsManager;

    iput-object v1, p0, Lcom/android/internal/app/ResolverComparator;->mUsm:Landroid/app/usage/UsageStatsManager;

    .line 180
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/internal/app/ResolverComparator;->mCurrentTime:J

    .line 181
    iget-wide v1, p0, Lcom/android/internal/app/ResolverComparator;->mCurrentTime:J

    const-wide/32 v3, 0x240c8400

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/internal/app/ResolverComparator;->mSinceTime:J

    .line 182
    iget-object v1, p0, Lcom/android/internal/app/ResolverComparator;->mUsm:Landroid/app/usage/UsageStatsManager;

    iget-wide v2, p0, Lcom/android/internal/app/ResolverComparator;->mSinceTime:J

    iget-wide v4, p0, Lcom/android/internal/app/ResolverComparator;->mCurrentTime:J

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/app/usage/UsageStatsManager;->queryAndAggregateUsageStats(JJ)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/app/ResolverComparator;->mStats:Ljava/util/Map;

    .line 183
    invoke-virtual {p2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/app/ResolverComparator;->mContentType:Ljava/lang/String;

    .line 184
    invoke-virtual {p0, p2}, Lcom/android/internal/app/ResolverComparator;->getContentAnnotations(Landroid/content/Intent;)V

    .line 185
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/app/ResolverComparator;->mAction:Ljava/lang/String;

    .line 186
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/android/internal/app/ResolverComparator;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v1, p0, Lcom/android/internal/app/ResolverComparator;->mRankerServiceName:Landroid/content/ComponentName;

    .line 187
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/app/ResolverComparator;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ResolverComparator;

    .line 67
    iget-object v0, p0, Lcom/android/internal/app/ResolverComparator;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/app/ResolverComparator;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ResolverComparator;

    .line 67
    iget-object v0, p0, Lcom/android/internal/app/ResolverComparator;->mTargets:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/internal/app/ResolverComparator;Landroid/content/ComponentName;)Landroid/content/ComponentName;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/app/ResolverComparator;
    .param p1, "x1"    # Landroid/content/ComponentName;

    .line 67
    iput-object p1, p0, Lcom/android/internal/app/ResolverComparator;->mRankerServiceName:Landroid/content/ComponentName;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/internal/app/ResolverComparator;)Landroid/content/ComponentName;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ResolverComparator;

    .line 67
    iget-object v0, p0, Lcom/android/internal/app/ResolverComparator;->mResolvedRankerName:Landroid/content/ComponentName;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/app/ResolverComparator;)Lcom/android/internal/app/ResolverComparator$AfterCompute;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ResolverComparator;

    .line 67
    iget-object v0, p0, Lcom/android/internal/app/ResolverComparator;->mAfterCompute:Lcom/android/internal/app/ResolverComparator$AfterCompute;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/app/ResolverComparator;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ResolverComparator;

    .line 67
    iget-object v0, p0, Lcom/android/internal/app/ResolverComparator;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/internal/app/ResolverComparator;Landroid/service/resolver/IResolverRankerService;)Landroid/service/resolver/IResolverRankerService;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/app/ResolverComparator;
    .param p1, "x1"    # Landroid/service/resolver/IResolverRankerService;

    .line 67
    iput-object p1, p0, Lcom/android/internal/app/ResolverComparator;->mRanker:Landroid/service/resolver/IResolverRankerService;

    return-object p1
.end method

.method private addDefaultSelectProbability(Landroid/service/resolver/ResolverTarget;)V
    .locals 6
    .param p1, "target"    # Landroid/service/resolver/ResolverTarget;

    .line 605
    invoke-virtual {p1}, Landroid/service/resolver/ResolverTarget;->getLaunchScore()F

    move-result v0

    const v1, 0x402379a7    # 2.5543f

    mul-float/2addr v1, v0

    invoke-virtual {p1}, Landroid/service/resolver/ResolverTarget;->getTimeSpentScore()F

    move-result v0

    const v2, 0x4035d639

    mul-float/2addr v2, v0

    add-float/2addr v1, v2

    .line 606
    invoke-virtual {p1}, Landroid/service/resolver/ResolverTarget;->getRecencyScore()F

    move-result v0

    const v2, 0x3e89ba5e    # 0.269f

    mul-float/2addr v2, v0

    add-float/2addr v1, v2

    invoke-virtual {p1}, Landroid/service/resolver/ResolverTarget;->getChooserScore()F

    move-result v0

    const v2, 0x40871c43    # 4.2222f

    mul-float/2addr v2, v0

    add-float/2addr v1, v2

    .line 607
    .local v1, "sum":F
    const v0, 0x3fd41206    # 1.6568f

    sub-float/2addr v0, v1

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->exp(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    add-double/2addr v2, v4

    div-double/2addr v4, v2

    double-to-float v0, v4

    invoke-virtual {p1, v0}, Landroid/service/resolver/ResolverTarget;->setSelectProbability(F)V

    .line 608
    return-void
.end method

.method private initRanker(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 437
    iget-object v0, p0, Lcom/android/internal/app/ResolverComparator;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 438
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/app/ResolverComparator;->mConnection:Lcom/android/internal/app/ResolverComparator$ResolverRankerServiceConnection;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/app/ResolverComparator;->mRanker:Landroid/service/resolver/IResolverRankerService;

    if-eqz v1, :cond_0

    .line 442
    monitor-exit v0

    return-void

    .line 444
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 445
    invoke-direct {p0}, Lcom/android/internal/app/ResolverComparator;->resolveRankerService()Landroid/content/Intent;

    move-result-object v0

    .line 446
    .local v0, "intent":Landroid/content/Intent;
    if-nez v0, :cond_1

    .line 447
    return-void

    .line 449
    :cond_1
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v1, p0, Lcom/android/internal/app/ResolverComparator;->mConnectSignal:Ljava/util/concurrent/CountDownLatch;

    .line 450
    new-instance v1, Lcom/android/internal/app/ResolverComparator$ResolverRankerServiceConnection;

    iget-object v3, p0, Lcom/android/internal/app/ResolverComparator;->mConnectSignal:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v1, p0, v3}, Lcom/android/internal/app/ResolverComparator$ResolverRankerServiceConnection;-><init>(Lcom/android/internal/app/ResolverComparator;Ljava/util/concurrent/CountDownLatch;)V

    iput-object v1, p0, Lcom/android/internal/app/ResolverComparator;->mConnection:Lcom/android/internal/app/ResolverComparator$ResolverRankerServiceConnection;

    .line 451
    iget-object v1, p0, Lcom/android/internal/app/ResolverComparator;->mConnection:Lcom/android/internal/app/ResolverComparator$ResolverRankerServiceConnection;

    sget-object v3, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    .line 452
    return-void

    .line 444
    .end local v0    # "intent":Landroid/content/Intent;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method static isPersistentProcess(Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;)Z
    .locals 2
    .param p0, "rci"    # Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    .line 620
    const/4 v0, 0x0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 621
    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    nop

    :cond_0
    return v0

    .line 624
    :cond_1
    return v0
.end method

.method private logMetrics(I)V
    .locals 5
    .param p1, "selectedPos"    # I

    .line 424
    iget-object v0, p0, Lcom/android/internal/app/ResolverComparator;->mRankerServiceName:Landroid/content/ComponentName;

    if-eqz v0, :cond_1

    .line 425
    new-instance v0, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {v0}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    .line 426
    .local v0, "metricsLogger":Lcom/android/internal/logging/MetricsLogger;
    new-instance v1, Landroid/metrics/LogMaker;

    const/16 v2, 0x43d

    invoke-direct {v1, v2}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 427
    .local v1, "log":Landroid/metrics/LogMaker;
    iget-object v2, p0, Lcom/android/internal/app/ResolverComparator;->mRankerServiceName:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/metrics/LogMaker;->setComponentName(Landroid/content/ComponentName;)Landroid/metrics/LogMaker;

    .line 428
    iget-object v2, p0, Lcom/android/internal/app/ResolverComparator;->mAnnotations:[Ljava/lang/String;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    .line 429
    .local v2, "isCategoryUsed":I
    :goto_0
    const/16 v3, 0x43e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 430
    const/16 v3, 0x43f

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 431
    invoke-virtual {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 433
    .end local v0    # "metricsLogger":Lcom/android/internal/logging/MetricsLogger;
    .end local v1    # "log":Landroid/metrics/LogMaker;
    .end local v2    # "isCategoryUsed":I
    :cond_1
    return-void
.end method

.method private predictSelectProbabilities(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/service/resolver/ResolverTarget;",
            ">;)V"
        }
    .end annotation

    .line 575
    .local p1, "targets":Ljava/util/List;, "Ljava/util/List<Landroid/service/resolver/ResolverTarget;>;"
    iget-object v0, p0, Lcom/android/internal/app/ResolverComparator;->mConnection:Lcom/android/internal/app/ResolverComparator$ResolverRankerServiceConnection;

    if-nez v0, :cond_0

    goto :goto_1

    .line 581
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/app/ResolverComparator;->mConnectSignal:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v1, 0xc8

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 582
    iget-object v0, p0, Lcom/android/internal/app/ResolverComparator;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 583
    :try_start_1
    iget-object v1, p0, Lcom/android/internal/app/ResolverComparator;->mRanker:Landroid/service/resolver/IResolverRankerService;

    if-eqz v1, :cond_1

    .line 584
    iget-object v1, p0, Lcom/android/internal/app/ResolverComparator;->mRanker:Landroid/service/resolver/IResolverRankerService;

    iget-object v2, p0, Lcom/android/internal/app/ResolverComparator;->mConnection:Lcom/android/internal/app/ResolverComparator$ResolverRankerServiceConnection;

    iget-object v2, v2, Lcom/android/internal/app/ResolverComparator$ResolverRankerServiceConnection;->resolverRankerResult:Landroid/service/resolver/IResolverRankerResult;

    invoke-interface {v1, p1, v2}, Landroid/service/resolver/IResolverRankerService;->predict(Ljava/util/List;Landroid/service/resolver/IResolverRankerResult;)V

    .line 585
    monitor-exit v0

    return-void

    .line 591
    :cond_1
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 594
    :catch_0
    move-exception v0

    .line 595
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ResolverComparator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error in Predict: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_1

    .line 592
    :catch_1
    move-exception v0

    .line 593
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v1, "ResolverComparator"

    const-string v2, "Error in Wait for Service Connection."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_0
    nop

    .line 598
    :goto_1
    iget-object v0, p0, Lcom/android/internal/app/ResolverComparator;->mAfterCompute:Lcom/android/internal/app/ResolverComparator$AfterCompute;

    if-eqz v0, :cond_2

    .line 599
    iget-object v0, p0, Lcom/android/internal/app/ResolverComparator;->mAfterCompute:Lcom/android/internal/app/ResolverComparator$AfterCompute;

    invoke-interface {v0}, Lcom/android/internal/app/ResolverComparator$AfterCompute;->afterCompute()V

    .line 601
    :cond_2
    return-void
.end method

.method private reset()V
    .locals 4

    .line 565
    iget-object v0, p0, Lcom/android/internal/app/ResolverComparator;->mTargetsDict:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    .line 566
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/app/ResolverComparator;->mTargets:Ljava/util/ArrayList;

    .line 567
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/android/internal/app/ResolverComparator;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v1, p0, Lcom/android/internal/app/ResolverComparator;->mRankerServiceName:Landroid/content/ComponentName;

    .line 568
    iput-object v0, p0, Lcom/android/internal/app/ResolverComparator;->mResolvedRankerName:Landroid/content/ComponentName;

    .line 569
    const/16 v0, 0x1f4

    invoke-direct {p0, v0}, Lcom/android/internal/app/ResolverComparator;->startWatchDog(I)V

    .line 570
    iget-object v0, p0, Lcom/android/internal/app/ResolverComparator;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/internal/app/ResolverComparator;->initRanker(Landroid/content/Context;)V

    .line 571
    return-void
.end method

.method private resolveRankerService()Landroid/content/Intent;
    .locals 10

    .line 456
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.service.resolver.ResolverRankerService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 457
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/internal/app/ResolverComparator;->mPm:Landroid/content/pm/PackageManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 458
    .local v1, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 459
    .local v4, "resolveInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v4, :cond_0

    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v5, :cond_0

    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v5, :cond_1

    .line 464
    goto :goto_0

    .line 466
    :cond_1
    new-instance v5, Landroid/content/ComponentName;

    iget-object v6, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v7, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v7, v7, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    .local v5, "componentName":Landroid/content/ComponentName;
    :try_start_0
    iget-object v6, p0, Lcom/android/internal/app/ResolverComparator;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v6, v5, v2}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v6

    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    .line 471
    .local v6, "perm":Ljava/lang/String;
    const-string v7, "android.permission.BIND_RESOLVER_RANKER_SERVICE"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 472
    const-string v7, "ResolverComparator"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ResolverRankerService "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " does not require permission "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "android.permission.BIND_RESOLVER_RANKER_SERVICE"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " - this service will not be queried for ResolverComparator. add android:permission=\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "android.permission.BIND_RESOLVER_RANKER_SERVICE"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\" to the <service> tag for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " in the manifest."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    goto :goto_0

    .line 481
    :cond_2
    iget-object v7, p0, Lcom/android/internal/app/ResolverComparator;->mPm:Landroid/content/pm/PackageManager;

    const-string v8, "android.permission.PROVIDE_RESOLVER_RANKER_SERVICE"

    iget-object v9, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v9, v9, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_3

    .line 484
    const-string v7, "ResolverComparator"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ResolverRankerService "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " does not hold permission "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "android.permission.PROVIDE_RESOLVER_RANKER_SERVICE"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " - this service will not be queried for ResolverComparator."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 487
    goto/16 :goto_0

    .line 493
    .end local v6    # "perm":Ljava/lang/String;
    :cond_3
    nop

    .line 497
    iput-object v5, p0, Lcom/android/internal/app/ResolverComparator;->mResolvedRankerName:Landroid/content/ComponentName;

    .line 498
    invoke-virtual {v0, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 499
    return-object v0

    .line 489
    :catch_0
    move-exception v6

    .line 490
    .local v6, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v7, "ResolverComparator"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Could not look up service "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, "; component name not found"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    goto/16 :goto_0

    .line 501
    .end local v4    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v5    # "componentName":Landroid/content/ComponentName;
    .end local v6    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_4
    const/4 v2, 0x0

    return-object v2
.end method

.method private setFeatures(Landroid/service/resolver/ResolverTarget;FFFF)V
    .locals 0
    .param p1, "target"    # Landroid/service/resolver/ResolverTarget;
    .param p2, "recencyScore"    # F
    .param p3, "launchScore"    # F
    .param p4, "timeSpentScore"    # F
    .param p5, "chooserScore"    # F

    .line 613
    invoke-virtual {p1, p2}, Landroid/service/resolver/ResolverTarget;->setRecencyScore(F)V

    .line 614
    invoke-virtual {p1, p3}, Landroid/service/resolver/ResolverTarget;->setLaunchScore(F)V

    .line 615
    invoke-virtual {p1, p4}, Landroid/service/resolver/ResolverTarget;->setTimeSpentScore(F)V

    .line 616
    invoke-virtual {p1, p5}, Landroid/service/resolver/ResolverTarget;->setChooserScore(F)V

    .line 617
    return-void
.end method

.method private startWatchDog(I)V
    .locals 4
    .param p1, "timeOutLimit"    # I

    .line 507
    iget-object v0, p0, Lcom/android/internal/app/ResolverComparator;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 508
    const-string v0, "ResolverComparator"

    const-string v1, "Error: Handler is Null; Needs to be initialized."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ResolverComparator;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 511
    return-void
.end method


# virtual methods
.method public compare(Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;)I
    .locals 11
    .param p1, "lhsp"    # Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    .param p2, "rhsp"    # Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    .line 301
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 302
    .local v1, "lhs":Landroid/content/pm/ResolveInfo;
    invoke-virtual {p2, v0}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 305
    .local v2, "rhs":Landroid/content/pm/ResolveInfo;
    iget v3, v1, Landroid/content/pm/ResolveInfo;->targetUserId:I

    const/4 v4, -0x2

    const/4 v5, 0x1

    if-eq v3, v4, :cond_1

    .line 306
    iget v3, v2, Landroid/content/pm/ResolveInfo;->targetUserId:I

    if-eq v3, v4, :cond_0

    goto :goto_0

    :cond_0
    move v0, v5

    :goto_0
    return v0

    .line 308
    :cond_1
    iget v0, v2, Landroid/content/pm/ResolveInfo;->targetUserId:I

    const/4 v3, -0x1

    if-eq v0, v4, :cond_2

    .line 309
    return v3

    .line 312
    :cond_2
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverComparator;->mHttp:Z

    if-eqz v0, :cond_4

    .line 316
    iget v0, v1, Landroid/content/pm/ResolveInfo;->match:I

    invoke-static {v0}, Lcom/android/internal/app/ResolverActivity;->isSpecificUriMatch(I)Z

    move-result v0

    .line 317
    .local v0, "lhsSpecific":Z
    iget v4, v2, Landroid/content/pm/ResolveInfo;->match:I

    invoke-static {v4}, Lcom/android/internal/app/ResolverActivity;->isSpecificUriMatch(I)Z

    move-result v4

    .line 318
    .local v4, "rhsSpecific":Z
    if-eq v0, v4, :cond_4

    .line 319
    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    move v3, v5

    :goto_1
    return v3

    .line 323
    .end local v0    # "lhsSpecific":Z
    .end local v4    # "rhsSpecific":Z
    :cond_4
    invoke-virtual {p1}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->isPinned()Z

    move-result v0

    .line 324
    .local v0, "lPinned":Z
    invoke-virtual {p2}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->isPinned()Z

    move-result v4

    .line 326
    .local v4, "rPinned":Z
    if-eqz v0, :cond_5

    if-nez v4, :cond_5

    .line 327
    return v3

    .line 328
    :cond_5
    if-nez v0, :cond_6

    if-eqz v4, :cond_6

    .line 329
    return v5

    .line 333
    :cond_6
    if-nez v0, :cond_8

    if-nez v4, :cond_8

    .line 334
    iget-object v6, p0, Lcom/android/internal/app/ResolverComparator;->mStats:Ljava/util/Map;

    if-eqz v6, :cond_8

    .line 335
    iget-object v6, p0, Lcom/android/internal/app/ResolverComparator;->mTargetsDict:Ljava/util/LinkedHashMap;

    new-instance v7, Landroid/content/ComponentName;

    iget-object v8, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v9, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v7, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/service/resolver/ResolverTarget;

    .line 337
    .local v6, "lhsTarget":Landroid/service/resolver/ResolverTarget;
    iget-object v7, p0, Lcom/android/internal/app/ResolverComparator;->mTargetsDict:Ljava/util/LinkedHashMap;

    new-instance v8, Landroid/content/ComponentName;

    iget-object v9, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v10, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v8, v9, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/service/resolver/ResolverTarget;

    .line 340
    .local v7, "rhsTarget":Landroid/service/resolver/ResolverTarget;
    if-eqz v6, :cond_8

    if-eqz v7, :cond_8

    .line 341
    nop

    .line 342
    invoke-virtual {v7}, Landroid/service/resolver/ResolverTarget;->getSelectProbability()F

    move-result v8

    invoke-virtual {v6}, Landroid/service/resolver/ResolverTarget;->getSelectProbability()F

    move-result v9

    .line 341
    invoke-static {v8, v9}, Ljava/lang/Float;->compare(FF)I

    move-result v8

    .line 344
    .local v8, "selectProbabilityDiff":I
    if-eqz v8, :cond_8

    .line 345
    if-lez v8, :cond_7

    move v3, v5

    nop

    :cond_7
    return v3

    .line 351
    .end local v6    # "lhsTarget":Landroid/service/resolver/ResolverTarget;
    .end local v7    # "rhsTarget":Landroid/service/resolver/ResolverTarget;
    .end local v8    # "selectProbabilityDiff":I
    :cond_8
    iget-object v3, p0, Lcom/android/internal/app/ResolverComparator;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v3}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 352
    .local v3, "sa":Ljava/lang/CharSequence;
    if-nez v3, :cond_9

    iget-object v5, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 353
    :cond_9
    iget-object v5, p0, Lcom/android/internal/app/ResolverComparator;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v5}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 354
    .local v5, "sb":Ljava/lang/CharSequence;
    if-nez v5, :cond_a

    iget-object v6, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 356
    :cond_a
    iget-object v6, p0, Lcom/android/internal/app/ResolverComparator;->mCollator:Ljava/text/Collator;

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    return v6
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 67
    check-cast p1, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    check-cast p2, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/app/ResolverComparator;->compare(Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;)I

    move-result p1

    return p1
.end method

.method public compute(Ljava/util/List;)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;",
            ">;)V"
        }
    .end annotation

    .local p1, "targets":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;>;"
    move-object/from16 v6, p0

    .line 211
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/app/ResolverComparator;->reset()V

    .line 213
    iget-wide v0, v6, Lcom/android/internal/app/ResolverComparator;->mCurrentTime:J

    const-wide/32 v2, 0x2932e00

    sub-long v7, v0, v2

    .line 215
    .local v7, "recentSinceTime":J
    const/high16 v0, 0x3f800000    # 1.0f

    .line 216
    .local v0, "mostRecencyScore":F
    const/high16 v1, 0x3f800000    # 1.0f

    .line 217
    .local v1, "mostTimeSpentScore":F
    const/high16 v2, 0x3f800000    # 1.0f

    .line 218
    .local v2, "mostLaunchScore":F
    const/high16 v3, 0x3f800000    # 1.0f

    .line 220
    .local v3, "mostChooserScore":F
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v9, v0

    move v10, v1

    move v11, v2

    move v12, v3

    .end local v0    # "mostRecencyScore":F
    .end local v1    # "mostTimeSpentScore":F
    .end local v2    # "mostLaunchScore":F
    .end local v3    # "mostChooserScore":F
    .local v9, "mostRecencyScore":F
    .local v10, "mostTimeSpentScore":F
    .local v11, "mostLaunchScore":F
    .local v12, "mostChooserScore":F
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    .line 221
    .local v0, "target":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    new-instance v1, Landroid/service/resolver/ResolverTarget;

    invoke-direct {v1}, Landroid/service/resolver/ResolverTarget;-><init>()V

    .line 222
    .local v1, "resolverTarget":Landroid/service/resolver/ResolverTarget;
    iget-object v2, v6, Lcom/android/internal/app/ResolverComparator;->mTargetsDict:Ljava/util/LinkedHashMap;

    iget-object v3, v0, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->name:Landroid/content/ComponentName;

    invoke-virtual {v2, v3, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    iget-object v2, v6, Lcom/android/internal/app/ResolverComparator;->mStats:Ljava/util/Map;

    iget-object v3, v0, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->name:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/usage/UsageStats;

    .line 224
    .local v2, "pkStats":Landroid/app/usage/UsageStats;
    if-eqz v2, :cond_7

    .line 228
    iget-object v3, v0, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->name:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v5, v6, Lcom/android/internal/app/ResolverComparator;->mReferrerPackage:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 229
    invoke-static {v0}, Lcom/android/internal/app/ResolverComparator;->isPersistentProcess(Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 230
    nop

    .line 231
    invoke-virtual {v2}, Landroid/app/usage/UsageStats;->getLastTimeUsed()J

    move-result-wide v13

    sub-long/2addr v13, v7

    move-object v15, v4

    const-wide/16 v3, 0x0

    invoke-static {v13, v14, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    long-to-float v3, v3

    .line 232
    .local v3, "recencyScore":F
    invoke-virtual {v1, v3}, Landroid/service/resolver/ResolverTarget;->setRecencyScore(F)V

    .line 233
    cmpl-float v4, v3, v9

    if-lez v4, :cond_1

    .line 234
    move v9, v3

    .end local v3    # "recencyScore":F
    goto :goto_1

    .line 237
    :cond_0
    move-object v15, v4

    :cond_1
    :goto_1
    invoke-virtual {v2}, Landroid/app/usage/UsageStats;->getTotalTimeInForeground()J

    move-result-wide v3

    long-to-float v3, v3

    .line 238
    .local v3, "timeSpentScore":F
    invoke-virtual {v1, v3}, Landroid/service/resolver/ResolverTarget;->setTimeSpentScore(F)V

    .line 239
    cmpl-float v4, v3, v10

    if-lez v4, :cond_2

    .line 240
    move v10, v3

    .line 242
    :cond_2
    iget v4, v2, Landroid/app/usage/UsageStats;->mLaunchCount:I

    int-to-float v4, v4

    .line 243
    .local v4, "launchScore":F
    invoke-virtual {v1, v4}, Landroid/service/resolver/ResolverTarget;->setLaunchScore(F)V

    .line 244
    cmpl-float v5, v4, v11

    if-lez v5, :cond_3

    .line 245
    move v11, v4

    .line 248
    :cond_3
    const/4 v5, 0x0

    .line 249
    .local v5, "chooserScore":F
    iget-object v13, v2, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    if-eqz v13, :cond_6

    iget-object v13, v6, Lcom/android/internal/app/ResolverComparator;->mAction:Ljava/lang/String;

    if-eqz v13, :cond_6

    iget-object v13, v2, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    iget-object v14, v6, Lcom/android/internal/app/ResolverComparator;->mAction:Ljava/lang/String;

    .line 250
    invoke-virtual {v13, v14}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    if-eqz v13, :cond_6

    .line 251
    iget-object v13, v2, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    iget-object v14, v6, Lcom/android/internal/app/ResolverComparator;->mAction:Ljava/lang/String;

    invoke-virtual {v13, v14}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/util/ArrayMap;

    iget-object v14, v6, Lcom/android/internal/app/ResolverComparator;->mContentType:Ljava/lang/String;

    .line 252
    move-object/from16 v16, v0

    const/4 v0, 0x0

    .end local v0    # "target":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    .local v16, "target":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    move/from16 v17, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .end local v3    # "timeSpentScore":F
    .local v17, "timeSpentScore":F
    invoke-virtual {v13, v14, v3}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-float v5, v3

    .line 253
    iget-object v3, v6, Lcom/android/internal/app/ResolverComparator;->mAnnotations:[Ljava/lang/String;

    if-eqz v3, :cond_5

    .line 254
    iget-object v3, v6, Lcom/android/internal/app/ResolverComparator;->mAnnotations:[Ljava/lang/String;

    array-length v3, v3

    .line 255
    .local v3, "size":I
    move v13, v5

    move v5, v0

    .local v5, "i":I
    .local v13, "chooserScore":F
    :goto_2
    if-ge v5, v3, :cond_4

    .line 256
    iget-object v14, v2, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    iget-object v0, v6, Lcom/android/internal/app/ResolverComparator;->mAction:Ljava/lang/String;

    invoke-virtual {v14, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    iget-object v14, v6, Lcom/android/internal/app/ResolverComparator;->mAnnotations:[Ljava/lang/String;

    aget-object v14, v14, v5

    .line 257
    move-object/from16 v18, v2

    move/from16 v19, v3

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .end local v2    # "pkStats":Landroid/app/usage/UsageStats;
    .end local v3    # "size":I
    .local v18, "pkStats":Landroid/app/usage/UsageStats;
    .local v19, "size":I
    invoke-virtual {v0, v14, v3}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v13, v0

    .line 255
    add-int/lit8 v5, v5, 0x1

    move v0, v2

    move-object/from16 v2, v18

    move/from16 v3, v19

    goto :goto_2

    .line 270
    .end local v5    # "i":I
    .end local v18    # "pkStats":Landroid/app/usage/UsageStats;
    .end local v19    # "size":I
    .restart local v2    # "pkStats":Landroid/app/usage/UsageStats;
    :cond_4
    move-object/from16 v18, v2

    move v5, v13

    goto :goto_3

    .end local v13    # "chooserScore":F
    .local v5, "chooserScore":F
    :cond_5
    move-object/from16 v18, v2

    .end local v2    # "pkStats":Landroid/app/usage/UsageStats;
    .restart local v18    # "pkStats":Landroid/app/usage/UsageStats;
    :goto_3
    goto :goto_4

    .end local v16    # "target":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    .end local v17    # "timeSpentScore":F
    .end local v18    # "pkStats":Landroid/app/usage/UsageStats;
    .restart local v0    # "target":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    .restart local v2    # "pkStats":Landroid/app/usage/UsageStats;
    .local v3, "timeSpentScore":F
    :cond_6
    move-object/from16 v16, v0

    move-object/from16 v18, v2

    move/from16 v17, v3

    .end local v0    # "target":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    .end local v2    # "pkStats":Landroid/app/usage/UsageStats;
    .end local v3    # "timeSpentScore":F
    .restart local v16    # "target":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    .restart local v17    # "timeSpentScore":F
    .restart local v18    # "pkStats":Landroid/app/usage/UsageStats;
    :goto_4
    invoke-virtual {v1, v5}, Landroid/service/resolver/ResolverTarget;->setChooserScore(F)V

    .line 271
    cmpl-float v0, v5, v12

    if-lez v0, :cond_8

    .line 272
    move v0, v5

    .line 275
    .end local v1    # "resolverTarget":Landroid/service/resolver/ResolverTarget;
    .end local v4    # "launchScore":F
    .end local v5    # "chooserScore":F
    .end local v12    # "mostChooserScore":F
    .end local v16    # "target":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    .end local v17    # "timeSpentScore":F
    .end local v18    # "pkStats":Landroid/app/usage/UsageStats;
    .local v0, "mostChooserScore":F
    move v12, v0

    goto :goto_5

    .end local v0    # "mostChooserScore":F
    .restart local v12    # "mostChooserScore":F
    :cond_7
    move-object v15, v4

    .line 220
    :cond_8
    :goto_5
    move-object v4, v15

    goto/16 :goto_0

    .line 284
    :cond_9
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, v6, Lcom/android/internal/app/ResolverComparator;->mTargetsDict:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, v6, Lcom/android/internal/app/ResolverComparator;->mTargets:Ljava/util/ArrayList;

    .line 285
    iget-object v0, v6, Lcom/android/internal/app/ResolverComparator;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_6
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Landroid/service/resolver/ResolverTarget;

    .line 286
    .local v14, "target":Landroid/service/resolver/ResolverTarget;
    invoke-virtual {v14}, Landroid/service/resolver/ResolverTarget;->getRecencyScore()F

    move-result v0

    div-float v15, v0, v9

    .line 287
    .local v15, "recency":F
    mul-float v0, v15, v15

    const/high16 v1, 0x40000000    # 2.0f

    mul-float v2, v0, v1

    .line 288
    invoke-virtual {v14}, Landroid/service/resolver/ResolverTarget;->getLaunchScore()F

    move-result v0

    div-float v3, v0, v11

    .line 289
    invoke-virtual {v14}, Landroid/service/resolver/ResolverTarget;->getTimeSpentScore()F

    move-result v0

    div-float v4, v0, v10

    .line 290
    invoke-virtual {v14}, Landroid/service/resolver/ResolverTarget;->getChooserScore()F

    move-result v0

    div-float v5, v0, v12

    .line 287
    move-object v0, v6

    move-object v1, v14

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/app/ResolverComparator;->setFeatures(Landroid/service/resolver/ResolverTarget;FFFF)V

    .line 291
    invoke-direct {v6, v14}, Lcom/android/internal/app/ResolverComparator;->addDefaultSelectProbability(Landroid/service/resolver/ResolverTarget;)V

    .line 295
    .end local v14    # "target":Landroid/service/resolver/ResolverTarget;
    .end local v15    # "recency":F
    goto :goto_6

    .line 296
    :cond_a
    iget-object v0, v6, Lcom/android/internal/app/ResolverComparator;->mTargets:Ljava/util/ArrayList;

    invoke-direct {v6, v0}, Lcom/android/internal/app/ResolverComparator;->predictSelectProbabilities(Ljava/util/List;)V

    .line 297
    return-void
.end method

.method public destroy()V
    .locals 2

    .line 408
    iget-object v0, p0, Lcom/android/internal/app/ResolverComparator;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 409
    iget-object v0, p0, Lcom/android/internal/app/ResolverComparator;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 410
    iget-object v0, p0, Lcom/android/internal/app/ResolverComparator;->mConnection:Lcom/android/internal/app/ResolverComparator$ResolverRankerServiceConnection;

    if-eqz v0, :cond_0

    .line 411
    iget-object v0, p0, Lcom/android/internal/app/ResolverComparator;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/app/ResolverComparator;->mConnection:Lcom/android/internal/app/ResolverComparator$ResolverRankerServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 412
    iget-object v0, p0, Lcom/android/internal/app/ResolverComparator;->mConnection:Lcom/android/internal/app/ResolverComparator$ResolverRankerServiceConnection;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverComparator$ResolverRankerServiceConnection;->destroy()V

    .line 414
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ResolverComparator;->mAfterCompute:Lcom/android/internal/app/ResolverComparator$AfterCompute;

    if-eqz v0, :cond_1

    .line 415
    iget-object v0, p0, Lcom/android/internal/app/ResolverComparator;->mAfterCompute:Lcom/android/internal/app/ResolverComparator$AfterCompute;

    invoke-interface {v0}, Lcom/android/internal/app/ResolverComparator$AfterCompute;->afterCompute()V

    .line 420
    :cond_1
    return-void
.end method

.method public getContentAnnotations(Landroid/content/Intent;)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .line 191
    const-string v0, "android.intent.extra.CONTENT_ANNOTATIONS"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 193
    .local v0, "annotations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v0, :cond_1

    .line 194
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 195
    .local v1, "size":I
    const/4 v2, 0x3

    if-le v1, v2, :cond_0

    .line 196
    const/4 v1, 0x3

    .line 198
    :cond_0
    new-array v2, v1, [Ljava/lang/String;

    iput-object v2, p0, Lcom/android/internal/app/ResolverComparator;->mAnnotations:[Ljava/lang/String;

    .line 199
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 200
    iget-object v3, p0, Lcom/android/internal/app/ResolverComparator;->mAnnotations:[Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    aput-object v4, v3, v2

    .line 199
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 203
    .end local v1    # "size":I
    .end local v2    # "i":I
    :cond_1
    return-void
.end method

.method public getScore(Landroid/content/ComponentName;)F
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 360
    iget-object v0, p0, Lcom/android/internal/app/ResolverComparator;->mTargetsDict:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/resolver/ResolverTarget;

    .line 361
    .local v0, "target":Landroid/service/resolver/ResolverTarget;
    if-eqz v0, :cond_0

    .line 362
    invoke-virtual {v0}, Landroid/service/resolver/ResolverTarget;->getSelectProbability()F

    move-result v1

    return v1

    .line 364
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public setCallBack(Lcom/android/internal/app/ResolverComparator$AfterCompute;)V
    .locals 0
    .param p1, "afterCompute"    # Lcom/android/internal/app/ResolverComparator$AfterCompute;

    .line 206
    iput-object p1, p0, Lcom/android/internal/app/ResolverComparator;->mAfterCompute:Lcom/android/internal/app/ResolverComparator$AfterCompute;

    .line 207
    return-void
.end method

.method public updateChooserCounts(Ljava/lang/String;ILjava/lang/String;)V
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "action"    # Ljava/lang/String;

    .line 368
    iget-object v0, p0, Lcom/android/internal/app/ResolverComparator;->mUsm:Landroid/app/usage/UsageStatsManager;

    if-eqz v0, :cond_0

    .line 369
    iget-object v1, p0, Lcom/android/internal/app/ResolverComparator;->mUsm:Landroid/app/usage/UsageStatsManager;

    iget-object v4, p0, Lcom/android/internal/app/ResolverComparator;->mContentType:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/internal/app/ResolverComparator;->mAnnotations:[Ljava/lang/String;

    move-object v2, p1

    move v3, p2

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, Landroid/app/usage/UsageStatsManager;->reportChooserSelection(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    :cond_0
    return-void
.end method

.method public updateModel(Landroid/content/ComponentName;)V
    .locals 7
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .line 375
    iget-object v0, p0, Lcom/android/internal/app/ResolverComparator;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 376
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/app/ResolverComparator;->mRanker:Landroid/service/resolver/IResolverRankerService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_3

    .line 378
    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/internal/app/ResolverComparator;->mTargetsDict:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 379
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 380
    .local v1, "selectedPos":I
    if-ltz v1, :cond_2

    iget-object v2, p0, Lcom/android/internal/app/ResolverComparator;->mTargets:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    .line 381
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverComparator;->getScore(Landroid/content/ComponentName;)F

    move-result v2

    .line 382
    .local v2, "selectedProbability":F
    const/4 v3, 0x0

    .line 383
    .local v3, "order":I
    iget-object v4, p0, Lcom/android/internal/app/ResolverComparator;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/service/resolver/ResolverTarget;

    .line 384
    .local v5, "target":Landroid/service/resolver/ResolverTarget;
    invoke-virtual {v5}, Landroid/service/resolver/ResolverTarget;->getSelectProbability()F

    move-result v6

    cmpl-float v6, v6, v2

    if-lez v6, :cond_0

    .line 385
    add-int/lit8 v3, v3, 0x1

    .line 387
    .end local v5    # "target":Landroid/service/resolver/ResolverTarget;
    :cond_0
    goto :goto_0

    .line 388
    :cond_1
    invoke-direct {p0, v3}, Lcom/android/internal/app/ResolverComparator;->logMetrics(I)V

    .line 389
    iget-object v4, p0, Lcom/android/internal/app/ResolverComparator;->mRanker:Landroid/service/resolver/IResolverRankerService;

    iget-object v5, p0, Lcom/android/internal/app/ResolverComparator;->mTargets:Ljava/util/ArrayList;

    invoke-interface {v4, v5, v1}, Landroid/service/resolver/IResolverRankerService;->train(Ljava/util/List;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 397
    .end local v1    # "selectedPos":I
    .end local v2    # "selectedProbability":F
    .end local v3    # "order":I
    :cond_2
    goto :goto_1

    .line 395
    :catch_0
    move-exception v1

    .line 396
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v2, "ResolverComparator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error in Train: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_3
    :goto_1
    monitor-exit v0

    .line 404
    return-void

    .line 403
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
