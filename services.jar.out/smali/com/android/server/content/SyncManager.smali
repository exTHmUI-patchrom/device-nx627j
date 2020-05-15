.class public Lcom/android/server/content/SyncManager;
.super Ljava/lang/Object;
.source "SyncManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/content/SyncManager$PrintTable;,
        Lcom/android/server/content/SyncManager$SyncHandler;,
        Lcom/android/server/content/SyncManager$ServiceConnectionData;,
        Lcom/android/server/content/SyncManager$SyncTimeTracker;,
        Lcom/android/server/content/SyncManager$OnUnsyncableAccountCheck;,
        Lcom/android/server/content/SyncManager$OnReadyCallback;,
        Lcom/android/server/content/SyncManager$AccountSyncStats;,
        Lcom/android/server/content/SyncManager$AuthoritySyncStats;,
        Lcom/android/server/content/SyncManager$ActiveSyncContext;,
        Lcom/android/server/content/SyncManager$ScheduleSyncMessagePayload;,
        Lcom/android/server/content/SyncManager$UpdatePeriodicSyncMessagePayload;,
        Lcom/android/server/content/SyncManager$SyncFinishedOrCancelledMessagePayload;
    }
.end annotation


# static fields
.field private static final DEBUG_ACCOUNT_ACCESS:Z = false

.field private static final DELAY_RETRY_SYNC_IN_PROGRESS_IN_SECONDS:I = 0xa

.field private static final ENABLE_SUSPICIOUS_CHECK:Z

.field private static final HANDLE_SYNC_ALARM_WAKE_LOCK:Ljava/lang/String; = "SyncManagerHandleSyncAlarm"

.field private static final INITIAL_ACCOUNTS_ARRAY:[Landroid/accounts/AccountAndUser;

.field private static final LOCAL_SYNC_DELAY:J

.field private static final MAX_SYNC_JOB_ID:I = 0x1adb0

.field private static final MIN_SYNC_JOB_ID:I = 0x186a0

.field private static final SYNC_ADAPTER_CONNECTION_FLAGS:I = 0x15

.field private static final SYNC_DELAY_ON_CONFLICT:J = 0x2710L

.field private static final SYNC_DELAY_ON_LOW_STORAGE:J = 0x36ee80L

.field private static final SYNC_LOOP_WAKE_LOCK:Ljava/lang/String; = "SyncLoopWakeLock"

.field private static final SYNC_MONITOR_PROGRESS_THRESHOLD_BYTES:I = 0xa

.field private static final SYNC_MONITOR_WINDOW_LENGTH_MILLIS:J = 0xea60L

.field private static final SYNC_OP_STATE_INVALID:I = 0x1

.field private static final SYNC_OP_STATE_INVALID_NO_ACCOUNT_ACCESS:I = 0x2

.field private static final SYNC_OP_STATE_VALID:I = 0x0

.field private static final SYNC_WAKE_LOCK_PREFIX:Ljava/lang/String; = "*sync*/"

.field static final TAG:Ljava/lang/String; = "SyncManager"

.field private static sInstance:Lcom/android/server/content/SyncManager;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "SyncManager.class"
    .end annotation
.end field

.field private static final sOpDumpComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/server/content/SyncOperation;",
            ">;"
        }
    .end annotation
.end field

.field private static final sOpRuntimeComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/server/content/SyncOperation;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAccountManager:Landroid/accounts/AccountManager;

.field private final mAccountManagerInternal:Landroid/accounts/AccountManagerInternal;

.field private final mAccountsUpdatedReceiver:Landroid/content/BroadcastReceiver;

.field protected final mActiveSyncContexts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/content/SyncManager$ActiveSyncContext;",
            ">;"
        }
    .end annotation
.end field

.field private final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private volatile mBootCompleted:Z

.field private final mBootCompletedReceiver:Landroid/content/BroadcastReceiver;

.field private mConnManagerDoNotUseDirectly:Landroid/net/ConnectivityManager;

.field private mConnectivityIntentReceiver:Landroid/content/BroadcastReceiver;

.field private final mConstants:Lcom/android/server/content/SyncManagerConstants;

.field private mContext:Landroid/content/Context;

.field private volatile mDataConnectionIsConnected:Z

.field private volatile mDeviceIsIdle:Z

.field private volatile mHandleAlarmWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mJobScheduler:Landroid/app/job/JobScheduler;

.field private mJobSchedulerInternal:Lcom/android/server/job/JobSchedulerInternal;

.field private volatile mJobServiceReady:Z

.field private final mLogger:Lcom/android/server/content/SyncLogger;

.field private final mNotificationMgr:Landroid/app/NotificationManager;

.field private final mOtherIntentsReceiver:Landroid/content/BroadcastReceiver;

.field private final mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

.field private final mPowerManager:Landroid/os/PowerManager;

.field private volatile mProvisioned:Z

.field private final mRand:Ljava/util/Random;

.field private volatile mReportedSyncActive:Z

