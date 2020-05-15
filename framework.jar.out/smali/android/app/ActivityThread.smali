.class public final Landroid/app/ActivityThread;
.super Landroid/app/ClientTransactionHandler;
.source "ActivityThread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ActivityThread$DropBoxReporter;,
        Landroid/app/ActivityThread$EventLoggingReporter;,
        Landroid/app/ActivityThread$ProviderRefCount;,
        Landroid/app/ActivityThread$LongSnapReceiver;,
        Landroid/app/ActivityThread$PurgeIdler;,
        Landroid/app/ActivityThread$GcIdler;,
        Landroid/app/ActivityThread$Idler;,
        Landroid/app/ActivityThread$H;,
        Landroid/app/ActivityThread$ApplicationThread;,
        Landroid/app/ActivityThread$RequestAssistContextExtras;,
        Landroid/app/ActivityThread$UpdateCompatibilityData;,
        Landroid/app/ActivityThread$DumpHeapData;,
        Landroid/app/ActivityThread$ContextCleanupInfo;,
        Landroid/app/ActivityThread$DumpComponentInfo;,
        Landroid/app/ActivityThread$Profiler;,
        Landroid/app/ActivityThread$AppBindData;,
        Landroid/app/ActivityThread$ServiceArgsData;,
        Landroid/app/ActivityThread$BindServiceData;,
        Landroid/app/ActivityThread$CreateServiceData;,
        Landroid/app/ActivityThread$CreateBackupAgentData;,
        Landroid/app/ActivityThread$ReceiverData;,
        Landroid/app/ActivityThread$ProviderClientRecord;,
        Landroid/app/ActivityThread$ActivityClientRecord;,
        Landroid/app/ActivityThread$ProviderKey;
    }
.end annotation


# static fields
.field private static final ACTIVITY_THREAD_CHECKIN_VERSION:I = 0x4

.field private static final DEBUG_BACKUP:Z = false

.field public static final DEBUG_BROADCAST:Z = false

.field public static final DEBUG_CONFIGURATION:Z = false

.field public static final DEBUG_MEMORY_TRIM:Z = false

.field static final DEBUG_MESSAGES:Z = false

.field public static final DEBUG_ORDER:Z = false

.field private static final DEBUG_PROVIDER:Z = false

.field private static final DEBUG_RESULTS:Z = false

.field private static final DEBUG_SERVICE:Z = false

.field private static final GET_CONTENT_PROVIDER_RETRY_COUNT:I = 0x6

.field private static final HEAP_COLUMN:Ljava/lang/String; = "%13s %8s %8s %8s %8s %8s %8s %8s"

.field private static final HEAP_FULL_COLUMN:Ljava/lang/String; = "%13s %8s %8s %8s %8s %8s %8s %8s %8s %8s %8s"

.field public static final INVALID_PROC_STATE_SEQ:J = -0x1L

.field public static IS_SYSTEM_APP:Z = false

.field private static final MIN_TIME_BETWEEN_GCS:J = 0x1388L

.field private static final ONE_COUNT_COLUMN:Ljava/lang/String; = "%21s %8d"

.field private static final ONE_COUNT_COLUMN_HEADER:Ljava/lang/String; = "%21s %8s"

.field public static final PROC_START_SEQ_IDENT:Ljava/lang/String; = "seq="

.field private static final REPORT_TO_ACTIVITY:Z = true

.field public static final SERVICE_DONE_EXECUTING_ANON:I = 0x0

.field public static final SERVICE_DONE_EXECUTING_START:I = 0x1

.field public static final SERVICE_DONE_EXECUTING_STOP:I = 0x2

.field private static final SQLITE_MEM_RELEASED_EVENT_LOG_TAG:I = 0x124fb

.field public static final TAG:Ljava/lang/String; = "ActivityThread"

.field private static final THUMBNAIL_FORMAT:Landroid/graphics/Bitmap$Config;

.field private static final TWO_COUNT_COLUMNS:Ljava/lang/String; = "%21s %8d %21s %8d"

.field public static appProcessName:Ljava/lang/String; = null

.field public static isForeground:Z = false

.field public static isSystemServer:Z = false

.field public static isSystemServerMain:Z = false

.field static final localLOGV:Z = false

.field public static packageName:Ljava/lang/String;

.field private static volatile sCurrentActivityThread:Landroid/app/ActivityThread;

.field private static final sCurrentBroadcastIntent:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field public static sDataDirectorySuffix:Ljava/lang/String;

.field public static volatile sDebugStuckValueEnable:Z

.field public static volatile sDebugTagEnable:Z

.field private static volatile sDelayBroadcastEnable:Z

.field public static volatile sHandleMessageThreshold:J

.field private static volatile sIsAppFirstStartActivity:Z

.field public static volatile sIsCompletedMakeApplication:Z

.field private static volatile sIsDelayBroadcastReceviceReg:Z

.field private static volatile sIsEnableAppTraversalsAccelerate:Z

.field private static volatile sIsPreLoadingWebView:Z

.field private static volatile sIsSkipApplicationOnCreate:Z

.field public static volatile sLaunchActivity:Ljava/lang/String;

.field public static volatile sLaunchActivityMaxThreshold:J

.field public static volatile sLaunchActivityMinThreshold:J

.field public static volatile sLoopThreshold:J

.field static volatile sMainThreadHandler:Landroid/os/Handler;

.field static volatile sPackageManager:Landroid/content/pm/IPackageManager;

.field private static volatile sPreLoadingWebViewEnable:Z


# instance fields
.field private final MAX_SNAP_PAGE_CNT:I

.field final mActivities:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Landroid/app/ActivityThread$ActivityClientRecord;",
            ">;"
        }
    .end annotation
.end field

.field final mAllApplications:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/Application;",
            ">;"
        }
    .end annotation
.end field

.field final mAppThread:Landroid/app/ActivityThread$ApplicationThread;

.field final mBackupAgents:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/app/backup/BackupAgent;",
            ">;"
        }
    .end annotation
.end field

.field mBoundApplication:Landroid/app/ActivityThread$AppBindData;

.field mCompatConfiguration:Landroid/content/res/Configuration;

.field mConfiguration:Landroid/content/res/Configuration;

.field mCoreSettings:Landroid/os/Bundle;

.field mCurDefaultDisplayDpi:I

.field private mCurrentPackageName:Ljava/lang/String;

.field mDensityCompatMode:Z

.field private mDisableAppTraversalsAccelerateRunnable:Ljava/lang/Runnable;

.field final mExecutor:Ljava/util/concurrent/Executor;

.field final mGcIdler:Landroid/app/ActivityThread$GcIdler;

.field mGcIdlerScheduled:Z

.field final mGetProviderLocks:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mGetProviderLocks"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/app/ActivityThread$ProviderKey;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final mH:Landroid/app/ActivityThread$H;

.field private mHasMessageBefore:Z

.field mHiddenApiWarningShown:Z

.field mInitialApplication:Landroid/app/Application;

.field mInstrumentation:Landroid/app/Instrumentation;

.field mInstrumentationAppDir:Ljava/lang/String;

.field mInstrumentationLibDir:Ljava/lang/String;

.field mInstrumentationPackageName:Ljava/lang/String;

.field mInstrumentationSplitAppDirs:[Ljava/lang/String;

.field mInstrumentedAppDir:Ljava/lang/String;

.field mInstrumentedLibDir:Ljava/lang/String;

.field mInstrumentedSplitAppDirs:[Ljava/lang/String;

.field private mIsLauncher:Z

.field private mIsUserSystemVersion:Z

.field mJitEnabled:Z

.field mLastAssistStructures:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/assist/AssistStructure;",
            ">;>;"
        }
    .end annotation
.end field

.field private mLastSessionId:I

.field private mLaunchForActivityStart:Z

.field final mLocalProviders:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Landroid/app/ActivityThread$ProviderClientRecord;",
            ">;"
        }
    .end annotation
.end field

.field final mLocalProvidersByName:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/content/ComponentName;",
            "Landroid/app/ActivityThread$ProviderClientRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mLongSnapJobMgr:Landroid/app/LongSnapClientJobManager;

.field private mLongSnapReceiverRegistered:Z

.field final mLooper:Landroid/os/Looper;

.field private mMainThreadConfig:Landroid/content/res/Configuration;

.field private mNetworkBlockSeq:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mNetworkPolicyLock"
    .end annotation
.end field

.field private final mNetworkPolicyLock:Ljava/lang/Object;

.field mNewActivities:Landroid/app/ActivityThread$ActivityClientRecord;

.field mNumVisibleActivities:I

.field final mOnPauseListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/app/Activity;",
            "Ljava/util/ArrayList<",
            "Landroid/app/OnActivityPausedListener;",
            ">;>;"
        }
    .end annotation
.end field

.field final mPackages:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mResourcesManager"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/LoadedApk;",
            ">;>;"
        }
    .end annotation
.end field

.field mPendingConfiguration:Landroid/content/res/Configuration;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mResourcesManager"
    .end annotation
.end field

.field mProfiler:Landroid/app/ActivityThread$Profiler;

.field final mProviderMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/app/ActivityThread$ProviderKey;",
            "Landroid/app/ActivityThread$ProviderClientRecord;",
            ">;"
        }
    .end annotation
.end field

.field final mProviderRefCountMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Landroid/app/ActivityThread$ProviderRefCount;",
            ">;"
        }
    .end annotation
.end field

.field final mPurgeIdler:Landroid/app/ActivityThread$PurgeIdler;

.field mPurgeIdlerScheduled:Z

.field final mRelaunchingActivities:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mResourcesManager"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/ActivityThread$ActivityClientRecord;",
            ">;"
        }
    .end annotation
.end field

.field final mResourcePackages:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mResourcesManager"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/LoadedApk;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mResourcesManager:Landroid/app/ResourcesManager;

.field final mServices:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Landroid/app/Service;",
            ">;"
        }
    .end annotation
.end field

.field private mSkipApplicationOnCreate:Z

.field mSomeActivitiesChanged:Z

.field private mSystemContext:Landroid/app/ContextImpl;

.field mSystemThread:Z

.field private mSystemUiContext:Landroid/app/ContextImpl;

.field private final mTransactionExecutor:Landroid/app/servertransaction/TransactionExecutor;

.field mUpdatingSystemConfig:Z

.field private mWaitingLock:Ljava/lang/Object;

.field private processTypefaceTimeStamp:J

.field private updateDelayStateRunnable:Ljava/lang/Runnable;

.field private updatePreLoadingWebViewStateRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 224
    const-string v0, ""

    sput-object v0, Landroid/app/ActivityThread;->appProcessName:Ljava/lang/String;

    .line 228
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    sput-object v0, Landroid/app/ActivityThread;->THUMBNAIL_FORMAT:Landroid/graphics/Bitmap$Config;

    .line 232
    const/4 v0, 0x1

    sput-boolean v0, Landroid/app/ActivityThread;->IS_SYSTEM_APP:Z

    .line 237
    const/4 v1, 0x0

    sput-boolean v1, Landroid/app/ActivityThread;->isSystemServer:Z

    .line 420
    sput-boolean v1, Landroid/app/ActivityThread;->isSystemServerMain:Z

    .line 421
    const/4 v2, 0x0

    sput-object v2, Landroid/app/ActivityThread;->packageName:Ljava/lang/String;

    .line 422
    sput-boolean v1, Landroid/app/ActivityThread;->isForeground:Z

    .line 3686
    new-instance v2, Ljava/lang/ThreadLocal;

    invoke-direct {v2}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v2, Landroid/app/ActivityThread;->sCurrentBroadcastIntent:Ljava/lang/ThreadLocal;

    .line 6079
    sput-boolean v0, Landroid/app/ActivityThread;->sPreLoadingWebViewEnable:Z

    .line 6680
    sput-boolean v1, Landroid/app/ActivityThread;->sIsSkipApplicationOnCreate:Z

    .line 6684
    sput-boolean v1, Landroid/app/ActivityThread;->sIsCompletedMakeApplication:Z

    .line 6718
    sput-boolean v1, Landroid/app/ActivityThread;->sIsPreLoadingWebView:Z

    .line 6754
    sput-boolean v1, Landroid/app/ActivityThread;->sIsDelayBroadcastReceviceReg:Z

    .line 6755
    sput-boolean v0, Landroid/app/ActivityThread;->sDelayBroadcastEnable:Z

    .line 7567
    sput-boolean v1, Landroid/app/ActivityThread;->sDebugStuckValueEnable:Z

    .line 7568
    sput-boolean v1, Landroid/app/ActivityThread;->sDebugTagEnable:Z

    .line 7569
    const-wide/16 v2, 0x3e8

    sput-wide v2, Landroid/app/ActivityThread;->sLoopThreshold:J

    .line 7570
    const-wide/16 v2, 0x258

    sput-wide v2, Landroid/app/ActivityThread;->sHandleMessageThreshold:J

    .line 7571
    const-wide/16 v2, 0x7d0

    sput-wide v2, Landroid/app/ActivityThread;->sLaunchActivityMinThreshold:J

    .line 7572
    const-wide/16 v2, 0x1b58

    sput-wide v2, Landroid/app/ActivityThread;->sLaunchActivityMaxThreshold:J

    .line 7573
    const-string v0, " "

    sput-object v0, Landroid/app/ActivityThread;->sLaunchActivity:Ljava/lang/String;

    .line 7609
    sput-boolean v1, Landroid/app/ActivityThread;->sIsEnableAppTraversalsAccelerate:Z

    .line 7610
    sput-boolean v1, Landroid/app/ActivityThread;->sIsAppFirstStartActivity:Z

    return-void
.end method

.method constructor <init>()V
    .locals 3

    .line 2318
    invoke-direct {p0}, Landroid/app/ClientTransactionHandler;-><init>()V

    .line 236
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/app/ActivityThread;->processTypefaceTimeStamp:J

    .line 276
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityThread;->mNetworkPolicyLock:Ljava/lang/Object;

    .line 284
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/app/ActivityThread;->mNetworkBlockSeq:J

    .line 292
    new-instance v0, Landroid/app/ActivityThread$ApplicationThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/app/ActivityThread$ApplicationThread;-><init>(Landroid/app/ActivityThread;Landroid/app/ActivityThread$1;)V

    iput-object v0, p0, Landroid/app/ActivityThread;->mAppThread:Landroid/app/ActivityThread$ApplicationThread;

    .line 293
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ActivityThread;->mLooper:Landroid/os/Looper;

    .line 294
    new-instance v0, Landroid/app/ActivityThread$H;

    invoke-direct {v0, p0}, Landroid/app/ActivityThread$H;-><init>(Landroid/app/ActivityThread;)V

    iput-object v0, p0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    .line 295
    new-instance v0, Landroid/os/HandlerExecutor;

    iget-object v2, p0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    invoke-direct {v0, v2}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/app/ActivityThread;->mExecutor:Ljava/util/concurrent/Executor;

    .line 296
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    .line 299
    iput-object v1, p0, Landroid/app/ActivityThread;->mNewActivities:Landroid/app/ActivityThread$ActivityClientRecord;

    .line 301
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/ActivityThread;->mNumVisibleActivities:I

    .line 302
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/app/ActivityThread;->mLastAssistStructures:Ljava/util/ArrayList;

    .line 304
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Landroid/app/ActivityThread;->mServices:Landroid/util/ArrayMap;

    .line 312
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/app/ActivityThread;->mAllApplications:Ljava/util/ArrayList;

    .line 315
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Landroid/app/ActivityThread;->mBackupAgents:Landroid/util/ArrayMap;

    .line 319
    iput-object v1, p0, Landroid/app/ActivityThread;->mInstrumentationPackageName:Ljava/lang/String;

    .line 320
    iput-object v1, p0, Landroid/app/ActivityThread;->mInstrumentationAppDir:Ljava/lang/String;

    .line 321
    iput-object v1, p0, Landroid/app/ActivityThread;->mInstrumentationSplitAppDirs:[Ljava/lang/String;

    .line 322
    iput-object v1, p0, Landroid/app/ActivityThread;->mInstrumentationLibDir:Ljava/lang/String;

    .line 323
    iput-object v1, p0, Landroid/app/ActivityThread;->mInstrumentedAppDir:Ljava/lang/String;

    .line 324
    iput-object v1, p0, Landroid/app/ActivityThread;->mInstrumentedSplitAppDirs:[Ljava/lang/String;

    .line 325
    iput-object v1, p0, Landroid/app/ActivityThread;->mInstrumentedLibDir:Ljava/lang/String;

    .line 326
    iput-boolean v0, p0, Landroid/app/ActivityThread;->mSystemThread:Z

    .line 327
    iput-boolean v0, p0, Landroid/app/ActivityThread;->mJitEnabled:Z

    .line 328
    iput-boolean v0, p0, Landroid/app/ActivityThread;->mSomeActivitiesChanged:Z

    .line 329
    iput-boolean v0, p0, Landroid/app/ActivityThread;->mUpdatingSystemConfig:Z

    .line 330
    iput-boolean v0, p0, Landroid/app/ActivityThread;->mHiddenApiWarningShown:Z

    .line 333
    iput-object v1, p0, Landroid/app/ActivityThread;->mLongSnapJobMgr:Landroid/app/LongSnapClientJobManager;

    .line 334
    iput-boolean v0, p0, Landroid/app/ActivityThread;->mLongSnapReceiverRegistered:Z

    .line 335
    const/4 v2, 0x6

    iput v2, p0, Landroid/app/ActivityThread;->MAX_SNAP_PAGE_CNT:I

    .line 347
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Landroid/app/ActivityThread;->mPackages:Landroid/util/ArrayMap;

    .line 349
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Landroid/app/ActivityThread;->mResourcePackages:Landroid/util/ArrayMap;

    .line 351
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/app/ActivityThread;->mRelaunchingActivities:Ljava/util/ArrayList;

    .line 353
    iput-object v1, p0, Landroid/app/ActivityThread;->mPendingConfiguration:Landroid/content/res/Configuration;

    .line 356
    new-instance v2, Landroid/app/servertransaction/TransactionExecutor;

    invoke-direct {v2, p0}, Landroid/app/servertransaction/TransactionExecutor;-><init>(Landroid/app/ClientTransactionHandler;)V

    iput-object v2, p0, Landroid/app/ActivityThread;->mTransactionExecutor:Landroid/app/servertransaction/TransactionExecutor;

    .line 387
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Landroid/app/ActivityThread;->mProviderMap:Landroid/util/ArrayMap;

    .line 389
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Landroid/app/ActivityThread;->mProviderRefCountMap:Landroid/util/ArrayMap;

    .line 391
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Landroid/app/ActivityThread;->mLocalProviders:Landroid/util/ArrayMap;

    .line 393
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Landroid/app/ActivityThread;->mLocalProvidersByName:Landroid/util/ArrayMap;

    .line 400
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Landroid/app/ActivityThread;->mGetProviderLocks:Landroid/util/ArrayMap;

    .line 403
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Landroid/app/ActivityThread;->mOnPauseListeners:Landroid/util/ArrayMap;

    .line 406
    new-instance v2, Landroid/app/ActivityThread$GcIdler;

    invoke-direct {v2, p0}, Landroid/app/ActivityThread$GcIdler;-><init>(Landroid/app/ActivityThread;)V

    iput-object v2, p0, Landroid/app/ActivityThread;->mGcIdler:Landroid/app/ActivityThread$GcIdler;

    .line 407
    new-instance v2, Landroid/app/ActivityThread$PurgeIdler;

    invoke-direct {v2, p0}, Landroid/app/ActivityThread$PurgeIdler;-><init>(Landroid/app/ActivityThread;)V

    iput-object v2, p0, Landroid/app/ActivityThread;->mPurgeIdler:Landroid/app/ActivityThread$PurgeIdler;

    .line 409
    iput-boolean v0, p0, Landroid/app/ActivityThread;->mPurgeIdlerScheduled:Z

    .line 410
    iput-boolean v0, p0, Landroid/app/ActivityThread;->mGcIdlerScheduled:Z

    .line 414
    iput-object v1, p0, Landroid/app/ActivityThread;->mCoreSettings:Landroid/os/Bundle;

    .line 416
    const-string/jumbo v1, "user"

    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Landroid/app/ActivityThread;->mIsUserSystemVersion:Z

    .line 2130
    new-instance v1, Landroid/content/res/Configuration;

    invoke-direct {v1}, Landroid/content/res/Configuration;-><init>()V

    iput-object v1, p0, Landroid/app/ActivityThread;->mMainThreadConfig:Landroid/content/res/Configuration;

    .line 6677
    iput-boolean v0, p0, Landroid/app/ActivityThread;->mSkipApplicationOnCreate:Z

    .line 6678
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/app/ActivityThread;->mWaitingLock:Ljava/lang/Object;

    .line 6679
    iput-boolean v0, p0, Landroid/app/ActivityThread;->mHasMessageBefore:Z

    .line 6695
    iput-boolean v0, p0, Landroid/app/ActivityThread;->mLaunchForActivityStart:Z

    .line 6731
    new-instance v1, Landroid/app/ActivityThread$2;

    invoke-direct {v1, p0}, Landroid/app/ActivityThread$2;-><init>(Landroid/app/ActivityThread;)V

    iput-object v1, p0, Landroid/app/ActivityThread;->updatePreLoadingWebViewStateRunnable:Ljava/lang/Runnable;

    .line 6769
    new-instance v1, Landroid/app/ActivityThread$3;

    invoke-direct {v1, p0}, Landroid/app/ActivityThread$3;-><init>(Landroid/app/ActivityThread;)V

    iput-object v1, p0, Landroid/app/ActivityThread;->updateDelayStateRunnable:Ljava/lang/Runnable;

    .line 7595
    iput-boolean v0, p0, Landroid/app/ActivityThread;->mIsLauncher:Z

    .line 7622
    new-instance v0, Landroid/app/ActivityThread$6;

    invoke-direct {v0, p0}, Landroid/app/ActivityThread$6;-><init>(Landroid/app/ActivityThread;)V

    iput-object v0, p0, Landroid/app/ActivityThread;->mDisableAppTraversalsAccelerateRunnable:Ljava/lang/Runnable;

    .line 2319
    invoke-static {}, Landroid/app/ResourcesManager;->getInstance()Landroid/app/ResourcesManager;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    .line 2321
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/ActivityThread;->processTypefaceTimeStamp:J

    .line 2323
    return-void
.end method

.method static synthetic access$100(Landroid/app/ActivityThread;)Landroid/app/ResourcesManager;
    .locals 1
    .param p0, "x0"    # Landroid/app/ActivityThread;

    .line 221
    iget-object v0, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    return-object v0
.end method

.method static synthetic access$1000(Landroid/app/ActivityThread;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Landroid/app/ActivityThread;

    .line 221
    iget-object v0, p0, Landroid/app/ActivityThread;->mNetworkPolicyLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1102(Landroid/app/ActivityThread;J)J
    .locals 0
    .param p0, "x0"    # Landroid/app/ActivityThread;
    .param p1, "x1"    # J

    .line 221
    iput-wide p1, p0, Landroid/app/ActivityThread;->mNetworkBlockSeq:J

    return-wide p1
.end method

.method static synthetic access$1200(Landroid/app/ActivityThread;ZZJJJJLjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/app/ActivityThread;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z
    .param p3, "x3"    # J
    .param p5, "x4"    # J
    .param p7, "x5"    # J
    .param p9, "x6"    # J
    .param p11, "x7"    # Ljava/lang/String;

    .line 221
    invoke-direct/range {p0 .. p11}, Landroid/app/ActivityThread;->setStuckValueState(ZZJJJJLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1302(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .line 221
    sput-boolean p0, Landroid/app/ActivityThread;->sDelayBroadcastEnable:Z

    return p0
.end method

.method static synthetic access$1402(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .line 221
    sput-boolean p0, Landroid/app/ActivityThread;->sPreLoadingWebViewEnable:Z

    return p0
.end method

.method static synthetic access$1500(Landroid/app/ActivityThread;I)V
    .locals 0
    .param p0, "x0"    # Landroid/app/ActivityThread;
    .param p1, "x1"    # I

    .line 221
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleTrimMemory(I)V

    return-void
.end method

.method static synthetic access$1700(Landroid/app/ActivityThread;Landroid/app/ActivityThread$AppBindData;)V
    .locals 0
    .param p0, "x0"    # Landroid/app/ActivityThread;
    .param p1, "x1"    # Landroid/app/ActivityThread$AppBindData;

    .line 221
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleBindApplication(Landroid/app/ActivityThread$AppBindData;)V

    return-void
.end method

.method static synthetic access$1800(Landroid/app/ActivityThread;Landroid/app/ActivityThread$ReceiverData;)V
    .locals 0
    .param p0, "x0"    # Landroid/app/ActivityThread;
    .param p1, "x1"    # Landroid/app/ActivityThread$ReceiverData;

    .line 221
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleReceiver(Landroid/app/ActivityThread$ReceiverData;)V

    return-void
.end method

.method static synthetic access$1900(Landroid/app/ActivityThread;Landroid/app/ActivityThread$CreateServiceData;)V
    .locals 0
    .param p0, "x0"    # Landroid/app/ActivityThread;
    .param p1, "x1"    # Landroid/app/ActivityThread$CreateServiceData;

    .line 221
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleCreateService(Landroid/app/ActivityThread$CreateServiceData;)V

    return-void
.end method

.method static synthetic access$200(Landroid/app/ActivityThread;ILjava/lang/Object;I)V
    .locals 0
    .param p0, "x0"    # Landroid/app/ActivityThread;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/Object;
    .param p3, "x3"    # I

    .line 221
    invoke-direct {p0, p1, p2, p3}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;I)V

    return-void
.end method

.method static synthetic access$2000(Landroid/app/ActivityThread;Landroid/app/ActivityThread$BindServiceData;)V
    .locals 0
    .param p0, "x0"    # Landroid/app/ActivityThread;
    .param p1, "x1"    # Landroid/app/ActivityThread$BindServiceData;

    .line 221
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleBindService(Landroid/app/ActivityThread$BindServiceData;)V

    return-void
.end method

.method static synthetic access$2100(Landroid/app/ActivityThread;Landroid/app/ActivityThread$BindServiceData;)V
    .locals 0
    .param p0, "x0"    # Landroid/app/ActivityThread;
    .param p1, "x1"    # Landroid/app/ActivityThread$BindServiceData;

    .line 221
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleUnbindService(Landroid/app/ActivityThread$BindServiceData;)V

    return-void
.end method

.method static synthetic access$2200(Landroid/app/ActivityThread;Landroid/app/ActivityThread$ServiceArgsData;)V
    .locals 0
    .param p0, "x0"    # Landroid/app/ActivityThread;
    .param p1, "x1"    # Landroid/app/ActivityThread$ServiceArgsData;

    .line 221
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleServiceArgs(Landroid/app/ActivityThread$ServiceArgsData;)V

    return-void
.end method

.method static synthetic access$2300(Landroid/app/ActivityThread;Landroid/os/IBinder;)V
    .locals 0
    .param p0, "x0"    # Landroid/app/ActivityThread;
    .param p1, "x1"    # Landroid/os/IBinder;

    .line 221
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleStopService(Landroid/os/IBinder;)V

    return-void
.end method

.method static synthetic access$2400(Landroid/app/ActivityThread;Landroid/app/ActivityThread$DumpComponentInfo;)V
    .locals 0
    .param p0, "x0"    # Landroid/app/ActivityThread;
    .param p1, "x1"    # Landroid/app/ActivityThread$DumpComponentInfo;

    .line 221
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleDumpService(Landroid/app/ActivityThread$DumpComponentInfo;)V

    return-void
.end method

.method static synthetic access$2500(Landroid/app/ActivityThread;Landroid/app/ActivityThread$CreateBackupAgentData;)V
    .locals 0
    .param p0, "x0"    # Landroid/app/ActivityThread;
    .param p1, "x1"    # Landroid/app/ActivityThread$CreateBackupAgentData;

    .line 221
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleCreateBackupAgent(Landroid/app/ActivityThread$CreateBackupAgentData;)V

    return-void
.end method

.method static synthetic access$2600(Landroid/app/ActivityThread;Landroid/app/ActivityThread$CreateBackupAgentData;)V
    .locals 0
    .param p0, "x0"    # Landroid/app/ActivityThread;
    .param p1, "x1"    # Landroid/app/ActivityThread$CreateBackupAgentData;

    .line 221
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleDestroyBackupAgent(Landroid/app/ActivityThread$CreateBackupAgentData;)V

    return-void
.end method

.method static synthetic access$2700(Landroid/app/ActivityThread;Landroid/app/ActivityThread$DumpComponentInfo;)V
    .locals 0
    .param p0, "x0"    # Landroid/app/ActivityThread;
    .param p1, "x1"    # Landroid/app/ActivityThread$DumpComponentInfo;

    .line 221
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleDumpActivity(Landroid/app/ActivityThread$DumpComponentInfo;)V

    return-void
.end method

.method static synthetic access$2800(Landroid/app/ActivityThread;Landroid/app/ActivityThread$DumpComponentInfo;)V
    .locals 0
    .param p0, "x0"    # Landroid/app/ActivityThread;
    .param p1, "x1"    # Landroid/app/ActivityThread$DumpComponentInfo;

    .line 221
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleDumpProvider(Landroid/app/ActivityThread$DumpComponentInfo;)V

    return-void
.end method

.method static synthetic access$2900(Landroid/app/ActivityThread;Landroid/os/IBinder;Z)V
    .locals 0
    .param p0, "x0"    # Landroid/app/ActivityThread;
    .param p1, "x1"    # Landroid/os/IBinder;
    .param p2, "x2"    # Z

    .line 221
    invoke-direct {p0, p1, p2}, Landroid/app/ActivityThread;->handleSleeping(Landroid/os/IBinder;Z)V

    return-void
.end method

.method static synthetic access$300(Landroid/app/ActivityThread;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Landroid/app/ActivityThread;

    .line 221
    iget-object v0, p0, Landroid/app/ActivityThread;->mWaitingLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$3000(Landroid/app/ActivityThread;Landroid/os/Bundle;)V
    .locals 0
    .param p0, "x0"    # Landroid/app/ActivityThread;
    .param p1, "x1"    # Landroid/os/Bundle;

    .line 221
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleSetCoreSettings(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$3100(Landroid/app/ActivityThread;Landroid/app/ActivityThread$UpdateCompatibilityData;)V
    .locals 0
    .param p0, "x0"    # Landroid/app/ActivityThread;
    .param p1, "x1"    # Landroid/app/ActivityThread$UpdateCompatibilityData;

    .line 221
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleUpdatePackageCompatibilityInfo(Landroid/app/ActivityThread$UpdateCompatibilityData;)V

    return-void
.end method

.method static synthetic access$3200(Landroid/app/ActivityThread;Landroid/os/IBinder;)V
    .locals 0
    .param p0, "x0"    # Landroid/app/ActivityThread;
    .param p1, "x1"    # Landroid/os/IBinder;

    .line 221
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleEnterAnimationComplete(Landroid/os/IBinder;)V

    return-void
.end method

.method static synthetic access$3300(Landroid/app/ActivityThread;)V
    .locals 0
    .param p0, "x0"    # Landroid/app/ActivityThread;

    .line 221
    invoke-direct {p0}, Landroid/app/ActivityThread;->handleStartBinderTracking()V

    return-void
.end method

.method static synthetic access$3400(Landroid/app/ActivityThread;Landroid/os/ParcelFileDescriptor;)V
    .locals 0
    .param p0, "x0"    # Landroid/app/ActivityThread;
    .param p1, "x1"    # Landroid/os/ParcelFileDescriptor;

    .line 221
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleStopBinderTrackingAndDump(Landroid/os/ParcelFileDescriptor;)V

    return-void
.end method

.method static synthetic access$3500(Landroid/app/ActivityThread;Landroid/os/IBinder;Lcom/android/internal/app/IVoiceInteractor;)V
    .locals 0
    .param p0, "x0"    # Landroid/app/ActivityThread;
    .param p1, "x1"    # Landroid/os/IBinder;
    .param p2, "x2"    # Lcom/android/internal/app/IVoiceInteractor;

    .line 221
    invoke-direct {p0, p1, p2}, Landroid/app/ActivityThread;->handleLocalVoiceInteractionStarted(Landroid/os/IBinder;Lcom/android/internal/app/IVoiceInteractor;)V

    return-void
.end method

.method static synthetic access$3600(Landroid/app/ActivityThread;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/app/ActivityThread;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # [Ljava/lang/String;

    .line 221
    invoke-direct {p0, p1, p2}, Landroid/app/ActivityThread;->handleRunIsolatedEntryPoint(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3700(Landroid/app/ActivityThread;)Landroid/app/servertransaction/TransactionExecutor;
    .locals 1
    .param p0, "x0"    # Landroid/app/ActivityThread;

    .line 221
    iget-object v0, p0, Landroid/app/ActivityThread;->mTransactionExecutor:Landroid/app/servertransaction/TransactionExecutor;

    return-object v0
.end method

.method static synthetic access$3800(Landroid/app/ActivityThread;Landroid/os/IBinder;)V
    .locals 0
    .param p0, "x0"    # Landroid/app/ActivityThread;
    .param p1, "x1"    # Landroid/os/IBinder;

    .line 221
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleRelaunchActivityLocally(Landroid/os/IBinder;)V

    return-void
.end method

.method static synthetic access$3900(Landroid/app/ActivityThread;)V
    .locals 0
    .param p0, "x0"    # Landroid/app/ActivityThread;

    .line 221
    invoke-direct {p0}, Landroid/app/ActivityThread;->nPurgePendingResources()V

    return-void
.end method

.method static synthetic access$402(Landroid/app/ActivityThread;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/app/ActivityThread;
    .param p1, "x1"    # Z

    .line 221
    iput-boolean p1, p0, Landroid/app/ActivityThread;->mHasMessageBefore:Z

    return p1
.end method

.method static synthetic access$4100(Landroid/app/ActivityThread;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Landroid/app/ActivityThread;

    .line 221
    invoke-direct {p0}, Landroid/app/ActivityThread;->findResumedActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4200(Landroid/app/ActivityThread;)Landroid/app/LongSnapClientJobManager;
    .locals 1
    .param p0, "x0"    # Landroid/app/ActivityThread;

    .line 221
    iget-object v0, p0, Landroid/app/ActivityThread;->mLongSnapJobMgr:Landroid/app/LongSnapClientJobManager;

    return-object v0
.end method

.method static synthetic access$4702(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .line 221
    sput-boolean p0, Landroid/app/ActivityThread;->sIsPreLoadingWebView:Z

    return p0
.end method

.method static synthetic access$4802(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .line 221
    sput-boolean p0, Landroid/app/ActivityThread;->sIsDelayBroadcastReceviceReg:Z

    return p0
.end method

.method static synthetic access$500(Landroid/app/ActivityThread;)Z
    .locals 1
    .param p0, "x0"    # Landroid/app/ActivityThread;

    .line 221
    iget-boolean v0, p0, Landroid/app/ActivityThread;->mSkipApplicationOnCreate:Z

    return v0
.end method

.method static synthetic access$5002(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .line 221
    sput-boolean p0, Landroid/app/ActivityThread;->sIsEnableAppTraversalsAccelerate:Z

    return p0
.end method

.method static synthetic access$502(Landroid/app/ActivityThread;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/app/ActivityThread;
    .param p1, "x1"    # Z

    .line 221
    iput-boolean p1, p0, Landroid/app/ActivityThread;->mSkipApplicationOnCreate:Z

    return p1
.end method

.method static synthetic access$600(Landroid/app/ActivityThread;ILjava/lang/Object;IIZ)V
    .locals 0
    .param p0, "x0"    # Landroid/app/ActivityThread;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/Object;
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # Z

    .line 221
    invoke-direct/range {p0 .. p5}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;IIZ)V

    return-void
.end method

.method static synthetic access$700(Landroid/app/ActivityThread;ILjava/lang/Object;II)V
    .locals 0
    .param p0, "x0"    # Landroid/app/ActivityThread;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/Object;
    .param p3, "x3"    # I
    .param p4, "x4"    # I

    .line 221
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;II)V

    return-void
.end method

.method static synthetic access$800(Landroid/app/ActivityThread;Ljava/io/FileDescriptor;)V
    .locals 0
    .param p0, "x0"    # Landroid/app/ActivityThread;
    .param p1, "x1"    # Ljava/io/FileDescriptor;

    .line 221
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->nDumpGraphicsInfo(Ljava/io/FileDescriptor;)V

    return-void
.end method

.method private attach(ZJ)V
    .locals 4
    .param p1, "system"    # Z
    .param p2, "startSeq"    # J

    .line 7354
    sput-boolean p1, Landroid/app/ActivityThread;->isSystemServerMain:Z

    .line 7356
    sput-object p0, Landroid/app/ActivityThread;->sCurrentActivityThread:Landroid/app/ActivityThread;

    .line 7358
    sput-boolean p1, Landroid/app/ActivityThread;->IS_SYSTEM_APP:Z

    .line 7359
    sput-boolean p1, Landroid/app/ActivityThread;->isSystemServer:Z

    .line 7361
    iput-boolean p1, p0, Landroid/app/ActivityThread;->mSystemThread:Z

    .line 7362
    if-nez p1, :cond_0

    .line 7363
    new-instance v0, Landroid/app/ActivityThread$4;

    invoke-direct {v0, p0}, Landroid/app/ActivityThread$4;-><init>(Landroid/app/ActivityThread;)V

    invoke-static {v0}, Landroid/view/ViewRootImpl;->addFirstDrawHandler(Ljava/lang/Runnable;)V

    .line 7369
    const-string v0, "<pre-initialized>"

    .line 7370
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    .line 7369
    invoke-static {v0, v1}, Landroid/ddm/DdmHandleAppName;->setAppName(Ljava/lang/String;I)V

    .line 7371
    iget-object v0, p0, Landroid/app/ActivityThread;->mAppThread:Landroid/app/ActivityThread$ApplicationThread;

    invoke-virtual {v0}, Landroid/app/ActivityThread$ApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/os/RuntimeInit;->setApplicationObject(Landroid/os/IBinder;)V

    .line 7372
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    .line 7374
    .local v0, "mgr":Landroid/app/IActivityManager;
    :try_start_0
    iget-object v1, p0, Landroid/app/ActivityThread;->mAppThread:Landroid/app/ActivityThread$ApplicationThread;

    invoke-interface {v0, v1, p2, p3}, Landroid/app/IActivityManager;->attachApplication(Landroid/app/IApplicationThread;J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7377
    nop

    .line 7379
    new-instance v1, Landroid/app/ActivityThread$5;

    invoke-direct {v1, p0, v0}, Landroid/app/ActivityThread$5;-><init>(Landroid/app/ActivityThread;Landroid/app/IActivityManager;)V

    invoke-static {v1}, Lcom/android/internal/os/BinderInternal;->addGcWatcher(Ljava/lang/Runnable;)V

    .line 7400
    .end local v0    # "mgr":Landroid/app/IActivityManager;
    goto :goto_0

    .line 7375
    .restart local v0    # "mgr":Landroid/app/IActivityManager;
    :catch_0
    move-exception v1

    .line 7376
    .local v1, "ex":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 7403
    .end local v0    # "mgr":Landroid/app/IActivityManager;
    .end local v1    # "ex":Landroid/os/RemoteException;
    :cond_0
    const-string/jumbo v0, "system_process"

    .line 7404
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    .line 7403
    invoke-static {v0, v1}, Landroid/ddm/DdmHandleAppName;->setAppName(Ljava/lang/String;I)V

    .line 7406
    :try_start_1
    new-instance v0, Landroid/app/Instrumentation;

    invoke-direct {v0}, Landroid/app/Instrumentation;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    .line 7407
    iget-object v0, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v0, p0}, Landroid/app/Instrumentation;->basicInit(Landroid/app/ActivityThread;)V

    .line 7408
    nop

    .line 7409
    invoke-virtual {p0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v0

    iget-object v0, v0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    .line 7408
    invoke-static {p0, v0}, Landroid/app/ContextImpl;->createAppContext(Landroid/app/ActivityThread;Landroid/app/LoadedApk;)Landroid/app/ContextImpl;

    move-result-object v0

    .line 7410
    .local v0, "context":Landroid/app/ContextImpl;
    iget-object v1, v0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/LoadedApk;->makeApplication(ZLandroid/app/Instrumentation;)Landroid/app/Application;

    move-result-object v1

    iput-object v1, p0, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    .line 7411
    iget-object v1, p0, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/app/Application;->onCreate()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 7415
    .end local v0    # "context":Landroid/app/ContextImpl;
    nop

    .line 7419
    :goto_0
    new-instance v0, Landroid/app/ActivityThread$DropBoxReporter;

    invoke-direct {v0, p0}, Landroid/app/ActivityThread$DropBoxReporter;-><init>(Landroid/app/ActivityThread;)V

    invoke-static {v0}, Llibcore/io/DropBox;->setReporter(Llibcore/io/DropBox$Reporter;)V

    .line 7421
    new-instance v0, Landroid/app/-$$Lambda$ActivityThread$ZXDWm3IBeFmLnFVblhB-IOZCr9o;

    .line 7421
    .local v0, "configChangedCallback":Landroid/view/ViewRootImpl$ConfigChangedCallback;
    invoke-direct {v0, p0}, Landroid/app/-$$Lambda$ActivityThread$ZXDWm3IBeFmLnFVblhB-IOZCr9o;-><init>(Landroid/app/ActivityThread;)V

    .line 7447
    invoke-static {v0}, Landroid/view/ViewRootImpl;->addConfigCallback(Landroid/view/ViewRootImpl$ConfigChangedCallback;)V

    .line 7448
    return-void

    .line 7412
    .end local v0    # "configChangedCallback":Landroid/view/ViewRootImpl$ConfigChangedCallback;
    :catch_1
    move-exception v0

    .line 7413
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to instantiate Application():"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7414
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static attemptAttachAgent(Ljava/lang/String;Ljava/lang/ClassLoader;)Z
    .locals 4
    .param p0, "agent"    # Ljava/lang/String;
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;

    .line 3668
    :try_start_0
    invoke-static {p0, p1}, Ldalvik/system/VMDebug;->attachAgent(Ljava/lang/String;Ljava/lang/ClassLoader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3669
    const/4 v0, 0x1

    return v0

    .line 3670
    :catch_0
    move-exception v0

    .line 3671
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "ActivityThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attaching agent with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3672
    const/4 v1, 0x0

    return v1
.end method

.method private callActivityOnSaveInstanceState(Landroid/app/ActivityThread$ActivityClientRecord;)V
    .locals 4
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;

    .line 5321
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    .line 5322
    iget-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->setAllowFds(Z)Z

    .line 5323
    invoke-virtual {p1}, Landroid/app/ActivityThread$ActivityClientRecord;->isPersistable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5324
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    iput-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->persistentState:Landroid/os/PersistableBundle;

    .line 5325
    iget-object v0, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    iget-object v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->persistentState:Landroid/os/PersistableBundle;

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/Instrumentation;->callActivityOnSaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/PersistableBundle;)V

    goto :goto_0

    .line 5328
    :cond_0
    iget-object v0, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Landroid/app/Instrumentation;->callActivityOnSaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 5330
    :goto_0
    return-void
.end method

.method private callActivityOnStop(Landroid/app/ActivityThread$ActivityClientRecord;ZLjava/lang/String;)V
    .locals 6
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;
    .param p2, "saveState"    # Z
    .param p3, "reason"    # Ljava/lang/String;

    .line 4641
    const/4 v0, 0x0

    if-eqz p2, :cond_0

    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v1, v1, Landroid/app/Activity;->mFinished:Z

    if-nez v1, :cond_0

    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    if-nez v1, :cond_0

    .line 4642
    invoke-static {p1}, Landroid/app/ActivityThread$ActivityClientRecord;->access$4400(Landroid/app/ActivityThread$ActivityClientRecord;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    .line 4643
    .local v1, "shouldSaveState":Z
    :goto_0
    invoke-static {p1}, Landroid/app/ActivityThread$ActivityClientRecord;->access$4500(Landroid/app/ActivityThread$ActivityClientRecord;)Z

    move-result v2

    .line 4644
    .local v2, "isPreP":Z
    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    .line 4645
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->callActivityOnSaveInstanceState(Landroid/app/ActivityThread$ActivityClientRecord;)V

    .line 4649
    :cond_1
    :try_start_0
    iget-object v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v3, v0, p3}, Landroid/app/Activity;->performStop(ZLjava/lang/String;)V
    :try_end_0
    .catch Landroid/util/SuperNotCalledException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4659
    goto :goto_1

    .line 4652
    :catch_0
    move-exception v0

    .line 4653
    .local v0, "e":Ljava/lang/Exception;
    iget-object v3, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v4, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v3, v4, v0}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 4660
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Landroid/app/ActivityThread$ActivityClientRecord;->setState(I)V

    .line 4662
    if-eqz v1, :cond_2

    if-nez v2, :cond_2

    .line 4663
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->callActivityOnSaveInstanceState(Landroid/app/ActivityThread$ActivityClientRecord;)V

    .line 4665
    :cond_2
    return-void

    .line 4654
    .restart local v0    # "e":Ljava/lang/Exception;
    :cond_3
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to stop activity "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    .line 4656
    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4657
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 4650
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 4651
    .local v0, "e":Landroid/util/SuperNotCalledException;
    throw v0
.end method

.method private checkAndBlockForNetworkAccess()V
    .locals 7

    .line 3345
    iget-object v0, p0, Landroid/app/ActivityThread;->mNetworkPolicyLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3346
    :try_start_0
    iget-wide v1, p0, Landroid/app/ActivityThread;->mNetworkBlockSeq:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 3348
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    iget-wide v5, p0, Landroid/app/ActivityThread;->mNetworkBlockSeq:J

    invoke-interface {v1, v5, v6}, Landroid/app/IActivityManager;->waitForNetworkStateUpdate(J)V

    .line 3349
    iput-wide v3, p0, Landroid/app/ActivityThread;->mNetworkBlockSeq:J
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3350
    goto :goto_0

    :catch_0
    move-exception v1

    .line 3352
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v0

    .line 3353
    return-void

    .line 3352
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method static final cleanUpPendingRemoveWindows(Landroid/app/ActivityThread$ActivityClientRecord;Z)V
    .locals 4
    .param p0, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;
    .param p1, "force"    # Z

    .line 4292
    iget-boolean v0, p0, Landroid/app/ActivityThread$ActivityClientRecord;->mPreserveWindow:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 4293
    return-void

    .line 4295
    :cond_0
    iget-object v0, p0, Landroid/app/ActivityThread$ActivityClientRecord;->mPendingRemoveWindow:Landroid/view/Window;

    if-eqz v0, :cond_1

    .line 4296
    iget-object v0, p0, Landroid/app/ActivityThread$ActivityClientRecord;->mPendingRemoveWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Landroid/app/ActivityThread$ActivityClientRecord;->mPendingRemoveWindow:Landroid/view/Window;

    .line 4297
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 4296
    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 4298
    iget-object v0, p0, Landroid/app/ActivityThread$ActivityClientRecord;->mPendingRemoveWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    .line 4299
    .local v0, "wtoken":Landroid/os/IBinder;
    if-eqz v0, :cond_1

    .line 4300
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v1

    iget-object v2, p0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    .line 4301
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Activity"

    .line 4300
    invoke-virtual {v1, v0, v2, v3}, Landroid/view/WindowManagerGlobal;->closeAll(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;)V

    .line 4304
    .end local v0    # "wtoken":Landroid/os/IBinder;
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/ActivityThread$ActivityClientRecord;->mPendingRemoveWindow:Landroid/view/Window;

    .line 4305
    iput-object v0, p0, Landroid/app/ActivityThread$ActivityClientRecord;->mPendingRemoveWindowManager:Landroid/view/WindowManager;

    .line 4306
    return-void
.end method

.method private createBaseContextForActivity(Landroid/app/ActivityThread$ActivityClientRecord;)Landroid/app/ContextImpl;
    .locals 8
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;

    .line 3358
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->getActivityDisplayId(Landroid/os/IBinder;)I

    move-result v6
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3361
    .local v6, "displayId":I
    nop

    .line 3360
    nop

    .line 3363
    iget-object v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->packageInfo:Landroid/app/LoadedApk;

    iget-object v4, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, p1, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    iget-object v7, p1, Landroid/app/ActivityThread$ActivityClientRecord;->overrideConfig:Landroid/content/res/Configuration;

    move-object v2, p0

    invoke-static/range {v2 .. v7}, Landroid/app/ContextImpl;->createActivityContext(Landroid/app/ActivityThread;Landroid/app/LoadedApk;Landroid/content/pm/ActivityInfo;Landroid/os/IBinder;ILandroid/content/res/Configuration;)Landroid/app/ContextImpl;

    move-result-object v0

    .line 3366
    .local v0, "appContext":Landroid/app/ContextImpl;
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v1

    .line 3370
    .local v1, "dm":Landroid/hardware/display/DisplayManagerGlobal;
    const-string v2, "debug.second-display.pkg"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3371
    .local v2, "pkgName":Ljava/lang/String;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->packageInfo:Landroid/app/LoadedApk;

    iget-object v3, v3, Landroid/app/LoadedApk;->mPackageName:Ljava/lang/String;

    .line 3372
    invoke-virtual {v3, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3373
    invoke-virtual {v1}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayIds()[I

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_1

    aget v7, v3, v5

    .line 3374
    .local v7, "id":I
    if-eqz v7, :cond_0

    .line 3375
    nop

    .line 3376
    invoke-virtual {v0}, Landroid/app/ContextImpl;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v1, v7, v3}, Landroid/hardware/display/DisplayManagerGlobal;->getCompatibleDisplay(ILandroid/content/res/Resources;)Landroid/view/Display;

    move-result-object v3

    .line 3377
    .local v3, "display":Landroid/view/Display;
    invoke-virtual {v0, v3}, Landroid/app/ContextImpl;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Landroid/app/ContextImpl;

    .line 3378
    goto :goto_1

    .line 3373
    .end local v3    # "display":Landroid/view/Display;
    .end local v7    # "id":I
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 3382
    :cond_1
    :goto_1
    return-object v0

    .line 3359
    .end local v0    # "appContext":Landroid/app/ContextImpl;
    .end local v1    # "dm":Landroid/hardware/display/DisplayManagerGlobal;
    .end local v2    # "pkgName":Ljava/lang/String;
    .end local v6    # "displayId":I
    :catch_0
    move-exception v0

    .line 3360
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method private static createNewConfigAndUpdateIfNotNull(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)Landroid/content/res/Configuration;
    .locals 1
    .param p0, "base"    # Landroid/content/res/Configuration;
    .param p1, "override"    # Landroid/content/res/Configuration;

    .line 5430
    if-nez p1, :cond_0

    .line 5431
    return-object p0

    .line 5433
    :cond_0
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0, p0}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 5434
    .local v0, "newConfig":Landroid/content/res/Configuration;
    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 5435
    return-object v0
.end method

.method public static currentActivityThread()Landroid/app/ActivityThread;
    .locals 1

    .line 2088
    sget-object v0, Landroid/app/ActivityThread;->sCurrentActivityThread:Landroid/app/ActivityThread;

    return-object v0
.end method

.method public static currentApplication()Landroid/app/Application;
    .locals 2

    .line 2114
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    .line 2115
    .local v0, "am":Landroid/app/ActivityThread;
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public static currentOpPackageName()Ljava/lang/String;
    .locals 2

    .line 2096
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    .line 2097
    .local v0, "am":Landroid/app/ActivityThread;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2098
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 2097
    :goto_0
    return-object v1
.end method

.method public static currentPackageName()Ljava/lang/String;
    .locals 2

    .line 2102
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    .line 2103
    .local v0, "am":Landroid/app/ActivityThread;
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    if-eqz v1, :cond_0

    .line 2104
    iget-object v1, v0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    iget-object v1, v1, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 2103
    :goto_0
    return-object v1
.end method

.method public static currentProcessName()Ljava/lang/String;
    .locals 2

    .line 2108
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    .line 2109
    .local v0, "am":Landroid/app/ActivityThread;
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    if-eqz v1, :cond_0

    .line 2110
    iget-object v1, v0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    iget-object v1, v1, Landroid/app/ActivityThread$AppBindData;->processName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 2109
    :goto_0
    return-object v1
.end method

.method private deliverNewIntents(Landroid/app/ActivityThread$ActivityClientRecord;Ljava/util/List;)V
    .locals 5
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/ActivityThread$ActivityClientRecord;",
            "Ljava/util/List<",
            "Lcom/android/internal/content/ReferrerIntent;",
            ">;)V"
        }
    .end annotation

    .line 3467
    .local p2, "intents":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/ReferrerIntent;>;"
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    .line 3468
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 3469
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/content/ReferrerIntent;

    .line 3470
    .local v2, "intent":Lcom/android/internal/content/ReferrerIntent;
    iget-object v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/content/ReferrerIntent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 3471
    invoke-virtual {v2}, Lcom/android/internal/content/ReferrerIntent;->prepareToEnterProcess()V

    .line 3472
    iget-object v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-object v3, v3, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v3}, Landroid/app/FragmentController;->noteStateNotSaved()V

    .line 3473
    iget-object v3, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v4, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v3, v4, v2}, Landroid/app/Instrumentation;->callActivityOnNewIntent(Landroid/app/Activity;Lcom/android/internal/content/ReferrerIntent;)V

    .line 3468
    .end local v2    # "intent":Lcom/android/internal/content/ReferrerIntent;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3475
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method private deliverResults(Landroid/app/ActivityThread$ActivityClientRecord;Ljava/util/List;Ljava/lang/String;)V
    .locals 10
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;
    .param p3, "reason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/ActivityThread$ActivityClientRecord;",
            "Ljava/util/List<",
            "Landroid/app/ResultInfo;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 4849
    .local p2, "results":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    .line 4850
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 4851
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ResultInfo;

    .line 4853
    .local v2, "ri":Landroid/app/ResultInfo;
    :try_start_0
    iget-object v3, v2, Landroid/app/ResultInfo;->mData:Landroid/content/Intent;

    if-eqz v3, :cond_0

    .line 4854
    iget-object v3, v2, Landroid/app/ResultInfo;->mData:Landroid/content/Intent;

    iget-object v4, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 4855
    iget-object v3, v2, Landroid/app/ResultInfo;->mData:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->prepareToEnterProcess()V

    .line 4859
    :cond_0
    iget-object v4, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-object v5, v2, Landroid/app/ResultInfo;->mResultWho:Ljava/lang/String;

    iget v6, v2, Landroid/app/ResultInfo;->mRequestCode:I

    iget v7, v2, Landroid/app/ResultInfo;->mResultCode:I

    iget-object v8, v2, Landroid/app/ResultInfo;->mData:Landroid/content/Intent;

    move-object v9, p3

    invoke-virtual/range {v4 .. v9}, Landroid/app/Activity;->dispatchActivityResult(Ljava/lang/String;IILandroid/content/Intent;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4868
    goto :goto_1

    .line 4861
    :catch_0
    move-exception v3

    .line 4862
    .local v3, "e":Ljava/lang/Exception;
    iget-object v4, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v5, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v4, v5, v3}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 4850
    .end local v2    # "ri":Landroid/app/ResultInfo;
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4863
    .restart local v2    # "ri":Landroid/app/ResultInfo;
    .restart local v3    # "e":Ljava/lang/Exception;
    :cond_1
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failure delivering result "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " to activity "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    .line 4865
    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4866
    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 4870
    .end local v1    # "i":I
    .end local v2    # "ri":Landroid/app/ResultInfo;
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_2
    return-void
.end method

.method public static dumpMemInfoTable(Landroid/util/proto/ProtoOutputStream;Landroid/os/Debug$MemoryInfo;ZZJJJJJJ)V
    .locals 59
    .param p0, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p1, "memInfo"    # Landroid/os/Debug$MemoryInfo;
    .param p2, "dumpDalvik"    # Z
    .param p3, "dumpSummaryOnly"    # Z
    .param p4, "nativeMax"    # J
    .param p6, "nativeAllocated"    # J
    .param p8, "nativeFree"    # J
    .param p10, "dalvikMax"    # J
    .param p12, "dalvikAllocated"    # J
    .param p14, "dalvikFree"    # J

    move-object/from16 v13, p0

    move-object/from16 v14, p1

    move-wide/from16 v11, p4

    move-wide/from16 v9, p6

    move-wide/from16 v7, p8

    move-wide/from16 v5, p10

    move-wide/from16 v3, p12

    .line 2777
    move-wide/from16 v1, p14

    if-nez p3, :cond_7

    .line 2778
    const-wide v1, 0x10b00000003L

    invoke-virtual {v13, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v1

    .line 2779
    .local v1, "nhToken":J
    const-wide v23, 0x10b00000001L

    const-string v25, "Native Heap"

    iget v0, v14, Landroid/os/Debug$MemoryInfo;->nativePss:I

    move-wide/from16 v26, v1

    iget v1, v14, Landroid/os/Debug$MemoryInfo;->nativeSwappablePss:I

    .end local v1    # "nhToken":J
    .local v26, "nhToken":J
    iget v2, v14, Landroid/os/Debug$MemoryInfo;->nativeSharedDirty:I

    move/from16 v28, v1

    iget v1, v14, Landroid/os/Debug$MemoryInfo;->nativePrivateDirty:I

    move/from16 v29, v1

    iget v1, v14, Landroid/os/Debug$MemoryInfo;->nativeSharedClean:I

    move/from16 v30, v1

    iget v1, v14, Landroid/os/Debug$MemoryInfo;->nativePrivateClean:I

    move/from16 v31, v1

    iget-boolean v1, v14, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    move/from16 v32, v1

    iget v1, v14, Landroid/os/Debug$MemoryInfo;->nativeSwappedOut:I

    iget v12, v14, Landroid/os/Debug$MemoryInfo;->nativeSwappedOutPss:I

    move v11, v0

    move-object v0, v13

    move/from16 v22, v1

    move/from16 v17, v2

    move-wide/from16 v38, v26

    move/from16 v16, v28

    move/from16 v18, v29

    move/from16 v19, v30

    move/from16 v20, v31

    move/from16 v21, v32

    const-wide v14, 0x10500000002L

    move-wide/from16 v1, v23

    .end local v26    # "nhToken":J
    .local v38, "nhToken":J
    move-object/from16 v3, v25

    move v4, v11

    move/from16 v5, v16

    move/from16 v6, v17

    move/from16 v7, v18

    move/from16 v8, v19

    move-wide v10, v9

    move/from16 v9, v20

    move/from16 v10, v21

    move-wide/from16 v14, p4

    move/from16 v11, v22

    invoke-static/range {v0 .. v12}, Landroid/app/ActivityThread;->dumpMemoryInfo(Landroid/util/proto/ProtoOutputStream;JLjava/lang/String;IIIIIIZII)V

    .line 2784
    const-wide v0, 0x10500000002L

    invoke-virtual {v13, v0, v1, v14, v15}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2785
    const-wide v9, 0x10500000003L

    move-wide/from16 v11, p6

    invoke-virtual {v13, v9, v10, v11, v12}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2786
    const-wide v5, 0x10500000004L

    move-wide/from16 v7, p8

    invoke-virtual {v13, v5, v6, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2787
    move-wide/from16 v0, v38

    invoke-virtual {v13, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 2789
    .end local v38    # "nhToken":J
    .local v0, "nhToken":J
    const-wide v2, 0x10b00000004L

    invoke-virtual {v13, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v3

    .line 2790
    .local v3, "dvToken":J
    const-wide v16, 0x10b00000001L

    const-string v18, "Dalvik Heap"

    move-wide/from16 v19, v0

    move-object/from16 v1, p1

    iget v2, v1, Landroid/os/Debug$MemoryInfo;->dalvikPss:I

    .end local v0    # "nhToken":J
    .local v19, "nhToken":J
    iget v0, v1, Landroid/os/Debug$MemoryInfo;->dalvikSwappablePss:I

    iget v6, v1, Landroid/os/Debug$MemoryInfo;->dalvikSharedDirty:I

    iget v5, v1, Landroid/os/Debug$MemoryInfo;->dalvikPrivateDirty:I

    iget v9, v1, Landroid/os/Debug$MemoryInfo;->dalvikSharedClean:I

    iget v10, v1, Landroid/os/Debug$MemoryInfo;->dalvikPrivateClean:I

    move/from16 v50, v2

    iget-boolean v2, v1, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    move/from16 v51, v2

    iget v2, v1, Landroid/os/Debug$MemoryInfo;->dalvikSwappedOut:I

    iget v12, v1, Landroid/os/Debug$MemoryInfo;->dalvikSwappedOutPss:I

    move v11, v0

    move-object v0, v13

    move-object v14, v1

    move/from16 v22, v2

    move/from16 v15, v50

    move/from16 v21, v51

    move-wide/from16 v1, v16

    move-wide/from16 v52, v3

    move-object/from16 v3, v18

    .end local v3    # "dvToken":J
    .local v52, "dvToken":J
    move v4, v15

    move v15, v5

    move v5, v11

    move-wide/from16 v16, v7

    move v7, v15

    move v8, v9

    move v9, v10

    move/from16 v10, v21

    move-wide/from16 v23, p6

    move/from16 v11, v22

    invoke-static/range {v0 .. v12}, Landroid/app/ActivityThread;->dumpMemoryInfo(Landroid/util/proto/ProtoOutputStream;JLjava/lang/String;IIIIIIZII)V

    .line 2795
    const-wide v0, 0x10500000002L

    move-wide/from16 v11, p10

    invoke-virtual {v13, v0, v1, v11, v12}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2796
    const-wide v7, 0x10500000003L

    move-wide/from16 v9, p12

    invoke-virtual {v13, v7, v8, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2797
    const-wide v3, 0x10500000004L

    move-wide/from16 v5, p14

    invoke-virtual {v13, v3, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2798
    move-wide/from16 v1, v52

    invoke-virtual {v13, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 2800
    .end local v52    # "dvToken":J
    .local v1, "dvToken":J
    iget v0, v14, Landroid/os/Debug$MemoryInfo;->otherPss:I

    .line 2801
    .local v0, "otherPss":I
    iget v15, v14, Landroid/os/Debug$MemoryInfo;->otherSwappablePss:I

    .line 2802
    .local v15, "otherSwappablePss":I
    iget v3, v14, Landroid/os/Debug$MemoryInfo;->otherSharedDirty:I

    .line 2803
    .local v3, "otherSharedDirty":I
    iget v4, v14, Landroid/os/Debug$MemoryInfo;->otherPrivateDirty:I

    .line 2804
    .local v4, "otherPrivateDirty":I
    iget v7, v14, Landroid/os/Debug$MemoryInfo;->otherSharedClean:I

    .line 2805
    .local v7, "otherSharedClean":I
    iget v8, v14, Landroid/os/Debug$MemoryInfo;->otherPrivateClean:I

    .line 2806
    .local v8, "otherPrivateClean":I
    move/from16 v54, v0

    iget v0, v14, Landroid/os/Debug$MemoryInfo;->otherSwappedOut:I

    .line 2807
    .local v0, "otherSwappedOut":I
    .local v54, "otherPss":I
    move/from16 v55, v0

    iget v0, v14, Landroid/os/Debug$MemoryInfo;->otherSwappedOutPss:I

    .line 2809
    .local v0, "otherSwappedOutPss":I
    .local v55, "otherSwappedOut":I
    const/16 v18, 0x0

    move/from16 v27, v0

    move/from16 v21, v3

    move/from16 v22, v4

    move/from16 v25, v7

    move/from16 v26, v8

    .end local v0    # "otherSwappedOutPss":I
    .end local v3    # "otherSharedDirty":I
    .end local v4    # "otherPrivateDirty":I
    .end local v7    # "otherSharedClean":I
    .end local v8    # "otherPrivateClean":I
    .local v18, "i":I
    .local v21, "otherSharedDirty":I
    .local v22, "otherPrivateDirty":I
    .local v25, "otherSharedClean":I
    .local v26, "otherPrivateClean":I
    .local v27, "otherSwappedOutPss":I
    :goto_0
    move/from16 v8, v18

    .end local v18    # "i":I
    .local v8, "i":I
    const/16 v7, 0x11

    if-ge v8, v7, :cond_3

    .line 2810
    invoke-virtual {v14, v8}, Landroid/os/Debug$MemoryInfo;->getOtherPss(I)I

    move-result v18

    .line 2811
    .local v18, "myPss":I
    invoke-virtual {v14, v8}, Landroid/os/Debug$MemoryInfo;->getOtherSwappablePss(I)I

    move-result v28

    .line 2812
    .local v28, "mySwappablePss":I
    invoke-virtual {v14, v8}, Landroid/os/Debug$MemoryInfo;->getOtherSharedDirty(I)I

    move-result v29

    .line 2813
    .local v29, "mySharedDirty":I
    invoke-virtual {v14, v8}, Landroid/os/Debug$MemoryInfo;->getOtherPrivateDirty(I)I

    move-result v30

    .line 2814
    .local v30, "myPrivateDirty":I
    invoke-virtual {v14, v8}, Landroid/os/Debug$MemoryInfo;->getOtherSharedClean(I)I

    move-result v31

    .line 2815
    .local v31, "mySharedClean":I
    invoke-virtual {v14, v8}, Landroid/os/Debug$MemoryInfo;->getOtherPrivateClean(I)I

    move-result v32

    .line 2816
    .local v32, "myPrivateClean":I
    invoke-virtual {v14, v8}, Landroid/os/Debug$MemoryInfo;->getOtherSwappedOut(I)I

    move-result v33

    .line 2817
    .local v33, "mySwappedOut":I
    invoke-virtual {v14, v8}, Landroid/os/Debug$MemoryInfo;->getOtherSwappedOutPss(I)I

    move-result v34

    .line 2818
    .local v34, "mySwappedOutPss":I
    if-nez v18, :cond_2

    if-nez v29, :cond_2

    if-nez v30, :cond_2

    if-nez v31, :cond_2

    if-nez v32, :cond_2

    .line 2820
    iget-boolean v0, v14, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    if-eqz v0, :cond_0

    move/from16 v0, v34

    goto :goto_1

    :cond_0
    move/from16 v0, v33

    :goto_1
    if-eqz v0, :cond_1

    goto :goto_2

    .line 2809
    .end local v18    # "myPss":I
    .end local v28    # "mySwappablePss":I
    .end local v29    # "mySharedDirty":I
    .end local v30    # "myPrivateDirty":I
    .end local v31    # "mySharedClean":I
    .end local v32    # "myPrivateClean":I
    .end local v33    # "mySwappedOut":I
    .end local v34    # "mySwappedOutPss":I
    :cond_1
    move-wide/from16 v36, v1

    move-wide/from16 v38, v5

    move/from16 v40, v8

    move-wide/from16 v41, v9

    move-wide/from16 v43, v11

    goto :goto_3

    .line 2821
    .restart local v18    # "myPss":I
    .restart local v28    # "mySwappablePss":I
    .restart local v29    # "mySharedDirty":I
    .restart local v30    # "myPrivateDirty":I
    .restart local v31    # "mySharedClean":I
    .restart local v32    # "myPrivateClean":I
    .restart local v33    # "mySwappedOut":I
    .restart local v34    # "mySwappedOutPss":I
    :cond_2
    :goto_2
    const-wide v3, 0x20b00000005L

    .line 2822
    invoke-static {v8}, Landroid/os/Debug$MemoryInfo;->getOtherLabel(I)Ljava/lang/String;

    move-result-object v7

    iget-boolean v0, v14, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    .line 2821
    move/from16 v35, v0

    move-object v0, v13

    move-wide/from16 v36, v1

    move-wide v1, v3

    .end local v1    # "dvToken":J
    .local v36, "dvToken":J
    move-object v3, v7

    move/from16 v4, v18

    move-wide/from16 v38, v5

    move/from16 v5, v28

    move/from16 v6, v29

    move/from16 v7, v30

    move/from16 v40, v8

    move/from16 v8, v31

    .end local v8    # "i":I
    .local v40, "i":I
    move-wide/from16 v41, v9

    move/from16 v9, v32

    move/from16 v10, v35

    move-wide/from16 v43, v11

    move/from16 v11, v33

    move/from16 v12, v34

    invoke-static/range {v0 .. v12}, Landroid/app/ActivityThread;->dumpMemoryInfo(Landroid/util/proto/ProtoOutputStream;JLjava/lang/String;IIIIIIZII)V

    .line 2827
    sub-int v54, v54, v18

    .line 2828
    sub-int v15, v15, v28

    .line 2829
    sub-int v21, v21, v29

    .line 2830
    sub-int v22, v22, v30

    .line 2831
    sub-int v25, v25, v31

    .line 2832
    sub-int v26, v26, v32

    .line 2833
    sub-int v55, v55, v33

    .line 2834
    sub-int v27, v27, v34

    .line 2809
    .end local v18    # "myPss":I
    .end local v28    # "mySwappablePss":I
    .end local v29    # "mySharedDirty":I
    .end local v30    # "myPrivateDirty":I
    .end local v31    # "mySharedClean":I
    .end local v32    # "myPrivateClean":I
    .end local v33    # "mySwappedOut":I
    .end local v34    # "mySwappedOutPss":I
    :goto_3
    add-int/lit8 v18, v40, 0x1

    .end local v40    # "i":I
    .local v18, "i":I
    move-wide/from16 v1, v36

    move-wide/from16 v5, v38

    move-wide/from16 v9, v41

    move-wide/from16 v11, v43

    goto/16 :goto_0

    .line 2838
    .end local v18    # "i":I
    .end local v36    # "dvToken":J
    .restart local v1    # "dvToken":J
    :cond_3
    move-wide/from16 v36, v1

    move-wide/from16 v38, v5

    move-wide/from16 v41, v9

    move-wide/from16 v43, v11

    .end local v1    # "dvToken":J
    .restart local v36    # "dvToken":J
    const-wide v1, 0x10b00000006L

    const-string v3, "Unknown"

    iget-boolean v10, v14, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    move-object v0, v13

    move/from16 v4, v54

    move v5, v15

    move/from16 v6, v21

    move/from16 v18, v7

    move/from16 v7, v22

    move/from16 v8, v25

    move/from16 v9, v26

    move/from16 v11, v55

    move/from16 v12, v27

    invoke-static/range {v0 .. v12}, Landroid/app/ActivityThread;->dumpMemoryInfo(Landroid/util/proto/ProtoOutputStream;JLjava/lang/String;IIIIIIZII)V

    .line 2842
    const-wide v0, 0x10b00000007L

    invoke-virtual {v13, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v11

    .line 2843
    .local v11, "tToken":J
    const-wide v1, 0x10b00000001L

    const-string v3, "TOTAL"

    .line 2844
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalSwappablePss()I

    move-result v5

    .line 2845
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalSharedDirty()I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalPrivateDirty()I

    move-result v7

    .line 2846
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalSharedClean()I

    move-result v8

    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalPrivateClean()I

    move-result v9

    iget-boolean v10, v14, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    .line 2847
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalSwappedOut()I

    move-result v28

    .line 2848
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalSwappedOutPss()I

    move-result v29

    .line 2843
    move-object v0, v13

    move-wide/from16 v56, v11

    move/from16 v11, v28

    .end local v11    # "tToken":J
    .local v56, "tToken":J
    move/from16 v12, v29

    invoke-static/range {v0 .. v12}, Landroid/app/ActivityThread;->dumpMemoryInfo(Landroid/util/proto/ProtoOutputStream;JLjava/lang/String;IIIIIIZII)V

    .line 2849
    move-wide/from16 v28, p4

    add-long v0, v28, v43

    const-wide v2, 0x10500000002L

    invoke-virtual {v13, v2, v3, v0, v1}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2851
    add-long v0, v23, v41

    const-wide v11, 0x10500000003L

    invoke-virtual {v13, v11, v12, v0, v1}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2853
    add-long v0, v16, v38

    const-wide v9, 0x10500000004L

    invoke-virtual {v13, v9, v10, v0, v1}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2855
    move-wide/from16 v7, v56

    invoke-virtual {v13, v7, v8}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 2857
    .end local v56    # "tToken":J
    .local v7, "tToken":J
    if-eqz p2, :cond_8

    .line 2858
    nop

    .restart local v18    # "i":I
    :goto_4
    move/from16 v6, v18

    .line 2859
    .end local v18    # "i":I
    .local v6, "i":I
    const/16 v0, 0x1f

    if-ge v6, v0, :cond_8

    .line 2861
    invoke-virtual {v14, v6}, Landroid/os/Debug$MemoryInfo;->getOtherPss(I)I

    move-result v18

    .line 2862
    .local v18, "myPss":I
    invoke-virtual {v14, v6}, Landroid/os/Debug$MemoryInfo;->getOtherSwappablePss(I)I

    move-result v31

    .line 2863
    .local v31, "mySwappablePss":I
    invoke-virtual {v14, v6}, Landroid/os/Debug$MemoryInfo;->getOtherSharedDirty(I)I

    move-result v32

    .line 2864
    .local v32, "mySharedDirty":I
    invoke-virtual {v14, v6}, Landroid/os/Debug$MemoryInfo;->getOtherPrivateDirty(I)I

    move-result v33

    .line 2865
    .local v33, "myPrivateDirty":I
    invoke-virtual {v14, v6}, Landroid/os/Debug$MemoryInfo;->getOtherSharedClean(I)I

    move-result v34

    .line 2866
    .local v34, "mySharedClean":I
    invoke-virtual {v14, v6}, Landroid/os/Debug$MemoryInfo;->getOtherPrivateClean(I)I

    move-result v35

    .line 2867
    .local v35, "myPrivateClean":I
    invoke-virtual {v14, v6}, Landroid/os/Debug$MemoryInfo;->getOtherSwappedOut(I)I

    move-result v40

    .line 2868
    .local v40, "mySwappedOut":I
    invoke-virtual {v14, v6}, Landroid/os/Debug$MemoryInfo;->getOtherSwappedOutPss(I)I

    move-result v45

    .line 2869
    .local v45, "mySwappedOutPss":I
    if-nez v18, :cond_6

    if-nez v32, :cond_6

    if-nez v33, :cond_6

    if-nez v34, :cond_6

    if-nez v35, :cond_6

    .line 2871
    iget-boolean v0, v14, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    if-eqz v0, :cond_4

    move/from16 v0, v45

    goto :goto_5

    :cond_4
    move/from16 v0, v40

    :goto_5
    if-eqz v0, :cond_5

    goto :goto_6

    .line 2860
    .end local v18    # "myPss":I
    .end local v31    # "mySwappablePss":I
    .end local v32    # "mySharedDirty":I
    .end local v33    # "myPrivateDirty":I
    .end local v34    # "mySharedClean":I
    .end local v35    # "myPrivateClean":I
    .end local v40    # "mySwappedOut":I
    .end local v45    # "mySwappedOutPss":I
    :cond_5
    move/from16 v47, v6

    move-wide/from16 v48, v7

    goto :goto_7

    .line 2872
    .restart local v18    # "myPss":I
    .restart local v31    # "mySwappablePss":I
    .restart local v32    # "mySharedDirty":I
    .restart local v33    # "myPrivateDirty":I
    .restart local v34    # "mySharedClean":I
    .restart local v35    # "myPrivateClean":I
    .restart local v40    # "mySwappedOut":I
    .restart local v45    # "mySwappedOutPss":I
    :cond_6
    :goto_6
    const-wide v1, 0x20b00000008L

    .line 2873
    invoke-static {v6}, Landroid/os/Debug$MemoryInfo;->getOtherLabel(I)Ljava/lang/String;

    move-result-object v3

    iget-boolean v5, v14, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    .line 2872
    move-object v0, v13

    move/from16 v4, v18

    move/from16 v46, v5

    move/from16 v5, v31

    move/from16 v47, v6

    move/from16 v6, v32

    .end local v6    # "i":I
    .local v47, "i":I
    move-wide/from16 v48, v7

    move/from16 v7, v33

    .end local v7    # "tToken":J
    .local v48, "tToken":J
    move/from16 v8, v34

    move/from16 v9, v35

    move/from16 v10, v46

    move/from16 v11, v40

    move/from16 v12, v45

    invoke-static/range {v0 .. v12}, Landroid/app/ActivityThread;->dumpMemoryInfo(Landroid/util/proto/ProtoOutputStream;JLjava/lang/String;IIIIIIZII)V

    .line 2860
    .end local v18    # "myPss":I
    .end local v31    # "mySwappablePss":I
    .end local v32    # "mySharedDirty":I
    .end local v33    # "myPrivateDirty":I
    .end local v34    # "mySharedClean":I
    .end local v35    # "myPrivateClean":I
    .end local v40    # "mySwappedOut":I
    .end local v45    # "mySwappedOutPss":I
    :goto_7
    add-int/lit8 v18, v47, 0x1

    .line 2858
    .end local v47    # "i":I
    .local v18, "i":I
    move-wide/from16 v7, v48

    const-wide v9, 0x10500000004L

    const-wide v11, 0x10500000003L

    goto :goto_4

    .line 2882
    .end local v15    # "otherSwappablePss":I
    .end local v18    # "i":I
    .end local v19    # "nhToken":J
    .end local v21    # "otherSharedDirty":I
    .end local v22    # "otherPrivateDirty":I
    .end local v25    # "otherSharedClean":I
    .end local v26    # "otherPrivateClean":I
    .end local v27    # "otherSwappedOutPss":I
    .end local v36    # "dvToken":J
    .end local v48    # "tToken":J
    .end local v54    # "otherPss":I
    .end local v55    # "otherSwappedOut":I
    :cond_7
    move-wide/from16 v41, v3

    move-wide/from16 v43, v5

    move-wide/from16 v16, v7

    move-wide/from16 v23, v9

    move-wide/from16 v28, v11

    move-wide/from16 v38, p14

    :cond_8
    const-wide v0, 0x10b00000009L

    invoke-virtual {v13, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 2883
    .local v0, "asToken":J
    const-wide v2, 0x10500000001L

    .line 2884
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getSummaryJavaHeap()I

    move-result v4

    .line 2883
    invoke-virtual {v13, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2885
    nop

    .line 2886
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getSummaryNativeHeap()I

    move-result v2

    .line 2885
    const-wide v3, 0x10500000002L

    invoke-virtual {v13, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2887
    nop

    .line 2888
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getSummaryCode()I

    move-result v2

    .line 2887
    const-wide v3, 0x10500000003L

    invoke-virtual {v13, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2889
    nop

    .line 2890
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getSummaryStack()I

    move-result v2

    .line 2889
    const-wide v3, 0x10500000004L

    invoke-virtual {v13, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2891
    const-wide v2, 0x10500000005L

    .line 2892
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getSummaryGraphics()I

    move-result v4

    .line 2891
    invoke-virtual {v13, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2893
    const-wide v2, 0x10500000006L

    .line 2894
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getSummaryPrivateOther()I

    move-result v4

    .line 2893
    invoke-virtual {v13, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2895
    const-wide v2, 0x10500000007L

    .line 2896
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getSummarySystem()I

    move-result v4

    .line 2895
    invoke-virtual {v13, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2897
    iget-boolean v2, v14, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    const-wide v3, 0x10500000008L

    if-eqz v2, :cond_9

    .line 2898
    nop

    .line 2899
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getSummaryTotalSwapPss()I

    move-result v2

    .line 2898
    invoke-virtual {v13, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    goto :goto_8

    .line 2901
    :cond_9
    nop

    .line 2902
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getSummaryTotalSwap()I

    move-result v2

    .line 2901
    invoke-virtual {v13, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2904
    :goto_8
    invoke-virtual {v13, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 2905
    return-void
.end method

.method public static dumpMemInfoTable(Ljava/io/PrintWriter;Landroid/os/Debug$MemoryInfo;ZZZZILjava/lang/String;JJJJJJ)V
    .locals 47
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "memInfo"    # Landroid/os/Debug$MemoryInfo;
    .param p2, "checkin"    # Z
    .param p3, "dumpFullInfo"    # Z
    .param p4, "dumpDalvik"    # Z
    .param p5, "dumpSummaryOnly"    # Z
    .param p6, "pid"    # I
    .param p7, "processName"    # Ljava/lang/String;
    .param p8, "nativeMax"    # J
    .param p10, "nativeAllocated"    # J
    .param p12, "nativeFree"    # J
    .param p14, "dalvikMax"    # J
    .param p16, "dalvikAllocated"    # J
    .param p18, "dalvikFree"    # J

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v3, p8

    move-wide/from16 v5, p10

    move-wide/from16 v7, p12

    move-wide/from16 v9, p14

    move-wide/from16 v11, p16

    .line 2460
    move-wide/from16 v13, p18

    const/4 v15, 0x4

    const/16 v17, 0x0

    if-eqz p2, :cond_3

    .line 2465
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(I)V

    const/16 v15, 0x2c

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(C)V

    .line 2466
    move/from16 v2, p6

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(C)V

    .line 2467
    move-object/from16 v2, p7

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(C)V

    .line 2470
    invoke-virtual {v0, v3, v4}, Ljava/io/PrintWriter;->print(J)V

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(C)V

    .line 2471
    invoke-virtual {v0, v9, v10}, Ljava/io/PrintWriter;->print(J)V

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(C)V

    .line 2472
    const-string v15, "N/A,"

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2473
    add-long v1, v3, v9

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 2476
    invoke-virtual {v0, v5, v6}, Ljava/io/PrintWriter;->print(J)V

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 2477
    invoke-virtual {v0, v11, v12}, Ljava/io/PrintWriter;->print(J)V

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 2478
    const-string v2, "N/A,"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2479
    add-long v9, v5, v11

    invoke-virtual {v0, v9, v10}, Ljava/io/PrintWriter;->print(J)V

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 2482
    invoke-virtual {v0, v7, v8}, Ljava/io/PrintWriter;->print(J)V

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 2483
    invoke-virtual {v0, v13, v14}, Ljava/io/PrintWriter;->print(J)V

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 2484
    const-string v2, "N/A,"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2485
    add-long v9, v7, v13

    invoke-virtual {v0, v9, v10}, Ljava/io/PrintWriter;->print(J)V

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 2488
    move-object/from16 v2, p1

    iget v9, v2, Landroid/os/Debug$MemoryInfo;->nativePss:I

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 2489
    iget v9, v2, Landroid/os/Debug$MemoryInfo;->dalvikPss:I

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 2490
    iget v9, v2, Landroid/os/Debug$MemoryInfo;->otherPss:I

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 2491
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result v9

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 2494
    iget v9, v2, Landroid/os/Debug$MemoryInfo;->nativeSwappablePss:I

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 2495
    iget v9, v2, Landroid/os/Debug$MemoryInfo;->dalvikSwappablePss:I

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 2496
    iget v9, v2, Landroid/os/Debug$MemoryInfo;->otherSwappablePss:I

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 2497
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalSwappablePss()I

    move-result v9

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 2500
    iget v9, v2, Landroid/os/Debug$MemoryInfo;->nativeSharedDirty:I

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 2501
    iget v9, v2, Landroid/os/Debug$MemoryInfo;->dalvikSharedDirty:I

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 2502
    iget v9, v2, Landroid/os/Debug$MemoryInfo;->otherSharedDirty:I

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 2503
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalSharedDirty()I

    move-result v9

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 2506
    iget v9, v2, Landroid/os/Debug$MemoryInfo;->nativeSharedClean:I

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 2507
    iget v9, v2, Landroid/os/Debug$MemoryInfo;->dalvikSharedClean:I

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 2508
    iget v9, v2, Landroid/os/Debug$MemoryInfo;->otherSharedClean:I

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 2509
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalSharedClean()I

    move-result v9

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 2512
    iget v9, v2, Landroid/os/Debug$MemoryInfo;->nativePrivateDirty:I

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 2513
    iget v9, v2, Landroid/os/Debug$MemoryInfo;->dalvikPrivateDirty:I

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 2514
    iget v9, v2, Landroid/os/Debug$MemoryInfo;->otherPrivateDirty:I

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 2515
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalPrivateDirty()I

    move-result v9

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 2518
    iget v9, v2, Landroid/os/Debug$MemoryInfo;->nativePrivateClean:I

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 2519
    iget v9, v2, Landroid/os/Debug$MemoryInfo;->dalvikPrivateClean:I

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 2520
    iget v9, v2, Landroid/os/Debug$MemoryInfo;->otherPrivateClean:I

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 2521
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalPrivateClean()I

    move-result v9

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 2524
    iget v9, v2, Landroid/os/Debug$MemoryInfo;->nativeSwappedOut:I

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 2525
    iget v9, v2, Landroid/os/Debug$MemoryInfo;->dalvikSwappedOut:I

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 2526
    iget v9, v2, Landroid/os/Debug$MemoryInfo;->otherSwappedOut:I

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 2527
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalSwappedOut()I

    move-result v9

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 2530
    iget-boolean v9, v2, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    if-eqz v9, :cond_0

    .line 2531
    iget v9, v2, Landroid/os/Debug$MemoryInfo;->nativeSwappedOutPss:I

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 2532
    iget v9, v2, Landroid/os/Debug$MemoryInfo;->dalvikSwappedOutPss:I

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 2533
    iget v9, v2, Landroid/os/Debug$MemoryInfo;->otherSwappedOutPss:I

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 2534
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalSwappedOutPss()I

    move-result v9

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    goto :goto_0

    .line 2536
    :cond_0
    const-string v1, "N/A,"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2537
    const-string v1, "N/A,"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2538
    const-string v1, "N/A,"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2539
    const-string v1, "N/A,"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2543
    :goto_0
    nop

    .local v17, "i":I
    :goto_1
    move/from16 v1, v17

    .end local v17    # "i":I
    .local v1, "i":I
    const/16 v9, 0x11

    if-ge v1, v9, :cond_2

    .line 2544
    invoke-static {v1}, Landroid/os/Debug$MemoryInfo;->getOtherLabel(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v9, 0x2c

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(C)V

    .line 2545
    invoke-virtual {v2, v1}, Landroid/os/Debug$MemoryInfo;->getOtherPss(I)I

    move-result v10

    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(C)V

    .line 2546
    invoke-virtual {v2, v1}, Landroid/os/Debug$MemoryInfo;->getOtherSwappablePss(I)I

    move-result v10

    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(C)V

    .line 2547
    invoke-virtual {v2, v1}, Landroid/os/Debug$MemoryInfo;->getOtherSharedDirty(I)I

    move-result v10

    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(C)V

    .line 2548
    invoke-virtual {v2, v1}, Landroid/os/Debug$MemoryInfo;->getOtherSharedClean(I)I

    move-result v10

    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(C)V

    .line 2549
    invoke-virtual {v2, v1}, Landroid/os/Debug$MemoryInfo;->getOtherPrivateDirty(I)I

    move-result v10

    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(C)V

    .line 2550
    invoke-virtual {v2, v1}, Landroid/os/Debug$MemoryInfo;->getOtherPrivateClean(I)I

    move-result v10

    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(C)V

    .line 2551
    invoke-virtual {v2, v1}, Landroid/os/Debug$MemoryInfo;->getOtherSwappedOut(I)I

    move-result v10

    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(C)V

    .line 2552
    iget-boolean v10, v2, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    if-eqz v10, :cond_1

    .line 2553
    invoke-virtual {v2, v1}, Landroid/os/Debug$MemoryInfo;->getOtherSwappedOutPss(I)I

    move-result v10

    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(C)V

    goto :goto_2

    .line 2555
    :cond_1
    const-string v10, "N/A,"

    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2543
    :goto_2
    add-int/lit8 v17, v1, 0x1

    .end local v1    # "i":I
    .restart local v17    # "i":I
    goto :goto_1

    .line 2558
    .end local v17    # "i":I
    :cond_2
    return-void

    .line 2561
    :cond_3
    move-object v2, v1

    const/4 v10, 0x1

    if-nez p5, :cond_1d

    .line 2562
    const/16 v19, 0xa

    const/16 v15, 0xb

    const/16 v25, 0x7

    const/16 v26, 0x6

    const/16 v27, 0x5

    if-eqz p3, :cond_7

    .line 2563
    const-string v1, "%13s %8s %8s %8s %8s %8s %8s %8s %8s %8s %8s"

    new-array v9, v15, [Ljava/lang/Object;

    const-string v18, ""

    aput-object v18, v9, v17

    const-string v18, "Pss"

    aput-object v18, v9, v10

    const-string v18, "Pss"

    const/16 v29, 0x2

    aput-object v18, v9, v29

    const-string v18, "Shared"

    const/16 v23, 0x3

    aput-object v18, v9, v23

    const-string v18, "Private"

    const/16 v22, 0x4

    aput-object v18, v9, v22

    const-string v18, "Shared"

    aput-object v18, v9, v27

    const-string v18, "Private"

    aput-object v18, v9, v26

    .line 2564
    iget-boolean v10, v2, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    if-eqz v10, :cond_4

    const-string v10, "SwapPss"

    goto :goto_3

    :cond_4
    const-string v10, "Swap"

    :goto_3
    aput-object v10, v9, v25

    const-string v10, "Heap"

    const/16 v18, 0x8

    aput-object v10, v9, v18

    const-string v10, "Heap"

    const/16 v18, 0x9

    aput-object v10, v9, v18

    const-string v10, "Heap"

    aput-object v10, v9, v19

    .line 2563
    invoke-static {v0, v1, v9}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2566
    const-string v1, "%13s %8s %8s %8s %8s %8s %8s %8s %8s %8s %8s"

    new-array v9, v15, [Ljava/lang/Object;

    const-string v10, ""

    aput-object v10, v9, v17

    const-string v10, "Total"

    const/16 v18, 0x1

    aput-object v10, v9, v18

    const-string v10, "Clean"

    const/16 v18, 0x2

    aput-object v10, v9, v18

    const-string v10, "Dirty"

    const/16 v18, 0x3

    aput-object v10, v9, v18

    const-string v10, "Dirty"

    const/16 v18, 0x4

    aput-object v10, v9, v18

    const-string v10, "Clean"

    aput-object v10, v9, v27

    const-string v10, "Clean"

    aput-object v10, v9, v26

    const-string v10, "Dirty"

    aput-object v10, v9, v25

    const-string v10, "Size"

    const/16 v18, 0x8

    aput-object v10, v9, v18

    const-string v10, "Alloc"

    const/16 v18, 0x9

    aput-object v10, v9, v18

    const-string v10, "Free"

    aput-object v10, v9, v19

    invoke-static {v0, v1, v9}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2569
    const-string v1, "%13s %8s %8s %8s %8s %8s %8s %8s %8s %8s %8s"

    new-array v9, v15, [Ljava/lang/Object;

    const-string v10, ""

    aput-object v10, v9, v17

    const-string v10, "------"

    const/16 v18, 0x1

    aput-object v10, v9, v18

    const-string v10, "------"

    const/16 v18, 0x2

    aput-object v10, v9, v18

    const-string v10, "------"

    const/16 v18, 0x3

    aput-object v10, v9, v18

    const-string v10, "------"

    const/16 v18, 0x4

    aput-object v10, v9, v18

    const-string v10, "------"

    aput-object v10, v9, v27

    const-string v10, "------"

    aput-object v10, v9, v26

    const-string v10, "------"

    aput-object v10, v9, v25

    const-string v10, "------"

    const/16 v18, 0x8

    aput-object v10, v9, v18

    const-string v10, "------"

    const/16 v18, 0x9

    aput-object v10, v9, v18

    const-string v10, "------"

    aput-object v10, v9, v19

    invoke-static {v0, v1, v9}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2571
    const-string v1, "%13s %8s %8s %8s %8s %8s %8s %8s %8s %8s %8s"

    new-array v9, v15, [Ljava/lang/Object;

    const-string v10, "Native Heap"

    aput-object v10, v9, v17

    iget v10, v2, Landroid/os/Debug$MemoryInfo;->nativePss:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/16 v18, 0x1

    aput-object v10, v9, v18

    iget v10, v2, Landroid/os/Debug$MemoryInfo;->nativeSwappablePss:I

    .line 2572
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/16 v18, 0x2

    aput-object v10, v9, v18

    iget v10, v2, Landroid/os/Debug$MemoryInfo;->nativeSharedDirty:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/16 v18, 0x3

    aput-object v10, v9, v18

    iget v10, v2, Landroid/os/Debug$MemoryInfo;->nativePrivateDirty:I

    .line 2573
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/16 v18, 0x4

    aput-object v10, v9, v18

    iget v10, v2, Landroid/os/Debug$MemoryInfo;->nativeSharedClean:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v27

    iget v10, v2, Landroid/os/Debug$MemoryInfo;->nativePrivateClean:I

    .line 2574
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v26

    iget-boolean v10, v2, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    if-eqz v10, :cond_5

    .line 2575
    iget v10, v2, Landroid/os/Debug$MemoryInfo;->nativeSwappedOutPss:I

    goto :goto_4

    :cond_5
    iget v10, v2, Landroid/os/Debug$MemoryInfo;->nativeSwappedOut:I

    .line 2574
    :goto_4
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v25

    .line 2576
    invoke-static/range {p8 .. p9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    const/16 v18, 0x8

    aput-object v10, v9, v18

    invoke-static/range {p10 .. p11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    const/16 v18, 0x9

    aput-object v10, v9, v18

    invoke-static/range {p12 .. p13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v9, v19

    .line 2571
    invoke-static {v0, v1, v9}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2577
    const-string v1, "%13s %8s %8s %8s %8s %8s %8s %8s %8s %8s %8s"

    new-array v9, v15, [Ljava/lang/Object;

    const-string v10, "Dalvik Heap"

    aput-object v10, v9, v17

    iget v10, v2, Landroid/os/Debug$MemoryInfo;->dalvikPss:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/16 v18, 0x1

    aput-object v10, v9, v18

    iget v10, v2, Landroid/os/Debug$MemoryInfo;->dalvikSwappablePss:I

    .line 2578
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/16 v18, 0x2

    aput-object v10, v9, v18

    iget v10, v2, Landroid/os/Debug$MemoryInfo;->dalvikSharedDirty:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/16 v18, 0x3

    aput-object v10, v9, v18

    iget v10, v2, Landroid/os/Debug$MemoryInfo;->dalvikPrivateDirty:I

    .line 2579
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/16 v18, 0x4

    aput-object v10, v9, v18

    iget v10, v2, Landroid/os/Debug$MemoryInfo;->dalvikSharedClean:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v27

    iget v10, v2, Landroid/os/Debug$MemoryInfo;->dalvikPrivateClean:I

    .line 2580
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v26

    iget-boolean v10, v2, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    if-eqz v10, :cond_6

    .line 2581
    iget v10, v2, Landroid/os/Debug$MemoryInfo;->dalvikSwappedOutPss:I

    goto :goto_5

    :cond_6
    iget v10, v2, Landroid/os/Debug$MemoryInfo;->dalvikSwappedOut:I

    .line 2580
    :goto_5
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v25

    .line 2582
    move-wide/from16 v20, p14

    invoke-static/range {p14 .. p15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    const/16 v15, 0x8

    aput-object v10, v9, v15

    invoke-static/range {p16 .. p17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    const/16 v18, 0x9

    aput-object v10, v9, v18

    invoke-static/range {p18 .. p19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v9, v19

    .line 2577
    invoke-static {v0, v1, v9}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_9

    .line 2584
    :cond_7
    const/16 v15, 0x8

    move-wide/from16 v20, p14

    const-string v1, "%13s %8s %8s %8s %8s %8s %8s %8s"

    new-array v9, v15, [Ljava/lang/Object;

    const-string v10, ""

    aput-object v10, v9, v17

    const-string v10, "Pss"

    const/4 v15, 0x1

    aput-object v10, v9, v15

    const-string v10, "Private"

    const/4 v15, 0x2

    aput-object v10, v9, v15

    const-string v10, "Private"

    const/4 v15, 0x3

    aput-object v10, v9, v15

    .line 2585
    iget-boolean v10, v2, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    if-eqz v10, :cond_8

    const-string v10, "SwapPss"

    goto :goto_6

    :cond_8
    const-string v10, "Swap"

    :goto_6
    const/4 v15, 0x4

    aput-object v10, v9, v15

    const-string v10, "Heap"

    aput-object v10, v9, v27

    const-string v10, "Heap"

    aput-object v10, v9, v26

    const-string v10, "Heap"

    aput-object v10, v9, v25

    .line 2584
    invoke-static {v0, v1, v9}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2587
    const-string v1, "%13s %8s %8s %8s %8s %8s %8s %8s"

    const/16 v9, 0x8

    new-array v10, v9, [Ljava/lang/Object;

    const-string v9, ""

    aput-object v9, v10, v17

    const-string v9, "Total"

    const/4 v15, 0x1

    aput-object v9, v10, v15

    const-string v9, "Dirty"

    const/4 v15, 0x2

    aput-object v9, v10, v15

    const-string v9, "Clean"

    const/4 v15, 0x3

    aput-object v9, v10, v15

    const-string v9, "Dirty"

    const/4 v15, 0x4

    aput-object v9, v10, v15

    const-string v9, "Size"

    aput-object v9, v10, v27

    const-string v9, "Alloc"

    aput-object v9, v10, v26

    const-string v9, "Free"

    aput-object v9, v10, v25

    invoke-static {v0, v1, v10}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2589
    const-string v1, "%13s %8s %8s %8s %8s %8s %8s %8s"

    const/16 v9, 0x9

    new-array v10, v9, [Ljava/lang/Object;

    const-string v9, ""

    aput-object v9, v10, v17

    const-string v9, "------"

    const/4 v15, 0x1

    aput-object v9, v10, v15

    const-string v9, "------"

    const/4 v15, 0x2

    aput-object v9, v10, v15

    const-string v9, "------"

    const/4 v15, 0x3

    aput-object v9, v10, v15

    const-string v9, "------"

    const/4 v15, 0x4

    aput-object v9, v10, v15

    const-string v9, "------"

    aput-object v9, v10, v27

    const-string v9, "------"

    aput-object v9, v10, v26

    const-string v9, "------"

    aput-object v9, v10, v25

    const-string v9, "------"

    const/16 v15, 0x8

    aput-object v9, v10, v15

    invoke-static {v0, v1, v10}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2591
    const-string v1, "%13s %8s %8s %8s %8s %8s %8s %8s"

    new-array v9, v15, [Ljava/lang/Object;

    const-string v10, "Native Heap"

    aput-object v10, v9, v17

    iget v10, v2, Landroid/os/Debug$MemoryInfo;->nativePss:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v15, 0x1

    aput-object v10, v9, v15

    iget v10, v2, Landroid/os/Debug$MemoryInfo;->nativePrivateDirty:I

    .line 2592
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v15, 0x2

    aput-object v10, v9, v15

    iget v10, v2, Landroid/os/Debug$MemoryInfo;->nativePrivateClean:I

    .line 2593
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v15, 0x3

    aput-object v10, v9, v15

    .line 2594
    iget-boolean v10, v2, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    if-eqz v10, :cond_9

    iget v10, v2, Landroid/os/Debug$MemoryInfo;->nativeSwappedOutPss:I

    goto :goto_7

    .line 2595
    :cond_9
    iget v10, v2, Landroid/os/Debug$MemoryInfo;->nativeSwappedOut:I

    .line 2594
    :goto_7
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v15, 0x4

    aput-object v10, v9, v15

    .line 2596
    invoke-static/range {p8 .. p9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v9, v27

    invoke-static/range {p10 .. p11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v9, v26

    invoke-static/range {p12 .. p13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v9, v25

    .line 2591
    invoke-static {v0, v1, v9}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2597
    const-string v1, "%13s %8s %8s %8s %8s %8s %8s %8s"

    const/16 v9, 0x8

    new-array v10, v9, [Ljava/lang/Object;

    const-string v9, "Dalvik Heap"

    aput-object v9, v10, v17

    iget v9, v2, Landroid/os/Debug$MemoryInfo;->dalvikPss:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v15, 0x1

    aput-object v9, v10, v15

    iget v9, v2, Landroid/os/Debug$MemoryInfo;->dalvikPrivateDirty:I

    .line 2598
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v15, 0x2

    aput-object v9, v10, v15

    iget v9, v2, Landroid/os/Debug$MemoryInfo;->dalvikPrivateClean:I

    .line 2599
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v15, 0x3

    aput-object v9, v10, v15

    .line 2600
    iget-boolean v9, v2, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    if-eqz v9, :cond_a

    iget v9, v2, Landroid/os/Debug$MemoryInfo;->dalvikSwappedOutPss:I

    goto :goto_8

    .line 2601
    :cond_a
    iget v9, v2, Landroid/os/Debug$MemoryInfo;->dalvikSwappedOut:I

    .line 2600
    :goto_8
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v15, 0x4

    aput-object v9, v10, v15

    .line 2602
    invoke-static/range {p14 .. p15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v10, v27

    invoke-static/range {p16 .. p17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v10, v26

    invoke-static/range {p18 .. p19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v10, v25

    .line 2597
    invoke-static {v0, v1, v10}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2605
    :goto_9
    iget v1, v2, Landroid/os/Debug$MemoryInfo;->otherPss:I

    .line 2606
    .local v1, "otherPss":I
    iget v9, v2, Landroid/os/Debug$MemoryInfo;->otherSwappablePss:I

    .line 2607
    .local v9, "otherSwappablePss":I
    iget v10, v2, Landroid/os/Debug$MemoryInfo;->otherSharedDirty:I

    .line 2608
    .local v10, "otherSharedDirty":I
    iget v15, v2, Landroid/os/Debug$MemoryInfo;->otherPrivateDirty:I

    .line 2609
    .local v15, "otherPrivateDirty":I
    move/from16 v32, v1

    iget v1, v2, Landroid/os/Debug$MemoryInfo;->otherSharedClean:I

    .line 2610
    .local v1, "otherSharedClean":I
    .local v32, "otherPss":I
    move/from16 v33, v1

    iget v1, v2, Landroid/os/Debug$MemoryInfo;->otherPrivateClean:I

    .line 2611
    .local v1, "otherPrivateClean":I
    .local v33, "otherSharedClean":I
    move/from16 v34, v1

    iget v1, v2, Landroid/os/Debug$MemoryInfo;->otherSwappedOut:I

    .line 2612
    .local v1, "otherSwappedOut":I
    .local v34, "otherPrivateClean":I
    move/from16 v35, v1

    iget v1, v2, Landroid/os/Debug$MemoryInfo;->otherSwappedOutPss:I

    .line 2614
    .local v1, "otherSwappedOutPss":I
    .local v35, "otherSwappedOut":I
    move v14, v1

    move v7, v15

    move/from16 v1, v17

    move/from16 v8, v33

    move/from16 v13, v34

    move v15, v10

    move v10, v9

    move/from16 v9, v32

    .end local v32    # "otherPss":I
    .end local v33    # "otherSharedClean":I
    .end local v34    # "otherPrivateClean":I
    .local v1, "i":I
    .local v7, "otherPrivateDirty":I
    .local v8, "otherSharedClean":I
    .local v9, "otherPss":I
    .local v10, "otherSwappablePss":I
    .local v13, "otherPrivateClean":I
    .local v14, "otherSwappedOutPss":I
    .local v15, "otherSharedDirty":I
    :goto_a
    const/16 v5, 0x11

    if-ge v1, v5, :cond_11

    .line 2615
    invoke-virtual {v2, v1}, Landroid/os/Debug$MemoryInfo;->getOtherPss(I)I

    move-result v6

    .line 2616
    .local v6, "myPss":I
    invoke-virtual {v2, v1}, Landroid/os/Debug$MemoryInfo;->getOtherSwappablePss(I)I

    move-result v5

    .line 2617
    .local v5, "mySwappablePss":I
    invoke-virtual {v2, v1}, Landroid/os/Debug$MemoryInfo;->getOtherSharedDirty(I)I

    move-result v11

    .line 2618
    .local v11, "mySharedDirty":I
    invoke-virtual {v2, v1}, Landroid/os/Debug$MemoryInfo;->getOtherPrivateDirty(I)I

    move-result v12

    .line 2619
    .local v12, "myPrivateDirty":I
    invoke-virtual {v2, v1}, Landroid/os/Debug$MemoryInfo;->getOtherSharedClean(I)I

    move-result v3

    .line 2620
    .local v3, "mySharedClean":I
    invoke-virtual {v2, v1}, Landroid/os/Debug$MemoryInfo;->getOtherPrivateClean(I)I

    move-result v4

    .line 2621
    .local v4, "myPrivateClean":I
    invoke-virtual {v2, v1}, Landroid/os/Debug$MemoryInfo;->getOtherSwappedOut(I)I

    move-result v16

    .line 2622
    .local v16, "mySwappedOut":I
    invoke-virtual {v2, v1}, Landroid/os/Debug$MemoryInfo;->getOtherSwappedOutPss(I)I

    move-result v18

    .line 2623
    .local v18, "mySwappedOutPss":I
    if-nez v6, :cond_d

    if-nez v11, :cond_d

    if-nez v12, :cond_d

    if-nez v3, :cond_d

    if-nez v4, :cond_d

    .line 2625
    move/from16 v36, v14

    iget-boolean v14, v2, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    .end local v14    # "otherSwappedOutPss":I
    .local v36, "otherSwappedOutPss":I
    if-eqz v14, :cond_b

    move/from16 v14, v18

    goto :goto_b

    :cond_b
    move/from16 v14, v16

    :goto_b
    if-eqz v14, :cond_c

    goto :goto_c

    .line 2614
    .end local v3    # "mySharedClean":I
    .end local v4    # "myPrivateClean":I
    .end local v5    # "mySwappablePss":I
    .end local v6    # "myPss":I
    .end local v11    # "mySharedDirty":I
    .end local v12    # "myPrivateDirty":I
    .end local v16    # "mySwappedOut":I
    .end local v18    # "mySwappedOutPss":I
    :cond_c
    move/from16 v14, v36

    goto/16 :goto_10

    .line 2626
    .end local v36    # "otherSwappedOutPss":I
    .restart local v3    # "mySharedClean":I
    .restart local v4    # "myPrivateClean":I
    .restart local v5    # "mySwappablePss":I
    .restart local v6    # "myPss":I
    .restart local v11    # "mySharedDirty":I
    .restart local v12    # "myPrivateDirty":I
    .restart local v14    # "otherSwappedOutPss":I
    .restart local v16    # "mySwappedOut":I
    .restart local v18    # "mySwappedOutPss":I
    :cond_d
    move/from16 v36, v14

    .end local v14    # "otherSwappedOutPss":I
    .restart local v36    # "otherSwappedOutPss":I
    :goto_c
    if-eqz p3, :cond_f

    .line 2627
    const-string v14, "%13s %8s %8s %8s %8s %8s %8s %8s %8s %8s %8s"

    move/from16 v38, v8

    move/from16 v37, v13

    const/16 v13, 0xb

    new-array v8, v13, [Ljava/lang/Object;

    .end local v8    # "otherSharedClean":I
    .end local v13    # "otherPrivateClean":I
    .local v37, "otherPrivateClean":I
    .local v38, "otherSharedClean":I
    invoke-static {v1}, Landroid/os/Debug$MemoryInfo;->getOtherLabel(I)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v8, v17

    .line 2628
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/16 v30, 0x1

    aput-object v13, v8, v30

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/16 v29, 0x2

    aput-object v13, v8, v29

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/16 v23, 0x3

    aput-object v13, v8, v23

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/16 v22, 0x4

    aput-object v13, v8, v22

    .line 2629
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v8, v27

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v8, v26

    .line 2630
    iget-boolean v13, v2, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    if-eqz v13, :cond_e

    move/from16 v13, v18

    goto :goto_d

    :cond_e
    move/from16 v13, v16

    :goto_d
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v8, v25

    const-string v13, ""

    move/from16 v39, v3

    const/16 v3, 0x8

    aput-object v13, v8, v3

    .end local v3    # "mySharedClean":I
    .local v39, "mySharedClean":I
    const-string v13, ""

    const/16 v24, 0x9

    aput-object v13, v8, v24

    const-string v13, ""

    aput-object v13, v8, v19

    .line 2627
    invoke-static {v0, v14, v8}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_f

    .line 2633
    .end local v37    # "otherPrivateClean":I
    .end local v38    # "otherSharedClean":I
    .end local v39    # "mySharedClean":I
    .restart local v3    # "mySharedClean":I
    .restart local v8    # "otherSharedClean":I
    .restart local v13    # "otherPrivateClean":I
    :cond_f
    move/from16 v39, v3

    move/from16 v38, v8

    move/from16 v37, v13

    const/16 v3, 0x8

    .end local v3    # "mySharedClean":I
    .end local v8    # "otherSharedClean":I
    .end local v13    # "otherPrivateClean":I
    .restart local v37    # "otherPrivateClean":I
    .restart local v38    # "otherSharedClean":I
    .restart local v39    # "mySharedClean":I
    const-string v8, "%13s %8s %8s %8s %8s %8s %8s %8s"

    new-array v13, v3, [Ljava/lang/Object;

    invoke-static {v1}, Landroid/os/Debug$MemoryInfo;->getOtherLabel(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v13, v17

    .line 2634
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v14, 0x1

    aput-object v3, v13, v14

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v14, 0x2

    aput-object v3, v13, v14

    .line 2635
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v14, 0x3

    aput-object v3, v13, v14

    .line 2636
    iget-boolean v3, v2, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    if-eqz v3, :cond_10

    move/from16 v3, v18

    goto :goto_e

    :cond_10
    move/from16 v3, v16

    :goto_e
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v14, 0x4

    aput-object v3, v13, v14

    const-string v3, ""

    aput-object v3, v13, v27

    const-string v3, ""

    aput-object v3, v13, v26

    const-string v3, ""

    aput-object v3, v13, v25

    .line 2633
    invoke-static {v0, v8, v13}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2639
    :goto_f
    sub-int/2addr v9, v6

    .line 2640
    sub-int/2addr v10, v5

    .line 2641
    sub-int/2addr v15, v11

    .line 2642
    sub-int/2addr v7, v12

    .line 2643
    sub-int v8, v38, v39

    .line 2644
    .end local v38    # "otherSharedClean":I
    .restart local v8    # "otherSharedClean":I
    sub-int v13, v37, v4

    .line 2645
    .end local v37    # "otherPrivateClean":I
    .restart local v13    # "otherPrivateClean":I
    sub-int v35, v35, v16

    .line 2646
    sub-int v14, v36, v18

    .line 2614
    .end local v4    # "myPrivateClean":I
    .end local v5    # "mySwappablePss":I
    .end local v6    # "myPss":I
    .end local v11    # "mySharedDirty":I
    .end local v12    # "myPrivateDirty":I
    .end local v16    # "mySwappedOut":I
    .end local v18    # "mySwappedOutPss":I
    .end local v36    # "otherSwappedOutPss":I
    .end local v39    # "mySharedClean":I
    .restart local v14    # "otherSwappedOutPss":I
    :goto_10
    add-int/lit8 v1, v1, 0x1

    move-wide/from16 v3, p8

    move-wide/from16 v5, p10

    move-wide/from16 v11, p16

    goto/16 :goto_a

    .line 2650
    .end local v1    # "i":I
    :cond_11
    move/from16 v38, v8

    move/from16 v37, v13

    move/from16 v36, v14

    .end local v8    # "otherSharedClean":I
    .end local v13    # "otherPrivateClean":I
    .end local v14    # "otherSwappedOutPss":I
    .restart local v36    # "otherSwappedOutPss":I
    .restart local v37    # "otherPrivateClean":I
    .restart local v38    # "otherSharedClean":I
    if-eqz p3, :cond_14

    .line 2651
    const-string v1, "%13s %8s %8s %8s %8s %8s %8s %8s %8s %8s %8s"

    const/16 v3, 0xb

    new-array v4, v3, [Ljava/lang/Object;

    const-string v3, "Unknown"

    aput-object v3, v4, v17

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v4, v5

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x2

    aput-object v3, v4, v5

    .line 2652
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x3

    aput-object v3, v4, v5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x4

    aput-object v3, v4, v5

    move/from16 v8, v38

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .end local v38    # "otherSharedClean":I
    .restart local v8    # "otherSharedClean":I
    aput-object v3, v4, v27

    move/from16 v13, v37

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .end local v37    # "otherPrivateClean":I
    .restart local v13    # "otherPrivateClean":I
    aput-object v3, v4, v26

    .line 2653
    iget-boolean v3, v2, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    if-eqz v3, :cond_12

    move/from16 v3, v36

    goto :goto_11

    :cond_12
    move/from16 v3, v35

    :goto_11
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v25

    const-string v3, ""

    const/16 v5, 0x8

    aput-object v3, v4, v5

    const-string v3, ""

    const/16 v5, 0x9

    aput-object v3, v4, v5

    const-string v3, ""

    aput-object v3, v4, v19

    .line 2651
    invoke-static {v0, v1, v4}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2655
    const-string v1, "%13s %8s %8s %8s %8s %8s %8s %8s %8s %8s %8s"

    const/16 v3, 0xb

    new-array v4, v3, [Ljava/lang/Object;

    const-string v3, "TOTAL"

    aput-object v3, v4, v17

    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v4, v5

    .line 2656
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalSwappablePss()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x2

    aput-object v3, v4, v5

    .line 2657
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalSharedDirty()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x3

    aput-object v3, v4, v5

    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalPrivateDirty()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x4

    aput-object v3, v4, v5

    .line 2658
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalSharedClean()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v27

    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalPrivateClean()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v26

    .line 2659
    iget-boolean v3, v2, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    if-eqz v3, :cond_13

    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalSwappedOutPss()I

    move-result v3

    goto :goto_12

    .line 2660
    :cond_13
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalSwappedOut()I

    move-result v3

    .line 2659
    :goto_12
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v25

    move-wide/from16 v5, p8

    add-long v11, v5, v20

    .line 2661
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/16 v11, 0x8

    aput-object v3, v4, v11

    move/from16 v40, v7

    move/from16 v41, v8

    const/16 v3, 0x11

    move-wide/from16 v11, p10

    move-wide/from16 v32, p16

    add-long v7, v11, v32

    .end local v7    # "otherPrivateDirty":I
    .end local v8    # "otherSharedClean":I
    .local v40, "otherPrivateDirty":I
    .local v41, "otherSharedClean":I
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const/16 v8, 0x9

    aput-object v7, v4, v8

    move/from16 v43, v10

    move v10, v13

    move/from16 v3, v40

    move-wide/from16 v7, p12

    move-wide/from16 v13, p18

    add-long v11, v7, v13

    .line 2662
    .end local v13    # "otherPrivateClean":I
    .end local v40    # "otherPrivateDirty":I
    .local v3, "otherPrivateDirty":I
    .local v10, "otherPrivateClean":I
    .local v43, "otherSwappablePss":I
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v4, v19

    .line 2655
    invoke-static {v0, v1, v4}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2677
    move/from16 v44, v3

    move-wide/from16 v3, p10

    goto/16 :goto_15

    .line 2664
    .end local v3    # "otherPrivateDirty":I
    .end local v41    # "otherSharedClean":I
    .end local v43    # "otherSwappablePss":I
    .restart local v7    # "otherPrivateDirty":I
    .local v10, "otherSwappablePss":I
    .restart local v37    # "otherPrivateClean":I
    .restart local v38    # "otherSharedClean":I
    :cond_14
    move v3, v7

    move/from16 v43, v10

    move/from16 v10, v37

    move/from16 v41, v38

    move-wide/from16 v5, p8

    move-wide/from16 v7, p12

    move-wide/from16 v13, p18

    move-wide/from16 v32, p16

    .end local v7    # "otherPrivateDirty":I
    .end local v37    # "otherPrivateClean":I
    .end local v38    # "otherSharedClean":I
    .restart local v3    # "otherPrivateDirty":I
    .local v10, "otherPrivateClean":I
    .restart local v41    # "otherSharedClean":I
    .restart local v43    # "otherSwappablePss":I
    const-string v1, "%13s %8s %8s %8s %8s %8s %8s %8s"

    const/16 v4, 0x8

    new-array v11, v4, [Ljava/lang/Object;

    const-string v4, "Unknown"

    aput-object v4, v11, v17

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v12, 0x1

    aput-object v4, v11, v12

    .line 2665
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v12, 0x2

    aput-object v4, v11, v12

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v12, 0x3

    aput-object v4, v11, v12

    .line 2666
    iget-boolean v4, v2, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    if-eqz v4, :cond_15

    move/from16 v4, v36

    goto :goto_13

    :cond_15
    move/from16 v4, v35

    :goto_13
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v12, 0x4

    aput-object v4, v11, v12

    const-string v4, ""

    aput-object v4, v11, v27

    const-string v4, ""

    aput-object v4, v11, v26

    const-string v4, ""

    aput-object v4, v11, v25

    .line 2664
    invoke-static {v0, v1, v11}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2668
    const-string v1, "%13s %8s %8s %8s %8s %8s %8s %8s"

    const/16 v4, 0x8

    new-array v11, v4, [Ljava/lang/Object;

    const-string v4, "TOTAL"

    aput-object v4, v11, v17

    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v12, 0x1

    aput-object v4, v11, v12

    .line 2669
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalPrivateDirty()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v12, 0x2

    aput-object v4, v11, v12

    .line 2670
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalPrivateClean()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v12, 0x3

    aput-object v4, v11, v12

    .line 2671
    iget-boolean v4, v2, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    if-eqz v4, :cond_16

    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalSwappedOutPss()I

    move-result v4

    goto :goto_14

    .line 2672
    :cond_16
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalSwappedOut()I

    move-result v4

    .line 2671
    :goto_14
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v12, 0x4

    aput-object v4, v11, v12

    move/from16 v44, v3

    add-long v3, v5, v20

    .line 2673
    .end local v3    # "otherPrivateDirty":I
    .local v44, "otherPrivateDirty":I
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v11, v27

    move-wide/from16 v3, p10

    add-long v5, v3, v32

    .line 2674
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v11, v26

    add-long v5, v7, v13

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v11, v25

    .line 2668
    invoke-static {v0, v1, v11}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2677
    :goto_15
    if-eqz p4, :cond_1e

    .line 2678
    const-string v5, " "

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2679
    const-string v5, " Dalvik Details"

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2681
    const/16 v42, 0x11

    .local v42, "i":I
    :goto_16
    move/from16 v5, v42

    .line 2682
    .end local v42    # "i":I
    .local v5, "i":I
    const/16 v6, 0x1f

    if-ge v5, v6, :cond_1e

    .line 2683
    invoke-virtual {v2, v5}, Landroid/os/Debug$MemoryInfo;->getOtherPss(I)I

    move-result v6

    .line 2684
    .restart local v6    # "myPss":I
    invoke-virtual {v2, v5}, Landroid/os/Debug$MemoryInfo;->getOtherSwappablePss(I)I

    move-result v11

    .line 2685
    .local v11, "mySwappablePss":I
    invoke-virtual {v2, v5}, Landroid/os/Debug$MemoryInfo;->getOtherSharedDirty(I)I

    move-result v12

    .line 2686
    .local v12, "mySharedDirty":I
    invoke-virtual {v2, v5}, Landroid/os/Debug$MemoryInfo;->getOtherPrivateDirty(I)I

    move-result v1

    .line 2687
    .local v1, "myPrivateDirty":I
    invoke-virtual {v2, v5}, Landroid/os/Debug$MemoryInfo;->getOtherSharedClean(I)I

    move-result v3

    .line 2688
    .local v3, "mySharedClean":I
    invoke-virtual {v2, v5}, Landroid/os/Debug$MemoryInfo;->getOtherPrivateClean(I)I

    move-result v4

    .line 2689
    .restart local v4    # "myPrivateClean":I
    invoke-virtual {v2, v5}, Landroid/os/Debug$MemoryInfo;->getOtherSwappedOut(I)I

    move-result v16

    .line 2690
    .restart local v16    # "mySwappedOut":I
    invoke-virtual {v2, v5}, Landroid/os/Debug$MemoryInfo;->getOtherSwappedOutPss(I)I

    move-result v18

    .line 2691
    .restart local v18    # "mySwappedOutPss":I
    if-nez v6, :cond_19

    if-nez v12, :cond_19

    if-nez v1, :cond_19

    if-nez v3, :cond_19

    if-nez v4, :cond_19

    .line 2693
    iget-boolean v7, v2, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    if-eqz v7, :cond_17

    move/from16 v7, v18

    goto :goto_17

    :cond_17
    move/from16 v7, v16

    :goto_17
    if-eqz v7, :cond_18

    goto :goto_18

    .line 2682
    .end local v1    # "myPrivateDirty":I
    .end local v3    # "mySharedClean":I
    .end local v4    # "myPrivateClean":I
    .end local v6    # "myPss":I
    .end local v11    # "mySwappablePss":I
    .end local v12    # "mySharedDirty":I
    .end local v16    # "mySwappedOut":I
    .end local v18    # "mySwappedOutPss":I
    :cond_18
    move/from16 v45, v9

    const/16 v3, 0x8

    const/16 v24, 0x9

    goto/16 :goto_1b

    .line 2694
    .restart local v1    # "myPrivateDirty":I
    .restart local v3    # "mySharedClean":I
    .restart local v4    # "myPrivateClean":I
    .restart local v6    # "myPss":I
    .restart local v11    # "mySwappablePss":I
    .restart local v12    # "mySharedDirty":I
    .restart local v16    # "mySwappedOut":I
    .restart local v18    # "mySwappedOutPss":I
    :cond_19
    :goto_18
    if-eqz p3, :cond_1b

    .line 2695
    const-string v7, "%13s %8s %8s %8s %8s %8s %8s %8s %8s %8s %8s"

    move/from16 v45, v9

    const/16 v8, 0xb

    new-array v9, v8, [Ljava/lang/Object;

    .end local v9    # "otherPss":I
    .local v45, "otherPss":I
    invoke-static {v5}, Landroid/os/Debug$MemoryInfo;->getOtherLabel(I)Ljava/lang/String;

    move-result-object v31

    aput-object v31, v9, v17

    .line 2696
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    const/16 v30, 0x1

    aput-object v31, v9, v30

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    const/16 v29, 0x2

    aput-object v31, v9, v29

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    const/16 v23, 0x3

    aput-object v31, v9, v23

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    const/16 v22, 0x4

    aput-object v31, v9, v22

    .line 2697
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    aput-object v31, v9, v27

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    aput-object v31, v9, v26

    .line 2698
    iget-boolean v8, v2, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    if-eqz v8, :cond_1a

    move/from16 v8, v18

    goto :goto_19

    :cond_1a
    move/from16 v8, v16

    :goto_19
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v9, v25

    const-string v8, ""

    move/from16 v46, v3

    const/16 v3, 0x8

    aput-object v8, v9, v3

    .end local v3    # "mySharedClean":I
    .local v46, "mySharedClean":I
    const-string v8, ""

    const/16 v24, 0x9

    aput-object v8, v9, v24

    const-string v8, ""

    aput-object v8, v9, v19

    .line 2695
    invoke-static {v0, v7, v9}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1b

    .line 2701
    .end local v45    # "otherPss":I
    .end local v46    # "mySharedClean":I
    .restart local v3    # "mySharedClean":I
    .restart local v9    # "otherPss":I
    :cond_1b
    move/from16 v46, v3

    move/from16 v45, v9

    const/16 v3, 0x8

    const/16 v24, 0x9

    .end local v3    # "mySharedClean":I
    .end local v9    # "otherPss":I
    .restart local v45    # "otherPss":I
    .restart local v46    # "mySharedClean":I
    const-string v7, "%13s %8s %8s %8s %8s %8s %8s %8s"

    new-array v8, v3, [Ljava/lang/Object;

    invoke-static {v5}, Landroid/os/Debug$MemoryInfo;->getOtherLabel(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v17

    .line 2702
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/16 v28, 0x1

    aput-object v9, v8, v28

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/16 v28, 0x2

    aput-object v9, v8, v28

    .line 2703
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/16 v23, 0x3

    aput-object v9, v8, v23

    .line 2704
    iget-boolean v9, v2, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    if-eqz v9, :cond_1c

    move/from16 v9, v18

    goto :goto_1a

    :cond_1c
    move/from16 v9, v16

    :goto_1a
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/16 v22, 0x4

    aput-object v9, v8, v22

    const-string v9, ""

    aput-object v9, v8, v27

    const-string v9, ""

    aput-object v9, v8, v26

    const-string v9, ""

    aput-object v9, v8, v25

    .line 2701
    invoke-static {v0, v7, v8}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2682
    .end local v1    # "myPrivateDirty":I
    .end local v4    # "myPrivateClean":I
    .end local v6    # "myPss":I
    .end local v11    # "mySwappablePss":I
    .end local v12    # "mySharedDirty":I
    .end local v16    # "mySwappedOut":I
    .end local v18    # "mySwappedOutPss":I
    .end local v46    # "mySharedClean":I
    :goto_1b
    add-int/lit8 v42, v5, 0x1

    .line 2681
    .end local v5    # "i":I
    .restart local v42    # "i":I
    move/from16 v9, v45

    move-wide/from16 v3, p10

    move-wide/from16 v7, p12

    goto/16 :goto_16

    .line 2712
    .end local v10    # "otherPrivateClean":I
    .end local v15    # "otherSharedDirty":I
    .end local v35    # "otherSwappedOut":I
    .end local v36    # "otherSwappedOutPss":I
    .end local v41    # "otherSharedClean":I
    .end local v42    # "i":I
    .end local v43    # "otherSwappablePss":I
    .end local v44    # "otherPrivateDirty":I
    .end local v45    # "otherPss":I
    :cond_1d
    move-wide/from16 v32, v11

    move-wide/from16 v20, p14

    :cond_1e
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2713
    const-string v1, " App Summary"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2714
    const-string v1, "%21s %8s"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Object;

    const-string v5, ""

    aput-object v5, v4, v17

    const-string v5, "Pss(KB)"

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-static {v0, v1, v4}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2715
    const-string v1, "%21s %8s"

    new-array v4, v3, [Ljava/lang/Object;

    const-string v5, ""

    aput-object v5, v4, v17

    const-string v5, "------"

    aput-object v5, v4, v6

    invoke-static {v0, v1, v4}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2716
    const-string v1, "%21s %8d"

    new-array v4, v3, [Ljava/lang/Object;

    const-string v5, "Java Heap:"

    aput-object v5, v4, v17

    .line 2717
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getSummaryJavaHeap()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    .line 2716
    invoke-static {v0, v1, v4}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2718
    const-string v1, "%21s %8d"

    new-array v4, v3, [Ljava/lang/Object;

    const-string v5, "Native Heap:"

    aput-object v5, v4, v17

    .line 2719
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getSummaryNativeHeap()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    .line 2718
    invoke-static {v0, v1, v4}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2720
    const-string v1, "%21s %8d"

    new-array v4, v3, [Ljava/lang/Object;

    const-string v5, "Code:"

    aput-object v5, v4, v17

    .line 2721
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getSummaryCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    .line 2720
    invoke-static {v0, v1, v4}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2722
    const-string v1, "%21s %8d"

    new-array v4, v3, [Ljava/lang/Object;

    const-string v5, "Stack:"

    aput-object v5, v4, v17

    .line 2723
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getSummaryStack()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    .line 2722
    invoke-static {v0, v1, v4}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2724
    const-string v1, "%21s %8d"

    new-array v4, v3, [Ljava/lang/Object;

    const-string v5, "Graphics:"

    aput-object v5, v4, v17

    .line 2725
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getSummaryGraphics()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    .line 2724
    invoke-static {v0, v1, v4}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2726
    const-string v1, "%21s %8d"

    new-array v4, v3, [Ljava/lang/Object;

    const-string v5, "Private Other:"

    aput-object v5, v4, v17

    .line 2727
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getSummaryPrivateOther()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    .line 2726
    invoke-static {v0, v1, v4}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2728
    const-string v1, "%21s %8d"

    new-array v4, v3, [Ljava/lang/Object;

    const-string v3, "System:"

    aput-object v3, v4, v17

    .line 2729
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getSummarySystem()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v6

    .line 2728
    invoke-static {v0, v1, v4}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2730
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2731
    iget-boolean v1, v2, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    if-eqz v1, :cond_1f

    .line 2732
    const-string v1, "%21s %8d %21s %8d"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "TOTAL:"

    aput-object v4, v3, v17

    .line 2733
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getSummaryTotalPss()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const-string v4, "TOTAL SWAP PSS:"

    const/4 v5, 0x2

    aput-object v4, v3, v5

    .line 2734
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getSummaryTotalSwapPss()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x3

    aput-object v4, v3, v5

    .line 2732
    invoke-static {v0, v1, v3}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1c

    .line 2736
    :cond_1f
    const-string v1, "%21s %8d %21s %8d"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "TOTAL:"

    aput-object v4, v3, v17

    .line 2737
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getSummaryTotalPss()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const-string v4, "TOTAL SWAP (KB):"

    const/4 v5, 0x2

    aput-object v4, v3, v5

    .line 2738
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getSummaryTotalSwap()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x3

    aput-object v4, v3, v5

    .line 2736
    invoke-static {v0, v1, v3}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2740
    :goto_1c
    return-void
.end method

.method private static dumpMemoryInfo(Landroid/util/proto/ProtoOutputStream;JLjava/lang/String;IIIIIIZII)V
    .locals 15
    .param p0, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p1, "fieldId"    # J
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "pss"    # I
    .param p5, "cleanPss"    # I
    .param p6, "sharedDirty"    # I
    .param p7, "privateDirty"    # I
    .param p8, "sharedClean"    # I
    .param p9, "privateClean"    # I
    .param p10, "hasSwappedOutPss"    # Z
    .param p11, "dirtySwap"    # I
    .param p12, "dirtySwapPss"    # I

    move-object v0, p0

    .line 2751
    invoke-virtual/range {p0 .. p2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v1

    .line 2753
    .local v1, "token":J
    const-wide v3, 0x10900000001L

    move-object/from16 v5, p3

    invoke-virtual {v0, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 2754
    const-wide v3, 0x10500000002L

    move/from16 v6, p4

    invoke-virtual {v0, v3, v4, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2755
    const-wide v3, 0x10500000003L

    move/from16 v7, p5

    invoke-virtual {v0, v3, v4, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2756
    const-wide v3, 0x10500000004L

    move/from16 v8, p6

    invoke-virtual {v0, v3, v4, v8}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2757
    const-wide v3, 0x10500000005L

    move/from16 v9, p7

    invoke-virtual {v0, v3, v4, v9}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2758
    const-wide v3, 0x10500000006L

    move/from16 v10, p8

    invoke-virtual {v0, v3, v4, v10}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2759
    const-wide v3, 0x10500000007L

    move/from16 v11, p9

    invoke-virtual {v0, v3, v4, v11}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2760
    if-eqz p10, :cond_0

    .line 2761
    const-wide v12, 0x10500000009L

    move/from16 v4, p12

    invoke-virtual {v0, v12, v13, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2766
    move/from16 v14, p11

    goto :goto_0

    .line 2763
    :cond_0
    move/from16 v4, p12

    const-wide v12, 0x10500000008L

    move/from16 v14, p11

    invoke-virtual {v0, v12, v13, v14}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2766
    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 2767
    return-void
.end method

.method private findResumedActivity()Landroid/app/Activity;
    .locals 6

    .line 3084
    const/4 v0, 0x0

    .line 3085
    .local v0, "activity":Landroid/app/Activity;
    iget-object v1, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 3086
    .local v1, "NACT":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 3087
    iget-object v3, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 3088
    .local v3, "ar":Landroid/app/ActivityThread$ActivityClientRecord;
    iget-object v4, v3, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    .line 3089
    .local v4, "a":Landroid/app/Activity;
    iget-boolean v5, v4, Landroid/app/Activity;->mResumed:Z

    if-eqz v5, :cond_0

    .line 3090
    move-object v0, v4

    .line 3091
    goto :goto_1

    .line 3086
    .end local v3    # "ar":Landroid/app/ActivityThread$ActivityClientRecord;
    .end local v4    # "a":Landroid/app/Activity;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3094
    .end local v2    # "i":I
    :cond_1
    :goto_1
    return-object v0
.end method

.method static freeTextLayoutCachesIfNeeded(I)V
    .locals 1
    .param p0, "configDiff"    # I

    .line 5726
    if-eqz p0, :cond_1

    .line 5728
    and-int/lit8 v0, p0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 5729
    .local v0, "hasLocaleConfigChange":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 5730
    invoke-static {}, Landroid/graphics/Canvas;->freeTextLayoutCaches()V

    .line 5734
    .end local v0    # "hasLocaleConfigChange":Z
    :cond_1
    return-void
.end method

.method private getGetProviderLock(Ljava/lang/String;I)Ljava/lang/Object;
    .locals 4
    .param p1, "auth"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 6863
    new-instance v0, Landroid/app/ActivityThread$ProviderKey;

    invoke-direct {v0, p1, p2}, Landroid/app/ActivityThread$ProviderKey;-><init>(Ljava/lang/String;I)V

    .line 6864
    .local v0, "key":Landroid/app/ActivityThread$ProviderKey;
    iget-object v1, p0, Landroid/app/ActivityThread;->mGetProviderLocks:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 6865
    :try_start_0
    iget-object v2, p0, Landroid/app/ActivityThread;->mGetProviderLocks:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 6866
    .local v2, "lock":Ljava/lang/Object;
    if-nez v2, :cond_0

    .line 6867
    move-object v2, v0

    .line 6868
    iget-object v3, p0, Landroid/app/ActivityThread;->mGetProviderLocks:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6870
    :cond_0
    monitor-exit v1

    return-object v2

    .line 6871
    .end local v2    # "lock":Ljava/lang/Object;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private getInstrumentationLibrary(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/InstrumentationInfo;)Ljava/lang/String;
    .locals 4
    .param p1, "appInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "insInfo"    # Landroid/content/pm/InstrumentationInfo;

    .line 6039
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->secondaryCpuAbi:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->secondaryCpuAbi:Ljava/lang/String;

    iget-object v1, p2, Landroid/content/pm/InstrumentationInfo;->secondaryCpuAbi:Ljava/lang/String;

    .line 6040
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6043
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->secondaryCpuAbi:Ljava/lang/String;

    .line 6044
    invoke-static {v0}, Ldalvik/system/VMRuntime;->getInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6045
    .local v0, "secondaryIsa":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ro.dalvik.vm.isa."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 6046
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 6047
    .local v1, "secondaryDexCodeIsa":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v0

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    move-object v0, v2

    .line 6049
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v2

    invoke-virtual {v2}, Ldalvik/system/VMRuntime;->vmInstructionSet()Ljava/lang/String;

    move-result-object v2

    .line 6050
    .local v2, "runtimeIsa":Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 6051
    iget-object v3, p2, Landroid/content/pm/InstrumentationInfo;->secondaryNativeLibraryDir:Ljava/lang/String;

    return-object v3

    .line 6054
    .end local v0    # "secondaryIsa":Ljava/lang/String;
    .end local v1    # "secondaryDexCodeIsa":Ljava/lang/String;
    .end local v2    # "runtimeIsa":Ljava/lang/String;
    :cond_1
    iget-object v0, p2, Landroid/content/pm/InstrumentationInfo;->nativeLibraryDir:Ljava/lang/String;

    return-object v0
.end method

.method public static getIntentBeingBroadcast()Landroid/content/Intent;
    .locals 1

    .line 3694
    sget-object v0, Landroid/app/ActivityThread;->sCurrentBroadcastIntent:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    return-object v0
.end method

.method private getPackageInfo(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;Ljava/lang/ClassLoader;ZZZ)Landroid/app/LoadedApk;
    .locals 15
    .param p1, "aInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "compatInfo"    # Landroid/content/res/CompatibilityInfo;
    .param p3, "baseLoader"    # Ljava/lang/ClassLoader;
    .param p4, "securityViolation"    # Z
    .param p5, "includeCode"    # Z
    .param p6, "registerPackage"    # Z

    move-object v9, p0

    move-object/from16 v10, p1

    .line 2274
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    iget v1, v10, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    move v11, v0

    .line 2275
    .local v11, "differentUser":Z
    iget-object v12, v9, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    monitor-enter v12

    .line 2277
    if-eqz v11, :cond_1

    .line 2279
    const/4 v0, 0x0

    .local v0, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    :goto_1
    goto :goto_2

    .line 2280
    .end local v0    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    :cond_1
    if-eqz p5, :cond_2

    .line 2281
    :try_start_0
    iget-object v0, v9, Landroid/app/ActivityThread;->mPackages:Landroid/util/ArrayMap;

    iget-object v1, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    goto :goto_1

    .line 2315
    :catchall_0
    move-exception v0

    goto/16 :goto_6

    .line 2283
    :cond_2
    iget-object v0, v9, Landroid/app/ActivityThread;->mResourcePackages:Landroid/util/ArrayMap;

    iget-object v1, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 2286
    .restart local v0    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    :goto_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/LoadedApk;

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    move-object v13, v1

    .line 2287
    .local v13, "packageInfo":Landroid/app/LoadedApk;
    if-eqz v13, :cond_4

    iget-object v1, v13, Landroid/app/LoadedApk;->mResources:Landroid/content/res/Resources;

    if-eqz v1, :cond_9

    iget-object v1, v13, Landroid/app/LoadedApk;->mResources:Landroid/content/res/Resources;

    .line 2288
    invoke-virtual {v1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/AssetManager;->isUpToDate()Z

    move-result v1

    if-nez v1, :cond_9

    .line 2294
    :cond_4
    new-instance v14, Landroid/app/LoadedApk;

    if-eqz p5, :cond_5

    iget v1, v10, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_5

    move v7, v3

    goto :goto_4

    :cond_5
    move v7, v2

    :goto_4
    move-object v1, v14

    move-object v2, v9

    move-object v3, v10

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p4

    move/from16 v8, p6

    invoke-direct/range {v1 .. v8}, Landroid/app/LoadedApk;-><init>(Landroid/app/ActivityThread;Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;Ljava/lang/ClassLoader;ZZZ)V

    move-object v13, v14

    .line 2299
    iget-boolean v1, v9, Landroid/app/ActivityThread;->mSystemThread:Z

    if-eqz v1, :cond_6

    const-string v1, "android"

    iget-object v2, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2300
    nop

    .line 2301
    invoke-virtual {v9}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v1

    iget-object v1, v1, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    invoke-virtual {v1}, Landroid/app/LoadedApk;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 2300
    invoke-virtual {v13, v10, v1}, Landroid/app/LoadedApk;->installSystemApplicationInfo(Landroid/content/pm/ApplicationInfo;Ljava/lang/ClassLoader;)V

    .line 2304
    :cond_6
    if-eqz v11, :cond_7

    goto :goto_5

    .line 2306
    :cond_7
    if-eqz p5, :cond_8

    .line 2307
    iget-object v1, v9, Landroid/app/ActivityThread;->mPackages:Landroid/util/ArrayMap;

    iget-object v2, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v13}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 2310
    :cond_8
    iget-object v1, v9, Landroid/app/ActivityThread;->mResourcePackages:Landroid/util/ArrayMap;

    iget-object v2, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v13}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2314
    :cond_9
    :goto_5
    monitor-exit v12

    return-object v13

    .line 2315
    .end local v0    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    .end local v13    # "packageInfo":Landroid/app/LoadedApk;
    :goto_6
    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getPackageManager()Landroid/content/pm/IPackageManager;
    .locals 2

    .line 2119
    sget-object v0, Landroid/app/ActivityThread;->sPackageManager:Landroid/content/pm/IPackageManager;

    if-eqz v0, :cond_0

    .line 2121
    sget-object v0, Landroid/app/ActivityThread;->sPackageManager:Landroid/content/pm/IPackageManager;

    return-object v0

    .line 2123
    :cond_0
    const-string/jumbo v0, "package"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 2125
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v1

    sput-object v1, Landroid/app/ActivityThread;->sPackageManager:Landroid/content/pm/IPackageManager;

    .line 2127
    sget-object v1, Landroid/app/ActivityThread;->sPackageManager:Landroid/content/pm/IPackageManager;

    return-object v1
.end method

.method static handleAttachAgent(Ljava/lang/String;Landroid/app/LoadedApk;)V
    .locals 3
    .param p0, "agent"    # Ljava/lang/String;
    .param p1, "loadedApk"    # Landroid/app/LoadedApk;

    .line 3677
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/LoadedApk;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    .line 3678
    .local v1, "classLoader":Ljava/lang/ClassLoader;
    :goto_0
    invoke-static {p0, v1}, Landroid/app/ActivityThread;->attemptAttachAgent(Ljava/lang/String;Ljava/lang/ClassLoader;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3679
    return-void

    .line 3681
    :cond_1
    if-eqz v1, :cond_2

    .line 3682
    invoke-static {p0, v0}, Landroid/app/ActivityThread;->attemptAttachAgent(Ljava/lang/String;Ljava/lang/ClassLoader;)Z

    .line 3684
    :cond_2
    return-void
.end method

.method private handleBindApplication(Landroid/app/ActivityThread$AppBindData;)V
    .locals 30
    .param p1, "data"    # Landroid/app/ActivityThread$AppBindData;

    move-object/from16 v8, p0

    .line 6142
    move-object/from16 v9, p1

    iget-object v0, v9, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v1, "com.sina.weibo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v10, 0x1

    if-nez v0, :cond_0

    iget-object v0, v9, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v1, "cn.nubia.bbs"

    .line 6143
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, v9, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v1, "com.tencent.mobileqq"

    .line 6144
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, v9, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v1, "com.qzone"

    .line 6145
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, v9, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v1, "com.antutu.ABenchMark"

    .line 6146
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, v9, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v1, "com.antutu.benchmark.full"

    .line 6147
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, v9, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v1, "com.ludashi.benchmark"

    .line 6148
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, v9, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v1, "com.ludashi.benchmark2"

    .line 6149
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, v9, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v1, "com.ludashi.vrbench"

    .line 6150
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, v9, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v1, "com.ludashi.aibench"

    .line 6151
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, v9, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v1, "com.primatelabs.geekbench3"

    .line 6152
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, v9, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v1, "com.primatelabs.geekbench"

    .line 6153
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, v9, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v1, "com.futuremark.dmandroid.application"

    .line 6154
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, v9, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v1, "com.futuremark.pcmark.android.benchmark"

    .line 6155
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6156
    :cond_0
    const/4 v0, 0x0

    .line 6157
    .local v0, "value":Ljava/lang/String;
    const-string/jumbo v1, "persist.sys.exif.model"

    const-string/jumbo v2, "model"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 6158
    .end local v0    # "value":Ljava/lang/String;
    .local v1, "value":Ljava/lang/String;
    const-string v0, "NX629J_V1S"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6160
    :try_start_0
    const-class v0, Landroid/os/Build;

    const-string v2, "MODEL"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 6161
    .local v0, "modelField":Ljava/lang/reflect/Field;
    invoke-virtual {v0, v10}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 6162
    const-class v2, Landroid/os/Build;

    const-string v3, "NX629J_V1S"

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6165
    .end local v0    # "modelField":Ljava/lang/reflect/Field;
    goto :goto_0

    .line 6163
    :catch_0
    move-exception v0

    .line 6164
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    const-string v2, "ActivityThread"

    const-string/jumbo v3, "modify MODEL value not success!"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6170
    .end local v0    # "e":Ljava/lang/ReflectiveOperationException;
    .end local v1    # "value":Ljava/lang/String;
    :cond_1
    :goto_0
    sget-boolean v0, Landroid/app/ActivityThread;->IS_SYSTEM_APP:Z

    if-nez v0, :cond_2

    iget-object v0, v9, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_2

    .line 6171
    iget-object v0, v9, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v0, v10

    if-eqz v0, :cond_2

    .line 6172
    sput-boolean v10, Landroid/app/ActivityThread;->IS_SYSTEM_APP:Z

    .line 6174
    :cond_2
    sget-boolean v0, Landroid/app/ActivityThread;->IS_SYSTEM_APP:Z

    if-nez v0, :cond_3

    iget-object v0, v9, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_3

    iget-object v0, v9, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, v9, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v1, "cn.nubia"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, v9, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v1, "com.android"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, v9, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v1, "com.google"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, v9, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v1, "android"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 6179
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, v8, Landroid/app/ActivityThread;->processTypefaceTimeStamp:J

    .line 6181
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    .line 6182
    .local v11, "st_bindApp":J
    const/4 v1, 0x0

    .line 6184
    .local v1, "ux_perf":Landroid/util/BoostFramework;
    invoke-static {}, Ldalvik/system/VMRuntime;->registerSensitiveThread()V

    .line 6185
    iget-boolean v0, v9, Landroid/app/ActivityThread$AppBindData;->trackAllocation:Z

    if-eqz v0, :cond_4

    .line 6186
    invoke-static {v10}, Lorg/apache/harmony/dalvik/ddmc/DdmVmInternal;->enableRecentAllocations(Z)V

    .line 6190
    :cond_4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Landroid/os/Process;->setStartTimes(JJ)V

    .line 6192
    iput-object v9, v8, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    .line 6193
    new-instance v0, Landroid/content/res/Configuration;

    iget-object v2, v9, Landroid/app/ActivityThread$AppBindData;->config:Landroid/content/res/Configuration;

    invoke-direct {v0, v2}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v0, v8, Landroid/app/ActivityThread;->mConfiguration:Landroid/content/res/Configuration;

    .line 6194
    new-instance v0, Landroid/content/res/Configuration;

    iget-object v2, v9, Landroid/app/ActivityThread$AppBindData;->config:Landroid/content/res/Configuration;

    invoke-direct {v0, v2}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v0, v8, Landroid/app/ActivityThread;->mCompatConfiguration:Landroid/content/res/Configuration;

    .line 6196
    new-instance v0, Landroid/app/ActivityThread$Profiler;

    invoke-direct {v0}, Landroid/app/ActivityThread$Profiler;-><init>()V

    iput-object v0, v8, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    .line 6197
    const/4 v0, 0x0

    .line 6198
    .local v0, "agent":Ljava/lang/String;
    iget-object v2, v9, Landroid/app/ActivityThread$AppBindData;->initProfilerInfo:Landroid/app/ProfilerInfo;

    if-eqz v2, :cond_5

    .line 6199
    iget-object v2, v8, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    iget-object v3, v9, Landroid/app/ActivityThread$AppBindData;->initProfilerInfo:Landroid/app/ProfilerInfo;

    iget-object v3, v3, Landroid/app/ProfilerInfo;->profileFile:Ljava/lang/String;

    iput-object v3, v2, Landroid/app/ActivityThread$Profiler;->profileFile:Ljava/lang/String;

    .line 6200
    iget-object v2, v8, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    iget-object v3, v9, Landroid/app/ActivityThread$AppBindData;->initProfilerInfo:Landroid/app/ProfilerInfo;

    iget-object v3, v3, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    iput-object v3, v2, Landroid/app/ActivityThread$Profiler;->profileFd:Landroid/os/ParcelFileDescriptor;

    .line 6201
    iget-object v2, v8, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    iget-object v3, v9, Landroid/app/ActivityThread$AppBindData;->initProfilerInfo:Landroid/app/ProfilerInfo;

    iget v3, v3, Landroid/app/ProfilerInfo;->samplingInterval:I

    iput v3, v2, Landroid/app/ActivityThread$Profiler;->samplingInterval:I

    .line 6202
    iget-object v2, v8, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    iget-object v3, v9, Landroid/app/ActivityThread$AppBindData;->initProfilerInfo:Landroid/app/ProfilerInfo;

    iget-boolean v3, v3, Landroid/app/ProfilerInfo;->autoStopProfiler:Z

    iput-boolean v3, v2, Landroid/app/ActivityThread$Profiler;->autoStopProfiler:Z

    .line 6203
    iget-object v2, v8, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    iget-object v3, v9, Landroid/app/ActivityThread$AppBindData;->initProfilerInfo:Landroid/app/ProfilerInfo;

    iget-boolean v3, v3, Landroid/app/ProfilerInfo;->streamingOutput:Z

    iput-boolean v3, v2, Landroid/app/ActivityThread$Profiler;->streamingOutput:Z

    .line 6204
    iget-object v2, v9, Landroid/app/ActivityThread$AppBindData;->initProfilerInfo:Landroid/app/ProfilerInfo;

    iget-boolean v2, v2, Landroid/app/ProfilerInfo;->attachAgentDuringBind:Z

    if-eqz v2, :cond_5

    .line 6205
    iget-object v2, v9, Landroid/app/ActivityThread$AppBindData;->initProfilerInfo:Landroid/app/ProfilerInfo;

    iget-object v0, v2, Landroid/app/ProfilerInfo;->agent:Ljava/lang/String;

    .line 6210
    .end local v0    # "agent":Ljava/lang/String;
    .local v13, "agent":Ljava/lang/String;
    :cond_5
    move-object v13, v0

    iget-object v0, v9, Landroid/app/ActivityThread$AppBindData;->processName:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/Process;->setArgV0(Ljava/lang/String;)V

    .line 6211
    iget-object v0, v9, Landroid/app/ActivityThread$AppBindData;->processName:Ljava/lang/String;

    .line 6212
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    .line 6211
    invoke-static {v0, v2}, Landroid/ddm/DdmHandleAppName;->setAppName(Ljava/lang/String;I)V

    .line 6213
    iget-object v0, v9, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v0}, Ldalvik/system/VMRuntime;->setProcessPackageName(Ljava/lang/String;)V

    .line 6215
    iget-object v0, v8, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    iget-object v0, v0, Landroid/app/ActivityThread$Profiler;->profileFd:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_6

    .line 6216
    iget-object v0, v8, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    invoke-virtual {v0}, Landroid/app/ActivityThread$Profiler;->startProfiling()V

    .line 6223
    :cond_6
    iget-object v0, v9, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v2, 0xc

    if-gt v0, v2, :cond_7

    .line 6224
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-static {v0}, Landroid/os/AsyncTask;->setDefaultExecutor(Ljava/util/concurrent/Executor;)V

    .line 6227
    :cond_7
    iget-object v0, v9, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-static {v0}, Landroid/os/Message;->updateCheckRecycle(I)V

    .line 6234
    iget-object v0, v9, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    sput v0, Landroid/graphics/ImageDecoder;->sApiLevel:I

    .line 6242
    const/4 v14, 0x0

    invoke-static {v14}, Ljava/util/TimeZone;->setDefault(Ljava/util/TimeZone;)V

    .line 6247
    iget-object v0, v9, Landroid/app/ActivityThread$AppBindData;->config:Landroid/content/res/Configuration;

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v0

    invoke-static {v0}, Landroid/os/LocaleList;->setDefault(Landroid/os/LocaleList;)V

    .line 6249
    iget-object v2, v8, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    monitor-enter v2

    .line 6255
    :try_start_1
    iget-object v0, v8, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    iget-object v3, v9, Landroid/app/ActivityThread$AppBindData;->config:Landroid/content/res/Configuration;

    iget-object v4, v9, Landroid/app/ActivityThread$AppBindData;->compatInfo:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {v0, v3, v4}, Landroid/app/ResourcesManager;->applyConfigurationToResourcesLocked(Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)Z

    .line 6256
    iget-object v0, v9, Landroid/app/ActivityThread$AppBindData;->config:Landroid/content/res/Configuration;

    iget v0, v0, Landroid/content/res/Configuration;->densityDpi:I

    iput v0, v8, Landroid/app/ActivityThread;->mCurDefaultDisplayDpi:I

    .line 6259
    iget v0, v8, Landroid/app/ActivityThread;->mCurDefaultDisplayDpi:I

    invoke-virtual {v8, v0}, Landroid/app/ActivityThread;->applyCompatConfiguration(I)Landroid/content/res/Configuration;

    .line 6260
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_e

    .line 6262
    iget-object v0, v9, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v9, Landroid/app/ActivityThread$AppBindData;->compatInfo:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {v8, v0, v2}, Landroid/app/ActivityThread;->getPackageInfoNoCheck(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;)Landroid/app/LoadedApk;

    move-result-object v0

    iput-object v0, v9, Landroid/app/ActivityThread$AppBindData;->info:Landroid/app/LoadedApk;

    .line 6264
    if-eqz v13, :cond_8

    .line 6265
    iget-object v0, v9, Landroid/app/ActivityThread$AppBindData;->info:Landroid/app/LoadedApk;

    invoke-static {v13, v0}, Landroid/app/ActivityThread;->handleAttachAgent(Ljava/lang/String;Landroid/app/LoadedApk;)V

    .line 6271
    :cond_8
    iget-object v0, v9, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v0, v0, 0x2000

    if-nez v0, :cond_9

    .line 6273
    iput-boolean v10, v8, Landroid/app/ActivityThread;->mDensityCompatMode:Z

    .line 6274
    const/16 v0, 0xa0

    invoke-static {v0}, Landroid/graphics/Bitmap;->setDefaultDensity(I)V

    goto :goto_1

    .line 6276
    :cond_9
    iget-object v0, v9, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->getOverrideDensity()I

    move-result v0

    .line 6277
    .local v0, "overrideDensity":I
    if-eqz v0, :cond_a

    .line 6278
    const-string v2, "ActivityThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "override app density from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6279
    iput-boolean v10, v8, Landroid/app/ActivityThread;->mDensityCompatMode:Z

    .line 6280
    invoke-static {v0}, Landroid/graphics/Bitmap;->setDefaultDensity(I)V

    .line 6283
    .end local v0    # "overrideDensity":I
    :cond_a
    :goto_1
    invoke-direct/range {p0 .. p0}, Landroid/app/ActivityThread;->updateDefaultDensity()V

    .line 6285
    iget-object v0, v8, Landroid/app/ActivityThread;->mCoreSettings:Landroid/os/Bundle;

    const-string/jumbo v2, "time_12_24"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 6286
    .local v15, "use24HourSetting":Ljava/lang/String;
    const/4 v0, 0x0

    .line 6287
    .local v0, "is24Hr":Ljava/lang/Boolean;
    if-eqz v15, :cond_c

    .line 6288
    const-string v2, "24"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_2

    :cond_b
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_2
    move-object v0, v2

    .line 6293
    .end local v0    # "is24Hr":Ljava/lang/Boolean;
    .local v7, "is24Hr":Ljava/lang/Boolean;
    :cond_c
    move-object v7, v0

    invoke-static {v7}, Ljava/text/DateFormat;->set24HourTimePref(Ljava/lang/Boolean;)V

    .line 6295
    iget-object v0, v8, Landroid/app/ActivityThread;->mCoreSettings:Landroid/os/Bundle;

    const-string v2, "debug_view_attributes"

    .line 6296
    const/4 v6, 0x0

    invoke-virtual {v0, v2, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_d

    move v0, v10

    goto :goto_3

    :cond_d
    move v0, v6

    :goto_3
    sput-boolean v0, Landroid/view/View;->mDebugViewAttributes:Z

    .line 6298
    iget-object v0, v9, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v0}, Landroid/os/StrictMode;->initThreadDefaults(Landroid/content/pm/ApplicationInfo;)V

    .line 6299
    iget-object v0, v9, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v0}, Landroid/os/StrictMode;->initVmDefaults(Landroid/content/pm/ApplicationInfo;)V

    .line 6306
    :try_start_2
    const-class v0, Landroid/os/Build;

    const-string v2, "SERIAL"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 6307
    .local v0, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v0, v10}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 6308
    const-class v2, Landroid/os/Build;

    iget-object v3, v9, Landroid/app/ActivityThread$AppBindData;->buildSerial:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/NoSuchFieldException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_1

    .line 6311
    .end local v0    # "field":Ljava/lang/reflect/Field;
    goto :goto_4

    .line 6309
    :catch_1
    move-exception v0

    .line 6314
    :goto_4
    iget v0, v9, Landroid/app/ActivityThread$AppBindData;->debugMode:I

    const/16 v2, 0x3e8

    if-lt v0, v2, :cond_10

    .line 6315
    iget v0, v9, Landroid/app/ActivityThread$AppBindData;->debugMode:I

    sub-int/2addr v0, v2

    iput v0, v9, Landroid/app/ActivityThread$AppBindData;->debugMode:I

    .line 6316
    iput-boolean v10, v8, Landroid/app/ActivityThread;->mLaunchForActivityStart:Z

    .line 6318
    iget-object v0, v8, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    iget-object v2, v8, Landroid/app/ActivityThread;->updateDelayStateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/app/ActivityThread$H;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6320
    :try_start_3
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v0

    .line 6321
    .local v0, "initialPackage":Ljava/lang/String;
    iget-object v2, v9, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    invoke-direct {v8, v2}, Landroid/app/ActivityThread;->isThirdPartyApp(Landroid/content/pm/ApplicationInfo;)Z

    move-result v2

    if-eqz v2, :cond_f

    sget-boolean v2, Landroid/app/ActivityThread;->sDelayBroadcastEnable:Z

    if-eqz v2, :cond_f

    if-eqz v0, :cond_e

    const-string v2, "com.android.cts"

    .line 6323
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    goto :goto_5

    :cond_e
    const-string v2, "1"

    const-string/jumbo v3, "sys.nubia.cts.mode"

    const-string v4, "0"

    .line 6324
    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    move v2, v10

    goto :goto_6

    :cond_f
    :goto_5
    move v2, v6

    :goto_6
    sput-boolean v2, Landroid/app/ActivityThread;->sIsDelayBroadcastReceviceReg:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 6325
    .end local v0    # "initialPackage":Ljava/lang/String;
    goto :goto_7

    :catch_2
    move-exception v0

    .line 6328
    :goto_7
    iget-object v0, v8, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    iget-object v2, v8, Landroid/app/ActivityThread;->mDisableAppTraversalsAccelerateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/app/ActivityThread$H;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6330
    :try_start_4
    iget-object v0, v9, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    invoke-direct {v8, v0}, Landroid/app/ActivityThread;->isThirdPartyAppForMonkey(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    sput-boolean v0, Landroid/app/ActivityThread;->sIsEnableAppTraversalsAccelerate:Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 6333
    goto :goto_8

    .line 6331
    :catch_3
    move-exception v0

    .line 6332
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 6338
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_10
    :goto_8
    iget v0, v9, Landroid/app/ActivityThread$AppBindData;->debugMode:I

    const/16 v2, 0x64

    if-lt v0, v2, :cond_11

    .line 6339
    iget v0, v9, Landroid/app/ActivityThread$AppBindData;->debugMode:I

    sub-int/2addr v0, v2

    iput v0, v9, Landroid/app/ActivityThread$AppBindData;->debugMode:I

    .line 6340
    iput-boolean v10, v8, Landroid/app/ActivityThread;->mSkipApplicationOnCreate:Z

    .line 6344
    :cond_11
    iget v0, v9, Landroid/app/ActivityThread$AppBindData;->debugMode:I

    const/16 v2, 0xa

    if-lt v0, v2, :cond_12

    move v0, v10

    goto :goto_9

    :cond_12
    move v0, v6

    :goto_9
    move/from16 v16, v0

    .line 6345
    .local v16, "isPreStart":Z
    if-eqz v16, :cond_13

    .line 6346
    iget v0, v9, Landroid/app/ActivityThread$AppBindData;->debugMode:I

    sub-int/2addr v0, v2

    iput v0, v9, Landroid/app/ActivityThread$AppBindData;->debugMode:I

    .line 6350
    :cond_13
    iget v0, v9, Landroid/app/ActivityThread$AppBindData;->debugMode:I

    const/4 v5, 0x2

    if-eqz v0, :cond_15

    .line 6352
    const/16 v0, 0x1fa4

    invoke-static {v0}, Landroid/os/Debug;->changeDebugPort(I)V

    .line 6353
    iget v0, v9, Landroid/app/ActivityThread$AppBindData;->debugMode:I

    if-ne v0, v5, :cond_14

    .line 6354
    const-string v0, "ActivityThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Application "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v9, Landroid/app/ActivityThread$AppBindData;->info:Landroid/app/LoadedApk;

    invoke-virtual {v3}, Landroid/app/LoadedApk;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is waiting for the debugger on port 8100..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6357
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    move-object v2, v0

    .line 6359
    .local v2, "mgr":Landroid/app/IActivityManager;
    :try_start_5
    iget-object v0, v8, Landroid/app/ActivityThread;->mAppThread:Landroid/app/ActivityThread$ApplicationThread;

    invoke-interface {v2, v0, v10}, Landroid/app/IActivityManager;->showWaitingForDebugger(Landroid/app/IApplicationThread;Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_5

    .line 6362
    nop

    .line 6364
    invoke-static {}, Landroid/os/Debug;->waitForDebugger()V

    .line 6367
    :try_start_6
    iget-object v0, v8, Landroid/app/ActivityThread;->mAppThread:Landroid/app/ActivityThread$ApplicationThread;

    invoke-interface {v2, v0, v6}, Landroid/app/IActivityManager;->showWaitingForDebugger(Landroid/app/IApplicationThread;Z)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_4

    .line 6370
    nop

    .line 6372
    .end local v2    # "mgr":Landroid/app/IActivityManager;
    goto :goto_a

    .line 6368
    .restart local v2    # "mgr":Landroid/app/IActivityManager;
    :catch_4
    move-exception v0

    .line 6369
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    .line 6360
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_5
    move-exception v0

    .line 6361
    .restart local v0    # "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    .line 6373
    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v2    # "mgr":Landroid/app/IActivityManager;
    :cond_14
    const-string v0, "ActivityThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Application "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v9, Landroid/app/ActivityThread$AppBindData;->info:Landroid/app/LoadedApk;

    invoke-virtual {v3}, Landroid/app/LoadedApk;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " can be debugged on port 8100..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6379
    :cond_15
    :goto_a
    iget-object v0, v9, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v0, v5

    if-eqz v0, :cond_16

    move v0, v10

    goto :goto_b

    :cond_16
    move v0, v6

    :goto_b
    move v4, v0

    .line 6380
    .local v4, "isAppDebuggable":Z
    invoke-static {v4}, Landroid/os/Trace;->setAppTracingAllowed(Z)V

    .line 6381
    if-nez v4, :cond_18

    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_17

    goto :goto_c

    :cond_17
    move v0, v6

    goto :goto_d

    :cond_18
    :goto_c
    move v0, v10

    :goto_d
    invoke-static {v0}, Landroid/view/ThreadedRenderer;->setDebuggingEnabled(Z)V

    .line 6382
    if-eqz v4, :cond_19

    iget-boolean v0, v9, Landroid/app/ActivityThread$AppBindData;->enableBinderTracking:Z

    if-eqz v0, :cond_19

    .line 6383
    invoke-static {}, Landroid/os/Binder;->enableTracing()V

    .line 6389
    :cond_19
    const-string v0, "Setup proxies"

    const-wide/16 v2, 0x40

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 6390
    const-string v0, "connectivity"

    move-object/from16 v17, v7

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    .line 6391
    .local v7, "b":Landroid/os/IBinder;
    .local v17, "is24Hr":Ljava/lang/Boolean;
    if-eqz v7, :cond_1a

    .line 6395
    invoke-static {v7}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v0

    move-object/from16 v18, v0

    .line 6397
    .local v18, "service":Landroid/net/IConnectivityManager;
    move-object/from16 v5, v18

    :try_start_7
    invoke-interface {v5, v14}, Landroid/net/IConnectivityManager;->getProxyForNetwork(Landroid/net/Network;)Landroid/net/ProxyInfo;

    move-result-object v0

    .line 6398
    .end local v18    # "service":Landroid/net/IConnectivityManager;
    .local v0, "proxyInfo":Landroid/net/ProxyInfo;
    .local v5, "service":Landroid/net/IConnectivityManager;
    invoke-static {v0}, Landroid/net/Proxy;->setHttpProxySystemProperty(Landroid/net/ProxyInfo;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_6

    .line 6402
    .end local v0    # "proxyInfo":Landroid/net/ProxyInfo;
    goto :goto_e

    .line 6399
    :catch_6
    move-exception v0

    .line 6400
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 6401
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 6404
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v5    # "service":Landroid/net/IConnectivityManager;
    :cond_1a
    :goto_e
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 6409
    iget-object v0, v9, Landroid/app/ActivityThread$AppBindData;->instrumentationName:Landroid/content/ComponentName;

    if-eqz v0, :cond_1d

    .line 6411
    :try_start_8
    new-instance v0, Landroid/app/ApplicationPackageManager;

    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v5

    invoke-direct {v0, v14, v5}, Landroid/app/ApplicationPackageManager;-><init>(Landroid/app/ContextImpl;Landroid/content/pm/IPackageManager;)V

    iget-object v5, v9, Landroid/app/ActivityThread$AppBindData;->instrumentationName:Landroid/content/ComponentName;

    .line 6412
    invoke-virtual {v0, v5, v6}, Landroid/app/ApplicationPackageManager;->getInstrumentationInfo(Landroid/content/ComponentName;I)Landroid/content/pm/InstrumentationInfo;

    move-result-object v0
    :try_end_8
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8 .. :try_end_8} :catch_7

    .line 6416
    .local v0, "ii":Landroid/content/pm/InstrumentationInfo;
    nop

    .line 6414
    nop

    .line 6419
    iget-object v5, v9, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;

    iget-object v14, v0, Landroid/content/pm/InstrumentationInfo;->primaryCpuAbi:Ljava/lang/String;

    invoke-static {v5, v14}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b

    iget-object v5, v9, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->secondaryCpuAbi:Ljava/lang/String;

    iget-object v14, v0, Landroid/content/pm/InstrumentationInfo;->secondaryCpuAbi:Ljava/lang/String;

    .line 6420
    invoke-static {v5, v14}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1c

    .line 6421
    :cond_1b
    const-string v5, "ActivityThread"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Package uses different ABI(s) than its instrumentation: package["

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v9, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]: "

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v9, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v9, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->secondaryCpuAbi:Ljava/lang/String;

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " instrumentation["

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Landroid/content/pm/InstrumentationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]: "

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Landroid/content/pm/InstrumentationInfo;->primaryCpuAbi:Ljava/lang/String;

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Landroid/content/pm/InstrumentationInfo;->secondaryCpuAbi:Ljava/lang/String;

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6428
    :cond_1c
    iget-object v2, v0, Landroid/content/pm/InstrumentationInfo;->packageName:Ljava/lang/String;

    iput-object v2, v8, Landroid/app/ActivityThread;->mInstrumentationPackageName:Ljava/lang/String;

    .line 6429
    iget-object v2, v0, Landroid/content/pm/InstrumentationInfo;->sourceDir:Ljava/lang/String;

    iput-object v2, v8, Landroid/app/ActivityThread;->mInstrumentationAppDir:Ljava/lang/String;

    .line 6430
    iget-object v2, v0, Landroid/content/pm/InstrumentationInfo;->splitSourceDirs:[Ljava/lang/String;

    iput-object v2, v8, Landroid/app/ActivityThread;->mInstrumentationSplitAppDirs:[Ljava/lang/String;

    .line 6431
    iget-object v2, v9, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    invoke-direct {v8, v2, v0}, Landroid/app/ActivityThread;->getInstrumentationLibrary(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/InstrumentationInfo;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v8, Landroid/app/ActivityThread;->mInstrumentationLibDir:Ljava/lang/String;

    .line 6432
    iget-object v2, v9, Landroid/app/ActivityThread$AppBindData;->info:Landroid/app/LoadedApk;

    invoke-virtual {v2}, Landroid/app/LoadedApk;->getAppDir()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v8, Landroid/app/ActivityThread;->mInstrumentedAppDir:Ljava/lang/String;

    .line 6433
    iget-object v2, v9, Landroid/app/ActivityThread$AppBindData;->info:Landroid/app/LoadedApk;

    invoke-virtual {v2}, Landroid/app/LoadedApk;->getSplitAppDirs()[Ljava/lang/String;

    move-result-object v2

    iput-object v2, v8, Landroid/app/ActivityThread;->mInstrumentedSplitAppDirs:[Ljava/lang/String;

    .line 6434
    iget-object v2, v9, Landroid/app/ActivityThread$AppBindData;->info:Landroid/app/LoadedApk;

    invoke-virtual {v2}, Landroid/app/LoadedApk;->getLibDir()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v8, Landroid/app/ActivityThread;->mInstrumentedLibDir:Ljava/lang/String;

    goto :goto_f

    .line 6413
    .end local v0    # "ii":Landroid/content/pm/InstrumentationInfo;
    :catch_7
    move-exception v0

    .line 6414
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to find instrumentation info for: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v9, Landroid/app/ActivityThread$AppBindData;->instrumentationName:Landroid/content/ComponentName;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 6436
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1d
    const/4 v0, 0x0

    .line 6436
    .local v0, "ii":Landroid/content/pm/InstrumentationInfo;
    :goto_f
    move-object v14, v0

    .line 6439
    .end local v0    # "ii":Landroid/content/pm/InstrumentationInfo;
    .local v14, "ii":Landroid/content/pm/InstrumentationInfo;
    iget-object v0, v9, Landroid/app/ActivityThread$AppBindData;->info:Landroid/app/LoadedApk;

    invoke-static {v8, v0}, Landroid/app/ContextImpl;->createAppContext(Landroid/app/ActivityThread;Landroid/app/LoadedApk;)Landroid/app/ContextImpl;

    move-result-object v5

    .line 6440
    .local v5, "appContext":Landroid/app/ContextImpl;
    iget-object v0, v8, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    .line 6441
    invoke-virtual {v0}, Landroid/app/ResourcesManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v0

    .line 6440
    invoke-direct {v8, v5, v0}, Landroid/app/ActivityThread;->updateLocaleListFromAppContext(Landroid/content/Context;Landroid/os/LocaleList;)V

    .line 6443
    if-nez v16, :cond_1e

    sget-boolean v0, Landroid/content/res/NubiaDrawableCacheUtil;->NUBAIA_DRAWABLE_CACHE_ENABLE:Z

    if-eqz v0, :cond_1e

    .line 6444
    invoke-static {v5}, Landroid/content/res/NubiaDrawableCacheUtil;->setContext(Landroid/content/Context;)V

    .line 6445
    invoke-static {}, Landroid/content/res/NubiaDrawableCacheUtil;->startDrawablePreload()V

    .line 6448
    :cond_1e
    invoke-static {}, Landroid/os/Process;->isIsolated()Z

    move-result v0

    if-nez v0, :cond_1f

    .line 6449
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWritesMask()I

    move-result v0

    move v2, v0

    .line 6451
    .local v2, "old_mask":I
    :try_start_9
    new-instance v0, Landroid/util/BoostFramework;

    invoke-direct {v0, v5}, Landroid/util/BoostFramework;-><init>(Landroid/content/Context;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-object v1, v0

    .line 6453
    invoke-static {v2}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    .line 6454
    goto :goto_10

    .line 6453
    :catchall_0
    move-exception v0

    invoke-static {v2}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    throw v0

    .line 6457
    .end local v1    # "ux_perf":Landroid/util/BoostFramework;
    .end local v2    # "old_mask":I
    .local v3, "ux_perf":Landroid/util/BoostFramework;
    :cond_1f
    :goto_10
    move-object v3, v1

    invoke-static {}, Landroid/os/Process;->isIsolated()Z

    move-result v0

    if-nez v0, :cond_20

    .line 6458
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWritesMask()I

    move-result v0

    move v1, v0

    .line 6460
    .local v1, "oldMask":I
    :try_start_a
    invoke-direct {v8, v5}, Landroid/app/ActivityThread;->setupGraphicsSupport(Landroid/content/Context;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 6462
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    .line 6463
    nop

    .line 6464
    .end local v1    # "oldMask":I
    goto :goto_11

    .line 6462
    .restart local v1    # "oldMask":I
    :catchall_1
    move-exception v0

    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    move-object v2, v0

    throw v2

    .line 6465
    .end local v1    # "oldMask":I
    :cond_20
    invoke-static {v10}, Landroid/view/ThreadedRenderer;->setIsolatedProcess(Z)V

    .line 6474
    :goto_11
    const-string v0, "dalvik.vm.usejitprofiles"

    invoke-static {v0, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 6475
    invoke-static {}, Landroid/app/DexLoadReporter;->getInstance()Landroid/app/DexLoadReporter;

    move-result-object v0

    invoke-static {v0}, Ldalvik/system/BaseDexClassLoader;->setReporter(Ldalvik/system/BaseDexClassLoader$Reporter;)V

    .line 6481
    :cond_21
    const-string v0, "NetworkSecurityConfigProvider.install"

    const-wide/16 v1, 0x40

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 6482
    invoke-static {v5}, Landroid/security/net/config/NetworkSecurityConfigProvider;->install(Landroid/content/Context;)V

    .line 6483
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 6486
    if-eqz v14, :cond_24

    .line 6489
    :try_start_b
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iget-object v1, v14, Landroid/content/pm/InstrumentationInfo;->packageName:Ljava/lang/String;

    .line 6490
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    .line 6489
    invoke-interface {v0, v1, v6, v2}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_8

    .line 6493
    .local v0, "instrApp":Landroid/content/pm/ApplicationInfo;
    goto :goto_12

    .line 6491
    .end local v0    # "instrApp":Landroid/content/pm/ApplicationInfo;
    :catch_8
    move-exception v0

    .line 6492
    .local v0, "e":Landroid/os/RemoteException;
    nop

    .line 6492
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    .line 6494
    .local v0, "instrApp":Landroid/content/pm/ApplicationInfo;
    :goto_12
    if-nez v0, :cond_22

    .line 6495
    new-instance v1, Landroid/content/pm/ApplicationInfo;

    invoke-direct {v1}, Landroid/content/pm/ApplicationInfo;-><init>()V

    move-object v0, v1

    .line 6497
    .end local v0    # "instrApp":Landroid/content/pm/ApplicationInfo;
    .local v2, "instrApp":Landroid/content/pm/ApplicationInfo;
    :cond_22
    move-object v2, v0

    invoke-virtual {v14, v2}, Landroid/content/pm/InstrumentationInfo;->copyTo(Landroid/content/pm/ApplicationInfo;)V

    .line 6498
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/content/pm/ApplicationInfo;->initForUser(I)V

    .line 6499
    iget-object v0, v9, Landroid/app/ActivityThread$AppBindData;->compatInfo:Landroid/content/res/CompatibilityInfo;

    .line 6500
    invoke-virtual {v5}, Landroid/app/ContextImpl;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v18

    const/16 v20, 0x0

    const/16 v21, 0x1

    const/16 v22, 0x0

    .line 6499
    move-object v1, v8

    move-object/from16 v23, v2

    .line 6499
    .end local v2    # "instrApp":Landroid/content/pm/ApplicationInfo;
    .local v23, "instrApp":Landroid/content/pm/ApplicationInfo;
    move-object/from16 v24, v3

    move-object v3, v0

    .line 6499
    .end local v3    # "ux_perf":Landroid/util/BoostFramework;
    .local v24, "ux_perf":Landroid/util/BoostFramework;
    move/from16 v25, v4

    move-object/from16 v4, v18

    .line 6499
    .end local v4    # "isAppDebuggable":Z
    .local v25, "isAppDebuggable":Z
    move-object/from16 v26, v5

    move/from16 v5, v20

    .line 6499
    .end local v5    # "appContext":Landroid/app/ContextImpl;
    .local v26, "appContext":Landroid/app/ContextImpl;
    move/from16 v6, v21

    move-object/from16 v18, v7

    move/from16 v7, v22

    .line 6499
    .end local v7    # "b":Landroid/os/IBinder;
    .local v18, "b":Landroid/os/IBinder;
    invoke-direct/range {v1 .. v7}, Landroid/app/ActivityThread;->getPackageInfo(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;Ljava/lang/ClassLoader;ZZZ)Landroid/app/LoadedApk;

    move-result-object v7

    .line 6501
    .local v7, "pi":Landroid/app/LoadedApk;
    invoke-static {v8, v7}, Landroid/app/ContextImpl;->createAppContext(Landroid/app/ActivityThread;Landroid/app/LoadedApk;)Landroid/app/ContextImpl;

    move-result-object v0

    move-object v6, v0

    .line 6504
    .local v6, "instrContext":Landroid/app/ContextImpl;
    :try_start_c
    invoke-virtual {v6}, Landroid/app/ContextImpl;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 6505
    .local v0, "cl":Ljava/lang/ClassLoader;
    iget-object v1, v9, Landroid/app/ActivityThread$AppBindData;->instrumentationName:Landroid/content/ComponentName;

    .line 6506
    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Instrumentation;

    iput-object v1, v8, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_9

    .line 6511
    .end local v0    # "cl":Ljava/lang/ClassLoader;
    nop

    .line 6513
    new-instance v5, Landroid/content/ComponentName;

    iget-object v0, v14, Landroid/content/pm/InstrumentationInfo;->packageName:Ljava/lang/String;

    iget-object v1, v14, Landroid/content/pm/InstrumentationInfo;->name:Ljava/lang/String;

    invoke-direct {v5, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 6514
    .local v5, "component":Landroid/content/ComponentName;
    iget-object v1, v8, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v0, v9, Landroid/app/ActivityThread$AppBindData;->instrumentationWatcher:Landroid/app/IInstrumentationWatcher;

    iget-object v4, v9, Landroid/app/ActivityThread$AppBindData;->instrumentationUiAutomationConnection:Landroid/app/IUiAutomationConnection;

    move-object v2, v8

    move-object v3, v6

    move-object/from16 v19, v4

    move-object/from16 v4, v26

    move-object/from16 v20, v6

    move-object v6, v0

    .line 6514
    .end local v6    # "instrContext":Landroid/app/ContextImpl;
    .local v20, "instrContext":Landroid/app/ContextImpl;
    move-object/from16 v21, v7

    move-object/from16 v7, v19

    .line 6514
    .end local v7    # "pi":Landroid/app/LoadedApk;
    .local v21, "pi":Landroid/app/LoadedApk;
    invoke-virtual/range {v1 .. v7}, Landroid/app/Instrumentation;->init(Landroid/app/ActivityThread;Landroid/content/Context;Landroid/content/Context;Landroid/content/ComponentName;Landroid/app/IInstrumentationWatcher;Landroid/app/IUiAutomationConnection;)V

    .line 6517
    iget-object v0, v8, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    iget-object v0, v0, Landroid/app/ActivityThread$Profiler;->profileFile:Ljava/lang/String;

    if-eqz v0, :cond_23

    iget-boolean v0, v14, Landroid/content/pm/InstrumentationInfo;->handleProfiling:Z

    if-nez v0, :cond_23

    iget-object v0, v8, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    iget-object v0, v0, Landroid/app/ActivityThread$Profiler;->profileFd:Landroid/os/ParcelFileDescriptor;

    if-nez v0, :cond_23

    .line 6519
    iget-object v0, v8, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    iput-boolean v10, v0, Landroid/app/ActivityThread$Profiler;->handlingProfiling:Z

    .line 6520
    new-instance v0, Ljava/io/File;

    iget-object v1, v8, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    iget-object v1, v1, Landroid/app/ActivityThread$Profiler;->profileFile:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6521
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 6522
    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    const/high16 v2, 0x800000

    invoke-static {v1, v2}, Landroid/os/Debug;->startMethodTracing(Ljava/lang/String;I)V

    .line 6524
    .end local v0    # "file":Ljava/io/File;
    .end local v5    # "component":Landroid/content/ComponentName;
    .end local v20    # "instrContext":Landroid/app/ContextImpl;
    .end local v21    # "pi":Landroid/app/LoadedApk;
    .end local v23    # "instrApp":Landroid/content/pm/ApplicationInfo;
    :cond_23
    goto :goto_13

    .line 6507
    .restart local v6    # "instrContext":Landroid/app/ContextImpl;
    .restart local v7    # "pi":Landroid/app/LoadedApk;
    .restart local v23    # "instrApp":Landroid/content/pm/ApplicationInfo;
    :catch_9
    move-exception v0

    move-object/from16 v20, v6

    move-object/from16 v21, v7

    .line 6508
    .end local v6    # "instrContext":Landroid/app/ContextImpl;
    .end local v7    # "pi":Landroid/app/LoadedApk;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v20    # "instrContext":Landroid/app/ContextImpl;
    .restart local v21    # "pi":Landroid/app/LoadedApk;
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to instantiate instrumentation "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v9, Landroid/app/ActivityThread$AppBindData;->instrumentationName:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6510
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 6525
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v18    # "b":Landroid/os/IBinder;
    .end local v20    # "instrContext":Landroid/app/ContextImpl;
    .end local v21    # "pi":Landroid/app/LoadedApk;
    .end local v23    # "instrApp":Landroid/content/pm/ApplicationInfo;
    .end local v24    # "ux_perf":Landroid/util/BoostFramework;
    .end local v25    # "isAppDebuggable":Z
    .end local v26    # "appContext":Landroid/app/ContextImpl;
    .restart local v3    # "ux_perf":Landroid/util/BoostFramework;
    .restart local v4    # "isAppDebuggable":Z
    .local v5, "appContext":Landroid/app/ContextImpl;
    .local v7, "b":Landroid/os/IBinder;
    :cond_24
    move-object/from16 v24, v3

    move/from16 v25, v4

    move-object/from16 v26, v5

    move-object/from16 v18, v7

    .line 6525
    .end local v3    # "ux_perf":Landroid/util/BoostFramework;
    .end local v4    # "isAppDebuggable":Z
    .end local v5    # "appContext":Landroid/app/ContextImpl;
    .end local v7    # "b":Landroid/os/IBinder;
    .restart local v18    # "b":Landroid/os/IBinder;
    .restart local v24    # "ux_perf":Landroid/util/BoostFramework;
    .restart local v25    # "isAppDebuggable":Z
    .restart local v26    # "appContext":Landroid/app/ContextImpl;
    new-instance v0, Landroid/app/Instrumentation;

    invoke-direct {v0}, Landroid/app/Instrumentation;-><init>()V

    iput-object v0, v8, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    .line 6526
    iget-object v0, v8, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v0, v8}, Landroid/app/Instrumentation;->basicInit(Landroid/app/ActivityThread;)V

    .line 6529
    :goto_13
    iget-object v0, v9, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v1, 0x100000

    and-int/2addr v0, v1

    if-eqz v0, :cond_25

    .line 6530
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->clearGrowthLimit()V

    goto :goto_14

    .line 6534
    :cond_25
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->clampGrowthLimit()V

    .line 6541
    :goto_14
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v1

    .line 6542
    .local v1, "savedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicy()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    move-object v2, v0

    .line 6545
    .local v2, "writesAllowedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :try_start_d
    iget-object v4, v8, Landroid/app/ActivityThread;->mWaitingLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_d

    .line 6546
    :try_start_e
    iget-boolean v0, v8, Landroid/app/ActivityThread;->mSkipApplicationOnCreate:Z
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_a

    if-eqz v0, :cond_26

    :try_start_f
    iget-boolean v0, v8, Landroid/app/ActivityThread;->mHasMessageBefore:Z

    if-nez v0, :cond_26

    .line 6547
    sput-boolean v10, Landroid/app/ActivityThread;->sIsSkipApplicationOnCreate:Z
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    goto :goto_15

    .line 6549
    :catchall_2
    move-exception v0

    move-object/from16 v10, v24

    move-object/from16 v29, v26

    goto/16 :goto_21

    :cond_26
    :goto_15
    :try_start_10
    monitor-exit v4
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_a

    .line 6553
    :try_start_11
    iget-object v0, v9, Landroid/app/ActivityThread$AppBindData;->info:Landroid/app/LoadedApk;

    iget-boolean v4, v9, Landroid/app/ActivityThread$AppBindData;->restrictedBackupMode:Z

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/app/LoadedApk;->makeApplication(ZLandroid/app/Instrumentation;)Landroid/app/Application;

    move-result-object v0

    move-object v4, v0

    .line 6556
    .local v4, "app":Landroid/app/Application;
    iget-boolean v0, v9, Landroid/app/ActivityThread$AppBindData;->autofillCompatibilityEnabled:Z

    invoke-virtual {v4, v0}, Landroid/app/Application;->setAutofillCompatibilityEnabled(Z)V

    .line 6558
    iput-object v4, v8, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    .line 6560
    iget-boolean v0, v8, Landroid/app/ActivityThread;->mLaunchForActivityStart:Z
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_d

    if-eqz v0, :cond_27

    :try_start_12
    iget-object v0, v9, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    invoke-direct {v8, v0}, Landroid/app/ActivityThread;->isThirdPartyApp(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 6561
    iget-object v0, v9, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_4

    move-object/from16 v5, v26

    :try_start_13
    invoke-static {v5, v0}, Landroid/view/ViewRootImpl;->createRenderThread(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_3

    .line 6561
    .end local v26    # "appContext":Landroid/app/ContextImpl;
    .restart local v5    # "appContext":Landroid/app/ContextImpl;
    goto :goto_16

    .line 6636
    .end local v4    # "app":Landroid/app/Application;
    :catchall_3
    move-exception v0

    move-object/from16 v29, v5

    move-object/from16 v10, v24

    goto/16 :goto_22

    .line 6636
    .end local v5    # "appContext":Landroid/app/ContextImpl;
    .restart local v26    # "appContext":Landroid/app/ContextImpl;
    :catchall_4
    move-exception v0

    move-object/from16 v10, v24

    move-object/from16 v29, v26

    .line 6636
    .end local v26    # "appContext":Landroid/app/ContextImpl;
    .restart local v5    # "appContext":Landroid/app/ContextImpl;
    goto/16 :goto_22

    .line 6565
    .end local v5    # "appContext":Landroid/app/ContextImpl;
    .restart local v4    # "app":Landroid/app/Application;
    .restart local v26    # "appContext":Landroid/app/ContextImpl;
    :cond_27
    move-object/from16 v5, v26

    .line 6565
    .end local v26    # "appContext":Landroid/app/ContextImpl;
    .restart local v5    # "appContext":Landroid/app/ContextImpl;
    :goto_16
    :try_start_14
    iget-object v6, v8, Landroid/app/ActivityThread;->mWaitingLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_9

    .line 6566
    :try_start_15
    iget-boolean v0, v8, Landroid/app/ActivityThread;->mSkipApplicationOnCreate:Z
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_7

    if-eqz v0, :cond_28

    :try_start_16
    iget-boolean v0, v8, Landroid/app/ActivityThread;->mHasMessageBefore:Z
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_6

    if-nez v0, :cond_28

    .line 6568
    :try_start_17
    const-string v0, "ActivityThread"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "two prestart wait!"

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", skipOnCreate="

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Landroid/app/ActivityThread;->sIsSkipApplicationOnCreate:Z

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6570
    iget-object v0, v8, Landroid/app/ActivityThread;->mWaitingLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_17
    .catch Ljava/lang/InterruptedException; {:try_start_17 .. :try_end_17} :catch_a
    .catchall {:try_start_17 .. :try_end_17} :catchall_5

    .line 6573
    const/4 v3, 0x0

    :try_start_18
    sput-boolean v3, Landroid/app/ActivityThread;->sIsSkipApplicationOnCreate:Z

    goto :goto_17

    :catchall_5
    move-exception v0

    const/4 v3, 0x0

    sput-boolean v3, Landroid/app/ActivityThread;->sIsSkipApplicationOnCreate:Z

    throw v0

    .line 6571
    :catch_a
    move-exception v0

    const/4 v3, 0x0

    .line 6573
    sput-boolean v3, Landroid/app/ActivityThread;->sIsSkipApplicationOnCreate:Z

    .line 6574
    :goto_17
    nop

    .line 6575
    iput-boolean v3, v8, Landroid/app/ActivityThread;->mSkipApplicationOnCreate:Z
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_6

    goto :goto_18

    .line 6577
    :catchall_6
    move-exception v0

    move-object v3, v4

    move-object/from16 v29, v5

    move-object/from16 v10, v24

    goto/16 :goto_20

    :cond_28
    const/4 v3, 0x0

    :goto_18
    :try_start_19
    monitor-exit v6
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_7

    .line 6579
    :try_start_1a
    sput-boolean v10, Landroid/app/ActivityThread;->sIsCompletedMakeApplication:Z

    .line 6583
    iget-boolean v0, v9, Landroid/app/ActivityThread$AppBindData;->restrictedBackupMode:Z
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_9

    if-nez v0, :cond_29

    .line 6584
    :try_start_1b
    iget-object v0, v9, Landroid/app/ActivityThread$AppBindData;->providers:Ljava/util/List;

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_29

    .line 6585
    iget-object v0, v9, Landroid/app/ActivityThread$AppBindData;->providers:Ljava/util/List;

    invoke-direct {v8, v4, v0}, Landroid/app/ActivityThread;->installContentProviders(Landroid/content/Context;Ljava/util/List;)V

    .line 6588
    iget-object v0, v8, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    const/16 v6, 0x84

    move-object/from16 v27, v4

    const-wide/16 v3, 0x2710

    .line 6588
    .end local v4    # "app":Landroid/app/Application;
    .local v27, "app":Landroid/app/Application;
    invoke-virtual {v0, v6, v3, v4}, Landroid/app/ActivityThread$H;->sendEmptyMessageDelayed(IJ)Z
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_3

    goto :goto_19

    .line 6595
    .end local v27    # "app":Landroid/app/Application;
    .restart local v4    # "app":Landroid/app/Application;
    :cond_29
    move-object/from16 v27, v4

    .line 6595
    .end local v4    # "app":Landroid/app/Application;
    .restart local v27    # "app":Landroid/app/Application;
    :goto_19
    :try_start_1c
    iget-object v0, v8, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v3, v9, Landroid/app/ActivityThread$AppBindData;->instrumentationArgs:Landroid/os/Bundle;

    invoke-virtual {v0, v3}, Landroid/app/Instrumentation;->onCreate(Landroid/os/Bundle;)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_f
    .catchall {:try_start_1c .. :try_end_1c} :catchall_9

    .line 6601
    nop

    .line 6604
    :try_start_1d
    sget-boolean v0, Landroid/app/ActivityThread;->sIsDelayBroadcastReceviceReg:Z
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_3

    const-wide/16 v3, 0xbb8

    if-eqz v0, :cond_2a

    .line 6605
    :try_start_1e
    iget-object v0, v8, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    iget-object v6, v8, Landroid/app/ActivityThread;->updateDelayStateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v6}, Landroid/app/ActivityThread$H;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6606
    iget-object v0, v8, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    iget-object v6, v8, Landroid/app/ActivityThread;->updateDelayStateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v6, v3, v4}, Landroid/app/ActivityThread$H;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_b
    .catchall {:try_start_1e .. :try_end_1e} :catchall_3

    goto :goto_1a

    .line 6626
    :catch_b
    move-exception v0

    move-object/from16 v3, v27

    goto :goto_1c

    .line 6611
    :cond_2a
    :goto_1a
    :try_start_1f
    iget-object v0, v8, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    iget-object v6, v8, Landroid/app/ActivityThread;->updatePreLoadingWebViewStateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v6}, Landroid/app/ActivityThread$H;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6612
    iget-object v0, v9, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    invoke-direct {v8, v0}, Landroid/app/ActivityThread;->isThirdPartyApp(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_d
    .catchall {:try_start_1f .. :try_end_1f} :catchall_3

    if-eqz v0, :cond_2b

    :try_start_20
    sget-boolean v0, Landroid/app/ActivityThread;->sPreLoadingWebViewEnable:Z
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_b
    .catchall {:try_start_20 .. :try_end_20} :catchall_3

    if-eqz v0, :cond_2b

    move v0, v10

    goto :goto_1b

    :cond_2b
    const/4 v0, 0x0

    :goto_1b
    :try_start_21
    sput-boolean v0, Landroid/app/ActivityThread;->sIsPreLoadingWebView:Z

    .line 6613
    sget-boolean v0, Landroid/app/ActivityThread;->sIsPreLoadingWebView:Z
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_d
    .catchall {:try_start_21 .. :try_end_21} :catchall_3

    if-eqz v0, :cond_2c

    .line 6614
    :try_start_22
    iget-object v0, v8, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    iget-object v6, v8, Landroid/app/ActivityThread;->updatePreLoadingWebViewStateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v6, v3, v4}, Landroid/app/ActivityThread$H;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_22} :catch_b
    .catchall {:try_start_22 .. :try_end_22} :catchall_3

    .line 6618
    :cond_2c
    :try_start_23
    sget-boolean v0, Landroid/app/ActivityThread;->sIsEnableAppTraversalsAccelerate:Z
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_23} :catch_d
    .catchall {:try_start_23 .. :try_end_23} :catchall_3

    if-eqz v0, :cond_2d

    .line 6619
    :try_start_24
    sput-boolean v10, Landroid/app/ActivityThread;->sIsAppFirstStartActivity:Z
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_24} :catch_b
    .catchall {:try_start_24 .. :try_end_24} :catchall_3

    .line 6622
    :cond_2d
    :try_start_25
    iget-object v0, v8, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_25} :catch_d
    .catchall {:try_start_25 .. :try_end_25} :catchall_3

    move-object/from16 v3, v27

    :try_start_26
    invoke-virtual {v0, v3}, Landroid/app/Instrumentation;->callApplicationOnCreate(Landroid/app/Application;)V

    .line 6624
    .end local v27    # "app":Landroid/app/Application;
    .local v3, "app":Landroid/app/Application;
    if-eqz v16, :cond_2e

    invoke-virtual {v3}, Landroid/app/Application;->onPreLaunch()V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_26} :catch_c
    .catchall {:try_start_26 .. :try_end_26} :catchall_3

    .line 6632
    :cond_2e
    goto :goto_1d

    .line 6626
    :catch_c
    move-exception v0

    goto :goto_1c

    .line 6626
    .end local v3    # "app":Landroid/app/Application;
    .restart local v27    # "app":Landroid/app/Application;
    :catch_d
    move-exception v0

    move-object/from16 v3, v27

    .line 6627
    .end local v27    # "app":Landroid/app/Application;
    .restart local v0    # "e":Ljava/lang/Exception;
    .restart local v3    # "app":Landroid/app/Application;
    :goto_1c
    :try_start_27
    iget-object v4, v8, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v4, v3, v0}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v4
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_9

    if-eqz v4, :cond_35

    .line 6636
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1d
    iget-object v0, v9, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v4, 0x1b

    if-lt v0, v4, :cond_2f

    .line 6637
    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicy()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 6638
    :cond_2f
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 6643
    :cond_30
    iget-object v0, v9, Landroid/app/ActivityThread$AppBindData;->processName:Ljava/lang/String;

    sput-object v0, Landroid/app/ActivityThread;->appProcessName:Ljava/lang/String;

    .line 6646
    invoke-static {v5}, Landroid/provider/FontsContract;->setApplicationContextForResources(Landroid/content/Context;)V

    .line 6647
    invoke-static {}, Landroid/os/Process;->isIsolated()Z

    move-result v0

    if-nez v0, :cond_32

    .line 6650
    :try_start_28
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iget-object v4, v9, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/16 v6, 0x80

    .line 6653
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    .line 6650
    invoke-interface {v0, v4, v6, v7}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 6654
    .local v0, "info":Landroid/content/pm/ApplicationInfo;
    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v4, :cond_31

    .line 6655
    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v6, "preloaded_fonts"

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 6657
    .local v4, "preloadedFontsResource":I
    if-eqz v4, :cond_31

    .line 6658
    iget-object v6, v9, Landroid/app/ActivityThread$AppBindData;->info:Landroid/app/LoadedApk;

    invoke-virtual {v6}, Landroid/app/LoadedApk;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/content/res/Resources;->preloadFonts(I)V
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_28} :catch_e

    .line 6663
    .end local v0    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v4    # "preloadedFontsResource":I
    :cond_31
    goto :goto_1e

    .line 6661
    :catch_e
    move-exception v0

    .line 6662
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v4

    throw v4

    .line 6665
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_32
    :goto_1e
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 6666
    .local v6, "end_bindApp":J
    move-object/from16 v28, v3

    sub-long v3, v6, v11

    .line 6666
    .end local v3    # "app":Landroid/app/Application;
    .local v28, "app":Landroid/app/Application;
    long-to-int v0, v3

    .line 6667
    .local v0, "bindApp_dur":I
    const/4 v3, 0x0

    .line 6668
    .local v3, "pkg_name":Ljava/lang/String;
    if-eqz v5, :cond_33

    .line 6669
    invoke-virtual {v5}, Landroid/app/ContextImpl;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 6671
    :cond_33
    move-object/from16 v10, v24

    if-eqz v10, :cond_34

    .line 6671
    .end local v24    # "ux_perf":Landroid/util/BoostFramework;
    .local v10, "ux_perf":Landroid/util/BoostFramework;
    invoke-static {}, Landroid/os/Process;->isIsolated()Z

    move-result v4

    if-nez v4, :cond_34

    if-eqz v3, :cond_34

    .line 6672
    move-object/from16 v29, v5

    const/4 v4, 0x0

    const/4 v5, 0x2

    invoke-virtual {v10, v5, v4, v3, v0}, Landroid/util/BoostFramework;->perfUXEngine_events(IILjava/lang/String;I)I

    goto :goto_1f

    .line 6674
    :cond_34
    move-object/from16 v29, v5

    .line 6674
    .end local v5    # "appContext":Landroid/app/ContextImpl;
    .local v29, "appContext":Landroid/app/ContextImpl;
    :goto_1f
    return-void

    .line 6628
    .end local v6    # "end_bindApp":J
    .end local v10    # "ux_perf":Landroid/util/BoostFramework;
    .end local v28    # "app":Landroid/app/Application;
    .end local v29    # "appContext":Landroid/app/ContextImpl;
    .local v0, "e":Ljava/lang/Exception;
    .local v3, "app":Landroid/app/Application;
    .restart local v5    # "appContext":Landroid/app/ContextImpl;
    .restart local v24    # "ux_perf":Landroid/util/BoostFramework;
    :cond_35
    move-object/from16 v29, v5

    move-object/from16 v10, v24

    .line 6628
    .end local v5    # "appContext":Landroid/app/ContextImpl;
    .end local v24    # "ux_perf":Landroid/util/BoostFramework;
    .restart local v10    # "ux_perf":Landroid/util/BoostFramework;
    .restart local v29    # "appContext":Landroid/app/ContextImpl;
    :try_start_29
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to create application "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6629
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6630
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 6597
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v3    # "app":Landroid/app/Application;
    .end local v10    # "ux_perf":Landroid/util/BoostFramework;
    .end local v29    # "appContext":Landroid/app/ContextImpl;
    .restart local v5    # "appContext":Landroid/app/ContextImpl;
    .restart local v24    # "ux_perf":Landroid/util/BoostFramework;
    .restart local v27    # "app":Landroid/app/Application;
    :catch_f
    move-exception v0

    move-object/from16 v29, v5

    move-object/from16 v10, v24

    move-object/from16 v3, v27

    .line 6598
    .end local v5    # "appContext":Landroid/app/ContextImpl;
    .end local v24    # "ux_perf":Landroid/util/BoostFramework;
    .end local v27    # "app":Landroid/app/Application;
    .restart local v0    # "e":Ljava/lang/Exception;
    .restart local v3    # "app":Landroid/app/Application;
    .restart local v10    # "ux_perf":Landroid/util/BoostFramework;
    .restart local v29    # "appContext":Landroid/app/ContextImpl;
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception thrown in onCreate() of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v9, Landroid/app/ActivityThread$AppBindData;->instrumentationName:Landroid/content/ComponentName;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6600
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_b

    .line 6577
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v3    # "app":Landroid/app/Application;
    .end local v10    # "ux_perf":Landroid/util/BoostFramework;
    .end local v29    # "appContext":Landroid/app/ContextImpl;
    .local v4, "app":Landroid/app/Application;
    .restart local v5    # "appContext":Landroid/app/ContextImpl;
    .restart local v24    # "ux_perf":Landroid/util/BoostFramework;
    :catchall_7
    move-exception v0

    move-object v3, v4

    move-object/from16 v29, v5

    move-object/from16 v10, v24

    .line 6577
    .end local v4    # "app":Landroid/app/Application;
    .end local v5    # "appContext":Landroid/app/ContextImpl;
    .end local v24    # "ux_perf":Landroid/util/BoostFramework;
    .restart local v3    # "app":Landroid/app/Application;
    .restart local v10    # "ux_perf":Landroid/util/BoostFramework;
    .restart local v29    # "appContext":Landroid/app/ContextImpl;
    :goto_20
    :try_start_2a
    monitor-exit v6
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_8

    :try_start_2b
    throw v0
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_b

    :catchall_8
    move-exception v0

    goto :goto_20

    .line 6636
    .end local v3    # "app":Landroid/app/Application;
    .end local v10    # "ux_perf":Landroid/util/BoostFramework;
    .end local v29    # "appContext":Landroid/app/ContextImpl;
    .restart local v5    # "appContext":Landroid/app/ContextImpl;
    .restart local v24    # "ux_perf":Landroid/util/BoostFramework;
    :catchall_9
    move-exception v0

    move-object/from16 v29, v5

    move-object/from16 v10, v24

    .line 6636
    .end local v5    # "appContext":Landroid/app/ContextImpl;
    .end local v24    # "ux_perf":Landroid/util/BoostFramework;
    .restart local v10    # "ux_perf":Landroid/util/BoostFramework;
    .restart local v29    # "appContext":Landroid/app/ContextImpl;
    goto :goto_22

    .line 6549
    .end local v10    # "ux_perf":Landroid/util/BoostFramework;
    .end local v29    # "appContext":Landroid/app/ContextImpl;
    .restart local v24    # "ux_perf":Landroid/util/BoostFramework;
    .restart local v26    # "appContext":Landroid/app/ContextImpl;
    :catchall_a
    move-exception v0

    move-object/from16 v10, v24

    move-object/from16 v29, v26

    .line 6549
    .end local v24    # "ux_perf":Landroid/util/BoostFramework;
    .end local v26    # "appContext":Landroid/app/ContextImpl;
    .restart local v10    # "ux_perf":Landroid/util/BoostFramework;
    .restart local v29    # "appContext":Landroid/app/ContextImpl;
    :goto_21
    :try_start_2c
    monitor-exit v4
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_c

    :try_start_2d
    throw v0
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_b

    .line 6636
    :catchall_b
    move-exception v0

    goto :goto_22

    .line 6549
    :catchall_c
    move-exception v0

    goto :goto_21

    .line 6636
    .end local v10    # "ux_perf":Landroid/util/BoostFramework;
    .end local v29    # "appContext":Landroid/app/ContextImpl;
    .restart local v24    # "ux_perf":Landroid/util/BoostFramework;
    .restart local v26    # "appContext":Landroid/app/ContextImpl;
    :catchall_d
    move-exception v0

    move-object/from16 v10, v24

    move-object/from16 v29, v26

    .line 6636
    .end local v24    # "ux_perf":Landroid/util/BoostFramework;
    .end local v26    # "appContext":Landroid/app/ContextImpl;
    .restart local v10    # "ux_perf":Landroid/util/BoostFramework;
    .restart local v29    # "appContext":Landroid/app/ContextImpl;
    :goto_22
    iget-object v3, v9, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v4, 0x1b

    if-lt v3, v4, :cond_36

    .line 6637
    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicy()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_37

    .line 6638
    :cond_36
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    :cond_37
    throw v0

    .line 6260
    .end local v2    # "writesAllowedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    .end local v10    # "ux_perf":Landroid/util/BoostFramework;
    .end local v14    # "ii":Landroid/content/pm/InstrumentationInfo;
    .end local v15    # "use24HourSetting":Ljava/lang/String;
    .end local v16    # "isPreStart":Z
    .end local v17    # "is24Hr":Ljava/lang/Boolean;
    .end local v18    # "b":Landroid/os/IBinder;
    .end local v25    # "isAppDebuggable":Z
    .end local v29    # "appContext":Landroid/app/ContextImpl;
    .local v1, "ux_perf":Landroid/util/BoostFramework;
    :catchall_e
    move-exception v0

    :try_start_2e
    monitor-exit v2
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_e

    throw v0
.end method

.method private handleBindService(Landroid/app/ActivityThread$BindServiceData;)V
    .locals 11
    .param p1, "data"    # Landroid/app/ActivityThread$BindServiceData;

    .line 3947
    iget-object v0, p0, Landroid/app/ActivityThread;->mServices:Landroid/util/ArrayMap;

    iget-object v1, p1, Landroid/app/ActivityThread$BindServiceData;->token:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Service;

    .line 3950
    .local v0, "s":Landroid/app/Service;
    if-eqz v0, :cond_6

    .line 3952
    :try_start_0
    iget-object v1, p1, Landroid/app/ActivityThread$BindServiceData;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/app/Service;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 3953
    iget-object v1, p1, Landroid/app/ActivityThread$BindServiceData;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->prepareToEnterProcess()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 3955
    :try_start_1
    iget-boolean v1, p1, Landroid/app/ActivityThread$BindServiceData;->rebind:Z

    if-nez v1, :cond_3

    .line 3957
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 3961
    .local v1, "start":J
    sget-boolean v3, Landroid/os/NubiaDebug;->DEBUG_SYSTRACE_TAG:Z

    const-wide/16 v4, 0x40

    if-eqz v3, :cond_0

    invoke-static {v4, v5}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3962
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onBind:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", intent="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p1, Landroid/app/ActivityThread$BindServiceData;->intent:Landroid/content/Intent;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v5, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 3965
    :cond_0
    iget-object v3, p1, Landroid/app/ActivityThread$BindServiceData;->intent:Landroid/content/Intent;

    invoke-virtual {v0, v3}, Landroid/app/Service;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object v3

    .line 3968
    .local v3, "binder":Landroid/os/IBinder;
    sget-boolean v6, Landroid/os/NubiaDebug;->DEBUG_SYSTRACE_TAG:Z

    if-eqz v6, :cond_1

    invoke-static {v4, v5}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 3969
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 3973
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 3974
    .local v4, "now":J
    sub-long v6, v4, v1

    .line 3975
    .local v6, "delay":J
    sget v8, Landroid/os/NubiaDebug;->SERVICE_DELAY:I

    int-to-long v8, v8

    cmp-long v8, v6, v8

    if-ltz v8, :cond_2

    .line 3976
    const-string/jumbo v8, "nubialog"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ActivityThread service.onBind() delay:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v10, "ms service:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " data:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3979
    :cond_2
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v8

    iget-object v9, p1, Landroid/app/ActivityThread$BindServiceData;->token:Landroid/os/IBinder;

    iget-object v10, p1, Landroid/app/ActivityThread$BindServiceData;->intent:Landroid/content/Intent;

    invoke-interface {v8, v9, v10, v3}, Landroid/app/IActivityManager;->publishService(Landroid/os/IBinder;Landroid/content/Intent;Landroid/os/IBinder;)V

    .line 3981
    .end local v1    # "start":J
    .end local v3    # "binder":Landroid/os/IBinder;
    .end local v4    # "now":J
    .end local v6    # "delay":J
    goto :goto_0

    .line 3983
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 3985
    .restart local v1    # "start":J
    iget-object v3, p1, Landroid/app/ActivityThread$BindServiceData;->intent:Landroid/content/Intent;

    invoke-virtual {v0, v3}, Landroid/app/Service;->onRebind(Landroid/content/Intent;)V

    .line 3987
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 3988
    .local v3, "now":J
    sub-long v5, v3, v1

    .line 3989
    .local v5, "delay":J
    sget v7, Landroid/os/NubiaDebug;->SERVICE_DELAY:I

    int-to-long v7, v7

    cmp-long v7, v5, v7

    if-ltz v7, :cond_4

    .line 3990
    const-string/jumbo v7, "nubialog"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ActivityThread service.onRebind() delay:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v9, "ms service:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " data:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3993
    :cond_4
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v7

    iget-object v8, p1, Landroid/app/ActivityThread$BindServiceData;->token:Landroid/os/IBinder;

    const/4 v9, 0x0

    invoke-interface {v7, v8, v9, v9, v9}, Landroid/app/IActivityManager;->serviceDoneExecuting(Landroid/os/IBinder;III)V

    .line 3996
    .end local v1    # "start":J
    .end local v3    # "now":J
    .end local v5    # "delay":J
    :goto_0
    invoke-virtual {p0}, Landroid/app/ActivityThread;->ensureJitEnabled()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 3999
    nop

    .line 4006
    goto :goto_1

    .line 3997
    :catch_0
    move-exception v1

    .line 3998
    .local v1, "ex":Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 4000
    .end local v1    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 4001
    .local v1, "e":Ljava/lang/Exception;
    iget-object v2, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v2, v0, v1}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 4001
    .end local v1    # "e":Ljava/lang/Exception;
    goto :goto_1

    .line 4002
    .restart local v1    # "e":Ljava/lang/Exception;
    :cond_5
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to bind to service "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Landroid/app/ActivityThread$BindServiceData;->intent:Landroid/content/Intent;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4004
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 4008
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_6
    :goto_1
    return-void
.end method

.method private handleConfigurationChanged(Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)V
    .locals 11
    .param p1, "config"    # Landroid/content/res/Configuration;
    .param p2, "compat"    # Landroid/content/res/CompatibilityInfo;

    .line 5593
    const/4 v0, 0x0

    .line 5600
    .local v0, "configDiff":I
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    iget-object v3, p0, Landroid/app/ActivityThread;->mConfiguration:Landroid/content/res/Configuration;

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/app/ActivityThread;->mConfiguration:Landroid/content/res/Configuration;

    .line 5601
    invoke-virtual {v3, p1}, Landroid/content/res/Configuration;->diffPublicOnly(Landroid/content/res/Configuration;)I

    move-result v3

    if-nez v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    .line 5602
    .local v3, "equivalent":Z
    :goto_0
    invoke-virtual {p0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ContextImpl;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    .line 5603
    .local v4, "systemTheme":Landroid/content/res/Resources$Theme;
    invoke-virtual {p0}, Landroid/app/ActivityThread;->getSystemUiContext()Landroid/app/ContextImpl;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/ContextImpl;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    .line 5605
    .local v5, "systemUiTheme":Landroid/content/res/Resources$Theme;
    iget-object v6, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    monitor-enter v6

    .line 5606
    :try_start_0
    iget-object v7, p0, Landroid/app/ActivityThread;->mPendingConfiguration:Landroid/content/res/Configuration;

    if-eqz v7, :cond_2

    .line 5607
    iget-object v7, p0, Landroid/app/ActivityThread;->mPendingConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v7, p1}, Landroid/content/res/Configuration;->isOtherSeqNewer(Landroid/content/res/Configuration;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 5608
    iget-object v7, p0, Landroid/app/ActivityThread;->mPendingConfiguration:Landroid/content/res/Configuration;

    move-object p1, v7

    .line 5609
    iget v7, p1, Landroid/content/res/Configuration;->densityDpi:I

    iput v7, p0, Landroid/app/ActivityThread;->mCurDefaultDisplayDpi:I

    .line 5610
    invoke-direct {p0}, Landroid/app/ActivityThread;->updateDefaultDensity()V

    .line 5612
    :cond_1
    const/4 v7, 0x0

    iput-object v7, p0, Landroid/app/ActivityThread;->mPendingConfiguration:Landroid/content/res/Configuration;

    .line 5615
    :cond_2
    if-nez p1, :cond_3

    .line 5616
    monitor-exit v6

    return-void

    .line 5623
    :cond_3
    iget-wide v7, p0, Landroid/app/ActivityThread;->processTypefaceTimeStamp:J

    iget-object v9, p1, Landroid/content/res/Configuration;->extraConfig:Lnubia/content/res/ExtraConfiguration;

    iget-wide v9, v9, Lnubia/content/res/ExtraConfiguration;->typefaceTimeStamp:J

    cmp-long v7, v7, v9

    if-gez v7, :cond_4

    .line 5624
    iget-object v7, p1, Landroid/content/res/Configuration;->extraConfig:Lnubia/content/res/ExtraConfiguration;

    iput-boolean v2, v7, Lnubia/content/res/ExtraConfiguration;->needReloadProcessTypeface:Z

    .line 5628
    :cond_4
    iget-object v2, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    invoke-virtual {v2, p1, p2}, Landroid/app/ResourcesManager;->applyConfigurationToResourcesLocked(Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)Z

    .line 5629
    iget-object v2, p0, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    invoke-virtual {v2}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v7, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    .line 5630
    invoke-virtual {v7}, Landroid/app/ResourcesManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v7

    .line 5629
    invoke-direct {p0, v2, v7}, Landroid/app/ActivityThread;->updateLocaleListFromAppContext(Landroid/content/Context;Landroid/os/LocaleList;)V

    .line 5632
    iget-object v2, p0, Landroid/app/ActivityThread;->mConfiguration:Landroid/content/res/Configuration;

    if-nez v2, :cond_5

    .line 5633
    new-instance v2, Landroid/content/res/Configuration;

    invoke-direct {v2}, Landroid/content/res/Configuration;-><init>()V

    iput-object v2, p0, Landroid/app/ActivityThread;->mConfiguration:Landroid/content/res/Configuration;

    .line 5635
    :cond_5
    iget-object v2, p0, Landroid/app/ActivityThread;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v2, p1}, Landroid/content/res/Configuration;->isOtherSeqNewer(Landroid/content/res/Configuration;)Z

    move-result v2

    if-nez v2, :cond_6

    if-nez p2, :cond_6

    .line 5636
    monitor-exit v6

    return-void

    .line 5639
    :cond_6
    iget-object v2, p0, Landroid/app/ActivityThread;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v2, p1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    move-result v2

    move v0, v2

    .line 5640
    iget v2, p0, Landroid/app/ActivityThread;->mCurDefaultDisplayDpi:I

    invoke-virtual {p0, v2}, Landroid/app/ActivityThread;->applyCompatConfiguration(I)Landroid/content/res/Configuration;

    move-result-object v2

    move-object p1, v2

    .line 5642
    invoke-virtual {v4}, Landroid/content/res/Resources$Theme;->getChangingConfigurations()I

    move-result v2

    and-int/2addr v2, v0

    if-eqz v2, :cond_7

    .line 5643
    invoke-virtual {v4}, Landroid/content/res/Resources$Theme;->rebase()V

    .line 5646
    :cond_7
    invoke-virtual {v5}, Landroid/content/res/Resources$Theme;->getChangingConfigurations()I

    move-result v2

    and-int/2addr v2, v0

    if-eqz v2, :cond_8

    .line 5647
    invoke-virtual {v5}, Landroid/content/res/Resources$Theme;->rebase()V

    .line 5649
    :cond_8
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5651
    invoke-virtual {p0, v1, p1}, Landroid/app/ActivityThread;->collectComponentCallbacks(ZLandroid/content/res/Configuration;)Ljava/util/ArrayList;

    move-result-object v2

    .line 5653
    .local v2, "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentCallbacks2;>;"
    invoke-static {v0}, Landroid/app/ActivityThread;->freeTextLayoutCachesIfNeeded(I)V

    .line 5655
    if-eqz v2, :cond_b

    .line 5656
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 5657
    .local v6, "N":I
    nop

    .local v1, "i":I
    :goto_1
    if-ge v1, v6, :cond_b

    .line 5658
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentCallbacks2;

    .line 5659
    .local v7, "cb":Landroid/content/ComponentCallbacks2;
    instance-of v8, v7, Landroid/app/Activity;

    if-eqz v8, :cond_9

    .line 5662
    move-object v8, v7

    check-cast v8, Landroid/app/Activity;

    .line 5663
    .local v8, "a":Landroid/app/Activity;
    iget-object v9, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v8}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/ActivityThread$ActivityClientRecord;

    invoke-direct {p0, v9, p1}, Landroid/app/ActivityThread;->performConfigurationChangedForActivity(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/content/res/Configuration;)V

    .line 5665
    .end local v8    # "a":Landroid/app/Activity;
    goto :goto_2

    :cond_9
    if-nez v3, :cond_a

    .line 5666
    invoke-direct {p0, v7, p1}, Landroid/app/ActivityThread;->performConfigurationChanged(Landroid/content/ComponentCallbacks2;Landroid/content/res/Configuration;)V

    .line 5657
    .end local v7    # "cb":Landroid/content/ComponentCallbacks2;
    :cond_a
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 5670
    .end local v1    # "i":I
    .end local v6    # "N":I
    :cond_b
    return-void

    .line 5649
    .end local v2    # "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentCallbacks2;>;"
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private handleCreateBackupAgent(Landroid/app/ActivityThread$CreateBackupAgentData;)V
    .locals 10
    .param p1, "data"    # Landroid/app/ActivityThread$CreateBackupAgentData;

    .line 3785
    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iget-object v1, p1, Landroid/app/ActivityThread$CreateBackupAgentData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v2, 0x0

    .line 3786
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    .line 3785
    invoke-interface {v0, v1, v2, v3}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 3787
    .local v0, "requestedPackage":Landroid/content/pm/PackageInfo;
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 3788
    const-string v1, "ActivityThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Asked to instantiate non-matching package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Landroid/app/ActivityThread$CreateBackupAgentData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_3

    .line 3790
    return-void

    .line 3794
    .end local v0    # "requestedPackage":Landroid/content/pm/PackageInfo;
    :cond_0
    nop

    .line 3797
    invoke-virtual {p0}, Landroid/app/ActivityThread;->unscheduleGcIdler()V

    .line 3800
    iget-object v0, p1, Landroid/app/ActivityThread$CreateBackupAgentData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, p1, Landroid/app/ActivityThread$CreateBackupAgentData;->compatInfo:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {p0, v0, v1}, Landroid/app/ActivityThread;->getPackageInfoNoCheck(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;)Landroid/app/LoadedApk;

    move-result-object v0

    .line 3801
    .local v0, "packageInfo":Landroid/app/LoadedApk;
    iget-object v1, v0, Landroid/app/LoadedApk;->mPackageName:Ljava/lang/String;

    .line 3802
    .local v1, "packageName":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 3803
    const-string v2, "ActivityThread"

    const-string v3, "Asked to create backup agent for nonexistent package"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3804
    return-void

    .line 3807
    :cond_1
    iget-object v2, p1, Landroid/app/ActivityThread$CreateBackupAgentData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    .line 3809
    .local v2, "classname":Ljava/lang/String;
    const/4 v3, 0x3

    if-nez v2, :cond_3

    iget v4, p1, Landroid/app/ActivityThread$CreateBackupAgentData;->backupMode:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_2

    iget v4, p1, Landroid/app/ActivityThread$CreateBackupAgentData;->backupMode:I

    if-ne v4, v3, :cond_3

    .line 3811
    :cond_2
    const-string v2, "android.app.backup.FullBackupAgent"

    .line 3815
    :cond_3
    const/4 v4, 0x0

    .line 3816
    .local v4, "binder":Landroid/os/IBinder;
    :try_start_1
    iget-object v5, p0, Landroid/app/ActivityThread;->mBackupAgents:Landroid/util/ArrayMap;

    invoke-virtual {v5, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/backup/BackupAgent;

    .line 3817
    .local v5, "agent":Landroid/app/backup/BackupAgent;
    if-eqz v5, :cond_4

    .line 3822
    invoke-virtual {v5}, Landroid/app/backup/BackupAgent;->onBind()Landroid/os/IBinder;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 3853
    .end local v4    # "binder":Landroid/os/IBinder;
    .local v3, "binder":Landroid/os/IBinder;
    move-object v4, v3

    goto :goto_0

    .line 3827
    .end local v3    # "binder":Landroid/os/IBinder;
    .restart local v4    # "binder":Landroid/os/IBinder;
    :cond_4
    :try_start_2
    invoke-virtual {v0}, Landroid/app/LoadedApk;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    .line 3828
    .local v6, "cl":Ljava/lang/ClassLoader;
    invoke-virtual {v6, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/backup/BackupAgent;

    move-object v5, v7

    .line 3831
    invoke-static {p0, v0}, Landroid/app/ContextImpl;->createAppContext(Landroid/app/ActivityThread;Landroid/app/LoadedApk;)Landroid/app/ContextImpl;

    move-result-object v7

    .line 3832
    .local v7, "context":Landroid/app/ContextImpl;
    invoke-virtual {v7, v5}, Landroid/app/ContextImpl;->setOuterContext(Landroid/content/Context;)V

    .line 3833
    invoke-virtual {v5, v7}, Landroid/app/backup/BackupAgent;->attach(Landroid/content/Context;)V

    .line 3835
    invoke-virtual {v5}, Landroid/app/backup/BackupAgent;->onCreate()V

    .line 3836
    invoke-virtual {v5}, Landroid/app/backup/BackupAgent;->onBind()Landroid/os/IBinder;

    move-result-object v8

    move-object v4, v8

    .line 3837
    iget-object v8, p0, Landroid/app/ActivityThread;->mBackupAgents:Landroid/util/ArrayMap;

    invoke-virtual {v8, v1, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 3848
    .end local v6    # "cl":Ljava/lang/ClassLoader;
    .end local v7    # "context":Landroid/app/ContextImpl;
    goto :goto_0

    .line 3838
    :catch_0
    move-exception v6

    .line 3841
    .local v6, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v7, "ActivityThread"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Agent threw during creation: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3842
    iget v7, p1, Landroid/app/ActivityThread$CreateBackupAgentData;->backupMode:I

    const/4 v8, 0x2

    if-eq v7, v8, :cond_6

    iget v7, p1, Landroid/app/ActivityThread$CreateBackupAgentData;->backupMode:I

    if-ne v7, v3, :cond_5

    .end local v6    # "e":Ljava/lang/Exception;
    goto :goto_0

    .line 3845
    .restart local v6    # "e":Ljava/lang/Exception;
    :cond_5
    throw v6
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 3853
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_6
    :goto_0
    :try_start_4
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v3

    invoke-interface {v3, v1, v4}, Landroid/app/IActivityManager;->backupAgentCreated(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 3856
    nop

    .line 3860
    .end local v4    # "binder":Landroid/os/IBinder;
    .end local v5    # "agent":Landroid/app/backup/BackupAgent;
    nop

    .line 3861
    return-void

    .line 3854
    .restart local v4    # "binder":Landroid/os/IBinder;
    .restart local v5    # "agent":Landroid/app/backup/BackupAgent;
    :catch_1
    move-exception v3

    .line 3855
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_5
    invoke-virtual {v3}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v6

    throw v6
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 3857
    .end local v3    # "e":Landroid/os/RemoteException;
    .end local v4    # "binder":Landroid/os/IBinder;
    .end local v5    # "agent":Landroid/app/backup/BackupAgent;
    :catch_2
    move-exception v3

    .line 3858
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to create BackupAgent "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3859
    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 3792
    .end local v0    # "packageInfo":Landroid/app/LoadedApk;
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v2    # "classname":Ljava/lang/String;
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v0

    .line 3793
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method private handleCreateService(Landroid/app/ActivityThread$CreateServiceData;)V
    .locals 14
    .param p1, "data"    # Landroid/app/ActivityThread$CreateServiceData;

    .line 3886
    invoke-virtual {p0}, Landroid/app/ActivityThread;->unscheduleGcIdler()V

    .line 3888
    iget-object v0, p1, Landroid/app/ActivityThread$CreateServiceData;->info:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, p1, Landroid/app/ActivityThread$CreateServiceData;->compatInfo:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {p0, v0, v1}, Landroid/app/ActivityThread;->getPackageInfoNoCheck(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;)Landroid/app/LoadedApk;

    move-result-object v0

    .line 3890
    .local v0, "packageInfo":Landroid/app/LoadedApk;
    const/4 v1, 0x0

    .line 3892
    .local v1, "service":Landroid/app/Service;
    :try_start_0
    invoke-virtual {v0}, Landroid/app/LoadedApk;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 3893
    .local v2, "cl":Ljava/lang/ClassLoader;
    invoke-virtual {v0}, Landroid/app/LoadedApk;->getAppFactory()Landroid/app/AppComponentFactory;

    move-result-object v3

    iget-object v4, p1, Landroid/app/ActivityThread$CreateServiceData;->info:Landroid/content/pm/ServiceInfo;

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    iget-object v5, p1, Landroid/app/ActivityThread$CreateServiceData;->intent:Landroid/content/Intent;

    .line 3894
    invoke-virtual {v3, v2, v4, v5}, Landroid/app/AppComponentFactory;->instantiateService(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Intent;)Landroid/app/Service;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v3

    .line 3901
    .end local v2    # "cl":Ljava/lang/ClassLoader;
    goto :goto_0

    .line 3895
    :catch_0
    move-exception v2

    .line 3896
    .local v2, "e":Ljava/lang/Exception;
    iget-object v3, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v3, v1, v2}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 3906
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    :try_start_1
    invoke-static {p0, v0}, Landroid/app/ContextImpl;->createAppContext(Landroid/app/ActivityThread;Landroid/app/LoadedApk;)Landroid/app/ContextImpl;

    move-result-object v2

    .line 3907
    .local v2, "context":Landroid/app/ContextImpl;
    invoke-virtual {v2, v1}, Landroid/app/ContextImpl;->setOuterContext(Landroid/content/Context;)V

    .line 3909
    iget-object v3, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    const/4 v11, 0x0

    invoke-virtual {v0, v11, v3}, Landroid/app/LoadedApk;->makeApplication(ZLandroid/app/Instrumentation;)Landroid/app/Application;

    move-result-object v9

    .line 3910
    .local v9, "app":Landroid/app/Application;
    iget-object v3, p1, Landroid/app/ActivityThread$CreateServiceData;->info:Landroid/content/pm/ServiceInfo;

    iget-object v7, v3, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    iget-object v8, p1, Landroid/app/ActivityThread$CreateServiceData;->token:Landroid/os/IBinder;

    .line 3911
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v10

    .line 3910
    move-object v4, v1

    move-object v5, v2

    move-object v6, p0

    invoke-virtual/range {v4 .. v10}, Landroid/app/Service;->attach(Landroid/content/Context;Landroid/app/ActivityThread;Ljava/lang/String;Landroid/os/IBinder;Landroid/app/Application;Ljava/lang/Object;)V

    .line 3913
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 3916
    .local v3, "start":J
    sget-boolean v5, Landroid/os/NubiaDebug;->DEBUG_SYSTRACE_TAG:Z

    const-wide/16 v6, 0x40

    if-eqz v5, :cond_0

    invoke-static {v6, v7}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 3917
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onCreate:"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v7, v5}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 3919
    :cond_0
    invoke-virtual {v1}, Landroid/app/Service;->onCreate()V

    .line 3921
    sget-boolean v5, Landroid/os/NubiaDebug;->DEBUG_SYSTRACE_TAG:Z

    if-eqz v5, :cond_1

    invoke-static {v6, v7}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 3922
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 3924
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 3925
    .local v5, "now":J
    sub-long v7, v5, v3

    .line 3926
    .local v7, "delay":J
    sget v10, Landroid/os/NubiaDebug;->SERVICE_DELAY:I

    int-to-long v12, v10

    cmp-long v10, v7, v12

    if-ltz v10, :cond_2

    .line 3927
    const-string/jumbo v10, "nubialog"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "ActivityThread service.onCreate() delay:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v13, "ms service:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, " data:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3930
    :cond_2
    iget-object v10, p0, Landroid/app/ActivityThread;->mServices:Landroid/util/ArrayMap;

    iget-object v12, p1, Landroid/app/ActivityThread$CreateServiceData;->token:Landroid/os/IBinder;

    invoke-virtual {v10, v12, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 3932
    :try_start_2
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v10

    iget-object v12, p1, Landroid/app/ActivityThread$CreateServiceData;->token:Landroid/os/IBinder;

    invoke-interface {v10, v12, v11, v11, v11}, Landroid/app/IActivityManager;->serviceDoneExecuting(Landroid/os/IBinder;III)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 3936
    nop

    .line 3943
    .end local v2    # "context":Landroid/app/ContextImpl;
    .end local v3    # "start":J
    .end local v5    # "now":J
    .end local v7    # "delay":J
    .end local v9    # "app":Landroid/app/Application;
    goto :goto_1

    .line 3934
    .restart local v2    # "context":Landroid/app/ContextImpl;
    .restart local v3    # "start":J
    .restart local v5    # "now":J
    .restart local v7    # "delay":J
    .restart local v9    # "app":Landroid/app/Application;
    :catch_1
    move-exception v10

    .line 3935
    .local v10, "e":Landroid/os/RemoteException;
    :try_start_3
    invoke-virtual {v10}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v11

    throw v11
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 3937
    .end local v2    # "context":Landroid/app/ContextImpl;
    .end local v3    # "start":J
    .end local v5    # "now":J
    .end local v7    # "delay":J
    .end local v9    # "app":Landroid/app/Application;
    .end local v10    # "e":Landroid/os/RemoteException;
    :catch_2
    move-exception v2

    .line 3938
    .local v2, "e":Ljava/lang/Exception;
    iget-object v3, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v3, v1, v2}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3944
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    return-void

    .line 3939
    .restart local v2    # "e":Ljava/lang/Exception;
    :cond_3
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to create service "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Landroid/app/ActivityThread$CreateServiceData;->info:Landroid/content/pm/ServiceInfo;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3941
    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 3897
    :cond_4
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to instantiate service "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Landroid/app/ActivityThread$CreateServiceData;->info:Landroid/content/pm/ServiceInfo;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3899
    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method private handleDestroyBackupAgent(Landroid/app/ActivityThread$CreateBackupAgentData;)V
    .locals 7
    .param p1, "data"    # Landroid/app/ActivityThread$CreateBackupAgentData;

    .line 3867
    iget-object v0, p1, Landroid/app/ActivityThread$CreateBackupAgentData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, p1, Landroid/app/ActivityThread$CreateBackupAgentData;->compatInfo:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {p0, v0, v1}, Landroid/app/ActivityThread;->getPackageInfoNoCheck(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;)Landroid/app/LoadedApk;

    move-result-object v0

    .line 3868
    .local v0, "packageInfo":Landroid/app/LoadedApk;
    iget-object v1, v0, Landroid/app/LoadedApk;->mPackageName:Ljava/lang/String;

    .line 3869
    .local v1, "packageName":Ljava/lang/String;
    iget-object v2, p0, Landroid/app/ActivityThread;->mBackupAgents:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/backup/BackupAgent;

    .line 3870
    .local v2, "agent":Landroid/app/backup/BackupAgent;
    if-eqz v2, :cond_0

    .line 3872
    :try_start_0
    invoke-virtual {v2}, Landroid/app/backup/BackupAgent;->onDestroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3876
    goto :goto_0

    .line 3873
    :catch_0
    move-exception v3

    .line 3874
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "ActivityThread"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception thrown in onDestroy by backup agent of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p1, Landroid/app/ActivityThread$CreateBackupAgentData;->appInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3875
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 3877
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_0
    iget-object v3, p0, Landroid/app/ActivityThread;->mBackupAgents:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 3879
    :cond_0
    const-string v3, "ActivityThread"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Attempt to destroy unknown backup agent "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3881
    :goto_1
    return-void
.end method

.method private handleDumpActivity(Landroid/app/ActivityThread$DumpComponentInfo;)V
    .locals 7
    .param p1, "info"    # Landroid/app/ActivityThread$DumpComponentInfo;

    .line 4073
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 4075
    .local v0, "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :try_start_0
    iget-object v1, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    iget-object v2, p1, Landroid/app/ActivityThread$DumpComponentInfo;->token:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 4076
    .local v1, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    if-eqz v1, :cond_0

    iget-object v2, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    if-eqz v2, :cond_0

    .line 4077
    new-instance v2, Lcom/android/internal/util/FastPrintWriter;

    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v4, p1, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    .line 4078
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v2, v3}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 4079
    .local v2, "pw":Ljava/io/PrintWriter;
    iget-object v3, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-object v4, p1, Landroid/app/ActivityThread$DumpComponentInfo;->prefix:Ljava/lang/String;

    iget-object v5, p1, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    iget-object v6, p1, Landroid/app/ActivityThread$DumpComponentInfo;->args:[Ljava/lang/String;

    invoke-virtual {v3, v4, v5, v2, v6}, Landroid/app/Activity;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 4080
    invoke-virtual {v2}, Ljava/io/PrintWriter;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4083
    .end local v1    # "r":Landroid/app/ActivityThread$ActivityClientRecord;
    .end local v2    # "pw":Ljava/io/PrintWriter;
    :cond_0
    iget-object v1, p1, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 4084
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 4085
    nop

    .line 4086
    return-void

    .line 4083
    :catchall_0
    move-exception v1

    iget-object v2, p1, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 4084
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v1
.end method

.method static handleDumpHeap(Landroid/app/ActivityThread$DumpHeapData;)V
    .locals 4
    .param p0, "dhd"    # Landroid/app/ActivityThread$DumpHeapData;

    .line 5820
    iget-boolean v0, p0, Landroid/app/ActivityThread$DumpHeapData;->runGc:Z

    if-eqz v0, :cond_0

    .line 5821
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 5822
    invoke-static {}, Ljava/lang/System;->runFinalization()V

    .line 5823
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 5825
    :cond_0
    iget-boolean v0, p0, Landroid/app/ActivityThread$DumpHeapData;->managed:Z

    if-eqz v0, :cond_1

    .line 5827
    :try_start_0
    iget-object v0, p0, Landroid/app/ActivityThread$DumpHeapData;->path:Ljava/lang/String;

    iget-object v1, p0, Landroid/app/ActivityThread$DumpHeapData;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/Debug;->dumpHprofData(Ljava/lang/String;Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5833
    :try_start_1
    iget-object v0, p0, Landroid/app/ActivityThread$DumpHeapData;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 5836
    :goto_0
    goto :goto_3

    .line 5834
    :catch_0
    move-exception v0

    .line 5835
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "ActivityThread"

    const-string v2, "Failure closing profile fd"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5837
    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_3

    .line 5832
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 5828
    :catch_1
    move-exception v0

    .line 5829
    .restart local v0    # "e":Ljava/io/IOException;
    :try_start_2
    const-string v1, "ActivityThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Managed heap dump failed on path "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/app/ActivityThread$DumpHeapData;->path:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " -- can the process access this path?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 5833
    .end local v0    # "e":Ljava/io/IOException;
    :try_start_3
    iget-object v0, p0, Landroid/app/ActivityThread$DumpHeapData;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 5832
    :goto_1
    nop

    .line 5833
    :try_start_4
    iget-object v1, p0, Landroid/app/ActivityThread$DumpHeapData;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 5836
    goto :goto_2

    .line 5834
    :catch_2
    move-exception v1

    .line 5835
    .local v1, "e":Ljava/io/IOException;
    const-string v2, "ActivityThread"

    const-string v3, "Failure closing profile fd"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5836
    .end local v1    # "e":Ljava/io/IOException;
    :goto_2
    throw v0

    .line 5838
    :cond_1
    iget-boolean v0, p0, Landroid/app/ActivityThread$DumpHeapData;->mallocInfo:Z

    if-eqz v0, :cond_2

    .line 5839
    iget-object v0, p0, Landroid/app/ActivityThread$DumpHeapData;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Debug;->dumpNativeMallocInfo(Ljava/io/FileDescriptor;)V

    goto :goto_3

    .line 5841
    :cond_2
    iget-object v0, p0, Landroid/app/ActivityThread$DumpHeapData;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Debug;->dumpNativeHeap(Ljava/io/FileDescriptor;)V

    .line 5844
    :goto_3
    :try_start_5
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ActivityThread$DumpHeapData;->path:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->dumpHeapFinished(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_3

    .line 5847
    nop

    .line 5848
    return-void

    .line 5845
    :catch_3
    move-exception v0

    .line 5846
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method private handleDumpProvider(Landroid/app/ActivityThread$DumpComponentInfo;)V
    .locals 6
    .param p1, "info"    # Landroid/app/ActivityThread$DumpComponentInfo;

    .line 4089
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 4091
    .local v0, "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :try_start_0
    iget-object v1, p0, Landroid/app/ActivityThread;->mLocalProviders:Landroid/util/ArrayMap;

    iget-object v2, p1, Landroid/app/ActivityThread$DumpComponentInfo;->token:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityThread$ProviderClientRecord;

    .line 4092
    .local v1, "r":Landroid/app/ActivityThread$ProviderClientRecord;
    if-eqz v1, :cond_0

    iget-object v2, v1, Landroid/app/ActivityThread$ProviderClientRecord;->mLocalProvider:Landroid/content/ContentProvider;

    if-eqz v2, :cond_0

    .line 4093
    new-instance v2, Lcom/android/internal/util/FastPrintWriter;

    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v4, p1, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    .line 4094
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v2, v3}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 4095
    .local v2, "pw":Ljava/io/PrintWriter;
    iget-object v3, v1, Landroid/app/ActivityThread$ProviderClientRecord;->mLocalProvider:Landroid/content/ContentProvider;

    iget-object v4, p1, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    iget-object v5, p1, Landroid/app/ActivityThread$DumpComponentInfo;->args:[Ljava/lang/String;

    invoke-virtual {v3, v4, v2, v5}, Landroid/content/ContentProvider;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 4096
    invoke-virtual {v2}, Ljava/io/PrintWriter;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4099
    .end local v1    # "r":Landroid/app/ActivityThread$ProviderClientRecord;
    .end local v2    # "pw":Ljava/io/PrintWriter;
    :cond_0
    iget-object v1, p1, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 4100
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 4101
    nop

    .line 4102
    return-void

    .line 4099
    :catchall_0
    move-exception v1

    iget-object v2, p1, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 4100
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v1
.end method

.method private handleDumpService(Landroid/app/ActivityThread$DumpComponentInfo;)V
    .locals 5
    .param p1, "info"    # Landroid/app/ActivityThread$DumpComponentInfo;

    .line 4057
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 4059
    .local v0, "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :try_start_0
    iget-object v1, p0, Landroid/app/ActivityThread;->mServices:Landroid/util/ArrayMap;

    iget-object v2, p1, Landroid/app/ActivityThread$DumpComponentInfo;->token:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Service;

    .line 4060
    .local v1, "s":Landroid/app/Service;
    if-eqz v1, :cond_0

    .line 4061
    new-instance v2, Lcom/android/internal/util/FastPrintWriter;

    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v4, p1, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    .line 4062
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v2, v3}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 4063
    .local v2, "pw":Ljava/io/PrintWriter;
    iget-object v3, p1, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    iget-object v4, p1, Landroid/app/ActivityThread$DumpComponentInfo;->args:[Ljava/lang/String;

    invoke-virtual {v1, v3, v2, v4}, Landroid/app/Service;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 4064
    invoke-virtual {v2}, Ljava/io/PrintWriter;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4067
    .end local v1    # "s":Landroid/app/Service;
    .end local v2    # "pw":Ljava/io/PrintWriter;
    :cond_0
    iget-object v1, p1, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 4068
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 4069
    nop

    .line 4070
    return-void

    .line 4067
    :catchall_0
    move-exception v1

    iget-object v2, p1, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 4068
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v1
.end method

.method private handleEnterAnimationComplete(Landroid/os/IBinder;)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;

    .line 3607
    iget-object v0, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 3608
    .local v0, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    if-eqz v0, :cond_0

    .line 3609
    iget-object v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->dispatchEnterAnimationComplete()V

    .line 3611
    :cond_0
    return-void
.end method

.method private handleLocalVoiceInteractionStarted(Landroid/os/IBinder;Lcom/android/internal/app/IVoiceInteractor;)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "interactor"    # Lcom/android/internal/app/IVoiceInteractor;

    .line 3654
    iget-object v0, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 3655
    .local v0, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    if-eqz v0, :cond_1

    .line 3656
    iput-object p2, v0, Landroid/app/ActivityThread$ActivityClientRecord;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    .line 3657
    iget-object v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v1, p2}, Landroid/app/Activity;->setVoiceInteractor(Lcom/android/internal/app/IVoiceInteractor;)V

    .line 3658
    if-nez p2, :cond_0

    .line 3659
    iget-object v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->onLocalVoiceInteractionStopped()V

    goto :goto_0

    .line 3661
    :cond_0
    iget-object v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->onLocalVoiceInteractionStarted()V

    .line 3664
    :cond_1
    :goto_0
    return-void
.end method

.method private handleReceiver(Landroid/app/ActivityThread$ReceiverData;)V
    .locals 18
    .param p1, "data"    # Landroid/app/ActivityThread$ReceiverData;

    move-object/from16 v1, p0

    .line 3700
    move-object/from16 v2, p1

    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityThread;->unscheduleGcIdler()V

    .line 3702
    iget-object v0, v2, Landroid/app/ActivityThread$ReceiverData;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    .line 3704
    .local v3, "component":Ljava/lang/String;
    iget-object v0, v2, Landroid/app/ActivityThread$ReceiverData;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v2, Landroid/app/ActivityThread$ReceiverData;->compatInfo:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {v1, v0, v4}, Landroid/app/ActivityThread;->getPackageInfoNoCheck(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;)Landroid/app/LoadedApk;

    move-result-object v4

    .line 3707
    .local v4, "packageInfo":Landroid/app/LoadedApk;
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    move-object v5, v0

    .line 3713
    .local v5, "mgr":Landroid/app/IActivityManager;
    const/4 v0, 0x0

    :try_start_0
    iget-object v6, v1, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v4, v0, v6}, Landroid/app/LoadedApk;->makeApplication(ZLandroid/app/Instrumentation;)Landroid/app/Application;

    move-result-object v0

    move-object v6, v0

    .line 3714
    .local v6, "app":Landroid/app/Application;
    invoke-virtual {v6}, Landroid/app/Application;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/ContextImpl;

    .line 3715
    .local v0, "context":Landroid/app/ContextImpl;
    iget-object v7, v2, Landroid/app/ActivityThread$ReceiverData;->info:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->splitName:Ljava/lang/String;

    if-eqz v7, :cond_0

    .line 3716
    iget-object v7, v2, Landroid/app/ActivityThread$ReceiverData;->info:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->splitName:Ljava/lang/String;

    invoke-virtual {v0, v7}, Landroid/app/ContextImpl;->createContextForSplit(Ljava/lang/String;)Landroid/content/Context;

    move-result-object v7

    check-cast v7, Landroid/app/ContextImpl;

    move-object v0, v7

    .line 3718
    :cond_0
    invoke-virtual {v0}, Landroid/app/ContextImpl;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    .line 3719
    .local v7, "cl":Ljava/lang/ClassLoader;
    iget-object v8, v2, Landroid/app/ActivityThread$ReceiverData;->intent:Landroid/content/Intent;

    invoke-virtual {v8, v7}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 3720
    iget-object v8, v2, Landroid/app/ActivityThread$ReceiverData;->intent:Landroid/content/Intent;

    invoke-virtual {v8}, Landroid/content/Intent;->prepareToEnterProcess()V

    .line 3721
    invoke-virtual {v2, v7}, Landroid/app/ActivityThread$ReceiverData;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 3722
    invoke-virtual {v4}, Landroid/app/LoadedApk;->getAppFactory()Landroid/app/AppComponentFactory;

    move-result-object v8

    iget-object v9, v2, Landroid/app/ActivityThread$ReceiverData;->info:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v10, v2, Landroid/app/ActivityThread$ReceiverData;->intent:Landroid/content/Intent;

    .line 3723
    invoke-virtual {v8, v7, v9, v10}, Landroid/app/AppComponentFactory;->instantiateReceiver(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Intent;)Landroid/content/BroadcastReceiver;

    move-result-object v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 3723
    .end local v7    # "cl":Ljava/lang/ClassLoader;
    move-object v7, v8

    .line 3731
    .local v7, "receiver":Landroid/content/BroadcastReceiver;
    nop

    .line 3730
    move-object v8, v0

    .line 3742
    .end local v0    # "context":Landroid/app/ContextImpl;
    .local v8, "context":Landroid/app/ContextImpl;
    :try_start_1
    sget-object v0, Landroid/app/ActivityThread;->sCurrentBroadcastIntent:Ljava/lang/ThreadLocal;

    iget-object v10, v2, Landroid/app/ActivityThread$ReceiverData;->intent:Landroid/content/Intent;

    invoke-virtual {v0, v10}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 3743
    invoke-virtual {v7, v2}, Landroid/content/BroadcastReceiver;->setPendingResult(Landroid/content/BroadcastReceiver$PendingResult;)V

    .line 3745
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    .line 3747
    .local v10, "start":J
    invoke-virtual {v8}, Landroid/app/ContextImpl;->getReceiverRestrictedContext()Landroid/content/Context;

    move-result-object v0

    iget-object v12, v2, Landroid/app/ActivityThread$ReceiverData;->intent:Landroid/content/Intent;

    invoke-virtual {v7, v0, v12}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 3750
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    .line 3751
    .local v12, "now":J
    sub-long v14, v12, v10

    .line 3752
    .local v14, "delay":J
    sget v0, Landroid/os/NubiaDebug;->RECEIVER_DELAY:I

    move-wide/from16 v16, v10

    int-to-long v9, v0

    .line 3752
    .end local v10    # "start":J
    .local v16, "start":J
    cmp-long v0, v14, v9

    if-ltz v0, :cond_1

    .line 3753
    const-string/jumbo v0, "nubialog"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ActivityThread onReceive() delay:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v10, "ms receiver:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " intent:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v2, Landroid/app/ActivityThread$ReceiverData;->intent:Landroid/content/Intent;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v12    # "now":J
    .end local v14    # "delay":J
    .end local v16    # "start":J
    goto :goto_0

    .line 3766
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 3756
    :catch_0
    move-exception v0

    .line 3759
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v2, v5}, Landroid/app/ActivityThread$ReceiverData;->sendFinished(Landroid/app/IActivityManager;)V

    .line 3760
    iget-object v9, v1, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v9, v7, v0}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v9, :cond_4

    .line 3766
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    sget-object v0, Landroid/app/ActivityThread;->sCurrentBroadcastIntent:Ljava/lang/ThreadLocal;

    const/4 v9, 0x0

    invoke-virtual {v0, v9}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 3767
    nop

    .line 3769
    invoke-virtual {v7}, Landroid/content/BroadcastReceiver;->getPendingResult()Landroid/content/BroadcastReceiver$PendingResult;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3770
    invoke-virtual/range {p1 .. p1}, Landroid/app/ActivityThread$ReceiverData;->finish()V

    .line 3774
    :cond_2
    sget-boolean v0, Landroid/os/NubiaDebug;->DEBUG_SYSTRACE_TAG:Z

    if-eqz v0, :cond_3

    const-wide/16 v9, 0x40

    invoke-static {v9, v10}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3775
    invoke-static {v9, v10}, Landroid/os/Trace;->traceEnd(J)V

    .line 3777
    :cond_3
    return-void

    .line 3761
    .restart local v0    # "e":Ljava/lang/Exception;
    :cond_4
    :try_start_3
    new-instance v9, Ljava/lang/RuntimeException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unable to start receiver "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ": "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3763
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3766
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    sget-object v9, Landroid/app/ActivityThread;->sCurrentBroadcastIntent:Ljava/lang/ThreadLocal;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    throw v0

    .line 3724
    .end local v6    # "app":Landroid/app/Application;
    .end local v7    # "receiver":Landroid/content/BroadcastReceiver;
    .end local v8    # "context":Landroid/app/ContextImpl;
    :catch_1
    move-exception v0

    .line 3727
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v2, v5}, Landroid/app/ActivityThread$ReceiverData;->sendFinished(Landroid/app/IActivityManager;)V

    .line 3728
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to instantiate receiver "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3730
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
.end method

.method private handleRelaunchActivityInner(Landroid/app/ActivityThread$ActivityClientRecord;ILjava/util/List;Ljava/util/List;Landroid/app/servertransaction/PendingTransactionActions;ZLandroid/content/res/Configuration;Ljava/lang/String;)V
    .locals 14
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;
    .param p2, "configChanges"    # I
    .param p5, "pendingActions"    # Landroid/app/servertransaction/PendingTransactionActions;
    .param p6, "startsNotResumed"    # Z
    .param p7, "overrideConfig"    # Landroid/content/res/Configuration;
    .param p8, "reason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/ActivityThread$ActivityClientRecord;",
            "I",
            "Ljava/util/List<",
            "Landroid/app/ResultInfo;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/internal/content/ReferrerIntent;",
            ">;",
            "Landroid/app/servertransaction/PendingTransactionActions;",
            "Z",
            "Landroid/content/res/Configuration;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .local p3, "pendingResults":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    .local p4, "pendingIntents":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/ReferrerIntent;>;"
    move-object v6, p0

    move-object v7, p1

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    .line 5270
    move-object/from16 v10, p8

    iget-object v0, v7, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-object v11, v0, Landroid/app/Activity;->mIntent:Landroid/content/Intent;

    .line 5272
    .local v11, "customIntent":Landroid/content/Intent;
    iget-boolean v0, v7, Landroid/app/ActivityThread$ActivityClientRecord;->paused:Z

    const/4 v12, 0x0

    const/4 v13, 0x0

    if-nez v0, :cond_0

    .line 5273
    invoke-direct {v6, v7, v12, v10, v13}, Landroid/app/ActivityThread;->performPauseActivity(Landroid/app/ActivityThread$ActivityClientRecord;ZLjava/lang/String;Landroid/app/servertransaction/PendingTransactionActions;)Landroid/os/Bundle;

    .line 5275
    :cond_0
    iget-boolean v0, v7, Landroid/app/ActivityThread$ActivityClientRecord;->stopped:Z

    if-nez v0, :cond_1

    .line 5276
    const/4 v0, 0x1

    invoke-direct {v6, v7, v0, v10}, Landroid/app/ActivityThread;->callActivityOnStop(Landroid/app/ActivityThread$ActivityClientRecord;ZLjava/lang/String;)V

    .line 5279
    :cond_1
    iget-object v1, v7, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v4, 0x1

    move-object v0, v6

    move/from16 v3, p2

    move-object v5, v10

    invoke-virtual/range {v0 .. v5}, Landroid/app/ActivityThread;->handleDestroyActivity(Landroid/os/IBinder;ZIZLjava/lang/String;)V

    .line 5281
    iput-object v13, v7, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    .line 5282
    iput-object v13, v7, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    .line 5283
    iput-boolean v12, v7, Landroid/app/ActivityThread$ActivityClientRecord;->hideForNow:Z

    .line 5284
    iput-object v13, v7, Landroid/app/ActivityThread$ActivityClientRecord;->nextIdle:Landroid/app/ActivityThread$ActivityClientRecord;

    .line 5286
    if-eqz v8, :cond_3

    .line 5287
    iget-object v0, v7, Landroid/app/ActivityThread$ActivityClientRecord;->pendingResults:Ljava/util/List;

    if-nez v0, :cond_2

    .line 5288
    iput-object v8, v7, Landroid/app/ActivityThread$ActivityClientRecord;->pendingResults:Ljava/util/List;

    goto :goto_0

    .line 5290
    :cond_2
    iget-object v0, v7, Landroid/app/ActivityThread$ActivityClientRecord;->pendingResults:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 5293
    :cond_3
    :goto_0
    if-eqz v9, :cond_5

    .line 5294
    iget-object v0, v7, Landroid/app/ActivityThread$ActivityClientRecord;->pendingIntents:Ljava/util/List;

    if-nez v0, :cond_4

    .line 5295
    iput-object v9, v7, Landroid/app/ActivityThread$ActivityClientRecord;->pendingIntents:Ljava/util/List;

    goto :goto_1

    .line 5297
    :cond_4
    iget-object v0, v7, Landroid/app/ActivityThread$ActivityClientRecord;->pendingIntents:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 5300
    :cond_5
    :goto_1
    move/from16 v0, p6

    iput-boolean v0, v7, Landroid/app/ActivityThread$ActivityClientRecord;->startsNotResumed:Z

    .line 5301
    move-object/from16 v1, p7

    iput-object v1, v7, Landroid/app/ActivityThread$ActivityClientRecord;->overrideConfig:Landroid/content/res/Configuration;

    .line 5303
    move-object/from16 v2, p5

    invoke-virtual {v6, v7, v2, v11}, Landroid/app/ActivityThread;->handleLaunchActivity(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/app/servertransaction/PendingTransactionActions;Landroid/content/Intent;)Landroid/app/Activity;

    .line 5304
    return-void
.end method

.method private handleRelaunchActivityLocally(Landroid/os/IBinder;)V
    .locals 7
    .param p1, "token"    # Landroid/os/IBinder;

    .line 5233
    iget-object v0, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 5234
    .local v0, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    if-nez v0, :cond_0

    .line 5235
    const-string v1, "ActivityThread"

    const-string v2, "Activity to relaunch no longer exists"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5236
    return-void

    .line 5239
    :cond_0
    invoke-virtual {v0}, Landroid/app/ActivityThread$ActivityClientRecord;->getLifecycleState()I

    move-result v1

    .line 5241
    .local v1, "prevState":I
    const/4 v2, 0x3

    if-lt v1, v2, :cond_3

    const/4 v2, 0x5

    if-le v1, v2, :cond_1

    goto :goto_1

    .line 5249
    :cond_1
    new-instance v2, Landroid/util/MergedConfiguration;

    .line 5250
    iget-object v3, v0, Landroid/app/ActivityThread$ActivityClientRecord;->createdConfig:Landroid/content/res/Configuration;

    if-eqz v3, :cond_2

    iget-object v3, v0, Landroid/app/ActivityThread$ActivityClientRecord;->createdConfig:Landroid/content/res/Configuration;

    goto :goto_0

    :cond_2
    iget-object v3, p0, Landroid/app/ActivityThread;->mConfiguration:Landroid/content/res/Configuration;

    :goto_0
    iget-object v4, v0, Landroid/app/ActivityThread$ActivityClientRecord;->overrideConfig:Landroid/content/res/Configuration;

    invoke-direct {v2, v3, v4}, Landroid/util/MergedConfiguration;-><init>(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    .line 5252
    .local v2, "mergedConfiguration":Landroid/util/MergedConfiguration;
    const/4 v3, 0x0

    iget-boolean v4, v0, Landroid/app/ActivityThread$ActivityClientRecord;->mPreserveWindow:Z

    const/4 v5, 0x0

    invoke-static {v5, v5, v3, v2, v4}, Landroid/app/servertransaction/ActivityRelaunchItem;->obtain(Ljava/util/List;Ljava/util/List;ILandroid/util/MergedConfiguration;Z)Landroid/app/servertransaction/ActivityRelaunchItem;

    move-result-object v3

    .line 5256
    .local v3, "activityRelaunchItem":Landroid/app/servertransaction/ActivityRelaunchItem;
    nop

    .line 5257
    invoke-static {v0}, Landroid/app/servertransaction/TransactionExecutorHelper;->getLifecycleRequestForCurrentState(Landroid/app/ActivityThread$ActivityClientRecord;)Landroid/app/servertransaction/ActivityLifecycleItem;

    move-result-object v4

    .line 5259
    .local v4, "lifecycleRequest":Landroid/app/servertransaction/ActivityLifecycleItem;
    iget-object v5, p0, Landroid/app/ActivityThread;->mAppThread:Landroid/app/ActivityThread$ApplicationThread;

    iget-object v6, v0, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    invoke-static {v5, v6}, Landroid/app/servertransaction/ClientTransaction;->obtain(Landroid/app/IApplicationThread;Landroid/os/IBinder;)Landroid/app/servertransaction/ClientTransaction;

    move-result-object v5

    .line 5260
    .local v5, "transaction":Landroid/app/servertransaction/ClientTransaction;
    invoke-virtual {v5, v3}, Landroid/app/servertransaction/ClientTransaction;->addCallback(Landroid/app/servertransaction/ClientTransactionItem;)V

    .line 5261
    invoke-virtual {v5, v4}, Landroid/app/servertransaction/ClientTransaction;->setLifecycleStateRequest(Landroid/app/servertransaction/ActivityLifecycleItem;)V

    .line 5262
    invoke-virtual {p0, v5}, Landroid/app/ActivityThread;->executeTransaction(Landroid/app/servertransaction/ClientTransaction;)V

    .line 5263
    return-void

    .line 5242
    .end local v2    # "mergedConfiguration":Landroid/util/MergedConfiguration;
    .end local v3    # "activityRelaunchItem":Landroid/app/servertransaction/ActivityRelaunchItem;
    .end local v4    # "lifecycleRequest":Landroid/app/servertransaction/ActivityLifecycleItem;
    .end local v5    # "transaction":Landroid/app/servertransaction/ClientTransaction;
    :cond_3
    :goto_1
    const-string v2, "ActivityThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Activity state must be in [ON_RESUME..ON_STOP] in order to be relaunched,current state is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5244
    return-void
.end method

.method private handleRunIsolatedEntryPoint(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 6
    .param p1, "entryPoint"    # Ljava/lang/String;
    .param p2, "entryPointArgs"    # [Ljava/lang/String;

    .line 7343
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v1, "main"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 7344
    .local v0, "main":Ljava/lang/reflect/Method;
    const/4 v1, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7347
    .end local v0    # "main":Ljava/lang/reflect/Method;
    nop

    .line 7349
    invoke-static {v5}, Ljava/lang/System;->exit(I)V

    .line 7350
    return-void

    .line 7345
    :catch_0
    move-exception v0

    .line 7346
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    new-instance v1, Landroid/util/AndroidRuntimeException;

    const-string/jumbo v2, "runIsolatedEntryPoint failed"

    invoke-direct {v1, v2, v0}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private handleServiceArgs(Landroid/app/ActivityThread$ServiceArgsData;)V
    .locals 11
    .param p1, "data"    # Landroid/app/ActivityThread$ServiceArgsData;

    .line 4105
    iget-object v0, p0, Landroid/app/ActivityThread;->mServices:Landroid/util/ArrayMap;

    iget-object v1, p1, Landroid/app/ActivityThread$ServiceArgsData;->token:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Service;

    .line 4106
    .local v0, "s":Landroid/app/Service;
    if-eqz v0, :cond_9

    .line 4108
    :try_start_0
    iget-object v1, p1, Landroid/app/ActivityThread$ServiceArgsData;->args:Landroid/content/Intent;

    if-eqz v1, :cond_0

    .line 4109
    iget-object v1, p1, Landroid/app/ActivityThread$ServiceArgsData;->args:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/app/Service;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 4110
    iget-object v1, p1, Landroid/app/ActivityThread$ServiceArgsData;->args:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->prepareToEnterProcess()V

    .line 4113
    :cond_0
    iget-boolean v1, p1, Landroid/app/ActivityThread$ServiceArgsData;->taskRemoved:Z

    const-wide/16 v2, 0x40

    if-nez v1, :cond_4

    .line 4115
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 4118
    .local v4, "start":J
    sget-boolean v1, Landroid/os/NubiaDebug;->DEBUG_SYSTRACE_TAG:Z

    if-eqz v1, :cond_1

    invoke-static {v2, v3}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4119
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onStartCommand:"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ",intent="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p1, Landroid/app/ActivityThread$ServiceArgsData;->args:Landroid/content/Intent;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 4121
    :cond_1
    iget-object v1, p1, Landroid/app/ActivityThread$ServiceArgsData;->args:Landroid/content/Intent;

    iget v6, p1, Landroid/app/ActivityThread$ServiceArgsData;->flags:I

    iget v7, p1, Landroid/app/ActivityThread$ServiceArgsData;->startId:I

    invoke-virtual {v0, v1, v6, v7}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v1

    .line 4123
    .local v1, "res":I
    sget-boolean v6, Landroid/os/NubiaDebug;->DEBUG_SYSTRACE_TAG:Z

    if-eqz v6, :cond_2

    invoke-static {v2, v3}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 4124
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 4127
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 4128
    .local v2, "now":J
    sub-long v6, v2, v4

    .line 4129
    .local v6, "delay":J
    sget v8, Landroid/os/NubiaDebug;->SERVICE_DELAY:I

    int-to-long v8, v8

    cmp-long v8, v6, v8

    if-ltz v8, :cond_3

    .line 4130
    const-string/jumbo v8, "nubialog"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ActivityThread service.onStartCommand() delay:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v10, "ms service:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " data:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4133
    .end local v2    # "now":J
    .end local v4    # "start":J
    .end local v6    # "delay":J
    :cond_3
    goto :goto_0

    .line 4135
    .end local v1    # "res":I
    :cond_4
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 4138
    .restart local v4    # "start":J
    sget-boolean v1, Landroid/os/NubiaDebug;->DEBUG_SYSTRACE_TAG:Z

    if-eqz v1, :cond_5

    invoke-static {v2, v3}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 4139
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onTaskRemoved:"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ",intent="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p1, Landroid/app/ActivityThread$ServiceArgsData;->args:Landroid/content/Intent;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 4141
    :cond_5
    iget-object v1, p1, Landroid/app/ActivityThread$ServiceArgsData;->args:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/app/Service;->onTaskRemoved(Landroid/content/Intent;)V

    .line 4143
    sget-boolean v1, Landroid/os/NubiaDebug;->DEBUG_SYSTRACE_TAG:Z

    if-eqz v1, :cond_6

    invoke-static {v2, v3}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 4144
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 4147
    :cond_6
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 4148
    .local v1, "now":J
    sub-long v6, v1, v4

    .line 4149
    .restart local v6    # "delay":J
    sget v3, Landroid/os/NubiaDebug;->SERVICE_DELAY:I

    int-to-long v8, v3

    cmp-long v3, v6, v8

    if-ltz v3, :cond_7

    .line 4150
    const-string/jumbo v3, "nubialog"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ActivityThread service.onTaskRemoved() delay:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v9, "ms service:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " data:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4153
    :cond_7
    const/16 v1, 0x3e8

    .line 4156
    .end local v4    # "start":J
    .end local v6    # "delay":J
    .local v1, "res":I
    :goto_0
    invoke-static {}, Landroid/app/QueuedWork;->waitToFinish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 4159
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    iget-object v3, p1, Landroid/app/ActivityThread$ServiceArgsData;->token:Landroid/os/IBinder;

    const/4 v4, 0x1

    iget v5, p1, Landroid/app/ActivityThread$ServiceArgsData;->startId:I

    invoke-interface {v2, v3, v4, v5, v1}, Landroid/app/IActivityManager;->serviceDoneExecuting(Landroid/os/IBinder;III)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 4163
    nop

    .line 4164
    :try_start_2
    invoke-virtual {p0}, Landroid/app/ActivityThread;->ensureJitEnabled()V

    .line 4171
    .end local v1    # "res":I
    goto :goto_1

    .line 4161
    .restart local v1    # "res":I
    :catch_0
    move-exception v2

    .line 4162
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 4165
    .end local v1    # "res":I
    .end local v2    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 4166
    .local v1, "e":Ljava/lang/Exception;
    iget-object v2, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v2, v0, v1}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 4166
    .end local v1    # "e":Ljava/lang/Exception;
    goto :goto_1

    .line 4167
    .restart local v1    # "e":Ljava/lang/Exception;
    :cond_8
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to start service "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Landroid/app/ActivityThread$ServiceArgsData;->args:Landroid/content/Intent;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4169
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 4173
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_9
    :goto_1
    return-void
.end method

.method private handleSetCoreSettings(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "coreSettings"    # Landroid/os/Bundle;

    .line 4809
    iget-object v0, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    monitor-enter v0

    .line 4810
    :try_start_0
    iput-object p1, p0, Landroid/app/ActivityThread;->mCoreSettings:Landroid/os/Bundle;

    .line 4811
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4812
    invoke-direct {p0}, Landroid/app/ActivityThread;->onCoreSettingsChange()V

    .line 4813
    return-void

    .line 4811
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private handleSleeping(Landroid/os/IBinder;Z)V
    .locals 4
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "sleeping"    # Z

    .line 4777
    iget-object v0, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 4779
    .local v0, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    if-nez v0, :cond_0

    .line 4780
    const-string v1, "ActivityThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleSleeping: no activity for token "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4781
    return-void

    .line 4784
    :cond_0
    const/4 v1, 0x1

    if-eqz p2, :cond_3

    .line 4785
    iget-boolean v2, v0, Landroid/app/ActivityThread$ActivityClientRecord;->stopped:Z

    if-nez v2, :cond_1

    invoke-static {v0}, Landroid/app/ActivityThread$ActivityClientRecord;->access$4400(Landroid/app/ActivityThread$ActivityClientRecord;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 4786
    const-string/jumbo v2, "sleeping"

    invoke-direct {p0, v0, v1, v2}, Landroid/app/ActivityThread;->callActivityOnStop(Landroid/app/ActivityThread$ActivityClientRecord;ZLjava/lang/String;)V

    .line 4790
    :cond_1
    invoke-static {v0}, Landroid/app/ActivityThread$ActivityClientRecord;->access$4400(Landroid/app/ActivityThread$ActivityClientRecord;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 4791
    invoke-static {}, Landroid/app/QueuedWork;->waitToFinish()V

    .line 4796
    :cond_2
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, v0, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->activitySlept(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4799
    goto :goto_0

    .line 4797
    :catch_0
    move-exception v1

    .line 4798
    .local v1, "ex":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 4801
    .end local v1    # "ex":Landroid/os/RemoteException;
    :cond_3
    iget-boolean v2, v0, Landroid/app/ActivityThread$ActivityClientRecord;->stopped:Z

    if-eqz v2, :cond_4

    iget-object v2, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v2, v2, Landroid/app/Activity;->mVisibleFromServer:Z

    if-eqz v2, :cond_4

    .line 4802
    iget-object v2, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    const-string v3, "handleSleeping"

    invoke-virtual {v2, v1, v3}, Landroid/app/Activity;->performRestart(ZLjava/lang/String;)V

    .line 4803
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/app/ActivityThread$ActivityClientRecord;->setState(I)V

    .line 4806
    :cond_4
    :goto_0
    return-void
.end method

.method private handleStartBinderTracking()V
    .locals 0

    .line 3614
    invoke-static {}, Landroid/os/Binder;->enableTracing()V

    .line 3615
    return-void
.end method

.method private handleStopBinderTrackingAndDump(Landroid/os/ParcelFileDescriptor;)V
    .locals 2
    .param p1, "fd"    # Landroid/os/ParcelFileDescriptor;

    .line 3619
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->disableTracing()V

    .line 3620
    invoke-static {}, Landroid/os/Binder;->getTransactionTracker()Landroid/os/TransactionTracker;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/TransactionTracker;->writeTracesToFile(Landroid/os/ParcelFileDescriptor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3622
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3623
    invoke-static {}, Landroid/os/Binder;->getTransactionTracker()Landroid/os/TransactionTracker;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/TransactionTracker;->clearTraces()V

    .line 3624
    nop

    .line 3625
    return-void

    .line 3622
    :catchall_0
    move-exception v0

    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3623
    invoke-static {}, Landroid/os/Binder;->getTransactionTracker()Landroid/os/TransactionTracker;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/TransactionTracker;->clearTraces()V

    throw v0
.end method

.method private handleStopService(Landroid/os/IBinder;)V
    .locals 11
    .param p1, "token"    # Landroid/os/IBinder;

    .line 4176
    iget-object v0, p0, Landroid/app/ActivityThread;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Service;

    .line 4177
    .local v0, "s":Landroid/app/Service;
    if-eqz v0, :cond_5

    .line 4181
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 4184
    .local v1, "start":J
    sget-boolean v3, Landroid/os/NubiaDebug;->DEBUG_SYSTRACE_TAG:Z

    const-wide/16 v4, 0x40

    if-eqz v3, :cond_0

    invoke-static {v4, v5}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4185
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onDestroy:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v5, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 4187
    :cond_0
    invoke-virtual {v0}, Landroid/app/Service;->onDestroy()V

    .line 4188
    invoke-virtual {v0}, Landroid/app/Service;->detachAndCleanUp()V

    .line 4190
    sget-boolean v3, Landroid/os/NubiaDebug;->DEBUG_SYSTRACE_TAG:Z

    if-eqz v3, :cond_1

    invoke-static {v4, v5}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4191
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 4194
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 4195
    .local v3, "now":J
    sub-long v5, v3, v1

    .line 4196
    .local v5, "delay":J
    sget v7, Landroid/os/NubiaDebug;->SERVICE_DELAY:I

    int-to-long v7, v7

    cmp-long v7, v5, v7

    if-ltz v7, :cond_2

    .line 4197
    const-string/jumbo v7, "nubialog"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ActivityThread service.onDestroy() delay:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v9, "ms service:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4200
    :cond_2
    invoke-virtual {v0}, Landroid/app/Service;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    .line 4201
    .local v7, "context":Landroid/content/Context;
    instance-of v8, v7, Landroid/app/ContextImpl;

    if-eqz v8, :cond_3

    .line 4202
    invoke-virtual {v0}, Landroid/app/Service;->getClassName()Ljava/lang/String;

    move-result-object v8

    .line 4203
    .local v8, "who":Ljava/lang/String;
    move-object v9, v7

    check-cast v9, Landroid/app/ContextImpl;

    const-string v10, "Service"

    invoke-virtual {v9, v8, v10}, Landroid/app/ContextImpl;->scheduleFinalCleanup(Ljava/lang/String;Ljava/lang/String;)V

    .line 4206
    .end local v8    # "who":Ljava/lang/String;
    :cond_3
    invoke-static {}, Landroid/app/QueuedWork;->waitToFinish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 4209
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v8

    const/4 v9, 0x2

    const/4 v10, 0x0

    invoke-interface {v8, p1, v9, v10, v10}, Landroid/app/IActivityManager;->serviceDoneExecuting(Landroid/os/IBinder;III)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 4213
    goto :goto_0

    .line 4211
    :catch_0
    move-exception v8

    .line 4212
    .local v8, "e":Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v8}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v9

    throw v9
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 4214
    .end local v1    # "start":J
    .end local v3    # "now":J
    .end local v5    # "delay":J
    .end local v7    # "context":Landroid/content/Context;
    .end local v8    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 4215
    .local v1, "e":Ljava/lang/Exception;
    iget-object v2, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v2, v0, v1}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 4220
    const-string v2, "ActivityThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleStopService: exception for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4221
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    goto :goto_1

    .line 4216
    .restart local v1    # "e":Ljava/lang/Exception;
    :cond_4
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to stop service "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4218
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 4223
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_5
    const-string v1, "ActivityThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleStopService: token="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " not found."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4226
    :goto_1
    return-void
.end method

.method private handleTrimMemory(I)V
    .locals 6
    .param p1, "level"    # I

    .line 5959
    const-string/jumbo v0, "trimMemory"

    const-wide/16 v1, 0x40

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 5962
    const/4 v0, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3}, Landroid/app/ActivityThread;->collectComponentCallbacks(ZLandroid/content/res/Configuration;)Ljava/util/ArrayList;

    move-result-object v0

    .line 5964
    .local v0, "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentCallbacks2;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 5965
    .local v3, "N":I
    const/4 v4, 0x0

    .line 5965
    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_0

    .line 5966
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentCallbacks2;

    invoke-interface {v5, p1}, Landroid/content/ComponentCallbacks2;->onTrimMemory(I)V

    .line 5965
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 5973
    .end local v4    # "i":I
    :cond_0
    iget-boolean v4, p0, Landroid/app/ActivityThread;->mIsLauncher:Z

    if-eqz v4, :cond_1

    const/16 v4, 0x50

    if-lt p1, v4, :cond_2

    .line 5974
    :cond_1
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/view/WindowManagerGlobal;->trimMemory(I)V

    .line 5977
    :cond_2
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 5978
    return-void
.end method

.method private handleUnbindService(Landroid/app/ActivityThread$BindServiceData;)V
    .locals 11
    .param p1, "data"    # Landroid/app/ActivityThread$BindServiceData;

    .line 4011
    iget-object v0, p0, Landroid/app/ActivityThread;->mServices:Landroid/util/ArrayMap;

    iget-object v1, p1, Landroid/app/ActivityThread$BindServiceData;->token:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Service;

    .line 4012
    .local v0, "s":Landroid/app/Service;
    if-eqz v0, :cond_5

    .line 4014
    :try_start_0
    iget-object v1, p1, Landroid/app/ActivityThread$BindServiceData;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/app/Service;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 4015
    iget-object v1, p1, Landroid/app/ActivityThread$BindServiceData;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->prepareToEnterProcess()V

    .line 4017
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 4020
    .local v1, "start":J
    sget-boolean v3, Landroid/os/NubiaDebug;->DEBUG_SYSTRACE_TAG:Z

    const-wide/16 v4, 0x40

    if-eqz v3, :cond_0

    invoke-static {v4, v5}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4021
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onUnbind:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", intent="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p1, Landroid/app/ActivityThread$BindServiceData;->intent:Landroid/content/Intent;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v5, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 4023
    :cond_0
    iget-object v3, p1, Landroid/app/ActivityThread$BindServiceData;->intent:Landroid/content/Intent;

    invoke-virtual {v0, v3}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result v3

    .line 4025
    .local v3, "doRebind":Z
    sget-boolean v6, Landroid/os/NubiaDebug;->DEBUG_SYSTRACE_TAG:Z

    if-eqz v6, :cond_1

    invoke-static {v4, v5}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 4026
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 4029
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 4030
    .local v4, "now":J
    sub-long v6, v4, v1

    .line 4031
    .local v6, "delay":J
    sget v8, Landroid/os/NubiaDebug;->SERVICE_DELAY:I

    int-to-long v8, v8

    cmp-long v8, v6, v8

    if-ltz v8, :cond_2

    .line 4032
    const-string/jumbo v8, "nubialog"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ActivityThread service.onUnbind() delay:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v10, "ms service:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " data:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 4036
    :cond_2
    if-eqz v3, :cond_3

    .line 4037
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v8

    iget-object v9, p1, Landroid/app/ActivityThread$BindServiceData;->token:Landroid/os/IBinder;

    iget-object v10, p1, Landroid/app/ActivityThread$BindServiceData;->intent:Landroid/content/Intent;

    invoke-interface {v8, v9, v10, v3}, Landroid/app/IActivityManager;->unbindFinished(Landroid/os/IBinder;Landroid/content/Intent;Z)V

    goto :goto_0

    .line 4043
    :catch_0
    move-exception v8

    goto :goto_1

    .line 4040
    :cond_3
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v8

    iget-object v9, p1, Landroid/app/ActivityThread$BindServiceData;->token:Landroid/os/IBinder;

    const/4 v10, 0x0

    invoke-interface {v8, v9, v10, v10, v10}, Landroid/app/IActivityManager;->serviceDoneExecuting(Landroid/os/IBinder;III)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 4045
    :goto_0
    nop

    .line 4052
    .end local v1    # "start":J
    .end local v3    # "doRebind":Z
    .end local v4    # "now":J
    .end local v6    # "delay":J
    goto :goto_2

    .line 4043
    .restart local v1    # "start":J
    .restart local v3    # "doRebind":Z
    .restart local v4    # "now":J
    .restart local v6    # "delay":J
    :goto_1
    nop

    .line 4044
    .local v8, "ex":Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v8}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v9

    throw v9
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 4046
    .end local v1    # "start":J
    .end local v3    # "doRebind":Z
    .end local v4    # "now":J
    .end local v6    # "delay":J
    .end local v8    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 4047
    .local v1, "e":Ljava/lang/Exception;
    iget-object v2, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v2, v0, v1}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 4047
    .end local v1    # "e":Ljava/lang/Exception;
    goto :goto_2

    .line 4048
    .restart local v1    # "e":Ljava/lang/Exception;
    :cond_4
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to unbind to service "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Landroid/app/ActivityThread$BindServiceData;->intent:Landroid/content/Intent;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4050
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 4054
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_5
    :goto_2
    return-void
.end method

.method private handleUpdatePackageCompatibilityInfo(Landroid/app/ActivityThread$UpdateCompatibilityData;)V
    .locals 3
    .param p1, "data"    # Landroid/app/ActivityThread$UpdateCompatibilityData;

    .line 4836
    iget-object v0, p1, Landroid/app/ActivityThread$UpdateCompatibilityData;->pkg:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/app/ActivityThread;->peekPackageInfo(Ljava/lang/String;Z)Landroid/app/LoadedApk;

    move-result-object v0

    .line 4837
    .local v0, "apk":Landroid/app/LoadedApk;
    if-eqz v0, :cond_0

    .line 4838
    iget-object v1, p1, Landroid/app/ActivityThread$UpdateCompatibilityData;->info:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {v0, v1}, Landroid/app/LoadedApk;->setCompatibilityInfo(Landroid/content/res/CompatibilityInfo;)V

    .line 4840
    :cond_0
    iget-object v1, p1, Landroid/app/ActivityThread$UpdateCompatibilityData;->pkg:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Landroid/app/ActivityThread;->peekPackageInfo(Ljava/lang/String;Z)Landroid/app/LoadedApk;

    move-result-object v0

    .line 4841
    if-eqz v0, :cond_1

    .line 4842
    iget-object v1, p1, Landroid/app/ActivityThread$UpdateCompatibilityData;->info:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {v0, v1}, Landroid/app/LoadedApk;->setCompatibilityInfo(Landroid/content/res/CompatibilityInfo;)V

    .line 4844
    :cond_1
    iget-object v1, p0, Landroid/app/ActivityThread;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v2, p1, Landroid/app/ActivityThread$UpdateCompatibilityData;->info:Landroid/content/res/CompatibilityInfo;

    invoke-direct {p0, v1, v2}, Landroid/app/ActivityThread;->handleConfigurationChanged(Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)V

    .line 4845
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v1

    iget-object v2, p0, Landroid/app/ActivityThread;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v1, v2}, Landroid/view/WindowManagerGlobal;->reportNewConfiguration(Landroid/content/res/Configuration;)V

    .line 4846
    return-void
.end method

.method private final incProviderRefLocked(Landroid/app/ActivityThread$ProviderRefCount;Z)V
    .locals 4
    .param p1, "prc"    # Landroid/app/ActivityThread$ProviderRefCount;
    .param p2, "stable"    # Z

    .line 6875
    const/16 v0, 0x83

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p2, :cond_1

    .line 6876
    iget v3, p1, Landroid/app/ActivityThread$ProviderRefCount;->stableCount:I

    add-int/2addr v3, v2

    iput v3, p1, Landroid/app/ActivityThread$ProviderRefCount;->stableCount:I

    .line 6877
    iget v3, p1, Landroid/app/ActivityThread$ProviderRefCount;->stableCount:I

    if-ne v3, v2, :cond_3

    .line 6880
    iget-boolean v3, p1, Landroid/app/ActivityThread$ProviderRefCount;->removePending:Z

    if-eqz v3, :cond_0

    .line 6884
    const/4 v3, -0x1

    .line 6890
    .local v3, "unstableDelta":I
    iput-boolean v1, p1, Landroid/app/ActivityThread$ProviderRefCount;->removePending:Z

    .line 6893
    iget-object v1, p0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    invoke-virtual {v1, v0, p1}, Landroid/app/ActivityThread$H;->removeMessages(ILjava/lang/Object;)V

    .line 6895
    move v1, v3

    nop

    .end local v3    # "unstableDelta":I
    .local v1, "unstableDelta":I
    :cond_0
    move v0, v1

    .line 6903
    .end local v1    # "unstableDelta":I
    .local v0, "unstableDelta":I
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v3, p1, Landroid/app/ActivityThread$ProviderRefCount;->holder:Landroid/app/ContentProviderHolder;

    iget-object v3, v3, Landroid/app/ContentProviderHolder;->connection:Landroid/os/IBinder;

    invoke-interface {v1, v3, v2, v0}, Landroid/app/IActivityManager;->refContentProvider(Landroid/os/IBinder;II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6907
    goto :goto_0

    .line 6905
    :catch_0
    move-exception v1

    .line 6908
    .end local v0    # "unstableDelta":I
    :goto_0
    goto :goto_1

    .line 6910
    :cond_1
    iget v3, p1, Landroid/app/ActivityThread$ProviderRefCount;->unstableCount:I

    add-int/2addr v3, v2

    iput v3, p1, Landroid/app/ActivityThread$ProviderRefCount;->unstableCount:I

    .line 6911
    iget v3, p1, Landroid/app/ActivityThread$ProviderRefCount;->unstableCount:I

    if-ne v3, v2, :cond_3

    .line 6913
    iget-boolean v3, p1, Landroid/app/ActivityThread$ProviderRefCount;->removePending:Z

    if-eqz v3, :cond_2

    .line 6922
    iput-boolean v1, p1, Landroid/app/ActivityThread$ProviderRefCount;->removePending:Z

    .line 6923
    iget-object v1, p0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    invoke-virtual {v1, v0, p1}, Landroid/app/ActivityThread$H;->removeMessages(ILjava/lang/Object;)V

    goto :goto_1

    .line 6932
    :cond_2
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v3, p1, Landroid/app/ActivityThread$ProviderRefCount;->holder:Landroid/app/ContentProviderHolder;

    iget-object v3, v3, Landroid/app/ContentProviderHolder;->connection:Landroid/os/IBinder;

    invoke-interface {v0, v3, v1, v2}, Landroid/app/IActivityManager;->refContentProvider(Landroid/os/IBinder;II)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 6936
    goto :goto_1

    .line 6934
    :catch_1
    move-exception v0

    .line 6940
    :cond_3
    :goto_1
    return-void
.end method

.method private installContentProviders(Landroid/content/Context;Ljava/util/List;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Landroid/content/pm/ProviderInfo;",
            ">;)V"
        }
    .end annotation

    .line 6779
    .local p2, "providers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ProviderInfo;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6781
    .local v0, "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ContentProviderHolder;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ProviderInfo;

    .line 6790
    .local v2, "cpi":Landroid/content/pm/ProviderInfo;
    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x1

    move-object v4, p0

    move-object v5, p1

    move-object v7, v2

    invoke-direct/range {v4 .. v10}, Landroid/app/ActivityThread;->installProvider(Landroid/content/Context;Landroid/app/ContentProviderHolder;Landroid/content/pm/ProviderInfo;ZZZ)Landroid/app/ContentProviderHolder;

    move-result-object v4

    .line 6792
    .local v4, "cph":Landroid/app/ContentProviderHolder;
    if-eqz v4, :cond_0

    .line 6793
    iput-boolean v3, v4, Landroid/app/ContentProviderHolder;->noReleaseNeeded:Z

    .line 6794
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6796
    .end local v2    # "cpi":Landroid/content/pm/ProviderInfo;
    .end local v4    # "cph":Landroid/app/ContentProviderHolder;
    :cond_0
    goto :goto_0

    .line 6799
    :cond_1
    const-string v1, "cn.nubia.launcher"

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6800
    iput-boolean v3, p0, Landroid/app/ActivityThread;->mIsLauncher:Z

    .line 6805
    :cond_2
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    .line 6806
    invoke-virtual {p0}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v2

    .line 6805
    invoke-interface {v1, v2, v0}, Landroid/app/IActivityManager;->publishContentProviders(Landroid/app/IApplicationThread;Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6809
    nop

    .line 6810
    return-void

    .line 6807
    :catch_0
    move-exception v1

    .line 6808
    .local v1, "ex":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method private installProvider(Landroid/content/Context;Landroid/app/ContentProviderHolder;Landroid/content/pm/ProviderInfo;ZZZ)Landroid/app/ContentProviderHolder;
    .locals 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "holder"    # Landroid/app/ContentProviderHolder;
    .param p3, "info"    # Landroid/content/pm/ProviderInfo;
    .param p4, "noisy"    # Z
    .param p5, "noReleaseNeeded"    # Z
    .param p6, "stable"    # Z

    move-object v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    .line 7208
    move/from16 v4, p6

    const/4 v5, 0x0

    .line 7210
    .local v5, "localProvider":Landroid/content/ContentProvider;
    const/4 v6, 0x1

    if-eqz v2, :cond_1

    iget-object v0, v2, Landroid/app/ContentProviderHolder;->provider:Landroid/content/IContentProvider;

    if-nez v0, :cond_0

    goto :goto_1

    .line 7275
    :cond_0
    iget-object v0, v2, Landroid/app/ContentProviderHolder;->provider:Landroid/content/IContentProvider;

    move-object/from16 v9, p1

    move-object v12, v0

    .end local v5    # "localProvider":Landroid/content/ContentProvider;
    .local v10, "localProvider":Landroid/content/ContentProvider;
    .local v12, "provider":Landroid/content/IContentProvider;
    :goto_0
    move-object v10, v5

    goto/16 :goto_5

    .line 7211
    .end local v10    # "localProvider":Landroid/content/ContentProvider;
    .end local v12    # "provider":Landroid/content/IContentProvider;
    .restart local v5    # "localProvider":Landroid/content/ContentProvider;
    :cond_1
    :goto_1
    if-eqz p4, :cond_2

    .line 7212
    const-string v0, "ActivityThread"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Loading provider "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v3, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v3, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7215
    :cond_2
    const/4 v7, 0x0

    .line 7216
    .local v7, "c":Landroid/content/Context;
    iget-object v8, v3, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 7217
    .local v8, "ai":Landroid/content/pm/ApplicationInfo;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v9, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7218
    move-object/from16 v7, p1

    .line 7230
    :goto_2
    move-object/from16 v9, p1

    goto :goto_3

    .line 7219
    :cond_3
    iget-object v0, v1, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    if-eqz v0, :cond_4

    iget-object v0, v1, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    .line 7220
    invoke-virtual {v0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v9, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 7221
    iget-object v7, v1, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    goto :goto_2

    .line 7224
    :cond_4
    :try_start_0
    iget-object v0, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v9, p1

    :try_start_1
    invoke-virtual {v9, v0, v6}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v7, v0

    .line 7228
    goto :goto_3

    .line 7226
    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    move-object/from16 v9, p1

    .line 7230
    :goto_3
    const/4 v10, 0x0

    if-nez v7, :cond_5

    .line 7231
    const-string v0, "ActivityThread"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unable to get context for package "

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " while loading content provider "

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v3, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7235
    return-object v10

    .line 7238
    :cond_5
    iget-object v0, v3, Landroid/content/pm/ProviderInfo;->splitName:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 7240
    :try_start_2
    iget-object v0, v3, Landroid/content/pm/ProviderInfo;->splitName:Ljava/lang/String;

    invoke-virtual {v7, v0}, Landroid/content/Context;->createContextForSplit(Ljava/lang/String;)Landroid/content/Context;

    move-result-object v0
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v7, v0

    .line 7243
    goto :goto_4

    .line 7241
    :catch_2
    move-exception v0

    .line 7242
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v6, Ljava/lang/RuntimeException;

    invoke-direct {v6, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 7247
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_6
    :goto_4
    :try_start_3
    invoke-virtual {v7}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 7248
    .local v0, "cl":Ljava/lang/ClassLoader;
    iget-object v11, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v11, v6}, Landroid/app/ActivityThread;->peekPackageInfo(Ljava/lang/String;Z)Landroid/app/LoadedApk;

    move-result-object v11

    .line 7249
    .local v11, "packageInfo":Landroid/app/LoadedApk;
    if-nez v11, :cond_7

    .line 7251
    invoke-virtual {v1}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v12

    iget-object v12, v12, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    move-object v11, v12

    .line 7253
    :cond_7
    invoke-virtual {v11}, Landroid/app/LoadedApk;->getAppFactory()Landroid/app/AppComponentFactory;

    move-result-object v12

    iget-object v13, v3, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    .line 7254
    invoke-virtual {v12, v0, v13}, Landroid/app/AppComponentFactory;->instantiateProvider(Ljava/lang/ClassLoader;Ljava/lang/String;)Landroid/content/ContentProvider;

    move-result-object v12

    move-object v5, v12

    .line 7255
    invoke-virtual {v5}, Landroid/content/ContentProvider;->getIContentProvider()Landroid/content/IContentProvider;

    move-result-object v12

    .line 7256
    .restart local v12    # "provider":Landroid/content/IContentProvider;
    if-nez v12, :cond_8

    .line 7257
    const-string v6, "ActivityThread"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to instantiate class "

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v3, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " from sourceDir "

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v3, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7260
    const/4 v6, 0x0

    return-object v6

    .line 7265
    :cond_8
    invoke-virtual {v5, v7, v3}, Landroid/content/ContentProvider;->attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    .line 7273
    .end local v0    # "cl":Ljava/lang/ClassLoader;
    .end local v11    # "packageInfo":Landroid/app/LoadedApk;
    nop

    .line 7272
    .end local v7    # "c":Landroid/content/Context;
    .end local v8    # "ai":Landroid/content/pm/ApplicationInfo;
    nop

    .line 7274
    goto/16 :goto_0

    .line 7275
    .end local v5    # "localProvider":Landroid/content/ContentProvider;
    .restart local v10    # "localProvider":Landroid/content/ContentProvider;
    :goto_5
    move-object v5, v12

    .line 7282
    .end local v12    # "provider":Landroid/content/IContentProvider;
    .local v5, "provider":Landroid/content/IContentProvider;
    iget-object v11, v1, Landroid/app/ActivityThread;->mProviderMap:Landroid/util/ArrayMap;

    monitor-enter v11

    .line 7285
    :try_start_4
    invoke-interface {v5}, Landroid/content/IContentProvider;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    move-object v7, v0

    .line 7286
    .local v7, "jBinder":Landroid/os/IBinder;
    if-eqz v10, :cond_a

    .line 7287
    new-instance v0, Landroid/content/ComponentName;

    iget-object v8, v3, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    iget-object v12, v3, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v8, v12}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 7288
    .local v0, "cname":Landroid/content/ComponentName;
    iget-object v8, v1, Landroid/app/ActivityThread;->mLocalProvidersByName:Landroid/util/ArrayMap;

    invoke-virtual {v8, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/ActivityThread$ProviderClientRecord;

    .line 7289
    .local v8, "pr":Landroid/app/ActivityThread$ProviderClientRecord;
    if-eqz v8, :cond_9

    .line 7294
    iget-object v6, v8, Landroid/app/ActivityThread$ProviderClientRecord;->mProvider:Landroid/content/IContentProvider;

    move-object v5, v6

    goto :goto_6

    .line 7296
    :cond_9
    new-instance v12, Landroid/app/ContentProviderHolder;

    invoke-direct {v12, v3}, Landroid/app/ContentProviderHolder;-><init>(Landroid/content/pm/ProviderInfo;)V

    move-object v2, v12

    .line 7297
    .end local p2    # "holder":Landroid/app/ContentProviderHolder;
    .local v2, "holder":Landroid/app/ContentProviderHolder;
    iput-object v5, v2, Landroid/app/ContentProviderHolder;->provider:Landroid/content/IContentProvider;

    .line 7298
    iput-boolean v6, v2, Landroid/app/ContentProviderHolder;->noReleaseNeeded:Z

    .line 7299
    invoke-direct {v1, v5, v10, v2}, Landroid/app/ActivityThread;->installProviderAuthoritiesLocked(Landroid/content/IContentProvider;Landroid/content/ContentProvider;Landroid/app/ContentProviderHolder;)Landroid/app/ActivityThread$ProviderClientRecord;

    move-result-object v6

    move-object v8, v6

    .line 7300
    iget-object v6, v1, Landroid/app/ActivityThread;->mLocalProviders:Landroid/util/ArrayMap;

    invoke-virtual {v6, v7, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7301
    iget-object v6, v1, Landroid/app/ActivityThread;->mLocalProvidersByName:Landroid/util/ArrayMap;

    invoke-virtual {v6, v0, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7303
    :goto_6
    iget-object v6, v8, Landroid/app/ActivityThread$ProviderClientRecord;->mHolder:Landroid/app/ContentProviderHolder;

    .end local v0    # "cname":Landroid/content/ComponentName;
    .end local v8    # "pr":Landroid/app/ActivityThread$ProviderClientRecord;
    move-object v0, v6

    .line 7304
    .local v0, "retHolder":Landroid/app/ContentProviderHolder;
    goto :goto_c

    .line 7305
    .end local v0    # "retHolder":Landroid/app/ContentProviderHolder;
    .end local v2    # "holder":Landroid/app/ContentProviderHolder;
    .restart local p2    # "holder":Landroid/app/ContentProviderHolder;
    :cond_a
    iget-object v0, v1, Landroid/app/ActivityThread;->mProviderRefCountMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread$ProviderRefCount;

    move-object v8, v0

    .line 7306
    .local v8, "prc":Landroid/app/ActivityThread$ProviderRefCount;
    if-eqz v8, :cond_b

    .line 7314
    if-nez p5, :cond_e

    .line 7315
    invoke-direct {v1, v8, v4}, Landroid/app/ActivityThread;->incProviderRefLocked(Landroid/app/ActivityThread$ProviderRefCount;Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 7317
    :try_start_5
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v6, v2, Landroid/app/ContentProviderHolder;->connection:Landroid/os/IBinder;

    invoke-interface {v0, v6, v4}, Landroid/app/IActivityManager;->removeContentProvider(Landroid/os/IBinder;Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_7

    .line 7319
    :catch_3
    move-exception v0

    .line 7321
    :goto_7
    goto :goto_b

    .line 7324
    :cond_b
    :try_start_6
    invoke-direct {v1, v5, v10, v2}, Landroid/app/ActivityThread;->installProviderAuthoritiesLocked(Landroid/content/IContentProvider;Landroid/content/ContentProvider;Landroid/app/ContentProviderHolder;)Landroid/app/ActivityThread$ProviderClientRecord;

    move-result-object v0

    .line 7326
    .local v0, "client":Landroid/app/ActivityThread$ProviderClientRecord;
    if-eqz p5, :cond_c

    .line 7327
    new-instance v6, Landroid/app/ActivityThread$ProviderRefCount;

    const/16 v12, 0x3e8

    invoke-direct {v6, v2, v0, v12, v12}, Landroid/app/ActivityThread$ProviderRefCount;-><init>(Landroid/app/ContentProviderHolder;Landroid/app/ActivityThread$ProviderClientRecord;II)V

    .line 7333
    .end local v8    # "prc":Landroid/app/ActivityThread$ProviderRefCount;
    .local v6, "prc":Landroid/app/ActivityThread$ProviderRefCount;
    :goto_8
    move-object v8, v6

    goto :goto_a

    .line 7329
    .end local v6    # "prc":Landroid/app/ActivityThread$ProviderRefCount;
    .restart local v8    # "prc":Landroid/app/ActivityThread$ProviderRefCount;
    :cond_c
    const/4 v12, 0x0

    if-eqz v4, :cond_d

    .line 7330
    new-instance v13, Landroid/app/ActivityThread$ProviderRefCount;

    invoke-direct {v13, v2, v0, v6, v12}, Landroid/app/ActivityThread$ProviderRefCount;-><init>(Landroid/app/ContentProviderHolder;Landroid/app/ActivityThread$ProviderClientRecord;II)V

    goto :goto_9

    .line 7331
    :cond_d
    new-instance v13, Landroid/app/ActivityThread$ProviderRefCount;

    invoke-direct {v13, v2, v0, v12, v6}, Landroid/app/ActivityThread$ProviderRefCount;-><init>(Landroid/app/ContentProviderHolder;Landroid/app/ActivityThread$ProviderClientRecord;II)V

    :goto_9
    move-object v6, v13

    goto :goto_8

    .line 7333
    :goto_a
    iget-object v6, v1, Landroid/app/ActivityThread;->mProviderRefCountMap:Landroid/util/ArrayMap;

    invoke-virtual {v6, v7, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7335
    .end local v0    # "client":Landroid/app/ActivityThread$ProviderClientRecord;
    :cond_e
    :goto_b
    iget-object v0, v8, Landroid/app/ActivityThread$ProviderRefCount;->holder:Landroid/app/ContentProviderHolder;

    .line 7337
    .end local v7    # "jBinder":Landroid/os/IBinder;
    .end local v8    # "prc":Landroid/app/ActivityThread$ProviderRefCount;
    .end local p2    # "holder":Landroid/app/ContentProviderHolder;
    .local v0, "retHolder":Landroid/app/ContentProviderHolder;
    .restart local v2    # "holder":Landroid/app/ContentProviderHolder;
    :goto_c
    monitor-exit v11

    .line 7338
    return-object v0

    .line 7337
    .end local v0    # "retHolder":Landroid/app/ContentProviderHolder;
    .end local v2    # "holder":Landroid/app/ContentProviderHolder;
    .restart local p2    # "holder":Landroid/app/ContentProviderHolder;
    :catchall_0
    move-exception v0

    .end local p2    # "holder":Landroid/app/ContentProviderHolder;
    .restart local v2    # "holder":Landroid/app/ContentProviderHolder;
    monitor-exit v11
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v0

    .line 7266
    .end local v2    # "holder":Landroid/app/ContentProviderHolder;
    .end local v10    # "localProvider":Landroid/content/ContentProvider;
    .local v5, "localProvider":Landroid/content/ContentProvider;
    .local v7, "c":Landroid/content/Context;
    .local v8, "ai":Landroid/content/pm/ApplicationInfo;
    .restart local p2    # "holder":Landroid/app/ContentProviderHolder;
    :catch_4
    move-exception v0

    .line 7267
    .local v0, "e":Ljava/lang/Exception;
    iget-object v6, v1, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    const/4 v10, 0x0

    invoke-virtual {v6, v10, v0}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 7272
    return-object v10

    .line 7268
    :cond_f
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unable to get provider "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v3, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ": "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7270
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v6, v10, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
.end method

.method private installProviderAuthoritiesLocked(Landroid/content/IContentProvider;Landroid/content/ContentProvider;Landroid/app/ContentProviderHolder;)Landroid/app/ActivityThread$ProviderClientRecord;
    .locals 11
    .param p1, "provider"    # Landroid/content/IContentProvider;
    .param p2, "localProvider"    # Landroid/content/ContentProvider;
    .param p3, "holder"    # Landroid/app/ContentProviderHolder;

    .line 7156
    iget-object v0, p3, Landroid/app/ContentProviderHolder;->info:Landroid/content/pm/ProviderInfo;

    iget-object v0, v0, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 7157
    .local v0, "auths":[Ljava/lang/String;
    iget-object v1, p3, Landroid/app/ContentProviderHolder;->info:Landroid/content/pm/ProviderInfo;

    iget-object v1, v1, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 7159
    .local v1, "userId":I
    const/4 v8, 0x0

    if-eqz p1, :cond_1

    .line 7162
    array-length v2, v0

    move v3, v8

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    .line 7163
    .local v4, "auth":Ljava/lang/String;
    const/4 v5, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v6, "com.android.blockednumber"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v5, 0x3

    goto :goto_1

    :sswitch_1
    const-string v6, "downloads"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v5, 0x5

    goto :goto_1

    :sswitch_2
    const-string/jumbo v6, "telephony"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v5, 0x6

    goto :goto_1

    :sswitch_3
    const-string v6, "call_log_shadow"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v5, 0x2

    goto :goto_1

    :sswitch_4
    const-string v6, "call_log"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v5, 0x1

    goto :goto_1

    :sswitch_5
    const-string v6, "com.android.calendar"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v5, 0x4

    goto :goto_1

    :sswitch_6
    const-string v6, "com.android.contacts"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v5, v8

    :cond_0
    :goto_1
    packed-switch v5, :pswitch_data_0

    .end local v4    # "auth":Ljava/lang/String;
    goto :goto_2

    .line 7171
    .restart local v4    # "auth":Ljava/lang/String;
    :pswitch_0
    invoke-interface {p1}, Landroid/content/IContentProvider;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/os/Binder;->allowBlocking(Landroid/os/IBinder;)Landroid/os/IBinder;

    .line 7162
    .end local v4    # "auth":Ljava/lang/String;
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 7176
    :cond_1
    new-instance v9, Landroid/app/ActivityThread$ProviderClientRecord;

    move-object v2, v9

    move-object v3, p0

    move-object v4, v0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v2 .. v7}, Landroid/app/ActivityThread$ProviderClientRecord;-><init>(Landroid/app/ActivityThread;[Ljava/lang/String;Landroid/content/IContentProvider;Landroid/content/ContentProvider;Landroid/app/ContentProviderHolder;)V

    .line 7178
    .local v2, "pcr":Landroid/app/ActivityThread$ProviderClientRecord;
    array-length v3, v0

    :goto_3
    if-ge v8, v3, :cond_3

    aget-object v4, v0, v8

    .line 7179
    .restart local v4    # "auth":Ljava/lang/String;
    new-instance v5, Landroid/app/ActivityThread$ProviderKey;

    invoke-direct {v5, v4, v1}, Landroid/app/ActivityThread$ProviderKey;-><init>(Ljava/lang/String;I)V

    .line 7180
    .local v5, "key":Landroid/app/ActivityThread$ProviderKey;
    iget-object v6, p0, Landroid/app/ActivityThread;->mProviderMap:Landroid/util/ArrayMap;

    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityThread$ProviderClientRecord;

    .line 7181
    .local v6, "existing":Landroid/app/ActivityThread$ProviderClientRecord;
    if-eqz v6, :cond_2

    .line 7182
    const-string v7, "ActivityThread"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Content provider "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v2, Landroid/app/ActivityThread$ProviderClientRecord;->mHolder:Landroid/app/ContentProviderHolder;

    iget-object v10, v10, Landroid/app/ContentProviderHolder;->info:Landroid/content/pm/ProviderInfo;

    iget-object v10, v10, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " already published as "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 7185
    :cond_2
    iget-object v7, p0, Landroid/app/ActivityThread;->mProviderMap:Landroid/util/ArrayMap;

    invoke-virtual {v7, v5, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7178
    .end local v4    # "auth":Ljava/lang/String;
    .end local v5    # "key":Landroid/app/ActivityThread$ProviderKey;
    .end local v6    # "existing":Landroid/app/ActivityThread$ProviderClientRecord;
    :goto_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 7188
    :cond_3
    return-object v2

    nop

    :sswitch_data_0
    .sparse-switch
        -0x3260a241 -> :sswitch_6
        -0x1b2f0756 -> :sswitch_5
        -0xa45121d -> :sswitch_4
        0x3cfb2fc -> :sswitch_3
        0x2eaeb418 -> :sswitch_2
        0x4e3e48eb -> :sswitch_1
        0x76f32249 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static isDelayBroadcastRecevice()Z
    .locals 1

    .line 6762
    sget-boolean v0, Landroid/app/ActivityThread;->sIsDelayBroadcastReceviceReg:Z

    return v0
.end method

.method public static isEnableAppTraversalsAccelerate()Z
    .locals 1

    .line 7616
    sget-boolean v0, Landroid/app/ActivityThread;->sIsEnableAppTraversalsAccelerate:Z

    return v0
.end method

.method public static isPreLoadingWebView()Z
    .locals 1

    .line 6725
    sget-boolean v0, Landroid/app/ActivityThread;->sIsPreLoadingWebView:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Landroid/app/ActivityThread;->sPreLoadingWebViewEnable:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isSkipApplicationOnCreate()Z
    .locals 1

    .line 6690
    sget-boolean v0, Landroid/app/ActivityThread;->sIsSkipApplicationOnCreate:Z

    return v0
.end method

.method public static isSystem()Z
    .locals 1

    .line 2092
    sget-object v0, Landroid/app/ActivityThread;->sCurrentActivityThread:Landroid/app/ActivityThread;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/app/ActivityThread;->sCurrentActivityThread:Landroid/app/ActivityThread;

    iget-boolean v0, v0, Landroid/app/ActivityThread;->mSystemThread:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isThirdPartyApp(Landroid/content/pm/ApplicationInfo;)Z
    .locals 4
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;

    .line 6697
    const/4 v0, 0x0

    if-eqz p1, :cond_5

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-nez v1, :cond_0

    goto :goto_1

    .line 6699
    :cond_0
    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v2, "cn.nubia.contacts"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_4

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v3, "cn.nubia.mms"

    .line 6700
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 6704
    :cond_1
    iget v1, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v1, v1, 0x81

    if-eqz v1, :cond_2

    .line 6706
    return v0

    .line 6709
    :cond_2
    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v3, "cn.nubia."

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 6710
    return v0

    .line 6712
    :cond_3
    return v2

    .line 6701
    :cond_4
    :goto_0
    return v2

    .line 6697
    :cond_5
    :goto_1
    return v0
.end method

.method private isThirdPartyAppForMonkey(Landroid/content/pm/ApplicationInfo;)Z
    .locals 3
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;

    .line 7600
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-nez v1, :cond_0

    goto :goto_0

    .line 7601
    :cond_0
    iget v1, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v1, v1, 0x81

    if-eqz v1, :cond_1

    .line 7602
    return v0

    .line 7603
    :cond_1
    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v2, "cn.nubia."

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    return v0

    .line 7604
    :cond_2
    const/4 v0, 0x1

    return v0

    .line 7600
    :cond_3
    :goto_0
    return v0
.end method

.method public static synthetic lambda$attach$0(Landroid/app/ActivityThread;Landroid/content/res/Configuration;)V
    .locals 5
    .param p1, "globalConfig"    # Landroid/content/res/Configuration;

    .line 7423
    iget-object v0, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    monitor-enter v0

    .line 7428
    :try_start_0
    iget-wide v1, p0, Landroid/app/ActivityThread;->processTypefaceTimeStamp:J

    iget-object v3, p1, Landroid/content/res/Configuration;->extraConfig:Lnubia/content/res/ExtraConfiguration;

    iget-wide v3, v3, Lnubia/content/res/ExtraConfiguration;->typefaceTimeStamp:J

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    .line 7429
    iget-object v1, p1, Landroid/content/res/Configuration;->extraConfig:Lnubia/content/res/ExtraConfiguration;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lnubia/content/res/ExtraConfiguration;->needReloadProcessTypeface:Z

    .line 7433
    :cond_0
    iget-object v1, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/app/ResourcesManager;->applyConfigurationToResourcesLocked(Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 7435
    iget-object v1, p0, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    .line 7436
    invoke-virtual {v2}, Landroid/app/ResourcesManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v2

    .line 7435
    invoke-direct {p0, v1, v2}, Landroid/app/ActivityThread;->updateLocaleListFromAppContext(Landroid/content/Context;Landroid/os/LocaleList;)V

    .line 7439
    iget-object v1, p0, Landroid/app/ActivityThread;->mPendingConfiguration:Landroid/content/res/Configuration;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/app/ActivityThread;->mPendingConfiguration:Landroid/content/res/Configuration;

    .line 7440
    invoke-virtual {v1, p1}, Landroid/content/res/Configuration;->isOtherSeqNewer(Landroid/content/res/Configuration;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 7441
    :cond_1
    iput-object p1, p0, Landroid/app/ActivityThread;->mPendingConfiguration:Landroid/content/res/Configuration;

    .line 7442
    const/16 v1, 0x76

    invoke-virtual {p0, v1, p1}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    .line 7445
    :cond_2
    monitor-exit v0

    .line 7446
    return-void

    .line 7445
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static main([Ljava/lang/String;)V
    .locals 9
    .param p0, "args"    # [Ljava/lang/String;

    .line 7512
    const-string v0, "ActivityThreadMain"

    const-wide/16 v1, 0x40

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 7517
    const/4 v0, 0x0

    invoke-static {v0}, Ldalvik/system/CloseGuard;->setEnabled(Z)V

    .line 7519
    invoke-static {}, Landroid/os/Environment;->initForCurrentUser()V

    .line 7522
    new-instance v3, Landroid/app/ActivityThread$EventLoggingReporter;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Landroid/app/ActivityThread$EventLoggingReporter;-><init>(Landroid/app/ActivityThread$1;)V

    invoke-static {v3}, Llibcore/io/EventLogger;->setReporter(Llibcore/io/EventLogger$Reporter;)V

    .line 7525
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-static {v3}, Landroid/os/Environment;->getUserConfigDirectory(I)Ljava/io/File;

    move-result-object v3

    .line 7526
    .local v3, "configDir":Ljava/io/File;
    invoke-static {v3}, Lcom/android/org/conscrypt/TrustedCertificateStore;->setDefaultUserDirectory(Ljava/io/File;)V

    .line 7528
    const-string v4, "<pre-initialized>"

    invoke-static {v4}, Landroid/os/Process;->setArgV0(Ljava/lang/String;)V

    .line 7530
    invoke-static {}, Landroid/os/Looper;->prepareMainLooper()V

    .line 7534
    const-wide/16 v4, 0x0

    .line 7535
    .local v4, "startSeq":J
    if-eqz p0, :cond_1

    .line 7536
    array-length v6, p0

    add-int/lit8 v6, v6, -0x1

    .line 7536
    .local v6, "i":I
    :goto_0
    if-ltz v6, :cond_1

    .line 7537
    aget-object v7, p0, v6

    if-eqz v7, :cond_0

    aget-object v7, p0, v6

    const-string/jumbo v8, "seq="

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 7538
    aget-object v7, p0, v6

    const-string/jumbo v8, "seq="

    .line 7539
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 7538
    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 7536
    :cond_0
    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    .line 7543
    .end local v6    # "i":I
    :cond_1
    new-instance v6, Landroid/app/ActivityThread;

    invoke-direct {v6}, Landroid/app/ActivityThread;-><init>()V

    .line 7544
    .local v6, "thread":Landroid/app/ActivityThread;
    invoke-direct {v6, v0, v4, v5}, Landroid/app/ActivityThread;->attach(ZJ)V

    .line 7546
    sget-object v0, Landroid/app/ActivityThread;->sMainThreadHandler:Landroid/os/Handler;

    if-nez v0, :cond_2

    .line 7547
    invoke-virtual {v6}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    sput-object v0, Landroid/app/ActivityThread;->sMainThreadHandler:Landroid/os/Handler;

    .line 7556
    :cond_2
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 7557
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 7559
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Main thread loop unexpectedly exited"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private native nDumpGraphicsInfo(Ljava/io/FileDescriptor;)V
.end method

.method private native nPurgePendingResources()V
.end method

.method private onCoreSettingsChange()V
    .locals 3

    .line 4816
    iget-object v0, p0, Landroid/app/ActivityThread;->mCoreSettings:Landroid/os/Bundle;

    const-string v1, "debug_view_attributes"

    .line 4817
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    nop

    :cond_0
    move v0, v2

    .line 4818
    .local v0, "debugViewAttributes":Z
    sget-boolean v1, Landroid/view/View;->mDebugViewAttributes:Z

    if-eq v0, v1, :cond_1

    .line 4819
    sput-boolean v0, Landroid/view/View;->mDebugViewAttributes:Z

    .line 4822
    invoke-direct {p0}, Landroid/app/ActivityThread;->relaunchAllActivities()V

    .line 4824
    :cond_1
    return-void
.end method

.method private performActivityConfigurationChanged(Landroid/app/Activity;Landroid/content/res/Configuration;Landroid/content/res/Configuration;IZ)Landroid/content/res/Configuration;
    .locals 8
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "newConfig"    # Landroid/content/res/Configuration;
    .param p3, "amOverrideConfig"    # Landroid/content/res/Configuration;
    .param p4, "displayId"    # I
    .param p5, "movedToDifferentDisplay"    # Z

    .line 5478
    if-eqz p1, :cond_9

    .line 5481
    invoke-virtual {p1}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v0

    .line 5482
    .local v0, "activityToken":Landroid/os/IBinder;
    if-eqz v0, :cond_8

    .line 5486
    const/4 v1, 0x0

    .line 5487
    .local v1, "shouldChangeConfig":Z
    iget-object v2, p1, Landroid/app/Activity;->mCurrentConfig:Landroid/content/res/Configuration;

    if-nez v2, :cond_0

    .line 5488
    const/4 v1, 0x1

    goto :goto_0

    .line 5493
    :cond_0
    iget-object v2, p1, Landroid/app/Activity;->mCurrentConfig:Landroid/content/res/Configuration;

    invoke-virtual {v2, p2}, Landroid/content/res/Configuration;->diffPublicOnly(Landroid/content/res/Configuration;)I

    move-result v2

    .line 5495
    .local v2, "diff":I
    if-nez v2, :cond_1

    iget-object v3, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    invoke-virtual {v3, v0, p3}, Landroid/app/ResourcesManager;->isSameResourcesOverrideConfig(Landroid/os/IBinder;Landroid/content/res/Configuration;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 5500
    :cond_1
    iget-boolean v3, p0, Landroid/app/ActivityThread;->mUpdatingSystemConfig:Z

    if-eqz v3, :cond_2

    iget-object v3, p1, Landroid/app/Activity;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    .line 5501
    invoke-virtual {v3}, Landroid/content/pm/ActivityInfo;->getRealConfigChanged()I

    move-result v3

    not-int v3, v3

    and-int/2addr v3, v2

    if-eqz v3, :cond_2

    .end local v2    # "diff":I
    goto :goto_0

    .line 5503
    .restart local v2    # "diff":I
    :cond_2
    const/4 v1, 0x1

    .line 5507
    .end local v2    # "diff":I
    :cond_3
    :goto_0
    if-nez v1, :cond_4

    if-nez p5, :cond_4

    .line 5509
    const/4 v2, 0x0

    return-object v2

    .line 5516
    :cond_4
    invoke-virtual {p1}, Landroid/app/Activity;->getOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    .line 5524
    .local v2, "contextThemeWrapperOverrideConfig":Landroid/content/res/Configuration;
    invoke-static {p3, v2}, Landroid/app/ActivityThread;->createNewConfigAndUpdateIfNotNull(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)Landroid/content/res/Configuration;

    move-result-object v3

    .line 5526
    .local v3, "finalOverrideConfig":Landroid/content/res/Configuration;
    iget-object v4, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    invoke-virtual {v4, v0, v3, p4, p5}, Landroid/app/ResourcesManager;->updateResourcesForActivity(Landroid/os/IBinder;Landroid/content/res/Configuration;IZ)V

    .line 5529
    const/4 v4, 0x0

    iput v4, p1, Landroid/app/Activity;->mConfigChangeFlags:I

    .line 5530
    new-instance v5, Landroid/content/res/Configuration;

    invoke-direct {v5, p2}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v5, p1, Landroid/app/Activity;->mCurrentConfig:Landroid/content/res/Configuration;

    .line 5535
    invoke-static {p2, v2}, Landroid/app/ActivityThread;->createNewConfigAndUpdateIfNotNull(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)Landroid/content/res/Configuration;

    move-result-object v5

    .line 5543
    .local v5, "configToReport":Landroid/content/res/Configuration;
    if-eqz p5, :cond_5

    .line 5544
    invoke-virtual {p1, p4, v5}, Landroid/app/Activity;->dispatchMovedToDisplay(ILandroid/content/res/Configuration;)V

    .line 5547
    :cond_5
    if-eqz v1, :cond_7

    .line 5548
    iput-boolean v4, p1, Landroid/app/Activity;->mCalled:Z

    .line 5549
    invoke-virtual {p1, v5}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 5550
    iget-boolean v4, p1, Landroid/app/Activity;->mCalled:Z

    if-eqz v4, :cond_6

    goto :goto_1

    .line 5551
    :cond_6
    new-instance v4, Landroid/util/SuperNotCalledException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Activity "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " did not call through to super.onConfigurationChanged()"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Landroid/util/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 5556
    :cond_7
    :goto_1
    return-object v5

    .line 5483
    .end local v1    # "shouldChangeConfig":Z
    .end local v2    # "contextThemeWrapperOverrideConfig":Landroid/content/res/Configuration;
    .end local v3    # "finalOverrideConfig":Landroid/content/res/Configuration;
    .end local v5    # "configToReport":Landroid/content/res/Configuration;
    :cond_8
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Activity token not set. Is the activity attached?"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5479
    .end local v0    # "activityToken":Landroid/os/IBinder;
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No activity provided."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private performConfigurationChanged(Landroid/content/ComponentCallbacks2;Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "cb"    # Landroid/content/ComponentCallbacks2;
    .param p2, "newConfig"    # Landroid/content/res/Configuration;

    .line 5450
    const/4 v0, 0x0

    .line 5451
    .local v0, "contextThemeWrapperOverrideConfig":Landroid/content/res/Configuration;
    instance-of v1, p1, Landroid/view/ContextThemeWrapper;

    if-eqz v1, :cond_0

    .line 5452
    move-object v1, p1

    check-cast v1, Landroid/view/ContextThemeWrapper;

    .line 5453
    .local v1, "contextThemeWrapper":Landroid/view/ContextThemeWrapper;
    invoke-virtual {v1}, Landroid/view/ContextThemeWrapper;->getOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 5459
    .end local v1    # "contextThemeWrapper":Landroid/view/ContextThemeWrapper;
    :cond_0
    invoke-static {p2, v0}, Landroid/app/ActivityThread;->createNewConfigAndUpdateIfNotNull(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)Landroid/content/res/Configuration;

    move-result-object v1

    .line 5461
    .local v1, "configToReport":Landroid/content/res/Configuration;
    invoke-interface {p1, v1}, Landroid/content/ComponentCallbacks2;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 5462
    return-void
.end method

.method private performConfigurationChangedForActivity(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/content/res/Configuration;IZ)Landroid/content/res/Configuration;
    .locals 8
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;
    .param p2, "newBaseConfig"    # Landroid/content/res/Configuration;
    .param p3, "displayId"    # I
    .param p4, "movedToDifferentDisplay"    # Z

    .line 5412
    invoke-static {p1}, Landroid/app/ActivityThread$ActivityClientRecord;->access$4600(Landroid/app/ActivityThread$ActivityClientRecord;)Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 5413
    iget-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->overrideConfig:Landroid/content/res/Configuration;

    if-eqz v0, :cond_0

    .line 5414
    invoke-static {p1}, Landroid/app/ActivityThread$ActivityClientRecord;->access$4600(Landroid/app/ActivityThread$ActivityClientRecord;)Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->overrideConfig:Landroid/content/res/Configuration;

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 5416
    :cond_0
    iget-object v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    .line 5417
    invoke-static {p1}, Landroid/app/ActivityThread$ActivityClientRecord;->access$4600(Landroid/app/ActivityThread$ActivityClientRecord;)Landroid/content/res/Configuration;

    move-result-object v4

    iget-object v5, p1, Landroid/app/ActivityThread$ActivityClientRecord;->overrideConfig:Landroid/content/res/Configuration;

    .line 5416
    move-object v2, p0

    move v6, p3

    move v7, p4

    invoke-direct/range {v2 .. v7}, Landroid/app/ActivityThread;->performActivityConfigurationChanged(Landroid/app/Activity;Landroid/content/res/Configuration;Landroid/content/res/Configuration;IZ)Landroid/content/res/Configuration;

    move-result-object v0

    .line 5418
    .local v0, "reportedConfig":Landroid/content/res/Configuration;
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-object v1, v1, Landroid/app/Activity;->mCurrentConfig:Landroid/content/res/Configuration;

    invoke-static {p1}, Landroid/app/ActivityThread$ActivityClientRecord;->access$4600(Landroid/app/ActivityThread$ActivityClientRecord;)Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v1

    invoke-static {v1}, Landroid/app/ActivityThread;->freeTextLayoutCachesIfNeeded(I)V

    .line 5419
    return-object v0
.end method

.method private performConfigurationChangedForActivity(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;
    .param p2, "newBaseConfig"    # Landroid/content/res/Configuration;

    .line 5394
    iget-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    .line 5395
    invoke-virtual {v0}, Landroid/app/Activity;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    .line 5394
    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/app/ActivityThread;->performConfigurationChangedForActivity(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/content/res/Configuration;IZ)Landroid/content/res/Configuration;

    .line 5396
    return-void
.end method

.method private performLaunchActivity(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/content/Intent;)Landroid/app/Activity;
    .locals 32
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;
    .param p2, "customIntent"    # Landroid/content/Intent;

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    .line 3100
    move-object/from16 v13, p2

    iget-object v12, v14, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 3101
    .local v12, "aInfo":Landroid/content/pm/ActivityInfo;
    iget-object v0, v14, Landroid/app/ActivityThread$ActivityClientRecord;->packageInfo:Landroid/app/LoadedApk;

    const/4 v11, 0x1

    if-nez v0, :cond_0

    .line 3102
    iget-object v0, v12, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v14, Landroid/app/ActivityThread$ActivityClientRecord;->compatInfo:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {v15, v0, v1, v11}, Landroid/app/ActivityThread;->getPackageInfo(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;I)Landroid/app/LoadedApk;

    move-result-object v0

    iput-object v0, v14, Landroid/app/ActivityThread$ActivityClientRecord;->packageInfo:Landroid/app/LoadedApk;

    .line 3107
    :cond_0
    sget-boolean v0, Landroid/app/ActivityThread;->sIsAppFirstStartActivity:Z

    const/4 v9, 0x0

    if-eqz v0, :cond_3

    .line 3108
    sput-boolean v9, Landroid/app/ActivityThread;->sIsAppFirstStartActivity:Z

    .line 3109
    if-eqz v14, :cond_2

    iget-object v0, v14, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_2

    .line 3110
    iget-object v0, v14, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3111
    .local v0, "intentInfoStr":Ljava/lang/String;
    if-eqz v0, :cond_1

    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 3113
    :cond_1
    sput-boolean v9, Landroid/app/ActivityThread;->sIsEnableAppTraversalsAccelerate:Z

    .line 3116
    .end local v0    # "intentInfoStr":Ljava/lang/String;
    :cond_2
    sget-boolean v0, Landroid/app/ActivityThread;->sIsEnableAppTraversalsAccelerate:Z

    if-eqz v0, :cond_3

    .line 3117
    iget-object v0, v15, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    iget-object v1, v15, Landroid/app/ActivityThread;->mDisableAppTraversalsAccelerateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/app/ActivityThread$H;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3118
    iget-object v0, v15, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    iget-object v1, v15, Landroid/app/ActivityThread;->mDisableAppTraversalsAccelerateRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityThread$H;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3122
    :cond_3
    iget-object v0, v14, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 3123
    .local v0, "component":Landroid/content/ComponentName;
    if-nez v0, :cond_4

    .line 3124
    iget-object v1, v14, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    iget-object v2, v15, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    .line 3125
    invoke-virtual {v2}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 3124
    invoke-virtual {v1, v2}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v0

    .line 3126
    iget-object v1, v14, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 3129
    :cond_4
    iget-object v1, v14, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 3130
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, v14, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v3, v14, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 3134
    .end local v0    # "component":Landroid/content/ComponentName;
    .local v8, "component":Landroid/content/ComponentName;
    :cond_5
    move-object v8, v0

    invoke-direct/range {p0 .. p1}, Landroid/app/ActivityThread;->createBaseContextForActivity(Landroid/app/ActivityThread$ActivityClientRecord;)Landroid/app/ContextImpl;

    move-result-object v7

    .line 3135
    .local v7, "appContext":Landroid/app/ContextImpl;
    const/4 v6, 0x0

    move-object v1, v6

    .line 3137
    .local v1, "activity":Landroid/app/Activity;
    :try_start_0
    invoke-virtual {v7}, Landroid/app/ContextImpl;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 3138
    .local v0, "cl":Ljava/lang/ClassLoader;
    iget-object v2, v15, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    .line 3139
    invoke-virtual {v8}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v14, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    .line 3138
    invoke-virtual {v2, v0, v3, v4}, Landroid/app/Instrumentation;->newActivity(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Intent;)Landroid/app/Activity;

    move-result-object v2

    move-object v1, v2

    .line 3140
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Landroid/os/StrictMode;->incrementExpectedActivityCount(Ljava/lang/Class;)V

    .line 3141
    iget-object v2, v14, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 3142
    iget-object v2, v14, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->prepareToEnterProcess()V

    .line 3143
    iget-object v2, v14, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    if-eqz v2, :cond_6

    .line 3144
    iget-object v2, v14, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3159
    .end local v0    # "cl":Ljava/lang/ClassLoader;
    :cond_6
    goto :goto_0

    .line 3146
    :catch_0
    move-exception v0

    .line 3148
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, v14, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-direct {v15, v2}, Landroid/app/ActivityThread;->isThirdPartyAppForMonkey(Landroid/content/pm/ApplicationInfo;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 3149
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 3150
    return-object v6

    .line 3154
    :cond_7
    iget-object v2, v15, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v2, v1, v0}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 3162
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "activity":Landroid/app/Activity;
    .local v5, "activity":Landroid/app/Activity;
    :goto_0
    move-object v5, v1

    :try_start_1
    iget-object v0, v14, Landroid/app/ActivityThread$ActivityClientRecord;->packageInfo:Landroid/app/LoadedApk;

    iget-object v1, v15, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v0, v9, v1}, Landroid/app/LoadedApk;->makeApplication(ZLandroid/app/Instrumentation;)Landroid/app/Application;

    move-result-object v0

    move-object v4, v0

    .line 3173
    .local v4, "app":Landroid/app/Application;
    iget-boolean v0, v15, Landroid/app/ActivityThread;->mLongSnapReceiverRegistered:Z
    :try_end_1
    .catch Landroid/util/SuperNotCalledException; {:try_start_1 .. :try_end_1} :catch_15
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_14

    if-nez v0, :cond_8

    .line 3174
    :try_start_2
    const-string v0, "ActivityThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registerLongSnapReceiver for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3175
    const-string/jumbo v0, "window"

    invoke-virtual {v4, v0}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 3176
    .local v0, "wm":Landroid/view/WindowManager;
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v1

    .line 3177
    .local v1, "dispWidth":I
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getHeight()I

    move-result v2

    .line 3178
    .local v2, "dispHeight":I
    new-instance v3, Landroid/app/LongSnapClientJobManager;

    const/4 v10, 0x6

    invoke-direct {v3, v1, v2, v10}, Landroid/app/LongSnapClientJobManager;-><init>(III)V

    iput-object v3, v15, Landroid/app/ActivityThread;->mLongSnapJobMgr:Landroid/app/LongSnapClientJobManager;

    .line 3180
    invoke-direct {v15, v4}, Landroid/app/ActivityThread;->registerLongSnapReceiver(Landroid/content/Context;)V

    .line 3181
    iput-boolean v11, v15, Landroid/app/ActivityThread;->mLongSnapReceiverRegistered:Z
    :try_end_2
    .catch Landroid/util/SuperNotCalledException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 3181
    .end local v0    # "wm":Landroid/view/WindowManager;
    .end local v1    # "dispWidth":I
    .end local v2    # "dispHeight":I
    goto :goto_1

    .line 3274
    .end local v4    # "app":Landroid/app/Application;
    :catch_1
    move-exception v0

    move-object v1, v5

    move-object v6, v7

    move-object/from16 v20, v12

    move-object v2, v13

    move-object v3, v14

    move-object v4, v15

    goto/16 :goto_b

    .line 3271
    :catch_2
    move-exception v0

    move-object v1, v5

    move-object v6, v7

    move-object/from16 v20, v12

    move-object v2, v13

    move-object v3, v14

    move-object v4, v15

    goto/16 :goto_d

    .line 3185
    .restart local v4    # "app":Landroid/app/Application;
    :cond_8
    :goto_1
    if-eqz v5, :cond_10

    .line 3186
    :try_start_3
    iget-object v0, v14, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v7}, Landroid/app/ContextImpl;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v10

    .line 3187
    .local v10, "title":Ljava/lang/CharSequence;
    new-instance v0, Landroid/content/res/Configuration;

    iget-object v1, v15, Landroid/app/ActivityThread;->mCompatConfiguration:Landroid/content/res/Configuration;

    invoke-direct {v0, v1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    move-object v3, v0

    .line 3188
    .local v3, "config":Landroid/content/res/Configuration;
    iget-object v0, v14, Landroid/app/ActivityThread$ActivityClientRecord;->overrideConfig:Landroid/content/res/Configuration;
    :try_end_3
    .catch Landroid/util/SuperNotCalledException; {:try_start_3 .. :try_end_3} :catch_15
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_14

    if-eqz v0, :cond_9

    .line 3189
    :try_start_4
    iget-object v0, v14, Landroid/app/ActivityThread$ActivityClientRecord;->overrideConfig:Landroid/content/res/Configuration;

    invoke-virtual {v3, v0}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I
    :try_end_4
    .catch Landroid/util/SuperNotCalledException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 3193
    :cond_9
    const/4 v0, 0x0

    .line 3194
    .local v0, "window":Landroid/view/Window;
    :try_start_5
    iget-object v1, v14, Landroid/app/ActivityThread$ActivityClientRecord;->mPendingRemoveWindow:Landroid/view/Window;
    :try_end_5
    .catch Landroid/util/SuperNotCalledException; {:try_start_5 .. :try_end_5} :catch_15
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_14

    if-eqz v1, :cond_a

    :try_start_6
    iget-boolean v1, v14, Landroid/app/ActivityThread$ActivityClientRecord;->mPreserveWindow:Z

    if-eqz v1, :cond_a

    .line 3195
    iget-object v1, v14, Landroid/app/ActivityThread$ActivityClientRecord;->mPendingRemoveWindow:Landroid/view/Window;

    move-object v0, v1

    .line 3196
    iput-object v6, v14, Landroid/app/ActivityThread$ActivityClientRecord;->mPendingRemoveWindow:Landroid/view/Window;

    .line 3197
    iput-object v6, v14, Landroid/app/ActivityThread$ActivityClientRecord;->mPendingRemoveWindowManager:Landroid/view/WindowManager;
    :try_end_6
    .catch Landroid/util/SuperNotCalledException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 3199
    :cond_a
    move-object/from16 v19, v0

    .line 3199
    .end local v0    # "window":Landroid/view/Window;
    .local v19, "window":Landroid/view/Window;
    :try_start_7
    invoke-virtual {v7, v5}, Landroid/app/ContextImpl;->setOuterContext(Landroid/content/Context;)V

    .line 3200
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityThread;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v0

    iget-object v2, v14, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    iget v1, v14, Landroid/app/ActivityThread$ActivityClientRecord;->ident:I

    iget-object v9, v14, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    iget-object v11, v14, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;
    :try_end_7
    .catch Landroid/util/SuperNotCalledException; {:try_start_7 .. :try_end_7} :catch_15
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_14

    move-object/from16 v21, v12

    :try_start_8
    iget-object v12, v14, Landroid/app/ActivityThread$ActivityClientRecord;->parent:Landroid/app/Activity;
    :try_end_8
    .catch Landroid/util/SuperNotCalledException; {:try_start_8 .. :try_end_8} :catch_11
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_10

    .end local v12    # "aInfo":Landroid/content/pm/ActivityInfo;
    .local v21, "aInfo":Landroid/content/pm/ActivityInfo;
    :try_start_9
    iget-object v13, v14, Landroid/app/ActivityThread$ActivityClientRecord;->embeddedID:Ljava/lang/String;

    move-object/from16 v22, v10

    iget-object v10, v14, Landroid/app/ActivityThread$ActivityClientRecord;->lastNonConfigurationInstances:Landroid/app/Activity$NonConfigurationInstances;

    .line 3200
    .end local v10    # "title":Ljava/lang/CharSequence;
    .local v22, "title":Ljava/lang/CharSequence;
    move-object/from16 v23, v10

    iget-object v10, v14, Landroid/app/ActivityThread$ActivityClientRecord;->referrer:Ljava/lang/String;

    move-object/from16 v24, v10

    iget-object v10, v14, Landroid/app/ActivityThread$ActivityClientRecord;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    move-object/from16 v25, v10

    iget-object v10, v14, Landroid/app/ActivityThread$ActivityClientRecord;->configCallback:Landroid/view/ViewRootImpl$ActivityConfigCallback;
    :try_end_9
    .catch Landroid/util/SuperNotCalledException; {:try_start_9 .. :try_end_9} :catch_f
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_e

    move/from16 v16, v1

    move-object v1, v5

    move-object/from16 v17, v2

    move-object v2, v7

    move-object/from16 v26, v3

    move-object v3, v15

    .end local v3    # "config":Landroid/content/res/Configuration;
    .local v26, "config":Landroid/content/res/Configuration;
    move-object/from16 v27, v4

    move-object v4, v0

    .line 3200
    .end local v4    # "app":Landroid/app/Application;
    .local v27, "app":Landroid/app/Application;
    move-object/from16 v28, v5

    move-object/from16 v5, v17

    .line 3200
    .end local v5    # "activity":Landroid/app/Activity;
    .local v28, "activity":Landroid/app/Activity;
    move/from16 v6, v16

    move-object/from16 v29, v7

    move-object/from16 v7, v27

    .line 3200
    .end local v7    # "appContext":Landroid/app/ContextImpl;
    .local v29, "appContext":Landroid/app/ContextImpl;
    move-object/from16 v30, v8

    move-object v8, v9

    .line 3200
    .end local v8    # "component":Landroid/content/ComponentName;
    .local v30, "component":Landroid/content/ComponentName;
    move-object v9, v11

    move-object v11, v12

    move-object/from16 v20, v21

    move-object v12, v13

    .line 3200
    .end local v21    # "aInfo":Landroid/content/pm/ActivityInfo;
    .local v20, "aInfo":Landroid/content/pm/ActivityInfo;
    move-object/from16 v13, v23

    move-object/from16 v14, v26

    move-object/from16 v15, v24

    move-object/from16 v16, v25

    move-object/from16 v17, v19

    move-object/from16 v18, v10

    move-object/from16 v10, v22

    :try_start_a
    invoke-virtual/range {v1 .. v18}, Landroid/app/Activity;->attach(Landroid/content/Context;Landroid/app/ActivityThread;Landroid/app/Instrumentation;Landroid/os/IBinder;ILandroid/app/Application;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Ljava/lang/CharSequence;Landroid/app/Activity;Ljava/lang/String;Landroid/app/Activity$NonConfigurationInstances;Landroid/content/res/Configuration;Ljava/lang/String;Lcom/android/internal/app/IVoiceInteractor;Landroid/view/Window;Landroid/view/ViewRootImpl$ActivityConfigCallback;)V
    :try_end_a
    .catch Landroid/util/SuperNotCalledException; {:try_start_a .. :try_end_a} :catch_d
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_c

    .line 3205
    .end local v22    # "title":Ljava/lang/CharSequence;
    .restart local v10    # "title":Ljava/lang/CharSequence;
    move-object/from16 v2, p2

    if-eqz v2, :cond_b

    .line 3206
    move-object/from16 v1, v28

    :try_start_b
    iput-object v2, v1, Landroid/app/Activity;->mIntent:Landroid/content/Intent;
    :try_end_b
    .catch Landroid/util/SuperNotCalledException; {:try_start_b .. :try_end_b} :catch_4
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3

    .line 3206
    .end local v28    # "activity":Landroid/app/Activity;
    .local v1, "activity":Landroid/app/Activity;
    goto :goto_2

    .line 3274
    .end local v10    # "title":Ljava/lang/CharSequence;
    .end local v19    # "window":Landroid/view/Window;
    .end local v26    # "config":Landroid/content/res/Configuration;
    .end local v27    # "app":Landroid/app/Application;
    :catch_3
    move-exception v0

    move-object/from16 v4, p0

    move-object/from16 v6, v29

    move-object/from16 v8, v30

    move-object/from16 v3, p1

    goto/16 :goto_b

    .line 3271
    :catch_4
    move-exception v0

    move-object/from16 v4, p0

    move-object/from16 v6, v29

    move-object/from16 v8, v30

    move-object/from16 v3, p1

    goto/16 :goto_d

    .line 3208
    .end local v1    # "activity":Landroid/app/Activity;
    .restart local v10    # "title":Ljava/lang/CharSequence;
    .restart local v19    # "window":Landroid/view/Window;
    .restart local v26    # "config":Landroid/content/res/Configuration;
    .restart local v27    # "app":Landroid/app/Application;
    .restart local v28    # "activity":Landroid/app/Activity;
    :cond_b
    move-object/from16 v1, v28

    .line 3208
    .end local v28    # "activity":Landroid/app/Activity;
    .restart local v1    # "activity":Landroid/app/Activity;
    :goto_2
    move-object/from16 v3, p1

    const/4 v4, 0x0

    :try_start_c
    iput-object v4, v3, Landroid/app/ActivityThread$ActivityClientRecord;->lastNonConfigurationInstances:Landroid/app/Activity$NonConfigurationInstances;

    .line 3209
    invoke-direct/range {p0 .. p0}, Landroid/app/ActivityThread;->checkAndBlockForNetworkAccess()V

    .line 3210
    const/4 v4, 0x0

    iput-boolean v4, v1, Landroid/app/Activity;->mStartedActivity:Z

    .line 3211
    iget-object v0, v3, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v0}, Landroid/content/pm/ActivityInfo;->getThemeResource()I

    move-result v0
    :try_end_c
    .catch Landroid/util/SuperNotCalledException; {:try_start_c .. :try_end_c} :catch_b
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_a

    move v5, v0

    .line 3212
    .local v5, "theme":I
    if-eqz v5, :cond_c

    .line 3213
    :try_start_d
    invoke-virtual {v1, v5}, Landroid/app/Activity;->setTheme(I)V
    :try_end_d
    .catch Landroid/util/SuperNotCalledException; {:try_start_d .. :try_end_d} :catch_6
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_5

    goto :goto_3

    .line 3274
    .end local v5    # "theme":I
    .end local v10    # "title":Ljava/lang/CharSequence;
    .end local v19    # "window":Landroid/view/Window;
    .end local v26    # "config":Landroid/content/res/Configuration;
    .end local v27    # "app":Landroid/app/Application;
    :catch_5
    move-exception v0

    move-object/from16 v4, p0

    move-object/from16 v6, v29

    move-object/from16 v8, v30

    goto/16 :goto_b

    .line 3271
    :catch_6
    move-exception v0

    move-object/from16 v4, p0

    move-object/from16 v6, v29

    move-object/from16 v8, v30

    goto/16 :goto_d

    .line 3216
    .restart local v5    # "theme":I
    .restart local v10    # "title":Ljava/lang/CharSequence;
    .restart local v19    # "window":Landroid/view/Window;
    .restart local v26    # "config":Landroid/content/res/Configuration;
    .restart local v27    # "app":Landroid/app/Application;
    :cond_c
    :goto_3
    :try_start_e
    iput-boolean v4, v1, Landroid/app/Activity;->mCalled:Z

    .line 3218
    invoke-static {}, Landroid/app/ActivityThread;->currentProcessName()Ljava/lang/String;

    move-result-object v0
    :try_end_e
    .catch Landroid/util/SuperNotCalledException; {:try_start_e .. :try_end_e} :catch_b
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_a

    move-object/from16 v4, p0

    move-object/from16 v7, v27

    move-object/from16 v6, v29

    :try_start_f
    invoke-direct {v4, v6, v0, v7}, Landroid/app/ActivityThread;->preLoadWebView(Landroid/app/ContextImpl;Ljava/lang/String;Landroid/app/Application;)V
    :try_end_f
    .catch Landroid/util/SuperNotCalledException; {:try_start_f .. :try_end_f} :catch_9
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_8

    .line 3221
    .end local v27    # "app":Landroid/app/Application;
    .end local v29    # "appContext":Landroid/app/ContextImpl;
    .local v6, "appContext":Landroid/app/ContextImpl;
    .local v7, "app":Landroid/app/Application;
    move-object/from16 v8, v30

    if-eqz v8, :cond_d

    .line 3222
    .end local v30    # "component":Landroid/content/ComponentName;
    .restart local v8    # "component":Landroid/content/ComponentName;
    :try_start_10
    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v9, v4, Landroid/app/ActivityThread;->mCurrentPackageName:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 3223
    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Landroid/app/ActivityThread;->mCurrentPackageName:Ljava/lang/String;

    .line 3224
    iget-object v0, v4, Landroid/app/ActivityThread;->mCurrentPackageName:Ljava/lang/String;

    invoke-static {v0}, Lnubia/os/ApplicationManager$Trigger;->noteCreateActivity(Ljava/lang/String;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_7
    .catch Landroid/util/SuperNotCalledException; {:try_start_10 .. :try_end_10} :catch_13

    goto :goto_4

    .line 3227
    :catch_7
    move-exception v0

    goto :goto_5

    .line 3229
    :cond_d
    :goto_4
    nop

    .line 3230
    :goto_5
    :try_start_11
    invoke-virtual/range {p1 .. p1}, Landroid/app/ActivityThread$ActivityClientRecord;->isPersistable()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 3231
    iget-object v0, v4, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v9, v3, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    iget-object v11, v3, Landroid/app/ActivityThread$ActivityClientRecord;->persistentState:Landroid/os/PersistableBundle;

    invoke-virtual {v0, v1, v9, v11}, Landroid/app/Instrumentation;->callActivityOnCreate(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/PersistableBundle;)V

    goto :goto_6

    .line 3233
    :cond_e
    iget-object v0, v4, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v9, v3, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v9}, Landroid/app/Instrumentation;->callActivityOnCreate(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 3235
    :goto_6
    iget-boolean v0, v1, Landroid/app/Activity;->mCalled:Z

    if-eqz v0, :cond_f

    .line 3240
    iput-object v1, v3, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    .line 3240
    .end local v5    # "theme":I
    .end local v10    # "title":Ljava/lang/CharSequence;
    .end local v19    # "window":Landroid/view/Window;
    .end local v26    # "config":Landroid/content/res/Configuration;
    goto/16 :goto_9

    .line 3236
    .restart local v5    # "theme":I
    .restart local v10    # "title":Ljava/lang/CharSequence;
    .restart local v19    # "window":Landroid/view/Window;
    .restart local v26    # "config":Landroid/content/res/Configuration;
    :cond_f
    new-instance v0, Landroid/util/SuperNotCalledException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Activity "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v3, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    .line 3237
    invoke-virtual {v11}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " did not call through to super.onCreate()"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v0, v9}, Landroid/util/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3274
    .end local v5    # "theme":I
    .end local v7    # "app":Landroid/app/Application;
    .end local v8    # "component":Landroid/content/ComponentName;
    .end local v10    # "title":Ljava/lang/CharSequence;
    .end local v19    # "window":Landroid/view/Window;
    .end local v26    # "config":Landroid/content/res/Configuration;
    .restart local v30    # "component":Landroid/content/ComponentName;
    :catch_8
    move-exception v0

    move-object/from16 v8, v30

    .line 3274
    .end local v30    # "component":Landroid/content/ComponentName;
    .restart local v8    # "component":Landroid/content/ComponentName;
    goto/16 :goto_b

    .line 3271
    .end local v8    # "component":Landroid/content/ComponentName;
    .restart local v30    # "component":Landroid/content/ComponentName;
    :catch_9
    move-exception v0

    move-object/from16 v8, v30

    .line 3271
    .end local v30    # "component":Landroid/content/ComponentName;
    .restart local v8    # "component":Landroid/content/ComponentName;
    goto/16 :goto_d

    .line 3274
    .end local v6    # "appContext":Landroid/app/ContextImpl;
    .end local v8    # "component":Landroid/content/ComponentName;
    .restart local v29    # "appContext":Landroid/app/ContextImpl;
    .restart local v30    # "component":Landroid/content/ComponentName;
    :catch_a
    move-exception v0

    move-object/from16 v4, p0

    move-object/from16 v6, v29

    move-object/from16 v8, v30

    .line 3274
    .end local v29    # "appContext":Landroid/app/ContextImpl;
    .end local v30    # "component":Landroid/content/ComponentName;
    .restart local v6    # "appContext":Landroid/app/ContextImpl;
    .restart local v8    # "component":Landroid/content/ComponentName;
    goto/16 :goto_b

    .line 3271
    .end local v6    # "appContext":Landroid/app/ContextImpl;
    .end local v8    # "component":Landroid/content/ComponentName;
    .restart local v29    # "appContext":Landroid/app/ContextImpl;
    .restart local v30    # "component":Landroid/content/ComponentName;
    :catch_b
    move-exception v0

    move-object/from16 v4, p0

    move-object/from16 v6, v29

    move-object/from16 v8, v30

    .line 3271
    .end local v29    # "appContext":Landroid/app/ContextImpl;
    .end local v30    # "component":Landroid/content/ComponentName;
    .restart local v6    # "appContext":Landroid/app/ContextImpl;
    .restart local v8    # "component":Landroid/content/ComponentName;
    goto/16 :goto_d

    .line 3274
    .end local v1    # "activity":Landroid/app/Activity;
    .end local v6    # "appContext":Landroid/app/ContextImpl;
    .end local v8    # "component":Landroid/content/ComponentName;
    .restart local v28    # "activity":Landroid/app/Activity;
    .restart local v29    # "appContext":Landroid/app/ContextImpl;
    .restart local v30    # "component":Landroid/content/ComponentName;
    :catch_c
    move-exception v0

    move-object/from16 v4, p0

    move-object/from16 v1, v28

    move-object/from16 v6, v29

    move-object/from16 v8, v30

    move-object/from16 v2, p2

    move-object/from16 v3, p1

    .line 3274
    .end local v28    # "activity":Landroid/app/Activity;
    .end local v29    # "appContext":Landroid/app/ContextImpl;
    .end local v30    # "component":Landroid/content/ComponentName;
    .restart local v1    # "activity":Landroid/app/Activity;
    .restart local v6    # "appContext":Landroid/app/ContextImpl;
    .restart local v8    # "component":Landroid/content/ComponentName;
    goto/16 :goto_b

    .line 3271
    .end local v1    # "activity":Landroid/app/Activity;
    .end local v6    # "appContext":Landroid/app/ContextImpl;
    .end local v8    # "component":Landroid/content/ComponentName;
    .restart local v28    # "activity":Landroid/app/Activity;
    .restart local v29    # "appContext":Landroid/app/ContextImpl;
    .restart local v30    # "component":Landroid/content/ComponentName;
    :catch_d
    move-exception v0

    move-object/from16 v4, p0

    move-object/from16 v1, v28

    move-object/from16 v6, v29

    move-object/from16 v8, v30

    move-object/from16 v2, p2

    move-object/from16 v3, p1

    .line 3271
    .end local v28    # "activity":Landroid/app/Activity;
    .end local v29    # "appContext":Landroid/app/ContextImpl;
    .end local v30    # "component":Landroid/content/ComponentName;
    .restart local v1    # "activity":Landroid/app/Activity;
    .restart local v6    # "appContext":Landroid/app/ContextImpl;
    .restart local v8    # "component":Landroid/content/ComponentName;
    goto/16 :goto_d

    .line 3274
    .end local v1    # "activity":Landroid/app/Activity;
    .end local v6    # "appContext":Landroid/app/ContextImpl;
    .end local v20    # "aInfo":Landroid/content/pm/ActivityInfo;
    .local v5, "activity":Landroid/app/Activity;
    .local v7, "appContext":Landroid/app/ContextImpl;
    .restart local v21    # "aInfo":Landroid/content/pm/ActivityInfo;
    :catch_e
    move-exception v0

    move-object v1, v5

    move-object v6, v7

    move-object v3, v14

    move-object v4, v15

    move-object/from16 v20, v21

    move-object/from16 v2, p2

    goto :goto_7

    .line 3271
    :catch_f
    move-exception v0

    move-object v1, v5

    move-object v6, v7

    move-object v3, v14

    move-object v4, v15

    move-object/from16 v20, v21

    move-object/from16 v2, p2

    goto :goto_8

    .line 3274
    :catch_10
    move-exception v0

    move-object v1, v5

    move-object v6, v7

    move-object v2, v13

    move-object v3, v14

    move-object v4, v15

    move-object/from16 v20, v21

    .line 3274
    .end local v5    # "activity":Landroid/app/Activity;
    .end local v7    # "appContext":Landroid/app/ContextImpl;
    .end local v21    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v1    # "activity":Landroid/app/Activity;
    .restart local v6    # "appContext":Landroid/app/ContextImpl;
    .restart local v20    # "aInfo":Landroid/content/pm/ActivityInfo;
    :goto_7
    goto/16 :goto_b

    .line 3271
    .end local v1    # "activity":Landroid/app/Activity;
    .end local v6    # "appContext":Landroid/app/ContextImpl;
    .end local v20    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v5    # "activity":Landroid/app/Activity;
    .restart local v7    # "appContext":Landroid/app/ContextImpl;
    .restart local v21    # "aInfo":Landroid/content/pm/ActivityInfo;
    :catch_11
    move-exception v0

    move-object v1, v5

    move-object v6, v7

    move-object v2, v13

    move-object v3, v14

    move-object v4, v15

    move-object/from16 v20, v21

    .line 3271
    .end local v5    # "activity":Landroid/app/Activity;
    .end local v7    # "appContext":Landroid/app/ContextImpl;
    .end local v21    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v1    # "activity":Landroid/app/Activity;
    .restart local v6    # "appContext":Landroid/app/ContextImpl;
    .restart local v20    # "aInfo":Landroid/content/pm/ActivityInfo;
    :goto_8
    goto/16 :goto_d

    .line 3242
    .end local v1    # "activity":Landroid/app/Activity;
    .end local v6    # "appContext":Landroid/app/ContextImpl;
    .end local v20    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v4    # "app":Landroid/app/Application;
    .restart local v5    # "activity":Landroid/app/Activity;
    .restart local v7    # "appContext":Landroid/app/ContextImpl;
    .restart local v12    # "aInfo":Landroid/content/pm/ActivityInfo;
    :cond_10
    move-object v1, v5

    move-object v6, v7

    move-object/from16 v20, v12

    move-object v2, v13

    move-object v3, v14

    move-object v7, v4

    move-object v4, v15

    .line 3242
    .end local v4    # "app":Landroid/app/Application;
    .end local v5    # "activity":Landroid/app/Activity;
    .end local v12    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v1    # "activity":Landroid/app/Activity;
    .restart local v6    # "appContext":Landroid/app/ContextImpl;
    .local v7, "app":Landroid/app/Application;
    .restart local v20    # "aInfo":Landroid/content/pm/ActivityInfo;
    :goto_9
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroid/app/ActivityThread$ActivityClientRecord;->setState(I)V

    .line 3245
    iget-object v0, v3, Landroid/app/ActivityThread$ActivityClientRecord;->viewOptimizeInfo:Ljava/util/List;

    .line 3246
    .local v0, "viewOptimizeInfo":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_11

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-eqz v5, :cond_11

    .line 3247
    if-eqz v1, :cond_11

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v5

    if-eqz v5, :cond_11

    .line 3248
    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v5

    .line 3249
    .local v5, "decorView":Landroid/view/View;
    if-eqz v5, :cond_11

    instance-of v9, v5, Lcom/android/internal/policy/DecorView;

    if-eqz v9, :cond_11

    .line 3250
    move-object v9, v5

    check-cast v9, Lcom/android/internal/policy/DecorView;

    invoke-virtual {v9, v0}, Lcom/android/internal/policy/DecorView;->setViewOptimizeInfo(Ljava/util/List;)V

    .line 3257
    .end local v5    # "decorView":Landroid/view/View;
    :cond_11
    iget-boolean v5, v4, Landroid/app/ActivityThread;->mIsUserSystemVersion:Z

    if-nez v5, :cond_13

    .line 3258
    iget-object v5, v3, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    .line 3259
    .local v5, "tmpClassName":Ljava/lang/String;
    iget-object v9, v4, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v9}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_a
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_13

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    .line 3260
    .local v10, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;Landroid/app/ActivityThread$ActivityClientRecord;>;"
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/ActivityThread$ActivityClientRecord;

    iget-object v11, v11, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v11}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_12

    .line 3261
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/ActivityThread$ActivityClientRecord;

    iget-object v11, v11, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v11}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_12

    .line 3262
    const-string/jumbo v11, "myan"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[ActivityThread] >>>>>>>>>>>Activity leaked! and tmpClassName = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3265
    .end local v10    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;Landroid/app/ActivityThread$ActivityClientRecord;>;"
    :cond_12
    goto :goto_a

    .line 3269
    .end local v5    # "tmpClassName":Ljava/lang/String;
    :cond_13
    iget-object v5, v4, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    iget-object v9, v3, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    invoke-virtual {v5, v9, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_11
    .catch Landroid/util/SuperNotCalledException; {:try_start_11 .. :try_end_11} :catch_13
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_12

    .line 3280
    .end local v0    # "viewOptimizeInfo":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v7    # "app":Landroid/app/Application;
    goto :goto_c

    .line 3274
    :catch_12
    move-exception v0

    goto :goto_b

    .line 3271
    :catch_13
    move-exception v0

    goto :goto_d

    .line 3274
    .end local v1    # "activity":Landroid/app/Activity;
    .end local v6    # "appContext":Landroid/app/ContextImpl;
    .end local v20    # "aInfo":Landroid/content/pm/ActivityInfo;
    .local v5, "activity":Landroid/app/Activity;
    .local v7, "appContext":Landroid/app/ContextImpl;
    .restart local v12    # "aInfo":Landroid/content/pm/ActivityInfo;
    :catch_14
    move-exception v0

    move-object v1, v5

    move-object v6, v7

    move-object/from16 v20, v12

    move-object v2, v13

    move-object v3, v14

    move-object v4, v15

    .line 3275
    .end local v5    # "activity":Landroid/app/Activity;
    .end local v7    # "appContext":Landroid/app/ContextImpl;
    .end local v12    # "aInfo":Landroid/content/pm/ActivityInfo;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v1    # "activity":Landroid/app/Activity;
    .restart local v6    # "appContext":Landroid/app/ContextImpl;
    .restart local v20    # "aInfo":Landroid/content/pm/ActivityInfo;
    :goto_b
    iget-object v5, v4, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v5, v1, v0}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 3282
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_c
    return-object v1

    .line 3276
    .restart local v0    # "e":Ljava/lang/Exception;
    :cond_14
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to start activity "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, ": "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3278
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 3271
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "activity":Landroid/app/Activity;
    .end local v6    # "appContext":Landroid/app/ContextImpl;
    .end local v20    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v5    # "activity":Landroid/app/Activity;
    .restart local v7    # "appContext":Landroid/app/ContextImpl;
    .restart local v12    # "aInfo":Landroid/content/pm/ActivityInfo;
    :catch_15
    move-exception v0

    move-object v1, v5

    move-object v6, v7

    move-object/from16 v20, v12

    move-object v2, v13

    move-object v3, v14

    move-object v4, v15

    .line 3272
    .end local v5    # "activity":Landroid/app/Activity;
    .end local v7    # "appContext":Landroid/app/ContextImpl;
    .end local v12    # "aInfo":Landroid/content/pm/ActivityInfo;
    .local v0, "e":Landroid/util/SuperNotCalledException;
    .restart local v1    # "activity":Landroid/app/Activity;
    .restart local v6    # "appContext":Landroid/app/ContextImpl;
    .restart local v20    # "aInfo":Landroid/content/pm/ActivityInfo;
    :goto_d
    throw v0

    .line 3155
    .end local v6    # "appContext":Landroid/app/ContextImpl;
    .end local v20    # "aInfo":Landroid/content/pm/ActivityInfo;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v7    # "appContext":Landroid/app/ContextImpl;
    .restart local v12    # "aInfo":Landroid/content/pm/ActivityInfo;
    :cond_15
    move-object v6, v7

    move-object/from16 v20, v12

    move-object v2, v13

    move-object v3, v14

    move-object v4, v15

    .line 3155
    .end local v7    # "appContext":Landroid/app/ContextImpl;
    .end local v12    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v6    # "appContext":Landroid/app/ContextImpl;
    .restart local v20    # "aInfo":Landroid/content/pm/ActivityInfo;
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to instantiate activity "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, ": "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3157
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
.end method

.method private performPauseActivity(Landroid/app/ActivityThread$ActivityClientRecord;ZLjava/lang/String;Landroid/app/servertransaction/PendingTransactionActions;)Landroid/os/Bundle;
    .locals 7
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;
    .param p2, "finished"    # Z
    .param p3, "reason"    # Ljava/lang/String;
    .param p4, "pendingActions"    # Landroid/app/servertransaction/PendingTransactionActions;

    .line 4470
    iget-boolean v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->paused:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 4471
    iget-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v0, v0, Landroid/app/Activity;->mFinished:Z

    if-eqz v0, :cond_0

    .line 4475
    return-object v1

    .line 4477
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Performing pause of activity that is not resumed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    .line 4479
    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 4480
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v2, "ActivityThread"

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4482
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_1
    const/4 v0, 0x1

    if-eqz p2, :cond_2

    .line 4483
    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iput-boolean v0, v2, Landroid/app/Activity;->mFinished:Z

    .line 4487
    :cond_2
    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v2, v2, Landroid/app/Activity;->mFinished:Z

    const/4 v3, 0x0

    if-nez v2, :cond_3

    invoke-static {p1}, Landroid/app/ActivityThread$ActivityClientRecord;->access$4400(Landroid/app/ActivityThread$ActivityClientRecord;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0

    :cond_3
    move v0, v3

    .line 4488
    .local v0, "shouldSaveState":Z
    :goto_0
    if-eqz v0, :cond_4

    .line 4489
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->callActivityOnSaveInstanceState(Landroid/app/ActivityThread$ActivityClientRecord;)V

    .line 4492
    :cond_4
    invoke-direct {p0, p1, p3}, Landroid/app/ActivityThread;->performPauseActivityIfNeeded(Landroid/app/ActivityThread$ActivityClientRecord;Ljava/lang/String;)V

    .line 4496
    iget-object v2, p0, Landroid/app/ActivityThread;->mOnPauseListeners:Landroid/util/ArrayMap;

    monitor-enter v2

    .line 4497
    :try_start_0
    iget-object v4, p0, Landroid/app/ActivityThread;->mOnPauseListeners:Landroid/util/ArrayMap;

    iget-object v5, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 4498
    .local v4, "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/OnActivityPausedListener;>;"
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4499
    if-eqz v4, :cond_5

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    goto :goto_1

    :cond_5
    move v2, v3

    .line 4500
    .local v2, "size":I
    :goto_1
    nop

    .local v3, "i":I
    :goto_2
    if-ge v3, v2, :cond_6

    .line 4501
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/OnActivityPausedListener;

    iget-object v6, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-interface {v5, v6}, Landroid/app/OnActivityPausedListener;->onPaused(Landroid/app/Activity;)V

    .line 4500
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 4504
    .end local v3    # "i":I
    :cond_6
    if-eqz p4, :cond_7

    invoke-virtual {p4}, Landroid/app/servertransaction/PendingTransactionActions;->getOldState()Landroid/os/Bundle;

    move-result-object v3

    goto :goto_3

    :cond_7
    move-object v3, v1

    .line 4505
    .local v3, "oldState":Landroid/os/Bundle;
    :goto_3
    if-eqz v3, :cond_8

    .line 4511
    invoke-static {p1}, Landroid/app/ActivityThread$ActivityClientRecord;->access$4400(Landroid/app/ActivityThread$ActivityClientRecord;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 4512
    iput-object v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    .line 4516
    :cond_8
    if-eqz v0, :cond_9

    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    nop

    :cond_9
    return-object v1

    .line 4498
    .end local v2    # "size":I
    .end local v3    # "oldState":Landroid/os/Bundle;
    .end local v4    # "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/OnActivityPausedListener;>;"
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private performPauseActivityIfNeeded(Landroid/app/ActivityThread$ActivityClientRecord;Ljava/lang/String;)V
    .locals 4
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;
    .param p2, "reason"    # Ljava/lang/String;

    .line 4520
    iget-boolean v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->paused:Z

    if-eqz v0, :cond_0

    .line 4522
    return-void

    .line 4526
    :cond_0
    :try_start_0
    iget-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/app/Activity;->mCalled:Z

    .line 4527
    iget-object v0, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Instrumentation;->callActivityOnPause(Landroid/app/Activity;)V

    .line 4528
    iget-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v0, v0, Landroid/app/Activity;->mCalled:Z

    if-eqz v0, :cond_1

    .line 4539
    goto :goto_0

    .line 4529
    :cond_1
    new-instance v0, Landroid/util/SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Activity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    invoke-static {v2}, Landroid/app/ActivityThread;->safeToComponentShortString(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " did not call through to super.onPause()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Landroid/util/SuperNotCalledException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4534
    :catch_0
    move-exception v0

    .line 4535
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v1, v2, v0}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4540
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/app/ActivityThread$ActivityClientRecord;->setState(I)V

    .line 4541
    return-void

    .line 4536
    .restart local v0    # "e":Ljava/lang/Exception;
    :cond_2
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to pause activity "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    .line 4537
    invoke-static {v3}, Landroid/app/ActivityThread;->safeToComponentShortString(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 4532
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 4533
    .local v0, "e":Landroid/util/SuperNotCalledException;
    throw v0
.end method

.method private performStopActivityInner(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/app/servertransaction/PendingTransactionActions$StopInfo;ZZZLjava/lang/String;)V
    .locals 4
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;
    .param p2, "info"    # Landroid/app/servertransaction/PendingTransactionActions$StopInfo;
    .param p3, "keepShown"    # Z
    .param p4, "saveState"    # Z
    .param p5, "finalStateRequest"    # Z
    .param p6, "reason"    # Ljava/lang/String;

    .line 4590
    if-eqz p1, :cond_4

    .line 4591
    if-nez p3, :cond_1

    iget-boolean v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->stopped:Z

    if-eqz v0, :cond_1

    .line 4592
    iget-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v0, v0, Landroid/app/Activity;->mFinished:Z

    if-eqz v0, :cond_0

    .line 4596
    return-void

    .line 4598
    :cond_0
    if-nez p5, :cond_1

    .line 4599
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Performing stop of activity that is already stopped: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    .line 4601
    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 4602
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "ActivityThread"

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4603
    const-string v1, "ActivityThread"

    invoke-virtual {p1}, Landroid/app/ActivityThread$ActivityClientRecord;->getStateString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4608
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_1
    invoke-direct {p0, p1, p6}, Landroid/app/ActivityThread;->performPauseActivityIfNeeded(Landroid/app/ActivityThread$ActivityClientRecord;Ljava/lang/String;)V

    .line 4610
    if-eqz p2, :cond_3

    .line 4615
    :try_start_0
    iget-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->onCreateDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/app/servertransaction/PendingTransactionActions$StopInfo;->setDescription(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4623
    goto :goto_0

    .line 4616
    :catch_0
    move-exception v0

    .line 4617
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v1, v2, v0}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v1

    if-eqz v1, :cond_2

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_0

    .line 4618
    .restart local v0    # "e":Ljava/lang/Exception;
    :cond_2
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to save state of activity "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    .line 4620
    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4621
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 4626
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    :goto_0
    if-nez p3, :cond_4

    .line 4627
    invoke-direct {p0, p1, p4, p6}, Landroid/app/ActivityThread;->callActivityOnStop(Landroid/app/ActivityThread$ActivityClientRecord;ZLjava/lang/String;)V

    .line 4630
    :cond_4
    return-void
.end method

.method private preLoadWebView(Landroid/app/ContextImpl;Ljava/lang/String;Landroid/app/Application;)V
    .locals 1
    .param p1, "appContext"    # Landroid/app/ContextImpl;
    .param p2, "processName"    # Ljava/lang/String;
    .param p3, "app"    # Landroid/app/Application;

    .line 6109
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    sget-boolean v0, Landroid/app/ActivityThread;->sPreLoadingWebViewEnable:Z

    if-eqz v0, :cond_0

    .line 6110
    new-instance v0, Landroid/app/ActivityThread$1;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/app/ActivityThread$1;-><init>(Landroid/app/ActivityThread;Landroid/app/ContextImpl;Ljava/lang/String;Landroid/app/Application;)V

    .line 6135
    invoke-virtual {v0}, Landroid/app/ActivityThread$1;->start()V

    .line 6137
    :cond_0
    return-void
.end method

.method static varargs printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "objs"    # [Ljava/lang/Object;

    .line 2450
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2451
    return-void
.end method

.method public static readStringFromFile(Ljava/io/File;)Ljava/lang/String;
    .locals 4
    .param p0, "readFile"    # Ljava/io/File;

    .line 6082
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 6083
    return-object v1

    .line 6085
    :cond_0
    const/4 v0, 0x0

    .line 6086
    .local v0, "readString":Ljava/lang/String;
    nop

    .line 6088
    .local v1, "br":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, p0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v1, v2

    .line 6089
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    if-eqz v2, :cond_1

    .line 6090
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .line 6094
    :cond_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 6095
    .local v2, "suffixString":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 6096
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Landroid/app/ActivityThread;->sDataDirectorySuffix:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6102
    .end local v2    # "suffixString":Ljava/lang/String;
    :cond_2
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 6103
    :catch_0
    move-exception v2

    .line 6104
    goto :goto_1

    .line 6103
    :cond_3
    :goto_0
    goto :goto_1

    .line 6101
    :catchall_0
    move-exception v2

    goto :goto_2

    .line 6098
    :catch_1
    move-exception v2

    .line 6099
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 6102
    .end local v2    # "e":Ljava/lang/Exception;
    if-eqz v1, :cond_3

    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 6105
    :goto_1
    return-object v0

    .line 6101
    :goto_2
    nop

    .line 6102
    if-eqz v1, :cond_4

    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    .line 6103
    :catch_2
    move-exception v3

    nop

    :cond_4
    :goto_3
    throw v2
.end method

.method private registerLongSnapReceiver(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 3053
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 3054
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "cn.nubia.action.longsnap"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3055
    new-instance v1, Landroid/app/ActivityThread$LongSnapReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/app/ActivityThread$LongSnapReceiver;-><init>(Landroid/app/ActivityThread;Landroid/app/ActivityThread$1;)V

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 3056
    return-void
.end method

.method private relaunchAllActivities()V
    .locals 4

    .line 4827
    iget-object v0, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 4828
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;Landroid/app/ActivityThread$ActivityClientRecord;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityThread$ActivityClientRecord;

    iget-object v2, v2, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    .line 4829
    .local v2, "activity":Landroid/app/Activity;
    iget-boolean v3, v2, Landroid/app/Activity;->mFinished:Z

    if-nez v3, :cond_0

    .line 4830
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/IBinder;

    invoke-virtual {p0, v3}, Landroid/app/ActivityThread;->scheduleRelaunchActivity(Landroid/os/IBinder;)V

    .line 4832
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;Landroid/app/ActivityThread$ActivityClientRecord;>;"
    .end local v2    # "activity":Landroid/app/Activity;
    :cond_0
    goto :goto_0

    .line 4833
    :cond_1
    return-void
.end method

.method private reportSizeConfigurations(Landroid/app/ActivityThread$ActivityClientRecord;)V
    .locals 9
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;

    .line 3438
    iget-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getSizeConfigurations()[Landroid/content/res/Configuration;

    move-result-object v0

    .line 3439
    .local v0, "configurations":[Landroid/content/res/Configuration;
    if-nez v0, :cond_0

    .line 3440
    return-void

    .line 3442
    :cond_0
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    .line 3443
    .local v1, "horizontal":Landroid/util/SparseIntArray;
    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    .line 3444
    .local v2, "vertical":Landroid/util/SparseIntArray;
    new-instance v3, Landroid/util/SparseIntArray;

    invoke-direct {v3}, Landroid/util/SparseIntArray;-><init>()V

    .line 3445
    .local v3, "smallest":Landroid/util/SparseIntArray;
    array-length v4, v0

    add-int/lit8 v4, v4, -0x1

    .local v4, "i":I
    :goto_0
    if-ltz v4, :cond_4

    .line 3446
    aget-object v5, v0, v4

    .line 3447
    .local v5, "config":Landroid/content/res/Configuration;
    iget v6, v5, Landroid/content/res/Configuration;->screenHeightDp:I

    const/4 v7, 0x0

    if-eqz v6, :cond_1

    .line 3448
    iget v6, v5, Landroid/content/res/Configuration;->screenHeightDp:I

    invoke-virtual {v2, v6, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 3450
    :cond_1
    iget v6, v5, Landroid/content/res/Configuration;->screenWidthDp:I

    if-eqz v6, :cond_2

    .line 3451
    iget v6, v5, Landroid/content/res/Configuration;->screenWidthDp:I

    invoke-virtual {v1, v6, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 3453
    :cond_2
    iget v6, v5, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    if-eqz v6, :cond_3

    .line 3454
    iget v6, v5, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    invoke-virtual {v3, v6, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 3445
    .end local v5    # "config":Landroid/content/res/Configuration;
    :cond_3
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 3458
    .end local v4    # "i":I
    :cond_4
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v4

    iget-object v5, p1, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    .line 3459
    invoke-virtual {v1}, Landroid/util/SparseIntArray;->copyKeys()[I

    move-result-object v6

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->copyKeys()[I

    move-result-object v7

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->copyKeys()[I

    move-result-object v8

    .line 3458
    invoke-interface {v4, v5, v6, v7, v8}, Landroid/app/IActivityManager;->reportSizeConfigurations(Landroid/os/IBinder;[I[I[I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3462
    nop

    .line 3464
    return-void

    .line 3460
    :catch_0
    move-exception v4

    .line 3461
    .local v4, "ex":Landroid/os/RemoteException;
    invoke-virtual {v4}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v5

    throw v5
.end method

.method private static safeToComponentShortString(Landroid/content/Intent;)Ljava/lang/String;
    .locals 2
    .param p0, "intent"    # Landroid/content/Intent;

    .line 4976
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 4977
    .local v0, "component":Landroid/content/ComponentName;
    if-nez v0, :cond_0

    const-string v1, "[Unknown]"

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method private sendMessage(ILjava/lang/Object;I)V
    .locals 6
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;
    .param p3, "arg1"    # I

    .line 3005
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;IIZ)V

    .line 3006
    return-void
.end method

.method private sendMessage(ILjava/lang/Object;II)V
    .locals 6
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;
    .param p3, "arg1"    # I
    .param p4, "arg2"    # I

    .line 3009
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;IIZ)V

    .line 3010
    return-void
.end method

.method private sendMessage(ILjava/lang/Object;III)V
    .locals 3
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;
    .param p3, "arg1"    # I
    .param p4, "arg2"    # I
    .param p5, "seq"    # I

    .line 3031
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 3032
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 3033
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v1

    .line 3034
    .local v1, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p2, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 3035
    iput p3, v1, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 3036
    iput p4, v1, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 3037
    iput p5, v1, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 3038
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3039
    iget-object v2, p0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    invoke-virtual {v2, v0}, Landroid/app/ActivityThread$H;->sendMessage(Landroid/os/Message;)Z

    .line 3040
    return-void
.end method

.method private sendMessage(ILjava/lang/Object;IIZ)V
    .locals 2
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;
    .param p3, "arg1"    # I
    .param p4, "arg2"    # I
    .param p5, "async"    # Z

    .line 3016
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 3017
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 3018
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3019
    iput p3, v0, Landroid/os/Message;->arg1:I

    .line 3020
    iput p4, v0, Landroid/os/Message;->arg2:I

    .line 3021
    if-eqz p5, :cond_0

    .line 3022
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 3024
    :cond_0
    iget-object v1, p0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    invoke-virtual {v1, v0}, Landroid/app/ActivityThread$H;->sendMessage(Landroid/os/Message;)Z

    .line 3025
    return-void
.end method

.method private setStuckValueState(ZZJJJJLjava/lang/String;)V
    .locals 1
    .param p1, "debugStuckValueEnable"    # Z
    .param p2, "debugTagEnable"    # Z
    .param p3, "loopThreshold"    # J
    .param p5, "handleMessageThreshold"    # J
    .param p7, "launchActivityMinThreshold"    # J
    .param p9, "launchActivityMaxThreshold"    # J
    .param p11, "launchActivity"    # Ljava/lang/String;

    .line 7582
    sput-boolean p1, Landroid/app/ActivityThread;->sDebugStuckValueEnable:Z

    .line 7583
    sput-boolean p2, Landroid/app/ActivityThread;->sDebugTagEnable:Z

    .line 7584
    sput-wide p3, Landroid/app/ActivityThread;->sLoopThreshold:J

    .line 7585
    sput-wide p5, Landroid/app/ActivityThread;->sHandleMessageThreshold:J

    .line 7586
    sput-wide p7, Landroid/app/ActivityThread;->sLaunchActivityMinThreshold:J

    .line 7587
    sput-wide p9, Landroid/app/ActivityThread;->sLaunchActivityMaxThreshold:J

    .line 7588
    sput-object p11, Landroid/app/ActivityThread;->sLaunchActivity:Ljava/lang/String;

    .line 7590
    sget-boolean v0, Landroid/app/ActivityThread;->sDebugTagEnable:Z

    sput-boolean v0, Landroid/os/NubiaDebug;->DEBUG_SYSTRACE_TAG:Z

    .line 7591
    return-void
.end method

.method private setupGraphicsSupport(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .line 5981
    const-string/jumbo v0, "setupGraphicsSupport"

    const-wide/16 v1, 0x40

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 5984
    const-string v0, "android"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 5988
    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 5989
    .local v0, "cacheDir":Ljava/io/File;
    if-eqz v0, :cond_0

    .line 5991
    const-string/jumbo v3, "java.io.tmpdir"

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 5993
    :cond_0
    const-string v3, "ActivityThread"

    const-string v4, "Unable to initialize \"java.io.tmpdir\" property due to missing cache directory"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5998
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object v3

    .line 5999
    .local v3, "deviceContext":Landroid/content/Context;
    invoke-virtual {v3}, Landroid/content/Context;->getCodeCacheDir()Ljava/io/File;

    move-result-object v4

    .line 6000
    .local v4, "codeCacheDir":Ljava/io/File;
    if-eqz v4, :cond_2

    .line 6002
    :try_start_0
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v5

    .line 6003
    .local v5, "uid":I
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v6

    invoke-interface {v6, v5}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v6

    .line 6004
    .local v6, "packages":[Ljava/lang/String;
    if-eqz v6, :cond_1

    .line 6005
    invoke-static {v4}, Landroid/view/ThreadedRenderer;->setupDiskCache(Ljava/io/File;)V

    .line 6006
    invoke-static {v4}, Landroid/renderscript/RenderScriptCacheDir;->setupDiskCache(Ljava/io/File;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6011
    .end local v5    # "uid":I
    .end local v6    # "packages":[Ljava/lang/String;
    :cond_1
    goto :goto_1

    .line 6008
    :catch_0
    move-exception v5

    .line 6009
    .local v5, "e":Landroid/os/RemoteException;
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 6010
    invoke-virtual {v5}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 6013
    .end local v5    # "e":Landroid/os/RemoteException;
    :cond_2
    const-string v5, "ActivityThread"

    const-string v6, "Unable to use shader/script cache: missing code-cache directory"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6017
    .end local v0    # "cacheDir":Ljava/io/File;
    .end local v3    # "deviceContext":Landroid/content/Context;
    .end local v4    # "codeCacheDir":Ljava/io/File;
    :cond_3
    :goto_1
    invoke-static {}, Landroid/os/GraphicsEnvironment;->getInstance()Landroid/os/GraphicsEnvironment;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/GraphicsEnvironment;->setup(Landroid/content/Context;)V

    .line 6018
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 6019
    return-void
.end method

.method public static systemMain()Landroid/app/ActivityThread;
    .locals 4

    .line 7454
    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 7455
    invoke-static {v1}, Landroid/view/ThreadedRenderer;->disable(Z)V

    goto :goto_0

    .line 7457
    :cond_0
    invoke-static {}, Landroid/view/ThreadedRenderer;->enableForegroundTrimming()V

    .line 7459
    :goto_0
    new-instance v0, Landroid/app/ActivityThread;

    invoke-direct {v0}, Landroid/app/ActivityThread;-><init>()V

    .line 7460
    .local v0, "thread":Landroid/app/ActivityThread;
    const-wide/16 v2, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/app/ActivityThread;->attach(ZJ)V

    .line 7461
    return-object v0
.end method

.method private updateDefaultDensity()V
    .locals 2

    .line 6022
    iget v0, p0, Landroid/app/ActivityThread;->mCurDefaultDisplayDpi:I

    .line 6023
    .local v0, "densityDpi":I
    iget-boolean v1, p0, Landroid/app/ActivityThread;->mDensityCompatMode:Z

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    sget v1, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    if-eq v0, v1, :cond_0

    .line 6026
    sput v0, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    .line 6027
    invoke-static {v0}, Landroid/graphics/Bitmap;->setDefaultDensity(I)V

    .line 6029
    :cond_0
    return-void
.end method

.method private updateLocaleListFromAppContext(Landroid/content/Context;Landroid/os/LocaleList;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "newLocaleList"    # Landroid/os/LocaleList;

    .line 6063
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v0

    .line 6064
    .local v0, "bestLocale":Ljava/util/Locale;
    invoke-virtual {p2}, Landroid/os/LocaleList;->size()I

    move-result v2

    .line 6065
    .local v2, "newLocaleListSize":I
    nop

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 6066
    invoke-virtual {p2, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 6067
    invoke-static {p2, v1}, Landroid/os/LocaleList;->setDefault(Landroid/os/LocaleList;I)V

    .line 6068
    return-void

    .line 6065
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6075
    .end local v1    # "i":I
    :cond_1
    new-instance v1, Landroid/os/LocaleList;

    invoke-direct {v1, v0, p2}, Landroid/os/LocaleList;-><init>(Ljava/util/Locale;Landroid/os/LocaleList;)V

    invoke-static {v1}, Landroid/os/LocaleList;->setDefault(Landroid/os/LocaleList;)V

    .line 6076
    return-void
.end method

.method private updateVisibility(Landroid/app/ActivityThread$ActivityClientRecord;Z)V
    .locals 4
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;
    .param p2, "show"    # Z

    .line 4668
    iget-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-object v0, v0, Landroid/app/Activity;->mDecor:Landroid/view/View;

    .line 4669
    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_2

    .line 4670
    const/4 v1, 0x1

    if-eqz p2, :cond_1

    .line 4671
    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v2, v2, Landroid/app/Activity;->mVisibleFromServer:Z

    if-nez v2, :cond_0

    .line 4672
    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iput-boolean v1, v2, Landroid/app/Activity;->mVisibleFromServer:Z

    .line 4673
    iget v2, p0, Landroid/app/ActivityThread;->mNumVisibleActivities:I

    add-int/2addr v2, v1

    iput v2, p0, Landroid/app/ActivityThread;->mNumVisibleActivities:I

    .line 4674
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v1, v1, Landroid/app/Activity;->mVisibleFromClient:Z

    if-eqz v1, :cond_0

    .line 4675
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->makeVisible()V

    .line 4678
    :cond_0
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->newConfig:Landroid/content/res/Configuration;

    if-eqz v1, :cond_2

    .line 4679
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->newConfig:Landroid/content/res/Configuration;

    invoke-direct {p0, p1, v1}, Landroid/app/ActivityThread;->performConfigurationChangedForActivity(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/content/res/Configuration;)V

    .line 4683
    const/4 v1, 0x0

    iput-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->newConfig:Landroid/content/res/Configuration;

    goto :goto_0

    .line 4686
    :cond_1
    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v2, v2, Landroid/app/Activity;->mVisibleFromServer:Z

    if-eqz v2, :cond_2

    .line 4687
    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroid/app/Activity;->mVisibleFromServer:Z

    .line 4688
    iget v2, p0, Landroid/app/ActivityThread;->mNumVisibleActivities:I

    sub-int/2addr v2, v1

    iput v2, p0, Landroid/app/ActivityThread;->mNumVisibleActivities:I

    .line 4689
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4693
    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public final acquireExistingProvider(Landroid/content/Context;Ljava/lang/String;IZ)Landroid/content/IContentProvider;
    .locals 9
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "auth"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "stable"    # Z

    .line 6944
    iget-object v0, p0, Landroid/app/ActivityThread;->mProviderMap:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 6945
    :try_start_0
    new-instance v1, Landroid/app/ActivityThread$ProviderKey;

    invoke-direct {v1, p2, p3}, Landroid/app/ActivityThread$ProviderKey;-><init>(Ljava/lang/String;I)V

    .line 6946
    .local v1, "key":Landroid/app/ActivityThread$ProviderKey;
    iget-object v2, p0, Landroid/app/ActivityThread;->mProviderMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityThread$ProviderClientRecord;

    .line 6947
    .local v2, "pr":Landroid/app/ActivityThread$ProviderClientRecord;
    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 6948
    monitor-exit v0

    return-object v3

    .line 6951
    :cond_0
    iget-object v4, v2, Landroid/app/ActivityThread$ProviderClientRecord;->mProvider:Landroid/content/IContentProvider;

    .line 6952
    .local v4, "provider":Landroid/content/IContentProvider;
    invoke-interface {v4}, Landroid/content/IContentProvider;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    .line 6953
    .local v5, "jBinder":Landroid/os/IBinder;
    invoke-interface {v5}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v6

    if-nez v6, :cond_1

    .line 6956
    const-string v6, "ActivityThread"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Acquiring provider "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " for user "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ": existing object\'s process dead"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6958
    const/4 v6, 0x1

    invoke-virtual {p0, v5, v6}, Landroid/app/ActivityThread;->handleUnstableProviderDiedLocked(Landroid/os/IBinder;Z)V

    .line 6959
    monitor-exit v0

    return-object v3

    .line 6964
    :cond_1
    iget-object v3, p0, Landroid/app/ActivityThread;->mProviderRefCountMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityThread$ProviderRefCount;

    .line 6965
    .local v3, "prc":Landroid/app/ActivityThread$ProviderRefCount;
    if-eqz v3, :cond_2

    .line 6966
    invoke-direct {p0, v3, p4}, Landroid/app/ActivityThread;->incProviderRefLocked(Landroid/app/ActivityThread$ProviderRefCount;Z)V

    .line 6968
    :cond_2
    monitor-exit v0

    return-object v4

    .line 6969
    .end local v1    # "key":Landroid/app/ActivityThread$ProviderKey;
    .end local v2    # "pr":Landroid/app/ActivityThread$ProviderClientRecord;
    .end local v3    # "prc":Landroid/app/ActivityThread$ProviderRefCount;
    .end local v4    # "provider":Landroid/content/IContentProvider;
    .end local v5    # "jBinder":Landroid/os/IBinder;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final acquireProvider(Landroid/content/Context;Ljava/lang/String;IZ)Landroid/content/IContentProvider;
    .locals 11
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "auth"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "stable"    # Z

    .line 6814
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/app/ActivityThread;->acquireExistingProvider(Landroid/content/Context;Ljava/lang/String;IZ)Landroid/content/IContentProvider;

    move-result-object v0

    .line 6815
    .local v0, "provider":Landroid/content/IContentProvider;
    if-eqz v0, :cond_0

    .line 6816
    return-object v0

    .line 6825
    :cond_0
    const/4 v1, 0x0

    move-object v2, v1

    .line 6836
    .local v2, "holder":Landroid/app/ContentProviderHolder;
    const/4 v3, 0x0

    .local v3, "retry":I
    :goto_0
    const/4 v4, 0x6

    if-ge v3, v4, :cond_3

    .line 6837
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v4

    invoke-virtual {p0}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v5

    invoke-interface {v4, v5, p2, p3, p4}, Landroid/app/IActivityManager;->getContentProvider(Landroid/app/IApplicationThread;Ljava/lang/String;IZ)Landroid/app/ContentProviderHolder;

    move-result-object v4

    .line 6838
    .local v4, "tmpHolder":Landroid/app/ContentProviderHolder;
    if-eqz v4, :cond_2

    iget-boolean v5, v4, Landroid/app/ContentProviderHolder;->isTimeout:Z

    if-nez v5, :cond_1

    goto :goto_1

    .line 6844
    :cond_1
    const-string v5, "ActivityThread"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Getting provider is timed out. retry="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6836
    .end local v4    # "tmpHolder":Landroid/app/ContentProviderHolder;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 6840
    .restart local v4    # "tmpHolder":Landroid/app/ContentProviderHolder;
    :cond_2
    :goto_1
    move-object v2, v4

    .line 6841
    goto :goto_2

    .line 6847
    .end local v3    # "retry":I
    .end local v4    # "tmpHolder":Landroid/app/ContentProviderHolder;
    :catch_0
    move-exception v1

    .line 6848
    .local v1, "ex":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    .line 6849
    .end local v1    # "ex":Landroid/os/RemoteException;
    :cond_3
    :goto_2
    nop

    .line 6850
    if-nez v2, :cond_4

    .line 6851
    const-string v3, "ActivityThread"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to find provider info for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6852
    return-object v1

    .line 6857
    :cond_4
    iget-object v7, v2, Landroid/app/ContentProviderHolder;->info:Landroid/content/pm/ProviderInfo;

    const/4 v8, 0x1

    iget-boolean v9, v2, Landroid/app/ContentProviderHolder;->noReleaseNeeded:Z

    move-object v4, p0

    move-object v5, p1

    move-object v6, v2

    move v10, p4

    invoke-direct/range {v4 .. v10}, Landroid/app/ActivityThread;->installProvider(Landroid/content/Context;Landroid/app/ContentProviderHolder;Landroid/content/pm/ProviderInfo;ZZZ)Landroid/app/ContentProviderHolder;

    move-result-object v1

    .line 6859
    .end local v2    # "holder":Landroid/app/ContentProviderHolder;
    .local v1, "holder":Landroid/app/ContentProviderHolder;
    iget-object v2, v1, Landroid/app/ContentProviderHolder;->provider:Landroid/content/IContentProvider;

    return-object v2
.end method

.method final appNotRespondingViaProvider(Landroid/os/IBinder;)V
    .locals 4
    .param p1, "provider"    # Landroid/os/IBinder;

    .line 7141
    iget-object v0, p0, Landroid/app/ActivityThread;->mProviderMap:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 7142
    :try_start_0
    iget-object v1, p0, Landroid/app/ActivityThread;->mProviderRefCountMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityThread$ProviderRefCount;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7143
    .local v1, "prc":Landroid/app/ActivityThread$ProviderRefCount;
    if-eqz v1, :cond_0

    .line 7145
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    iget-object v3, v1, Landroid/app/ActivityThread$ProviderRefCount;->holder:Landroid/app/ContentProviderHolder;

    iget-object v3, v3, Landroid/app/ContentProviderHolder;->connection:Landroid/os/IBinder;

    .line 7146
    invoke-interface {v2, v3}, Landroid/app/IActivityManager;->appNotRespondingViaProvider(Landroid/os/IBinder;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7149
    goto :goto_0

    .line 7147
    :catch_0
    move-exception v2

    .line 7148
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    .line 7151
    .end local v1    # "prc":Landroid/app/ActivityThread$ProviderRefCount;
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    monitor-exit v0

    .line 7152
    return-void

    .line 7151
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method final applyCompatConfiguration(I)Landroid/content/res/Configuration;
    .locals 3
    .param p1, "displayDensity"    # I

    .line 5566
    iget-object v0, p0, Landroid/app/ActivityThread;->mConfiguration:Landroid/content/res/Configuration;

    .line 5567
    .local v0, "config":Landroid/content/res/Configuration;
    iget-object v1, p0, Landroid/app/ActivityThread;->mCompatConfiguration:Landroid/content/res/Configuration;

    if-nez v1, :cond_0

    .line 5568
    new-instance v1, Landroid/content/res/Configuration;

    invoke-direct {v1}, Landroid/content/res/Configuration;-><init>()V

    iput-object v1, p0, Landroid/app/ActivityThread;->mCompatConfiguration:Landroid/content/res/Configuration;

    .line 5570
    :cond_0
    iget-object v1, p0, Landroid/app/ActivityThread;->mCompatConfiguration:Landroid/content/res/Configuration;

    iget-object v2, p0, Landroid/app/ActivityThread;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v1, v2}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 5571
    iget-object v1, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    iget-object v2, p0, Landroid/app/ActivityThread;->mCompatConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v1, p1, v2}, Landroid/app/ResourcesManager;->applyCompatConfigurationLocked(ILandroid/content/res/Configuration;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5573
    iget-object v0, p0, Landroid/app/ActivityThread;->mCompatConfiguration:Landroid/content/res/Configuration;

    .line 5575
    :cond_1
    return-object v0
.end method

.method applyConfigCompatMainThread(ILandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)Landroid/content/res/Configuration;
    .locals 1
    .param p1, "displayDensity"    # I
    .param p2, "config"    # Landroid/content/res/Configuration;
    .param p3, "compat"    # Landroid/content/res/CompatibilityInfo;

    .line 2134
    if-nez p2, :cond_0

    .line 2135
    const/4 v0, 0x0

    return-object v0

    .line 2137
    :cond_0
    invoke-virtual {p3}, Landroid/content/res/CompatibilityInfo;->supportsScreen()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2138
    iget-object v0, p0, Landroid/app/ActivityThread;->mMainThreadConfig:Landroid/content/res/Configuration;

    invoke-virtual {v0, p2}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 2139
    iget-object p2, p0, Landroid/app/ActivityThread;->mMainThreadConfig:Landroid/content/res/Configuration;

    .line 2140
    invoke-virtual {p3, p1, p2}, Landroid/content/res/CompatibilityInfo;->applyToConfiguration(ILandroid/content/res/Configuration;)V

    .line 2142
    :cond_1
    return-object p2
.end method

.method public final applyConfigurationToResources(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "config"    # Landroid/content/res/Configuration;

    .line 5560
    iget-object v0, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    monitor-enter v0

    .line 5561
    :try_start_0
    iget-object v1, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/app/ResourcesManager;->applyConfigurationToResourcesLocked(Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)Z

    .line 5562
    monitor-exit v0

    .line 5563
    return-void

    .line 5562
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method collectComponentCallbacks(ZLandroid/content/res/Configuration;)Ljava/util/ArrayList;
    .locals 10
    .param p1, "allActivities"    # Z
    .param p2, "newConfig"    # Landroid/content/res/Configuration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Landroid/content/res/Configuration;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/content/ComponentCallbacks2;",
            ">;"
        }
    .end annotation

    .line 5334
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5337
    .local v0, "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentCallbacks2;>;"
    iget-object v1, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    monitor-enter v1

    .line 5338
    :try_start_0
    iget-object v2, p0, Landroid/app/ActivityThread;->mAllApplications:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 5339
    .local v2, "NAPP":I
    const/4 v3, 0x0

    move v4, v3

    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_0

    .line 5340
    iget-object v5, p0, Landroid/app/ActivityThread;->mAllApplications:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentCallbacks2;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5339
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 5342
    .end local v4    # "i":I
    :cond_0
    iget-object v4, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    .line 5343
    .local v4, "NACT":I
    move v5, v3

    .local v5, "i":I
    :goto_1
    if-ge v5, v4, :cond_4

    .line 5344
    iget-object v6, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 5345
    .local v6, "ar":Landroid/app/ActivityThread$ActivityClientRecord;
    iget-object v7, v6, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    .line 5346
    .local v7, "a":Landroid/app/Activity;
    if-eqz v7, :cond_3

    .line 5347
    iget v8, p0, Landroid/app/ActivityThread;->mCurDefaultDisplayDpi:I

    iget-object v9, v6, Landroid/app/ActivityThread$ActivityClientRecord;->packageInfo:Landroid/app/LoadedApk;

    .line 5349
    invoke-virtual {v9}, Landroid/app/LoadedApk;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v9

    .line 5347
    invoke-virtual {p0, v8, p2, v9}, Landroid/app/ActivityThread;->applyConfigCompatMainThread(ILandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)Landroid/content/res/Configuration;

    move-result-object v8

    .line 5350
    .local v8, "thisConfig":Landroid/content/res/Configuration;
    iget-object v9, v6, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v9, v9, Landroid/app/Activity;->mFinished:Z

    if-nez v9, :cond_2

    if-nez p1, :cond_1

    iget-boolean v9, v6, Landroid/app/ActivityThread$ActivityClientRecord;->paused:Z

    if-nez v9, :cond_2

    .line 5353
    :cond_1
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 5354
    :cond_2
    if-eqz v8, :cond_3

    .line 5364
    iput-object v8, v6, Landroid/app/ActivityThread$ActivityClientRecord;->newConfig:Landroid/content/res/Configuration;

    .line 5343
    .end local v6    # "ar":Landroid/app/ActivityThread$ActivityClientRecord;
    .end local v7    # "a":Landroid/app/Activity;
    .end local v8    # "thisConfig":Landroid/content/res/Configuration;
    :cond_3
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 5368
    .end local v5    # "i":I
    :cond_4
    iget-object v5, p0, Landroid/app/ActivityThread;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    .line 5369
    .local v5, "NSVC":I
    move v6, v3

    .local v6, "i":I
    :goto_3
    if-ge v6, v5, :cond_5

    .line 5370
    iget-object v7, p0, Landroid/app/ActivityThread;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v7, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentCallbacks2;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5369
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 5372
    .end local v2    # "NAPP":I
    .end local v4    # "NACT":I
    .end local v5    # "NSVC":I
    .end local v6    # "i":I
    :cond_5
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5373
    iget-object v2, p0, Landroid/app/ActivityThread;->mProviderMap:Landroid/util/ArrayMap;

    monitor-enter v2

    .line 5374
    :try_start_1
    iget-object v1, p0, Landroid/app/ActivityThread;->mLocalProviders:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 5375
    .local v1, "NPRV":I
    nop

    .local v3, "i":I
    :goto_4
    if-ge v3, v1, :cond_6

    .line 5376
    iget-object v4, p0, Landroid/app/ActivityThread;->mLocalProviders:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityThread$ProviderClientRecord;

    iget-object v4, v4, Landroid/app/ActivityThread$ProviderClientRecord;->mLocalProvider:Landroid/content/ContentProvider;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5375
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 5378
    .end local v1    # "NPRV":I
    .end local v3    # "i":I
    :cond_6
    monitor-exit v2

    .line 5380
    return-object v0

    .line 5378
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 5372
    :catchall_1
    move-exception v2

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2
.end method

.method final completeRemoveProvider(Landroid/app/ActivityThread$ProviderRefCount;)V
    .locals 8
    .param p1, "prc"    # Landroid/app/ActivityThread$ProviderRefCount;

    .line 7062
    iget-object v0, p0, Landroid/app/ActivityThread;->mProviderMap:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 7063
    :try_start_0
    iget-boolean v1, p1, Landroid/app/ActivityThread$ProviderRefCount;->removePending:Z

    if-nez v1, :cond_0

    .line 7069
    monitor-exit v0

    return-void

    .line 7075
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p1, Landroid/app/ActivityThread$ProviderRefCount;->removePending:Z

    .line 7077
    iget-object v2, p1, Landroid/app/ActivityThread$ProviderRefCount;->holder:Landroid/app/ContentProviderHolder;

    iget-object v2, v2, Landroid/app/ContentProviderHolder;->provider:Landroid/content/IContentProvider;

    invoke-interface {v2}, Landroid/content/IContentProvider;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 7078
    .local v2, "jBinder":Landroid/os/IBinder;
    iget-object v3, p0, Landroid/app/ActivityThread;->mProviderRefCountMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityThread$ProviderRefCount;

    .line 7079
    .local v3, "existingPrc":Landroid/app/ActivityThread$ProviderRefCount;
    if-ne v3, p1, :cond_1

    .line 7080
    iget-object v4, p0, Landroid/app/ActivityThread;->mProviderRefCountMap:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7083
    :cond_1
    iget-object v4, p0, Landroid/app/ActivityThread;->mProviderMap:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .local v4, "i":I
    :goto_0
    if-ltz v4, :cond_3

    .line 7084
    iget-object v5, p0, Landroid/app/ActivityThread;->mProviderMap:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityThread$ProviderClientRecord;

    .line 7085
    .local v5, "pr":Landroid/app/ActivityThread$ProviderClientRecord;
    iget-object v6, v5, Landroid/app/ActivityThread$ProviderClientRecord;->mProvider:Landroid/content/IContentProvider;

    invoke-interface {v6}, Landroid/content/IContentProvider;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 7086
    .local v6, "myBinder":Landroid/os/IBinder;
    if-ne v6, v2, :cond_2

    .line 7087
    iget-object v7, p0, Landroid/app/ActivityThread;->mProviderMap:Landroid/util/ArrayMap;

    invoke-virtual {v7, v4}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 7083
    .end local v5    # "pr":Landroid/app/ActivityThread$ProviderClientRecord;
    .end local v6    # "myBinder":Landroid/os/IBinder;
    :cond_2
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 7090
    .end local v2    # "jBinder":Landroid/os/IBinder;
    .end local v3    # "existingPrc":Landroid/app/ActivityThread$ProviderRefCount;
    .end local v4    # "i":I
    :cond_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7097
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v2, p1, Landroid/app/ActivityThread$ProviderRefCount;->holder:Landroid/app/ContentProviderHolder;

    iget-object v2, v2, Landroid/app/ContentProviderHolder;->connection:Landroid/os/IBinder;

    invoke-interface {v0, v2, v1}, Landroid/app/IActivityManager;->removeContentProvider(Landroid/os/IBinder;Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 7101
    goto :goto_1

    .line 7099
    :catch_0
    move-exception v0

    .line 7102
    :goto_1
    return-void

    .line 7090
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method doGcIfNeeded()V
    .locals 6

    .line 2428
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/ActivityThread;->mGcIdlerScheduled:Z

    .line 2429
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 2432
    .local v0, "now":J
    invoke-static {}, Lcom/android/internal/os/BinderInternal;->getLastGcTime()J

    move-result-wide v2

    const-wide/16 v4, 0x1388

    add-long/2addr v2, v4

    cmp-long v2, v2, v0

    if-gez v2, :cond_0

    .line 2434
    const-string v2, "bg"

    invoke-static {v2}, Lcom/android/internal/os/BinderInternal;->forceGc(Ljava/lang/String;)V

    .line 2436
    :cond_0
    return-void
.end method

.method ensureJitEnabled()V
    .locals 1

    .line 2389
    iget-boolean v0, p0, Landroid/app/ActivityThread;->mJitEnabled:Z

    if-nez v0, :cond_0

    .line 2390
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/ActivityThread;->mJitEnabled:Z

    .line 2391
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->startJitCompilation()V

    .line 2393
    :cond_0
    return-void
.end method

.method final finishInstrumentation(ILandroid/os/Bundle;)V
    .locals 3
    .param p1, "resultCode"    # I
    .param p2, "results"    # Landroid/os/Bundle;

    .line 6739
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    .line 6740
    .local v0, "am":Landroid/app/IActivityManager;
    iget-object v1, p0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    iget-object v1, v1, Landroid/app/ActivityThread$Profiler;->profileFile:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    iget-boolean v1, v1, Landroid/app/ActivityThread$Profiler;->handlingProfiling:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    iget-object v1, v1, Landroid/app/ActivityThread$Profiler;->profileFd:Landroid/os/ParcelFileDescriptor;

    if-nez v1, :cond_0

    .line 6742
    invoke-static {}, Landroid/os/Debug;->stopMethodTracing()V

    .line 6747
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/app/ActivityThread;->mAppThread:Landroid/app/ActivityThread$ApplicationThread;

    invoke-interface {v0, v1, p1, p2}, Landroid/app/IActivityManager;->finishInstrumentation(Landroid/app/IApplicationThread;ILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6750
    nop

    .line 6751
    return-void

    .line 6748
    :catch_0
    move-exception v1

    .line 6749
    .local v1, "ex":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public final getActivity(Landroid/os/IBinder;)Landroid/app/Activity;
    .locals 1
    .param p1, "token"    # Landroid/os/IBinder;

    .line 2971
    iget-object v0, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread$ActivityClientRecord;

    iget-object v0, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method public getActivityClient(Landroid/os/IBinder;)Landroid/app/ActivityThread$ActivityClientRecord;
    .locals 1
    .param p1, "token"    # Landroid/os/IBinder;

    .line 2976
    iget-object v0, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread$ActivityClientRecord;

    return-object v0
.end method

.method public getApplication()Landroid/app/Application;
    .locals 1

    .line 2353
    iget-object v0, p0, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    return-object v0
.end method

.method public getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;
    .locals 1

    .line 2327
    iget-object v0, p0, Landroid/app/ActivityThread;->mAppThread:Landroid/app/ActivityThread$ApplicationThread;

    return-object v0
.end method

.method public getExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    .line 2349
    iget-object v0, p0, Landroid/app/ActivityThread;->mExecutor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method final getHandler()Landroid/os/Handler;
    .locals 1

    .line 2170
    iget-object v0, p0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    return-object v0
.end method

.method public getInstrumentation()Landroid/app/Instrumentation;
    .locals 1

    .line 2332
    iget-object v0, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    return-object v0
.end method

.method public getIntCoreSetting(Ljava/lang/String;I)I
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .line 7471
    iget-object v0, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    monitor-enter v0

    .line 7472
    :try_start_0
    iget-object v1, p0, Landroid/app/ActivityThread;->mCoreSettings:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    .line 7473
    iget-object v1, p0, Landroid/app/ActivityThread;->mCoreSettings:Landroid/os/Bundle;

    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    monitor-exit v0

    return v1

    .line 7475
    :cond_0
    monitor-exit v0

    return p2

    .line 7476
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getLooper()Landroid/os/Looper;
    .locals 1

    .line 2345
    iget-object v0, p0, Landroid/app/ActivityThread;->mLooper:Landroid/os/Looper;

    return-object v0
.end method

.method public final getPackageInfo(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;I)Landroid/app/LoadedApk;
    .locals 11
    .param p1, "ai"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "compatInfo"    # Landroid/content/res/CompatibilityInfo;
    .param p3, "flags"    # I

    .line 2229
    and-int/lit8 v0, p3, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 2230
    .local v0, "includeCode":Z
    :goto_0
    if-eqz v0, :cond_2

    iget v3, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eqz v3, :cond_2

    iget v3, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v4, 0x3e8

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    if-eqz v3, :cond_1

    iget v3, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v4, p0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    iget-object v4, v4, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 2232
    invoke-static {v3, v4}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    move v3, v2

    goto :goto_1

    :cond_2
    move v3, v1

    :goto_1
    move v10, v3

    .line 2234
    .local v10, "securityViolation":Z
    if-eqz v0, :cond_3

    const/high16 v3, 0x40000000    # 2.0f

    and-int/2addr v3, p3

    if-eqz v3, :cond_3

    move v9, v2

    goto :goto_2

    :cond_3
    move v9, v1

    .line 2235
    .local v9, "registerPackage":Z
    :goto_2
    and-int/lit8 v1, p3, 0x3

    if-ne v1, v2, :cond_5

    .line 2238
    if-eqz v10, :cond_5

    .line 2239
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Requesting code from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " (with uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2241
    .local v1, "msg":Ljava/lang/String;
    iget-object v2, p0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    if-eqz v2, :cond_4

    .line 2242
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " to be run in process "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    iget-object v3, v3, Landroid/app/ActivityThread$AppBindData;->processName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " (with uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    iget-object v3, v3, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2246
    :cond_4
    new-instance v2, Ljava/lang/SecurityException;

    invoke-direct {v2, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2249
    .end local v1    # "msg":Ljava/lang/String;
    :cond_5
    const/4 v6, 0x0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move v7, v10

    move v8, v0

    invoke-direct/range {v3 .. v9}, Landroid/app/ActivityThread;->getPackageInfo(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;Ljava/lang/ClassLoader;ZZZ)Landroid/app/LoadedApk;

    move-result-object v1

    return-object v1
.end method

.method public final getPackageInfo(Ljava/lang/String;Landroid/content/res/CompatibilityInfo;I)Landroid/app/LoadedApk;
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "compatInfo"    # Landroid/content/res/CompatibilityInfo;
    .param p3, "flags"    # I

    .line 2175
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/app/ActivityThread;->getPackageInfo(Ljava/lang/String;Landroid/content/res/CompatibilityInfo;II)Landroid/app/LoadedApk;

    move-result-object v0

    return-object v0
.end method

.method public final getPackageInfo(Ljava/lang/String;Landroid/content/res/CompatibilityInfo;II)Landroid/app/LoadedApk;
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "compatInfo"    # Landroid/content/res/CompatibilityInfo;
    .param p3, "flags"    # I
    .param p4, "userId"    # I

    .line 2180
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-eq v0, p4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2181
    .local v0, "differentUser":Z
    :goto_0
    iget-object v1, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    monitor-enter v1

    .line 2183
    if-eqz v0, :cond_1

    .line 2185
    const/4 v2, 0x0

    .local v2, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    :goto_1
    goto :goto_2

    .line 2186
    .end local v2    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    :cond_1
    and-int/lit8 v2, p3, 0x1

    if-eqz v2, :cond_2

    .line 2187
    :try_start_0
    iget-object v2, p0, Landroid/app/ActivityThread;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    goto :goto_1

    .line 2208
    :catchall_0
    move-exception v2

    goto/16 :goto_5

    .line 2189
    :cond_2
    iget-object v2, p0, Landroid/app/ActivityThread;->mResourcePackages:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 2192
    .restart local v2    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    :goto_2
    const/4 v3, 0x0

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/LoadedApk;

    goto :goto_3

    :cond_3
    move-object v4, v3

    .line 2196
    .local v4, "packageInfo":Landroid/app/LoadedApk;
    :goto_3
    if-eqz v4, :cond_7

    iget-object v5, v4, Landroid/app/LoadedApk;->mResources:Landroid/content/res/Resources;

    if-eqz v5, :cond_4

    iget-object v5, v4, Landroid/app/LoadedApk;->mResources:Landroid/content/res/Resources;

    .line 2197
    invoke-virtual {v5}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/AssetManager;->isUpToDate()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 2198
    :cond_4
    invoke-virtual {v4}, Landroid/app/LoadedApk;->isSecurityViolation()Z

    move-result v3

    if-eqz v3, :cond_6

    and-int/lit8 v3, p3, 0x2

    if-eqz v3, :cond_5

    goto :goto_4

    .line 2200
    :cond_5
    new-instance v3, Ljava/lang/SecurityException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Requesting code from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " to be run in process "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    iget-object v6, v6, Landroid/app/ActivityThread$AppBindData;->processName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    iget-object v6, v6, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2206
    :cond_6
    :goto_4
    monitor-exit v1

    return-object v4

    .line 2208
    .end local v2    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    .end local v4    # "packageInfo":Landroid/app/LoadedApk;
    :cond_7
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2210
    move-object v1, v3

    .line 2212
    .local v1, "ai":Landroid/content/pm/ApplicationInfo;
    :try_start_1
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    const v4, 0x10000400

    invoke-interface {v2, p1, v4, p4}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v2
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v1, v2

    .line 2218
    nop

    .line 2220
    if-eqz v1, :cond_8

    .line 2221
    invoke-virtual {p0, v1, p2, p3}, Landroid/app/ActivityThread;->getPackageInfo(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;I)Landroid/app/LoadedApk;

    move-result-object v2

    return-object v2

    .line 2224
    :cond_8
    return-object v3

    .line 2216
    :catch_0
    move-exception v2

    .line 2217
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    .line 2208
    .end local v1    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_5
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public final getPackageInfoNoCheck(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;)Landroid/app/LoadedApk;
    .locals 7
    .param p1, "ai"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "compatInfo"    # Landroid/content/res/CompatibilityInfo;

    .line 2256
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Landroid/app/ActivityThread;->getPackageInfo(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;Ljava/lang/ClassLoader;ZZZ)Landroid/app/LoadedApk;

    move-result-object v0

    return-object v0
.end method

.method public getProcessName()Ljava/lang/String;
    .locals 1

    .line 2357
    iget-object v0, p0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    iget-object v0, v0, Landroid/app/ActivityThread$AppBindData;->processName:Ljava/lang/String;

    return-object v0
.end method

.method public getProfileFilePath()Ljava/lang/String;
    .locals 1

    .line 2341
    iget-object v0, p0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    iget-object v0, v0, Landroid/app/ActivityThread$Profiler;->profileFile:Ljava/lang/String;

    return-object v0
.end method

.method public getSystemContext()Landroid/app/ContextImpl;
    .locals 1

    .line 2361
    monitor-enter p0

    .line 2362
    :try_start_0
    iget-object v0, p0, Landroid/app/ActivityThread;->mSystemContext:Landroid/app/ContextImpl;

    if-nez v0, :cond_0

    .line 2363
    invoke-static {p0}, Landroid/app/ContextImpl;->createSystemContext(Landroid/app/ActivityThread;)Landroid/app/ContextImpl;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ActivityThread;->mSystemContext:Landroid/app/ContextImpl;

    .line 2365
    :cond_0
    iget-object v0, p0, Landroid/app/ActivityThread;->mSystemContext:Landroid/app/ContextImpl;

    monitor-exit p0

    return-object v0

    .line 2366
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getSystemUiContext()Landroid/app/ContextImpl;
    .locals 1

    .line 2370
    monitor-enter p0

    .line 2371
    :try_start_0
    iget-object v0, p0, Landroid/app/ActivityThread;->mSystemUiContext:Landroid/app/ContextImpl;

    if-nez v0, :cond_0

    .line 2372
    invoke-virtual {p0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v0

    invoke-static {v0}, Landroid/app/ContextImpl;->createSystemUiContext(Landroid/app/ContextImpl;)Landroid/app/ContextImpl;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ActivityThread;->mSystemUiContext:Landroid/app/ContextImpl;

    .line 2374
    :cond_0
    iget-object v0, p0, Landroid/app/ActivityThread;->mSystemUiContext:Landroid/app/ContextImpl;

    monitor-exit p0

    return-object v0

    .line 2375
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getTopLevelResources(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/app/LoadedApk;)Landroid/content/res/Resources;
    .locals 11
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "resDir"    # Ljava/lang/String;
    .param p3, "splitResDirs"    # [Ljava/lang/String;
    .param p4, "overlayDirs"    # [Ljava/lang/String;
    .param p5, "libDirs"    # [Ljava/lang/String;
    .param p6, "displayId"    # I
    .param p7, "pkgInfo"    # Landroid/app/LoadedApk;

    .line 2159
    move-object v0, p0

    iget-object v1, v0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    .line 2161
    invoke-virtual/range {p7 .. p7}, Landroid/app/LoadedApk;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v9

    invoke-virtual/range {p7 .. p7}, Landroid/app/LoadedApk;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v10

    .line 2159
    const/4 v2, 0x0

    const/4 v8, 0x0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    invoke-virtual/range {v1 .. v10}, Landroid/app/ResourcesManager;->getResources(Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/lang/ClassLoader;)Landroid/content/res/Resources;

    move-result-object v1

    .line 2162
    .local v1, "r":Landroid/content/res/Resources;
    if-eqz v1, :cond_0

    instance-of v2, v1, Landroid/content/res/NubiaResources;

    if-eqz v2, :cond_0

    .line 2163
    move-object v2, v1

    check-cast v2, Landroid/content/res/NubiaResources;

    move-object v3, p1

    invoke-virtual {v2, v3}, Landroid/content/res/NubiaResources;->init(Ljava/lang/String;)V

    goto :goto_0

    .line 2165
    :cond_0
    move-object v3, p1

    :goto_0
    return-object v1
.end method

.method getTopLevelResources(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/app/LoadedApk;)Landroid/content/res/Resources;
    .locals 11
    .param p1, "resDir"    # Ljava/lang/String;
    .param p2, "splitResDirs"    # [Ljava/lang/String;
    .param p3, "overlayDirs"    # [Ljava/lang/String;
    .param p4, "libDirs"    # [Ljava/lang/String;
    .param p5, "displayId"    # I
    .param p6, "pkgInfo"    # Landroid/app/LoadedApk;

    .line 2151
    move-object v0, p0

    iget-object v1, v0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    .line 2152
    invoke-virtual/range {p6 .. p6}, Landroid/app/LoadedApk;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v9

    invoke-virtual/range {p6 .. p6}, Landroid/app/LoadedApk;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v10

    .line 2151
    const/4 v2, 0x0

    const/4 v8, 0x0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move/from16 v7, p5

    invoke-virtual/range {v1 .. v10}, Landroid/app/ResourcesManager;->getResources(Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/lang/ClassLoader;)Landroid/content/res/Resources;

    move-result-object v1

    return-object v1
.end method

.method getTransactionExecutor()Landroid/app/servertransaction/TransactionExecutor;
    .locals 1

    .line 2997
    iget-object v0, p0, Landroid/app/ActivityThread;->mTransactionExecutor:Landroid/app/servertransaction/TransactionExecutor;

    return-object v0
.end method

.method public handleActivityConfigurationChanged(Landroid/os/IBinder;Landroid/content/res/Configuration;I)V
    .locals 5
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .param p2, "overrideConfig"    # Landroid/content/res/Configuration;
    .param p3, "displayId"    # I

    .line 5746
    iget-object v0, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 5748
    .local v0, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    if-eqz v0, :cond_6

    iget-object v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    if-nez v1, :cond_0

    goto :goto_3

    .line 5752
    :cond_0
    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eq p3, v1, :cond_1

    iget-object v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    .line 5753
    invoke-virtual {v1}, Landroid/app/Activity;->getDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getDisplayId()I

    move-result v1

    if-eq p3, v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 5756
    .local v1, "movedToDifferentDisplay":Z
    :goto_0
    iput-object p2, v0, Landroid/app/ActivityThread$ActivityClientRecord;->overrideConfig:Landroid/content/res/Configuration;

    .line 5757
    iget-object v3, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-object v3, v3, Landroid/app/Activity;->mDecor:Landroid/view/View;

    if-eqz v3, :cond_2

    .line 5758
    iget-object v3, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-object v3, v3, Landroid/app/Activity;->mDecor:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v3

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    .line 5760
    .local v3, "viewRoot":Landroid/view/ViewRootImpl;
    :goto_1
    if-eqz v1, :cond_4

    .line 5765
    iget-object v4, p0, Landroid/app/ActivityThread;->mCompatConfiguration:Landroid/content/res/Configuration;

    invoke-direct {p0, v0, v4, p3, v2}, Landroid/app/ActivityThread;->performConfigurationChangedForActivity(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/content/res/Configuration;IZ)Landroid/content/res/Configuration;

    move-result-object v4

    .line 5767
    .local v4, "reportedConfig":Landroid/content/res/Configuration;
    if-eqz v3, :cond_3

    .line 5768
    invoke-virtual {v3, p3, v4}, Landroid/view/ViewRootImpl;->onMovedToDisplay(ILandroid/content/res/Configuration;)V

    .line 5770
    .end local v4    # "reportedConfig":Landroid/content/res/Configuration;
    :cond_3
    goto :goto_2

    .line 5773
    :cond_4
    iget-object v4, p0, Landroid/app/ActivityThread;->mCompatConfiguration:Landroid/content/res/Configuration;

    invoke-direct {p0, v0, v4}, Landroid/app/ActivityThread;->performConfigurationChangedForActivity(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/content/res/Configuration;)V

    .line 5777
    :goto_2
    if-eqz v3, :cond_5

    .line 5778
    invoke-virtual {v3, p3}, Landroid/view/ViewRootImpl;->updateConfiguration(I)V

    .line 5780
    :cond_5
    iput-boolean v2, p0, Landroid/app/ActivityThread;->mSomeActivitiesChanged:Z

    .line 5781
    return-void

    .line 5750
    .end local v1    # "movedToDifferentDisplay":Z
    .end local v3    # "viewRoot":Landroid/view/ViewRootImpl;
    :cond_6
    :goto_3
    return-void
.end method

.method handleApplicationInfoChanged(Landroid/content/pm/ApplicationInfo;)V
    .locals 7
    .param p1, "ai"    # Landroid/content/pm/ApplicationInfo;

    .line 5691
    iget-object v0, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    monitor-enter v0

    .line 5692
    :try_start_0
    iget-object v1, p0, Landroid/app/ActivityThread;->mPackages:Landroid/util/ArrayMap;

    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 5693
    .local v1, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/LoadedApk;

    goto :goto_0

    :cond_0
    move-object v3, v2

    .line 5694
    .local v3, "apk":Landroid/app/LoadedApk;
    :goto_0
    iget-object v4, p0, Landroid/app/ActivityThread;->mResourcePackages:Landroid/util/ArrayMap;

    iget-object v5, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    move-object v1, v4

    .line 5695
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/LoadedApk;

    goto :goto_1

    :cond_1
    move-object v4, v2

    .end local v1    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    :goto_1
    move-object v1, v4

    .line 5696
    .local v1, "resApk":Landroid/app/LoadedApk;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5697
    if-eqz v3, :cond_2

    .line 5698
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5699
    .local v0, "oldPaths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v3}, Landroid/app/LoadedApk;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    invoke-static {p0, v4, v0}, Landroid/app/LoadedApk;->makePaths(Landroid/app/ActivityThread;Landroid/content/pm/ApplicationInfo;Ljava/util/List;)V

    .line 5700
    invoke-virtual {v3, p1, v0}, Landroid/app/LoadedApk;->updateApplicationInfo(Landroid/content/pm/ApplicationInfo;Ljava/util/List;)V

    .line 5702
    .end local v0    # "oldPaths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    if-eqz v1, :cond_3

    .line 5703
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5704
    .restart local v0    # "oldPaths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v1}, Landroid/app/LoadedApk;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    invoke-static {p0, v4, v0}, Landroid/app/LoadedApk;->makePaths(Landroid/app/ActivityThread;Landroid/content/pm/ApplicationInfo;Ljava/util/List;)V

    .line 5705
    invoke-virtual {v1, p1, v0}, Landroid/app/LoadedApk;->updateApplicationInfo(Landroid/content/pm/ApplicationInfo;Ljava/util/List;)V

    .line 5707
    .end local v0    # "oldPaths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3
    iget-object v4, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    monitor-enter v4

    .line 5709
    :try_start_1
    iget-object v0, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    iget-object v5, p1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iget-object v6, p1, Landroid/content/pm/ApplicationInfo;->resourceDirs:[Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Landroid/app/ResourcesManager;->applyNewResourceDirsLocked(Ljava/lang/String;[Ljava/lang/String;)V

    .line 5710
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5712
    invoke-static {}, Landroid/app/ApplicationPackageManager;->configurationChanged()V

    .line 5718
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    .line 5719
    .local v0, "newConfig":Landroid/content/res/Configuration;
    iget-object v4, p0, Landroid/app/ActivityThread;->mConfiguration:Landroid/content/res/Configuration;

    if-eqz v4, :cond_4

    iget-object v4, p0, Landroid/app/ActivityThread;->mConfiguration:Landroid/content/res/Configuration;

    iget v4, v4, Landroid/content/res/Configuration;->assetsSeq:I

    goto :goto_2

    :cond_4
    const/4 v4, 0x0

    :goto_2
    add-int/lit8 v4, v4, 0x1

    iput v4, v0, Landroid/content/res/Configuration;->assetsSeq:I

    .line 5720
    invoke-direct {p0, v0, v2}, Landroid/app/ActivityThread;->handleConfigurationChanged(Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)V

    .line 5722
    invoke-direct {p0}, Landroid/app/ActivityThread;->relaunchAllActivities()V

    .line 5723
    return-void

    .line 5710
    .end local v0    # "newConfig":Landroid/content/res/Configuration;
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 5696
    .end local v1    # "resApk":Landroid/app/LoadedApk;
    .end local v3    # "apk":Landroid/app/LoadedApk;
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method public handleConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .param p1, "config"    # Landroid/content/res/Configuration;

    .line 5580
    const-string v0, "configChanged"

    const-wide/16 v1, 0x40

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 5581
    iget v0, p1, Landroid/content/res/Configuration;->densityDpi:I

    iput v0, p0, Landroid/app/ActivityThread;->mCurDefaultDisplayDpi:I

    .line 5582
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/ActivityThread;->mUpdatingSystemConfig:Z

    .line 5584
    const/4 v0, 0x0

    const/4 v3, 0x0

    :try_start_0
    invoke-direct {p0, p1, v0}, Landroid/app/ActivityThread;->handleConfigurationChanged(Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5586
    iput-boolean v3, p0, Landroid/app/ActivityThread;->mUpdatingSystemConfig:Z

    .line 5587
    nop

    .line 5588
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 5589
    return-void

    .line 5586
    :catchall_0
    move-exception v0

    iput-boolean v3, p0, Landroid/app/ActivityThread;->mUpdatingSystemConfig:Z

    throw v0
.end method

.method public handleDestroyActivity(Landroid/os/IBinder;ZIZLjava/lang/String;)V
    .locals 8
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "finishing"    # Z
    .param p3, "configChanges"    # I
    .param p4, "getNonConfigInstance"    # Z
    .param p5, "reason"    # Ljava/lang/String;

    .line 4983
    invoke-virtual/range {p0 .. p5}, Landroid/app/ActivityThread;->performDestroyActivity(Landroid/os/IBinder;ZIZLjava/lang/String;)Landroid/app/ActivityThread$ActivityClientRecord;

    move-result-object v0

    .line 4985
    .local v0, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    const/4 v1, 0x1

    if-eqz v0, :cond_7

    .line 4986
    invoke-static {v0, p2}, Landroid/app/ActivityThread;->cleanUpPendingRemoveWindows(Landroid/app/ActivityThread$ActivityClientRecord;Z)V

    .line 4987
    iget-object v2, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    .line 4988
    .local v2, "wm":Landroid/view/WindowManager;
    iget-object v3, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-object v3, v3, Landroid/app/Activity;->mDecor:Landroid/view/View;

    .line 4989
    .local v3, "v":Landroid/view/View;
    if-eqz v3, :cond_5

    .line 4990
    iget-object v4, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v4, v4, Landroid/app/Activity;->mVisibleFromServer:Z

    if-eqz v4, :cond_0

    .line 4991
    iget v4, p0, Landroid/app/ActivityThread;->mNumVisibleActivities:I

    sub-int/2addr v4, v1

    iput v4, p0, Landroid/app/ActivityThread;->mNumVisibleActivities:I

    .line 4993
    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    .line 4994
    .local v4, "wtoken":Landroid/os/IBinder;
    iget-object v5, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v5, v5, Landroid/app/Activity;->mWindowAdded:Z

    if-eqz v5, :cond_2

    .line 4995
    iget-boolean v5, v0, Landroid/app/ActivityThread$ActivityClientRecord;->mPreserveWindow:Z

    if-eqz v5, :cond_1

    .line 4998
    iget-object v5, v0, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    iput-object v5, v0, Landroid/app/ActivityThread$ActivityClientRecord;->mPendingRemoveWindow:Landroid/view/Window;

    .line 4999
    iput-object v2, v0, Landroid/app/ActivityThread$ActivityClientRecord;->mPendingRemoveWindowManager:Landroid/view/WindowManager;

    .line 5003
    iget-object v5, v0, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    invoke-virtual {v5}, Landroid/view/Window;->clearContentView()V

    goto :goto_0

    .line 5005
    :cond_1
    invoke-interface {v2, v3}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 5008
    :cond_2
    :goto_0
    if-eqz v4, :cond_3

    iget-object v5, v0, Landroid/app/ActivityThread$ActivityClientRecord;->mPendingRemoveWindow:Landroid/view/Window;

    if-nez v5, :cond_3

    .line 5009
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v5

    iget-object v6, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    .line 5010
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Activity"

    .line 5009
    invoke-virtual {v5, v4, v6, v7}, Landroid/view/WindowManagerGlobal;->closeAll(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 5011
    :cond_3
    iget-object v5, v0, Landroid/app/ActivityThread$ActivityClientRecord;->mPendingRemoveWindow:Landroid/view/Window;

    if-eqz v5, :cond_4

    .line 5016
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v5

    iget-object v6, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    .line 5017
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Activity"

    .line 5016
    invoke-virtual {v5, p1, v3, v6, v7}, Landroid/view/WindowManagerGlobal;->closeAllExceptView(Landroid/os/IBinder;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    .line 5019
    :cond_4
    :goto_1
    iget-object v5, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    const/4 v6, 0x0

    iput-object v6, v5, Landroid/app/Activity;->mDecor:Landroid/view/View;

    .line 5021
    .end local v4    # "wtoken":Landroid/os/IBinder;
    :cond_5
    iget-object v4, v0, Landroid/app/ActivityThread$ActivityClientRecord;->mPendingRemoveWindow:Landroid/view/Window;

    if-nez v4, :cond_6

    .line 5028
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v4

    iget-object v5, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    .line 5029
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Activity"

    .line 5028
    invoke-virtual {v4, p1, v5, v6}, Landroid/view/WindowManagerGlobal;->closeAll(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;)V

    .line 5036
    :cond_6
    iget-object v4, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    .line 5037
    .local v4, "c":Landroid/content/Context;
    instance-of v5, v4, Landroid/app/ContextImpl;

    if-eqz v5, :cond_7

    .line 5038
    move-object v5, v4

    check-cast v5, Landroid/app/ContextImpl;

    iget-object v6, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    .line 5039
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Activity"

    .line 5038
    invoke-virtual {v5, v6, v7}, Landroid/app/ContextImpl;->scheduleFinalCleanup(Ljava/lang/String;Ljava/lang/String;)V

    .line 5042
    .end local v2    # "wm":Landroid/view/WindowManager;
    .end local v3    # "v":Landroid/view/View;
    .end local v4    # "c":Landroid/content/Context;
    :cond_7
    if-eqz p2, :cond_8

    .line 5044
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/app/IActivityManager;->activityDestroyed(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5047
    goto :goto_2

    .line 5045
    :catch_0
    move-exception v1

    .line 5046
    .local v1, "ex":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 5049
    .end local v1    # "ex":Landroid/os/RemoteException;
    :cond_8
    :goto_2
    iput-boolean v1, p0, Landroid/app/ActivityThread;->mSomeActivitiesChanged:Z

    .line 5050
    return-void
.end method

.method final handleDispatchPackageBroadcast(I[Ljava/lang/String;)V
    .locals 10
    .param p1, "cmd"    # I
    .param p2, "packages"    # [Ljava/lang/String;

    .line 5851
    const/4 v0, 0x0

    .line 5852
    .local v0, "hasPkgInfo":Z
    const/4 v1, 0x1

    if-eqz p1, :cond_9

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_8

    .line 5883
    :pswitch_0
    if-nez p2, :cond_0

    .line 5884
    goto/16 :goto_8

    .line 5886
    :cond_0
    iget-object v2, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    monitor-enter v2

    .line 5887
    :try_start_0
    array-length v3, p2

    sub-int/2addr v3, v1

    .local v3, "i":I
    :goto_0
    move v1, v3

    .end local v3    # "i":I
    .local v1, "i":I
    if-ltz v1, :cond_8

    .line 5888
    iget-object v3, p0, Landroid/app/ActivityThread;->mPackages:Landroid/util/ArrayMap;

    aget-object v4, p2, v1

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 5889
    .local v3, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    const/4 v4, 0x0

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/LoadedApk;

    goto :goto_1

    :cond_1
    move-object v5, v4

    .line 5890
    .local v5, "pkgInfo":Landroid/app/LoadedApk;
    :goto_1
    if-eqz v5, :cond_2

    .line 5891
    const/4 v0, 0x1

    goto :goto_2

    .line 5893
    :cond_2
    iget-object v6, p0, Landroid/app/ActivityThread;->mResourcePackages:Landroid/util/ArrayMap;

    aget-object v7, p2, v1

    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/ref/WeakReference;

    move-object v3, v6

    .line 5894
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/LoadedApk;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    :cond_3
    move-object v5, v4

    .line 5895
    if-eqz v5, :cond_4

    .line 5896
    const/4 v0, 0x1

    .line 5903
    :cond_4
    :goto_2
    if-eqz v5, :cond_7

    .line 5905
    :try_start_1
    aget-object v4, p2, v1

    .line 5906
    .local v4, "packageName":Ljava/lang/String;
    sget-object v6, Landroid/app/ActivityThread;->sPackageManager:Landroid/content/pm/IPackageManager;

    const/16 v7, 0x400

    .line 5910
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    .line 5907
    invoke-interface {v6, v4, v7, v8}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    .line 5912
    .local v6, "aInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v7, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v7

    if-lez v7, :cond_6

    .line 5913
    iget-object v7, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 5914
    .local v8, "ar":Landroid/app/ActivityThread$ActivityClientRecord;
    iget-object v9, v8, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 5915
    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 5916
    iget-object v9, v8, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    iput-object v6, v9, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 5917
    iput-object v5, v8, Landroid/app/ActivityThread$ActivityClientRecord;->packageInfo:Landroid/app/LoadedApk;

    .line 5919
    .end local v8    # "ar":Landroid/app/ActivityThread$ActivityClientRecord;
    :cond_5
    goto :goto_3

    .line 5921
    :cond_6
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 5922
    .local v7, "oldPaths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v5}, Landroid/app/LoadedApk;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    invoke-static {p0, v8, v7}, Landroid/app/LoadedApk;->makePaths(Landroid/app/ActivityThread;Landroid/content/pm/ApplicationInfo;Ljava/util/List;)V

    .line 5923
    invoke-virtual {v5, v6, v7}, Landroid/app/LoadedApk;->updateApplicationInfo(Landroid/content/pm/ApplicationInfo;Ljava/util/List;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5925
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v6    # "aInfo":Landroid/content/pm/ApplicationInfo;
    .end local v7    # "oldPaths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto :goto_4

    .line 5924
    :catch_0
    move-exception v4

    .line 5887
    .end local v3    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    .end local v5    # "pkgInfo":Landroid/app/LoadedApk;
    :cond_7
    :goto_4
    add-int/lit8 v3, v1, -0x1

    .end local v1    # "i":I
    .local v3, "i":I
    goto/16 :goto_0

    .line 5928
    .end local v3    # "i":I
    :cond_8
    :try_start_2
    monitor-exit v2

    goto :goto_8

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 5856
    :cond_9
    :pswitch_1
    if-nez p1, :cond_a

    move v2, v1

    goto :goto_5

    :cond_a
    const/4 v2, 0x0

    .line 5857
    .local v2, "killApp":Z
    :goto_5
    if-nez p2, :cond_b

    .line 5858
    goto :goto_8

    .line 5860
    :cond_b
    iget-object v3, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    monitor-enter v3

    .line 5861
    :try_start_3
    array-length v4, p2

    sub-int/2addr v4, v1

    .local v4, "i":I
    :goto_6
    move v1, v4

    .end local v4    # "i":I
    .restart local v1    # "i":I
    if-ltz v1, :cond_f

    .line 5862
    if-nez v0, :cond_d

    .line 5863
    iget-object v4, p0, Landroid/app/ActivityThread;->mPackages:Landroid/util/ArrayMap;

    aget-object v5, p2, v1

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    .line 5864
    .local v4, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    if-eqz v4, :cond_c

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_c

    .line 5865
    const/4 v0, 0x1

    goto :goto_7

    .line 5867
    :cond_c
    iget-object v5, p0, Landroid/app/ActivityThread;->mResourcePackages:Landroid/util/ArrayMap;

    aget-object v6, p2, v1

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ref/WeakReference;

    move-object v4, v5

    .line 5868
    if-eqz v4, :cond_d

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_d

    .line 5869
    const/4 v0, 0x1

    .line 5873
    .end local v4    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    :cond_d
    :goto_7
    if-eqz v2, :cond_e

    .line 5874
    iget-object v4, p0, Landroid/app/ActivityThread;->mPackages:Landroid/util/ArrayMap;

    aget-object v5, p2, v1

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5875
    iget-object v4, p0, Landroid/app/ActivityThread;->mResourcePackages:Landroid/util/ArrayMap;

    aget-object v5, p2, v1

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5861
    :cond_e
    add-int/lit8 v4, v1, -0x1

    .end local v1    # "i":I
    .local v4, "i":I
    goto :goto_6

    .line 5878
    .end local v4    # "i":I
    :cond_f
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 5879
    nop

    .line 5932
    .end local v2    # "killApp":Z
    :goto_8
    invoke-static {p1, p2, v0}, Landroid/app/ApplicationPackageManager;->handlePackageBroadcast(I[Ljava/lang/String;Z)V

    .line 5933
    return-void

    .line 5878
    .restart local v2    # "killApp":Z
    :catchall_1
    move-exception v1

    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public handleInstallProvider(Landroid/content/pm/ProviderInfo;)V
    .locals 4
    .param p1, "info"    # Landroid/content/pm/ProviderInfo;

    .line 3598
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 3600
    .local v0, "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :try_start_0
    iget-object v1, p0, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/content/pm/ProviderInfo;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Landroid/app/ActivityThread;->installContentProviders(Landroid/content/Context;Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3602
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 3603
    nop

    .line 3604
    return-void

    .line 3602
    :catchall_0
    move-exception v1

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v1
.end method

.method public handleLaunchActivity(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/app/servertransaction/PendingTransactionActions;Landroid/content/Intent;)Landroid/app/Activity;
    .locals 5
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;
    .param p2, "pendingActions"    # Landroid/app/servertransaction/PendingTransactionActions;
    .param p3, "customIntent"    # Landroid/content/Intent;

    .line 3393
    invoke-virtual {p0}, Landroid/app/ActivityThread;->unscheduleGcIdler()V

    .line 3394
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/ActivityThread;->mSomeActivitiesChanged:Z

    .line 3396
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->profilerInfo:Landroid/app/ProfilerInfo;

    if-eqz v1, :cond_0

    .line 3397
    iget-object v1, p0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->profilerInfo:Landroid/app/ProfilerInfo;

    invoke-virtual {v1, v2}, Landroid/app/ActivityThread$Profiler;->setProfiler(Landroid/app/ProfilerInfo;)V

    .line 3398
    iget-object v1, p0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    invoke-virtual {v1}, Landroid/app/ActivityThread$Profiler;->startProfiling()V

    .line 3402
    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, v1, v1}, Landroid/app/ActivityThread;->handleConfigurationChanged(Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)V

    .line 3408
    sget-boolean v2, Landroid/view/ThreadedRenderer;->sRendererDisabled:Z

    if-nez v2, :cond_1

    .line 3409
    invoke-static {}, Landroid/os/GraphicsEnvironment;->earlyInitEGL()V

    .line 3411
    :cond_1
    invoke-static {}, Landroid/view/WindowManagerGlobal;->initialize()V

    .line 3413
    invoke-direct {p0, p1, p3}, Landroid/app/ActivityThread;->performLaunchActivity(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/content/Intent;)Landroid/app/Activity;

    move-result-object v2

    .line 3415
    .local v2, "a":Landroid/app/Activity;
    if-eqz v2, :cond_2

    .line 3416
    new-instance v1, Landroid/content/res/Configuration;

    iget-object v3, p0, Landroid/app/ActivityThread;->mConfiguration:Landroid/content/res/Configuration;

    invoke-direct {v1, v3}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->createdConfig:Landroid/content/res/Configuration;

    .line 3417
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->reportSizeConfigurations(Landroid/app/ActivityThread$ActivityClientRecord;)V

    .line 3418
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v1, v1, Landroid/app/Activity;->mFinished:Z

    if-nez v1, :cond_3

    if-eqz p2, :cond_3

    .line 3419
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    invoke-virtual {p2, v1}, Landroid/app/servertransaction/PendingTransactionActions;->setOldState(Landroid/os/Bundle;)V

    .line 3420
    invoke-virtual {p2, v0}, Landroid/app/servertransaction/PendingTransactionActions;->setRestoreInstanceState(Z)V

    .line 3421
    invoke-virtual {p2, v0}, Landroid/app/servertransaction/PendingTransactionActions;->setCallOnPostCreate(Z)V

    goto :goto_0

    .line 3426
    :cond_2
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    .line 3427
    const/4 v4, 0x0

    invoke-interface {v0, v3, v4, v1, v4}, Landroid/app/IActivityManager;->finishActivity(Landroid/os/IBinder;ILandroid/content/Intent;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3431
    nop

    .line 3434
    :cond_3
    :goto_0
    return-object v2

    .line 3429
    :catch_0
    move-exception v0

    .line 3430
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method final handleLowMemory()V
    .locals 4

    .line 5936
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/app/ActivityThread;->collectComponentCallbacks(ZLandroid/content/res/Configuration;)Ljava/util/ArrayList;

    move-result-object v0

    .line 5938
    .local v0, "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentCallbacks2;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 5939
    .local v1, "N":I
    const/4 v2, 0x0

    .line 5939
    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 5940
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentCallbacks2;

    invoke-interface {v3}, Landroid/content/ComponentCallbacks2;->onLowMemory()V

    .line 5939
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5944
    .end local v2    # "i":I
    :cond_0
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    const/16 v3, 0x3e8

    if-eq v2, v3, :cond_1

    .line 5945
    invoke-static {}, Landroid/database/sqlite/SQLiteDatabase;->releaseMemory()I

    move-result v2

    .line 5946
    .local v2, "sqliteReleased":I
    const v3, 0x124fb

    invoke-static {v3, v2}, Landroid/util/EventLog;->writeEvent(II)I

    .line 5950
    .end local v2    # "sqliteReleased":I
    :cond_1
    invoke-static {}, Landroid/graphics/Canvas;->freeCaches()V

    .line 5953
    invoke-static {}, Landroid/graphics/Canvas;->freeTextLayoutCaches()V

    .line 5955
    const-string/jumbo v2, "mem"

    invoke-static {v2}, Lcom/android/internal/os/BinderInternal;->forceGc(Ljava/lang/String;)V

    .line 5956
    return-void
.end method

.method public handleMultiWindowModeChanged(Landroid/os/IBinder;ZLandroid/content/res/Configuration;)V
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "isInMultiWindowMode"    # Z
    .param p3, "overrideConfig"    # Landroid/content/res/Configuration;

    .line 3630
    iget-object v0, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 3631
    .local v0, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    if-eqz v0, :cond_1

    .line 3632
    new-instance v1, Landroid/content/res/Configuration;

    iget-object v2, p0, Landroid/app/ActivityThread;->mConfiguration:Landroid/content/res/Configuration;

    invoke-direct {v1, v2}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 3633
    .local v1, "newConfig":Landroid/content/res/Configuration;
    if-eqz p3, :cond_0

    .line 3634
    invoke-virtual {v1, p3}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 3636
    :cond_0
    iget-object v2, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v2, p2, v1}, Landroid/app/Activity;->dispatchMultiWindowModeChanged(ZLandroid/content/res/Configuration;)V

    .line 3638
    .end local v1    # "newConfig":Landroid/content/res/Configuration;
    :cond_1
    return-void
.end method

.method public handleNewIntent(Landroid/os/IBinder;Ljava/util/List;Z)V
    .locals 0
    .param p1, "token"    # Landroid/os/IBinder;
    .param p3, "andPause"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "Ljava/util/List<",
            "Lcom/android/internal/content/ReferrerIntent;",
            ">;Z)V"
        }
    .end annotation

    .line 3506
    .local p2, "intents":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/ReferrerIntent;>;"
    invoke-virtual {p0, p1, p2, p3}, Landroid/app/ActivityThread;->performNewIntents(Landroid/os/IBinder;Ljava/util/List;Z)V

    .line 3507
    return-void
.end method

.method public handlePauseActivity(Landroid/os/IBinder;ZZILandroid/app/servertransaction/PendingTransactionActions;Ljava/lang/String;)V
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "finished"    # Z
    .param p3, "userLeaving"    # Z
    .param p4, "configChanges"    # I
    .param p5, "pendingActions"    # Landroid/app/servertransaction/PendingTransactionActions;
    .param p6, "reason"    # Ljava/lang/String;

    .line 4437
    iget-object v0, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 4438
    .local v0, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    if-eqz v0, :cond_2

    .line 4439
    if-eqz p3, :cond_0

    .line 4440
    invoke-virtual {p0, v0}, Landroid/app/ActivityThread;->performUserLeavingActivity(Landroid/app/ActivityThread$ActivityClientRecord;)V

    .line 4443
    :cond_0
    iget-object v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget v2, v1, Landroid/app/Activity;->mConfigChangeFlags:I

    or-int/2addr v2, p4

    iput v2, v1, Landroid/app/Activity;->mConfigChangeFlags:I

    .line 4444
    invoke-direct {p0, v0, p2, p6, p5}, Landroid/app/ActivityThread;->performPauseActivity(Landroid/app/ActivityThread$ActivityClientRecord;ZLjava/lang/String;Landroid/app/servertransaction/PendingTransactionActions;)Landroid/os/Bundle;

    .line 4447
    invoke-static {v0}, Landroid/app/ActivityThread$ActivityClientRecord;->access$4400(Landroid/app/ActivityThread$ActivityClientRecord;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4448
    invoke-static {}, Landroid/app/QueuedWork;->waitToFinish()V

    .line 4450
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/app/ActivityThread;->mSomeActivitiesChanged:Z

    .line 4452
    :cond_2
    return-void
.end method

.method public handlePictureInPictureModeChanged(Landroid/os/IBinder;ZLandroid/content/res/Configuration;)V
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "isInPipMode"    # Z
    .param p3, "overrideConfig"    # Landroid/content/res/Configuration;

    .line 3643
    iget-object v0, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 3644
    .local v0, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    if-eqz v0, :cond_1

    .line 3645
    new-instance v1, Landroid/content/res/Configuration;

    iget-object v2, p0, Landroid/app/ActivityThread;->mConfiguration:Landroid/content/res/Configuration;

    invoke-direct {v1, v2}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 3646
    .local v1, "newConfig":Landroid/content/res/Configuration;
    if-eqz p3, :cond_0

    .line 3647
    invoke-virtual {v1, p3}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 3649
    :cond_0
    iget-object v2, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v2, p2, v1}, Landroid/app/Activity;->dispatchPictureInPictureModeChanged(ZLandroid/content/res/Configuration;)V

    .line 3651
    .end local v1    # "newConfig":Landroid/content/res/Configuration;
    :cond_1
    return-void
.end method

.method final handleProfilerControl(ZLandroid/app/ProfilerInfo;I)V
    .locals 4
    .param p1, "start"    # Z
    .param p2, "profilerInfo"    # Landroid/app/ProfilerInfo;
    .param p3, "profileType"    # I

    .line 5784
    if-eqz p1, :cond_0

    .line 5786
    nop

    .line 5788
    :try_start_0
    iget-object v0, p0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    invoke-virtual {v0, p2}, Landroid/app/ActivityThread$Profiler;->setProfiler(Landroid/app/ProfilerInfo;)V

    .line 5789
    iget-object v0, p0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    invoke-virtual {v0}, Landroid/app/ActivityThread$Profiler;->startProfiling()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5796
    :goto_0
    invoke-virtual {p2}, Landroid/app/ProfilerInfo;->closeFd()V

    .line 5797
    goto :goto_2

    .line 5796
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 5792
    :catch_0
    move-exception v0

    .line 5793
    .local v0, "e":Ljava/lang/RuntimeException;
    :try_start_1
    const-string v1, "ActivityThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Profiling failed on path "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p2, Landroid/app/ProfilerInfo;->profileFile:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " -- can the process access this path?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v0    # "e":Ljava/lang/RuntimeException;
    goto :goto_0

    .line 5796
    :goto_1
    invoke-virtual {p2}, Landroid/app/ProfilerInfo;->closeFd()V

    throw v0

    .line 5799
    :cond_0
    nop

    .line 5801
    iget-object v0, p0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    invoke-virtual {v0}, Landroid/app/ActivityThread$Profiler;->stopProfiling()V

    .line 5805
    :goto_2
    return-void
.end method

.method public handleRelaunchActivity(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/app/servertransaction/PendingTransactionActions;)V
    .locals 16
    .param p1, "tmp"    # Landroid/app/ActivityThread$ActivityClientRecord;
    .param p2, "pendingActions"    # Landroid/app/servertransaction/PendingTransactionActions;

    move-object/from16 v10, p0

    .line 5106
    move-object/from16 v11, p2

    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityThread;->unscheduleGcIdler()V

    .line 5107
    const/4 v0, 0x1

    iput-boolean v0, v10, Landroid/app/ActivityThread;->mSomeActivitiesChanged:Z

    .line 5109
    const/4 v1, 0x0

    .line 5110
    .local v1, "changedConfig":Landroid/content/res/Configuration;
    const/4 v2, 0x0

    .line 5115
    .local v2, "configChanges":I
    iget-object v3, v10, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    monitor-enter v3

    .line 5116
    :try_start_0
    iget-object v4, v10, Landroid/app/ActivityThread;->mRelaunchingActivities:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 5117
    .local v4, "N":I
    move-object/from16 v5, p1

    :try_start_1
    iget-object v6, v5, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 5118
    .local v6, "token":Landroid/os/IBinder;
    const/4 v5, 0x0

    .line 5119
    .end local p1    # "tmp":Landroid/app/ActivityThread$ActivityClientRecord;
    .local v5, "tmp":Landroid/app/ActivityThread$ActivityClientRecord;
    const/4 v7, 0x0

    move v13, v2

    move-object v12, v5

    .end local v2    # "configChanges":I
    .end local v5    # "tmp":Landroid/app/ActivityThread$ActivityClientRecord;
    .local v7, "i":I
    .local v12, "tmp":Landroid/app/ActivityThread$ActivityClientRecord;
    .local v13, "configChanges":I
    :goto_0
    move v2, v7

    .end local v7    # "i":I
    .local v2, "i":I
    if-ge v2, v4, :cond_1

    .line 5120
    :try_start_2
    iget-object v5, v10, Landroid/app/ActivityThread;->mRelaunchingActivities:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 5121
    .local v5, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    iget-object v7, v5, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-ne v7, v6, :cond_0

    .line 5122
    move-object v7, v5

    .line 5123
    .end local v12    # "tmp":Landroid/app/ActivityThread$ActivityClientRecord;
    .local v7, "tmp":Landroid/app/ActivityThread$ActivityClientRecord;
    :try_start_3
    iget v8, v7, Landroid/app/ActivityThread$ActivityClientRecord;->pendingConfigChanges:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    or-int/2addr v8, v13

    .line 5124
    .end local v13    # "configChanges":I
    .local v8, "configChanges":I
    :try_start_4
    iget-object v9, v10, Landroid/app/ActivityThread;->mRelaunchingActivities:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 5125
    add-int/lit8 v2, v2, -0x1

    .line 5126
    add-int/lit8 v4, v4, -0x1

    .line 5119
    .end local v5    # "r":Landroid/app/ActivityThread$ActivityClientRecord;
    move-object v12, v7

    move v13, v8

    goto :goto_1

    .line 5143
    .end local v2    # "i":I
    .end local v4    # "N":I
    .end local v6    # "token":Landroid/os/IBinder;
    :catchall_0
    move-exception v0

    move-object v12, v7

    move v2, v8

    goto/16 :goto_4

    .end local v8    # "configChanges":I
    .restart local v13    # "configChanges":I
    :catchall_1
    move-exception v0

    move-object v12, v7

    goto :goto_2

    .line 5119
    .end local v7    # "tmp":Landroid/app/ActivityThread$ActivityClientRecord;
    .restart local v2    # "i":I
    .restart local v4    # "N":I
    .restart local v6    # "token":Landroid/os/IBinder;
    .restart local v12    # "tmp":Landroid/app/ActivityThread$ActivityClientRecord;
    :cond_0
    :goto_1
    add-int/lit8 v7, v2, 0x1

    .end local v2    # "i":I
    .local v7, "i":I
    goto :goto_0

    .line 5143
    .end local v4    # "N":I
    .end local v6    # "token":Landroid/os/IBinder;
    .end local v7    # "i":I
    :catchall_2
    move-exception v0

    .end local v13    # "configChanges":I
    .local v2, "configChanges":I
    :goto_2
    move v2, v13

    goto/16 :goto_4

    .line 5130
    .end local v2    # "configChanges":I
    .restart local v4    # "N":I
    .restart local v6    # "token":Landroid/os/IBinder;
    .restart local v13    # "configChanges":I
    :cond_1
    if-nez v12, :cond_2

    .line 5132
    :try_start_5
    monitor-exit v3

    return-void

    .line 5139
    :cond_2
    iget-object v2, v10, Landroid/app/ActivityThread;->mPendingConfiguration:Landroid/content/res/Configuration;

    const/4 v5, 0x0

    if-eqz v2, :cond_3

    .line 5140
    iget-object v2, v10, Landroid/app/ActivityThread;->mPendingConfiguration:Landroid/content/res/Configuration;

    move-object v1, v2

    .line 5141
    iput-object v5, v10, Landroid/app/ActivityThread;->mPendingConfiguration:Landroid/content/res/Configuration;

    .line 5143
    .end local v4    # "N":I
    .end local v6    # "token":Landroid/os/IBinder;
    :cond_3
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 5145
    iget-object v2, v12, Landroid/app/ActivityThread$ActivityClientRecord;->createdConfig:Landroid/content/res/Configuration;

    if-eqz v2, :cond_6

    .line 5149
    iget-object v2, v10, Landroid/app/ActivityThread;->mConfiguration:Landroid/content/res/Configuration;

    if-eqz v2, :cond_4

    iget-object v2, v12, Landroid/app/ActivityThread$ActivityClientRecord;->createdConfig:Landroid/content/res/Configuration;

    iget-object v3, v10, Landroid/app/ActivityThread;->mConfiguration:Landroid/content/res/Configuration;

    .line 5150
    invoke-virtual {v2, v3}, Landroid/content/res/Configuration;->isOtherSeqNewer(Landroid/content/res/Configuration;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, v10, Landroid/app/ActivityThread;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v3, v12, Landroid/app/ActivityThread$ActivityClientRecord;->createdConfig:Landroid/content/res/Configuration;

    .line 5151
    invoke-virtual {v2, v3}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v2

    if-eqz v2, :cond_6

    .line 5152
    :cond_4
    if-eqz v1, :cond_5

    iget-object v2, v12, Landroid/app/ActivityThread$ActivityClientRecord;->createdConfig:Landroid/content/res/Configuration;

    .line 5153
    invoke-virtual {v2, v1}, Landroid/content/res/Configuration;->isOtherSeqNewer(Landroid/content/res/Configuration;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 5154
    :cond_5
    iget-object v1, v12, Landroid/app/ActivityThread$ActivityClientRecord;->createdConfig:Landroid/content/res/Configuration;

    .line 5163
    .end local v1    # "changedConfig":Landroid/content/res/Configuration;
    .local v14, "changedConfig":Landroid/content/res/Configuration;
    :cond_6
    move-object v14, v1

    if-eqz v14, :cond_7

    .line 5164
    iget v1, v14, Landroid/content/res/Configuration;->densityDpi:I

    iput v1, v10, Landroid/app/ActivityThread;->mCurDefaultDisplayDpi:I

    .line 5165
    invoke-direct/range {p0 .. p0}, Landroid/app/ActivityThread;->updateDefaultDensity()V

    .line 5166
    invoke-direct {v10, v14, v5}, Landroid/app/ActivityThread;->handleConfigurationChanged(Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)V

    .line 5169
    :cond_7
    iget-object v1, v10, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    iget-object v2, v12, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 5171
    .local v15, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    if-nez v15, :cond_8

    .line 5172
    return-void

    .line 5175
    :cond_8
    iget-object v1, v15, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget v2, v1, Landroid/app/Activity;->mConfigChangeFlags:I

    or-int/2addr v2, v13

    iput v2, v1, Landroid/app/Activity;->mConfigChangeFlags:I

    .line 5176
    iget-boolean v1, v12, Landroid/app/ActivityThread$ActivityClientRecord;->mPreserveWindow:Z

    iput-boolean v1, v15, Landroid/app/ActivityThread$ActivityClientRecord;->mPreserveWindow:Z

    .line 5178
    iget-object v1, v15, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iput-boolean v0, v1, Landroid/app/Activity;->mChangingConfigurations:Z

    .line 5192
    :try_start_6
    iget-boolean v1, v15, Landroid/app/ActivityThread$ActivityClientRecord;->mPreserveWindow:Z

    if-eqz v1, :cond_9

    .line 5193
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowSession()Landroid/view/IWindowSession;

    move-result-object v1

    iget-object v2, v15, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    invoke-interface {v1, v2, v0}, Landroid/view/IWindowSession;->prepareToReplaceWindows(Landroid/os/IBinder;Z)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0

    .line 5198
    :cond_9
    nop

    .line 5200
    iget-object v4, v12, Landroid/app/ActivityThread$ActivityClientRecord;->pendingResults:Ljava/util/List;

    iget-object v5, v12, Landroid/app/ActivityThread$ActivityClientRecord;->pendingIntents:Ljava/util/List;

    iget-boolean v7, v12, Landroid/app/ActivityThread$ActivityClientRecord;->startsNotResumed:Z

    iget-object v8, v12, Landroid/app/ActivityThread$ActivityClientRecord;->overrideConfig:Landroid/content/res/Configuration;

    const-string v9, "handleRelaunchActivity"

    move-object v1, v10

    move-object v2, v15

    move v3, v13

    move-object v6, v11

    invoke-direct/range {v1 .. v9}, Landroid/app/ActivityThread;->handleRelaunchActivityInner(Landroid/app/ActivityThread$ActivityClientRecord;ILjava/util/List;Ljava/util/List;Landroid/app/servertransaction/PendingTransactionActions;ZLandroid/content/res/Configuration;Ljava/lang/String;)V

    .line 5203
    if-eqz v11, :cond_a

    .line 5205
    invoke-virtual {v11, v0}, Landroid/app/servertransaction/PendingTransactionActions;->setReportRelaunchToWindowManager(Z)V

    .line 5207
    :cond_a
    return-void

    .line 5196
    :catch_0
    move-exception v0

    .line 5197
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 5143
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v12    # "tmp":Landroid/app/ActivityThread$ActivityClientRecord;
    .end local v13    # "configChanges":I
    .end local v14    # "changedConfig":Landroid/content/res/Configuration;
    .end local v15    # "r":Landroid/app/ActivityThread$ActivityClientRecord;
    .restart local v1    # "changedConfig":Landroid/content/res/Configuration;
    .restart local v2    # "configChanges":I
    .restart local p1    # "tmp":Landroid/app/ActivityThread$ActivityClientRecord;
    :catchall_3
    move-exception v0

    goto :goto_3

    :catchall_4
    move-exception v0

    move-object/from16 v5, p1

    .end local p1    # "tmp":Landroid/app/ActivityThread$ActivityClientRecord;
    .restart local v12    # "tmp":Landroid/app/ActivityThread$ActivityClientRecord;
    :goto_3
    move-object v12, v5

    :goto_4
    :try_start_7
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    throw v0

    :catchall_5
    move-exception v0

    goto :goto_4
.end method

.method public handleRequestAssistContextExtras(Landroid/app/ActivityThread$RequestAssistContextExtras;)V
    .locals 14
    .param p1, "cmd"    # Landroid/app/ActivityThread$RequestAssistContextExtras;

    .line 3514
    iget v0, p1, Landroid/app/ActivityThread$RequestAssistContextExtras;->requestType:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 3517
    .local v0, "forAutofill":Z
    :goto_0
    iget v3, p0, Landroid/app/ActivityThread;->mLastSessionId:I

    iget v4, p1, Landroid/app/ActivityThread$RequestAssistContextExtras;->sessionId:I

    if-eq v3, v4, :cond_2

    .line 3519
    iget v3, p1, Landroid/app/ActivityThread$RequestAssistContextExtras;->sessionId:I

    iput v3, p0, Landroid/app/ActivityThread;->mLastSessionId:I

    .line 3520
    iget-object v3, p0, Landroid/app/ActivityThread;->mLastAssistStructures:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v2

    .local v3, "i":I
    :goto_1
    if-ltz v3, :cond_2

    .line 3521
    iget-object v4, p0, Landroid/app/ActivityThread;->mLastAssistStructures:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/assist/AssistStructure;

    .line 3522
    .local v4, "structure":Landroid/app/assist/AssistStructure;
    if-eqz v4, :cond_1

    .line 3523
    invoke-virtual {v4}, Landroid/app/assist/AssistStructure;->clearSendChannel()V

    .line 3525
    :cond_1
    iget-object v5, p0, Landroid/app/ActivityThread;->mLastAssistStructures:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3520
    .end local v4    # "structure":Landroid/app/assist/AssistStructure;
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 3529
    .end local v3    # "i":I
    :cond_2
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 3530
    .local v3, "data":Landroid/os/Bundle;
    const/4 v4, 0x0

    .line 3531
    .restart local v4    # "structure":Landroid/app/assist/AssistStructure;
    if-eqz v0, :cond_3

    const/4 v5, 0x0

    goto :goto_2

    :cond_3
    new-instance v5, Landroid/app/assist/AssistContent;

    invoke-direct {v5}, Landroid/app/assist/AssistContent;-><init>()V

    :goto_2
    move-object v10, v5

    .line 3532
    .local v10, "content":Landroid/app/assist/AssistContent;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    .line 3533
    .local v11, "startTime":J
    iget-object v5, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    iget-object v6, p1, Landroid/app/ActivityThread$RequestAssistContextExtras;->activityToken:Landroid/os/IBinder;

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v13, v5

    check-cast v13, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 3534
    .local v13, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    const/4 v5, 0x0

    .line 3535
    .local v5, "referrer":Landroid/net/Uri;
    if-eqz v13, :cond_a

    .line 3536
    if-nez v0, :cond_4

    .line 3537
    iget-object v6, v13, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v6

    iget-object v7, v13, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v6, v7, v3}, Landroid/app/Application;->dispatchOnProvideAssistData(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 3538
    iget-object v6, v13, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v6, v3}, Landroid/app/Activity;->onProvideAssistData(Landroid/os/Bundle;)V

    .line 3539
    iget-object v6, v13, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->onProvideReferrer()Landroid/net/Uri;

    move-result-object v5

    .line 3541
    :cond_4
    iget v6, p1, Landroid/app/ActivityThread$RequestAssistContextExtras;->requestType:I

    if-eq v6, v2, :cond_5

    if-eqz v0, :cond_a

    .line 3542
    :cond_5
    new-instance v6, Landroid/app/assist/AssistStructure;

    iget-object v7, v13, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget v8, p1, Landroid/app/ActivityThread$RequestAssistContextExtras;->flags:I

    invoke-direct {v6, v7, v0, v8}, Landroid/app/assist/AssistStructure;-><init>(Landroid/app/Activity;ZI)V

    move-object v4, v6

    .line 3543
    iget-object v6, v13, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    .line 3544
    .local v6, "activityIntent":Landroid/content/Intent;
    iget-object v7, v13, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    if-eqz v7, :cond_7

    iget-object v7, v13, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    .line 3545
    invoke-virtual {v7}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v7

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v7, v7, 0x2000

    if-nez v7, :cond_6

    goto :goto_3

    :cond_6
    goto :goto_4

    :cond_7
    :goto_3
    move v1, v2

    .line 3547
    .local v1, "notSecure":Z
    :goto_4
    if-eqz v6, :cond_8

    if-eqz v1, :cond_8

    .line 3548
    if-nez v0, :cond_9

    .line 3549
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 3550
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/content/Intent;->getFlags()I

    move-result v7

    and-int/lit8 v7, v7, -0x43

    invoke-virtual {v2, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3552
    invoke-virtual {v2}, Landroid/content/Intent;->removeUnsafeExtras()V

    .line 3553
    invoke-virtual {v10, v2}, Landroid/app/assist/AssistContent;->setDefaultIntent(Landroid/content/Intent;)V

    .line 3554
    .end local v2    # "intent":Landroid/content/Intent;
    goto :goto_5

    .line 3556
    :cond_8
    if-nez v0, :cond_9

    .line 3557
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v10, v2}, Landroid/app/assist/AssistContent;->setDefaultIntent(Landroid/content/Intent;)V

    .line 3560
    :cond_9
    :goto_5
    if-nez v0, :cond_a

    .line 3561
    iget-object v2, v13, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v2, v10}, Landroid/app/Activity;->onProvideAssistContent(Landroid/app/assist/AssistContent;)V

    .line 3565
    .end local v1    # "notSecure":Z
    .end local v6    # "activityIntent":Landroid/content/Intent;
    :cond_a
    move-object v1, v5

    .end local v5    # "referrer":Landroid/net/Uri;
    .local v1, "referrer":Landroid/net/Uri;
    if-nez v4, :cond_b

    .line 3566
    new-instance v2, Landroid/app/assist/AssistStructure;

    invoke-direct {v2}, Landroid/app/assist/AssistStructure;-><init>()V

    .end local v4    # "structure":Landroid/app/assist/AssistStructure;
    .local v2, "structure":Landroid/app/assist/AssistStructure;
    goto :goto_6

    .line 3571
    .end local v2    # "structure":Landroid/app/assist/AssistStructure;
    .restart local v4    # "structure":Landroid/app/assist/AssistStructure;
    :cond_b
    move-object v2, v4

    .end local v4    # "structure":Landroid/app/assist/AssistStructure;
    .restart local v2    # "structure":Landroid/app/assist/AssistStructure;
    :goto_6
    invoke-virtual {v2, v11, v12}, Landroid/app/assist/AssistStructure;->setAcquisitionStartTime(J)V

    .line 3572
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Landroid/app/assist/AssistStructure;->setAcquisitionEndTime(J)V

    .line 3574
    iget-object v4, p0, Landroid/app/ActivityThread;->mLastAssistStructures:Ljava/util/ArrayList;

    new-instance v5, Ljava/lang/ref/WeakReference;

    invoke-direct {v5, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3575
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v4

    .line 3577
    .local v4, "mgr":Landroid/app/IActivityManager;
    :try_start_0
    iget-object v5, p1, Landroid/app/ActivityThread$RequestAssistContextExtras;->requestToken:Landroid/os/IBinder;

    move-object v6, v3

    move-object v7, v2

    move-object v8, v10

    move-object v9, v1

    invoke-interface/range {v4 .. v9}, Landroid/app/IActivityManager;->reportAssistContextExtras(Landroid/os/IBinder;Landroid/os/Bundle;Landroid/app/assist/AssistStructure;Landroid/app/assist/AssistContent;Landroid/net/Uri;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3580
    nop

    .line 3581
    return-void

    .line 3578
    :catch_0
    move-exception v5

    .line 3579
    .local v5, "e":Landroid/os/RemoteException;
    invoke-virtual {v5}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v6

    throw v6
.end method

.method public handleResumeActivity(Landroid/os/IBinder;ZZLjava/lang/String;)V
    .locals 11
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "finalStateRequest"    # Z
    .param p3, "isForward"    # Z
    .param p4, "reason"    # Ljava/lang/String;

    .line 4313
    invoke-virtual {p0}, Landroid/app/ActivityThread;->unscheduleGcIdler()V

    .line 4314
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/ActivityThread;->mSomeActivitiesChanged:Z

    .line 4317
    invoke-virtual {p0, p1, p2, p4}, Landroid/app/ActivityThread;->performResumeActivity(Landroid/os/IBinder;ZLjava/lang/String;)Landroid/app/ActivityThread$ActivityClientRecord;

    move-result-object v1

    .line 4318
    .local v1, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    if-nez v1, :cond_0

    .line 4320
    return-void

    .line 4323
    :cond_0
    iget-object v2, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    .line 4326
    .local v2, "a":Landroid/app/Activity;
    iget-object v3, v1, Landroid/app/ActivityThread$ActivityClientRecord;->packageInfo:Landroid/app/LoadedApk;

    if-eqz v3, :cond_1

    .line 4327
    iget-object v3, v1, Landroid/app/ActivityThread$ActivityClientRecord;->packageInfo:Landroid/app/LoadedApk;

    iget-object v3, v3, Landroid/app/LoadedApk;->mPackageName:Ljava/lang/String;

    sput-object v3, Landroid/app/ActivityThread;->packageName:Ljava/lang/String;

    .line 4335
    :cond_1
    const/16 v3, 0x100

    const/4 v4, 0x0

    if-eqz p3, :cond_2

    .line 4336
    move v5, v3

    goto :goto_0

    :cond_2
    move v5, v4

    .line 4341
    .local v5, "forwardBit":I
    :goto_0
    iget-boolean v6, v2, Landroid/app/Activity;->mStartedActivity:Z

    xor-int/2addr v6, v0

    .line 4342
    .local v6, "willBeVisible":Z
    if-nez v6, :cond_3

    .line 4344
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v7

    .line 4345
    invoke-virtual {v2}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v8

    .line 4344
    invoke-interface {v7, v8}, Landroid/app/IActivityManager;->willActivityBeVisible(Landroid/os/IBinder;)Z

    move-result v7
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v6, v7

    .line 4348
    goto :goto_1

    .line 4346
    :catch_0
    move-exception v0

    .line 4347
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    .line 4350
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_3
    :goto_1
    iget-object v7, v1, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    if-nez v7, :cond_7

    iget-boolean v7, v2, Landroid/app/Activity;->mFinished:Z

    if-nez v7, :cond_7

    if-eqz v6, :cond_7

    .line 4351
    iget-object v7, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v7

    iput-object v7, v1, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    .line 4352
    iget-object v7, v1, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    invoke-virtual {v7}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v7

    .line 4353
    .local v7, "decor":Landroid/view/View;
    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 4354
    invoke-virtual {v2}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v8

    .line 4355
    .local v8, "wm":Landroid/view/ViewManager;
    iget-object v9, v1, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    invoke-virtual {v9}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v9

    .line 4356
    .local v9, "l":Landroid/view/WindowManager$LayoutParams;
    iput-object v7, v2, Landroid/app/Activity;->mDecor:Landroid/view/View;

    .line 4357
    iput v0, v9, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 4358
    iget v10, v9, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    or-int/2addr v10, v5

    iput v10, v9, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 4359
    iget-boolean v10, v1, Landroid/app/ActivityThread$ActivityClientRecord;->mPreserveWindow:Z

    if-eqz v10, :cond_4

    .line 4360
    iput-boolean v0, v2, Landroid/app/Activity;->mWindowAdded:Z

    .line 4361
    iput-boolean v4, v1, Landroid/app/ActivityThread$ActivityClientRecord;->mPreserveWindow:Z

    .line 4366
    invoke-virtual {v7}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v10

    .line 4367
    .local v10, "impl":Landroid/view/ViewRootImpl;
    if-eqz v10, :cond_4

    .line 4368
    invoke-virtual {v10}, Landroid/view/ViewRootImpl;->notifyChildRebuilt()V

    .line 4371
    .end local v10    # "impl":Landroid/view/ViewRootImpl;
    :cond_4
    iget-boolean v10, v2, Landroid/app/Activity;->mVisibleFromClient:Z

    if-eqz v10, :cond_6

    .line 4372
    iget-boolean v10, v2, Landroid/app/Activity;->mWindowAdded:Z

    if-nez v10, :cond_5

    .line 4373
    iput-boolean v0, v2, Landroid/app/Activity;->mWindowAdded:Z

    .line 4374
    invoke-interface {v8, v7, v9}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    .line 4380
    :cond_5
    invoke-virtual {v2, v9}, Landroid/app/Activity;->onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 4387
    .end local v7    # "decor":Landroid/view/View;
    .end local v8    # "wm":Landroid/view/ViewManager;
    .end local v9    # "l":Landroid/view/WindowManager$LayoutParams;
    :cond_6
    :goto_2
    goto :goto_3

    :cond_7
    if-nez v6, :cond_8

    .line 4389
    iput-boolean v0, v1, Landroid/app/ActivityThread$ActivityClientRecord;->hideForNow:Z

    .line 4393
    :cond_8
    :goto_3
    invoke-static {v1, v4}, Landroid/app/ActivityThread;->cleanUpPendingRemoveWindows(Landroid/app/ActivityThread$ActivityClientRecord;Z)V

    .line 4397
    iget-object v4, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v4, v4, Landroid/app/Activity;->mFinished:Z

    const/4 v7, 0x0

    if-nez v4, :cond_b

    if-eqz v6, :cond_b

    iget-object v4, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-object v4, v4, Landroid/app/Activity;->mDecor:Landroid/view/View;

    if-eqz v4, :cond_b

    iget-boolean v4, v1, Landroid/app/ActivityThread$ActivityClientRecord;->hideForNow:Z

    if-nez v4, :cond_b

    .line 4398
    iget-object v4, v1, Landroid/app/ActivityThread$ActivityClientRecord;->newConfig:Landroid/content/res/Configuration;

    if-eqz v4, :cond_9

    .line 4399
    iget-object v4, v1, Landroid/app/ActivityThread$ActivityClientRecord;->newConfig:Landroid/content/res/Configuration;

    invoke-direct {p0, v1, v4}, Landroid/app/ActivityThread;->performConfigurationChangedForActivity(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/content/res/Configuration;)V

    .line 4404
    iput-object v7, v1, Landroid/app/ActivityThread$ActivityClientRecord;->newConfig:Landroid/content/res/Configuration;

    .line 4407
    :cond_9
    iget-object v4, v1, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    .line 4408
    .local v4, "l":Landroid/view/WindowManager$LayoutParams;
    iget v8, v4, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    and-int/2addr v3, v8

    if-eq v3, v5, :cond_a

    .line 4411
    iget v3, v4, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    and-int/lit16 v3, v3, -0x101

    or-int/2addr v3, v5

    iput v3, v4, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 4414
    iget-object v3, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v3, v3, Landroid/app/Activity;->mVisibleFromClient:Z

    if-eqz v3, :cond_a

    .line 4415
    invoke-virtual {v2}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    .line 4416
    .local v3, "wm":Landroid/view/ViewManager;
    iget-object v8, v1, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    invoke-virtual {v8}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v8

    .line 4417
    .local v8, "decor":Landroid/view/View;
    invoke-interface {v3, v8, v4}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4421
    .end local v3    # "wm":Landroid/view/ViewManager;
    .end local v8    # "decor":Landroid/view/View;
    :cond_a
    iget-object v3, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iput-boolean v0, v3, Landroid/app/Activity;->mVisibleFromServer:Z

    .line 4422
    iget v3, p0, Landroid/app/ActivityThread;->mNumVisibleActivities:I

    add-int/2addr v3, v0

    iput v3, p0, Landroid/app/ActivityThread;->mNumVisibleActivities:I

    .line 4423
    iget-object v0, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v0, v0, Landroid/app/Activity;->mVisibleFromClient:Z

    if-eqz v0, :cond_b

    .line 4424
    iget-object v0, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->makeVisible()V

    .line 4428
    .end local v4    # "l":Landroid/view/WindowManager$LayoutParams;
    :cond_b
    iget-object v0, p0, Landroid/app/ActivityThread;->mNewActivities:Landroid/app/ActivityThread$ActivityClientRecord;

    iput-object v0, v1, Landroid/app/ActivityThread$ActivityClientRecord;->nextIdle:Landroid/app/ActivityThread$ActivityClientRecord;

    .line 4429
    iput-object v1, p0, Landroid/app/ActivityThread;->mNewActivities:Landroid/app/ActivityThread$ActivityClientRecord;

    .line 4431
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    new-instance v3, Landroid/app/ActivityThread$Idler;

    invoke-direct {v3, p0, v7}, Landroid/app/ActivityThread$Idler;-><init>(Landroid/app/ActivityThread;Landroid/app/ActivityThread$1;)V

    invoke-virtual {v0, v3}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 4432
    return-void
.end method

.method public handleSendResult(Landroid/os/IBinder;Ljava/util/List;Ljava/lang/String;)V
    .locals 6
    .param p1, "token"    # Landroid/os/IBinder;
    .param p3, "reason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "Ljava/util/List<",
            "Landroid/app/ResultInfo;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 4874
    .local p2, "results":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    iget-object v0, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 4876
    .local v0, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    if-eqz v0, :cond_4

    .line 4877
    iget-boolean v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->paused:Z

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    .line 4878
    .local v1, "resumed":Z
    iget-object v3, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v3, v3, Landroid/app/Activity;->mFinished:Z

    if-nez v3, :cond_0

    iget-object v3, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-object v3, v3, Landroid/app/Activity;->mDecor:Landroid/view/View;

    if-eqz v3, :cond_0

    iget-boolean v3, v0, Landroid/app/ActivityThread$ActivityClientRecord;->hideForNow:Z

    if-eqz v3, :cond_0

    if-eqz v1, :cond_0

    .line 4883
    invoke-direct {p0, v0, v2}, Landroid/app/ActivityThread;->updateVisibility(Landroid/app/ActivityThread$ActivityClientRecord;Z)V

    .line 4885
    :cond_0
    const/4 v3, 0x0

    if-eqz v1, :cond_3

    .line 4888
    :try_start_0
    iget-object v4, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iput-boolean v3, v4, Landroid/app/Activity;->mCalled:Z

    .line 4889
    iget-object v4, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iput-boolean v2, v4, Landroid/app/Activity;->mTemporaryPause:Z

    .line 4890
    iget-object v2, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v4, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v2, v4}, Landroid/app/Instrumentation;->callActivityOnPause(Landroid/app/Activity;)V

    .line 4891
    iget-object v2, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v2, v2, Landroid/app/Activity;->mCalled:Z

    if-eqz v2, :cond_1

    .line 4905
    goto :goto_0

    .line 4892
    :cond_1
    new-instance v2, Landroid/util/SuperNotCalledException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Activity "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    .line 4893
    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " did not call through to super.onPause()"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/util/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Landroid/util/SuperNotCalledException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4898
    :catch_0
    move-exception v2

    .line 4899
    .local v2, "e":Ljava/lang/Exception;
    iget-object v4, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v5, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v4, v5, v2}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v4

    if-eqz v4, :cond_2

    .end local v2    # "e":Ljava/lang/Exception;
    goto :goto_0

    .line 4900
    .restart local v2    # "e":Ljava/lang/Exception;
    :cond_2
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to pause activity "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    .line 4902
    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4903
    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 4896
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 4897
    .local v2, "e":Landroid/util/SuperNotCalledException;
    throw v2

    .line 4907
    .end local v2    # "e":Landroid/util/SuperNotCalledException;
    :cond_3
    :goto_0
    invoke-direct {p0}, Landroid/app/ActivityThread;->checkAndBlockForNetworkAccess()V

    .line 4908
    invoke-direct {p0, v0, p2, p3}, Landroid/app/ActivityThread;->deliverResults(Landroid/app/ActivityThread$ActivityClientRecord;Ljava/util/List;Ljava/lang/String;)V

    .line 4909
    if-eqz v1, :cond_4

    .line 4910
    iget-object v2, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v2, v3, p3}, Landroid/app/Activity;->performResume(ZLjava/lang/String;)V

    .line 4911
    iget-object v2, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iput-boolean v3, v2, Landroid/app/Activity;->mTemporaryPause:Z

    .line 4914
    .end local v1    # "resumed":Z
    :cond_4
    return-void
.end method

.method public handleStartActivity(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/app/servertransaction/PendingTransactionActions;)V
    .locals 4
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;
    .param p2, "pendingActions"    # Landroid/app/servertransaction/PendingTransactionActions;

    .line 3288
    iget-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    .line 3289
    .local v0, "activity":Landroid/app/Activity;
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    if-nez v1, :cond_0

    .line 3291
    return-void

    .line 3293
    :cond_0
    iget-boolean v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->stopped:Z

    if-eqz v1, :cond_9

    .line 3296
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v1, v1, Landroid/app/Activity;->mFinished:Z

    if-eqz v1, :cond_1

    .line 3298
    return-void

    .line 3302
    :cond_1
    const-string v1, "handleStartActivity"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->performStart(Ljava/lang/String;)V

    .line 3303
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Landroid/app/ActivityThread$ActivityClientRecord;->setState(I)V

    .line 3305
    if-nez p2, :cond_2

    .line 3307
    return-void

    .line 3311
    :cond_2
    invoke-virtual {p2}, Landroid/app/servertransaction/PendingTransactionActions;->shouldRestoreInstanceState()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 3312
    invoke-virtual {p1}, Landroid/app/ActivityThread$ActivityClientRecord;->isPersistable()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3313
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    if-nez v1, :cond_3

    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->persistentState:Landroid/os/PersistableBundle;

    if-eqz v1, :cond_5

    .line 3314
    :cond_3
    iget-object v1, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    iget-object v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->persistentState:Landroid/os/PersistableBundle;

    invoke-virtual {v1, v0, v2, v3}, Landroid/app/Instrumentation;->callActivityOnRestoreInstanceState(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/PersistableBundle;)V

    goto :goto_0

    .line 3317
    :cond_4
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    if-eqz v1, :cond_5

    .line 3318
    iget-object v1, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    invoke-virtual {v1, v0, v2}, Landroid/app/Instrumentation;->callActivityOnRestoreInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 3323
    :cond_5
    :goto_0
    invoke-virtual {p2}, Landroid/app/servertransaction/PendingTransactionActions;->shouldCallOnPostCreate()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 3324
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/app/Activity;->mCalled:Z

    .line 3325
    invoke-virtual {p1}, Landroid/app/ActivityThread$ActivityClientRecord;->isPersistable()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 3326
    iget-object v1, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    iget-object v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->persistentState:Landroid/os/PersistableBundle;

    invoke-virtual {v1, v0, v2, v3}, Landroid/app/Instrumentation;->callActivityOnPostCreate(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/PersistableBundle;)V

    goto :goto_1

    .line 3329
    :cond_6
    iget-object v1, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    invoke-virtual {v1, v0, v2}, Landroid/app/Instrumentation;->callActivityOnPostCreate(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 3331
    :goto_1
    iget-boolean v1, v0, Landroid/app/Activity;->mCalled:Z

    if-eqz v1, :cond_7

    goto :goto_2

    .line 3332
    :cond_7
    new-instance v1, Landroid/util/SuperNotCalledException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Activity "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    .line 3333
    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " did not call through to super.onPostCreate()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/util/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3337
    :cond_8
    :goto_2
    return-void

    .line 3294
    :cond_9
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Can\'t start activity that is not stopped."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public handleStopActivity(Landroid/os/IBinder;ZILandroid/app/servertransaction/PendingTransactionActions;ZLjava/lang/String;)V
    .locals 9
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "show"    # Z
    .param p3, "configChanges"    # I
    .param p4, "pendingActions"    # Landroid/app/servertransaction/PendingTransactionActions;
    .param p5, "finalStateRequest"    # Z
    .param p6, "reason"    # Ljava/lang/String;

    .line 4698
    iget-object v0, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 4699
    .local v0, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    iget-object v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget v2, v1, Landroid/app/Activity;->mConfigChangeFlags:I

    or-int/2addr v2, p3

    iput v2, v1, Landroid/app/Activity;->mConfigChangeFlags:I

    .line 4701
    new-instance v1, Landroid/app/servertransaction/PendingTransactionActions$StopInfo;

    invoke-direct {v1}, Landroid/app/servertransaction/PendingTransactionActions$StopInfo;-><init>()V

    move-object v8, v1

    .line 4702
    .local v8, "stopInfo":Landroid/app/servertransaction/PendingTransactionActions$StopInfo;
    const/4 v5, 0x1

    move-object v1, p0

    move-object v2, v0

    move-object v3, v8

    move v4, p2

    move v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Landroid/app/ActivityThread;->performStopActivityInner(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/app/servertransaction/PendingTransactionActions$StopInfo;ZZZLjava/lang/String;)V

    .line 4709
    invoke-direct {p0, v0, p2}, Landroid/app/ActivityThread;->updateVisibility(Landroid/app/ActivityThread$ActivityClientRecord;Z)V

    .line 4712
    invoke-static {v0}, Landroid/app/ActivityThread$ActivityClientRecord;->access$4400(Landroid/app/ActivityThread$ActivityClientRecord;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4713
    invoke-static {}, Landroid/app/QueuedWork;->waitToFinish()V

    .line 4716
    :cond_0
    invoke-virtual {v8, v0}, Landroid/app/servertransaction/PendingTransactionActions$StopInfo;->setActivity(Landroid/app/ActivityThread$ActivityClientRecord;)V

    .line 4717
    iget-object v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    invoke-virtual {v8, v1}, Landroid/app/servertransaction/PendingTransactionActions$StopInfo;->setState(Landroid/os/Bundle;)V

    .line 4718
    iget-object v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->persistentState:Landroid/os/PersistableBundle;

    invoke-virtual {v8, v1}, Landroid/app/servertransaction/PendingTransactionActions$StopInfo;->setPersistentState(Landroid/os/PersistableBundle;)V

    .line 4719
    invoke-virtual {p4, v8}, Landroid/app/servertransaction/PendingTransactionActions;->setStopInfo(Landroid/app/servertransaction/PendingTransactionActions$StopInfo;)V

    .line 4720
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/app/ActivityThread;->mSomeActivitiesChanged:Z

    .line 4721
    return-void
.end method

.method public handleSystemApplicationInfoChanged(Landroid/content/pm/ApplicationInfo;)V
    .locals 2
    .param p1, "ai"    # Landroid/content/pm/ApplicationInfo;

    .line 5678
    iget-boolean v0, p0, Landroid/app/ActivityThread;->mSystemThread:Z

    const-string v1, "Must only be called in the system process"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 5679
    invoke-virtual {p0, p1}, Landroid/app/ActivityThread;->handleApplicationInfoChanged(Landroid/content/pm/ApplicationInfo;)V

    .line 5680
    return-void
.end method

.method public handleTranslucentConversionComplete(Landroid/os/IBinder;Z)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "drawComplete"    # Z

    .line 3584
    iget-object v0, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 3585
    .local v0, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    if-eqz v0, :cond_0

    .line 3586
    iget-object v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v1, p2}, Landroid/app/Activity;->onTranslucentConversionComplete(Z)V

    .line 3588
    :cond_0
    return-void
.end method

.method final handleUnstableProviderDied(Landroid/os/IBinder;Z)V
    .locals 2
    .param p1, "provider"    # Landroid/os/IBinder;
    .param p2, "fromClient"    # Z

    .line 7105
    iget-object v0, p0, Landroid/app/ActivityThread;->mProviderMap:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 7106
    :try_start_0
    invoke-virtual {p0, p1, p2}, Landroid/app/ActivityThread;->handleUnstableProviderDiedLocked(Landroid/os/IBinder;Z)V

    .line 7107
    monitor-exit v0

    .line 7108
    return-void

    .line 7107
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method final handleUnstableProviderDiedLocked(Landroid/os/IBinder;Z)V
    .locals 6
    .param p1, "provider"    # Landroid/os/IBinder;
    .param p2, "fromClient"    # Z

    .line 7111
    iget-object v0, p0, Landroid/app/ActivityThread;->mProviderRefCountMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread$ProviderRefCount;

    .line 7112
    .local v0, "prc":Landroid/app/ActivityThread$ProviderRefCount;
    if-eqz v0, :cond_2

    .line 7115
    iget-object v1, p0, Landroid/app/ActivityThread;->mProviderRefCountMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7116
    iget-object v1, p0, Landroid/app/ActivityThread;->mProviderMap:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 7117
    iget-object v2, p0, Landroid/app/ActivityThread;->mProviderMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityThread$ProviderClientRecord;

    .line 7118
    .local v2, "pr":Landroid/app/ActivityThread$ProviderClientRecord;
    if-eqz v2, :cond_0

    iget-object v3, v2, Landroid/app/ActivityThread$ProviderClientRecord;->mProvider:Landroid/content/IContentProvider;

    invoke-interface {v3}, Landroid/content/IContentProvider;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    if-ne v3, p1, :cond_0

    .line 7119
    const-string v3, "ActivityThread"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Removing dead content provider:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Landroid/app/ActivityThread$ProviderClientRecord;->mProvider:Landroid/content/IContentProvider;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7120
    iget-object v3, p0, Landroid/app/ActivityThread;->mProviderMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 7116
    .end local v2    # "pr":Landroid/app/ActivityThread$ProviderClientRecord;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 7124
    .end local v1    # "i":I
    :cond_1
    if-eqz p2, :cond_2

    .line 7131
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, v0, Landroid/app/ActivityThread$ProviderRefCount;->holder:Landroid/app/ContentProviderHolder;

    iget-object v2, v2, Landroid/app/ContentProviderHolder;->connection:Landroid/os/IBinder;

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->unstableProviderDied(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7135
    goto :goto_1

    .line 7133
    :catch_0
    move-exception v1

    .line 7138
    :cond_2
    :goto_1
    return-void
.end method

.method public handleWindowVisibility(Landroid/os/IBinder;Z)V
    .locals 9
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "show"    # Z

    .line 4747
    iget-object v0, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 4749
    .local v0, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    if-nez v0, :cond_0

    .line 4750
    const-string v1, "ActivityThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleWindowVisibility: no activity for token "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4751
    return-void

    .line 4754
    :cond_0
    const/4 v8, 0x1

    if-nez p2, :cond_1

    iget-boolean v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->stopped:Z

    if-nez v1, :cond_1

    .line 4755
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "handleWindowVisibility"

    move-object v1, p0

    move-object v2, v0

    move v4, p2

    invoke-direct/range {v1 .. v7}, Landroid/app/ActivityThread;->performStopActivityInner(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/app/servertransaction/PendingTransactionActions$StopInfo;ZZZLjava/lang/String;)V

    goto :goto_0

    .line 4757
    :cond_1
    if-eqz p2, :cond_2

    iget-boolean v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->stopped:Z

    if-eqz v1, :cond_2

    .line 4760
    invoke-virtual {p0}, Landroid/app/ActivityThread;->unscheduleGcIdler()V

    .line 4762
    iget-object v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    const-string v2, "handleWindowVisibility"

    invoke-virtual {v1, v8, v2}, Landroid/app/Activity;->performRestart(ZLjava/lang/String;)V

    .line 4763
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/app/ActivityThread$ActivityClientRecord;->setState(I)V

    .line 4765
    :cond_2
    :goto_0
    iget-object v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-object v1, v1, Landroid/app/Activity;->mDecor:Landroid/view/View;

    if-eqz v1, :cond_3

    .line 4768
    invoke-direct {p0, v0, p2}, Landroid/app/ActivityThread;->updateVisibility(Landroid/app/ActivityThread$ActivityClientRecord;Z)V

    .line 4770
    :cond_3
    iput-boolean v8, p0, Landroid/app/ActivityThread;->mSomeActivitiesChanged:Z

    .line 4771
    return-void
.end method

.method public installSystemApplicationInfo(Landroid/content/pm/ApplicationInfo;Ljava/lang/ClassLoader;)V
    .locals 1
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "classLoader"    # Ljava/lang/ClassLoader;

    .line 2379
    monitor-enter p0

    .line 2380
    :try_start_0
    invoke-virtual {p0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/app/ContextImpl;->installSystemApplicationInfo(Landroid/content/pm/ApplicationInfo;Ljava/lang/ClassLoader;)V

    .line 2381
    invoke-virtual {p0}, Landroid/app/ActivityThread;->getSystemUiContext()Landroid/app/ContextImpl;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/app/ContextImpl;->installSystemApplicationInfo(Landroid/content/pm/ApplicationInfo;Ljava/lang/ClassLoader;)V

    .line 2384
    new-instance v0, Landroid/app/ActivityThread$Profiler;

    invoke-direct {v0}, Landroid/app/ActivityThread$Profiler;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    .line 2385
    monitor-exit p0

    .line 2386
    return-void

    .line 2385
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final installSystemProviders(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ProviderInfo;",
            ">;)V"
        }
    .end annotation

    .line 7465
    .local p1, "providers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ProviderInfo;>;"
    if-eqz p1, :cond_0

    .line 7466
    iget-object v0, p0, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    invoke-direct {p0, v0, p1}, Landroid/app/ActivityThread;->installContentProviders(Landroid/content/Context;Ljava/util/List;)V

    .line 7468
    :cond_0
    return-void
.end method

.method public isProfiling()Z
    .locals 1

    .line 2336
    iget-object v0, p0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    iget-object v0, v0, Landroid/app/ActivityThread$Profiler;->profileFile:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    iget-object v0, v0, Landroid/app/ActivityThread$Profiler;->profileFd:Landroid/os/ParcelFileDescriptor;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onNewActivityOptions(Landroid/os/IBinder;Landroid/app/ActivityOptions;)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "options"    # Landroid/app/ActivityOptions;

    .line 3591
    iget-object v0, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 3592
    .local v0, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    if-eqz v0, :cond_0

    .line 3593
    iget-object v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v1, p2}, Landroid/app/Activity;->onNewActivityOptions(Landroid/app/ActivityOptions;)V

    .line 3595
    :cond_0
    return-void
.end method

.method public final peekPackageInfo(Ljava/lang/String;Z)Landroid/app/LoadedApk;
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "includeCode"    # Z

    .line 2260
    iget-object v0, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    monitor-enter v0

    .line 2262
    if-eqz p2, :cond_0

    .line 2263
    :try_start_0
    iget-object v1, p0, Landroid/app/ActivityThread;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .local v1, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    goto :goto_0

    .line 2268
    .end local v1    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 2265
    :cond_0
    iget-object v1, p0, Landroid/app/ActivityThread;->mResourcePackages:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 2267
    .restart local v1    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/LoadedApk;

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    monitor-exit v0

    return-object v2

    .line 2268
    .end local v1    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method performDestroyActivity(Landroid/os/IBinder;ZIZLjava/lang/String;)Landroid/app/ActivityThread$ActivityClientRecord;
    .locals 6
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "finishing"    # Z
    .param p3, "configChanges"    # I
    .param p4, "getNonConfigInstance"    # Z
    .param p5, "reason"    # Ljava/lang/String;

    .line 4919
    iget-object v0, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 4920
    .local v0, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    const/4 v1, 0x0

    .line 4922
    .local v1, "activityClass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Activity;>;"
    if-eqz v0, :cond_7

    .line 4923
    iget-object v2, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 4924
    iget-object v2, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget v3, v2, Landroid/app/Activity;->mConfigChangeFlags:I

    or-int/2addr v3, p3

    iput v3, v2, Landroid/app/Activity;->mConfigChangeFlags:I

    .line 4925
    if-eqz p2, :cond_0

    .line 4926
    iget-object v2, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/app/Activity;->mFinished:Z

    .line 4929
    :cond_0
    const-string v2, "destroy"

    invoke-direct {p0, v0, v2}, Landroid/app/ActivityThread;->performPauseActivityIfNeeded(Landroid/app/ActivityThread$ActivityClientRecord;Ljava/lang/String;)V

    .line 4931
    iget-boolean v2, v0, Landroid/app/ActivityThread$ActivityClientRecord;->stopped:Z

    const/4 v3, 0x0

    if-nez v2, :cond_1

    .line 4932
    const-string v2, "destroy"

    invoke-direct {p0, v0, v3, v2}, Landroid/app/ActivityThread;->callActivityOnStop(Landroid/app/ActivityThread$ActivityClientRecord;ZLjava/lang/String;)V

    .line 4934
    :cond_1
    if-eqz p4, :cond_3

    .line 4936
    :try_start_0
    iget-object v2, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    .line 4937
    invoke-virtual {v2}, Landroid/app/Activity;->retainNonConfigurationInstances()Landroid/app/Activity$NonConfigurationInstances;

    move-result-object v2

    iput-object v2, v0, Landroid/app/ActivityThread$ActivityClientRecord;->lastNonConfigurationInstances:Landroid/app/Activity$NonConfigurationInstances;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4945
    goto :goto_0

    .line 4938
    :catch_0
    move-exception v2

    .line 4939
    .local v2, "e":Ljava/lang/Exception;
    iget-object v4, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v5, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v4, v5, v2}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v4

    if-eqz v4, :cond_2

    .end local v2    # "e":Ljava/lang/Exception;
    goto :goto_0

    .line 4940
    .restart local v2    # "e":Ljava/lang/Exception;
    :cond_2
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to retain activity "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    .line 4942
    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4943
    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 4948
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_3
    :goto_0
    :try_start_1
    iget-object v2, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iput-boolean v3, v2, Landroid/app/Activity;->mCalled:Z

    .line 4949
    iget-object v2, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v3, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v2, v3}, Landroid/app/Instrumentation;->callActivityOnDestroy(Landroid/app/Activity;)V

    .line 4950
    iget-object v2, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v2, v2, Landroid/app/Activity;->mCalled:Z

    if-eqz v2, :cond_5

    .line 4955
    iget-object v2, v0, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    if-eqz v2, :cond_4

    .line 4956
    iget-object v2, v0, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->closeAllPanels()V

    .line 4966
    :cond_4
    goto :goto_1

    .line 4951
    :cond_5
    new-instance v2, Landroid/util/SuperNotCalledException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Activity "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    .line 4952
    invoke-static {v4}, Landroid/app/ActivityThread;->safeToComponentShortString(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " did not call through to super.onDestroy()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/util/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catch Landroid/util/SuperNotCalledException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 4960
    :catch_1
    move-exception v2

    .line 4961
    .restart local v2    # "e":Ljava/lang/Exception;
    iget-object v3, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v4, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v3, v4, v2}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 4967
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Landroid/app/ActivityThread$ActivityClientRecord;->setState(I)V

    goto :goto_2

    .line 4962
    .restart local v2    # "e":Ljava/lang/Exception;
    :cond_6
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to destroy activity "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    .line 4963
    invoke-static {v5}, Landroid/app/ActivityThread;->safeToComponentShortString(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4964
    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 4958
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v2

    .line 4959
    .local v2, "e":Landroid/util/SuperNotCalledException;
    throw v2

    .line 4969
    .end local v2    # "e":Landroid/util/SuperNotCalledException;
    :cond_7
    :goto_2
    invoke-virtual {p0}, Landroid/app/ActivityThread;->schedulePurgeIdler()V

    .line 4970
    iget-object v2, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4971
    invoke-static {v1}, Landroid/os/StrictMode;->decrementExpectedActivityCount(Ljava/lang/Class;)V

    .line 4972
    return-object v0
.end method

.method performNewIntents(Landroid/os/IBinder;Ljava/util/List;Z)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p3, "andPause"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "Ljava/util/List<",
            "Lcom/android/internal/content/ReferrerIntent;",
            ">;Z)V"
        }
    .end annotation

    .line 3478
    .local p2, "intents":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/ReferrerIntent;>;"
    iget-object v0, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 3479
    .local v0, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    if-nez v0, :cond_0

    .line 3480
    return-void

    .line 3483
    :cond_0
    iget-boolean v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->paused:Z

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    .line 3484
    .local v1, "resumed":Z
    if-eqz v1, :cond_1

    .line 3485
    iget-object v3, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iput-boolean v2, v3, Landroid/app/Activity;->mTemporaryPause:Z

    .line 3486
    iget-object v2, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v3, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v2, v3}, Landroid/app/Instrumentation;->callActivityOnPause(Landroid/app/Activity;)V

    .line 3488
    :cond_1
    invoke-direct {p0}, Landroid/app/ActivityThread;->checkAndBlockForNetworkAccess()V

    .line 3489
    invoke-direct {p0, v0, p2}, Landroid/app/ActivityThread;->deliverNewIntents(Landroid/app/ActivityThread$ActivityClientRecord;Ljava/util/List;)V

    .line 3490
    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 3491
    iget-object v3, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    const-string/jumbo v4, "performNewIntents"

    invoke-virtual {v3, v2, v4}, Landroid/app/Activity;->performResume(ZLjava/lang/String;)V

    .line 3492
    iget-object v3, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iput-boolean v2, v3, Landroid/app/Activity;->mTemporaryPause:Z

    .line 3495
    :cond_2
    iget-boolean v3, v0, Landroid/app/ActivityThread$ActivityClientRecord;->paused:Z

    if-eqz v3, :cond_3

    if-eqz p3, :cond_3

    .line 3499
    const-string/jumbo v3, "performNewIntents"

    invoke-virtual {p0, p1, v2, v3}, Landroid/app/ActivityThread;->performResumeActivity(Landroid/os/IBinder;ZLjava/lang/String;)Landroid/app/ActivityThread$ActivityClientRecord;

    .line 3500
    const-string/jumbo v2, "performNewIntents"

    invoke-direct {p0, v0, v2}, Landroid/app/ActivityThread;->performPauseActivityIfNeeded(Landroid/app/ActivityThread$ActivityClientRecord;Ljava/lang/String;)V

    .line 3502
    :cond_3
    return-void
.end method

.method final performPauseActivity(Landroid/os/IBinder;ZLjava/lang/String;Landroid/app/servertransaction/PendingTransactionActions;)Landroid/os/Bundle;
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "finished"    # Z
    .param p3, "reason"    # Ljava/lang/String;
    .param p4, "pendingActions"    # Landroid/app/servertransaction/PendingTransactionActions;

    .line 4460
    iget-object v0, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 4461
    .local v0, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    if-eqz v0, :cond_0

    invoke-direct {p0, v0, p2, p3, p4}, Landroid/app/ActivityThread;->performPauseActivity(Landroid/app/ActivityThread$ActivityClientRecord;ZLjava/lang/String;Landroid/app/servertransaction/PendingTransactionActions;)Landroid/os/Bundle;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public performRestartActivity(Landroid/os/IBinder;Z)V
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "start"    # Z

    .line 4736
    iget-object v0, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 4737
    .local v0, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    iget-boolean v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->stopped:Z

    if-eqz v1, :cond_0

    .line 4738
    iget-object v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    const-string/jumbo v2, "performRestartActivity"

    invoke-virtual {v1, p2, v2}, Landroid/app/Activity;->performRestart(ZLjava/lang/String;)V

    .line 4739
    if-eqz p2, :cond_0

    .line 4740
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/app/ActivityThread$ActivityClientRecord;->setState(I)V

    .line 4743
    :cond_0
    return-void
.end method

.method public performResumeActivity(Landroid/os/IBinder;ZLjava/lang/String;)Landroid/app/ActivityThread$ActivityClientRecord;
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "finalStateRequest"    # Z
    .param p3, "reason"    # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 4240
    iget-object v0, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 4244
    .local v0, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    const/4 v1, 0x0

    if-eqz v0, :cond_7

    iget-object v2, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v2, v2, Landroid/app/Activity;->mFinished:Z

    if-eqz v2, :cond_0

    goto/16 :goto_1

    .line 4247
    :cond_0
    invoke-virtual {v0}, Landroid/app/ActivityThread$ActivityClientRecord;->getLifecycleState()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 4248
    if-nez p2, :cond_1

    .line 4249
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Trying to resume activity which is already resumed"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 4251
    .local v2, "e":Ljava/lang/RuntimeException;
    const-string v3, "ActivityThread"

    invoke-virtual {v2}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4252
    const-string v3, "ActivityThread"

    invoke-virtual {v0}, Landroid/app/ActivityThread$ActivityClientRecord;->getStateString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4259
    .end local v2    # "e":Ljava/lang/RuntimeException;
    :cond_1
    return-object v1

    .line 4261
    :cond_2
    if-eqz p2, :cond_3

    .line 4262
    const/4 v2, 0x0

    iput-boolean v2, v0, Landroid/app/ActivityThread$ActivityClientRecord;->hideForNow:Z

    .line 4263
    iget-object v4, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iput-boolean v2, v4, Landroid/app/Activity;->mStartedActivity:Z

    .line 4266
    :cond_3
    :try_start_0
    iget-object v2, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->onStateNotSaved()V

    .line 4267
    iget-object v2, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-object v2, v2, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v2}, Landroid/app/FragmentController;->noteStateNotSaved()V

    .line 4268
    invoke-direct {p0}, Landroid/app/ActivityThread;->checkAndBlockForNetworkAccess()V

    .line 4269
    iget-object v2, v0, Landroid/app/ActivityThread$ActivityClientRecord;->pendingIntents:Ljava/util/List;

    if-eqz v2, :cond_4

    .line 4270
    iget-object v2, v0, Landroid/app/ActivityThread$ActivityClientRecord;->pendingIntents:Ljava/util/List;

    invoke-direct {p0, v0, v2}, Landroid/app/ActivityThread;->deliverNewIntents(Landroid/app/ActivityThread$ActivityClientRecord;Ljava/util/List;)V

    .line 4271
    iput-object v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->pendingIntents:Ljava/util/List;

    .line 4273
    :cond_4
    iget-object v2, v0, Landroid/app/ActivityThread$ActivityClientRecord;->pendingResults:Ljava/util/List;

    if-eqz v2, :cond_5

    .line 4274
    iget-object v2, v0, Landroid/app/ActivityThread$ActivityClientRecord;->pendingResults:Ljava/util/List;

    invoke-direct {p0, v0, v2, p3}, Landroid/app/ActivityThread;->deliverResults(Landroid/app/ActivityThread$ActivityClientRecord;Ljava/util/List;Ljava/lang/String;)V

    .line 4275
    iput-object v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->pendingResults:Ljava/util/List;

    .line 4277
    :cond_5
    iget-object v2, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v4, v0, Landroid/app/ActivityThread$ActivityClientRecord;->startsNotResumed:Z

    invoke-virtual {v2, v4, p3}, Landroid/app/Activity;->performResume(ZLjava/lang/String;)V

    .line 4279
    iput-object v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    .line 4280
    iput-object v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->persistentState:Landroid/os/PersistableBundle;

    .line 4281
    invoke-virtual {v0, v3}, Landroid/app/ActivityThread$ActivityClientRecord;->setState(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4287
    goto :goto_0

    .line 4282
    :catch_0
    move-exception v1

    .line 4283
    .local v1, "e":Ljava/lang/Exception;
    iget-object v2, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v3, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v2, v3, v1}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 4288
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v0

    .line 4284
    .restart local v1    # "e":Ljava/lang/Exception;
    :cond_6
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to resume activity "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    .line 4285
    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 4245
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_7
    :goto_1
    return-object v1
.end method

.method final performStopActivity(Landroid/os/IBinder;ZLjava/lang/String;)V
    .locals 8
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "saveState"    # Z
    .param p3, "reason"    # Ljava/lang/String;

    .line 4545
    iget-object v0, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 4546
    .local v0, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, v0

    move v5, p2

    move-object v7, p3

    invoke-direct/range {v1 .. v7}, Landroid/app/ActivityThread;->performStopActivityInner(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/app/servertransaction/PendingTransactionActions$StopInfo;ZZZLjava/lang/String;)V

    .line 4548
    return-void
.end method

.method final performUserLeavingActivity(Landroid/app/ActivityThread$ActivityClientRecord;)V
    .locals 2
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;

    .line 4455
    iget-object v0, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Instrumentation;->callActivityOnUserLeaving(Landroid/app/Activity;)V

    .line 4456
    return-void
.end method

.method public prepareRelaunchActivity(Landroid/os/IBinder;Ljava/util/List;Ljava/util/List;ILandroid/util/MergedConfiguration;Z)Landroid/app/ActivityThread$ActivityClientRecord;
    .locals 6
    .param p1, "token"    # Landroid/os/IBinder;
    .param p4, "configChanges"    # I
    .param p5, "config"    # Landroid/util/MergedConfiguration;
    .param p6, "preserveWindow"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "Ljava/util/List<",
            "Landroid/app/ResultInfo;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/internal/content/ReferrerIntent;",
            ">;I",
            "Landroid/util/MergedConfiguration;",
            "Z)",
            "Landroid/app/ActivityThread$ActivityClientRecord;"
        }
    .end annotation

    .line 5056
    .local p2, "pendingResults":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    .local p3, "pendingNewIntents":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/ReferrerIntent;>;"
    const/4 v0, 0x0

    .line 5057
    .local v0, "target":Landroid/app/ActivityThread$ActivityClientRecord;
    const/4 v1, 0x0

    .line 5059
    .local v1, "scheduleRelaunch":Z
    iget-object v2, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    monitor-enter v2

    .line 5060
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    :try_start_0
    iget-object v4, p0, Landroid/app/ActivityThread;->mRelaunchingActivities:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 5061
    iget-object v4, p0, Landroid/app/ActivityThread;->mRelaunchingActivities:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 5063
    .local v4, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    iget-object v5, v4, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    if-ne v5, p1, :cond_3

    .line 5064
    move-object v0, v4

    .line 5065
    if-eqz p2, :cond_1

    .line 5066
    iget-object v5, v4, Landroid/app/ActivityThread$ActivityClientRecord;->pendingResults:Ljava/util/List;

    if-eqz v5, :cond_0

    .line 5067
    iget-object v5, v4, Landroid/app/ActivityThread$ActivityClientRecord;->pendingResults:Ljava/util/List;

    invoke-interface {v5, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 5069
    :cond_0
    iput-object p2, v4, Landroid/app/ActivityThread$ActivityClientRecord;->pendingResults:Ljava/util/List;

    .line 5072
    :cond_1
    :goto_1
    if-eqz p3, :cond_4

    .line 5073
    iget-object v5, v4, Landroid/app/ActivityThread$ActivityClientRecord;->pendingIntents:Ljava/util/List;

    if-eqz v5, :cond_2

    .line 5074
    iget-object v5, v4, Landroid/app/ActivityThread$ActivityClientRecord;->pendingIntents:Ljava/util/List;

    invoke-interface {v5, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    .line 5076
    :cond_2
    iput-object p3, v4, Landroid/app/ActivityThread$ActivityClientRecord;->pendingIntents:Ljava/util/List;

    goto :goto_2

    .line 5060
    .end local v4    # "r":Landroid/app/ActivityThread$ActivityClientRecord;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 5083
    .end local v3    # "i":I
    :cond_4
    :goto_2
    if-nez v0, :cond_5

    .line 5085
    new-instance v3, Landroid/app/ActivityThread$ActivityClientRecord;

    invoke-direct {v3}, Landroid/app/ActivityThread$ActivityClientRecord;-><init>()V

    move-object v0, v3

    .line 5086
    iput-object p1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    .line 5087
    iput-object p2, v0, Landroid/app/ActivityThread$ActivityClientRecord;->pendingResults:Ljava/util/List;

    .line 5088
    iput-object p3, v0, Landroid/app/ActivityThread$ActivityClientRecord;->pendingIntents:Ljava/util/List;

    .line 5089
    iput-boolean p6, v0, Landroid/app/ActivityThread$ActivityClientRecord;->mPreserveWindow:Z

    .line 5090
    iget-object v3, p0, Landroid/app/ActivityThread;->mRelaunchingActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5091
    const/4 v1, 0x1

    .line 5093
    :cond_5
    invoke-virtual {p5}, Landroid/util/MergedConfiguration;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iput-object v3, v0, Landroid/app/ActivityThread$ActivityClientRecord;->createdConfig:Landroid/content/res/Configuration;

    .line 5094
    invoke-virtual {p5}, Landroid/util/MergedConfiguration;->getOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iput-object v3, v0, Landroid/app/ActivityThread$ActivityClientRecord;->overrideConfig:Landroid/content/res/Configuration;

    .line 5095
    iget v3, v0, Landroid/app/ActivityThread$ActivityClientRecord;->pendingConfigChanges:I

    or-int/2addr v3, p4

    iput v3, v0, Landroid/app/ActivityThread$ActivityClientRecord;->pendingConfigChanges:I

    .line 5096
    monitor-exit v2

    .line 5098
    if-eqz v1, :cond_6

    move-object v2, v0

    goto :goto_3

    :cond_6
    const/4 v2, 0x0

    :goto_3
    return-object v2

    .line 5096
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public registerOnActivityPausedListener(Landroid/app/Activity;Landroid/app/OnActivityPausedListener;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "listener"    # Landroid/app/OnActivityPausedListener;

    .line 2909
    iget-object v0, p0, Landroid/app/ActivityThread;->mOnPauseListeners:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 2910
    :try_start_0
    iget-object v1, p0, Landroid/app/ActivityThread;->mOnPauseListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 2911
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/OnActivityPausedListener;>;"
    if-nez v1, :cond_0

    .line 2912
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v2

    .line 2913
    iget-object v2, p0, Landroid/app/ActivityThread;->mOnPauseListeners:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2915
    :cond_0
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2916
    .end local v1    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/OnActivityPausedListener;>;"
    monitor-exit v0

    .line 2917
    return-void

    .line 2916
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final releaseProvider(Landroid/content/IContentProvider;Z)Z
    .locals 9
    .param p1, "provider"    # Landroid/content/IContentProvider;
    .param p2, "stable"    # Z

    .line 6973
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 6974
    return v0

    .line 6977
    :cond_0
    invoke-interface {p1}, Landroid/content/IContentProvider;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 6978
    .local v1, "jBinder":Landroid/os/IBinder;
    iget-object v2, p0, Landroid/app/ActivityThread;->mProviderMap:Landroid/util/ArrayMap;

    monitor-enter v2

    .line 6979
    :try_start_0
    iget-object v3, p0, Landroid/app/ActivityThread;->mProviderRefCountMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityThread$ProviderRefCount;

    .line 6980
    .local v3, "prc":Landroid/app/ActivityThread$ProviderRefCount;
    if-nez v3, :cond_1

    .line 6982
    monitor-exit v2

    return v0

    .line 6985
    :cond_1
    const/4 v4, 0x0

    .line 6986
    .local v4, "lastRef":Z
    const/4 v5, -0x1

    const/4 v6, 0x1

    if-eqz p2, :cond_5

    .line 6987
    iget v7, v3, Landroid/app/ActivityThread$ProviderRefCount;->stableCount:I

    if-nez v7, :cond_2

    .line 6990
    monitor-exit v2

    return v0

    .line 6992
    :cond_2
    iget v7, v3, Landroid/app/ActivityThread$ProviderRefCount;->stableCount:I

    sub-int/2addr v7, v6

    iput v7, v3, Landroid/app/ActivityThread$ProviderRefCount;->stableCount:I

    .line 6993
    iget v7, v3, Landroid/app/ActivityThread$ProviderRefCount;->stableCount:I

    if-nez v7, :cond_8

    .line 7000
    iget v7, v3, Landroid/app/ActivityThread$ProviderRefCount;->unstableCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v7, :cond_3

    move v7, v6

    goto :goto_0

    :cond_3
    move v7, v0

    :goto_0
    move v4, v7

    .line 7006
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v7

    iget-object v8, v3, Landroid/app/ActivityThread$ProviderRefCount;->holder:Landroid/app/ContentProviderHolder;

    iget-object v8, v8, Landroid/app/ContentProviderHolder;->connection:Landroid/os/IBinder;

    .line 7007
    if-eqz v4, :cond_4

    .line 7006
    move v0, v6

    goto :goto_1

    .line 7007
    :cond_4
    nop

    .line 7006
    :goto_1
    invoke-interface {v7, v8, v5, v0}, Landroid/app/IActivityManager;->refContentProvider(Landroid/os/IBinder;II)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 7008
    :catch_0
    move-exception v0

    .line 7010
    :goto_2
    goto :goto_4

    .line 7013
    :cond_5
    :try_start_2
    iget v7, v3, Landroid/app/ActivityThread$ProviderRefCount;->unstableCount:I

    if-nez v7, :cond_6

    .line 7016
    monitor-exit v2

    return v0

    .line 7018
    :cond_6
    iget v7, v3, Landroid/app/ActivityThread$ProviderRefCount;->unstableCount:I

    sub-int/2addr v7, v6

    iput v7, v3, Landroid/app/ActivityThread$ProviderRefCount;->unstableCount:I

    .line 7019
    iget v7, v3, Landroid/app/ActivityThread$ProviderRefCount;->unstableCount:I

    if-nez v7, :cond_8

    .line 7023
    iget v7, v3, Landroid/app/ActivityThread$ProviderRefCount;->stableCount:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v7, :cond_7

    move v7, v6

    goto :goto_3

    :cond_7
    move v7, v0

    :goto_3
    move v4, v7

    .line 7024
    if-nez v4, :cond_8

    .line 7030
    :try_start_3
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v7

    iget-object v8, v3, Landroid/app/ActivityThread$ProviderRefCount;->holder:Landroid/app/ContentProviderHolder;

    iget-object v8, v8, Landroid/app/ContentProviderHolder;->connection:Landroid/os/IBinder;

    invoke-interface {v7, v8, v0, v5}, Landroid/app/IActivityManager;->refContentProvider(Landroid/os/IBinder;II)Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 7034
    goto :goto_4

    .line 7032
    :catch_1
    move-exception v0

    .line 7039
    :cond_8
    :goto_4
    if-eqz v4, :cond_a

    .line 7040
    :try_start_4
    iget-boolean v0, v3, Landroid/app/ActivityThread$ProviderRefCount;->removePending:Z

    if-nez v0, :cond_9

    .line 7050
    iput-boolean v6, v3, Landroid/app/ActivityThread$ProviderRefCount;->removePending:Z

    .line 7051
    iget-object v0, p0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    const/16 v5, 0x83

    invoke-virtual {v0, v5, v3}, Landroid/app/ActivityThread$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 7052
    .local v0, "msg":Landroid/os/Message;
    iget-object v5, p0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    invoke-virtual {v5, v0}, Landroid/app/ActivityThread$H;->sendMessage(Landroid/os/Message;)Z

    .line 7053
    .end local v0    # "msg":Landroid/os/Message;
    goto :goto_5

    .line 7054
    :cond_9
    const-string v0, "ActivityThread"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Duplicate remove pending of provider "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v3, Landroid/app/ActivityThread$ProviderRefCount;->holder:Landroid/app/ContentProviderHolder;

    iget-object v7, v7, Landroid/app/ContentProviderHolder;->info:Landroid/content/pm/ProviderInfo;

    iget-object v7, v7, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7057
    :cond_a
    :goto_5
    monitor-exit v2

    return v6

    .line 7058
    .end local v3    # "prc":Landroid/app/ActivityThread$ProviderRefCount;
    .end local v4    # "lastRef":Z
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0
.end method

.method public reportRelaunch(Landroid/os/IBinder;Landroid/app/servertransaction/PendingTransactionActions;)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "pendingActions"    # Landroid/app/servertransaction/PendingTransactionActions;

    .line 5309
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityManager;->activityRelaunched(Landroid/os/IBinder;)V

    .line 5310
    iget-object v0, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 5311
    .local v0, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    invoke-virtual {p2}, Landroid/app/servertransaction/PendingTransactionActions;->shouldReportRelaunchToWindowManager()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    if-eqz v1, :cond_0

    .line 5313
    iget-object v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->reportActivityRelaunched()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5317
    .end local v0    # "r":Landroid/app/ActivityThread$ActivityClientRecord;
    :cond_0
    nop

    .line 5318
    return-void

    .line 5315
    :catch_0
    move-exception v0

    .line 5316
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public reportStop(Landroid/app/servertransaction/PendingTransactionActions;)V
    .locals 2
    .param p1, "pendingActions"    # Landroid/app/servertransaction/PendingTransactionActions;

    .line 4731
    iget-object v0, p0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    invoke-virtual {p1}, Landroid/app/servertransaction/PendingTransactionActions;->getStopInfo()Landroid/app/servertransaction/PendingTransactionActions$StopInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActivityThread$H;->post(Ljava/lang/Runnable;)Z

    .line 4732
    return-void
.end method

.method public final resolveActivityInfo(Landroid/content/Intent;)Landroid/content/pm/ActivityInfo;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .line 2930
    iget-object v0, p0, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    .line 2931
    invoke-virtual {v0}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 2930
    const/16 v1, 0x400

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 2932
    .local v0, "aInfo":Landroid/content/pm/ActivityInfo;
    if-nez v0, :cond_0

    .line 2934
    const/16 v1, -0x5c

    invoke-static {v1, p1}, Landroid/app/Instrumentation;->checkStartActivityResult(ILjava/lang/Object;)V

    .line 2937
    :cond_0
    return-object v0
.end method

.method final scheduleContextCleanup(Landroid/app/ContextImpl;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/app/ContextImpl;
    .param p2, "who"    # Ljava/lang/String;
    .param p3, "what"    # Ljava/lang/String;

    .line 3044
    new-instance v0, Landroid/app/ActivityThread$ContextCleanupInfo;

    invoke-direct {v0}, Landroid/app/ActivityThread$ContextCleanupInfo;-><init>()V

    .line 3045
    .local v0, "cci":Landroid/app/ActivityThread$ContextCleanupInfo;
    iput-object p1, v0, Landroid/app/ActivityThread$ContextCleanupInfo;->context:Landroid/app/ContextImpl;

    .line 3046
    iput-object p2, v0, Landroid/app/ActivityThread$ContextCleanupInfo;->who:Ljava/lang/String;

    .line 3047
    iput-object p3, v0, Landroid/app/ActivityThread$ContextCleanupInfo;->what:Ljava/lang/String;

    .line 3048
    const/16 v1, 0x77

    invoke-virtual {p0, v1, v0}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    .line 3049
    return-void
.end method

.method scheduleGcIdler()V
    .locals 2

    .line 2396
    iget-boolean v0, p0, Landroid/app/ActivityThread;->mGcIdlerScheduled:Z

    if-nez v0, :cond_0

    .line 2397
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/ActivityThread;->mGcIdlerScheduled:Z

    .line 2398
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ActivityThread;->mGcIdler:Landroid/app/ActivityThread$GcIdler;

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 2400
    :cond_0
    iget-object v0, p0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    const/16 v1, 0x78

    invoke-virtual {v0, v1}, Landroid/app/ActivityThread$H;->removeMessages(I)V

    .line 2401
    return-void
.end method

.method schedulePurgeIdler()V
    .locals 2

    .line 2412
    iget-boolean v0, p0, Landroid/app/ActivityThread;->mPurgeIdlerScheduled:Z

    if-nez v0, :cond_0

    .line 2413
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/ActivityThread;->mPurgeIdlerScheduled:Z

    .line 2414
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ActivityThread;->mPurgeIdler:Landroid/app/ActivityThread$PurgeIdler;

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 2416
    :cond_0
    iget-object v0, p0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    const/16 v1, 0xa1

    invoke-virtual {v0, v1}, Landroid/app/ActivityThread$H;->removeMessages(I)V

    .line 2417
    return-void
.end method

.method scheduleRelaunchActivity(Landroid/os/IBinder;)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;

    .line 5220
    iget-object v0, p0, Landroid/app/ActivityThread;->mWaitingLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5221
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Landroid/app/ActivityThread;->mHasMessageBefore:Z

    .line 5222
    iget-boolean v1, p0, Landroid/app/ActivityThread;->mSkipApplicationOnCreate:Z

    if-eqz v1, :cond_0

    .line 5223
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/app/ActivityThread;->mSkipApplicationOnCreate:Z

    .line 5224
    iget-object v1, p0, Landroid/app/ActivityThread;->mWaitingLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 5226
    :cond_0
    const/16 v1, 0xa0

    invoke-virtual {p0, v1, p1}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    .line 5227
    monitor-exit v0

    .line 5229
    return-void

    .line 5227
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method scheduleTransaction(Landroid/app/servertransaction/ClientTransaction;)V
    .locals 2
    .param p1, "transaction"    # Landroid/app/servertransaction/ClientTransaction;

    .line 1720
    invoke-virtual {p1, p0}, Landroid/app/servertransaction/ClientTransaction;->preExecute(Landroid/app/ClientTransactionHandler;)V

    .line 1721
    iget-object v0, p0, Landroid/app/ActivityThread;->mWaitingLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1722
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Landroid/app/ActivityThread;->mHasMessageBefore:Z

    .line 1723
    iget-boolean v1, p0, Landroid/app/ActivityThread;->mSkipApplicationOnCreate:Z

    if-eqz v1, :cond_0

    .line 1724
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/app/ActivityThread;->mSkipApplicationOnCreate:Z

    .line 1725
    iget-object v1, p0, Landroid/app/ActivityThread;->mWaitingLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 1727
    :cond_0
    const/16 v1, 0x9f

    invoke-virtual {p0, v1, p1}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    .line 1728
    monitor-exit v0

    .line 1729
    return-void

    .line 1728
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final sendActivityResult(Landroid/os/IBinder;Ljava/lang/String;IILandroid/content/Intent;)V
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "requestCode"    # I
    .param p4, "resultCode"    # I
    .param p5, "data"    # Landroid/content/Intent;

    .line 2984
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2985
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ResultInfo;>;"
    new-instance v1, Landroid/app/ResultInfo;

    invoke-direct {v1, p2, p3, p4, p5}, Landroid/app/ResultInfo;-><init>(Ljava/lang/String;IILandroid/content/Intent;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2986
    iget-object v1, p0, Landroid/app/ActivityThread;->mAppThread:Landroid/app/ActivityThread$ApplicationThread;

    invoke-static {v1, p1}, Landroid/app/servertransaction/ClientTransaction;->obtain(Landroid/app/IApplicationThread;Landroid/os/IBinder;)Landroid/app/servertransaction/ClientTransaction;

    move-result-object v1

    .line 2987
    .local v1, "clientTransaction":Landroid/app/servertransaction/ClientTransaction;
    invoke-static {v0}, Landroid/app/servertransaction/ActivityResultItem;->obtain(Ljava/util/List;)Landroid/app/servertransaction/ActivityResultItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/servertransaction/ClientTransaction;->addCallback(Landroid/app/servertransaction/ClientTransactionItem;)V

    .line 2989
    :try_start_0
    iget-object v2, p0, Landroid/app/ActivityThread;->mAppThread:Landroid/app/ActivityThread$ApplicationThread;

    invoke-virtual {v2, v1}, Landroid/app/ActivityThread$ApplicationThread;->scheduleTransaction(Landroid/app/servertransaction/ClientTransaction;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2992
    goto :goto_0

    .line 2990
    :catch_0
    move-exception v2

    .line 2993
    :goto_0
    return-void
.end method

.method sendMessage(ILjava/lang/Object;)V
    .locals 6
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .line 3001
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;IIZ)V

    .line 3002
    return-void
.end method

.method public final startActivityNow(Landroid/app/Activity;Ljava/lang/String;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/os/IBinder;Landroid/os/Bundle;Landroid/app/Activity$NonConfigurationInstances;)Landroid/app/Activity;
    .locals 2
    .param p1, "parent"    # Landroid/app/Activity;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "activityInfo"    # Landroid/content/pm/ActivityInfo;
    .param p5, "token"    # Landroid/os/IBinder;
    .param p6, "state"    # Landroid/os/Bundle;
    .param p7, "lastNonConfigurationInstances"    # Landroid/app/Activity$NonConfigurationInstances;

    .line 2943
    new-instance v0, Landroid/app/ActivityThread$ActivityClientRecord;

    invoke-direct {v0}, Landroid/app/ActivityThread$ActivityClientRecord;-><init>()V

    .line 2944
    .local v0, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    iput-object p5, v0, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    .line 2945
    const/4 v1, 0x0

    iput v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->ident:I

    .line 2946
    iput-object p3, v0, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    .line 2947
    iput-object p6, v0, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    .line 2948
    iput-object p1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->parent:Landroid/app/Activity;

    .line 2949
    iput-object p2, v0, Landroid/app/ActivityThread$ActivityClientRecord;->embeddedID:Ljava/lang/String;

    .line 2950
    iput-object p4, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 2951
    iput-object p7, v0, Landroid/app/ActivityThread$ActivityClientRecord;->lastNonConfigurationInstances:Landroid/app/Activity$NonConfigurationInstances;

    .line 2967
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/app/ActivityThread;->performLaunchActivity(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/content/Intent;)Landroid/app/Activity;

    move-result-object v1

    return-object v1
.end method

.method public stopProfiling()V
    .locals 1

    .line 5814
    iget-object v0, p0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    if-eqz v0, :cond_0

    .line 5815
    iget-object v0, p0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    invoke-virtual {v0}, Landroid/app/ActivityThread$Profiler;->stopProfiling()V

    .line 5817
    :cond_0
    return-void
.end method

.method public unregisterOnActivityPausedListener(Landroid/app/Activity;Landroid/app/OnActivityPausedListener;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "listener"    # Landroid/app/OnActivityPausedListener;

    .line 2921
    iget-object v0, p0, Landroid/app/ActivityThread;->mOnPauseListeners:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 2922
    :try_start_0
    iget-object v1, p0, Landroid/app/ActivityThread;->mOnPauseListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 2923
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/OnActivityPausedListener;>;"
    if-eqz v1, :cond_0

    .line 2924
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2926
    .end local v1    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/OnActivityPausedListener;>;"
    :cond_0
    monitor-exit v0

    .line 2927
    return-void

    .line 2926
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method unscheduleGcIdler()V
    .locals 2

    .line 2404
    iget-boolean v0, p0, Landroid/app/ActivityThread;->mGcIdlerScheduled:Z

    if-eqz v0, :cond_0

    .line 2405
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/ActivityThread;->mGcIdlerScheduled:Z

    .line 2406
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ActivityThread;->mGcIdler:Landroid/app/ActivityThread$GcIdler;

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->removeIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 2408
    :cond_0
    iget-object v0, p0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    const/16 v1, 0x78

    invoke-virtual {v0, v1}, Landroid/app/ActivityThread$H;->removeMessages(I)V

    .line 2409
    return-void
.end method

.method unschedulePurgeIdler()V
    .locals 2

    .line 2420
    iget-boolean v0, p0, Landroid/app/ActivityThread;->mPurgeIdlerScheduled:Z

    if-eqz v0, :cond_0

    .line 2421
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/ActivityThread;->mPurgeIdlerScheduled:Z

    .line 2422
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ActivityThread;->mPurgeIdler:Landroid/app/ActivityThread$PurgeIdler;

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->removeIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 2424
    :cond_0
    iget-object v0, p0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    const/16 v1, 0xa1

    invoke-virtual {v0, v1}, Landroid/app/ActivityThread$H;->removeMessages(I)V

    .line 2425
    return-void
.end method

.method public updatePendingConfiguration(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "config"    # Landroid/content/res/Configuration;

    .line 1714
    iget-object v0, p0, Landroid/app/ActivityThread;->mAppThread:Landroid/app/ActivityThread$ApplicationThread;

    invoke-static {v0, p1}, Landroid/app/ActivityThread$ApplicationThread;->access$1600(Landroid/app/ActivityThread$ApplicationThread;Landroid/content/res/Configuration;)V

    .line 1715
    return-void
.end method

.method public updateProcessState(IZ)V
    .locals 1
    .param p1, "processState"    # I
    .param p2, "fromIpc"    # Z

    .line 1734
    iget-object v0, p0, Landroid/app/ActivityThread;->mAppThread:Landroid/app/ActivityThread$ApplicationThread;

    invoke-virtual {v0, p1, p2}, Landroid/app/ActivityThread$ApplicationThread;->updateProcessState(IZ)V

    .line 1735
    return-void
.end method