.field private volatile mRunningAccounts:[Landroid/accounts/AccountAndUser;

.field private mShutdownIntentReceiver:Landroid/content/BroadcastReceiver;

.field private final mStorageIntentReceiver:Landroid/content/BroadcastReceiver;

.field private volatile mStorageIsLow:Z

.field protected final mSyncAdapters:Landroid/content/SyncAdaptersCache;

.field private final mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

.field private mSyncJobService:Lcom/android/server/content/SyncJobService;

.field private volatile mSyncManagerWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

.field private final mThread:Landroid/os/HandlerThread;

.field private mUserIntentReceiver:Landroid/content/BroadcastReceiver;

.field private final mUserManager:Landroid/os/UserManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 161
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    sput-boolean v0, Lcom/android/server/content/SyncManager;->ENABLE_SUSPICIOUS_CHECK:Z

    .line 167
    const-string/jumbo v0, "sync.local_sync_delay"

    .line 168
    const-wide/16 v1, 0x7530

    invoke-static {v0, v1, v2}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/content/SyncManager;->LOCAL_SYNC_DELAY:J

    .line 227
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/accounts/AccountAndUser;

    sput-object v0, Lcom/android/server/content/SyncManager;->INITIAL_ACCOUNTS_ARRAY:[Landroid/accounts/AccountAndUser;

    .line 2041
    sget-object v0, Lcom/android/server/content/-$$Lambda$SyncManager$bVs0A6OYdmGkOiq_lbp5MiBwelw;->INSTANCE:Lcom/android/server/content/-$$Lambda$SyncManager$bVs0A6OYdmGkOiq_lbp5MiBwelw;

    sput-object v0, Lcom/android/server/content/SyncManager;->sOpDumpComparator:Ljava/util/Comparator;

    .line 2071
    sget-object v0, Lcom/android/server/content/-$$Lambda$SyncManager$68MEyNkTh36YmYoFlURJoRa_-cY;->INSTANCE:Lcom/android/server/content/-$$Lambda$SyncManager$68MEyNkTh36YmYoFlURJoRa_-cY;

    sput-object v0, Lcom/android/server/content/SyncManager;->sOpRuntimeComparator:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "factoryTest"    # Z

    .line 580
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 230
    sget-object v0, Lcom/android/server/content/SyncManager;->INITIAL_ACCOUNTS_ARRAY:[Landroid/accounts/AccountAndUser;

    iput-object v0, p0, Lcom/android/server/content/SyncManager;->mRunningAccounts:[Landroid/accounts/AccountAndUser;

    .line 234
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/content/SyncManager;->mDataConnectionIsConnected:Z

    .line 235
    iput-boolean v0, p0, Lcom/android/server/content/SyncManager;->mStorageIsLow:Z

    .line 236
    iput-boolean v0, p0, Lcom/android/server/content/SyncManager;->mDeviceIsIdle:Z

    .line 237
    iput-boolean v0, p0, Lcom/android/server/content/SyncManager;->mReportedSyncActive:Z

    .line 247
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/content/SyncManager;->mActiveSyncContexts:Ljava/util/ArrayList;

    .line 298
    new-instance v1, Lcom/android/server/content/SyncManager$1;

    invoke-direct {v1, p0}, Lcom/android/server/content/SyncManager$1;-><init>(Lcom/android/server/content/SyncManager;)V

    iput-object v1, p0, Lcom/android/server/content/SyncManager;->mStorageIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 323
    new-instance v1, Lcom/android/server/content/SyncManager$2;

    invoke-direct {v1, p0}, Lcom/android/server/content/SyncManager$2;-><init>(Lcom/android/server/content/SyncManager;)V

    iput-object v1, p0, Lcom/android/server/content/SyncManager;->mBootCompletedReceiver:Landroid/content/BroadcastReceiver;

    .line 333
    new-instance v1, Lcom/android/server/content/SyncManager$3;

    invoke-direct {v1, p0}, Lcom/android/server/content/SyncManager$3;-><init>(Lcom/android/server/content/SyncManager;)V

    iput-object v1, p0, Lcom/android/server/content/SyncManager;->mAccountsUpdatedReceiver:Landroid/content/BroadcastReceiver;

    .line 387
    new-instance v1, Lcom/android/server/content/SyncManager$4;

    invoke-direct {v1, p0}, Lcom/android/server/content/SyncManager$4;-><init>(Lcom/android/server/content/SyncManager;)V

    iput-object v1, p0, Lcom/android/server/content/SyncManager;->mConnectivityIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 425
    new-instance v1, Lcom/android/server/content/SyncManager$5;

    invoke-direct {v1, p0}, Lcom/android/server/content/SyncManager$5;-><init>(Lcom/android/server/content/SyncManager;)V

    iput-object v1, p0, Lcom/android/server/content/SyncManager;->mShutdownIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 437
    new-instance v1, Lcom/android/server/content/SyncManager$6;

    invoke-direct {v1, p0}, Lcom/android/server/content/SyncManager$6;-><init>(Lcom/android/server/content/SyncManager;)V

    iput-object v1, p0, Lcom/android/server/content/SyncManager;->mOtherIntentsReceiver:Landroid/content/BroadcastReceiver;

    .line 448
    new-instance v1, Lcom/android/server/content/SyncManager$7;

    invoke-direct {v1, p0}, Lcom/android/server/content/SyncManager$7;-><init>(Lcom/android/server/content/SyncManager;)V

    iput-object v1, p0, Lcom/android/server/content/SyncManager;->mUserIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 469
    iput-boolean v0, p0, Lcom/android/server/content/SyncManager;->mBootCompleted:Z

    .line 470
    iput-boolean v0, p0, Lcom/android/server/content/SyncManager;->mJobServiceReady:Z

    .line 581
    const-class v1, Lcom/android/server/content/SyncManager;

    monitor-enter v1

    .line 582
    :try_start_0
    sget-object v2, Lcom/android/server/content/SyncManager;->sInstance:Lcom/android/server/content/SyncManager;

    if-nez v2, :cond_0

    .line 583
    sput-object p0, Lcom/android/server/content/SyncManager;->sInstance:Lcom/android/server/content/SyncManager;

    goto :goto_0

    .line 585
    :cond_0
    const-string v2, "SyncManager"

    const-string v3, "SyncManager instantiated multiple times"

    invoke-static {v2, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 591
    iput-object p1, p0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    .line 593
    invoke-static {}, Lcom/android/server/content/SyncLogger;->getInstance()Lcom/android/server/content/SyncLogger;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/content/SyncManager;->mLogger:Lcom/android/server/content/SyncLogger;

    .line 595
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->get()Lcom/android/internal/os/BackgroundThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/os/BackgroundThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/server/content/SyncStorageEngine;->init(Landroid/content/Context;Landroid/os/Looper;)V

    .line 596
    invoke-static {}, Lcom/android/server/content/SyncStorageEngine;->getSingleton()Lcom/android/server/content/SyncStorageEngine;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    .line 597
    iget-object v1, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    new-instance v2, Lcom/android/server/content/SyncManager$9;

    invoke-direct {v2, p0}, Lcom/android/server/content/SyncManager$9;-><init>(Lcom/android/server/content/SyncManager;)V

    invoke-virtual {v1, v2}, Lcom/android/server/content/SyncStorageEngine;->setOnSyncRequestListener(Lcom/android/server/content/SyncStorageEngine$OnSyncRequestListener;)V

    .line 606
    iget-object v1, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    new-instance v2, Lcom/android/server/content/SyncManager$10;

    invoke-direct {v2, p0}, Lcom/android/server/content/SyncManager$10;-><init>(Lcom/android/server/content/SyncManager;)V

    invoke-virtual {v1, v2}, Lcom/android/server/content/SyncStorageEngine;->setPeriodicSyncAddedListener(Lcom/android/server/content/SyncStorageEngine$PeriodicSyncAddedListener;)V

    .line 615
    iget-object v1, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    new-instance v2, Lcom/android/server/content/SyncManager$11;

    invoke-direct {v2, p0}, Lcom/android/server/content/SyncManager$11;-><init>(Lcom/android/server/content/SyncManager;)V

    invoke-virtual {v1, v2}, Lcom/android/server/content/SyncStorageEngine;->setOnAuthorityRemovedListener(Lcom/android/server/content/SyncStorageEngine$OnAuthorityRemovedListener;)V

    .line 622
    new-instance v1, Landroid/content/SyncAdaptersCache;

    iget-object v2, p0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/content/SyncAdaptersCache;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/content/SyncManager;->mSyncAdapters:Landroid/content/SyncAdaptersCache;

    .line 624
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "SyncManager"

    const/16 v3, 0xa

    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/android/server/content/SyncManager;->mThread:Landroid/os/HandlerThread;

    .line 625
    iget-object v1, p0, Lcom/android/server/content/SyncManager;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 626
    new-instance v1, Lcom/android/server/content/SyncManager$SyncHandler;

    iget-object v2, p0, Lcom/android/server/content/SyncManager;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/content/SyncManager$SyncHandler;-><init>(Lcom/android/server/content/SyncManager;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    .line 628
    iget-object v1, p0, Lcom/android/server/content/SyncManager;->mSyncAdapters:Landroid/content/SyncAdaptersCache;

    new-instance v2, Lcom/android/server/content/SyncManager$12;

    invoke-direct {v2, p0}, Lcom/android/server/content/SyncManager$12;-><init>(Lcom/android/server/content/SyncManager;)V

    iget-object v3, p0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    invoke-virtual {v1, v2, v3}, Landroid/content/SyncAdaptersCache;->setListener(Landroid/content/pm/RegisteredServicesCacheListener;Landroid/os/Handler;)V

    .line 640
    new-instance v1, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Random;-><init>(J)V

    iput-object v1, p0, Lcom/android/server/content/SyncManager;->mRand:Ljava/util/Random;

    .line 641
    new-instance v1, Lcom/android/server/content/SyncManagerConstants;

    invoke-direct {v1, p1}, Lcom/android/server/content/SyncManagerConstants;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/content/SyncManager;->mConstants:Lcom/android/server/content/SyncManagerConstants;

    .line 643
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 644
    .local v1, "intentFilter":Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/android/server/content/SyncManager;->mConnectivityIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 646
    if-nez p2, :cond_1

    .line 647
    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    .line 648
    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 649
    iget-object v2, p0, Lcom/android/server/content/SyncManager;->mBootCompletedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 652
    :cond_1
    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.DEVICE_STORAGE_LOW"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    .line 653
    const-string v2, "android.intent.action.DEVICE_STORAGE_OK"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 654
    iget-object v2, p0, Lcom/android/server/content/SyncManager;->mStorageIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 656
    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.ACTION_SHUTDOWN"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    .line 657
    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 658
    iget-object v2, p0, Lcom/android/server/content/SyncManager;->mShutdownIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 660
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    move-object v1, v2

    .line 661
    const-string v2, "android.intent.action.USER_REMOVED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 662
    const-string v2, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 663
    const-string v2, "android.intent.action.USER_STOPPED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 664
    iget-object v3, p0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/content/SyncManager;->mUserIntentReceiver:Landroid/content/BroadcastReceiver;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v6, v1

    invoke-virtual/range {v3 .. v8}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 667
    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.TIME_SET"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    .line 668
    iget-object v2, p0, Lcom/android/server/content/SyncManager;->mOtherIntentsReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 670
    const/4 v2, 0x0

    if-nez p2, :cond_2

    .line 671
    const-string/jumbo v3, "notification"

    .line 672
    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    iput-object v3, p0, Lcom/android/server/content/SyncManager;->mNotificationMgr:Landroid/app/NotificationManager;

    goto :goto_1

    .line 674
    :cond_2
    iput-object v2, p0, Lcom/android/server/content/SyncManager;->mNotificationMgr:Landroid/app/NotificationManager;

    .line 676
    :goto_1
    const-string/jumbo v3, "power"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    iput-object v3, p0, Lcom/android/server/content/SyncManager;->mPowerManager:Landroid/os/PowerManager;

    .line 677
    iget-object v3, p0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "user"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;

    iput-object v3, p0, Lcom/android/server/content/SyncManager;->mUserManager:Landroid/os/UserManager;

    .line 678
    iget-object v3, p0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    const-string v4, "account"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/accounts/AccountManager;

    iput-object v3, p0, Lcom/android/server/content/SyncManager;->mAccountManager:Landroid/accounts/AccountManager;

    .line 679
    const-class v3, Landroid/accounts/AccountManagerInternal;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/accounts/AccountManagerInternal;

    iput-object v3, p0, Lcom/android/server/content/SyncManager;->mAccountManagerInternal:Landroid/accounts/AccountManagerInternal;

    .line 680
    const-class v3, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageManagerInternal;

    iput-object v3, p0, Lcom/android/server/content/SyncManager;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 682
    iget-object v3, p0, Lcom/android/server/content/SyncManager;->mAccountManagerInternal:Landroid/accounts/AccountManagerInternal;

    new-instance v4, Lcom/android/server/content/-$$Lambda$SyncManager$HhiSFjEoPA_Hnv3xYZGfwkalc68;

    invoke-direct {v4, p0}, Lcom/android/server/content/-$$Lambda$SyncManager$HhiSFjEoPA_Hnv3xYZGfwkalc68;-><init>(Lcom/android/server/content/SyncManager;)V

    invoke-virtual {v3, v4}, Landroid/accounts/AccountManagerInternal;->addOnAppPermissionChangeListener(Landroid/accounts/AccountManagerInternal$OnAppPermissionChangeListener;)V

    .line 692
    const-string v3, "batterystats"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/content/SyncManager;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 699
    iget-object v3, p0, Lcom/android/server/content/SyncManager;->mPowerManager:Landroid/os/PowerManager;

    const-string v4, "SyncManagerHandleSyncAlarm"

    const/4 v5, 0x1

    invoke-virtual {v3, v5, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/content/SyncManager;->mHandleAlarmWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 701
    iget-object v3, p0, Lcom/android/server/content/SyncManager;->mHandleAlarmWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3, v0}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 708
    iget-object v3, p0, Lcom/android/server/content/SyncManager;->mPowerManager:Landroid/os/PowerManager;

    const-string v4, "SyncLoopWakeLock"

    invoke-virtual {v3, v5, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/content/SyncManager;->mSyncManagerWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 710
    iget-object v3, p0, Lcom/android/server/content/SyncManager;->mSyncManagerWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3, v0}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 712
    invoke-direct {p0}, Lcom/android/server/content/SyncManager;->isDeviceProvisioned()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/content/SyncManager;->mProvisioned:Z

    .line 713
    iget-boolean v3, p0, Lcom/android/server/content/SyncManager;->mProvisioned:Z

    if-nez v3, :cond_4

    .line 714
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 715
    .local v3, "resolver":Landroid/content/ContentResolver;
    new-instance v4, Lcom/android/server/content/SyncManager$13;

    invoke-direct {v4, p0, v2, v3}, Lcom/android/server/content/SyncManager$13;-><init>(Lcom/android/server/content/SyncManager;Landroid/os/Handler;Landroid/content/ContentResolver;)V

    move-object v2, v4

    .line 726
    .local v2, "provisionedObserver":Landroid/database/ContentObserver;
    iget-object v4, p0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    monitor-enter v4

    .line 727
    :try_start_1
    const-string v6, "device_provisioned"

    .line 728
    invoke-static {v6}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 727
    invoke-virtual {v3, v6, v0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 734
    iget-boolean v6, p0, Lcom/android/server/content/SyncManager;->mProvisioned:Z

    invoke-direct {p0}, Lcom/android/server/content/SyncManager;->isDeviceProvisioned()Z

    move-result v7

    or-int/2addr v6, v7

    iput-boolean v6, p0, Lcom/android/server/content/SyncManager;->mProvisioned:Z

    .line 735
    iget-boolean v6, p0, Lcom/android/server/content/SyncManager;->mProvisioned:Z

    if-eqz v6, :cond_3

    .line 736
    invoke-virtual {v3, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 738
    :cond_3
    monitor-exit v4

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 741
    .end local v2    # "provisionedObserver":Landroid/database/ContentObserver;
    .end local v3    # "resolver":Landroid/content/ContentResolver;
    :cond_4
    :goto_2
    if-nez p2, :cond_5

    .line 743
    iget-object v6, p0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/server/content/SyncManager;->mAccountsUpdatedReceiver:Landroid/content/BroadcastReceiver;

    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    new-instance v9, Landroid/content/IntentFilter;

    const-string v2, "android.accounts.LOGIN_ACCOUNTS_CHANGED"

    invoke-direct {v9, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v6 .. v11}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 753
    :cond_5
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    const-class v4, Lcom/android/server/content/SyncJobService;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 754
    .local v2, "startServiceIntent":Landroid/content/Intent;
    const-string/jumbo v3, "messenger"

    new-instance v4, Landroid/os/Messenger;

    iget-object v6, p0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    invoke-direct {v4, v6}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 755
    new-instance v3, Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v4, Lcom/android/server/content/SyncManager$14;

    invoke-direct {v4, p0, v2}, Lcom/android/server/content/SyncManager$14;-><init>(Lcom/android/server/content/SyncManager;Landroid/content/Intent;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 768
    invoke-direct {p0}, Lcom/android/server/content/SyncManager;->whiteListExistingSyncAdaptersIfNeeded()V

    .line 770
    iget-object v3, p0, Lcom/android/server/content/SyncManager;->mLogger:Lcom/android/server/content/SyncLogger;

    new-array v4, v5, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Sync manager initialized: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-virtual {v3, v4}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 771
    return-void

    .line 587
    .end local v1    # "intentFilter":Landroid/content/IntentFilter;
    .end local v2    # "startServiceIntent":Landroid/content/Intent;
    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method static synthetic access$000(Lcom/android/server/content/SyncManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/content/SyncManager;

    .line 155
    iget-boolean v0, p0, Lcom/android/server/content/SyncManager;->mStorageIsLow:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/server/content/SyncManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/content/SyncManager;
    .param p1, "x1"    # Z

    .line 155
    iput-boolean p1, p0, Lcom/android/server/content/SyncManager;->mStorageIsLow:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncStorageEngine$EndPoint;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/content/SyncManager;
    .param p1, "x1"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .param p2, "x2"    # Ljava/lang/String;

    .line 155
    invoke-direct {p0, p1, p2}, Lcom/android/server/content/SyncManager;->rescheduleSyncs(Lcom/android/server/content/SyncStorageEngine$EndPoint;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncLogger;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/content/SyncManager;

    .line 155
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mLogger:Lcom/android/server/content/SyncLogger;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncStorageEngine;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/content/SyncManager;

    .line 155
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/content/SyncManager;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/content/SyncManager;
    .param p1, "x1"    # I

    .line 155
    invoke-direct {p0, p1}, Lcom/android/server/content/SyncManager;->onUserRemoved(I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/content/SyncManager;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/content/SyncManager;
    .param p1, "x1"    # I

    .line 155
    invoke-direct {p0, p1}, Lcom/android/server/content/SyncManager;->onUserUnlocked(I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/content/SyncManager;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/content/SyncManager;
    .param p1, "x1"    # I

    .line 155
    invoke-direct {p0, p1}, Lcom/android/server/content/SyncManager;->onUserStopped(I)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/content/SyncManager;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/content/SyncManager;

    .line 155
    invoke-direct {p0}, Lcom/android/server/content/SyncManager;->getAllPendingSyncs()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncOperation;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/content/SyncManager;
    .param p1, "x1"    # Lcom/android/server/content/SyncOperation;
    .param p2, "x2"    # Ljava/lang/String;

    .line 155
    invoke-direct {p0, p1, p2}, Lcom/android/server/content/SyncManager;->cancelJob(Lcom/android/server/content/SyncOperation;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncStorageEngine$EndPoint;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/content/SyncManager;
    .param p1, "x1"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .param p2, "x2"    # Ljava/lang/String;

    .line 155
    invoke-direct {p0, p1, p2}, Lcom/android/server/content/SyncManager;->removeSyncsForAuthority(Lcom/android/server/content/SyncStorageEngine$EndPoint;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/content/SyncManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/content/SyncManager;

    .line 155
    iget-boolean v0, p0, Lcom/android/server/content/SyncManager;->mProvisioned:Z

    return v0
.end method

.method static synthetic access$1876(Lcom/android/server/content/SyncManager;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/content/SyncManager;
    .param p1, "x1"    # I

    .line 155
    iget-boolean v0, p0, Lcom/android/server/content/SyncManager;->mProvisioned:Z

    or-int/2addr v0, p1

    int-to-byte v0, v0

    iput-boolean v0, p0, Lcom/android/server/content/SyncManager;->mProvisioned:Z

    return v0
.end method

.method static synthetic access$1900(Lcom/android/server/content/SyncManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/content/SyncManager;

    .line 155
    invoke-direct {p0}, Lcom/android/server/content/SyncManager;->isDeviceProvisioned()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/content/SyncManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/content/SyncManager;

    .line 155
    iget-boolean v0, p0, Lcom/android/server/content/SyncManager;->mBootCompleted:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/android/server/content/SyncManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/content/SyncManager;

    .line 155
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/server/content/SyncManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/content/SyncManager;
    .param p1, "x1"    # Z

    .line 155
    iput-boolean p1, p0, Lcom/android/server/content/SyncManager;->mBootCompleted:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncManager$ActiveSyncContext;Landroid/content/SyncResult;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/content/SyncManager;
    .param p1, "x1"    # Lcom/android/server/content/SyncManager$ActiveSyncContext;
    .param p2, "x2"    # Landroid/content/SyncResult;

    .line 155
    invoke-direct {p0, p1, p2}, Lcom/android/server/content/SyncManager;->sendSyncFinishedOrCanceledMessage(Lcom/android/server/content/SyncManager$ActiveSyncContext;Landroid/content/SyncResult;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/server/content/SyncManager;)Lcom/android/internal/app/IBatteryStats;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/content/SyncManager;

    .line 155
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/server/content/SyncManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/content/SyncManager;

    .line 155
    iget-boolean v0, p0, Lcom/android/server/content/SyncManager;->mJobServiceReady:Z

    return v0
.end method

.method static synthetic access$2802(Lcom/android/server/content/SyncManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/content/SyncManager;
    .param p1, "x1"    # Z

    .line 155
    iput-boolean p1, p0, Lcom/android/server/content/SyncManager;->mJobServiceReady:Z

    return p1
.end method

.method static synthetic access$2900(Lcom/android/server/content/SyncManager;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/content/SyncManager;

    .line 155
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncManagerWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/content/SyncManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/content/SyncManager;

    .line 155
    invoke-direct {p0}, Lcom/android/server/content/SyncManager;->verifyJobScheduler()V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncJobService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/content/SyncManager;

    .line 155
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncJobService:Lcom/android/server/content/SyncJobService;

    return-object v0
.end method

.method static synthetic access$3002(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncJobService;)Lcom/android/server/content/SyncJobService;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/content/SyncManager;
    .param p1, "x1"    # Lcom/android/server/content/SyncJobService;

    .line 155
    iput-object p1, p0, Lcom/android/server/content/SyncManager;->mSyncJobService:Lcom/android/server/content/SyncJobService;

    return-object p1
.end method

.method static synthetic access$3100(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncOperation;J)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/content/SyncManager;
    .param p1, "x1"    # Lcom/android/server/content/SyncOperation;
    .param p2, "x2"    # J

    .line 155
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/content/SyncManager;->scheduleSyncOperationH(Lcom/android/server/content/SyncOperation;J)V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncStorageEngine$EndPoint;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/content/SyncManager;
    .param p1, "x1"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 155
    invoke-direct {p0, p1}, Lcom/android/server/content/SyncManager;->increaseBackoffSetting(Lcom/android/server/content/SyncStorageEngine$EndPoint;)V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncManager$ActiveSyncContext;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/content/SyncManager;
    .param p1, "x1"    # Lcom/android/server/content/SyncManager$ActiveSyncContext;

    .line 155
    invoke-direct {p0, p1}, Lcom/android/server/content/SyncManager;->isSyncStillActiveH(Lcom/android/server/content/SyncManager$ActiveSyncContext;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3400(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncManager$ActiveSyncContext;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/content/SyncManager;
    .param p1, "x1"    # Lcom/android/server/content/SyncManager$ActiveSyncContext;

    .line 155
    invoke-direct {p0, p1}, Lcom/android/server/content/SyncManager;->postMonitorSyncProgressMessage(Lcom/android/server/content/SyncManager$ActiveSyncContext;)V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/server/content/SyncManager;)Landroid/os/PowerManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/content/SyncManager;

    .line 155
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mPowerManager:Landroid/os/PowerManager;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/content/SyncManager;
    .param p1, "x1"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 155
    invoke-direct {p0, p1}, Lcom/android/server/content/SyncManager;->isAdapterDelayed(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3700(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncStorageEngine$EndPoint;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/content/SyncManager;
    .param p1, "x1"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 155
    invoke-direct {p0, p1}, Lcom/android/server/content/SyncManager;->setAuthorityPendingState(Lcom/android/server/content/SyncStorageEngine$EndPoint;)V

    return-void
.end method

.method static synthetic access$3800(Lcom/android/server/content/SyncManager;)[Landroid/accounts/AccountAndUser;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/content/SyncManager;

    .line 155
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mRunningAccounts:[Landroid/accounts/AccountAndUser;

    return-object v0
.end method

.method static synthetic access$3802(Lcom/android/server/content/SyncManager;[Landroid/accounts/AccountAndUser;)[Landroid/accounts/AccountAndUser;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/content/SyncManager;
    .param p1, "x1"    # [Landroid/accounts/AccountAndUser;

    .line 155
    iput-object p1, p0, Lcom/android/server/content/SyncManager;->mRunningAccounts:[Landroid/accounts/AccountAndUser;

    return-object p1
.end method

.method static synthetic access$3900(Lcom/android/server/content/SyncManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/content/SyncManager;

    .line 155
    invoke-direct {p0}, Lcom/android/server/content/SyncManager;->doDatabaseCleanup()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncManager$SyncHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/content/SyncManager;

    .line 155
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/android/server/content/SyncManager;[Landroid/accounts/AccountAndUser;Landroid/accounts/Account;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/content/SyncManager;
    .param p1, "x1"    # [Landroid/accounts/AccountAndUser;
    .param p2, "x2"    # Landroid/accounts/Account;
    .param p3, "x3"    # I

    .line 155
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/content/SyncManager;->containsAccountAndUser([Landroid/accounts/AccountAndUser;Landroid/accounts/Account;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4100(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncOperation;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/content/SyncManager;
    .param p1, "x1"    # Lcom/android/server/content/SyncOperation;

    .line 155
    invoke-direct {p0, p1}, Lcom/android/server/content/SyncManager;->scheduleSyncOperationH(Lcom/android/server/content/SyncOperation;)V

    return-void
.end method

.method static synthetic access$4200(Lcom/android/server/content/SyncManager;)Landroid/content/pm/PackageManagerInternal;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/content/SyncManager;

    .line 155
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/android/server/content/SyncManager;)Landroid/accounts/AccountManagerInternal;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/content/SyncManager;

    .line 155
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mAccountManagerInternal:Landroid/accounts/AccountManagerInternal;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/android/server/content/SyncManager;I)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/content/SyncManager;
    .param p1, "x1"    # I

    .line 155
    invoke-direct {p0, p1}, Lcom/android/server/content/SyncManager;->getTotalBytesTransferredByUid(I)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$4500(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncStorageEngine$EndPoint;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/content/SyncManager;
    .param p1, "x1"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .param p2, "x2"    # Ljava/lang/String;

    .line 155
    invoke-direct {p0, p1, p2}, Lcom/android/server/content/SyncManager;->clearBackoffSetting(Lcom/android/server/content/SyncStorageEngine$EndPoint;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4600(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncManagerConstants;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/content/SyncManager;

    .line 155
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mConstants:Lcom/android/server/content/SyncManagerConstants;

    return-object v0
.end method

.method static synthetic access$4700(Lcom/android/server/content/SyncManager;Landroid/content/SyncResult;Lcom/android/server/content/SyncOperation;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/content/SyncManager;
    .param p1, "x1"    # Landroid/content/SyncResult;
    .param p2, "x2"    # Lcom/android/server/content/SyncOperation;

    .line 155
    invoke-direct {p0, p1, p2}, Lcom/android/server/content/SyncManager;->maybeRescheduleSync(Landroid/content/SyncResult;Lcom/android/server/content/SyncOperation;)V

    return-void
.end method

.method static synthetic access$4800(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncOperation;J)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/content/SyncManager;
    .param p1, "x1"    # Lcom/android/server/content/SyncOperation;
    .param p2, "x2"    # J

    .line 155
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/content/SyncManager;->postScheduleSyncMessage(Lcom/android/server/content/SyncOperation;J)V

    return-void
.end method

.method static synthetic access$4900(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncStorageEngine$EndPoint;J)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/content/SyncManager;
    .param p1, "x1"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .param p2, "x2"    # J

    .line 155
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/content/SyncManager;->setDelayUntilTime(Lcom/android/server/content/SyncStorageEngine$EndPoint;J)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncStorageEngine$EndPoint;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/content/SyncManager;
    .param p1, "x1"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 155
    invoke-direct {p0, p1}, Lcom/android/server/content/SyncManager;->updateRunningAccounts(Lcom/android/server/content/SyncStorageEngine$EndPoint;)V

    return-void
.end method

.method static synthetic access$5000(Lcom/android/server/content/SyncManager;)Landroid/app/NotificationManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/content/SyncManager;

    .line 155
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mNotificationMgr:Landroid/app/NotificationManager;

    return-object v0
.end method

.method static synthetic access$5100(Lcom/android/server/content/SyncManager;Landroid/os/UserHandle;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/content/SyncManager;
    .param p1, "x1"    # Landroid/os/UserHandle;

    .line 155
    invoke-direct {p0, p1}, Lcom/android/server/content/SyncManager;->getContextForUser(Landroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/content/SyncManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/content/SyncManager;

    .line 155
    iget-boolean v0, p0, Lcom/android/server/content/SyncManager;->mDataConnectionIsConnected:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/server/content/SyncManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/content/SyncManager;
    .param p1, "x1"    # Z

    .line 155
    iput-boolean p1, p0, Lcom/android/server/content/SyncManager;->mDataConnectionIsConnected:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/server/content/SyncManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/content/SyncManager;

    .line 155
    invoke-direct {p0}, Lcom/android/server/content/SyncManager;->readDataConnectionState()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/content/SyncManager;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/content/SyncManager;
    .param p1, "x1"    # Ljava/lang/String;

    .line 155
    invoke-direct {p0, p1}, Lcom/android/server/content/SyncManager;->clearAllBackoffs(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/content/SyncManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/content/SyncManager;

    .line 155
    invoke-direct {p0}, Lcom/android/server/content/SyncManager;->getJobStats()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private canAccessAccount(Landroid/accounts/Account;Ljava/lang/String;I)Z
    .locals 4
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "uid"    # I

    .line 1189
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mAccountManager:Landroid/accounts/AccountManager;

    .line 1190
    invoke-static {p3}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v1

    .line 1189
    invoke-virtual {v0, p1, p2, v1}, Landroid/accounts/AccountManager;->hasAccountAccess(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1191
    return v1

    .line 1197
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/high16 v2, 0x100000

    .line 1198
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .line 1197
    invoke-virtual {v0, p2, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1199
    return v1

    .line 1200
    :catch_0
    move-exception v0

    .line 1201
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, 0x0

    return v1
.end method

.method private cancelJob(Lcom/android/server/content/SyncOperation;Ljava/lang/String;)V
    .locals 4
    .param p1, "op"    # Lcom/android/server/content/SyncOperation;
    .param p2, "why"    # Ljava/lang/String;

    .line 4141
    if-nez p1, :cond_0

    .line 4142
    const-string v0, "SyncManager"

    const-string v1, "Null sync operation detected."

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 4143
    return-void

    .line 4145
    :cond_0
    iget-boolean v0, p1, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    if-eqz v0, :cond_1

    .line 4146
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mLogger:Lcom/android/server/content/SyncLogger;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "Removing periodic sync "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    const-string v3, " for "

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object p2, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 4148
    :cond_1
    invoke-direct {p0}, Lcom/android/server/content/SyncManager;->getJobScheduler()Landroid/app/job/JobScheduler;

    move-result-object v0

    iget v1, p1, Lcom/android/server/content/SyncOperation;->jobId:I

    invoke-virtual {v0, v1}, Landroid/app/job/JobScheduler;->cancel(I)V

    .line 4149
    return-void
.end method

.method private cleanupJobs()V
    .locals 2

    .line 487
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    new-instance v1, Lcom/android/server/content/SyncManager$8;

    invoke-direct {v1, p0}, Lcom/android/server/content/SyncManager$8;-><init>(Lcom/android/server/content/SyncManager;)V

    invoke-virtual {v0, v1}, Lcom/android/server/content/SyncManager$SyncHandler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 509
    return-void
.end method

.method private clearAllBackoffs(Ljava/lang/String;)V
    .locals 1
    .param p1, "why"    # Ljava/lang/String;

    .line 409
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    invoke-virtual {v0}, Lcom/android/server/content/SyncStorageEngine;->clearAllBackoffsLocked()V

    .line 410
    sget-object v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->USER_ALL_PROVIDER_ALL_ACCOUNTS_ALL:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-direct {p0, v0, p1}, Lcom/android/server/content/SyncManager;->rescheduleSyncs(Lcom/android/server/content/SyncStorageEngine$EndPoint;Ljava/lang/String;)V

    .line 411
    return-void
.end method

.method private clearBackoffSetting(Lcom/android/server/content/SyncStorageEngine$EndPoint;Ljava/lang/String;)V
    .locals 9
    .param p1, "target"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .param p2, "why"    # Ljava/lang/String;

    .line 1381
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    invoke-virtual {v0, p1}, Lcom/android/server/content/SyncStorageEngine;->getBackoff(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Landroid/util/Pair;

    move-result-object v0

    .line 1382
    .local v0, "backoff":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    .line 1383
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 1384
    return-void

    .line 1386
    :cond_0
    const-string v1, "SyncManager"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1387
    const-string v1, "SyncManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Clearing backoffs for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1389
    :cond_1
    iget-object v3, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    const-wide/16 v5, -0x1

    const-wide/16 v7, -0x1

    move-object v4, p1

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/content/SyncStorageEngine;->setBackoff(Lcom/android/server/content/SyncStorageEngine$EndPoint;JJ)V

    .line 1393
    invoke-direct {p0, p1, p2}, Lcom/android/server/content/SyncManager;->rescheduleSyncs(Lcom/android/server/content/SyncStorageEngine$EndPoint;Ljava/lang/String;)V

    .line 1394
    return-void
.end method

.method private containsAccountAndUser([Landroid/accounts/AccountAndUser;Landroid/accounts/Account;I)Z
    .locals 3
    .param p1, "accounts"    # [Landroid/accounts/AccountAndUser;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "userId"    # I

    .line 356
    const/4 v0, 0x0

    .line 357
    .local v0, "found":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 358
    aget-object v2, p1, v1

    iget v2, v2, Landroid/accounts/AccountAndUser;->userId:I

    if-ne v2, p3, :cond_0

    aget-object v2, p1, v1

    iget-object v2, v2, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    .line 359
    invoke-virtual {v2, p2}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 360
    const/4 v0, 0x1

    .line 361
    goto :goto_1

    .line 357
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 364
    .end local v1    # "i":I
    :cond_1
    :goto_1
    return v0
.end method

.method private static countIf(Ljava/util/Collection;Ljava/util/function/Predicate;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TT;>;",
            "Ljava/util/function/Predicate<",
            "TT;>;)I"
        }
    .end annotation

    .line 2079
    .local p0, "col":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    .local p1, "p":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<TT;>;"
    const/4 v0, 0x0

    .line 2080
    .local v0, "ret":I
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 2081
    .local v2, "item":Ljava/lang/Object;, "TT;"
    invoke-interface {p1, v2}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 2082
    .end local v2    # "item":Ljava/lang/Object;, "TT;"
    :cond_0
    goto :goto_0

    .line 2083
    :cond_1
    return v0
.end method

.method private doDatabaseCleanup()V
    .locals 5

    .line 377
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mUserManager:Landroid/os/UserManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 379
    .local v1, "user":Landroid/content/pm/UserInfo;
    iget-boolean v2, v1, Landroid/content/pm/UserInfo;->partial:Z

    if-eqz v2, :cond_0

    .end local v1    # "user":Landroid/content/pm/UserInfo;
    goto :goto_0

    .line 380
    .restart local v1    # "user":Landroid/content/pm/UserInfo;
    :cond_0
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->getSingleton()Lcom/android/server/accounts/AccountManagerService;

    move-result-object v2

    iget v3, v1, Landroid/content/pm/UserInfo;->id:I

    iget-object v4, p0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    .line 381
    invoke-virtual {v4}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    .line 380
    invoke-virtual {v2, v3, v4}, Lcom/android/server/accounts/AccountManagerService;->getAccounts(ILjava/lang/String;)[Landroid/accounts/Account;

    move-result-object v2

    .line 383
    .local v2, "accountsForUser":[Landroid/accounts/Account;
    iget-object v3, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    iget v4, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v3, v2, v4}, Lcom/android/server/content/SyncStorageEngine;->doDatabaseCleanup([Landroid/accounts/Account;I)V

    .line 384
    .end local v1    # "user":Landroid/content/pm/UserInfo;
    .end local v2    # "accountsForUser":[Landroid/accounts/Account;
    goto :goto_0

    .line 385
    :cond_1
    return-void
.end method

.method private dumpDayStatistic(Ljava/io/PrintWriter;Lcom/android/server/content/SyncStorageEngine$DayStats;)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "ds"    # Lcom/android/server/content/SyncStorageEngine$DayStats;

    .line 2425
    const-string v0, "Success ("

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p2, Lcom/android/server/content/SyncStorageEngine$DayStats;->successCount:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 2426
    iget v0, p2, Lcom/android/server/content/SyncStorageEngine$DayStats;->successCount:I

    if-lez v0, :cond_0

    .line 2427
    const-string v0, " for "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p2, Lcom/android/server/content/SyncStorageEngine$DayStats;->successTime:J

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/content/SyncManager;->dumpTimeSec(Ljava/io/PrintWriter;J)V

    .line 2428
    const-string v0, " avg="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p2, Lcom/android/server/content/SyncStorageEngine$DayStats;->successTime:J

    iget v2, p2, Lcom/android/server/content/SyncStorageEngine$DayStats;->successCount:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/content/SyncManager;->dumpTimeSec(Ljava/io/PrintWriter;J)V

    .line 2430
    :cond_0
    const-string v0, ") Failure ("

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p2, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureCount:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 2431
    iget v0, p2, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureCount:I

    if-lez v0, :cond_1

    .line 2432
    const-string v0, " for "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p2, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureTime:J

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/content/SyncManager;->dumpTimeSec(Ljava/io/PrintWriter;J)V

    .line 2433
    const-string v0, " avg="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p2, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureTime:J

    iget v2, p2, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureCount:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/content/SyncManager;->dumpTimeSec(Ljava/io/PrintWriter;J)V

    .line 2435
    :cond_1
    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2436
    return-void
.end method

.method private dumpDayStatistics(Ljava/io/PrintWriter;)V
    .locals 12
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 2681
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    invoke-virtual {v0}, Lcom/android/server/content/SyncStorageEngine;->getDayStatistics()[Lcom/android/server/content/SyncStorageEngine$DayStats;

    move-result-object v0

    .line 2682
    .local v0, "dses":[Lcom/android/server/content/SyncStorageEngine$DayStats;
    if-eqz v0, :cond_8

    const/4 v1, 0x0

    aget-object v2, v0, v1

    if-eqz v2, :cond_8

    .line 2683
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2684
    const-string v2, "Sync Statistics"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2685
    const-string v2, "  Today:  "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    aget-object v2, v0, v1

    invoke-direct {p0, p1, v2}, Lcom/android/server/content/SyncManager;->dumpDayStatistic(Ljava/io/PrintWriter;Lcom/android/server/content/SyncStorageEngine$DayStats;)V

    .line 2686
    aget-object v1, v0, v1

    iget v1, v1, Lcom/android/server/content/SyncStorageEngine$DayStats;->day:I

    .line 2691
    .local v1, "today":I
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    const/4 v3, 0x6

    if-gt v2, v3, :cond_2

    array-length v4, v0

    if-ge v2, v4, :cond_2

    .line 2692
    aget-object v4, v0, v2

    .line 2693
    .local v4, "ds":Lcom/android/server/content/SyncStorageEngine$DayStats;
    if-nez v4, :cond_0

    .end local v4    # "ds":Lcom/android/server/content/SyncStorageEngine$DayStats;
    goto :goto_1

    .line 2694
    .restart local v4    # "ds":Lcom/android/server/content/SyncStorageEngine$DayStats;
    :cond_0
    iget v5, v4, Lcom/android/server/content/SyncStorageEngine$DayStats;->day:I

    sub-int v5, v1, v5

    .line 2695
    .local v5, "delta":I
    if-le v5, v3, :cond_1

    .end local v4    # "ds":Lcom/android/server/content/SyncStorageEngine$DayStats;
    .end local v5    # "delta":I
    goto :goto_1

    .line 2697
    .restart local v4    # "ds":Lcom/android/server/content/SyncStorageEngine$DayStats;
    .restart local v5    # "delta":I
    :cond_1
    const-string v3, "  Day-"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, ":  "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2698
    invoke-direct {p0, p1, v4}, Lcom/android/server/content/SyncManager;->dumpDayStatistic(Ljava/io/PrintWriter;Lcom/android/server/content/SyncStorageEngine$DayStats;)V

    .line 2691
    .end local v5    # "delta":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2702
    .end local v4    # "ds":Lcom/android/server/content/SyncStorageEngine$DayStats;
    :cond_2
    :goto_1
    move v4, v2

    move v2, v1

    .line 2703
    .local v2, "weekDay":I
    .local v4, "i":I
    :goto_2
    array-length v5, v0

    if-ge v4, v5, :cond_8

    .line 2704
    const/4 v5, 0x0

    .line 2705
    .local v5, "aggr":Lcom/android/server/content/SyncStorageEngine$DayStats;
    add-int/lit8 v2, v2, -0x7

    .line 2706
    :goto_3
    array-length v6, v0

    if-ge v4, v6, :cond_6

    .line 2707
    aget-object v6, v0, v4

    .line 2708
    .local v6, "ds":Lcom/android/server/content/SyncStorageEngine$DayStats;
    if-nez v6, :cond_3

    .line 2709
    array-length v4, v0

    .line 2710
    goto :goto_4

    .line 2712
    :cond_3
    iget v7, v6, Lcom/android/server/content/SyncStorageEngine$DayStats;->day:I

    sub-int v7, v2, v7

    .line 2713
    .local v7, "delta":I
    if-le v7, v3, :cond_4

    .end local v6    # "ds":Lcom/android/server/content/SyncStorageEngine$DayStats;
    .end local v7    # "delta":I
    goto :goto_4

    .line 2714
    .restart local v6    # "ds":Lcom/android/server/content/SyncStorageEngine$DayStats;
    .restart local v7    # "delta":I
    :cond_4
    add-int/lit8 v4, v4, 0x1

    .line 2716
    if-nez v5, :cond_5

    .line 2717
    new-instance v8, Lcom/android/server/content/SyncStorageEngine$DayStats;

    invoke-direct {v8, v2}, Lcom/android/server/content/SyncStorageEngine$DayStats;-><init>(I)V

    move-object v5, v8

    .line 2719
    :cond_5
    iget v8, v5, Lcom/android/server/content/SyncStorageEngine$DayStats;->successCount:I

    iget v9, v6, Lcom/android/server/content/SyncStorageEngine$DayStats;->successCount:I

    add-int/2addr v8, v9

    iput v8, v5, Lcom/android/server/content/SyncStorageEngine$DayStats;->successCount:I

    .line 2720
    iget-wide v8, v5, Lcom/android/server/content/SyncStorageEngine$DayStats;->successTime:J

    iget-wide v10, v6, Lcom/android/server/content/SyncStorageEngine$DayStats;->successTime:J

    add-long/2addr v8, v10

    iput-wide v8, v5, Lcom/android/server/content/SyncStorageEngine$DayStats;->successTime:J

    .line 2721
    iget v8, v5, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureCount:I

    iget v9, v6, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureCount:I

    add-int/2addr v8, v9

    iput v8, v5, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureCount:I

    .line 2722
    iget-wide v8, v5, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureTime:J

    iget-wide v10, v6, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureTime:J

    add-long/2addr v8, v10

    iput-wide v8, v5, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureTime:J

    .line 2723
    .end local v7    # "delta":I
    goto :goto_3

    .line 2724
    .end local v6    # "ds":Lcom/android/server/content/SyncStorageEngine$DayStats;
    :cond_6
    :goto_4
    if-eqz v5, :cond_7

    .line 2725
    const-string v6, "  Week-"

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sub-int v6, v1, v2

    div-int/lit8 v6, v6, 0x7

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(I)V

    const-string v6, ": "

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2726
    invoke-direct {p0, p1, v5}, Lcom/android/server/content/SyncManager;->dumpDayStatistic(Ljava/io/PrintWriter;Lcom/android/server/content/SyncStorageEngine$DayStats;)V

    .line 2728
    .end local v5    # "aggr":Lcom/android/server/content/SyncStorageEngine$DayStats;
    :cond_7
    goto :goto_2

    .line 2730
    .end local v1    # "today":I
    .end local v2    # "weekDay":I
    .end local v4    # "i":I
    :cond_8
    return-void
.end method

.method private dumpRecentHistory(Ljava/io/PrintWriter;)V
    .locals 69
    .param p1, "pw"    # Ljava/io/PrintWriter;

    move-object/from16 v0, p0

    .line 2444
    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    .line 2445
    invoke-virtual {v2}, Lcom/android/server/content/SyncStorageEngine;->getSyncHistory()Ljava/util/ArrayList;

    move-result-object v2

    .line 2446
    .local v2, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;>;"
    if-eqz v2, :cond_16

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_16

    .line 2447
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v3

    .line 2448
    .local v3, "authorityMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/content/SyncManager$AuthoritySyncStats;>;"
    const-wide/16 v4, 0x0

    .line 2449
    .local v4, "totalElapsedTime":J
    const-wide/16 v6, 0x0

    .line 2450
    .local v6, "totalTimes":J
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 2452
    .local v8, "N":I
    const/4 v9, 0x0

    .line 2453
    .local v9, "maxAuthority":I
    const/4 v10, 0x0

    .line 2454
    .local v10, "maxAccount":I
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;

    .line 2455
    .local v12, "item":Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;
    iget-object v14, v0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    iget v15, v12, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->authorityId:I

    .line 2456
    invoke-virtual {v14, v15}, Lcom/android/server/content/SyncStorageEngine;->getAuthority(I)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v14

    .line 2459
    .local v14, "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    if-eqz v14, :cond_0

    .line 2460
    iget-object v15, v14, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v15, v15, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    .line 2461
    .local v15, "authorityName":Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v17, v11

    iget-object v11, v14, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v11, v11, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v11, v11, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "/"

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v14, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v11, v11, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v11, v11, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " u"

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v14, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget v11, v11, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .local v11, "accountKey":Ljava/lang/String;
    goto :goto_1

    .line 2465
    .end local v11    # "accountKey":Ljava/lang/String;
    .end local v15    # "authorityName":Ljava/lang/String;
    :cond_0
    move-object/from16 v17, v11

    const-string v15, "Unknown"

    .line 2466
    .restart local v15    # "authorityName":Ljava/lang/String;
    const-string v11, "Unknown"

    .line 2469
    .restart local v11    # "accountKey":Ljava/lang/String;
    :goto_1
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v13

    .line 2470
    .local v13, "length":I
    if-le v13, v9, :cond_1

    .line 2471
    move v9, v13

    .line 2473
    :cond_1
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v13

    .line 2474
    if-le v13, v10, :cond_2

    .line 2475
    move v10, v13

    .line 2478
    :cond_2
    move/from16 v18, v9

    move/from16 v19, v10

    iget-wide v9, v12, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->elapsedTime:J

    .line 2479
    .end local v10    # "maxAccount":I
    .local v9, "elapsedTime":J
    .local v18, "maxAuthority":I
    .local v19, "maxAccount":I
    add-long/2addr v4, v9

    .line 2480
    const-wide/16 v20, 0x1

    add-long v6, v6, v20

    .line 2481
    invoke-interface {v3, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/server/content/SyncManager$AuthoritySyncStats;

    .line 2482
    .local v20, "authoritySyncStats":Lcom/android/server/content/SyncManager$AuthoritySyncStats;
    move-wide/from16 v22, v4

    const/4 v4, 0x0

    .line 2482
    .end local v4    # "totalElapsedTime":J
    .local v22, "totalElapsedTime":J
    if-nez v20, :cond_3

    .line 2483
    new-instance v5, Lcom/android/server/content/SyncManager$AuthoritySyncStats;

    invoke-direct {v5, v15, v4}, Lcom/android/server/content/SyncManager$AuthoritySyncStats;-><init>(Ljava/lang/String;Lcom/android/server/content/SyncManager$1;)V

    .line 2484
    .end local v20    # "authoritySyncStats":Lcom/android/server/content/SyncManager$AuthoritySyncStats;
    .local v5, "authoritySyncStats":Lcom/android/server/content/SyncManager$AuthoritySyncStats;
    invoke-interface {v3, v15, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 2486
    .end local v5    # "authoritySyncStats":Lcom/android/server/content/SyncManager$AuthoritySyncStats;
    .restart local v20    # "authoritySyncStats":Lcom/android/server/content/SyncManager$AuthoritySyncStats;
    :cond_3
    move-object/from16 v5, v20

    .line 2486
    .end local v20    # "authoritySyncStats":Lcom/android/server/content/SyncManager$AuthoritySyncStats;
    .restart local v5    # "authoritySyncStats":Lcom/android/server/content/SyncManager$AuthoritySyncStats;
    :goto_2
    move-wide/from16 v24, v6

    iget-wide v6, v5, Lcom/android/server/content/SyncManager$AuthoritySyncStats;->elapsedTime:J

    .line 2486
    .end local v6    # "totalTimes":J
    .local v24, "totalTimes":J
    add-long/2addr v6, v9

    iput-wide v6, v5, Lcom/android/server/content/SyncManager$AuthoritySyncStats;->elapsedTime:J

    .line 2487
    iget v6, v5, Lcom/android/server/content/SyncManager$AuthoritySyncStats;->times:I

    const/4 v7, 0x1

    add-int/2addr v6, v7

    iput v6, v5, Lcom/android/server/content/SyncManager$AuthoritySyncStats;->times:I

    .line 2488
    iget-object v6, v5, Lcom/android/server/content/SyncManager$AuthoritySyncStats;->accountMap:Ljava/util/Map;

    .line 2489
    .local v6, "accountMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/content/SyncManager$AccountSyncStats;>;"
    invoke-interface {v6, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/content/SyncManager$AccountSyncStats;

    .line 2490
    .local v7, "accountSyncStats":Lcom/android/server/content/SyncManager$AccountSyncStats;
    if-nez v7, :cond_4

    .line 2491
    move-object/from16 v26, v5

    new-instance v5, Lcom/android/server/content/SyncManager$AccountSyncStats;

    .line 2491
    .end local v5    # "authoritySyncStats":Lcom/android/server/content/SyncManager$AuthoritySyncStats;
    .local v26, "authoritySyncStats":Lcom/android/server/content/SyncManager$AuthoritySyncStats;
    invoke-direct {v5, v11, v4}, Lcom/android/server/content/SyncManager$AccountSyncStats;-><init>(Ljava/lang/String;Lcom/android/server/content/SyncManager$1;)V

    move-object v7, v5

    .line 2492
    invoke-interface {v6, v11, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 2494
    .end local v26    # "authoritySyncStats":Lcom/android/server/content/SyncManager$AuthoritySyncStats;
    .restart local v5    # "authoritySyncStats":Lcom/android/server/content/SyncManager$AuthoritySyncStats;
    :cond_4
    move-object/from16 v26, v5

    .line 2494
    .end local v5    # "authoritySyncStats":Lcom/android/server/content/SyncManager$AuthoritySyncStats;
    .restart local v26    # "authoritySyncStats":Lcom/android/server/content/SyncManager$AuthoritySyncStats;
    :goto_3
    iget-wide v4, v7, Lcom/android/server/content/SyncManager$AccountSyncStats;->elapsedTime:J

    add-long/2addr v4, v9

    iput-wide v4, v7, Lcom/android/server/content/SyncManager$AccountSyncStats;->elapsedTime:J

    .line 2495
    iget v4, v7, Lcom/android/server/content/SyncManager$AccountSyncStats;->times:I

    const/4 v5, 0x1

    add-int/2addr v4, v5

    iput v4, v7, Lcom/android/server/content/SyncManager$AccountSyncStats;->times:I

    .line 2497
    .end local v6    # "accountMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/content/SyncManager$AccountSyncStats;>;"
    .end local v7    # "accountSyncStats":Lcom/android/server/content/SyncManager$AccountSyncStats;
    .end local v9    # "elapsedTime":J
    .end local v11    # "accountKey":Ljava/lang/String;
    .end local v12    # "item":Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;
    .end local v13    # "length":I
    .end local v14    # "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .end local v15    # "authorityName":Ljava/lang/String;
    .end local v26    # "authoritySyncStats":Lcom/android/server/content/SyncManager$AuthoritySyncStats;
    nop

    .line 2454
    move-object/from16 v11, v17

    move/from16 v9, v18

    move/from16 v10, v19

    move-wide/from16 v4, v22

    move-wide/from16 v6, v24

    goto/16 :goto_0

    .line 2499
    .end local v18    # "maxAuthority":I
    .end local v19    # "maxAccount":I
    .end local v22    # "totalElapsedTime":J
    .end local v24    # "totalTimes":J
    .restart local v4    # "totalElapsedTime":J
    .local v6, "totalTimes":J
    .local v9, "maxAuthority":I
    .restart local v10    # "maxAccount":I
    :cond_5
    const-wide/16 v11, 0x0

    cmp-long v13, v4, v11

    const/4 v14, 0x4

    const-wide/16 v17, 0x3e8

    const/4 v11, 0x2

    const/4 v12, 0x0

    if-lez v13, :cond_8

    .line 2500
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2501
    const-string v13, "Detailed Statistics (Recent history):  %d (# of times) %ds (sync time)\n"

    new-array v15, v11, [Ljava/lang/Object;

    .line 2503
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    aput-object v19, v15, v12

    div-long v11, v4, v17

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    const/4 v12, 0x1

    aput-object v11, v15, v12

    .line 2501
    invoke-virtual {v1, v13, v15}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 2505
    new-instance v11, Ljava/util/ArrayList;

    .line 2506
    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2507
    .local v11, "sortedAuthorities":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/content/SyncManager$AuthoritySyncStats;>;"
    new-instance v12, Lcom/android/server/content/SyncManager$16;

    invoke-direct {v12, v0}, Lcom/android/server/content/SyncManager$16;-><init>(Lcom/android/server/content/SyncManager;)V

    invoke-static {v11, v12}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 2519
    add-int/lit8 v12, v10, 0x3

    invoke-static {v9, v12}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 2520
    .local v12, "maxLength":I
    add-int v13, v14, v12

    const/4 v15, 0x2

    add-int/2addr v13, v15

    add-int/lit8 v13, v13, 0xa

    add-int/lit8 v13, v13, 0xb

    .line 2521
    .local v13, "padLength":I
    new-array v15, v13, [C

    .line 2522
    .local v15, "chars":[C
    const/16 v14, 0x2d

    invoke-static {v15, v14}, Ljava/util/Arrays;->fill([CC)V

    .line 2523
    new-instance v14, Ljava/lang/String;

    invoke-direct {v14, v15}, Ljava/lang/String;-><init>([C)V

    .line 2525
    .local v14, "separator":Ljava/lang/String;
    move-object/from16 v27, v3

    const-string v3, "  %%-%ds: %%-9s  %%-11s\n"

    .line 2525
    .end local v3    # "authorityMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/content/SyncManager$AuthoritySyncStats;>;"
    .local v27, "authorityMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/content/SyncManager$AuthoritySyncStats;>;"
    move/from16 v28, v13

    move-object/from16 v29, v15

    const/4 v13, 0x1

    new-array v15, v13, [Ljava/lang/Object;

    .line 2525
    .end local v13    # "padLength":I
    .end local v15    # "chars":[C
    .local v28, "padLength":I
    .local v29, "chars":[C
    add-int/lit8 v13, v12, 0x2

    .line 2526
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/16 v19, 0x0

    aput-object v13, v15, v19

    invoke-static {v3, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 2527
    .local v3, "authorityFormat":Ljava/lang/String;
    const-string v13, "    %%-%ds:   %%-9s  %%-11s\n"

    move-object/from16 v30, v2

    const/4 v15, 0x1

    new-array v2, v15, [Ljava/lang/Object;

    .line 2528
    .end local v2    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;>;"
    .local v30, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;>;"
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v2, v19

    invoke-static {v13, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 2530
    .local v2, "accountFormat":Ljava/lang/String;
    invoke-virtual {v1, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2531
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_4
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_7

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/content/SyncManager$AuthoritySyncStats;

    .line 2532
    .local v15, "authoritySyncStats":Lcom/android/server/content/SyncManager$AuthoritySyncStats;
    move-object/from16 v31, v11

    iget-object v11, v15, Lcom/android/server/content/SyncManager$AuthoritySyncStats;->name:Ljava/lang/String;

    .line 2538
    .local v11, "name":Ljava/lang/String;
    .local v31, "sortedAuthorities":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/content/SyncManager$AuthoritySyncStats;>;"
    move/from16 v32, v12

    move-object/from16 v33, v13

    iget-wide v12, v15, Lcom/android/server/content/SyncManager$AuthoritySyncStats;->elapsedTime:J

    .line 2539
    .local v12, "elapsedTime":J
    .local v32, "maxLength":I
    move/from16 v34, v8

    iget v8, v15, Lcom/android/server/content/SyncManager$AuthoritySyncStats;->times:I

    .line 2540
    .local v8, "times":I
    .local v34, "N":I
    move/from16 v35, v9

    const-string v9, "%ds/%d%%"

    .line 2540
    .end local v9    # "maxAuthority":I
    .local v35, "maxAuthority":I
    move/from16 v36, v10

    move-object/from16 v37, v14

    const/4 v10, 0x2

    new-array v14, v10, [Ljava/lang/Object;

    .line 2540
    .end local v10    # "maxAccount":I
    .end local v14    # "separator":Ljava/lang/String;
    .local v36, "maxAccount":I
    .local v37, "separator":Ljava/lang/String;
    div-long v0, v12, v17

    .line 2541
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, v14, v1

    const-wide/16 v0, 0x64

    mul-long v19, v12, v0

    div-long v0, v19, v4

    .line 2542
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, v14, v1

    .line 2540
    invoke-static {v9, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2543
    .local v0, "timeStr":Ljava/lang/String;
    const-string v1, "%d/%d%%"

    const/4 v9, 0x2

    new-array v10, v9, [Ljava/lang/Object;

    .line 2544
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v14, 0x0

    aput-object v9, v10, v14

    mul-int/lit8 v9, v8, 0x64

    move/from16 v38, v8

    int-to-long v8, v9

    .line 2544
    .end local v8    # "times":I
    .local v38, "times":I
    div-long/2addr v8, v6

    .line 2545
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v10, v9

    .line 2543
    invoke-static {v1, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 2546
    .local v1, "timesStr":Ljava/lang/String;
    const/4 v8, 0x3

    new-array v10, v8, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v11, v10, v8

    aput-object v1, v10, v9

    const/4 v8, 0x2

    aput-object v0, v10, v8

    move-object/from16 v8, p1

    invoke-virtual {v8, v3, v10}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 2548
    new-instance v9, Ljava/util/ArrayList;

    iget-object v10, v15, Lcom/android/server/content/SyncManager$AuthoritySyncStats;->accountMap:Ljava/util/Map;

    .line 2550
    invoke-interface {v10}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2551
    .local v9, "sortedAccounts":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/content/SyncManager$AccountSyncStats;>;"
    new-instance v10, Lcom/android/server/content/SyncManager$17;

    move-object/from16 v14, p0

    invoke-direct {v10, v14}, Lcom/android/server/content/SyncManager$17;-><init>(Lcom/android/server/content/SyncManager;)V

    invoke-static {v9, v10}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 2562
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_5
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_6

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v39, v0

    move-object/from16 v0, v19

    check-cast v0, Lcom/android/server/content/SyncManager$AccountSyncStats;

    .line 2563
    .local v0, "stats":Lcom/android/server/content/SyncManager$AccountSyncStats;
    .local v39, "timeStr":Ljava/lang/String;
    iget-wide v12, v0, Lcom/android/server/content/SyncManager$AccountSyncStats;->elapsedTime:J

    .line 2564
    move-object/from16 v40, v1

    iget v1, v0, Lcom/android/server/content/SyncManager$AccountSyncStats;->times:I

    .line 2565
    .end local v38    # "times":I
    .local v1, "times":I
    .local v40, "timesStr":Ljava/lang/String;
    move-object/from16 v41, v3

    const-string v3, "%ds/%d%%"

    .line 2565
    .end local v3    # "authorityFormat":Ljava/lang/String;
    .local v41, "authorityFormat":Ljava/lang/String;
    move-object/from16 v42, v9

    move-object/from16 v43, v10

    const/4 v9, 0x2

    new-array v10, v9, [Ljava/lang/Object;

    .line 2565
    .end local v9    # "sortedAccounts":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/content/SyncManager$AccountSyncStats;>;"
    .local v42, "sortedAccounts":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/content/SyncManager$AccountSyncStats;>;"
    move-object/from16 v44, v15

    div-long v14, v12, v17

    .line 2566
    .end local v15    # "authoritySyncStats":Lcom/android/server/content/SyncManager$AuthoritySyncStats;
    .local v44, "authoritySyncStats":Lcom/android/server/content/SyncManager$AuthoritySyncStats;
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    const/4 v14, 0x0

    aput-object v9, v10, v14

    const-wide/16 v14, 0x64

    mul-long v19, v12, v14

    div-long v14, v19, v4

    .line 2567
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    const/4 v14, 0x1

    aput-object v9, v10, v14

    .line 2565
    invoke-static {v3, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 2568
    .end local v39    # "timeStr":Ljava/lang/String;
    .local v3, "timeStr":Ljava/lang/String;
    const-string v9, "%d/%d%%"

    const/4 v10, 0x2

    new-array v14, v10, [Ljava/lang/Object;

    .line 2569
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v15, 0x0

    aput-object v10, v14, v15

    mul-int/lit8 v10, v1, 0x64

    move-wide/from16 v45, v4

    int-to-long v4, v10

    .line 2569
    .end local v4    # "totalElapsedTime":J
    .local v45, "totalElapsedTime":J
    div-long/2addr v4, v6

    .line 2570
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v14, v5

    .line 2568
    invoke-static {v9, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 2571
    .end local v40    # "timesStr":Ljava/lang/String;
    .local v4, "timesStr":Ljava/lang/String;
    const/4 v9, 0x3

    new-array v10, v9, [Ljava/lang/Object;

    iget-object v9, v0, Lcom/android/server/content/SyncManager$AccountSyncStats;->name:Ljava/lang/String;

    const/4 v14, 0x0

    aput-object v9, v10, v14

    aput-object v4, v10, v5

    const/4 v5, 0x2

    aput-object v3, v10, v5

    invoke-virtual {v8, v2, v10}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 2572
    .end local v0    # "stats":Lcom/android/server/content/SyncManager$AccountSyncStats;
    nop

    .line 2562
    move/from16 v38, v1

    move-object v0, v3

    move-object v1, v4

    move-object/from16 v3, v41

    move-object/from16 v9, v42

    move-object/from16 v10, v43

    move-object/from16 v15, v44

    move-wide/from16 v4, v45

    move-object/from16 v14, p0

    goto :goto_5

    .line 2573
    .end local v41    # "authorityFormat":Ljava/lang/String;
    .end local v42    # "sortedAccounts":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/content/SyncManager$AccountSyncStats;>;"
    .end local v44    # "authoritySyncStats":Lcom/android/server/content/SyncManager$AuthoritySyncStats;
    .end local v45    # "totalElapsedTime":J
    .local v0, "timeStr":Ljava/lang/String;
    .local v1, "timesStr":Ljava/lang/String;
    .local v3, "authorityFormat":Ljava/lang/String;
    .local v4, "totalElapsedTime":J
    .restart local v9    # "sortedAccounts":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/content/SyncManager$AccountSyncStats;>;"
    .restart local v15    # "authoritySyncStats":Lcom/android/server/content/SyncManager$AuthoritySyncStats;
    .restart local v38    # "times":I
    :cond_6
    move-object/from16 v39, v0

    move-object/from16 v40, v1

    move-object/from16 v41, v3

    move-wide/from16 v45, v4

    move-object/from16 v42, v9

    move-object/from16 v44, v15

    .line 2573
    .end local v0    # "timeStr":Ljava/lang/String;
    .end local v1    # "timesStr":Ljava/lang/String;
    .end local v3    # "authorityFormat":Ljava/lang/String;
    .end local v4    # "totalElapsedTime":J
    .end local v9    # "sortedAccounts":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/content/SyncManager$AccountSyncStats;>;"
    .end local v15    # "authoritySyncStats":Lcom/android/server/content/SyncManager$AuthoritySyncStats;
    .restart local v39    # "timeStr":Ljava/lang/String;
    .restart local v40    # "timesStr":Ljava/lang/String;
    .restart local v41    # "authorityFormat":Ljava/lang/String;
    .restart local v42    # "sortedAccounts":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/content/SyncManager$AccountSyncStats;>;"
    .restart local v44    # "authoritySyncStats":Lcom/android/server/content/SyncManager$AuthoritySyncStats;
    .restart local v45    # "totalElapsedTime":J
    move-object/from16 v0, v37

    invoke-virtual {v8, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2574
    .end local v11    # "name":Ljava/lang/String;
    .end local v12    # "elapsedTime":J
    .end local v37    # "separator":Ljava/lang/String;
    .end local v38    # "times":I
    .end local v39    # "timeStr":Ljava/lang/String;
    .end local v40    # "timesStr":Ljava/lang/String;
    .end local v42    # "sortedAccounts":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/content/SyncManager$AccountSyncStats;>;"
    .end local v44    # "authoritySyncStats":Lcom/android/server/content/SyncManager$AuthoritySyncStats;
    .local v0, "separator":Ljava/lang/String;
    nop

    .line 2531
    move-object v14, v0

    move-object v1, v8

    move-object/from16 v11, v31

    move/from16 v12, v32

    move-object/from16 v13, v33

    move/from16 v8, v34

    move/from16 v9, v35

    move/from16 v10, v36

    move-object/from16 v0, p0

    goto/16 :goto_4

    .line 2577
    .end local v0    # "separator":Ljava/lang/String;
    .end local v2    # "accountFormat":Ljava/lang/String;
    .end local v28    # "padLength":I
    .end local v29    # "chars":[C
    .end local v31    # "sortedAuthorities":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/content/SyncManager$AuthoritySyncStats;>;"
    .end local v32    # "maxLength":I
    .end local v34    # "N":I
    .end local v35    # "maxAuthority":I
    .end local v36    # "maxAccount":I
    .end local v41    # "authorityFormat":Ljava/lang/String;
    .end local v45    # "totalElapsedTime":J
    .restart local v4    # "totalElapsedTime":J
    .local v8, "N":I
    .local v9, "maxAuthority":I
    .restart local v10    # "maxAccount":I
    :cond_7
    move-wide/from16 v45, v4

    move/from16 v34, v8

    move/from16 v35, v9

    move/from16 v36, v10

    move-object v8, v1

    .line 2577
    .end local v4    # "totalElapsedTime":J
    .end local v8    # "N":I
    .end local v9    # "maxAuthority":I
    .end local v10    # "maxAccount":I
    .restart local v34    # "N":I
    .restart local v35    # "maxAuthority":I
    .restart local v36    # "maxAccount":I
    .restart local v45    # "totalElapsedTime":J
    goto :goto_6

    .line 2577
    .end local v27    # "authorityMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/content/SyncManager$AuthoritySyncStats;>;"
    .end local v30    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;>;"
    .end local v34    # "N":I
    .end local v35    # "maxAuthority":I
    .end local v36    # "maxAccount":I
    .end local v45    # "totalElapsedTime":J
    .local v2, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;>;"
    .local v3, "authorityMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/content/SyncManager$AuthoritySyncStats;>;"
    .restart local v4    # "totalElapsedTime":J
    .restart local v8    # "N":I
    .restart local v9    # "maxAuthority":I
    .restart local v10    # "maxAccount":I
    :cond_8
    move-object/from16 v30, v2

    move-object/from16 v27, v3

    move-wide/from16 v45, v4

    move/from16 v34, v8

    move/from16 v35, v9

    move/from16 v36, v10

    move-object v8, v1

    .line 2577
    .end local v2    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;>;"
    .end local v3    # "authorityMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/content/SyncManager$AuthoritySyncStats;>;"
    .end local v4    # "totalElapsedTime":J
    .end local v8    # "N":I
    .end local v9    # "maxAuthority":I
    .end local v10    # "maxAccount":I
    .restart local v27    # "authorityMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/content/SyncManager$AuthoritySyncStats;>;"
    .restart local v30    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;>;"
    .restart local v34    # "N":I
    .restart local v35    # "maxAuthority":I
    .restart local v36    # "maxAccount":I
    .restart local v45    # "totalElapsedTime":J
    :goto_6
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2578
    const-string v0, "Recent Sync History"

    invoke-virtual {v8, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2579
    const-string v0, "(SERVER is now split up to FEED and OTHER)"

    invoke-virtual {v8, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2580
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  %-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v10, v36

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2580
    .end local v36    # "maxAccount":I
    .restart local v10    # "maxAccount":I
    const-string/jumbo v1, "s  %-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v9, v35

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2580
    .end local v35    # "maxAuthority":I
    .restart local v9    # "maxAuthority":I
    const-string/jumbo v1, "s %s\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2581
    .local v0, "format":Ljava/lang/String;
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v1

    .line 2582
    .local v1, "lastTimeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    move-object/from16 v2, p0

    iget-object v3, v2, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 2583
    .local v3, "pm":Landroid/content/pm/PackageManager;
    const/4 v4, 0x0

    .line 2583
    .local v4, "i":I
    :goto_7
    move/from16 v5, v34

    if-ge v4, v5, :cond_11

    .line 2584
    .end local v34    # "N":I
    .local v5, "N":I
    move-object/from16 v11, v30

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    .line 2584
    .end local v30    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;>;"
    .local v11, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;>;"
    check-cast v12, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;

    .line 2585
    .local v12, "item":Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;
    iget-object v13, v2, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    iget v14, v12, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->authorityId:I

    .line 2586
    invoke-virtual {v13, v14}, Lcom/android/server/content/SyncStorageEngine;->getAuthority(I)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v13

    .line 2589
    .local v13, "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    if-eqz v13, :cond_9

    .line 2590
    iget-object v14, v13, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v14, v14, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    .line 2591
    .local v14, "authorityName":Ljava/lang/String;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v47, v6

    iget-object v6, v13, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 2591
    .end local v6    # "totalTimes":J
    .local v47, "totalTimes":J
    iget-object v6, v6, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v6, v6, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v13, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v6, v6, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v6, v6, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " u"

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v13, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget v6, v6, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .local v6, "accountKey":Ljava/lang/String;
    goto :goto_8

    .line 2595
    .end local v14    # "authorityName":Ljava/lang/String;
    .end local v47    # "totalTimes":J
    .local v6, "totalTimes":J
    :cond_9
    move-wide/from16 v47, v6

    .line 2595
    .end local v6    # "totalTimes":J
    .restart local v47    # "totalTimes":J
    const-string v14, "Unknown"

    .line 2596
    .restart local v14    # "authorityName":Ljava/lang/String;
    const-string v6, "Unknown"

    .line 2598
    .local v6, "accountKey":Ljava/lang/String;
    :goto_8
    move/from16 v50, v9

    move/from16 v49, v10

    iget-wide v9, v12, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->elapsedTime:J

    .line 2599
    .end local v10    # "maxAccount":I
    .local v9, "elapsedTime":J
    .local v49, "maxAccount":I
    .local v50, "maxAuthority":I
    new-instance v7, Landroid/text/format/Time;

    invoke-direct {v7}, Landroid/text/format/Time;-><init>()V

    .line 2600
    .local v7, "time":Landroid/text/format/Time;
    move-object/from16 v51, v3

    iget-wide v2, v12, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->eventTime:J

    .line 2601
    .end local v3    # "pm":Landroid/content/pm/PackageManager;
    .local v2, "eventTime":J
    .local v51, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v7, v2, v3}, Landroid/text/format/Time;->set(J)V

    .line 2603
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v52, v7

    const-string v7, "/"

    .line 2603
    .end local v7    # "time":Landroid/text/format/Time;
    .local v52, "time":Landroid/text/format/Time;
    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2604
    .local v7, "key":Ljava/lang/String;
    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Long;

    .line 2606
    .local v15, "lastEventTime":Ljava/lang/Long;
    if-nez v15, :cond_a

    .line 2607
    const-string v19, ""

    .line 2616
    .local v19, "diffString":Ljava/lang/String;
    move-object/from16 v60, v0

    move-object/from16 v61, v1

    move/from16 v57, v5

    move-wide/from16 v58, v9

    move-object/from16 v56, v11

    move-object/from16 v53, v13

    move-object/from16 v54, v14

    .line 2616
    .end local v0    # "format":Ljava/lang/String;
    .end local v1    # "lastTimeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v5    # "N":I
    .end local v9    # "elapsedTime":J
    .end local v11    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;>;"
    .end local v13    # "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .end local v14    # "authorityName":Ljava/lang/String;
    .end local v15    # "lastEventTime":Ljava/lang/Long;
    .local v53, "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .local v54, "authorityName":Ljava/lang/String;
    .local v55, "lastEventTime":Ljava/lang/Long;
    .local v56, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;>;"
    .local v57, "N":I
    .local v58, "elapsedTime":J
    .local v60, "format":Ljava/lang/String;
    .local v61, "lastTimeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    :goto_9
    move-object/from16 v55, v15

    goto/16 :goto_a

    .line 2609
    .end local v19    # "diffString":Ljava/lang/String;
    .end local v53    # "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .end local v54    # "authorityName":Ljava/lang/String;
    .end local v55    # "lastEventTime":Ljava/lang/Long;
    .end local v56    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;>;"
    .end local v57    # "N":I
    .end local v58    # "elapsedTime":J
    .end local v60    # "format":Ljava/lang/String;
    .end local v61    # "lastTimeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    .restart local v0    # "format":Ljava/lang/String;
    .restart local v1    # "lastTimeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    .restart local v5    # "N":I
    .restart local v9    # "elapsedTime":J
    .restart local v11    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;>;"
    .restart local v13    # "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .restart local v14    # "authorityName":Ljava/lang/String;
    .restart local v15    # "lastEventTime":Ljava/lang/Long;
    :cond_a
    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v19

    sub-long v19, v19, v2

    move-object/from16 v53, v13

    move-object/from16 v54, v14

    div-long v13, v19, v17

    .line 2610
    .end local v14    # "authorityName":Ljava/lang/String;
    .local v13, "diff":J
    .restart local v53    # "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .restart local v54    # "authorityName":Ljava/lang/String;
    const-wide/16 v19, 0x3c

    cmp-long v21, v13, v19

    if-gez v21, :cond_b

    .line 2611
    invoke-static {v13, v14}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v19

    .line 2616
    .restart local v19    # "diffString":Ljava/lang/String;
    move-object/from16 v60, v0

    move-object/from16 v61, v1

    move/from16 v57, v5

    move-wide/from16 v58, v9

    move-object/from16 v56, v11

    goto :goto_9

    .line 2612
    .end local v19    # "diffString":Ljava/lang/String;
    :cond_b
    const-wide/16 v21, 0xe10

    cmp-long v23, v13, v21

    if-gez v23, :cond_c

    .line 2613
    move-object/from16 v55, v15

    const-string v15, "%02d:%02d"

    .line 2613
    .end local v15    # "lastEventTime":Ljava/lang/Long;
    .restart local v55    # "lastEventTime":Ljava/lang/Long;
    move/from16 v57, v5

    move-object/from16 v56, v11

    const/4 v11, 0x2

    new-array v5, v11, [Ljava/lang/Object;

    .line 2613
    .end local v5    # "N":I
    .end local v11    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;>;"
    .restart local v56    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;>;"
    .restart local v57    # "N":I
    move-wide/from16 v58, v9

    div-long v8, v13, v19

    .line 2613
    .end local v9    # "elapsedTime":J
    .restart local v58    # "elapsedTime":J
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v5, v9

    rem-long v8, v13, v19

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v5, v9

    invoke-static {v15, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    .line 2616
    .restart local v19    # "diffString":Ljava/lang/String;
    move-object/from16 v60, v0

    move-object/from16 v61, v1

    goto :goto_a

    .line 2615
    .end local v19    # "diffString":Ljava/lang/String;
    .end local v55    # "lastEventTime":Ljava/lang/Long;
    .end local v56    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;>;"
    .end local v57    # "N":I
    .end local v58    # "elapsedTime":J
    .restart local v5    # "N":I
    .restart local v9    # "elapsedTime":J
    .restart local v11    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;>;"
    .restart local v15    # "lastEventTime":Ljava/lang/Long;
    :cond_c
    move/from16 v57, v5

    move-wide/from16 v58, v9

    move-object/from16 v56, v11

    move-object/from16 v55, v15

    .line 2615
    .end local v5    # "N":I
    .end local v9    # "elapsedTime":J
    .end local v11    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;>;"
    .end local v15    # "lastEventTime":Ljava/lang/Long;
    .restart local v55    # "lastEventTime":Ljava/lang/Long;
    .restart local v56    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;>;"
    .restart local v57    # "N":I
    .restart local v58    # "elapsedTime":J
    rem-long v8, v13, v21

    .line 2616
    .local v8, "sec":J
    const-string v5, "%02d:%02d:%02d"

    const/4 v10, 0x3

    new-array v11, v10, [Ljava/lang/Object;

    move-object/from16 v60, v0

    move-object/from16 v61, v1

    div-long v0, v13, v21

    .line 2617
    .end local v0    # "format":Ljava/lang/String;
    .end local v1    # "lastTimeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    .restart local v60    # "format":Ljava/lang/String;
    .restart local v61    # "lastTimeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, v11, v1

    div-long v0, v8, v19

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, v11, v1

    rem-long v0, v8, v19

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x2

    aput-object v0, v11, v1

    .line 2616
    invoke-static {v5, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    .line 2616
    .end local v8    # "sec":J
    .end local v13    # "diff":J
    .restart local v19    # "diffString":Ljava/lang/String;
    :goto_a
    move-object/from16 v0, v19

    .line 2620
    .end local v19    # "diffString":Ljava/lang/String;
    .local v0, "diffString":Ljava/lang/String;
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object/from16 v5, v61

    invoke-interface {v5, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2622
    .end local v61    # "lastTimeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    .local v5, "lastTimeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    const-string v1, "  #%-3d: %s %8s  %5.1fs  %8s"

    const/4 v8, 0x5

    new-array v8, v8, [Ljava/lang/Object;

    add-int/lit8 v9, v4, 0x1

    .line 2623
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v8, v10

    .line 2624
    invoke-static {v2, v3}, Lcom/android/server/content/SyncManager;->formatTime(J)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    aput-object v9, v8, v10

    sget-object v9, Lcom/android/server/content/SyncStorageEngine;->SOURCES:[Ljava/lang/String;

    iget v10, v12, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->source:I

    aget-object v9, v9, v10

    const/4 v10, 0x2

    aput-object v9, v8, v10

    move-wide/from16 v9, v58

    long-to-float v11, v9

    .end local v58    # "elapsedTime":J
    .restart local v9    # "elapsedTime":J
    const/high16 v13, 0x447a0000    # 1000.0f

    div-float/2addr v11, v13

    .line 2626
    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    const/4 v13, 0x3

    aput-object v11, v8, v13

    const/4 v11, 0x4

    aput-object v0, v8, v11

    .line 2622
    move-object/from16 v14, p1

    invoke-virtual {v14, v1, v8}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 2628
    new-array v1, v13, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v6, v1, v8

    const/4 v8, 0x1

    aput-object v54, v1, v8

    iget v13, v12, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->reason:I

    .line 2629
    move-object/from16 v15, v51

    invoke-static {v15, v13}, Lcom/android/server/content/SyncOperation;->reasonToString(Landroid/content/pm/PackageManager;I)Ljava/lang/String;

    move-result-object v13

    .line 2629
    .end local v51    # "pm":Landroid/content/pm/PackageManager;
    .local v15, "pm":Landroid/content/pm/PackageManager;
    const/16 v16, 0x2

    aput-object v13, v1, v16

    .line 2628
    move-object/from16 v13, v60

    invoke-virtual {v14, v13, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 2631
    .end local v60    # "format":Ljava/lang/String;
    .local v13, "format":Ljava/lang/String;
    iget v1, v12, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->event:I

    if-ne v1, v8, :cond_e

    move-object/from16 v62, v0

    iget-wide v0, v12, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->upstreamActivity:J

    .line 2631
    .end local v0    # "diffString":Ljava/lang/String;
    .local v62, "diffString":Ljava/lang/String;
    const-wide/16 v19, 0x0

    cmp-long v0, v0, v19

    if-nez v0, :cond_f

    iget-wide v0, v12, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->downstreamActivity:J

    cmp-long v0, v0, v19

    if-eqz v0, :cond_d

    goto :goto_b

    .line 2639
    :cond_d
    move-wide/from16 v63, v2

    goto :goto_c

    .line 2634
    .end local v62    # "diffString":Ljava/lang/String;
    .restart local v0    # "diffString":Ljava/lang/String;
    :cond_e
    move-object/from16 v62, v0

    const-wide/16 v19, 0x0

    .line 2634
    .end local v0    # "diffString":Ljava/lang/String;
    .restart local v62    # "diffString":Ljava/lang/String;
    :cond_f
    :goto_b
    const-string v0, "    event=%d upstreamActivity=%d downstreamActivity=%d\n"

    const/4 v1, 0x3

    new-array v8, v1, [Ljava/lang/Object;

    iget v1, v12, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->event:I

    .line 2635
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v21, 0x0

    aput-object v1, v8, v21

    move-wide/from16 v63, v2

    iget-wide v1, v12, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->upstreamActivity:J

    .line 2636
    .end local v2    # "eventTime":J
    .local v63, "eventTime":J
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v8, v2

    iget-wide v1, v12, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->downstreamActivity:J

    .line 2637
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v8, v2

    .line 2634
    invoke-virtual {v14, v0, v8}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 2639
    :goto_c
    iget-object v0, v12, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->mesg:Ljava/lang/String;

    if-eqz v0, :cond_10

    const-string/jumbo v0, "success"

    iget-object v1, v12, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->mesg:Ljava/lang/String;

    .line 2640
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 2641
    const-string v0, "    mesg=%s\n"

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    iget-object v1, v12, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->mesg:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-virtual {v14, v0, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 2583
    .end local v6    # "accountKey":Ljava/lang/String;
    .end local v7    # "key":Ljava/lang/String;
    .end local v9    # "elapsedTime":J
    .end local v12    # "item":Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;
    .end local v52    # "time":Landroid/text/format/Time;
    .end local v53    # "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .end local v54    # "authorityName":Ljava/lang/String;
    .end local v55    # "lastEventTime":Ljava/lang/Long;
    .end local v62    # "diffString":Ljava/lang/String;
    .end local v63    # "eventTime":J
    :cond_10
    add-int/lit8 v4, v4, 0x1

    move-object v1, v5

    move-object v0, v13

    move-object v8, v14

    move-object v3, v15

    move-wide/from16 v6, v47

    move/from16 v10, v49

    move/from16 v9, v50

    move-object/from16 v30, v56

    move/from16 v34, v57

    move-object/from16 v2, p0

    goto/16 :goto_7

    .line 2644
    .end local v4    # "i":I
    .end local v13    # "format":Ljava/lang/String;
    .end local v15    # "pm":Landroid/content/pm/PackageManager;
    .end local v47    # "totalTimes":J
    .end local v49    # "maxAccount":I
    .end local v50    # "maxAuthority":I
    .end local v56    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;>;"
    .end local v57    # "N":I
    .local v0, "format":Ljava/lang/String;
    .restart local v1    # "lastTimeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    .restart local v3    # "pm":Landroid/content/pm/PackageManager;
    .local v5, "N":I
    .local v6, "totalTimes":J
    .local v9, "maxAuthority":I
    .restart local v10    # "maxAccount":I
    .restart local v30    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;>;"
    :cond_11
    move-object v13, v0

    move-object v15, v3

    move/from16 v57, v5

    move-wide/from16 v47, v6

    move-object v14, v8

    move/from16 v50, v9

    move/from16 v49, v10

    move-object/from16 v56, v30

    move-object v5, v1

    .line 2644
    .end local v0    # "format":Ljava/lang/String;
    .end local v1    # "lastTimeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v3    # "pm":Landroid/content/pm/PackageManager;
    .end local v6    # "totalTimes":J
    .end local v9    # "maxAuthority":I
    .end local v10    # "maxAccount":I
    .end local v30    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;>;"
    .local v5, "lastTimeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    .restart local v13    # "format":Ljava/lang/String;
    .restart local v15    # "pm":Landroid/content/pm/PackageManager;
    .restart local v47    # "totalTimes":J
    .restart local v49    # "maxAccount":I
    .restart local v50    # "maxAuthority":I
    .restart local v56    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;>;"
    .restart local v57    # "N":I
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2645
    const-string v0, "Recent Sync History Extras"

    invoke-virtual {v14, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2646
    const-string v0, "(SERVER is now split up to FEED and OTHER)"

    invoke-virtual {v14, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2647
    const/4 v0, 0x0

    .line 2647
    .local v0, "i":I
    :goto_d
    move/from16 v1, v57

    if-ge v0, v1, :cond_15

    .line 2648
    .end local v57    # "N":I
    .local v1, "N":I
    move-object/from16 v2, v56

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 2648
    .end local v56    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;>;"
    .local v2, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;>;"
    check-cast v3, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;

    .line 2649
    .local v3, "item":Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;
    iget-object v4, v3, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->extras:Landroid/os/Bundle;

    .line 2650
    .local v4, "extras":Landroid/os/Bundle;
    if-eqz v4, :cond_14

    invoke-virtual {v4}, Landroid/os/Bundle;->size()I

    move-result v6

    if-nez v6, :cond_12

    .line 2651
    nop

    .line 2647
    move/from16 v65, v1

    move-object/from16 v66, v2

    move-object/from16 v67, v5

    const/4 v1, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/16 v16, 0x1

    goto/16 :goto_f

    .line 2653
    :cond_12
    move-object/from16 v6, p0

    iget-object v7, v6, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    iget v8, v3, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->authorityId:I

    .line 2654
    invoke-virtual {v7, v8}, Lcom/android/server/content/SyncStorageEngine;->getAuthority(I)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v7

    .line 2657
    .local v7, "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    if-eqz v7, :cond_13

    .line 2658
    iget-object v8, v7, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v8, v8, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    .line 2659
    .local v8, "authorityName":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v7, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v10, v10, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v10, v10, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v7, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v10, v10, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v10, v10, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " u"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v7, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget v10, v10, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .local v9, "accountKey":Ljava/lang/String;
    goto :goto_e

    .line 2663
    .end local v8    # "authorityName":Ljava/lang/String;
    .end local v9    # "accountKey":Ljava/lang/String;
    :cond_13
    const-string v8, "Unknown"

    .line 2664
    .restart local v8    # "authorityName":Ljava/lang/String;
    const-string v9, "Unknown"

    .line 2666
    .restart local v9    # "accountKey":Ljava/lang/String;
    :goto_e
    new-instance v10, Landroid/text/format/Time;

    invoke-direct {v10}, Landroid/text/format/Time;-><init>()V

    .line 2667
    .local v10, "time":Landroid/text/format/Time;
    iget-wide v11, v3, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->eventTime:J

    .line 2668
    .local v11, "eventTime":J
    invoke-virtual {v10, v11, v12}, Landroid/text/format/Time;->set(J)V

    .line 2670
    move/from16 v65, v1

    const-string v1, "  #%-3d: %s %8s "

    .line 2670
    .end local v1    # "N":I
    .local v65, "N":I
    move-object/from16 v66, v2

    move-object/from16 v67, v5

    const/4 v2, 0x3

    new-array v5, v2, [Ljava/lang/Object;

    .line 2670
    .end local v2    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;>;"
    .end local v5    # "lastTimeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    .local v66, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;>;"
    .local v67, "lastTimeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    add-int/lit8 v2, v0, 0x1

    .line 2671
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v17, 0x0

    aput-object v2, v5, v17

    .line 2672
    invoke-static {v11, v12}, Lcom/android/server/content/SyncManager;->formatTime(J)Ljava/lang/String;

    move-result-object v2

    const/16 v16, 0x1

    aput-object v2, v5, v16

    sget-object v2, Lcom/android/server/content/SyncStorageEngine;->SOURCES:[Ljava/lang/String;

    iget v6, v3, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->source:I

    aget-object v2, v2, v6

    const/4 v6, 0x2

    aput-object v2, v5, v6

    .line 2670
    invoke-virtual {v14, v1, v5}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 2675
    const/4 v1, 0x3

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v9, v2, v5

    aput-object v8, v2, v16

    aput-object v4, v2, v6

    invoke-virtual {v14, v13, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 2675
    .end local v3    # "item":Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;
    .end local v4    # "extras":Landroid/os/Bundle;
    .end local v7    # "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .end local v8    # "authorityName":Ljava/lang/String;
    .end local v9    # "accountKey":Ljava/lang/String;
    .end local v10    # "time":Landroid/text/format/Time;
    .end local v11    # "eventTime":J
    goto :goto_f

    .line 2647
    .end local v65    # "N":I
    .end local v66    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;>;"
    .end local v67    # "lastTimeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    .restart local v1    # "N":I
    .restart local v2    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;>;"
    .restart local v5    # "lastTimeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    :cond_14
    move/from16 v65, v1

    move-object/from16 v66, v2

    move-object/from16 v67, v5

    const/4 v1, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/16 v16, 0x1

    .line 2647
    .end local v1    # "N":I
    .end local v2    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;>;"
    .end local v5    # "lastTimeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    .restart local v65    # "N":I
    .restart local v66    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;>;"
    .restart local v67    # "lastTimeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    :goto_f
    add-int/lit8 v0, v0, 0x1

    move/from16 v57, v65

    move-object/from16 v56, v66

    move-object/from16 v5, v67

    goto/16 :goto_d

    .line 2678
    .end local v0    # "i":I
    .end local v13    # "format":Ljava/lang/String;
    .end local v15    # "pm":Landroid/content/pm/PackageManager;
    .end local v27    # "authorityMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/content/SyncManager$AuthoritySyncStats;>;"
    .end local v45    # "totalElapsedTime":J
    .end local v47    # "totalTimes":J
    .end local v49    # "maxAccount":I
    .end local v50    # "maxAuthority":I
    .end local v65    # "N":I
    .end local v66    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;>;"
    .end local v67    # "lastTimeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    .restart local v56    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;>;"
    :cond_15
    move-object/from16 v66, v56

    .line 2678
    .end local v56    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;>;"
    .restart local v66    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;>;"
    goto :goto_10

    .line 2678
    .end local v66    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;>;"
    .restart local v2    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;>;"
    :cond_16
    move-object v14, v1

    move-object/from16 v66, v2

    .line 2678
    .end local v2    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;>;"
    .restart local v66    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;>;"
    :goto_10
    return-void
.end method

.method private dumpSyncAdapters(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 5
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .line 2733
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2734
    invoke-direct {p0}, Lcom/android/server/content/SyncManager;->getAllUsers()Ljava/util/List;

    move-result-object v0

    .line 2735
    .local v0, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    if-eqz v0, :cond_1

    .line 2736
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 2737
    .local v2, "user":Landroid/content/pm/UserInfo;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Sync adapters for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2738
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2740
    iget-object v3, p0, Lcom/android/server/content/SyncManager;->mSyncAdapters:Landroid/content/SyncAdaptersCache;

    iget v4, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v3, v4}, Landroid/content/SyncAdaptersCache;->getAllServices(I)Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    .line 2741
    .local v4, "info":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<*>;"
    invoke-virtual {p1, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 2742
    .end local v4    # "info":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<*>;"
    goto :goto_1

    .line 2743
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2744
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2745
    .end local v2    # "user":Landroid/content/pm/UserInfo;
    goto :goto_0

    .line 2747
    :cond_1
    return-void
.end method

.method private dumpTimeSec(Ljava/io/PrintWriter;J)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "time"    # J

    .line 2420
    const-wide/16 v0, 0x3e8

    div-long v0, p2, v0

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    const/16 v0, 0x2e

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    const-wide/16 v0, 0x64

    div-long v0, p2, v0

    const-wide/16 v2, 0xa

    rem-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 2421
    const/16 v0, 0x73

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 2422
    return-void
.end method

.method public static formatDurationHMS(Ljava/lang/StringBuilder;J)Ljava/lang/StringBuilder;
    .locals 11
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "duration"    # J

    .line 2125
    const-wide/16 v0, 0x3e8

    div-long/2addr p1, v0

    .line 2126
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    .line 2127
    const/16 v2, 0x2d

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2128
    neg-long p1, p1

    .line 2130
    :cond_0
    const-wide/16 v2, 0x3c

    rem-long v4, p1, v2

    .line 2131
    .local v4, "seconds":J
    div-long/2addr p1, v2

    .line 2133
    rem-long v6, p1, v2

    .line 2134
    .local v6, "minutes":J
    div-long/2addr p1, v2

    .line 2136
    const-wide/16 v2, 0x18

    rem-long v8, p1, v2

    .line 2137
    .local v8, "hours":J
    div-long/2addr p1, v2

    .line 2139
    move-wide v2, p1

    .line 2141
    .local v2, "days":J
    const/4 v10, 0x0

    .line 2142
    .local v10, "print":Z
    cmp-long v0, v2, v0

    if-lez v0, :cond_1

    .line 2143
    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2144
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2145
    const/4 v10, 0x1

    .line 2147
    :cond_1
    const/16 v0, 0x68

    invoke-static {p0, v8, v9, v0, v10}, Lcom/android/server/content/SyncManager;->printTwoDigitNumber(Ljava/lang/StringBuilder;JCZ)Z

    move-result v0

    .line 2148
    .end local v10    # "print":Z
    .local v0, "print":Z
    const/16 v1, 0x6d

    invoke-static {p0, v6, v7, v1, v0}, Lcom/android/server/content/SyncManager;->printTwoDigitNumber(Ljava/lang/StringBuilder;JCZ)Z

    move-result v0

    .line 2149
    const/16 v1, 0x73

    invoke-static {p0, v4, v5, v1, v0}, Lcom/android/server/content/SyncManager;->printTwoDigitNumber(Ljava/lang/StringBuilder;JCZ)Z

    move-result v0

    .line 2150
    if-nez v0, :cond_2

    .line 2151
    const-string v1, "0s"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2154
    :cond_2
    return-object p0
.end method

.method static formatTime(J)Ljava/lang/String;
    .locals 2
    .param p0, "time"    # J

    .line 2033
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    .line 2034
    const-string v0, "N/A"

    return-object v0

    .line 2036
    :cond_0
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 2037
    .local v0, "tobj":Landroid/text/format/Time;
    invoke-virtual {v0, p0, p1}, Landroid/text/format/Time;->set(J)V

    .line 2038
    const-string v1, "%Y-%m-%d %H:%M:%S"

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method static getAdapterBindIntent(Landroid/content/Context;Landroid/content/ComponentName;I)Landroid/content/Intent;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "syncAdapterComponent"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I

    .line 1856
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1857
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.content.SyncAdapter"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1858
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1859
    const-string v1, "android.intent.extra.client_label"

    const v2, 0x1040641

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1861
    const-string v1, "android.intent.extra.client_intent"

    new-instance v4, Landroid/content/Intent;

    const-string v2, "android.settings.SYNC_SETTINGS"

    invoke-direct {v4, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1862
    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v7

    .line 1861
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p0

    invoke-static/range {v2 .. v7}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1864
    return-object v0
.end method

.method private getAllPendingSyncs()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/content/SyncOperation;",
            ">;"
        }
    .end annotation

    .line 286
    invoke-direct {p0}, Lcom/android/server/content/SyncManager;->verifyJobScheduler()V

    .line 287
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mJobSchedulerInternal:Lcom/android/server/job/JobSchedulerInternal;

    invoke-interface {v0}, Lcom/android/server/job/JobSchedulerInternal;->getSystemScheduledPendingJobs()Ljava/util/List;

    move-result-object v0

    .line 288
    .local v0, "pendingJobs":Ljava/util/List;, "Ljava/util/List<Landroid/app/job/JobInfo;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 289
    .local v1, "pendingSyncs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/content/SyncOperation;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/job/JobInfo;

    .line 290
    .local v3, "job":Landroid/app/job/JobInfo;
    invoke-virtual {v3}, Landroid/app/job/JobInfo;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/content/SyncOperation;->maybeCreateFromJobExtras(Landroid/os/PersistableBundle;)Lcom/android/server/content/SyncOperation;

    move-result-object v4

    .line 291
    .local v4, "op":Lcom/android/server/content/SyncOperation;
    if-eqz v4, :cond_0

    .line 292
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 294
    .end local v3    # "job":Landroid/app/job/JobInfo;
    .end local v4    # "op":Lcom/android/server/content/SyncOperation;
    :cond_0
    goto :goto_0

    .line 295
    :cond_1
    return-object v1
.end method

.method private getAllUsers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    .line 352
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private getConnectivityManager()Landroid/net/ConnectivityManager;
    .locals 2

    .line 473
    monitor-enter p0

    .line 474
    :try_start_0
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mConnManagerDoNotUseDirectly:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_0

    .line 475
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/server/content/SyncManager;->mConnManagerDoNotUseDirectly:Landroid/net/ConnectivityManager;

    .line 478
    :cond_0
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mConnManagerDoNotUseDirectly:Landroid/net/ConnectivityManager;

    monitor-exit p0

    return-object v0

    .line 479
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getContextForUser(Landroid/os/UserHandle;)Landroid/content/Context;
    .locals 3
    .param p1, "user"    # Landroid/os/UserHandle;

    .line 4133
    :try_start_0
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 4134
    :catch_0
    move-exception v0

    .line 4136
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    iget-object v1, p0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    return-object v1
.end method

.method private getIsSyncable(Landroid/accounts/Account;ILjava/lang/String;)I
    .locals 7
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "userId"    # I
    .param p3, "providerName"    # Ljava/lang/String;

    .line 840
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/content/SyncStorageEngine;->getIsSyncable(Landroid/accounts/Account;ILjava/lang/String;)I

    move-result v0

    .line 841
    .local v0, "isSyncable":I
    iget-object v1, p0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 844
    .local v1, "userInfo":Landroid/content/pm/UserInfo;
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 847
    :cond_0
    iget-object v2, p0, Lcom/android/server/content/SyncManager;->mSyncAdapters:Landroid/content/SyncAdaptersCache;

    iget-object v3, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 849
    invoke-static {p3, v3}, Landroid/content/SyncAdapterType;->newKey(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SyncAdapterType;

    move-result-object v3

    .line 848
    invoke-virtual {v2, v3, p2}, Landroid/content/SyncAdaptersCache;->getServiceInfo(Ljava/lang/Object;I)Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    move-result-object v2

    .line 850
    .local v2, "syncAdapterInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    const/4 v3, 0x0

    if-nez v2, :cond_1

    return v3

    .line 852
    :cond_1
    const/4 v4, 0x0

    .line 854
    .local v4, "pInfo":Landroid/content/pm/PackageInfo;
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v5

    iget-object v6, v2, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->componentName:Landroid/content/ComponentName;

    .line 855
    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 854
    invoke-interface {v5, v6, v3, p2}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v5
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v5

    .line 856
    if-nez v4, :cond_2

    return v3

    .line 860
    :cond_2
    nop

    .line 861
    iget-object v5, v4, Landroid/content/pm/PackageInfo;->restrictedAccountType:Ljava/lang/String;

    if-eqz v5, :cond_3

    iget-object v5, v4, Landroid/content/pm/PackageInfo;->restrictedAccountType:Ljava/lang/String;

    iget-object v6, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 862
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 863
    return v0

    .line 865
    :cond_3
    return v3

    .line 857
    :catch_0
    move-exception v5

    .line 859
    .local v5, "re":Landroid/os/RemoteException;
    return v3

    .line 844
    .end local v2    # "syncAdapterInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    .end local v4    # "pInfo":Landroid/content/pm/PackageInfo;
    .end local v5    # "re":Landroid/os/RemoteException;
    :cond_4
    :goto_0
    return v0
.end method

.method private getJobScheduler()Landroid/app/job/JobScheduler;
    .locals 1

    .line 576
    invoke-direct {p0}, Lcom/android/server/content/SyncManager;->verifyJobScheduler()V

    .line 577
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mJobScheduler:Landroid/app/job/JobScheduler;

    return-object v0
.end method

.method private getJobStats()Ljava/lang/String;
    .locals 3

    .line 419
    const-class v0, Lcom/android/server/job/JobSchedulerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/job/JobSchedulerInternal;

    .line 420
    .local v0, "js":Lcom/android/server/job/JobSchedulerInternal;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "JobStats: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 421
    if-nez v0, :cond_0

    const-string v2, "(JobSchedulerInternal==null)"

    goto :goto_0

    .line 422
    :cond_0
    invoke-interface {v0}, Lcom/android/server/job/JobSchedulerInternal;->getPersistStats()Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 420
    return-object v1
.end method

.method private getTotalBytesTransferredByUid(I)J
    .locals 4
    .param p1, "uid"    # I

    .line 1337
    invoke-static {p1}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v0

    invoke-static {p1}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method private getUnusedJobIdH()I
    .locals 3

    .line 279
    :cond_0
    const v0, 0x186a0

    iget-object v1, p0, Lcom/android/server/content/SyncManager;->mRand:Ljava/util/Random;

    const/16 v2, 0x2710

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 280
    .local v0, "newJobId":I
    iget-object v1, p0, Lcom/android/server/content/SyncManager;->mJobSchedulerInternal:Lcom/android/server/job/JobSchedulerInternal;

    .line 281
    invoke-interface {v1}, Lcom/android/server/job/JobSchedulerInternal;->getSystemScheduledPendingJobs()Ljava/util/List;

    move-result-object v1

    .line 280
    invoke-direct {p0, v0, v1}, Lcom/android/server/content/SyncManager;->isJobIdInUseLockedH(ILjava/util/List;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 282
    return v0
.end method

.method private increaseBackoffSetting(Lcom/android/server/content/SyncStorageEngine$EndPoint;)V
    .locals 17
    .param p1, "target"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;

    move-object/from16 v0, p0

    .line 1397
    move-object/from16 v7, p1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 1399
    .local v8, "now":J
    iget-object v1, v0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    .line 1400
    invoke-virtual {v1, v7}, Lcom/android/server/content/SyncStorageEngine;->getBackoff(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Landroid/util/Pair;

    move-result-object v10

    .line 1401
    .local v10, "previousSettings":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    const-wide/16 v1, -0x1

    .line 1402
    .local v1, "newDelayInMs":J
    const/4 v3, 0x2

    const-wide/16 v4, 0x3e8

    if-eqz v10, :cond_2

    .line 1405
    iget-object v6, v10, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    cmp-long v6, v8, v11

    if-gez v6, :cond_1

    .line 1406
    const-string v6, "SyncManager"

    invoke-static {v6, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1407
    const-string v3, "SyncManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Still in backoff, do not increase it. Remaining: "

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v10, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Long;

    .line 1408
    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    sub-long/2addr v11, v8

    div-long/2addr v11, v4

    invoke-virtual {v6, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " seconds."

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1407
    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1410
    :cond_0
    return-void

    .line 1413
    :cond_1
    iget-object v6, v10, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Long;

    .line 1414
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    long-to-float v6, v11

    iget-object v11, v0, Lcom/android/server/content/SyncManager;->mConstants:Lcom/android/server/content/SyncManagerConstants;

    invoke-virtual {v11}, Lcom/android/server/content/SyncManagerConstants;->getRetryTimeIncreaseFactor()F

    move-result v11

    mul-float/2addr v6, v11

    float-to-long v1, v6

    .line 1416
    :cond_2
    const-wide/16 v11, 0x0

    cmp-long v6, v1, v11

    if-gtz v6, :cond_3

    .line 1418
    iget-object v6, v0, Lcom/android/server/content/SyncManager;->mConstants:Lcom/android/server/content/SyncManagerConstants;

    invoke-virtual {v6}, Lcom/android/server/content/SyncManagerConstants;->getInitialSyncRetryTimeInSeconds()I

    move-result v6

    mul-int/lit16 v6, v6, 0x3e8

    int-to-long v11, v6

    .line 1419
    .local v11, "initialRetryMs":J
    long-to-double v13, v11

    const-wide v15, 0x3ff199999999999aL    # 1.1

    mul-double/2addr v13, v15

    double-to-long v13, v13

    invoke-direct {v0, v11, v12, v13, v14}, Lcom/android/server/content/SyncManager;->jitterize(JJ)J

    move-result-wide v1

    .line 1423
    .end local v11    # "initialRetryMs":J
    :cond_3
    iget-object v6, v0, Lcom/android/server/content/SyncManager;->mConstants:Lcom/android/server/content/SyncManagerConstants;

    invoke-virtual {v6}, Lcom/android/server/content/SyncManagerConstants;->getMaxSyncRetryTimeInSeconds()I

    move-result v6

    int-to-long v11, v6

    .line 1425
    .local v11, "maxSyncRetryTimeInSeconds":J
    mul-long v13, v11, v4

    cmp-long v6, v1, v13

    if-lez v6, :cond_4

    .line 1426
    mul-long/2addr v4, v11

    .line 1429
    .end local v1    # "newDelayInMs":J
    .local v4, "newDelayInMs":J
    move-wide v13, v4

    goto :goto_0

    .line 1429
    .end local v4    # "newDelayInMs":J
    .restart local v1    # "newDelayInMs":J
    :cond_4
    move-wide v13, v1

    .line 1429
    .end local v1    # "newDelayInMs":J
    .local v13, "newDelayInMs":J
    :goto_0
    add-long v5, v8, v13

    .line 1430
    .local v5, "backoff":J
    const-string v1, "SyncManager"

    invoke-static {v1, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1431
    const-string v1, "SyncManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Backoff until: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", delayTime: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1433
    :cond_5
    iget-object v1, v0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    move-object v2, v7

    move-wide v3, v5

    move-wide v15, v5

    move-wide v5, v13

    .line 1433
    .end local v5    # "backoff":J
    .local v15, "backoff":J
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/content/SyncStorageEngine;->setBackoff(Lcom/android/server/content/SyncStorageEngine$EndPoint;JJ)V

    .line 1434
    const-string/jumbo v1, "increaseBackoffSetting"

    invoke-direct {v0, v7, v1}, Lcom/android/server/content/SyncManager;->rescheduleSyncs(Lcom/android/server/content/SyncStorageEngine$EndPoint;Ljava/lang/String;)V

    .line 1435
    return-void
.end method

.method private isAdapterDelayed(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z
    .locals 8
    .param p1, "target"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 1475
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 1476
    .local v0, "now":J
    iget-object v2, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    invoke-virtual {v2, p1}, Lcom/android/server/content/SyncStorageEngine;->getBackoff(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Landroid/util/Pair;

    move-result-object v2

    .line 1477
    .local v2, "backoff":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    const/4 v3, 0x1

    if-eqz v2, :cond_0

    iget-object v4, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    iget-object v4, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Long;

    .line 1478
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v4, v4, v0

    if-lez v4, :cond_0

    .line 1479
    return v3

    .line 1481
    :cond_0
    iget-object v4, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    invoke-virtual {v4, p1}, Lcom/android/server/content/SyncStorageEngine;->getDelayUntilTime(Lcom/android/server/content/SyncStorageEngine$EndPoint;)J

    move-result-wide v4

    cmp-long v4, v4, v0

    if-lez v4, :cond_1

    .line 1482
    return v3

    .line 1484
    :cond_1
    const/4 v3, 0x0

    return v3
.end method

.method private isDeviceProvisioned()Z
    .locals 3

    .line 818
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 819
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v1, "device_provisioned"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    nop

    :cond_0
    return v2
.end method

.method private isJobIdInUseLockedH(ILjava/util/List;)Z
    .locals 4
    .param p1, "jobId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/app/job/JobInfo;",
            ">;)Z"
        }
    .end annotation

    .line 263
    .local p2, "pendingJobs":Ljava/util/List;, "Ljava/util/List<Landroid/app/job/JobInfo;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/job/JobInfo;

    .line 264
    .local v1, "job":Landroid/app/job/JobInfo;
    invoke-virtual {v1}, Landroid/app/job/JobInfo;->getId()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 265
    return v2

    .line 267
    .end local v1    # "job":Landroid/app/job/JobInfo;
    :cond_0
    goto :goto_0

    .line 268
    :cond_1
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mActiveSyncContexts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/content/SyncManager$ActiveSyncContext;

    .line 269
    .local v1, "asc":Lcom/android/server/content/SyncManager$ActiveSyncContext;
    iget-object v3, v1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    iget v3, v3, Lcom/android/server/content/SyncOperation;->jobId:I

    if-ne v3, p1, :cond_2

    .line 270
    return v2

    .line 272
    .end local v1    # "asc":Lcom/android/server/content/SyncManager$ActiveSyncContext;
    :cond_2
    goto :goto_1

    .line 273
    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method private static isSyncSetting(Ljava/lang/String;)Z
    .locals 2
    .param p0, "key"    # Ljava/lang/String;

    .line 4018
    const-string v0, "expedited"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 4019
    return v1

    .line 4021
    :cond_0
    const-string v0, "ignore_settings"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4022
    return v1

    .line 4024
    :cond_1
    const-string v0, "ignore_backoff"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4025
    return v1

    .line 4027
    :cond_2
    const-string v0, "do_not_retry"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4028
    return v1

    .line 4030
    :cond_3
    const-string v0, "force"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4031
    return v1

    .line 4033
    :cond_4
    const-string/jumbo v0, "upload"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 4034
    return v1

    .line 4036
    :cond_5
    const-string v0, "deletions_override"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 4037
    return v1

    .line 4039
    :cond_6
    const-string v0, "discard_deletions"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 4040
    return v1

    .line 4042
    :cond_7
    const-string v0, "expected_upload"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 4043
    return v1

    .line 4045
    :cond_8
    const-string v0, "expected_download"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 4046
    return v1

    .line 4048
    :cond_9
    const-string/jumbo v0, "sync_priority"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 4049
    return v1

    .line 4051
    :cond_a
    const-string v0, "allow_metered"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 4052
    return v1

    .line 4054
    :cond_b
    const-string/jumbo v0, "initialize"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 4055
    return v1

    .line 4061
    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method private isSyncStillActiveH(Lcom/android/server/content/SyncManager$ActiveSyncContext;)Z
    .locals 2
    .param p1, "activeSyncContext"    # Lcom/android/server/content/SyncManager$ActiveSyncContext;

    .line 3976
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mActiveSyncContexts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/content/SyncManager$ActiveSyncContext;

    .line 3977
    .local v1, "sync":Lcom/android/server/content/SyncManager$ActiveSyncContext;
    if-ne v1, p1, :cond_0

    .line 3978
    const/4 v0, 0x1

    return v0

    .line 3980
    .end local v1    # "sync":Lcom/android/server/content/SyncManager$ActiveSyncContext;
    :cond_0
    goto :goto_0

    .line 3981
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private jitterize(JJ)J
    .locals 5
    .param p1, "minValue"    # J
    .param p3, "maxValue"    # J

    .line 826
    new-instance v0, Ljava/util/Random;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    .line 827
    .local v0, "random":Ljava/util/Random;
    sub-long v1, p3, p1

    .line 828
    .local v1, "spread":J
    const-wide/32 v3, 0x7fffffff

    cmp-long v3, v1, v3

    if-gtz v3, :cond_0

    .line 832
    long-to-int v3, v1

    invoke-virtual {v0, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v3, p1

    return-wide v3

    .line 829
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "the difference between the maxValue and the minValue must be less than 2147483647"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static synthetic lambda$EMXCZP9LDjgUTYbLsEoVu9Ccntw(Lcom/android/server/content/SyncManager;I)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/content/SyncManager;->zeroToEmpty(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$dumpPendingSyncs$8(Lcom/android/server/content/SyncOperation;)Z
    .locals 1
    .param p0, "op"    # Lcom/android/server/content/SyncOperation;

    .line 2090
    iget-boolean v0, p0, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method static synthetic lambda$dumpPeriodicSyncs$9(Lcom/android/server/content/SyncOperation;)Z
    .locals 1
    .param p0, "op"    # Lcom/android/server/content/SyncOperation;

    .line 2107
    iget-boolean v0, p0, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    return v0
.end method

.method static synthetic lambda$dumpSyncState$10(Ljava/lang/StringBuilder;Lcom/android/server/content/SyncManager$PrintTable;Ljava/lang/String;Landroid/content/SyncStatusInfo$Stats;Ljava/util/function/Function;Ljava/lang/Integer;)V
    .locals 6
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "table"    # Lcom/android/server/content/SyncManager$PrintTable;
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "stats"    # Landroid/content/SyncStatusInfo$Stats;
    .param p4, "filter"    # Ljava/util/function/Function;
    .param p5, "r"    # Ljava/lang/Integer;

    .line 2323
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2324
    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0xb

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v0

    iget v0, p3, Landroid/content/SyncStatusInfo$Stats;->numSourceLocal:I

    .line 2326
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p4, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v3, 0x1

    aput-object v0, v2, v3

    iget v0, p3, Landroid/content/SyncStatusInfo$Stats;->numSourcePoll:I

    .line 2327
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p4, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v3, 0x2

    aput-object v0, v2, v3

    iget v0, p3, Landroid/content/SyncStatusInfo$Stats;->numSourcePeriodic:I

    .line 2328
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p4, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v3, 0x3

    aput-object v0, v2, v3

    iget v0, p3, Landroid/content/SyncStatusInfo$Stats;->numSourceFeed:I

    .line 2329
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p4, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v4, 0x4

    aput-object v0, v2, v4

    iget v0, p3, Landroid/content/SyncStatusInfo$Stats;->numSourceUser:I

    .line 2330
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p4, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v4, 0x5

    aput-object v0, v2, v4

    iget v0, p3, Landroid/content/SyncStatusInfo$Stats;->numSourceOther:I

    .line 2331
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p4, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v4, 0x6

    aput-object v0, v2, v4

    iget v0, p3, Landroid/content/SyncStatusInfo$Stats;->numSyncs:I

    .line 2332
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p4, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v4, 0x7

    aput-object v0, v2, v4

    iget v0, p3, Landroid/content/SyncStatusInfo$Stats;->numFailures:I

    .line 2333
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p4, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/16 v4, 0x8

    aput-object v0, v2, v4

    iget v0, p3, Landroid/content/SyncStatusInfo$Stats;->numCancels:I

    .line 2334
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p4, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/16 v4, 0x9

    aput-object v0, v2, v4

    iget-wide v4, p3, Landroid/content/SyncStatusInfo$Stats;->totalElapsedTime:J

    .line 2335
    invoke-static {p0, v4, v5}, Lcom/android/server/content/SyncManager;->formatDurationHMS(Ljava/lang/StringBuilder;J)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v4, 0xa

    aput-object v0, v2, v4

    .line 2324
    invoke-virtual {p1, v1, v3, v2}, Lcom/android/server/content/SyncManager$PrintTable;->set(II[Ljava/lang/Object;)V

    .line 2336
    return-void
.end method

.method static synthetic lambda$dumpSyncState$11(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 1
    .param p0, "i"    # Ljava/lang/Integer;

    .line 2337
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic lambda$new$0(Lcom/android/server/content/SyncManager;Landroid/accounts/Account;I)V
    .locals 9
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "uid"    # I

    .line 684
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mAccountManagerInternal:Landroid/accounts/AccountManagerInternal;

    invoke-virtual {v0, p1, p2}, Landroid/accounts/AccountManagerInternal;->hasAccountAccess(Landroid/accounts/Account;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 685
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    const/4 v4, -0x2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x3

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/content/SyncManager;->scheduleSync(Landroid/accounts/Account;IILjava/lang/String;Landroid/os/Bundle;II)V

    .line 690
    :cond_0
    return-void
.end method

.method public static synthetic lambda$onStartUser$1(Lcom/android/server/content/SyncManager;I)V
    .locals 4
    .param p1, "userHandle"    # I

    .line 774
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mLogger:Lcom/android/server/content/SyncLogger;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "onStartUser: user="

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic lambda$onStopUser$3(Lcom/android/server/content/SyncManager;I)V
    .locals 4
    .param p1, "userHandle"    # I

    .line 782
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mLogger:Lcom/android/server/content/SyncLogger;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "onStopUser: user="

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic lambda$onUnlockUser$2(Lcom/android/server/content/SyncManager;I)V
    .locals 4
    .param p1, "userHandle"    # I

    .line 778
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mLogger:Lcom/android/server/content/SyncLogger;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "onUnlockUser: user="

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic lambda$scheduleSync$4(Lcom/android/server/content/SyncManager;Landroid/accounts/AccountAndUser;IILjava/lang/String;Landroid/os/Bundle;IJILandroid/os/Bundle;)V
    .locals 13
    .param p1, "account"    # Landroid/accounts/AccountAndUser;
    .param p2, "userId"    # I
    .param p3, "reason"    # I
    .param p4, "authority"    # Ljava/lang/String;
    .param p5, "finalExtras"    # Landroid/os/Bundle;
    .param p6, "targetSyncState"    # I
    .param p7, "minDelayMillis"    # J
    .param p9, "syncExemptionFlag"    # I
    .param p10, "result"    # Landroid/os/Bundle;

    .line 1054
    move-object/from16 v0, p10

    if-eqz v0, :cond_0

    const-string v1, "booleanResult"

    .line 1055
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1056
    move-object v1, p1

    iget-object v3, v1, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    const/4 v11, 0x1

    move-object v2, p0

    move v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move-wide/from16 v9, p7

    move/from16 v12, p9

    invoke-direct/range {v2 .. v12}, Lcom/android/server/content/SyncManager;->scheduleSync(Landroid/accounts/Account;IILjava/lang/String;Landroid/os/Bundle;IJZI)V

    goto :goto_0

    .line 1061
    :cond_0
    move-object v1, p1

    :goto_0
    return-void
.end method

.method public static synthetic lambda$scheduleSync$5(Lcom/android/server/content/SyncManager;Landroid/accounts/AccountAndUser;ILjava/lang/String;Landroid/os/Bundle;IJI)V
    .locals 12
    .param p1, "account"    # Landroid/accounts/AccountAndUser;
    .param p2, "reason"    # I
    .param p3, "authority"    # Ljava/lang/String;
    .param p4, "finalExtras"    # Landroid/os/Bundle;
    .param p5, "targetSyncState"    # I
    .param p6, "minDelayMillis"    # J
    .param p8, "syncExemptionFlag"    # I

    move-object v0, p1

    .line 1109
    iget-object v2, v0, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    iget v3, v0, Landroid/accounts/AccountAndUser;->userId:I

    const/4 v10, 0x0

    move-object v1, p0

    move v4, p2

    move-object v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move-wide/from16 v8, p6

    move/from16 v11, p8

    invoke-direct/range {v1 .. v11}, Lcom/android/server/content/SyncManager;->scheduleSync(Landroid/accounts/Account;IILjava/lang/String;Landroid/os/Bundle;IJZI)V

    return-void
.end method

.method static synthetic lambda$sendOnUnsyncableAccount$12(Landroid/content/Context;Lcom/android/server/content/SyncManager$OnUnsyncableAccountCheck;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "connection"    # Lcom/android/server/content/SyncManager$OnUnsyncableAccountCheck;

    .line 2787
    invoke-virtual {p0, p1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    return-void
.end method

.method static synthetic lambda$static$6(Lcom/android/server/content/SyncOperation;Lcom/android/server/content/SyncOperation;)I
    .locals 6
    .param p0, "op1"    # Lcom/android/server/content/SyncOperation;
    .param p1, "op2"    # Lcom/android/server/content/SyncOperation;

    .line 2042
    iget-object v0, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget v0, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    iget-object v1, p1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget v1, v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    .line 2043
    .local v0, "res":I
    if-eqz v0, :cond_0

    return v0

    .line 2045
    :cond_0
    sget-object v1, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    .line 2047
    .local v1, "stringComparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v2, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v3, v3, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v3, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 2048
    if-eqz v0, :cond_1

    return v0

    .line 2050
    :cond_1
    iget-object v2, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v2, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v3, v3, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v3, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 2051
    if-eqz v0, :cond_2

    return v0

    .line 2053
    :cond_2
    iget-object v2, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v2, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v3, v3, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 2054
    if-eqz v0, :cond_3

    return v0

    .line 2056
    :cond_3
    iget v2, p0, Lcom/android/server/content/SyncOperation;->reason:I

    iget v3, p1, Lcom/android/server/content/SyncOperation;->reason:I

    invoke-static {v2, v3}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    .line 2057
    if-eqz v0, :cond_4

    return v0

    .line 2059
    :cond_4
    iget-wide v2, p0, Lcom/android/server/content/SyncOperation;->periodMillis:J

    iget-wide v4, p1, Lcom/android/server/content/SyncOperation;->periodMillis:J

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    .line 2060
    if-eqz v0, :cond_5

    return v0

    .line 2062
    :cond_5
    iget-wide v2, p0, Lcom/android/server/content/SyncOperation;->expectedRuntime:J

    iget-wide v4, p1, Lcom/android/server/content/SyncOperation;->expectedRuntime:J

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    .line 2063
    if-eqz v0, :cond_6

    return v0

    .line 2065
    :cond_6
    iget v2, p0, Lcom/android/server/content/SyncOperation;->jobId:I

    int-to-long v2, v2

    iget v4, p1, Lcom/android/server/content/SyncOperation;->jobId:I

    int-to-long v4, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    .line 2066
    if-eqz v0, :cond_7

    return v0

    .line 2068
    :cond_7
    const/4 v2, 0x0

    return v2
.end method

.method static synthetic lambda$static$7(Lcom/android/server/content/SyncOperation;Lcom/android/server/content/SyncOperation;)I
    .locals 4
    .param p0, "op1"    # Lcom/android/server/content/SyncOperation;
    .param p1, "op2"    # Lcom/android/server/content/SyncOperation;

    .line 2072
    iget-wide v0, p0, Lcom/android/server/content/SyncOperation;->expectedRuntime:J

    iget-wide v2, p1, Lcom/android/server/content/SyncOperation;->expectedRuntime:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    .line 2073
    .local v0, "res":I
    if-eqz v0, :cond_0

    return v0

    .line 2075
    :cond_0
    sget-object v1, Lcom/android/server/content/SyncManager;->sOpDumpComparator:Ljava/util/Comparator;

    invoke-interface {v1, p0, p1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    return v1
.end method

.method private likelyHasPeriodicSyncs()Z
    .locals 3

    .line 568
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    invoke-virtual {v1}, Lcom/android/server/content/SyncStorageEngine;->getAuthorityCount()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x6

    if-lt v1, v2, :cond_0

    const/4 v0, 0x1

    nop

    :cond_0
    return v0

    .line 569
    :catch_0
    move-exception v1

    .line 572
    return v0
.end method

.method private maybeRescheduleSync(Landroid/content/SyncResult;Lcom/android/server/content/SyncOperation;)V
    .locals 4
    .param p1, "syncResult"    # Landroid/content/SyncResult;
    .param p2, "operation"    # Lcom/android/server/content/SyncOperation;

    .line 1736
    const-string v0, "SyncManager"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    .line 1737
    .local v0, "isLoggable":Z
    if-eqz v0, :cond_0

    .line 1738
    const-string v1, "SyncManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "encountered error(s) during the sync: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1744
    :cond_0
    iget-object v1, p2, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    const-string v2, "ignore_backoff"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1745
    iget-object v1, p2, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    const-string v2, "ignore_backoff"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 1748
    :cond_1
    iget-object v1, p2, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    const-string v2, "do_not_retry"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p1, Landroid/content/SyncResult;->syncAlreadyInProgress:Z

    if-nez v1, :cond_2

    .line 1753
    if-eqz v0, :cond_c

    .line 1754
    const-string v1, "SyncManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "not retrying sync operation because SYNC_EXTRAS_DO_NOT_RETRY was specified "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1757
    :cond_2
    iget-object v1, p2, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    const-string/jumbo v2, "upload"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-boolean v1, p1, Landroid/content/SyncResult;->syncAlreadyInProgress:Z

    if-nez v1, :cond_4

    .line 1760
    iget-object v1, p2, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    const-string/jumbo v2, "upload"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 1761
    if-eqz v0, :cond_3

    .line 1762
    const-string v1, "SyncManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "retrying sync operation as a two-way sync because an upload-only sync encountered an error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1765
    :cond_3
    invoke-direct {p0, p2}, Lcom/android/server/content/SyncManager;->scheduleSyncOperationH(Lcom/android/server/content/SyncOperation;)V

    goto/16 :goto_0

    .line 1766
    :cond_4
    iget-boolean v1, p1, Landroid/content/SyncResult;->tooManyRetries:Z

    if-eqz v1, :cond_5

    .line 1769
    if-eqz v0, :cond_c

    .line 1770
    const-string v1, "SyncManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "not retrying sync operation because it retried too many times: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1773
    :cond_5
    invoke-virtual {p1}, Landroid/content/SyncResult;->madeSomeProgress()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1775
    if-eqz v0, :cond_6

    .line 1776
    const-string v1, "SyncManager"

    const-string/jumbo v2, "retrying sync operation because even though it had an error it achieved some success"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1779
    :cond_6
    invoke-direct {p0, p2}, Lcom/android/server/content/SyncManager;->scheduleSyncOperationH(Lcom/android/server/content/SyncOperation;)V

    goto :goto_0

    .line 1780
    :cond_7
    iget-boolean v1, p1, Landroid/content/SyncResult;->syncAlreadyInProgress:Z

    if-eqz v1, :cond_9

    .line 1781
    if-eqz v0, :cond_8

    .line 1782
    const-string v1, "SyncManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "retrying sync operation that failed because there was already a sync in progress: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1785
    :cond_8
    const-wide/16 v1, 0x2710

    invoke-direct {p0, p2, v1, v2}, Lcom/android/server/content/SyncManager;->scheduleSyncOperationH(Lcom/android/server/content/SyncOperation;J)V

    goto :goto_0

    .line 1786
    :cond_9
    invoke-virtual {p1}, Landroid/content/SyncResult;->hasSoftError()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1788
    if-eqz v0, :cond_a

    .line 1789
    const-string v1, "SyncManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "retrying sync operation because it encountered a soft error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1792
    :cond_a
    invoke-direct {p0, p2}, Lcom/android/server/content/SyncManager;->scheduleSyncOperationH(Lcom/android/server/content/SyncOperation;)V

    goto :goto_0

    .line 1795
    :cond_b
    const-string v1, "SyncManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "not retrying sync operation because the error is a hard error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1796
    invoke-static {p2}, Lcom/android/server/content/SyncLogger;->logSafe(Lcom/android/server/content/SyncOperation;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1795
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1798
    :cond_c
    :goto_0
    return-void
.end method

.method private onUserRemoved(I)V
    .locals 5
    .param p1, "userId"    # I

    .line 1832
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mLogger:Lcom/android/server/content/SyncLogger;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "onUserRemoved: u"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 1833
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/content/SyncManager;->updateRunningAccounts(Lcom/android/server/content/SyncStorageEngine$EndPoint;)V

    .line 1836
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    new-array v1, v3, [Landroid/accounts/Account;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/content/SyncStorageEngine;->doDatabaseCleanup([Landroid/accounts/Account;I)V

    .line 1837
    invoke-direct {p0}, Lcom/android/server/content/SyncManager;->getAllPendingSyncs()Ljava/util/List;

    move-result-object v0

    .line 1838
    .local v0, "ops":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/content/SyncOperation;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/content/SyncOperation;

    .line 1839
    .local v2, "op":Lcom/android/server/content/SyncOperation;
    iget-object v3, v2, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget v3, v3, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    if-ne v3, p1, :cond_0

    .line 1840
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "user removed u"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/server/content/SyncManager;->cancelJob(Lcom/android/server/content/SyncOperation;Ljava/lang/String;)V

    .line 1842
    .end local v2    # "op":Lcom/android/server/content/SyncOperation;
    :cond_0
    goto :goto_0

    .line 1843
    :cond_1
    return-void
.end method

.method private onUserStopped(I)V
    .locals 3
    .param p1, "userId"    # I

    .line 1819
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/content/SyncManager;->updateRunningAccounts(Lcom/android/server/content/SyncStorageEngine$EndPoint;)V

    .line 1821
    new-instance v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-direct {v1, v0, v0, p1}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    const-string/jumbo v2, "onUserStopped"

    invoke-virtual {p0, v1, v0, v2}, Lcom/android/server/content/SyncManager;->cancelActiveSync(Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1829
    return-void
.end method

.method private onUserUnlocked(I)V
    .locals 13
    .param p1, "userId"    # I

    .line 1802
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->getSingleton()Lcom/android/server/accounts/AccountManagerService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/accounts/AccountManagerService;->validateAccounts(I)V

    .line 1804
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncAdapters:Landroid/content/SyncAdaptersCache;

    invoke-virtual {v0, p1}, Landroid/content/SyncAdaptersCache;->invalidateCache(I)V

    .line 1806
    new-instance v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, p1}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 1807
    .local v0, "target":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    invoke-direct {p0, v0}, Lcom/android/server/content/SyncManager;->updateRunningAccounts(Lcom/android/server/content/SyncStorageEngine$EndPoint;)V

    .line 1810
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->getSingleton()Lcom/android/server/accounts/AccountManagerService;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    .line 1811
    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1810
    invoke-virtual {v1, p1, v2}, Lcom/android/server/accounts/AccountManagerService;->getAccounts(ILjava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    .line 1812
    .local v1, "accounts":[Landroid/accounts/Account;
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v12, v1, v3

    .line 1813
    .local v12, "account":Landroid/accounts/Account;
    const/4 v7, -0x8

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x0

    move-object v4, p0

    move-object v5, v12

    move v6, p1

    invoke-virtual/range {v4 .. v11}, Lcom/android/server/content/SyncManager;->scheduleSync(Landroid/accounts/Account;IILjava/lang/String;Landroid/os/Bundle;II)V

    .line 1812
    .end local v12    # "account":Landroid/accounts/Account;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1816
    :cond_0
    return-void
.end method

.method private postMonitorSyncProgressMessage(Lcom/android/server/content/SyncManager$ActiveSyncContext;)V
    .locals 4
    .param p1, "activeSyncContext"    # Lcom/android/server/content/SyncManager$ActiveSyncContext;

    .line 1312
    const-string v0, "SyncManager"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1313
    const-string v0, "SyncManager"

    const-string/jumbo v1, "posting MESSAGE_SYNC_MONITOR in 60s"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1317
    :cond_0
    iget v0, p1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncAdapterUid:I

    .line 1318
    invoke-direct {p0, v0}, Lcom/android/server/content/SyncManager;->getTotalBytesTransferredByUid(I)J

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mBytesTransferredAtLastPoll:J

    .line 1319
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mLastPolledTimeElapsed:J

    .line 1320
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    const/16 v1, 0x8

    .line 1321
    invoke-virtual {v0, v1, p1}, Lcom/android/server/content/SyncManager$SyncHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1324
    .local v0, "monitorMessage":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    const-wide/32 v2, 0xea60

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/content/SyncManager$SyncHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1325
    return-void
.end method

.method private postScheduleSyncMessage(Lcom/android/server/content/SyncOperation;J)V
    .locals 3
    .param p1, "syncOperation"    # Lcom/android/server/content/SyncOperation;
    .param p2, "minDelayMillis"    # J

    .line 1328
    new-instance v0, Lcom/android/server/content/SyncManager$ScheduleSyncMessagePayload;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/content/SyncManager$ScheduleSyncMessagePayload;-><init>(Lcom/android/server/content/SyncOperation;J)V

    .line 1330
    .local v0, "payload":Lcom/android/server/content/SyncManager$ScheduleSyncMessagePayload;
    iget-object v1, p0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    iget-object v2, p0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    const/16 v2, 0xc

    invoke-virtual {v1, v2, v0}, Lcom/android/server/content/SyncManager$SyncHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1331
    return-void
.end method

.method private static printTwoDigitNumber(Ljava/lang/StringBuilder;JCZ)Z
    .locals 2
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "value"    # J
    .param p3, "unit"    # C
    .param p4, "always"    # Z

    .line 2159
    if-nez p4, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 2160
    const/4 v0, 0x0

    return v0

    .line 2162
    :cond_0
    if-eqz p4, :cond_1

    const-wide/16 v0, 0xa

    cmp-long v0, p1, v0

    if-gez v0, :cond_1

    .line 2163
    const/16 v0, 0x30

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2165
    :cond_1
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2166
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2167
    const/4 v0, 0x1

    return v0
.end method

.method private readDataConnectionState()Z
    .locals 2

    .line 414
    invoke-direct {p0}, Lcom/android/server/content/SyncManager;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 415
    .local v0, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static readyToSync()Z
    .locals 2

    .line 2903
    const-class v0, Lcom/android/server/content/SyncManager;

    monitor-enter v0

    .line 2904
    :try_start_0
    sget-object v1, Lcom/android/server/content/SyncManager;->sInstance:Lcom/android/server/content/SyncManager;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/content/SyncManager;->sInstance:Lcom/android/server/content/SyncManager;

    iget-boolean v1, v1, Lcom/android/server/content/SyncManager;->mProvisioned:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/content/SyncManager;->sInstance:Lcom/android/server/content/SyncManager;

    iget-boolean v1, v1, Lcom/android/server/content/SyncManager;->mBootCompleted:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/content/SyncManager;->sInstance:Lcom/android/server/content/SyncManager;

    iget-boolean v1, v1, Lcom/android/server/content/SyncManager;->mJobServiceReady:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    .line 2906
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private removeSyncsForAuthority(Lcom/android/server/content/SyncStorageEngine$EndPoint;Ljava/lang/String;)V
    .locals 9
    .param p1, "info"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .param p2, "why"    # Ljava/lang/String;

    .line 1206
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mLogger:Lcom/android/server/content/SyncLogger;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    const-string/jumbo v3, "removeSyncsForAuthority: "

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-virtual {v0, v2}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 1207
    invoke-direct {p0}, Lcom/android/server/content/SyncManager;->verifyJobScheduler()V

    .line 1208
    invoke-direct {p0}, Lcom/android/server/content/SyncManager;->getAllPendingSyncs()Ljava/util/List;

    move-result-object v0

    .line 1209
    .local v0, "ops":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/content/SyncOperation;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/content/SyncOperation;

    .line 1210
    .local v5, "op":Lcom/android/server/content/SyncOperation;
    iget-object v6, v5, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-virtual {v6, p1}, Lcom/android/server/content/SyncStorageEngine$EndPoint;->matchesSpec(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1211
    iget-object v6, p0, Lcom/android/server/content/SyncManager;->mLogger:Lcom/android/server/content/SyncLogger;

    new-array v7, v1, [Ljava/lang/Object;

    const-string v8, "canceling: "

    aput-object v8, v7, v4

    aput-object v5, v7, v3

    invoke-virtual {v6, v7}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 1212
    invoke-direct {p0, v5, p2}, Lcom/android/server/content/SyncManager;->cancelJob(Lcom/android/server/content/SyncOperation;Ljava/lang/String;)V

    .line 1214
    .end local v5    # "op":Lcom/android/server/content/SyncOperation;
    :cond_0
    goto :goto_0

    .line 1215
    :cond_1
    return-void
.end method

.method private rescheduleSyncs(Lcom/android/server/content/SyncStorageEngine$EndPoint;Ljava/lang/String;)V
    .locals 7
    .param p1, "target"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .param p2, "why"    # Ljava/lang/String;

    .line 1442
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mLogger:Lcom/android/server/content/SyncLogger;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "rescheduleSyncs() ep="

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const-string v2, " why="

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const/4 v2, 0x3

    aput-object p2, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 1444
    invoke-direct {p0}, Lcom/android/server/content/SyncManager;->getAllPendingSyncs()Ljava/util/List;

    move-result-object v0

    .line 1445
    .local v0, "ops":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/content/SyncOperation;>;"
    const/4 v1, 0x0

    .line 1446
    .local v1, "count":I
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/content/SyncOperation;

    .line 1447
    .local v4, "op":Lcom/android/server/content/SyncOperation;
    iget-boolean v5, v4, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    if-nez v5, :cond_0

    iget-object v5, v4, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-virtual {v5, p1}, Lcom/android/server/content/SyncStorageEngine$EndPoint;->matchesSpec(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1448
    add-int/lit8 v1, v1, 0x1

    .line 1449
    invoke-direct {p0, v4, p2}, Lcom/android/server/content/SyncManager;->cancelJob(Lcom/android/server/content/SyncOperation;Ljava/lang/String;)V

    .line 1450
    const-wide/16 v5, 0x0

    invoke-direct {p0, v4, v5, v6}, Lcom/android/server/content/SyncManager;->postScheduleSyncMessage(Lcom/android/server/content/SyncOperation;J)V

    .line 1452
    .end local v4    # "op":Lcom/android/server/content/SyncOperation;
    :cond_0
    goto :goto_0

    .line 1453
    :cond_1
    const-string v2, "SyncManager"

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1454
    const-string v2, "SyncManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Rescheduled "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " syncs for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1456
    :cond_2
    return-void
.end method

.method private scheduleSync(Landroid/accounts/Account;IILjava/lang/String;Landroid/os/Bundle;IJZI)V
    .locals 59
    .param p1, "requestedAccount"    # Landroid/accounts/Account;
    .param p2, "userId"    # I
    .param p3, "reason"    # I
    .param p4, "requestedAuthority"    # Ljava/lang/String;
    .param p5, "extras"    # Landroid/os/Bundle;
    .param p6, "targetSyncState"    # I
    .param p7, "minDelayMillis"    # J
    .param p9, "checkIfAccountReady"    # Z
    .param p10, "syncExemptionFlag"    # I

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    move/from16 v14, p2

    move-object/from16 v15, p4

    move/from16 v11, p6

    move-wide/from16 v9, p7

    move/from16 v8, p9

    .line 934
    const-string v0, "SyncManager"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v16

    .line 935
    .local v16, "isLoggable":Z
    if-nez p5, :cond_0

    .line 936
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    move-object v0, v1

    .line 938
    .end local p5    # "extras":Landroid/os/Bundle;
    .local v0, "extras":Landroid/os/Bundle;
    move-object v6, v0

    goto :goto_0

    .line 938
    .end local v0    # "extras":Landroid/os/Bundle;
    .restart local p5    # "extras":Landroid/os/Bundle;
    :cond_0
    move-object/from16 v6, p5

    .line 938
    .end local p5    # "extras":Landroid/os/Bundle;
    .local v6, "extras":Landroid/os/Bundle;
    :goto_0
    if-eqz v16, :cond_1

    .line 939
    const-string v0, "SyncManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "one-time sync for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " reason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v5, p3

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " checkIfAccountReady="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " syncExemptionFlag="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v4, p10

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 946
    :cond_1
    move/from16 v5, p3

    move/from16 v4, p10

    :goto_1
    const/4 v0, 0x0

    .line 947
    .local v0, "accounts":[Landroid/accounts/AccountAndUser;
    const/4 v3, -0x1

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-eqz v13, :cond_5

    .line 948
    if-eq v14, v3, :cond_2

    .line 949
    new-array v7, v2, [Landroid/accounts/AccountAndUser;

    new-instance v3, Landroid/accounts/AccountAndUser;

    invoke-direct {v3, v13, v14}, Landroid/accounts/AccountAndUser;-><init>(Landroid/accounts/Account;I)V

    aput-object v3, v7, v1

    move-object v0, v7

    goto :goto_3

    .line 951
    :cond_2
    iget-object v3, v12, Lcom/android/server/content/SyncManager;->mRunningAccounts:[Landroid/accounts/AccountAndUser;

    array-length v7, v3

    move-object v2, v0

    move v0, v1

    .line 951
    .end local v0    # "accounts":[Landroid/accounts/AccountAndUser;
    .local v2, "accounts":[Landroid/accounts/AccountAndUser;
    :goto_2
    if-ge v0, v7, :cond_4

    aget-object v1, v3, v0

    .line 952
    .local v1, "runningAccount":Landroid/accounts/AccountAndUser;
    move-object/from16 v31, v3

    iget-object v3, v1, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    invoke-virtual {v13, v3}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 953
    const-class v3, Landroid/accounts/AccountAndUser;

    invoke-static {v3, v2, v1}, Lcom/android/internal/util/ArrayUtils;->appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    move-object v1, v3

    check-cast v1, [Landroid/accounts/AccountAndUser;

    .line 951
    .end local v2    # "accounts":[Landroid/accounts/AccountAndUser;
    .local v1, "accounts":[Landroid/accounts/AccountAndUser;
    move-object v2, v1

    .line 951
    .end local v1    # "accounts":[Landroid/accounts/AccountAndUser;
    .restart local v2    # "accounts":[Landroid/accounts/AccountAndUser;
    :cond_3
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v3, v31

    const/4 v1, 0x0

    goto :goto_2

    .line 962
    :cond_4
    move-object v3, v2

    goto :goto_4

    .line 959
    .end local v2    # "accounts":[Landroid/accounts/AccountAndUser;
    .restart local v0    # "accounts":[Landroid/accounts/AccountAndUser;
    :cond_5
    iget-object v0, v12, Lcom/android/server/content/SyncManager;->mRunningAccounts:[Landroid/accounts/AccountAndUser;

    .line 962
    .end local v0    # "accounts":[Landroid/accounts/AccountAndUser;
    .local v3, "accounts":[Landroid/accounts/AccountAndUser;
    :goto_3
    move-object v3, v0

    :goto_4
    invoke-static {v3}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 963
    if-eqz v16, :cond_6

    .line 964
    const-string v0, "SyncManager"

    const-string/jumbo v1, "scheduleSync: no accounts configured, dropping"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 966
    :cond_6
    return-void

    .line 969
    :cond_7
    const-string/jumbo v0, "upload"

    const/4 v1, 0x0

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v31

    .line 970
    .local v31, "uploadOnly":Z
    const-string v0, "force"

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v32

    .line 971
    .local v32, "manualSync":Z
    if-eqz v32, :cond_8

    .line 972
    const-string v0, "ignore_backoff"

    const/4 v2, 0x1

    invoke-virtual {v6, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 973
    const-string v0, "ignore_settings"

    invoke-virtual {v6, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_5

    .line 975
    :cond_8
    const/4 v2, 0x1

    :goto_5
    const-string v0, "ignore_settings"

    .line 976
    const/4 v1, 0x0

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v29

    .line 979
    .local v29, "ignoreSettings":Z
    if-eqz v31, :cond_9

    .line 980
    const/4 v0, 0x1

    .line 980
    .local v0, "source":I
    :goto_6
    goto :goto_7

    .line 981
    .end local v0    # "source":I
    :cond_9
    if-eqz v32, :cond_a

    .line 982
    const/4 v0, 0x3

    goto :goto_6

    .line 983
    :cond_a
    if-nez v15, :cond_b

    .line 984
    const/4 v0, 0x2

    goto :goto_6

    .line 986
    :cond_b
    const-string v0, "feed"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 987
    const/4 v0, 0x5

    goto :goto_6

    .line 991
    :cond_c
    move v0, v1

    .line 991
    .restart local v0    # "source":I
    :goto_7
    move v7, v0

    .line 995
    .end local v0    # "source":I
    .local v7, "source":I
    array-length v13, v3

    move v9, v1

    :goto_8
    if-ge v9, v13, :cond_24

    aget-object v10, v3, v9

    .line 997
    .local v10, "account":Landroid/accounts/AccountAndUser;
    if-ltz v14, :cond_d

    iget v0, v10, Landroid/accounts/AccountAndUser;->userId:I

    if-ltz v0, :cond_d

    iget v0, v10, Landroid/accounts/AccountAndUser;->userId:I

    if-eq v14, v0, :cond_d

    .line 999
    nop

    .line 995
    move-object/from16 v28, v3

    move-object/from16 v17, v6

    move/from16 v22, v7

    move/from16 v36, v8

    move/from16 v33, v9

    move/from16 v38, v13

    move-wide/from16 v13, p7

    const/16 v39, -0x1

    goto/16 :goto_19

    .line 1003
    :cond_d
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    move-object/from16 v35, v0

    .line 1005
    .local v35, "syncableAuthorities":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v0, v12, Lcom/android/server/content/SyncManager;->mSyncAdapters:Landroid/content/SyncAdaptersCache;

    iget v1, v10, Landroid/accounts/AccountAndUser;->userId:I

    invoke-virtual {v0, v1}, Landroid/content/SyncAdaptersCache;->getAllServices(I)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    .line 1006
    .local v1, "syncAdapter":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    iget-object v2, v1, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    check-cast v2, Landroid/content/SyncAdapterType;

    iget-object v2, v2, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    move/from16 v38, v13

    move-object/from16 v13, v35

    invoke-virtual {v13, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1007
    .end local v1    # "syncAdapter":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    .end local v35    # "syncableAuthorities":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .local v13, "syncableAuthorities":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    nop

    .line 1005
    move/from16 v13, v38

    const/4 v2, 0x1

    goto :goto_9

    .line 1012
    .end local v13    # "syncableAuthorities":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v35    # "syncableAuthorities":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_e
    move/from16 v38, v13

    move-object/from16 v13, v35

    .line 1012
    .end local v35    # "syncableAuthorities":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v13    # "syncableAuthorities":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    if-eqz v15, :cond_f

    .line 1013
    invoke-virtual {v13, v15}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 1014
    .local v0, "hasSyncAdapter":Z
    invoke-virtual {v13}, Ljava/util/HashSet;->clear()V

    .line 1015
    if-eqz v0, :cond_f

    invoke-virtual {v13, v15}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1018
    .end local v0    # "hasSyncAdapter":Z
    :cond_f
    invoke-virtual {v13}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    .line 1019
    .local v1, "authority":Ljava/lang/String;
    iget-object v0, v10, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    move-object/from16 v39, v2

    iget v2, v10, Landroid/accounts/AccountAndUser;->userId:I

    move-object/from16 v40, v3

    xor-int/lit8 v3, v8, 0x1

    .line 1019
    .end local v3    # "accounts":[Landroid/accounts/AccountAndUser;
    .local v40, "accounts":[Landroid/accounts/AccountAndUser;
    invoke-virtual {v12, v0, v2, v1, v3}, Lcom/android/server/content/SyncManager;->computeSyncable(Landroid/accounts/Account;ILjava/lang/String;Z)I

    move-result v3

    .line 1022
    .local v3, "isSyncable":I
    if-nez v3, :cond_10

    .line 1023
    nop

    .line 1018
    .end local v1    # "authority":Ljava/lang/String;
    .end local v40    # "accounts":[Landroid/accounts/AccountAndUser;
    .local v3, "accounts":[Landroid/accounts/AccountAndUser;
    :goto_b
    move-object/from16 v2, v39

    move-object/from16 v3, v40

    goto :goto_a

    .line 1026
    .restart local v1    # "authority":Ljava/lang/String;
    .local v3, "isSyncable":I
    .restart local v40    # "accounts":[Landroid/accounts/AccountAndUser;
    :cond_10
    iget-object v0, v12, Lcom/android/server/content/SyncManager;->mSyncAdapters:Landroid/content/SyncAdaptersCache;

    iget-object v2, v10, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 1027
    invoke-static {v1, v2}, Landroid/content/SyncAdapterType;->newKey(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SyncAdapterType;

    move-result-object v2

    move-object/from16 v41, v1

    iget v1, v10, Landroid/accounts/AccountAndUser;->userId:I

    .line 1027
    .end local v1    # "authority":Ljava/lang/String;
    .local v41, "authority":Ljava/lang/String;
    invoke-virtual {v0, v2, v1}, Landroid/content/SyncAdaptersCache;->getServiceInfo(Ljava/lang/Object;I)Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    move-result-object v2

    .line 1029
    .local v2, "syncAdapterInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    if-nez v2, :cond_11

    .line 1030
    goto :goto_b

    .line 1033
    :cond_11
    iget v1, v2, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->uid:I

    .line 1035
    .local v1, "owningUid":I
    const/4 v0, 0x3

    if-ne v3, v0, :cond_14

    .line 1036
    if-eqz v16, :cond_12

    .line 1037
    const-string v0, "SyncManager"

    move/from16 v42, v1

    const-string v1, "    Not scheduling sync operation: isSyncable == SYNCABLE_NO_ACCOUNT_ACCESS"

    .line 1037
    .end local v1    # "owningUid":I
    .local v42, "owningUid":I
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .line 1040
    .end local v42    # "owningUid":I
    .restart local v1    # "owningUid":I
    :cond_12
    move/from16 v42, v1

    .line 1040
    .end local v1    # "owningUid":I
    .restart local v42    # "owningUid":I
    :goto_c
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, v6}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    move v1, v7

    move-object v7, v0

    .line 1041
    .local v1, "source":I
    .local v7, "finalExtras":Landroid/os/Bundle;
    iget-object v0, v2, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v43, v0

    .line 1044
    .local v43, "packageName":Ljava/lang/String;
    :try_start_0
    iget-object v0, v12, Lcom/android/server/content/SyncManager;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v44, v13

    move-object/from16 v13, v43

    :try_start_1
    invoke-virtual {v0, v13, v14}, Landroid/content/pm/PackageManagerInternal;->wasPackageEverLaunched(Ljava/lang/String;I)Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1044
    .end local v43    # "packageName":Ljava/lang/String;
    .local v13, "packageName":Ljava/lang/String;
    .local v44, "syncableAuthorities":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    if-nez v0, :cond_13

    .line 1045
    nop

    .line 1018
    move v7, v1

    move-object/from16 v2, v39

    move-object/from16 v3, v40

    move-object/from16 v13, v44

    goto :goto_a

    .line 1050
    :cond_13
    nop

    .line 1051
    iget-object v0, v12, Lcom/android/server/content/SyncManager;->mAccountManagerInternal:Landroid/accounts/AccountManagerInternal;

    iget-object v15, v10, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    move-object/from16 v45, v0

    new-instance v0, Landroid/os/RemoteCallback;

    move-object/from16 v46, v13

    new-instance v13, Lcom/android/server/content/-$$Lambda$SyncManager$o7UdjgcI2E4HDw_-2JMHW-T1SJs;

    .line 1051
    .end local v13    # "packageName":Ljava/lang/String;
    .local v46, "packageName":Ljava/lang/String;
    move/from16 v47, v1

    move-object/from16 v48, v41

    move/from16 v30, v42

    move-object v1, v13

    .line 1051
    .end local v1    # "source":I
    .end local v41    # "authority":Ljava/lang/String;
    .end local v42    # "owningUid":I
    .local v30, "owningUid":I
    .local v47, "source":I
    .local v48, "authority":Ljava/lang/String;
    move-object/from16 v49, v2

    move-object/from16 v35, v39

    move-object v2, v12

    .line 1051
    .end local v2    # "syncAdapterInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    .local v49, "syncAdapterInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    move/from16 v23, v3

    move-object/from16 v28, v40

    move-object v3, v10

    .line 1051
    .end local v3    # "isSyncable":I
    .end local v40    # "accounts":[Landroid/accounts/AccountAndUser;
    .local v23, "isSyncable":I
    .local v28, "accounts":[Landroid/accounts/AccountAndUser;
    move v4, v14

    move/from16 v5, p3

    move-object/from16 v50, v6

    move-object/from16 v6, v48

    .line 1051
    .end local v6    # "extras":Landroid/os/Bundle;
    .local v50, "extras":Landroid/os/Bundle;
    move/from16 v36, v8

    move v8, v11

    move/from16 v33, v9

    move-object/from16 v51, v10

    move-wide/from16 v9, p7

    .line 1051
    .end local v10    # "account":Landroid/accounts/AccountAndUser;
    .local v51, "account":Landroid/accounts/AccountAndUser;
    move/from16 v11, p10

    invoke-direct/range {v1 .. v11}, Lcom/android/server/content/-$$Lambda$SyncManager$o7UdjgcI2E4HDw_-2JMHW-T1SJs;-><init>(Lcom/android/server/content/SyncManager;Landroid/accounts/AccountAndUser;IILjava/lang/String;Landroid/os/Bundle;IJI)V

    invoke-direct {v0, v13}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;)V

    move-object/from16 v2, v45

    move-object/from16 v1, v46

    invoke-virtual {v2, v15, v1, v14, v0}, Landroid/accounts/AccountManagerInternal;->requestAccountAccess(Landroid/accounts/Account;Ljava/lang/String;ILandroid/os/RemoteCallback;)V

    .line 1063
    .end local v46    # "packageName":Ljava/lang/String;
    .local v1, "packageName":Ljava/lang/String;
    goto :goto_e

    .line 1047
    .end local v23    # "isSyncable":I
    .end local v28    # "accounts":[Landroid/accounts/AccountAndUser;
    .end local v30    # "owningUid":I
    .end local v47    # "source":I
    .end local v48    # "authority":Ljava/lang/String;
    .end local v49    # "syncAdapterInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    .end local v50    # "extras":Landroid/os/Bundle;
    .end local v51    # "account":Landroid/accounts/AccountAndUser;
    .local v1, "source":I
    .restart local v2    # "syncAdapterInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    .restart local v3    # "isSyncable":I
    .restart local v6    # "extras":Landroid/os/Bundle;
    .restart local v10    # "account":Landroid/accounts/AccountAndUser;
    .restart local v13    # "packageName":Ljava/lang/String;
    .restart local v40    # "accounts":[Landroid/accounts/AccountAndUser;
    .restart local v41    # "authority":Ljava/lang/String;
    .restart local v42    # "owningUid":I
    :catch_0
    move-exception v0

    move/from16 v47, v1

    move-object/from16 v49, v2

    move/from16 v23, v3

    move-object/from16 v50, v6

    move/from16 v36, v8

    move/from16 v33, v9

    move-object/from16 v51, v10

    move-object v1, v13

    move-object/from16 v35, v39

    move-object/from16 v28, v40

    move-object/from16 v48, v41

    move/from16 v30, v42

    .end local v2    # "syncAdapterInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    .end local v3    # "isSyncable":I
    .end local v6    # "extras":Landroid/os/Bundle;
    .end local v10    # "account":Landroid/accounts/AccountAndUser;
    .end local v13    # "packageName":Ljava/lang/String;
    .end local v40    # "accounts":[Landroid/accounts/AccountAndUser;
    .end local v41    # "authority":Ljava/lang/String;
    .end local v42    # "owningUid":I
    .local v1, "packageName":Ljava/lang/String;
    .restart local v23    # "isSyncable":I
    .restart local v28    # "accounts":[Landroid/accounts/AccountAndUser;
    .restart local v30    # "owningUid":I
    .restart local v47    # "source":I
    .restart local v48    # "authority":Ljava/lang/String;
    .restart local v49    # "syncAdapterInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    .restart local v50    # "extras":Landroid/os/Bundle;
    .restart local v51    # "account":Landroid/accounts/AccountAndUser;
    goto :goto_d

    .line 1047
    .end local v23    # "isSyncable":I
    .end local v28    # "accounts":[Landroid/accounts/AccountAndUser;
    .end local v30    # "owningUid":I
    .end local v44    # "syncableAuthorities":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v47    # "source":I
    .end local v48    # "authority":Ljava/lang/String;
    .end local v49    # "syncAdapterInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    .end local v50    # "extras":Landroid/os/Bundle;
    .end local v51    # "account":Landroid/accounts/AccountAndUser;
    .local v1, "source":I
    .restart local v2    # "syncAdapterInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    .restart local v3    # "isSyncable":I
    .restart local v6    # "extras":Landroid/os/Bundle;
    .restart local v10    # "account":Landroid/accounts/AccountAndUser;
    .local v13, "syncableAuthorities":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v40    # "accounts":[Landroid/accounts/AccountAndUser;
    .restart local v41    # "authority":Ljava/lang/String;
    .restart local v42    # "owningUid":I
    .restart local v43    # "packageName":Ljava/lang/String;
    :catch_1
    move-exception v0

    move/from16 v47, v1

    move-object/from16 v49, v2

    move/from16 v23, v3

    move-object/from16 v50, v6

    move/from16 v36, v8

    move/from16 v33, v9

    move-object/from16 v51, v10

    move-object/from16 v44, v13

    move-object/from16 v35, v39

    move-object/from16 v28, v40

    move-object/from16 v48, v41

    move/from16 v30, v42

    move-object/from16 v1, v43

    .line 1049
    .end local v2    # "syncAdapterInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    .end local v3    # "isSyncable":I
    .end local v6    # "extras":Landroid/os/Bundle;
    .end local v10    # "account":Landroid/accounts/AccountAndUser;
    .end local v13    # "syncableAuthorities":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v40    # "accounts":[Landroid/accounts/AccountAndUser;
    .end local v41    # "authority":Ljava/lang/String;
    .end local v42    # "owningUid":I
    .end local v43    # "packageName":Ljava/lang/String;
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    .local v1, "packageName":Ljava/lang/String;
    .restart local v23    # "isSyncable":I
    .restart local v28    # "accounts":[Landroid/accounts/AccountAndUser;
    .restart local v30    # "owningUid":I
    .restart local v44    # "syncableAuthorities":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v47    # "source":I
    .restart local v48    # "authority":Ljava/lang/String;
    .restart local v49    # "syncAdapterInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    .restart local v50    # "extras":Landroid/os/Bundle;
    .restart local v51    # "account":Landroid/accounts/AccountAndUser;
    :goto_d
    nop

    .line 1018
    move/from16 v5, p3

    .line 1018
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v23    # "isSyncable":I
    .end local v28    # "accounts":[Landroid/accounts/AccountAndUser;
    .end local v30    # "owningUid":I
    .end local v44    # "syncableAuthorities":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v47    # "source":I
    .end local v48    # "authority":Ljava/lang/String;
    .end local v49    # "syncAdapterInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    .end local v50    # "extras":Landroid/os/Bundle;
    .end local v51    # "account":Landroid/accounts/AccountAndUser;
    .local v3, "accounts":[Landroid/accounts/AccountAndUser;
    .restart local v6    # "extras":Landroid/os/Bundle;
    .local v7, "source":I
    .restart local v10    # "account":Landroid/accounts/AccountAndUser;
    .restart local v13    # "syncableAuthorities":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :goto_e
    move/from16 v4, p10

    move-object/from16 v3, v28

    move/from16 v9, v33

    move-object/from16 v2, v35

    move/from16 v8, v36

    move-object/from16 v13, v44

    move/from16 v7, v47

    move-object/from16 v6, v50

    move-object/from16 v10, v51

    move/from16 v11, p6

    :goto_f
    move-object/from16 v15, p4

    goto/16 :goto_a

    .line 1066
    .local v1, "owningUid":I
    .restart local v2    # "syncAdapterInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    .local v3, "isSyncable":I
    .restart local v40    # "accounts":[Landroid/accounts/AccountAndUser;
    .restart local v41    # "authority":Ljava/lang/String;
    :cond_14
    move/from16 v30, v1

    move-object/from16 v49, v2

    move/from16 v23, v3

    move-object/from16 v50, v6

    move/from16 v47, v7

    move/from16 v36, v8

    move/from16 v33, v9

    move-object/from16 v51, v10

    move-object/from16 v44, v13

    move-object/from16 v35, v39

    move-object/from16 v28, v40

    move-object/from16 v48, v41

    .end local v1    # "owningUid":I
    .end local v2    # "syncAdapterInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    .end local v3    # "isSyncable":I
    .end local v6    # "extras":Landroid/os/Bundle;
    .end local v7    # "source":I
    .end local v10    # "account":Landroid/accounts/AccountAndUser;
    .end local v13    # "syncableAuthorities":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v40    # "accounts":[Landroid/accounts/AccountAndUser;
    .end local v41    # "authority":Ljava/lang/String;
    .restart local v23    # "isSyncable":I
    .restart local v28    # "accounts":[Landroid/accounts/AccountAndUser;
    .restart local v30    # "owningUid":I
    .restart local v44    # "syncableAuthorities":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v47    # "source":I
    .restart local v48    # "authority":Ljava/lang/String;
    .restart local v49    # "syncAdapterInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    .restart local v50    # "extras":Landroid/os/Bundle;
    .restart local v51    # "account":Landroid/accounts/AccountAndUser;
    move-object/from16 v13, v49

    iget-object v0, v13, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    .line 1066
    .end local v49    # "syncAdapterInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    .local v13, "syncAdapterInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    check-cast v0, Landroid/content/SyncAdapterType;

    invoke-virtual {v0}, Landroid/content/SyncAdapterType;->allowParallelSyncs()Z

    move-result v0

    .line 1067
    .local v0, "allowParallelSyncs":Z
    iget-object v1, v13, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    check-cast v1, Landroid/content/SyncAdapterType;

    invoke-virtual {v1}, Landroid/content/SyncAdapterType;->isAlwaysSyncable()Z

    move-result v15

    .line 1068
    .local v15, "isAlwaysSyncable":Z
    if-nez v36, :cond_15

    if-gez v23, :cond_15

    if-eqz v15, :cond_15

    .line 1069
    iget-object v1, v12, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    move-object/from16 v11, v51

    iget-object v2, v11, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    .line 1069
    .end local v51    # "account":Landroid/accounts/AccountAndUser;
    .local v11, "account":Landroid/accounts/AccountAndUser;
    iget v3, v11, Landroid/accounts/AccountAndUser;->userId:I

    const/16 v21, 0x1

    const/16 v22, -0x1

    move-object/from16 v17, v1

    move-object/from16 v18, v2

    move/from16 v19, v3

    move-object/from16 v20, v48

    invoke-virtual/range {v17 .. v22}, Lcom/android/server/content/SyncStorageEngine;->setIsSyncable(Landroid/accounts/Account;ILjava/lang/String;II)V

    .line 1072
    const/4 v3, 0x1

    .line 1075
    .end local v23    # "isSyncable":I
    .restart local v3    # "isSyncable":I
    move v10, v3

    goto :goto_10

    .line 1075
    .end local v3    # "isSyncable":I
    .end local v11    # "account":Landroid/accounts/AccountAndUser;
    .restart local v23    # "isSyncable":I
    .restart local v51    # "account":Landroid/accounts/AccountAndUser;
    :cond_15
    move-object/from16 v11, v51

    .line 1075
    .end local v51    # "account":Landroid/accounts/AccountAndUser;
    .restart local v11    # "account":Landroid/accounts/AccountAndUser;
    move/from16 v10, v23

    .line 1075
    .end local v23    # "isSyncable":I
    .local v10, "isSyncable":I
    :goto_10
    const/4 v1, -0x2

    move/from16 v8, p6

    if-eq v8, v1, :cond_17

    if-eq v8, v10, :cond_17

    .line 1076
    nop

    .line 1018
    .end local v0    # "allowParallelSyncs":Z
    .end local v11    # "account":Landroid/accounts/AccountAndUser;
    .end local v15    # "isAlwaysSyncable":Z
    .end local v28    # "accounts":[Landroid/accounts/AccountAndUser;
    .end local v30    # "owningUid":I
    .end local v44    # "syncableAuthorities":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v47    # "source":I
    .end local v48    # "authority":Ljava/lang/String;
    .end local v50    # "extras":Landroid/os/Bundle;
    .local v3, "accounts":[Landroid/accounts/AccountAndUser;
    .restart local v6    # "extras":Landroid/os/Bundle;
    .restart local v7    # "source":I
    .local v10, "account":Landroid/accounts/AccountAndUser;
    .local v13, "syncableAuthorities":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_16
    :goto_11
    move/from16 v5, p3

    move/from16 v4, p10

    move-object v10, v11

    move-object/from16 v3, v28

    move/from16 v9, v33

    move-object/from16 v2, v35

    move-object/from16 v13, v44

    move/from16 v7, v47

    move-object/from16 v6, v50

    move-object/from16 v15, p4

    move v11, v8

    move/from16 v8, v36

    goto/16 :goto_a

    .line 1079
    .end local v3    # "accounts":[Landroid/accounts/AccountAndUser;
    .end local v6    # "extras":Landroid/os/Bundle;
    .end local v7    # "source":I
    .restart local v0    # "allowParallelSyncs":Z
    .local v10, "isSyncable":I
    .restart local v11    # "account":Landroid/accounts/AccountAndUser;
    .local v13, "syncAdapterInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    .restart local v15    # "isAlwaysSyncable":Z
    .restart local v28    # "accounts":[Landroid/accounts/AccountAndUser;
    .restart local v30    # "owningUid":I
    .restart local v44    # "syncableAuthorities":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v47    # "source":I
    .restart local v48    # "authority":Ljava/lang/String;
    .restart local v50    # "extras":Landroid/os/Bundle;
    :cond_17
    iget-object v2, v13, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    check-cast v2, Landroid/content/SyncAdapterType;

    invoke-virtual {v2}, Landroid/content/SyncAdapterType;->supportsUploading()Z

    move-result v2

    if-nez v2, :cond_18

    if-eqz v31, :cond_18

    .line 1080
    goto :goto_11

    .line 1083
    :cond_18
    if-ltz v10, :cond_1b

    if-nez v29, :cond_1b

    iget-object v2, v12, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    iget v3, v11, Landroid/accounts/AccountAndUser;->userId:I

    .line 1086
    invoke-virtual {v2, v3}, Lcom/android/server/content/SyncStorageEngine;->getMasterSyncAutomatically(I)Z

    move-result v2

    if-eqz v2, :cond_19

    iget-object v2, v12, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    iget-object v3, v11, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    iget v4, v11, Landroid/accounts/AccountAndUser;->userId:I

    .line 1087
    move-object/from16 v9, v48

    invoke-virtual {v2, v3, v4, v9}, Lcom/android/server/content/SyncStorageEngine;->getSyncAutomatically(Landroid/accounts/Account;ILjava/lang/String;)Z

    move-result v2

    .line 1087
    .end local v48    # "authority":Ljava/lang/String;
    .local v9, "authority":Ljava/lang/String;
    if-eqz v2, :cond_1a

    goto :goto_12

    .line 1087
    .end local v9    # "authority":Ljava/lang/String;
    .restart local v48    # "authority":Ljava/lang/String;
    :cond_19
    move-object/from16 v9, v48

    .line 1087
    .end local v48    # "authority":Ljava/lang/String;
    .restart local v9    # "authority":Ljava/lang/String;
    :cond_1a
    const/4 v2, 0x0

    goto :goto_13

    .line 1087
    .end local v9    # "authority":Ljava/lang/String;
    .restart local v48    # "authority":Ljava/lang/String;
    :cond_1b
    move-object/from16 v9, v48

    .line 1087
    .end local v48    # "authority":Ljava/lang/String;
    .restart local v9    # "authority":Ljava/lang/String;
    :goto_12
    const/4 v2, 0x1

    :goto_13
    move/from16 v34, v2

    .line 1089
    .local v34, "syncAllowed":Z
    if-nez v34, :cond_1c

    .line 1090
    if-eqz v16, :cond_16

    .line 1091
    const-string v1, "SyncManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "scheduleSync: sync of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is not allowed, dropping request"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    .line 1096
    :cond_1c
    new-instance v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v3, v11, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    iget v4, v11, Landroid/accounts/AccountAndUser;->userId:I

    invoke-direct {v2, v3, v9, v4}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    move-object v7, v2

    .line 1099
    .local v7, "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    iget-object v2, v12, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    .line 1100
    invoke-virtual {v2, v7}, Lcom/android/server/content/SyncStorageEngine;->getDelayUntilTime(Lcom/android/server/content/SyncStorageEngine$EndPoint;)J

    move-result-wide v4

    .line 1102
    .local v4, "delayUntil":J
    iget-object v2, v13, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v37

    .line 1104
    .local v37, "owningPackage":Ljava/lang/String;
    const/4 v3, -0x1

    if-ne v10, v3, :cond_1f

    .line 1105
    if-eqz v36, :cond_1d

    .line 1106
    new-instance v6, Landroid/os/Bundle;

    move-object/from16 v2, v50

    invoke-direct {v6, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 1108
    .end local v50    # "extras":Landroid/os/Bundle;
    .local v2, "extras":Landroid/os/Bundle;
    .local v6, "finalExtras":Landroid/os/Bundle;
    iget-object v1, v12, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    iget v14, v11, Landroid/accounts/AccountAndUser;->userId:I

    move/from16 v52, v15

    new-instance v15, Lcom/android/server/content/-$$Lambda$SyncManager$Dly2yZUw2lCDXffoc_fe8npXe2U;

    .line 1108
    .end local v15    # "isAlwaysSyncable":Z
    .local v52, "isAlwaysSyncable":Z
    move/from16 v53, v0

    move-object v0, v1

    move-object v1, v15

    .line 1108
    .end local v0    # "allowParallelSyncs":Z
    .local v53, "allowParallelSyncs":Z
    move-object/from16 v54, v2

    move-object v2, v12

    .line 1108
    .end local v2    # "extras":Landroid/os/Bundle;
    .local v54, "extras":Landroid/os/Bundle;
    move/from16 v39, v3

    move-object v3, v11

    move-object/from16 v55, v11

    move-wide v11, v4

    move/from16 v4, p3

    .line 1108
    .end local v4    # "delayUntil":J
    .local v11, "delayUntil":J
    .local v55, "account":Landroid/accounts/AccountAndUser;
    move-object v5, v9

    move-object/from16 v40, v7

    move v7, v8

    .line 1108
    .end local v7    # "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .local v40, "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    move-object/from16 v56, v9

    move-wide/from16 v8, p7

    .line 1108
    .end local v9    # "authority":Ljava/lang/String;
    .local v56, "authority":Ljava/lang/String;
    move/from16 v57, v10

    move/from16 v10, p10

    .line 1108
    .end local v10    # "isSyncable":I
    .local v57, "isSyncable":I
    invoke-direct/range {v1 .. v10}, Lcom/android/server/content/-$$Lambda$SyncManager$Dly2yZUw2lCDXffoc_fe8npXe2U;-><init>(Lcom/android/server/content/SyncManager;Landroid/accounts/AccountAndUser;ILjava/lang/String;Landroid/os/Bundle;IJI)V

    invoke-static {v0, v13, v14, v15}, Lcom/android/server/content/SyncManager;->sendOnUnsyncableAccount(Landroid/content/Context;Landroid/content/pm/RegisteredServicesCache$ServiceInfo;ILcom/android/server/content/SyncManager$OnReadyCallback;)V

    .line 1112
    .end local v6    # "finalExtras":Landroid/os/Bundle;
    nop

    .line 1151
    move-wide/from16 v13, p7

    move/from16 v22, v47

    move-object/from16 v17, v54

    move-object/from16 v21, v55

    move-object/from16 v12, p0

    goto/16 :goto_18

    .line 1114
    .end local v40    # "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .end local v52    # "isAlwaysSyncable":Z
    .end local v53    # "allowParallelSyncs":Z
    .end local v54    # "extras":Landroid/os/Bundle;
    .end local v55    # "account":Landroid/accounts/AccountAndUser;
    .end local v56    # "authority":Ljava/lang/String;
    .end local v57    # "isSyncable":I
    .restart local v0    # "allowParallelSyncs":Z
    .restart local v4    # "delayUntil":J
    .restart local v7    # "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .restart local v9    # "authority":Ljava/lang/String;
    .restart local v10    # "isSyncable":I
    .local v11, "account":Landroid/accounts/AccountAndUser;
    .restart local v15    # "isAlwaysSyncable":Z
    .restart local v50    # "extras":Landroid/os/Bundle;
    :cond_1d
    move/from16 v53, v0

    move/from16 v39, v3

    move-object/from16 v40, v7

    move-object/from16 v56, v9

    move/from16 v57, v10

    move-object/from16 v55, v11

    move/from16 v52, v15

    move-object/from16 v54, v50

    move-wide v11, v4

    .end local v0    # "allowParallelSyncs":Z
    .end local v4    # "delayUntil":J
    .end local v7    # "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .end local v9    # "authority":Ljava/lang/String;
    .end local v10    # "isSyncable":I
    .end local v15    # "isAlwaysSyncable":Z
    .end local v50    # "extras":Landroid/os/Bundle;
    .local v11, "delayUntil":J
    .restart local v40    # "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .restart local v52    # "isAlwaysSyncable":Z
    .restart local v53    # "allowParallelSyncs":Z
    .restart local v54    # "extras":Landroid/os/Bundle;
    .restart local v55    # "account":Landroid/accounts/AccountAndUser;
    .restart local v56    # "authority":Ljava/lang/String;
    .restart local v57    # "isSyncable":I
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1115
    .local v0, "newExtras":Landroid/os/Bundle;
    const-string/jumbo v1, "initialize"

    const/4 v14, 0x1

    invoke-virtual {v0, v1, v14}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1116
    if-eqz v16, :cond_1e

    .line 1117
    const-string v1, "SyncManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "schedule initialisation Sync:, delay until "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", run by "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v15, 0x0

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", flexMillis "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", source "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v10, v47

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .end local v47    # "source":I
    .local v10, "source":I
    const-string v3, ", account "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v9, v55

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1117
    .end local v55    # "account":Landroid/accounts/AccountAndUser;
    .local v9, "account":Landroid/accounts/AccountAndUser;
    const-string v3, ", authority "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v8, v56

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1117
    .end local v56    # "authority":Ljava/lang/String;
    .local v8, "authority":Ljava/lang/String;
    const-string v3, ", extras "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14

    .line 1126
    .end local v8    # "authority":Ljava/lang/String;
    .end local v9    # "account":Landroid/accounts/AccountAndUser;
    .end local v10    # "source":I
    .restart local v47    # "source":I
    .restart local v55    # "account":Landroid/accounts/AccountAndUser;
    .restart local v56    # "authority":Ljava/lang/String;
    :cond_1e
    move/from16 v10, v47

    move-object/from16 v9, v55

    move-object/from16 v8, v56

    const/4 v15, 0x0

    .line 1126
    .end local v47    # "source":I
    .end local v55    # "account":Landroid/accounts/AccountAndUser;
    .end local v56    # "authority":Ljava/lang/String;
    .restart local v8    # "authority":Ljava/lang/String;
    .restart local v9    # "account":Landroid/accounts/AccountAndUser;
    .restart local v10    # "source":I
    :goto_14
    new-instance v1, Lcom/android/server/content/SyncOperation;

    iget-object v2, v9, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    iget v3, v9, Landroid/accounts/AccountAndUser;->userId:I

    move-object/from16 v17, v1

    move-object/from16 v18, v2

    move/from16 v19, v3

    move/from16 v20, v30

    move-object/from16 v21, v37

    move/from16 v22, p3

    move/from16 v23, v10

    move-object/from16 v24, v8

    move-object/from16 v25, v0

    move/from16 v26, v53

    move/from16 v27, p10

    invoke-direct/range {v17 .. v27}, Lcom/android/server/content/SyncOperation;-><init>(Landroid/accounts/Account;IILjava/lang/String;IILjava/lang/String;Landroid/os/Bundle;ZI)V

    move-wide/from16 v6, p7

    move-wide v4, v11

    move-object/from16 v12, p0

    invoke-direct {v12, v1, v6, v7}, Lcom/android/server/content/SyncManager;->postScheduleSyncMessage(Lcom/android/server/content/SyncOperation;J)V

    .line 1133
    .end local v0    # "newExtras":Landroid/os/Bundle;
    .end local v11    # "delayUntil":J
    .restart local v4    # "delayUntil":J
    goto :goto_15

    .line 1134
    .end local v8    # "authority":Ljava/lang/String;
    .end local v40    # "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .end local v52    # "isAlwaysSyncable":Z
    .end local v53    # "allowParallelSyncs":Z
    .end local v54    # "extras":Landroid/os/Bundle;
    .end local v57    # "isSyncable":I
    .local v0, "allowParallelSyncs":Z
    .restart local v7    # "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .local v9, "authority":Ljava/lang/String;
    .local v10, "isSyncable":I
    .local v11, "account":Landroid/accounts/AccountAndUser;
    .restart local v15    # "isAlwaysSyncable":Z
    .restart local v47    # "source":I
    .restart local v50    # "extras":Landroid/os/Bundle;
    :cond_1f
    move/from16 v53, v0

    move/from16 v39, v3

    move-object/from16 v40, v7

    move-object v8, v9

    move/from16 v57, v10

    move-object v9, v11

    move/from16 v52, v15

    move/from16 v10, v47

    move-object/from16 v54, v50

    const/4 v14, 0x1

    const/4 v15, 0x0

    move-wide/from16 v6, p7

    .end local v0    # "allowParallelSyncs":Z
    .end local v7    # "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .end local v11    # "account":Landroid/accounts/AccountAndUser;
    .end local v15    # "isAlwaysSyncable":Z
    .end local v47    # "source":I
    .end local v50    # "extras":Landroid/os/Bundle;
    .restart local v8    # "authority":Ljava/lang/String;
    .local v9, "account":Landroid/accounts/AccountAndUser;
    .local v10, "source":I
    .restart local v40    # "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .restart local v52    # "isAlwaysSyncable":Z
    .restart local v53    # "allowParallelSyncs":Z
    .restart local v54    # "extras":Landroid/os/Bundle;
    .restart local v57    # "isSyncable":I
    move/from16 v11, p6

    if-eq v11, v1, :cond_21

    move/from16 v0, v57

    if-ne v11, v0, :cond_20

    .line 1134
    .end local v57    # "isSyncable":I
    .local v0, "isSyncable":I
    goto :goto_16

    .line 1151
    .end local v0    # "isSyncable":I
    .end local v4    # "delayUntil":J
    .end local v8    # "authority":Ljava/lang/String;
    .end local v9    # "account":Landroid/accounts/AccountAndUser;
    .end local v10    # "source":I
    .end local v13    # "syncAdapterInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    .end local v30    # "owningUid":I
    .end local v34    # "syncAllowed":Z
    .end local v37    # "owningPackage":Ljava/lang/String;
    .end local v40    # "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .end local v52    # "isAlwaysSyncable":Z
    .end local v53    # "allowParallelSyncs":Z
    .end local v54    # "extras":Landroid/os/Bundle;
    .local v17, "extras":Landroid/os/Bundle;
    .local v21, "account":Landroid/accounts/AccountAndUser;
    .local v22, "source":I
    :cond_20
    :goto_15
    move-wide v13, v6

    move-object/from16 v21, v9

    move/from16 v22, v10

    move-object/from16 v17, v54

    goto/16 :goto_18

    .line 1136
    .end local v17    # "extras":Landroid/os/Bundle;
    .end local v21    # "account":Landroid/accounts/AccountAndUser;
    .end local v22    # "source":I
    .restart local v4    # "delayUntil":J
    .restart local v8    # "authority":Ljava/lang/String;
    .restart local v9    # "account":Landroid/accounts/AccountAndUser;
    .restart local v10    # "source":I
    .restart local v13    # "syncAdapterInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    .restart local v30    # "owningUid":I
    .restart local v34    # "syncAllowed":Z
    .restart local v37    # "owningPackage":Ljava/lang/String;
    .restart local v40    # "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .restart local v52    # "isAlwaysSyncable":Z
    .restart local v53    # "allowParallelSyncs":Z
    .restart local v54    # "extras":Landroid/os/Bundle;
    .restart local v57    # "isSyncable":I
    :cond_21
    move/from16 v0, v57

    .line 1136
    .end local v57    # "isSyncable":I
    .restart local v0    # "isSyncable":I
    :goto_16
    if-eqz v16, :cond_22

    .line 1137
    const-string v1, "SyncManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "scheduleSync: delay until "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", source "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", account "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", authority "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", extras "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, v54

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .end local v54    # "extras":Landroid/os/Bundle;
    .local v3, "extras":Landroid/os/Bundle;
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17

    .line 1144
    .end local v3    # "extras":Landroid/os/Bundle;
    .restart local v54    # "extras":Landroid/os/Bundle;
    :cond_22
    move-object/from16 v3, v54

    .line 1144
    .end local v54    # "extras":Landroid/os/Bundle;
    .restart local v3    # "extras":Landroid/os/Bundle;
    :goto_17
    new-instance v2, Lcom/android/server/content/SyncOperation;

    iget-object v1, v9, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    iget v14, v9, Landroid/accounts/AccountAndUser;->userId:I

    move-object/from16 v17, v1

    move-object v1, v2

    move-object v15, v2

    move-object/from16 v2, v17

    move-object/from16 v17, v3

    move v3, v14

    .line 1144
    .end local v3    # "extras":Landroid/os/Bundle;
    .restart local v17    # "extras":Landroid/os/Bundle;
    move-wide/from16 v18, v4

    move/from16 v4, v30

    .line 1144
    .end local v4    # "delayUntil":J
    .local v18, "delayUntil":J
    move-object/from16 v5, v37

    move-object/from16 v58, v13

    move-wide v13, v6

    move/from16 v6, p3

    .line 1144
    .end local v13    # "syncAdapterInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    .local v58, "syncAdapterInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    move v7, v10

    move-object/from16 v20, v8

    .line 1144
    .end local v8    # "authority":Ljava/lang/String;
    .local v20, "authority":Ljava/lang/String;
    move-object/from16 v21, v9

    move-object/from16 v9, v17

    .line 1144
    .end local v9    # "account":Landroid/accounts/AccountAndUser;
    .restart local v21    # "account":Landroid/accounts/AccountAndUser;
    move/from16 v22, v10

    move/from16 v10, v53

    .line 1144
    .end local v10    # "source":I
    .restart local v22    # "source":I
    move/from16 v11, p10

    invoke-direct/range {v1 .. v11}, Lcom/android/server/content/SyncOperation;-><init>(Landroid/accounts/Account;IILjava/lang/String;IILjava/lang/String;Landroid/os/Bundle;ZI)V

    invoke-direct {v12, v15, v13, v14}, Lcom/android/server/content/SyncManager;->postScheduleSyncMessage(Lcom/android/server/content/SyncOperation;J)V

    .line 1151
    .end local v0    # "isSyncable":I
    .end local v18    # "delayUntil":J
    .end local v20    # "authority":Ljava/lang/String;
    .end local v30    # "owningUid":I
    .end local v34    # "syncAllowed":Z
    .end local v37    # "owningPackage":Ljava/lang/String;
    .end local v40    # "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .end local v52    # "isAlwaysSyncable":Z
    .end local v53    # "allowParallelSyncs":Z
    .end local v58    # "syncAdapterInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    :goto_18
    nop

    .line 1018
    move/from16 v5, p3

    move/from16 v11, p6

    move/from16 v4, p10

    move-object/from16 v6, v17

    move-object/from16 v10, v21

    move/from16 v7, v22

    move-object/from16 v3, v28

    move/from16 v9, v33

    move-object/from16 v2, v35

    move/from16 v8, v36

    move-object/from16 v13, v44

    move/from16 v14, p2

    goto/16 :goto_f

    .line 995
    .end local v17    # "extras":Landroid/os/Bundle;
    .end local v21    # "account":Landroid/accounts/AccountAndUser;
    .end local v22    # "source":I
    .end local v28    # "accounts":[Landroid/accounts/AccountAndUser;
    .end local v44    # "syncableAuthorities":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .local v3, "accounts":[Landroid/accounts/AccountAndUser;
    .local v6, "extras":Landroid/os/Bundle;
    .local v7, "source":I
    :cond_23
    move-object/from16 v28, v3

    move-object/from16 v17, v6

    move/from16 v22, v7

    move/from16 v36, v8

    move/from16 v33, v9

    move-wide/from16 v13, p7

    const/16 v39, -0x1

    .line 995
    .end local v3    # "accounts":[Landroid/accounts/AccountAndUser;
    .end local v6    # "extras":Landroid/os/Bundle;
    .end local v7    # "source":I
    .restart local v17    # "extras":Landroid/os/Bundle;
    .restart local v22    # "source":I
    .restart local v28    # "accounts":[Landroid/accounts/AccountAndUser;
    :goto_19
    add-int/lit8 v9, v33, 0x1

    move/from16 v5, p3

    move/from16 v11, p6

    move/from16 v4, p10

    move-object/from16 v6, v17

    move/from16 v7, v22

    move-object/from16 v3, v28

    move/from16 v8, v36

    move/from16 v13, v38

    const/4 v1, 0x0

    const/4 v2, 0x1

    move/from16 v14, p2

    move-object/from16 v15, p4

    goto/16 :goto_8

    .line 1153
    .end local v17    # "extras":Landroid/os/Bundle;
    .end local v22    # "source":I
    .end local v28    # "accounts":[Landroid/accounts/AccountAndUser;
    .restart local v3    # "accounts":[Landroid/accounts/AccountAndUser;
    .restart local v6    # "extras":Landroid/os/Bundle;
    .restart local v7    # "source":I
    :cond_24
    move-object/from16 v28, v3

    move-object/from16 v17, v6

    move/from16 v22, v7

    move/from16 v36, v8

    move-wide/from16 v13, p7

    .line 1153
    .end local v3    # "accounts":[Landroid/accounts/AccountAndUser;
    .end local v6    # "extras":Landroid/os/Bundle;
    .end local v7    # "source":I
    .restart local v17    # "extras":Landroid/os/Bundle;
    .restart local v22    # "source":I
    .restart local v28    # "accounts":[Landroid/accounts/AccountAndUser;
    return-void
.end method

.method private scheduleSyncOperationH(Lcom/android/server/content/SyncOperation;)V
    .locals 2
    .param p1, "syncOperation"    # Lcom/android/server/content/SyncOperation;

    .line 1501
    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/content/SyncManager;->scheduleSyncOperationH(Lcom/android/server/content/SyncOperation;J)V

    .line 1502
    return-void
.end method

.method private scheduleSyncOperationH(Lcom/android/server/content/SyncOperation;J)V
    .locals 20
    .param p1, "syncOperation"    # Lcom/android/server/content/SyncOperation;
    .param p2, "minDelay"    # J

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1505
    const-string v2, "SyncManager"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    .line 1506
    .local v2, "isLoggable":Z
    if-nez v1, :cond_0

    .line 1507
    const-string v3, "SyncManager"

    const-string v4, "Can\'t schedule null sync operation."

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1508
    return-void

    .line 1511
    :cond_0
    iget v4, v1, Lcom/android/server/content/SyncOperation;->owningUid:I

    iget-object v5, v1, Lcom/android/server/content/SyncOperation;->owningPackage:Ljava/lang/String;

    invoke-static {v4, v5}, Lnubia/os/ApplicationManager$Trigger;->allowBackgroundSyncToRun(ILjava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1513
    sget-boolean v3, Lcn/nubia/server/appmgmt/ApplicationManagerConfig;->DEBUG:Z

    if-eqz v3, :cond_1

    .line 1514
    const-string v3, "ApplicationManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "disallow sync manager to run for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/android/server/content/SyncOperation;->owningPackage:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1517
    :cond_1
    return-void

    .line 1520
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/content/SyncOperation;->ignoreBackoff()Z

    move-result v4

    if-nez v4, :cond_7

    .line 1521
    iget-object v4, v0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    iget-object v7, v1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-virtual {v4, v7}, Lcom/android/server/content/SyncStorageEngine;->getBackoff(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Landroid/util/Pair;

    move-result-object v4

    .line 1522
    .local v4, "backoff":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    const-wide/16 v7, -0x1

    if-nez v4, :cond_3

    .line 1523
    const-string v9, "SyncManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Couldn\'t find backoff values for "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 1524
    invoke-static {v11}, Lcom/android/server/content/SyncLogger;->logSafe(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1523
    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1525
    new-instance v9, Landroid/util/Pair;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    .line 1526
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v4, v9

    .line 1528
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    .line 1529
    .local v9, "now":J
    iget-object v11, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    cmp-long v7, v11, v7

    if-nez v7, :cond_4

    .line 1530
    const-wide/16 v7, 0x0

    goto :goto_0

    :cond_4
    iget-object v7, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    sub-long/2addr v7, v9

    .line 1531
    .local v7, "backoffDelay":J
    :goto_0
    iget-object v11, v0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    iget-object v12, v1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-virtual {v11, v12}, Lcom/android/server/content/SyncStorageEngine;->getDelayUntilTime(Lcom/android/server/content/SyncStorageEngine$EndPoint;)J

    move-result-wide v11

    .line 1532
    .local v11, "delayUntil":J
    cmp-long v13, v11, v9

    if-lez v13, :cond_5

    sub-long v13, v11, v9

    goto :goto_1

    :cond_5
    const-wide/16 v13, 0x0

    .line 1533
    .local v13, "delayUntilDelay":J
    :goto_1
    if-eqz v2, :cond_6

    .line 1534
    const-string v15, "SyncManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "backoff delay:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " delayUntil delay:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v15, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1537
    :cond_6
    invoke-static {v7, v8, v13, v14}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    move-object/from16 v18, v4

    move-wide/from16 v3, p2

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    .line 1537
    .end local v4    # "backoff":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .end local v7    # "backoffDelay":J
    .end local v9    # "now":J
    .end local v11    # "delayUntil":J
    .end local v13    # "delayUntilDelay":J
    .end local p2    # "minDelay":J
    .local v3, "minDelay":J
    goto :goto_2

    .line 1540
    .end local v3    # "minDelay":J
    .restart local p2    # "minDelay":J
    :cond_7
    move-wide/from16 v3, p2

    .line 1540
    .end local p2    # "minDelay":J
    .restart local v3    # "minDelay":J
    :goto_2
    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-gez v7, :cond_8

    .line 1541
    const-wide/16 v3, 0x0

    .line 1547
    :cond_8
    iget-boolean v5, v1, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    if-nez v5, :cond_18

    .line 1548
    const/4 v5, 0x0

    .line 1551
    .local v5, "inheritedSyncExemptionFlag":I
    iget-object v7, v0, Lcom/android/server/content/SyncManager;->mActiveSyncContexts:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_b

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/content/SyncManager$ActiveSyncContext;

    .line 1552
    .local v8, "asc":Lcom/android/server/content/SyncManager$ActiveSyncContext;
    iget-object v9, v8, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    iget-object v9, v9, Lcom/android/server/content/SyncOperation;->key:Ljava/lang/String;

    iget-object v10, v1, Lcom/android/server/content/SyncOperation;->key:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 1553
    if-eqz v2, :cond_9

    .line 1554
    const-string v6, "SyncManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Duplicate sync is already running. Not scheduling "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1557
    :cond_9
    return-void

    .line 1559
    .end local v8    # "asc":Lcom/android/server/content/SyncManager$ActiveSyncContext;
    :cond_a
    goto :goto_3

    .line 1561
    :cond_b
    const/4 v7, 0x0

    .line 1562
    .local v7, "duplicatesCount":I
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 1563
    .local v8, "now":J
    add-long v10, v8, v3

    iput-wide v10, v1, Lcom/android/server/content/SyncOperation;->expectedRuntime:J

    .line 1564
    invoke-direct/range {p0 .. p0}, Lcom/android/server/content/SyncManager;->getAllPendingSyncs()Ljava/util/List;

    move-result-object v10

    .line 1565
    .local v10, "pending":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/content/SyncOperation;>;"
    move-object v11, v1

    .line 1566
    .local v11, "syncToRun":Lcom/android/server/content/SyncOperation;
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_4
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_f

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/content/SyncOperation;

    .line 1567
    .local v13, "op":Lcom/android/server/content/SyncOperation;
    iget-boolean v14, v13, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    if-eqz v14, :cond_c

    .line 1568
    goto :goto_4

    .line 1570
    :cond_c
    iget-object v14, v13, Lcom/android/server/content/SyncOperation;->key:Ljava/lang/String;

    iget-object v15, v1, Lcom/android/server/content/SyncOperation;->key:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_e

    .line 1571
    iget-wide v14, v11, Lcom/android/server/content/SyncOperation;->expectedRuntime:J

    move/from16 v19, v7

    iget-wide v6, v13, Lcom/android/server/content/SyncOperation;->expectedRuntime:J

    .line 1571
    .end local v7    # "duplicatesCount":I
    .local v19, "duplicatesCount":I
    cmp-long v6, v14, v6

    if-lez v6, :cond_d

    .line 1572
    move-object v11, v13

    .line 1574
    :cond_d
    add-int/lit8 v7, v19, 0x1

    .line 1574
    .end local v13    # "op":Lcom/android/server/content/SyncOperation;
    .end local v19    # "duplicatesCount":I
    .restart local v7    # "duplicatesCount":I
    goto :goto_5

    .line 1576
    :cond_e
    move/from16 v19, v7

    :goto_5
    goto :goto_4

    .line 1577
    :cond_f
    move/from16 v19, v7

    .line 1577
    .end local v7    # "duplicatesCount":I
    .restart local v19    # "duplicatesCount":I
    const/4 v6, 0x1

    if-le v7, v6, :cond_10

    .line 1578
    .end local v19    # "duplicatesCount":I
    .restart local v7    # "duplicatesCount":I
    const-string v6, "SyncManager"

    const-string v12, "FATAL ERROR! File a bug if you see this."

    invoke-static {v6, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1581
    :cond_10
    if-eq v1, v11, :cond_11

    .line 1589
    const-wide/16 v12, 0x0

    cmp-long v6, v3, v12

    if-nez v6, :cond_11

    iget v6, v11, Lcom/android/server/content/SyncOperation;->syncExemptionFlag:I

    iget v12, v1, Lcom/android/server/content/SyncOperation;->syncExemptionFlag:I

    if-ge v6, v12, :cond_11

    .line 1591
    move-object v11, v1

    .line 1592
    iget v6, v11, Lcom/android/server/content/SyncOperation;->syncExemptionFlag:I

    .line 1593
    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1598
    :cond_11
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_15

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/content/SyncOperation;

    .line 1599
    .local v12, "op":Lcom/android/server/content/SyncOperation;
    iget-boolean v13, v12, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    if-eqz v13, :cond_12

    .line 1600
    goto :goto_6

    .line 1602
    :cond_12
    iget-object v13, v12, Lcom/android/server/content/SyncOperation;->key:Ljava/lang/String;

    iget-object v14, v1, Lcom/android/server/content/SyncOperation;->key:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_14

    .line 1603
    if-eq v12, v11, :cond_14

    .line 1604
    if-eqz v2, :cond_13

    .line 1605
    const-string v13, "SyncManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Cancelling duplicate sync "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1607
    :cond_13
    iget v13, v12, Lcom/android/server/content/SyncOperation;->syncExemptionFlag:I

    .line 1608
    invoke-static {v5, v13}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1609
    const-string/jumbo v13, "scheduleSyncOperationH-duplicate"

    invoke-direct {v0, v12, v13}, Lcom/android/server/content/SyncManager;->cancelJob(Lcom/android/server/content/SyncOperation;Ljava/lang/String;)V

    .line 1612
    .end local v12    # "op":Lcom/android/server/content/SyncOperation;
    :cond_14
    goto :goto_6

    .line 1613
    :cond_15
    if-eq v11, v1, :cond_17

    .line 1615
    if-eqz v2, :cond_16

    .line 1616
    const-string v6, "SyncManager"

    const-string v12, "Not scheduling because a duplicate exists."

    invoke-static {v6, v12}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1621
    :cond_16
    return-void

    .line 1626
    :cond_17
    if-lez v5, :cond_18

    .line 1627
    iput v5, v1, Lcom/android/server/content/SyncOperation;->syncExemptionFlag:I

    .line 1632
    .end local v5    # "inheritedSyncExemptionFlag":I
    .end local v7    # "duplicatesCount":I
    .end local v8    # "now":J
    .end local v10    # "pending":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/content/SyncOperation;>;"
    .end local v11    # "syncToRun":Lcom/android/server/content/SyncOperation;
    :cond_18
    iget v5, v1, Lcom/android/server/content/SyncOperation;->jobId:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_19

    .line 1633
    invoke-direct/range {p0 .. p0}, Lcom/android/server/content/SyncManager;->getUnusedJobIdH()I

    move-result v5

    iput v5, v1, Lcom/android/server/content/SyncOperation;->jobId:I

    .line 1636
    :cond_19
    if-eqz v2, :cond_1a

    .line 1637
    const-string v5, "SyncManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "scheduling sync operation "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/content/SyncOperation;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1640
    :cond_1a
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/content/SyncOperation;->findPriority()I

    move-result v5

    .line 1642
    .local v5, "priority":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/content/SyncOperation;->isNotAllowedOnMetered()Z

    move-result v6

    if-eqz v6, :cond_1b

    .line 1643
    const/4 v6, 0x2

    goto :goto_7

    :cond_1b
    const/4 v6, 0x1

    .line 1647
    .local v6, "networkType":I
    :goto_7
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/content/SyncOperation;->isAppStandbyExempted()Z

    move-result v7

    if-eqz v7, :cond_1c

    .line 1648
    const/16 v7, 0x8

    goto :goto_8

    :cond_1c
    const/4 v7, 0x0

    .line 1650
    .local v7, "jobFlags":I
    :goto_8
    new-instance v8, Landroid/app/job/JobInfo$Builder;

    iget v9, v1, Lcom/android/server/content/SyncOperation;->jobId:I

    new-instance v10, Landroid/content/ComponentName;

    iget-object v11, v0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    const-class v12, Lcom/android/server/content/SyncJobService;

    invoke-direct {v10, v11, v12}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-direct {v8, v9, v10}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    .line 1652
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/content/SyncOperation;->toJobInfoExtras()Landroid/os/PersistableBundle;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/app/job/JobInfo$Builder;->setExtras(Landroid/os/PersistableBundle;)Landroid/app/job/JobInfo$Builder;

    move-result-object v8

    .line 1653
    invoke-virtual {v8, v6}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    move-result-object v8

    .line 1654
    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/app/job/JobInfo$Builder;->setPersisted(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v8

    .line 1655
    invoke-virtual {v8, v5}, Landroid/app/job/JobInfo$Builder;->setPriority(I)Landroid/app/job/JobInfo$Builder;

    move-result-object v8

    .line 1656
    invoke-virtual {v8, v7}, Landroid/app/job/JobInfo$Builder;->setFlags(I)Landroid/app/job/JobInfo$Builder;

    move-result-object v8

    .line 1658
    .local v8, "b":Landroid/app/job/JobInfo$Builder;
    iget-boolean v9, v1, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    if-eqz v9, :cond_1d

    .line 1659
    iget-wide v9, v1, Lcom/android/server/content/SyncOperation;->periodMillis:J

    iget-wide v11, v1, Lcom/android/server/content/SyncOperation;->flexMillis:J

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/app/job/JobInfo$Builder;->setPeriodic(JJ)Landroid/app/job/JobInfo$Builder;

    .line 1667
    const/4 v11, 0x1

    goto :goto_9

    .line 1661
    :cond_1d
    const-wide/16 v9, 0x0

    cmp-long v9, v3, v9

    if-lez v9, :cond_1e

    .line 1662
    invoke-virtual {v8, v3, v4}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    .line 1664
    :cond_1e
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/content/SyncManager;->getSyncStorageEngine()Lcom/android/server/content/SyncStorageEngine;

    move-result-object v9

    iget-object v10, v1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    const/4 v11, 0x1

    invoke-virtual {v9, v10, v11}, Lcom/android/server/content/SyncStorageEngine;->markPending(Lcom/android/server/content/SyncStorageEngine$EndPoint;Z)V

    .line 1667
    :goto_9
    iget-object v9, v1, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    const-string/jumbo v10, "require_charging"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1f

    .line 1668
    invoke-virtual {v8, v11}, Landroid/app/job/JobInfo$Builder;->setRequiresCharging(Z)Landroid/app/job/JobInfo$Builder;

    .line 1671
    :cond_1f
    iget v9, v1, Lcom/android/server/content/SyncOperation;->syncExemptionFlag:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_20

    .line 1673
    const-class v9, Lcom/android/server/DeviceIdleController$LocalService;

    .line 1674
    invoke-static {v9}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/DeviceIdleController$LocalService;

    .line 1675
    .local v9, "dic":Lcom/android/server/DeviceIdleController$LocalService;
    if-eqz v9, :cond_20

    .line 1676
    const/16 v11, 0x3e8

    iget-object v12, v1, Lcom/android/server/content/SyncOperation;->owningPackage:Ljava/lang/String;

    iget-object v10, v0, Lcom/android/server/content/SyncManager;->mConstants:Lcom/android/server/content/SyncManagerConstants;

    .line 1678
    invoke-virtual {v10}, Lcom/android/server/content/SyncManagerConstants;->getKeyExemptionTempWhitelistDurationInSeconds()I

    move-result v10

    mul-int/lit16 v10, v10, 0x3e8

    int-to-long v13, v10

    iget v10, v1, Lcom/android/server/content/SyncOperation;->owningUid:I

    .line 1679
    invoke-static {v10}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v15

    const/16 v16, 0x0

    const-string/jumbo v17, "sync by top app"

    .line 1676
    move-object v10, v9

    invoke-virtual/range {v10 .. v17}, Lcom/android/server/DeviceIdleController$LocalService;->addPowerSaveTempWhitelistApp(ILjava/lang/String;JIZLjava/lang/String;)V

    .line 1684
    .end local v9    # "dic":Lcom/android/server/DeviceIdleController$LocalService;
    :cond_20
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/content/SyncOperation;->isAppStandbyExempted()Z

    move-result v9

    if-eqz v9, :cond_21

    .line 1685
    const-class v9, Landroid/app/usage/UsageStatsManagerInternal;

    invoke-static {v9}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/usage/UsageStatsManagerInternal;

    .line 1687
    .local v9, "usmi":Landroid/app/usage/UsageStatsManagerInternal;
    if-eqz v9, :cond_21

    .line 1688
    iget-object v10, v1, Lcom/android/server/content/SyncOperation;->owningPackage:Ljava/lang/String;

    iget v11, v1, Lcom/android/server/content/SyncOperation;->owningUid:I

    .line 1689
    invoke-static {v11}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v11

    .line 1688
    invoke-virtual {v9, v10, v11}, Landroid/app/usage/UsageStatsManagerInternal;->reportExemptedSyncScheduled(Ljava/lang/String;I)V

    .line 1693
    .end local v9    # "usmi":Landroid/app/usage/UsageStatsManagerInternal;
    :cond_21
    invoke-direct/range {p0 .. p0}, Lcom/android/server/content/SyncManager;->getJobScheduler()Landroid/app/job/JobScheduler;

    move-result-object v9

    invoke-virtual {v8}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v10

    iget-object v11, v1, Lcom/android/server/content/SyncOperation;->owningPackage:Ljava/lang/String;

    iget-object v12, v1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget v12, v12, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    .line 1694
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/content/SyncOperation;->wakeLockName()Ljava/lang/String;

    move-result-object v13

    .line 1693
    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/app/job/JobScheduler;->scheduleAsPackage(Landroid/app/job/JobInfo;Ljava/lang/String;ILjava/lang/String;)I

    .line 1695
    return-void
.end method

.method private sendCancelSyncsMessage(Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 5
    .param p1, "info"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .param p2, "extras"    # Landroid/os/Bundle;
    .param p3, "why"    # Ljava/lang/String;

    .line 1296
    const-string v0, "SyncManager"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SyncManager"

    const-string/jumbo v2, "sending MESSAGE_CANCEL"

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1298
    :cond_0
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mLogger:Lcom/android/server/content/SyncLogger;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "sendCancelSyncsMessage() ep="

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const-string v3, " why="

    aput-object v3, v2, v1

    const/4 v1, 0x3

    aput-object p3, v2, v1

    invoke-virtual {v0, v2}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 1300
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    invoke-virtual {v0}, Lcom/android/server/content/SyncManager$SyncHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 1301
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x6

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1302
    invoke-virtual {v0, p2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1303
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1304
    iget-object v1, p0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/content/SyncManager$SyncHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1305
    return-void
.end method

.method static sendOnUnsyncableAccount(Landroid/content/Context;Landroid/content/pm/RegisteredServicesCache$ServiceInfo;ILcom/android/server/content/SyncManager$OnReadyCallback;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I
    .param p3, "onReadyCallback"    # Lcom/android/server/content/SyncManager$OnReadyCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<",
            "Landroid/content/SyncAdapterType;",
            ">;I",
            "Lcom/android/server/content/SyncManager$OnReadyCallback;",
            ")V"
        }
    .end annotation

    .line 2777
    .local p1, "syncAdapterInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    new-instance v0, Lcom/android/server/content/SyncManager$OnUnsyncableAccountCheck;

    invoke-direct {v0, p1, p3}, Lcom/android/server/content/SyncManager$OnUnsyncableAccountCheck;-><init>(Landroid/content/pm/RegisteredServicesCache$ServiceInfo;Lcom/android/server/content/SyncManager$OnReadyCallback;)V

    .line 2780
    .local v0, "connection":Lcom/android/server/content/SyncManager$OnUnsyncableAccountCheck;
    iget-object v1, p1, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->componentName:Landroid/content/ComponentName;

    .line 2781
    invoke-static {p0, v1, p2}, Lcom/android/server/content/SyncManager;->getAdapterBindIntent(Landroid/content/Context;Landroid/content/ComponentName;I)Landroid/content/Intent;

    move-result-object v1

    .line 2782
    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    .line 2780
    const/16 v3, 0x15

    invoke-virtual {p0, v1, v0, v3, v2}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v1

    .line 2784
    .local v1, "isBound":Z
    if-eqz v1, :cond_0

    .line 2786
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v3, Lcom/android/server/content/-$$Lambda$SyncManager$zZUXjd-GLFQgHtMQ3vq0EWHvir8;

    invoke-direct {v3, p0, v0}, Lcom/android/server/content/-$$Lambda$SyncManager$zZUXjd-GLFQgHtMQ3vq0EWHvir8;-><init>(Landroid/content/Context;Lcom/android/server/content/SyncManager$OnUnsyncableAccountCheck;)V

    const-wide/16 v4, 0x1388

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 2794
    :cond_0
    invoke-static {v0}, Lcom/android/server/content/SyncManager$OnUnsyncableAccountCheck;->access$2600(Lcom/android/server/content/SyncManager$OnUnsyncableAccountCheck;)V

    .line 2796
    :goto_0
    return-void
.end method

.method private sendSyncFinishedOrCanceledMessage(Lcom/android/server/content/SyncManager$ActiveSyncContext;Landroid/content/SyncResult;)V
    .locals 2
    .param p1, "syncContext"    # Lcom/android/server/content/SyncManager$ActiveSyncContext;
    .param p2, "syncResult"    # Landroid/content/SyncResult;

    .line 1287
    const-string v0, "SyncManager"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SyncManager"

    const-string/jumbo v1, "sending MESSAGE_SYNC_FINISHED"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1288
    :cond_0
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    invoke-virtual {v0}, Lcom/android/server/content/SyncManager$SyncHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 1289
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1290
    new-instance v1, Lcom/android/server/content/SyncManager$SyncFinishedOrCancelledMessagePayload;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/content/SyncManager$SyncFinishedOrCancelledMessagePayload;-><init>(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncManager$ActiveSyncContext;Landroid/content/SyncResult;)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1291
    iget-object v1, p0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/content/SyncManager$SyncHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1292
    return-void
.end method

.method private setAuthorityPendingState(Lcom/android/server/content/SyncStorageEngine$EndPoint;)V
    .locals 4
    .param p1, "info"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 870
    invoke-direct {p0}, Lcom/android/server/content/SyncManager;->getAllPendingSyncs()Ljava/util/List;

    move-result-object v0

    .line 871
    .local v0, "ops":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/content/SyncOperation;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/content/SyncOperation;

    .line 872
    .local v2, "op":Lcom/android/server/content/SyncOperation;
    iget-boolean v3, v2, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    if-nez v3, :cond_0

    iget-object v3, v2, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-virtual {v3, p1}, Lcom/android/server/content/SyncStorageEngine$EndPoint;->matchesSpec(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 873
    invoke-virtual {p0}, Lcom/android/server/content/SyncManager;->getSyncStorageEngine()Lcom/android/server/content/SyncStorageEngine;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, p1, v3}, Lcom/android/server/content/SyncStorageEngine;->markPending(Lcom/android/server/content/SyncStorageEngine$EndPoint;Z)V

    .line 874
    return-void

    .line 876
    .end local v2    # "op":Lcom/android/server/content/SyncOperation;
    :cond_0
    goto :goto_0

    .line 877
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/content/SyncManager;->getSyncStorageEngine()Lcom/android/server/content/SyncStorageEngine;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/android/server/content/SyncStorageEngine;->markPending(Lcom/android/server/content/SyncStorageEngine$EndPoint;Z)V

    .line 878
    return-void
.end method

.method private setDelayUntilTime(Lcom/android/server/content/SyncStorageEngine$EndPoint;J)V
    .locals 9
    .param p1, "target"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .param p2, "delayUntilSeconds"    # J

    .line 1459
    const-wide/16 v0, 0x3e8

    mul-long/2addr v0, p2

    .line 1460
    .local v0, "delayUntil":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1462
    .local v2, "absoluteNow":J
    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 1463
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long v6, v0, v2

    add-long/2addr v4, v6

    .local v4, "newDelayUntilTime":J
    goto :goto_0

    .line 1465
    .end local v4    # "newDelayUntilTime":J
    :cond_0
    const-wide/16 v4, 0x0

    .line 1467
    .restart local v4    # "newDelayUntilTime":J
    :goto_0
    iget-object v6, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    invoke-virtual {v6, p1, v4, v5}, Lcom/android/server/content/SyncStorageEngine;->setDelayUntilTime(Lcom/android/server/content/SyncStorageEngine$EndPoint;J)V

    .line 1468
    const-string v6, "SyncManager"

    const/4 v7, 0x2

    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1469
    const-string v6, "SyncManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Delay Until time set to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, " for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1471
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "delayUntil newDelayUntilTime: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, p1, v6}, Lcom/android/server/content/SyncManager;->rescheduleSyncs(Lcom/android/server/content/SyncStorageEngine$EndPoint;Ljava/lang/String;)V

    .line 1472
    return-void
.end method

.method public static syncExtrasEquals(Landroid/os/Bundle;Landroid/os/Bundle;Z)Z
    .locals 8
    .param p0, "b1"    # Landroid/os/Bundle;
    .param p1, "b2"    # Landroid/os/Bundle;
    .param p2, "includeSyncSettings"    # Z

    .line 3991
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 3992
    return v0

    .line 3995
    :cond_0
    const/4 v1, 0x0

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Landroid/os/Bundle;->size()I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Bundle;->size()I

    move-result v3

    if-eq v2, v3, :cond_1

    .line 3996
    return v1

    .line 3998
    :cond_1
    invoke-virtual {p0}, Landroid/os/Bundle;->size()I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Bundle;->size()I

    move-result v3

    if-le v2, v3, :cond_2

    move-object v2, p0

    goto :goto_0

    :cond_2
    move-object v2, p1

    .line 3999
    .local v2, "bigger":Landroid/os/Bundle;
    :goto_0
    invoke-virtual {p0}, Landroid/os/Bundle;->size()I

    move-result v3

    invoke-virtual {p1}, Landroid/os/Bundle;->size()I

    move-result v4

    if-le v3, v4, :cond_3

    move-object v3, p1

    goto :goto_1

    :cond_3
    move-object v3, p0

    .line 4000
    .local v3, "smaller":Landroid/os/Bundle;
    :goto_1
    invoke-virtual {v2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 4001
    .local v5, "key":Ljava/lang/String;
    if-nez p2, :cond_4

    invoke-static {v5}, Lcom/android/server/content/SyncManager;->isSyncSetting(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 4002
    goto :goto_2

    .line 4004
    :cond_4
    invoke-virtual {v3, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 4005
    return v1

    .line 4007
    :cond_5
    invoke-virtual {v2, v5}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v6, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 4008
    return v1

    .line 4010
    .end local v5    # "key":Ljava/lang/String;
    :cond_6
    goto :goto_2

    .line 4011
    :cond_7
    return v0
.end method

.method private updateRunningAccounts(Lcom/android/server/content/SyncStorageEngine$EndPoint;)V
    .locals 2
    .param p1, "target"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 369
    const-string v0, "SyncManager"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SyncManager"

    const-string/jumbo v1, "sending MESSAGE_ACCOUNTS_UPDATED"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    :cond_0
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/android/server/content/SyncManager$SyncHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 372
    .local v0, "m":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 373
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 374
    return-void
.end method

.method private declared-synchronized verifyJobScheduler()V
    .locals 11

    monitor-enter p0

    .line 512
    :try_start_0
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mJobScheduler:Landroid/app/job/JobScheduler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    .line 513
    monitor-exit p0

    return-void

    .line 515
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 517
    .local v0, "token":J
    :try_start_2
    const-string v2, "SyncManager"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 518
    const-string v2, "SyncManager"

    const-string/jumbo v3, "initializing JobScheduler object."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    :cond_1
    iget-object v2, p0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "jobscheduler"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/job/JobScheduler;

    iput-object v2, p0, Lcom/android/server/content/SyncManager;->mJobScheduler:Landroid/app/job/JobScheduler;

    .line 522
    const-class v2, Lcom/android/server/job/JobSchedulerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/job/JobSchedulerInternal;

    iput-object v2, p0, Lcom/android/server/content/SyncManager;->mJobSchedulerInternal:Lcom/android/server/job/JobSchedulerInternal;

    .line 524
    iget-object v2, p0, Lcom/android/server/content/SyncManager;->mJobScheduler:Landroid/app/job/JobScheduler;

    invoke-virtual {v2}, Landroid/app/job/JobScheduler;->getAllPendingJobs()Ljava/util/List;

    move-result-object v2

    .line 526
    .local v2, "pendingJobs":Ljava/util/List;, "Ljava/util/List<Landroid/app/job/JobInfo;>;"
    const/4 v3, 0x0

    .line 527
    .local v3, "numPersistedPeriodicSyncs":I
    const/4 v4, 0x0

    .line 528
    .local v4, "numPersistedOneshotSyncs":I
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/job/JobInfo;

    .line 529
    .local v6, "job":Landroid/app/job/JobInfo;
    invoke-virtual {v6}, Landroid/app/job/JobInfo;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/content/SyncOperation;->maybeCreateFromJobExtras(Landroid/os/PersistableBundle;)Lcom/android/server/content/SyncOperation;

    move-result-object v8

    .line 530
    .local v8, "op":Lcom/android/server/content/SyncOperation;
    if-eqz v8, :cond_3

    .line 531
    iget-boolean v9, v8, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    if-eqz v9, :cond_2

    .line 532
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 534
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 537
    iget-object v9, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    iget-object v10, v8, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-virtual {v9, v10, v7}, Lcom/android/server/content/SyncStorageEngine;->markPending(Lcom/android/server/content/SyncStorageEngine$EndPoint;Z)V

    .line 540
    .end local v6    # "job":Landroid/app/job/JobInfo;
    .end local v8    # "op":Lcom/android/server/content/SyncOperation;
    :cond_3
    :goto_1
    goto :goto_0

    .line 541
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Loaded persisted syncs: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " periodic syncs, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " oneshot syncs, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 544
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " total system server jobs, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 545
    invoke-direct {p0}, Lcom/android/server/content/SyncManager;->getJobStats()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 546
    .local v5, "summary":Ljava/lang/String;
    const-string v6, "SyncManager"

    invoke-static {v6, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    iget-object v6, p0, Lcom/android/server/content/SyncManager;->mLogger:Lcom/android/server/content/SyncLogger;

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v5, v7, v8

    invoke-virtual {v6, v7}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 549
    invoke-direct {p0}, Lcom/android/server/content/SyncManager;->cleanupJobs()V

    .line 551
    sget-boolean v6, Lcom/android/server/content/SyncManager;->ENABLE_SUSPICIOUS_CHECK:Z

    if-eqz v6, :cond_5

    if-nez v3, :cond_5

    .line 552
    invoke-direct {p0}, Lcom/android/server/content/SyncManager;->likelyHasPeriodicSyncs()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 553
    const-string v6, "SyncManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Device booted with no persisted periodic syncs: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 556
    .end local v2    # "pendingJobs":Ljava/util/List;, "Ljava/util/List<Landroid/app/job/JobInfo;>;"
    .end local v3    # "numPersistedPeriodicSyncs":I
    .end local v4    # "numPersistedOneshotSyncs":I
    .end local v5    # "summary":Ljava/lang/String;
    :cond_5
    :try_start_3
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 557
    nop

    .line 558
    monitor-exit p0

    return-void

    .line 556
    :catchall_0
    move-exception v2

    :try_start_4
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 511
    .end local v0    # "token":J
    :catchall_1
    move-exception v0

    monitor-exit p0

    .line 511
    .end local p0    # "this":Lcom/android/server/content/SyncManager;
    throw v0
.end method

.method private whiteListExistingSyncAdaptersIfNeeded()V
    .locals 17

    .line 795
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    invoke-virtual {v1}, Lcom/android/server/content/SyncStorageEngine;->shouldGrantSyncAdaptersAccountAccess()Z

    move-result v1

    if-nez v1, :cond_0

    .line 796
    return-void

    .line 798
    :cond_0
    iget-object v1, v0, Lcom/android/server/content/SyncManager;->mUserManager:Landroid/os/UserManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v1

    .line 799
    .local v1, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    .line 800
    .local v3, "userCount":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v3, :cond_4

    .line 801
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/UserInfo;

    invoke-virtual {v6}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v6

    .line 802
    .local v6, "userHandle":Landroid/os/UserHandle;
    invoke-virtual {v6}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v7

    .line 804
    .local v7, "userId":I
    iget-object v8, v0, Lcom/android/server/content/SyncManager;->mSyncAdapters:Landroid/content/SyncAdaptersCache;

    invoke-virtual {v8, v7}, Landroid/content/SyncAdaptersCache;->getAllServices(I)Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    .line 805
    .local v9, "service":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    iget-object v10, v9, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v10}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    .line 806
    .local v10, "packageName":Ljava/lang/String;
    iget-object v11, v0, Lcom/android/server/content/SyncManager;->mAccountManager:Landroid/accounts/AccountManager;

    iget-object v12, v9, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    check-cast v12, Landroid/content/SyncAdapterType;

    iget-object v12, v12, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    invoke-virtual {v11, v12, v6}, Landroid/accounts/AccountManager;->getAccountsByTypeAsUser(Ljava/lang/String;Landroid/os/UserHandle;)[Landroid/accounts/Account;

    move-result-object v11

    array-length v12, v11

    const/4 v13, 0x0

    :goto_2
    if-ge v13, v12, :cond_2

    aget-object v14, v11, v13

    .line 808
    .local v14, "account":Landroid/accounts/Account;
    invoke-direct {v0, v14, v10, v7}, Lcom/android/server/content/SyncManager;->canAccessAccount(Landroid/accounts/Account;Ljava/lang/String;I)Z

    move-result v15

    if-nez v15, :cond_1

    .line 809
    iget-object v15, v0, Lcom/android/server/content/SyncManager;->mAccountManager:Landroid/accounts/AccountManager;

    const-string v4, "com.android.AccountManager.ACCOUNT_ACCESS_TOKEN_TYPE"

    iget v0, v9, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->uid:I

    invoke-virtual {v15, v14, v4, v0, v2}, Landroid/accounts/AccountManager;->updateAppPermission(Landroid/accounts/Account;Ljava/lang/String;IZ)V

    .line 806
    .end local v14    # "account":Landroid/accounts/Account;
    :cond_1
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    goto :goto_2

    .line 813
    .end local v9    # "service":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    .end local v10    # "packageName":Ljava/lang/String;
    :cond_2
    nop

    .line 804
    move-object/from16 v0, p0

    goto :goto_1

    .line 800
    .end local v6    # "userHandle":Landroid/os/UserHandle;
    .end local v7    # "userId":I
    :cond_3
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p0

    goto :goto_0

    .line 815
    .end local v5    # "i":I
    :cond_4
    return-void
.end method

.method private zeroToEmpty(I)Ljava/lang/String;
    .locals 1
    .param p1, "value"    # I

    .line 2416
    if-eqz p1, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method


# virtual methods
.method public cancelActiveSync(Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0
    .param p1, "info"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .param p2, "extras"    # Landroid/os/Bundle;
    .param p3, "why"    # Ljava/lang/String;

    .line 1494
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/content/SyncManager;->sendCancelSyncsMessage(Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1495
    return-void
.end method

.method public cancelScheduledSyncOperation(Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/os/Bundle;)V
    .locals 8
    .param p1, "info"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 1720
    invoke-direct {p0}, Lcom/android/server/content/SyncManager;->getAllPendingSyncs()Ljava/util/List;

    move-result-object v0

    .line 1721
    .local v0, "ops":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/content/SyncOperation;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/content/SyncOperation;

    .line 1722
    .local v2, "op":Lcom/android/server/content/SyncOperation;
    iget-boolean v3, v2, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    if-nez v3, :cond_0

    iget-object v3, v2, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-virtual {v3, p1}, Lcom/android/server/content/SyncStorageEngine$EndPoint;->matchesSpec(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v2, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    const/4 v4, 0x0

    .line 1723
    invoke-static {p2, v3, v4}, Lcom/android/server/content/SyncManager;->syncExtrasEquals(Landroid/os/Bundle;Landroid/os/Bundle;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1724
    const-string v3, "cancelScheduledSyncOperation"

    invoke-direct {p0, v2, v3}, Lcom/android/server/content/SyncManager;->cancelJob(Lcom/android/server/content/SyncOperation;Ljava/lang/String;)V

    .line 1726
    .end local v2    # "op":Lcom/android/server/content/SyncOperation;
    :cond_0
    goto :goto_0

    .line 1727
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/content/SyncManager;->setAuthorityPendingState(Lcom/android/server/content/SyncStorageEngine$EndPoint;)V

    .line 1729
    iget-object v1, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    invoke-virtual {v1, p1}, Lcom/android/server/content/SyncStorageEngine;->isSyncPending(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1730
    iget-object v2, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    const-wide/16 v4, -0x1

    const-wide/16 v6, -0x1

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/content/SyncStorageEngine;->setBackoff(Lcom/android/server/content/SyncStorageEngine$EndPoint;JJ)V

    .line 1733
    :cond_2
    return-void
.end method

.method public clearScheduledSyncOperations(Lcom/android/server/content/SyncStorageEngine$EndPoint;)V
    .locals 12
    .param p1, "info"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 1703
    invoke-direct {p0}, Lcom/android/server/content/SyncManager;->getAllPendingSyncs()Ljava/util/List;

    move-result-object v0

    .line 1704
    .local v0, "ops":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/content/SyncOperation;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/content/SyncOperation;

    .line 1705
    .local v2, "op":Lcom/android/server/content/SyncOperation;
    iget-boolean v3, v2, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    if-nez v3, :cond_0

    iget-object v3, v2, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-virtual {v3, p1}, Lcom/android/server/content/SyncStorageEngine$EndPoint;->matchesSpec(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1706
    const-string v3, "clearScheduledSyncOperations"

    invoke-direct {p0, v2, v3}, Lcom/android/server/content/SyncManager;->cancelJob(Lcom/android/server/content/SyncOperation;Ljava/lang/String;)V

    .line 1707
    invoke-virtual {p0}, Lcom/android/server/content/SyncManager;->getSyncStorageEngine()Lcom/android/server/content/SyncStorageEngine;

    move-result-object v3

    iget-object v4, v2, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/android/server/content/SyncStorageEngine;->markPending(Lcom/android/server/content/SyncStorageEngine$EndPoint;Z)V

    .line 1709
    .end local v2    # "op":Lcom/android/server/content/SyncOperation;
    :cond_0
    goto :goto_0

    .line 1710
    :cond_1
    iget-object v6, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    const-wide/16 v8, -0x1

    const-wide/16 v10, -0x1

    move-object v7, p1

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/content/SyncStorageEngine;->setBackoff(Lcom/android/server/content/SyncStorageEngine$EndPoint;JJ)V

    .line 1712
    return-void
.end method

.method public computeSyncable(Landroid/accounts/Account;ILjava/lang/String;Z)I
    .locals 9
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "userId"    # I
    .param p3, "authority"    # Ljava/lang/String;
    .param p4, "checkAccountAccess"    # Z

    .line 1157
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/content/SyncManager;->getIsSyncable(Landroid/accounts/Account;ILjava/lang/String;)I

    move-result v0

    .line 1158
    .local v0, "status":I
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1159
    return v1

    .line 1161
    :cond_0
    iget-object v2, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-static {p3, v2}, Landroid/content/SyncAdapterType;->newKey(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SyncAdapterType;

    move-result-object v2

    .line 1162
    .local v2, "type":Landroid/content/SyncAdapterType;
    iget-object v3, p0, Lcom/android/server/content/SyncManager;->mSyncAdapters:Landroid/content/SyncAdaptersCache;

    .line 1163
    invoke-virtual {v3, v2, p2}, Landroid/content/SyncAdaptersCache;->getServiceInfo(Ljava/lang/Object;I)Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    move-result-object v3

    .line 1164
    .local v3, "syncAdapterInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    if-nez v3, :cond_1

    .line 1165
    return v1

    .line 1167
    :cond_1
    iget v4, v3, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->uid:I

    .line 1168
    .local v4, "owningUid":I
    iget-object v5, v3, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 1170
    .local v5, "owningPackage":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v6

    invoke-interface {v6, v4, v5}, Landroid/app/IActivityManager;->isAppStartModeDisabled(ILjava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1171
    const-string v6, "SyncManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Not scheduling job "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v3, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->uid:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v3, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " -- package not allowed to start"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1174
    return v1

    .line 1178
    :cond_2
    goto :goto_0

    .line 1176
    :catch_0
    move-exception v1

    .line 1179
    :goto_0
    if-eqz p4, :cond_3

    invoke-direct {p0, p1, v5, v4}, Lcom/android/server/content/SyncManager;->canAccessAccount(Landroid/accounts/Account;Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1180
    const-string v1, "SyncManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Access to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/server/content/SyncLogger;->logSafe(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " denied for package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " in UID "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v3, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->uid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1182
    const/4 v1, 0x3

    return v1

    .line 1185
    :cond_3
    return v0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Z)V
    .locals 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "dumpAll"    # Z

    .line 2018
    new-instance v0, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p2, v1}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 2020
    .local v0, "ipw":Lcom/android/internal/util/IndentingPrintWriter;
    new-instance v1, Lcom/android/server/content/SyncAdapterStateFetcher;

    invoke-direct {v1}, Lcom/android/server/content/SyncAdapterStateFetcher;-><init>()V

    .line 2022
    .local v1, "buckets":Lcom/android/server/content/SyncAdapterStateFetcher;
    invoke-virtual {p0, v0, v1}, Lcom/android/server/content/SyncManager;->dumpSyncState(Ljava/io/PrintWriter;Lcom/android/server/content/SyncAdapterStateFetcher;)V

    .line 2023
    iget-object v2, p0, Lcom/android/server/content/SyncManager;->mConstants:Lcom/android/server/content/SyncManagerConstants;

    const-string v3, ""

    invoke-virtual {v2, p2, v3}, Lcom/android/server/content/SyncManagerConstants;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 2024
    invoke-direct {p0, v0}, Lcom/android/server/content/SyncManager;->dumpSyncAdapters(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 2026
    if-eqz p3, :cond_0

    .line 2027
    const-string v2, "Detailed Sync History"

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2028
    iget-object v2, p0, Lcom/android/server/content/SyncManager;->mLogger:Lcom/android/server/content/SyncLogger;

    invoke-virtual {v2, p2}, Lcom/android/server/content/SyncLogger;->dumpAll(Ljava/io/PrintWriter;)V

    .line 2030
    :cond_0
    return-void
.end method

.method protected dumpPendingSyncs(Ljava/io/PrintWriter;Lcom/android/server/content/SyncAdapterStateFetcher;)V
    .locals 6
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "buckets"    # Lcom/android/server/content/SyncAdapterStateFetcher;

    .line 2087
    invoke-direct {p0}, Lcom/android/server/content/SyncManager;->getAllPendingSyncs()Ljava/util/List;

    move-result-object v0

    .line 2089
    .local v0, "pendingSyncs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/content/SyncOperation;>;"
    const-string v1, "Pending Syncs: "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2090
    sget-object v1, Lcom/android/server/content/-$$Lambda$SyncManager$rDUHWai3SU0BXk1TE0bLDap9gVc;->INSTANCE:Lcom/android/server/content/-$$Lambda$SyncManager$rDUHWai3SU0BXk1TE0bLDap9gVc;

    invoke-static {v0, v1}, Lcom/android/server/content/SyncManager;->countIf(Ljava/util/Collection;Ljava/util/function/Predicate;)I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 2092
    sget-object v1, Lcom/android/server/content/SyncManager;->sOpRuntimeComparator:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 2093
    const/4 v1, 0x0

    .line 2094
    .local v1, "count":I
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/content/SyncOperation;

    .line 2095
    .local v3, "op":Lcom/android/server/content/SyncOperation;
    iget-boolean v4, v3, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    if-nez v4, :cond_0

    .line 2096
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, p2, v5}, Lcom/android/server/content/SyncOperation;->dump(Landroid/content/pm/PackageManager;ZLcom/android/server/content/SyncAdapterStateFetcher;Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2097
    add-int/lit8 v1, v1, 0x1

    .line 2099
    .end local v3    # "op":Lcom/android/server/content/SyncOperation;
    :cond_0
    goto :goto_0

    .line 2100
    :cond_1
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2101
    return-void
.end method

.method protected dumpPeriodicSyncs(Ljava/io/PrintWriter;Lcom/android/server/content/SyncAdapterStateFetcher;)V
    .locals 6
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "buckets"    # Lcom/android/server/content/SyncAdapterStateFetcher;

    .line 2104
    invoke-direct {p0}, Lcom/android/server/content/SyncManager;->getAllPendingSyncs()Ljava/util/List;

    move-result-object v0

    .line 2106
    .local v0, "pendingSyncs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/content/SyncOperation;>;"
    const-string v1, "Periodic Syncs: "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2107
    sget-object v1, Lcom/android/server/content/-$$Lambda$SyncManager$ag0YGuZ1oL06fytmNlyErbNyYcw;->INSTANCE:Lcom/android/server/content/-$$Lambda$SyncManager$ag0YGuZ1oL06fytmNlyErbNyYcw;

    invoke-static {v0, v1}, Lcom/android/server/content/SyncManager;->countIf(Ljava/util/Collection;Ljava/util/function/Predicate;)I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 2109
    sget-object v1, Lcom/android/server/content/SyncManager;->sOpDumpComparator:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 2110
    const/4 v1, 0x0

    .line 2111
    .local v1, "count":I
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/content/SyncOperation;

    .line 2112
    .local v3, "op":Lcom/android/server/content/SyncOperation;
    iget-boolean v4, v3, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    if-eqz v4, :cond_0

    .line 2113
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, p2, v5}, Lcom/android/server/content/SyncOperation;->dump(Landroid/content/pm/PackageManager;ZLcom/android/server/content/SyncAdapterStateFetcher;Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2114
    add-int/lit8 v1, v1, 0x1

    .line 2116
    .end local v3    # "op":Lcom/android/server/content/SyncOperation;
    :cond_0
    goto :goto_0

    .line 2117
    :cond_1
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2118
    return-void
.end method

.method protected dumpSyncHistory(Ljava/io/PrintWriter;)V
    .locals 0
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 2439
    invoke-direct {p0, p1}, Lcom/android/server/content/SyncManager;->dumpRecentHistory(Ljava/io/PrintWriter;)V

    .line 2440
    invoke-direct {p0, p1}, Lcom/android/server/content/SyncManager;->dumpDayStatistics(Ljava/io/PrintWriter;)V

    .line 2441
    return-void
.end method

.method protected dumpSyncState(Ljava/io/PrintWriter;Lcom/android/server/content/SyncAdapterStateFetcher;)V
    .locals 40
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "buckets"    # Lcom/android/server/content/SyncAdapterStateFetcher;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 2171
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 2173
    .local v2, "sb":Ljava/lang/StringBuilder;
    const-string v3, "Data connected: "

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, v0, Lcom/android/server/content/SyncManager;->mDataConnectionIsConnected:Z

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Z)V

    .line 2174
    const-string v3, "Battery saver: "

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2175
    iget-object v3, v0, Lcom/android/server/content/SyncManager;->mPowerManager:Landroid/os/PowerManager;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    iget-object v3, v0, Lcom/android/server/content/SyncManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v3}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Z)V

    .line 2177
    const-string v3, "Background network restriction: "

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2179
    invoke-direct/range {p0 .. p0}, Lcom/android/server/content/SyncManager;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v3

    .line 2180
    .local v3, "cm":Landroid/net/ConnectivityManager;
    if-nez v3, :cond_1

    const/4 v6, -0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getRestrictBackgroundStatus()I

    move-result v6

    .line 2181
    .local v6, "status":I
    :goto_1
    packed-switch v6, :pswitch_data_0

    .line 2192
    const-string v7, "Unknown("

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2193
    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(I)V

    .line 2194
    const-string v7, ")"

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2194
    .end local v3    # "cm":Landroid/net/ConnectivityManager;
    .end local v6    # "status":I
    goto :goto_2

    .line 2189
    .restart local v3    # "cm":Landroid/net/ConnectivityManager;
    .restart local v6    # "status":I
    :pswitch_0
    const-string v7, " enabled"

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2190
    goto :goto_2

    .line 2186
    :pswitch_1
    const-string v7, " whitelisted"

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2187
    goto :goto_2

    .line 2183
    :pswitch_2
    const-string v7, " disabled"

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2184
    nop

    .line 2199
    .end local v3    # "cm":Landroid/net/ConnectivityManager;
    .end local v6    # "status":I
    :goto_2
    const-string v3, "Auto sync: "

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2200
    invoke-direct/range {p0 .. p0}, Lcom/android/server/content/SyncManager;->getAllUsers()Ljava/util/List;

    move-result-object v3

    .line 2201
    .local v3, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    if-eqz v3, :cond_3

    .line 2202
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/UserInfo;

    .line 2203
    .local v7, "user":Landroid/content/pm/UserInfo;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "u"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v7, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    iget v10, v7, Landroid/content/pm/UserInfo;->id:I

    .line 2204
    invoke-virtual {v9, v10}, Lcom/android/server/content/SyncStorageEngine;->getMasterSyncAutomatically(I)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 2203
    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2205
    .end local v7    # "user":Landroid/content/pm/UserInfo;
    goto :goto_3

    .line 2206
    :cond_2
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2208
    :cond_3
    const-string v6, "Memory low: "

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v6, v0, Lcom/android/server/content/SyncManager;->mStorageIsLow:Z

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Z)V

    .line 2209
    const-string v6, "Device idle: "

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v6, v0, Lcom/android/server/content/SyncManager;->mDeviceIsIdle:Z

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Z)V

    .line 2210
    const-string v6, "Reported active: "

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v6, v0, Lcom/android/server/content/SyncManager;->mReportedSyncActive:Z

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Z)V

    .line 2211
    const-string v6, "Clock valid: "

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, v0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    invoke-virtual {v6}, Lcom/android/server/content/SyncStorageEngine;->isClockValid()Z

    move-result v6

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Z)V

    .line 2213
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->getSingleton()Lcom/android/server/accounts/AccountManagerService;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/accounts/AccountManagerService;->getAllAccounts()[Landroid/accounts/AccountAndUser;

    move-result-object v6

    .line 2215
    .local v6, "accounts":[Landroid/accounts/AccountAndUser;
    const-string v7, "Accounts: "

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2216
    sget-object v7, Lcom/android/server/content/SyncManager;->INITIAL_ACCOUNTS_ARRAY:[Landroid/accounts/AccountAndUser;

    if-eq v6, v7, :cond_4

    .line 2217
    array-length v7, v6

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(I)V

    goto :goto_4

    .line 2219
    :cond_4
    const-string/jumbo v7, "not known yet"

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2221
    :goto_4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    .line 2222
    .local v7, "now":J
    const-string v9, "Now: "

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v7, v8}, Ljava/io/PrintWriter;->print(J)V

    .line 2223
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-static {v10, v11}, Lcom/android/server/content/SyncManager;->formatTime(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2225
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2226
    const-string v9, "Uptime: "

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v2, v7, v8}, Lcom/android/server/content/SyncManager;->formatDurationHMS(Ljava/lang/StringBuilder;J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 2227
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2228
    const-string v9, "Time spent syncing: "

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2230
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2231
    iget-object v9, v0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    iget-object v9, v9, Lcom/android/server/content/SyncManager$SyncHandler;->mSyncTimeTracker:Lcom/android/server/content/SyncManager$SyncTimeTracker;

    .line 2232
    invoke-virtual {v9}, Lcom/android/server/content/SyncManager$SyncTimeTracker;->timeSpentSyncing()J

    move-result-wide v9

    .line 2231
    invoke-static {v2, v9, v10}, Lcom/android/server/content/SyncManager;->formatDurationHMS(Ljava/lang/StringBuilder;J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 2233
    const-string v9, ", sync "

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2234
    iget-object v9, v0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    iget-object v9, v9, Lcom/android/server/content/SyncManager$SyncHandler;->mSyncTimeTracker:Lcom/android/server/content/SyncManager$SyncTimeTracker;

    iget-boolean v9, v9, Lcom/android/server/content/SyncManager$SyncTimeTracker;->mLastWasSyncing:Z

    if-eqz v9, :cond_5

    const-string v9, ""

    goto :goto_5

    :cond_5
    const-string/jumbo v9, "not "

    :goto_5
    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2235
    const-string/jumbo v9, "in progress"

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2237
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2238
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Active Syncs: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v0, Lcom/android/server/content/SyncManager;->mActiveSyncContexts:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2239
    iget-object v9, v0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    .line 2240
    .local v9, "pm":Landroid/content/pm/PackageManager;
    iget-object v10, v0, Lcom/android/server/content/SyncManager;->mActiveSyncContexts:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_6
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/content/SyncManager$ActiveSyncContext;

    .line 2241
    .local v11, "activeSyncContext":Lcom/android/server/content/SyncManager$ActiveSyncContext;
    iget-wide v12, v11, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mStartTime:J

    sub-long v12, v7, v12

    .line 2242
    .local v12, "durationInSeconds":J
    const-string v14, "  "

    invoke-virtual {v1, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2243
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2244
    invoke-static {v2, v12, v13}, Lcom/android/server/content/SyncManager;->formatDurationHMS(Ljava/lang/StringBuilder;J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v1, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 2245
    const-string v14, " - "

    invoke-virtual {v1, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2246
    iget-object v14, v11, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    move-object/from16 v15, p2

    invoke-virtual {v14, v9, v4, v15, v4}, Lcom/android/server/content/SyncOperation;->dump(Landroid/content/pm/PackageManager;ZLcom/android/server/content/SyncAdapterStateFetcher;Z)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2247
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2248
    .end local v11    # "activeSyncContext":Lcom/android/server/content/SyncManager$ActiveSyncContext;
    .end local v12    # "durationInSeconds":J
    goto :goto_6

    .line 2249
    :cond_6
    move-object/from16 v15, p2

    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2251
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/content/SyncManager;->dumpPendingSyncs(Ljava/io/PrintWriter;Lcom/android/server/content/SyncAdapterStateFetcher;)V

    .line 2252
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/content/SyncManager;->dumpPeriodicSyncs(Ljava/io/PrintWriter;Lcom/android/server/content/SyncAdapterStateFetcher;)V

    .line 2255
    const-string v10, "Sync Status"

    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2257
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 2259
    .local v10, "statuses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/content/SyncStatusInfo;>;>;"
    iget-object v11, v0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    invoke-virtual {v11, v4}, Lcom/android/server/content/SyncStorageEngine;->resetTodayStats(Z)V

    .line 2261
    array-length v11, v6

    move v12, v4

    :goto_7
    if-ge v12, v11, :cond_e

    aget-object v13, v6, v12

    .line 2262
    .local v13, "account":Landroid/accounts/AccountAndUser;
    const-string v14, "Account %s u%d %s\n"

    const/4 v5, 0x3

    new-array v4, v5, [Ljava/lang/Object;

    iget-object v5, v13, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    iget-object v5, v5, Landroid/accounts/Account;->name:Ljava/lang/String;

    const/16 v17, 0x0

    aput-object v5, v4, v17

    iget v5, v13, Landroid/accounts/AccountAndUser;->userId:I

    .line 2263
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v16, 0x1

    aput-object v5, v4, v16

    iget-object v5, v13, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    iget-object v5, v5, Landroid/accounts/Account;->type:Ljava/lang/String;

    const/16 v19, 0x2

    aput-object v5, v4, v19

    .line 2262
    invoke-virtual {v1, v14, v4}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 2265
    const-string v4, "======================================================================="

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2266
    new-instance v4, Lcom/android/server/content/SyncManager$PrintTable;

    const/16 v5, 0x10

    invoke-direct {v4, v5}, Lcom/android/server/content/SyncManager$PrintTable;-><init>(I)V

    .line 2267
    .local v4, "table":Lcom/android/server/content/SyncManager$PrintTable;
    new-array v5, v5, [Ljava/lang/Object;

    const-string v14, "Authority"

    const/16 v17, 0x0

    aput-object v14, v5, v17

    const-string v14, "Syncable"

    const/16 v16, 0x1

    aput-object v14, v5, v16

    const-string v14, "Enabled"

    aput-object v14, v5, v19

    const-string v14, "Stats"

    const/16 v18, 0x3

    aput-object v14, v5, v18

    const/4 v14, 0x4

    const-string v20, "Loc"

    aput-object v20, v5, v14

    const/4 v14, 0x5

    const-string v20, "Poll"

    aput-object v20, v5, v14

    const/4 v14, 0x6

    const-string v20, "Per"

    aput-object v20, v5, v14

    const/4 v14, 0x7

    const-string v20, "Feed"

    aput-object v20, v5, v14

    const/16 v14, 0x8

    const-string v20, "User"

    aput-object v20, v5, v14

    const/16 v14, 0x9

    const-string v20, "Othr"

    aput-object v20, v5, v14

    const/16 v14, 0xa

    const-string v20, "Tot"

    aput-object v20, v5, v14

    const/16 v14, 0xb

    const-string v20, "Fail"

    aput-object v20, v5, v14

    const/16 v14, 0xc

    const-string v20, "Can"

    aput-object v20, v5, v14

    const/16 v14, 0xd

    const-string v20, "Time"

    aput-object v20, v5, v14

    const-string v14, "Last Sync"

    move-object/from16 v21, v3

    const/16 v3, 0xe

    .end local v3    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .local v21, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    aput-object v14, v5, v3

    const-string v14, "Backoff"

    const/16 v3, 0xf

    aput-object v14, v5, v3

    const/4 v14, 0x0

    invoke-virtual {v4, v14, v14, v5}, Lcom/android/server/content/SyncManager$PrintTable;->set(II[Ljava/lang/Object;)V

    .line 2291
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v5

    .line 2292
    .local v5, "sorted":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;>;"
    iget-object v14, v0, Lcom/android/server/content/SyncManager;->mSyncAdapters:Landroid/content/SyncAdaptersCache;

    iget v3, v13, Landroid/accounts/AccountAndUser;->userId:I

    invoke-virtual {v14, v3}, Landroid/content/SyncAdaptersCache;->getAllServices(I)Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v5, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2293
    new-instance v3, Lcom/android/server/content/SyncManager$15;

    invoke-direct {v3, v0}, Lcom/android/server/content/SyncManager$15;-><init>(Lcom/android/server/content/SyncManager;)V

    invoke-static {v5, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 2301
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    .line 2302
    .local v14, "syncAdapterType":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    move-object/from16 v22, v3

    iget-object v3, v14, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    check-cast v3, Landroid/content/SyncAdapterType;

    iget-object v3, v3, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    move-object/from16 v23, v5

    iget-object v5, v13, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    .line 2302
    .end local v5    # "sorted":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;>;"
    .local v23, "sorted":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;>;"
    iget-object v5, v5, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 2303
    nop

    .line 2301
    move-object/from16 v3, v22

    move-object/from16 v5, v23

    goto :goto_8

    .line 2305
    :cond_7
    invoke-virtual {v4}, Lcom/android/server/content/SyncManager$PrintTable;->getNumRows()I

    move-result v3

    .line 2306
    .local v3, "row":I
    iget-object v5, v0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    move-object/from16 v24, v6

    new-instance v6, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 2306
    .end local v6    # "accounts":[Landroid/accounts/AccountAndUser;
    .local v24, "accounts":[Landroid/accounts/AccountAndUser;
    move-object/from16 v25, v9

    iget-object v9, v13, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    .line 2306
    .end local v9    # "pm":Landroid/content/pm/PackageManager;
    .local v25, "pm":Landroid/content/pm/PackageManager;
    move/from16 v26, v11

    iget-object v11, v14, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    check-cast v11, Landroid/content/SyncAdapterType;

    iget-object v11, v11, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    move-object/from16 v27, v14

    iget v14, v13, Landroid/accounts/AccountAndUser;->userId:I

    .line 2306
    .end local v14    # "syncAdapterType":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    .local v27, "syncAdapterType":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    invoke-direct {v6, v9, v11, v14}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 2307
    invoke-virtual {v5, v6}, Lcom/android/server/content/SyncStorageEngine;->getCopyOfAuthorityWithSyncStatus(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Landroid/util/Pair;

    move-result-object v5

    .line 2312
    .local v5, "syncAuthoritySyncStatus":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;Landroid/content/SyncStatusInfo;>;"
    iget-object v6, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    .line 2313
    .local v6, "settings":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    iget-object v9, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, Landroid/content/SyncStatusInfo;

    .line 2314
    .local v9, "status":Landroid/content/SyncStatusInfo;
    iget-object v11, v6, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-static {v11, v9}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2315
    iget-object v11, v6, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v11, v11, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    .line 2316
    .local v11, "authority":Ljava/lang/String;
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v14

    move-object/from16 v28, v5

    const/16 v5, 0x32

    .line 2316
    .end local v5    # "syncAuthoritySyncStatus":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;Landroid/content/SyncStatusInfo;>;"
    .local v28, "syncAuthoritySyncStatus":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;Landroid/content/SyncStatusInfo;>;"
    if-le v14, v5, :cond_8

    .line 2317
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v14

    sub-int/2addr v14, v5

    invoke-virtual {v11, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    .line 2319
    :cond_8
    const/4 v5, 0x3

    new-array v14, v5, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v11, v14, v5

    iget v5, v6, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->syncable:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v16, 0x1

    aput-object v5, v14, v16

    iget-boolean v5, v6, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->enabled:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v14, v19

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5, v14}, Lcom/android/server/content/SyncManager$PrintTable;->set(II[Ljava/lang/Object;)V

    .line 2321
    new-instance v5, Lcom/android/server/content/-$$Lambda$SyncManager$9EoLpTk5JrHZn9R-uS0lqCVrpRw;

    .line 2321
    .local v5, "c":Lcom/android/internal/util/function/QuadConsumer;, "Lcom/android/internal/util/function/QuadConsumer<Ljava/lang/String;Landroid/content/SyncStatusInfo$Stats;Ljava/util/function/Function<Ljava/lang/Integer;Ljava/lang/String;>;Ljava/lang/Integer;>;"
    invoke-direct {v5, v2, v4}, Lcom/android/server/content/-$$Lambda$SyncManager$9EoLpTk5JrHZn9R-uS0lqCVrpRw;-><init>(Ljava/lang/StringBuilder;Lcom/android/server/content/SyncManager$PrintTable;)V

    .line 2337
    const-string v14, "Total"

    move-object/from16 v29, v2

    iget-object v2, v9, Landroid/content/SyncStatusInfo;->totalStats:Landroid/content/SyncStatusInfo$Stats;

    .line 2337
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    .local v29, "sb":Ljava/lang/StringBuilder;
    move-object/from16 v30, v11

    sget-object v11, Lcom/android/server/content/-$$Lambda$SyncManager$pdoEVnuSkmOrvULQ9M7Ic-lU5vw;->INSTANCE:Lcom/android/server/content/-$$Lambda$SyncManager$pdoEVnuSkmOrvULQ9M7Ic-lU5vw;

    .line 2337
    .end local v11    # "authority":Ljava/lang/String;
    .local v30, "authority":Ljava/lang/String;
    move-object/from16 v31, v13

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    .line 2337
    .end local v13    # "account":Landroid/accounts/AccountAndUser;
    .local v31, "account":Landroid/accounts/AccountAndUser;
    invoke-interface {v5, v14, v2, v11, v13}, Lcom/android/internal/util/function/QuadConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2338
    const-string v2, "Today"

    iget-object v11, v9, Landroid/content/SyncStatusInfo;->todayStats:Landroid/content/SyncStatusInfo$Stats;

    new-instance v13, Lcom/android/server/content/-$$Lambda$SyncManager$EMXCZP9LDjgUTYbLsEoVu9Ccntw;

    invoke-direct {v13, v0}, Lcom/android/server/content/-$$Lambda$SyncManager$EMXCZP9LDjgUTYbLsEoVu9Ccntw;-><init>(Lcom/android/server/content/SyncManager;)V

    add-int/lit8 v14, v3, 0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v5, v2, v11, v13, v14}, Lcom/android/internal/util/function/QuadConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2339
    const-string v2, "Yestr"

    iget-object v11, v9, Landroid/content/SyncStatusInfo;->yesterdayStats:Landroid/content/SyncStatusInfo$Stats;

    new-instance v13, Lcom/android/server/content/-$$Lambda$SyncManager$EMXCZP9LDjgUTYbLsEoVu9Ccntw;

    invoke-direct {v13, v0}, Lcom/android/server/content/-$$Lambda$SyncManager$EMXCZP9LDjgUTYbLsEoVu9Ccntw;-><init>(Lcom/android/server/content/SyncManager;)V

    add-int/lit8 v14, v3, 0x2

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v5, v2, v11, v13, v14}, Lcom/android/internal/util/function/QuadConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2341
    const/16 v2, 0xe

    .line 2342
    .local v2, "LAST_SYNC":I
    const/16 v11, 0xf

    .line 2344
    .local v11, "BACKOFF":I
    move v13, v3

    .line 2345
    .local v13, "row1":I
    iget-wide v14, v6, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->delayUntil:J

    cmp-long v14, v14, v7

    if-lez v14, :cond_a

    .line 2346
    add-int/lit8 v14, v13, 0x1

    .line 2346
    .local v14, "row1":I
    move/from16 v32, v2

    const/4 v15, 0x1

    new-array v2, v15, [Ljava/lang/Object;

    .line 2346
    .end local v2    # "LAST_SYNC":I
    .local v32, "LAST_SYNC":I
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v33, v5

    const-string v5, "D: "

    .line 2346
    .end local v5    # "c":Lcom/android/internal/util/function/QuadConsumer;, "Lcom/android/internal/util/function/QuadConsumer<Ljava/lang/String;Landroid/content/SyncStatusInfo$Stats;Ljava/util/function/Function<Ljava/lang/Integer;Ljava/lang/String;>;Ljava/lang/Integer;>;"
    .local v33, "c":Lcom/android/internal/util/function/QuadConsumer;, "Lcom/android/internal/util/function/QuadConsumer<Ljava/lang/String;Landroid/content/SyncStatusInfo$Stats;Ljava/util/function/Function<Ljava/lang/Integer;Ljava/lang/String;>;Ljava/lang/Integer;>;"
    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v34, v10

    move/from16 v35, v11

    iget-wide v10, v6, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->delayUntil:J

    .line 2346
    .end local v10    # "statuses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/content/SyncStatusInfo;>;>;"
    .end local v11    # "BACKOFF":I
    .local v34, "statuses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/content/SyncStatusInfo;>;>;"
    .local v35, "BACKOFF":I
    sub-long/2addr v10, v7

    const-wide/16 v36, 0x3e8

    div-long v10, v10, v36

    invoke-virtual {v15, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v10, 0x0

    aput-object v5, v2, v10

    const/16 v5, 0xf

    invoke-virtual {v4, v13, v5, v2}, Lcom/android/server/content/SyncManager$PrintTable;->set(II[Ljava/lang/Object;)V

    .line 2347
    .end local v13    # "row1":I
    iget-wide v10, v6, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffTime:J

    cmp-long v2, v10, v7

    if-lez v2, :cond_9

    .line 2348
    add-int/lit8 v2, v14, 0x1

    .line 2348
    .local v2, "row1":I
    const/4 v5, 0x1

    new-array v10, v5, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "B: "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v38, v12

    iget-wide v11, v6, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffTime:J

    sub-long/2addr v11, v7

    div-long v11, v11, v36

    invoke-virtual {v5, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v11, 0x0

    aput-object v5, v10, v11

    const/16 v5, 0xf

    invoke-virtual {v4, v14, v5, v10}, Lcom/android/server/content/SyncManager$PrintTable;->set(II[Ljava/lang/Object;)V

    .line 2349
    .end local v14    # "row1":I
    add-int/lit8 v13, v2, 0x1

    .line 2349
    .restart local v13    # "row1":I
    const/4 v10, 0x1

    new-array v12, v10, [Ljava/lang/Object;

    iget-wide v14, v6, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffDelay:J

    div-long v14, v14, v36

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v12, v11

    invoke-virtual {v4, v2, v5, v12}, Lcom/android/server/content/SyncManager$PrintTable;->set(II[Ljava/lang/Object;)V

    .end local v2    # "row1":I
    goto :goto_9

    .line 2353
    .end local v13    # "row1":I
    .restart local v14    # "row1":I
    :cond_9
    move/from16 v38, v12

    const/16 v5, 0xf

    move v13, v14

    goto :goto_9

    .line 2353
    .end local v14    # "row1":I
    .end local v32    # "LAST_SYNC":I
    .end local v33    # "c":Lcom/android/internal/util/function/QuadConsumer;, "Lcom/android/internal/util/function/QuadConsumer<Ljava/lang/String;Landroid/content/SyncStatusInfo$Stats;Ljava/util/function/Function<Ljava/lang/Integer;Ljava/lang/String;>;Ljava/lang/Integer;>;"
    .end local v34    # "statuses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/content/SyncStatusInfo;>;>;"
    .end local v35    # "BACKOFF":I
    .local v2, "LAST_SYNC":I
    .restart local v5    # "c":Lcom/android/internal/util/function/QuadConsumer;, "Lcom/android/internal/util/function/QuadConsumer<Ljava/lang/String;Landroid/content/SyncStatusInfo$Stats;Ljava/util/function/Function<Ljava/lang/Integer;Ljava/lang/String;>;Ljava/lang/Integer;>;"
    .restart local v10    # "statuses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/content/SyncStatusInfo;>;>;"
    .restart local v11    # "BACKOFF":I
    .restart local v13    # "row1":I
    :cond_a
    move/from16 v32, v2

    move-object/from16 v33, v5

    move-object/from16 v34, v10

    move/from16 v35, v11

    move/from16 v38, v12

    const/16 v5, 0xf

    .line 2353
    .end local v2    # "LAST_SYNC":I
    .end local v5    # "c":Lcom/android/internal/util/function/QuadConsumer;, "Lcom/android/internal/util/function/QuadConsumer<Ljava/lang/String;Landroid/content/SyncStatusInfo$Stats;Ljava/util/function/Function<Ljava/lang/Integer;Ljava/lang/String;>;Ljava/lang/Integer;>;"
    .end local v10    # "statuses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/content/SyncStatusInfo;>;>;"
    .end local v11    # "BACKOFF":I
    .restart local v32    # "LAST_SYNC":I
    .restart local v33    # "c":Lcom/android/internal/util/function/QuadConsumer;, "Lcom/android/internal/util/function/QuadConsumer<Ljava/lang/String;Landroid/content/SyncStatusInfo$Stats;Ljava/util/function/Function<Ljava/lang/Integer;Ljava/lang/String;>;Ljava/lang/Integer;>;"
    .restart local v34    # "statuses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/content/SyncStatusInfo;>;>;"
    .restart local v35    # "BACKOFF":I
    :goto_9
    move v2, v3

    .line 2354
    .end local v13    # "row1":I
    .local v2, "row1":I
    iget-wide v10, v9, Landroid/content/SyncStatusInfo;->lastSuccessTime:J

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-eqz v10, :cond_b

    .line 2355
    add-int/lit8 v10, v2, 0x1

    .line 2355
    .local v10, "row1":I
    const/4 v11, 0x1

    new-array v14, v11, [Ljava/lang/Object;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v15, Lcom/android/server/content/SyncStorageEngine;->SOURCES:[Ljava/lang/String;

    iget v5, v9, Landroid/content/SyncStatusInfo;->lastSuccessSource:I

    aget-object v5, v15, v5

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " SUCCESS"

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v11, 0x0

    aput-object v5, v14, v11

    const/16 v5, 0xe

    invoke-virtual {v4, v2, v5, v14}, Lcom/android/server/content/SyncManager$PrintTable;->set(II[Ljava/lang/Object;)V

    .line 2357
    .end local v2    # "row1":I
    add-int/lit8 v2, v10, 0x1

    .line 2357
    .restart local v2    # "row1":I
    const/4 v14, 0x1

    new-array v15, v14, [Ljava/lang/Object;

    iget-wide v12, v9, Landroid/content/SyncStatusInfo;->lastSuccessTime:J

    invoke-static {v12, v13}, Lcom/android/server/content/SyncManager;->formatTime(J)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v15, v11

    invoke-virtual {v4, v10, v5, v15}, Lcom/android/server/content/SyncManager$PrintTable;->set(II[Ljava/lang/Object;)V

    .line 2359
    .end local v10    # "row1":I
    :cond_b
    iget-wide v10, v9, Landroid/content/SyncStatusInfo;->lastFailureTime:J

    const-wide/16 v12, 0x0

    cmp-long v5, v10, v12

    if-eqz v5, :cond_c

    .line 2360
    add-int/lit8 v5, v2, 0x1

    .line 2360
    .local v5, "row1":I
    const/4 v10, 0x1

    new-array v11, v10, [Ljava/lang/Object;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Lcom/android/server/content/SyncStorageEngine;->SOURCES:[Ljava/lang/String;

    iget v13, v9, Landroid/content/SyncStatusInfo;->lastFailureSource:I

    aget-object v12, v12, v13

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " FAILURE"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v12, 0x0

    aput-object v10, v11, v12

    const/16 v10, 0xe

    invoke-virtual {v4, v2, v10, v11}, Lcom/android/server/content/SyncManager$PrintTable;->set(II[Ljava/lang/Object;)V

    .line 2362
    .end local v2    # "row1":I
    add-int/lit8 v2, v5, 0x1

    .line 2362
    .restart local v2    # "row1":I
    const/4 v11, 0x1

    new-array v13, v11, [Ljava/lang/Object;

    iget-wide v14, v9, Landroid/content/SyncStatusInfo;->lastFailureTime:J

    invoke-static {v14, v15}, Lcom/android/server/content/SyncManager;->formatTime(J)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v13, v12

    invoke-virtual {v4, v5, v10, v13}, Lcom/android/server/content/SyncManager$PrintTable;->set(II[Ljava/lang/Object;)V

    .line 2364
    .end local v5    # "row1":I
    add-int/lit8 v5, v2, 0x1

    .line 2364
    .restart local v5    # "row1":I
    new-array v13, v11, [Ljava/lang/Object;

    iget-object v11, v9, Landroid/content/SyncStatusInfo;->lastFailureMesg:Ljava/lang/String;

    aput-object v11, v13, v12

    invoke-virtual {v4, v2, v10, v13}, Lcom/android/server/content/SyncManager$PrintTable;->set(II[Ljava/lang/Object;)V

    .line 2364
    .end local v2    # "row1":I
    .end local v3    # "row":I
    .end local v5    # "row1":I
    .end local v6    # "settings":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .end local v9    # "status":Landroid/content/SyncStatusInfo;
    .end local v27    # "syncAdapterType":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    .end local v28    # "syncAuthoritySyncStatus":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;Landroid/content/SyncStatusInfo;>;"
    .end local v30    # "authority":Ljava/lang/String;
    .end local v32    # "LAST_SYNC":I
    .end local v33    # "c":Lcom/android/internal/util/function/QuadConsumer;, "Lcom/android/internal/util/function/QuadConsumer<Ljava/lang/String;Landroid/content/SyncStatusInfo$Stats;Ljava/util/function/Function<Ljava/lang/Integer;Ljava/lang/String;>;Ljava/lang/Integer;>;"
    .end local v35    # "BACKOFF":I
    goto :goto_a

    .line 2366
    :cond_c
    const/16 v10, 0xe

    .line 2301
    :goto_a
    move-object/from16 v3, v22

    move-object/from16 v5, v23

    move-object/from16 v6, v24

    move-object/from16 v9, v25

    move/from16 v11, v26

    move-object/from16 v2, v29

    move-object/from16 v13, v31

    move-object/from16 v10, v34

    move/from16 v12, v38

    move-object/from16 v15, p2

    goto/16 :goto_8

    .line 2367
    .end local v23    # "sorted":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;>;"
    .end local v24    # "accounts":[Landroid/accounts/AccountAndUser;
    .end local v25    # "pm":Landroid/content/pm/PackageManager;
    .end local v29    # "sb":Ljava/lang/StringBuilder;
    .end local v31    # "account":Landroid/accounts/AccountAndUser;
    .end local v34    # "statuses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/content/SyncStatusInfo;>;>;"
    .local v2, "sb":Ljava/lang/StringBuilder;
    .local v5, "sorted":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;>;"
    .local v6, "accounts":[Landroid/accounts/AccountAndUser;
    .local v9, "pm":Landroid/content/pm/PackageManager;
    .local v10, "statuses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/content/SyncStatusInfo;>;>;"
    .local v13, "account":Landroid/accounts/AccountAndUser;
    :cond_d
    move-object/from16 v29, v2

    move-object/from16 v23, v5

    move-object/from16 v24, v6

    move-object/from16 v25, v9

    move-object/from16 v34, v10

    move/from16 v26, v11

    move/from16 v38, v12

    move-object/from16 v31, v13

    .end local v2    # "sb":Ljava/lang/StringBuilder;
    .end local v5    # "sorted":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;>;"
    .end local v6    # "accounts":[Landroid/accounts/AccountAndUser;
    .end local v9    # "pm":Landroid/content/pm/PackageManager;
    .end local v10    # "statuses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/content/SyncStatusInfo;>;>;"
    .end local v13    # "account":Landroid/accounts/AccountAndUser;
    .restart local v23    # "sorted":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;>;"
    .restart local v24    # "accounts":[Landroid/accounts/AccountAndUser;
    .restart local v25    # "pm":Landroid/content/pm/PackageManager;
    .restart local v29    # "sb":Ljava/lang/StringBuilder;
    .restart local v31    # "account":Landroid/accounts/AccountAndUser;
    .restart local v34    # "statuses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/content/SyncStatusInfo;>;>;"
    invoke-virtual {v4, v1}, Lcom/android/server/content/SyncManager$PrintTable;->writeTo(Ljava/io/PrintWriter;)V

    .line 2261
    .end local v4    # "table":Lcom/android/server/content/SyncManager$PrintTable;
    .end local v23    # "sorted":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;>;"
    .end local v31    # "account":Landroid/accounts/AccountAndUser;
    add-int/lit8 v12, v38, 0x1

    move-object/from16 v3, v21

    const/4 v4, 0x0

    move-object/from16 v15, p2

    goto/16 :goto_7

    .line 2370
    .end local v21    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v24    # "accounts":[Landroid/accounts/AccountAndUser;
    .end local v25    # "pm":Landroid/content/pm/PackageManager;
    .end local v29    # "sb":Ljava/lang/StringBuilder;
    .end local v34    # "statuses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/content/SyncStatusInfo;>;>;"
    .restart local v2    # "sb":Ljava/lang/StringBuilder;
    .local v3, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .restart local v6    # "accounts":[Landroid/accounts/AccountAndUser;
    .restart local v9    # "pm":Landroid/content/pm/PackageManager;
    .restart local v10    # "statuses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/content/SyncStatusInfo;>;>;"
    :cond_e
    move-object/from16 v29, v2

    move-object/from16 v21, v3

    move-object/from16 v24, v6

    move-object/from16 v25, v9

    move-object/from16 v34, v10

    .line 2370
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    .end local v3    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v6    # "accounts":[Landroid/accounts/AccountAndUser;
    .end local v9    # "pm":Landroid/content/pm/PackageManager;
    .end local v10    # "statuses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/content/SyncStatusInfo;>;>;"
    .restart local v21    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .restart local v24    # "accounts":[Landroid/accounts/AccountAndUser;
    .restart local v25    # "pm":Landroid/content/pm/PackageManager;
    .restart local v29    # "sb":Ljava/lang/StringBuilder;
    .restart local v34    # "statuses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/content/SyncStatusInfo;>;>;"
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/content/SyncManager;->dumpSyncHistory(Ljava/io/PrintWriter;)V

    .line 2372
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2373
    const-string v2, "Per Adapter History"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2374
    const-string v2, "(SERVER is now split up to FEED and OTHER)"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2376
    const/4 v2, 0x0

    .line 2376
    .local v2, "i":I
    :goto_b
    move-object/from16 v3, v34

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 2376
    .end local v34    # "statuses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/content/SyncStatusInfo;>;>;"
    .local v3, "statuses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/content/SyncStatusInfo;>;>;"
    if-ge v2, v4, :cond_12

    .line 2377
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    .line 2379
    .local v4, "event":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/content/SyncStatusInfo;>;"
    const-string v5, "  "

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2380
    iget-object v5, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v5, v5, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v5, v5, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2381
    const/16 v5, 0x2f

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(C)V

    .line 2382
    iget-object v5, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v5, v5, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v5, v5, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2383
    const-string v5, " u"

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2384
    iget-object v5, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget v5, v5, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 2385
    const-string v5, " ["

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2386
    iget-object v5, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v5, v5, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2387
    const-string v5, "]"

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2388
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2390
    const-string v5, "    Per source last syncs:"

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2391
    const/4 v5, 0x0

    .line 2391
    .local v5, "j":I
    :goto_c
    sget-object v6, Lcom/android/server/content/SyncStorageEngine;->SOURCES:[Ljava/lang/String;

    array-length v6, v6

    if-ge v5, v6, :cond_f

    .line 2392
    const-string v6, "      "

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2393
    const-string v6, "%8s"

    const/4 v9, 0x1

    new-array v10, v9, [Ljava/lang/Object;

    sget-object v11, Lcom/android/server/content/SyncStorageEngine;->SOURCES:[Ljava/lang/String;

    aget-object v11, v11, v5

    const/16 v17, 0x0

    aput-object v11, v10, v17

    invoke-static {v6, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2394
    const-string v6, "  Success: "

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2395
    iget-object v6, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Landroid/content/SyncStatusInfo;

    iget-object v6, v6, Landroid/content/SyncStatusInfo;->perSourceLastSuccessTimes:[J

    aget-wide v10, v6, v5

    invoke-static {v10, v11}, Lcom/android/server/content/SyncManager;->formatTime(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2397
    const-string v6, "  Failure: "

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2398
    iget-object v6, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Landroid/content/SyncStatusInfo;

    iget-object v6, v6, Landroid/content/SyncStatusInfo;->perSourceLastFailureTimes:[J

    aget-wide v10, v6, v5

    invoke-static {v10, v11}, Lcom/android/server/content/SyncManager;->formatTime(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2391
    add-int/lit8 v5, v5, 0x1

    goto :goto_c

    .line 2401
    .end local v5    # "j":I
    :cond_f
    const/4 v9, 0x1

    const/16 v17, 0x0

    const-string v5, "    Last syncs:"

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2402
    move/from16 v5, v17

    .line 2402
    .restart local v5    # "j":I
    :goto_d
    iget-object v6, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Landroid/content/SyncStatusInfo;

    invoke-virtual {v6}, Landroid/content/SyncStatusInfo;->getEventCount()I

    move-result v6

    if-ge v5, v6, :cond_10

    .line 2403
    const-string v6, "      "

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2404
    iget-object v6, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Landroid/content/SyncStatusInfo;

    invoke-virtual {v6, v5}, Landroid/content/SyncStatusInfo;->getEventTime(I)J

    move-result-wide v10

    invoke-static {v10, v11}, Lcom/android/server/content/SyncManager;->formatTime(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2405
    const/16 v6, 0x20

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(C)V

    .line 2406
    iget-object v6, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Landroid/content/SyncStatusInfo;

    invoke-virtual {v6, v5}, Landroid/content/SyncStatusInfo;->getEvent(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2407
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2402
    add-int/lit8 v5, v5, 0x1

    goto :goto_d

    .line 2409
    .end local v5    # "j":I
    :cond_10
    iget-object v5, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Landroid/content/SyncStatusInfo;

    invoke-virtual {v5}, Landroid/content/SyncStatusInfo;->getEventCount()I

    move-result v5

    if-nez v5, :cond_11

    .line 2410
    const-string v5, "      N/A"

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2376
    .end local v4    # "event":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/content/SyncStatusInfo;>;"
    :cond_11
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v34, v3

    goto/16 :goto_b

    .line 2413
    .end local v2    # "i":I
    :cond_12
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getPeriodicSyncs(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Ljava/util/List;
    .locals 16
    .param p1, "target"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/content/SyncStorageEngine$EndPoint;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/PeriodicSync;",
            ">;"
        }
    .end annotation

    .line 1243
    invoke-direct/range {p0 .. p0}, Lcom/android/server/content/SyncManager;->getAllPendingSyncs()Ljava/util/List;

    move-result-object v0

    .line 1244
    .local v0, "ops":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/content/SyncOperation;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1246
    .local v1, "periodicSyncs":Ljava/util/List;, "Ljava/util/List<Landroid/content/PeriodicSync;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/content/SyncOperation;

    .line 1247
    .local v3, "op":Lcom/android/server/content/SyncOperation;
    iget-boolean v4, v3, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    if-eqz v4, :cond_0

    iget-object v4, v3, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    move-object/from16 v5, p1

    invoke-virtual {v4, v5}, Lcom/android/server/content/SyncStorageEngine$EndPoint;->matchesSpec(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1248
    new-instance v4, Landroid/content/PeriodicSync;

    iget-object v6, v3, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v7, v6, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v6, v3, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v8, v6, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    iget-object v9, v3, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    iget-wide v10, v3, Lcom/android/server/content/SyncOperation;->periodMillis:J

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    iget-wide v14, v3, Lcom/android/server/content/SyncOperation;->flexMillis:J

    div-long v12, v14, v12

    move-object v6, v4

    invoke-direct/range {v6 .. v13}, Landroid/content/PeriodicSync;-><init>(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;JJ)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .end local v3    # "op":Lcom/android/server/content/SyncOperation;
    goto :goto_1

    .line 1251
    :cond_0
    move-object/from16 v5, p1

    :cond_1
    :goto_1
    goto :goto_0

    .line 1253
    :cond_2
    move-object/from16 v5, p1

    return-object v1
.end method

.method public getSyncAdapterPackagesForAuthorityAsUser(Ljava/lang/String;I)[Ljava/lang/String;
    .locals 1
    .param p1, "authority"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1282
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncAdapters:Landroid/content/SyncAdaptersCache;

    invoke-virtual {v0, p1, p2}, Landroid/content/SyncAdaptersCache;->getSyncAdapterPackagesForAuthority(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSyncAdapterTypes(I)[Landroid/content/SyncAdapterType;
    .locals 6
    .param p1, "userId"    # I

    .line 1271
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncAdapters:Landroid/content/SyncAdaptersCache;

    invoke-virtual {v0, p1}, Landroid/content/SyncAdaptersCache;->getAllServices(I)Ljava/util/Collection;

    move-result-object v0

    .line 1272
    .local v0, "serviceInfos":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;>;"
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    new-array v1, v1, [Landroid/content/SyncAdapterType;

    .line 1273
    .local v1, "types":[Landroid/content/SyncAdapterType;
    const/4 v2, 0x0

    .line 1274
    .local v2, "i":I
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    .line 1275
    .local v4, "serviceInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    iget-object v5, v4, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    check-cast v5, Landroid/content/SyncAdapterType;

    aput-object v5, v1, v2

    .line 1276
    add-int/lit8 v2, v2, 0x1

    .line 1277
    .end local v4    # "serviceInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    goto :goto_0

    .line 1278
    :cond_0
    return-object v1
.end method

.method public getSyncStorageEngine()Lcom/android/server/content/SyncStorageEngine;
    .locals 1

    .line 836
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    return-object v0
.end method

.method public onBootPhase(I)V
    .locals 1
    .param p1, "phase"    # I

    .line 787
    const/16 v0, 0x226

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 789
    :cond_0
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mConstants:Lcom/android/server/content/SyncManagerConstants;

    invoke-virtual {v0}, Lcom/android/server/content/SyncManagerConstants;->start()V

    .line 792
    :goto_0
    return-void
.end method

.method public onStartUser(I)V
    .locals 2
    .param p1, "userHandle"    # I

    .line 774
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    new-instance v1, Lcom/android/server/content/-$$Lambda$SyncManager$CjX_2uO4O4xJPQnKzeqvGwd87Dc;

    invoke-direct {v1, p0, p1}, Lcom/android/server/content/-$$Lambda$SyncManager$CjX_2uO4O4xJPQnKzeqvGwd87Dc;-><init>(Lcom/android/server/content/SyncManager;I)V

    invoke-virtual {v0, v1}, Lcom/android/server/content/SyncManager$SyncHandler;->post(Ljava/lang/Runnable;)Z

    .line 775
    return-void
.end method

.method public onStopUser(I)V
    .locals 2
    .param p1, "userHandle"    # I

    .line 782
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    new-instance v1, Lcom/android/server/content/-$$Lambda$SyncManager$4nklbtZn-JuPLOkU32f34xZoiug;

    invoke-direct {v1, p0, p1}, Lcom/android/server/content/-$$Lambda$SyncManager$4nklbtZn-JuPLOkU32f34xZoiug;-><init>(Lcom/android/server/content/SyncManager;I)V

    invoke-virtual {v0, v1}, Lcom/android/server/content/SyncManager$SyncHandler;->post(Ljava/lang/Runnable;)Z

    .line 783
    return-void
.end method

.method public onUnlockUser(I)V
    .locals 2
    .param p1, "userHandle"    # I

    .line 778
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    new-instance v1, Lcom/android/server/content/-$$Lambda$SyncManager$6y-gkGdDn-rSLmR9G8Pz_n9zy2A;

    invoke-direct {v1, p0, p1}, Lcom/android/server/content/-$$Lambda$SyncManager$6y-gkGdDn-rSLmR9G8Pz_n9zy2A;-><init>(Lcom/android/server/content/SyncManager;I)V

    invoke-virtual {v0, v1}, Lcom/android/server/content/SyncManager$SyncHandler;->post(Ljava/lang/Runnable;)Z

    .line 779
    return-void
.end method

.method public removePeriodicSync(Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 3
    .param p1, "target"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .param p2, "extras"    # Landroid/os/Bundle;
    .param p3, "why"    # Ljava/lang/String;

    .line 1221
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    iget-object v1, p0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    .line 1222
    invoke-static {p1, p3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    .line 1221
    const/16 v2, 0xe

    invoke-virtual {v0, v2, v1}, Lcom/android/server/content/SyncManager$SyncHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1223
    .local v0, "m":Landroid/os/Message;
    invoke-virtual {v0, p2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1224
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1225
    return-void
.end method

.method public resetTodayStats()V
    .locals 2

    .line 4152
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/content/SyncStorageEngine;->resetTodayStats(Z)V

    .line 4153
    return-void
.end method

.method public scheduleLocalSync(Landroid/accounts/Account;IILjava/lang/String;I)V
    .locals 12
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "userId"    # I
    .param p3, "reason"    # I
    .param p4, "authority"    # Ljava/lang/String;
    .param p5, "syncExemptionFlag"    # I

    .line 1262
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1263
    .local v0, "extras":Landroid/os/Bundle;
    const-string/jumbo v1, "upload"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1264
    sget-wide v8, Lcom/android/server/content/SyncManager;->LOCAL_SYNC_DELAY:J

    const/4 v7, -0x2

    const/4 v10, 0x1

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object/from16 v5, p4

    move-object v6, v0

    move/from16 v11, p5

    invoke-direct/range {v1 .. v11}, Lcom/android/server/content/SyncManager;->scheduleSync(Landroid/accounts/Account;IILjava/lang/String;Landroid/os/Bundle;IJZI)V

    .line 1267
    return-void
.end method

.method public scheduleSync(Landroid/accounts/Account;IILjava/lang/String;Landroid/os/Bundle;II)V
    .locals 11
    .param p1, "requestedAccount"    # Landroid/accounts/Account;
    .param p2, "userId"    # I
    .param p3, "reason"    # I
    .param p4, "requestedAuthority"    # Ljava/lang/String;
    .param p5, "extras"    # Landroid/os/Bundle;
    .param p6, "targetSyncState"    # I
    .param p7, "syncExemptionFlag"    # I

    .line 923
    const-wide/16 v7, 0x0

    const/4 v9, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v10, p7

    invoke-direct/range {v0 .. v10}, Lcom/android/server/content/SyncManager;->scheduleSync(Landroid/accounts/Account;IILjava/lang/String;Landroid/os/Bundle;IJZI)V

    .line 925
    return-void
.end method

.method public updateOrAddPeriodicSync(Lcom/android/server/content/SyncStorageEngine$EndPoint;JJLandroid/os/Bundle;)V
    .locals 9
    .param p1, "target"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .param p2, "pollFrequency"    # J
    .param p4, "flex"    # J
    .param p6, "extras"    # Landroid/os/Bundle;

    .line 1233
    new-instance v8, Lcom/android/server/content/SyncManager$UpdatePeriodicSyncMessagePayload;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/server/content/SyncManager$UpdatePeriodicSyncMessagePayload;-><init>(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncStorageEngine$EndPoint;JJLandroid/os/Bundle;)V

    .line 1235
    .local v0, "payload":Lcom/android/server/content/SyncManager$UpdatePeriodicSyncMessagePayload;
    iget-object v1, p0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    const/16 v2, 0xd

    invoke-virtual {v1, v2, v0}, Lcom/android/server/content/SyncManager$SyncHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1236
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1237
    return-void
.end method
